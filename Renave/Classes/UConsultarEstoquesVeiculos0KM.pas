{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento consulte veículos em seu estoque
Programador: Leandro do Couto
}


unit UConsultarEstoquesVeiculos0KM;

interface

uses
  System.Classes, UErroConsultaRenave,
  URetornoEstoqueVeiculo0KM,
  UConsultarRenave,Variants,System.Generics.Collections,
  System.JSON, UConstsRenave, System.SysUtils, UEntradaVeiculoEstoque0KM,
  USaidaEstoqueVeiculo0KM;


type
  TConsultarEstoqueVeiculos0KM = class
  private
    FChassi: String;
    FListaChassi: TStringList;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    FRetorno: TObjectList<TRetornoEstoqueVeiculo0KM>;
  published
    property Chassi: String read FChassi write FChassi;
    property ListaChassi: TStringList read FListaChassi write FListaChassi;
    property Erro: TErroConsultaRenave read FErro write FErro;
    property Retorno: TObjectList<TRetornoEstoqueVeiculo0KM> read FRetorno write FRetorno;
    function Consulta:boolean;
    constructor create;
    destructor destroy;override;
    class function new:TConsultarEstoqueVeiculos0KM;
  end;


implementation

{ TConsultarEstoqueVeiculos0KM }

function TConsultarEstoqueVeiculos0KM.Consulta: boolean;
var
aRetorno,aURL:String;
aCodigoRetorno:Integer;
jArray:TJsonArray;
jObject:TJsonObject;
i:Integer;
aJson,
aJsonVendedor,
aJsonSaida,
aJsonEntrada:TJSonValue;
aRetornoEstoque:TRetornoEstoqueVeiculo0KM;
aEntradaEstoque:TEntradaEstoqueVeiculo0KM;
aSaidaEstoque:TSaidaEstoqueVeiculo0KM;
begin

  try

    aURL := 'estoques';

    if FChassi <> ''  then
      aURL := aURL + '\?chassi='+FChassi;

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpGET;
    Fconsulta.Consulta;
    aCodigoREtorno := FConsulta.CodigoRetorno;

    if( FConsulta.Erro = nil ) then
    begin

      aRetorno := FConsulta.Retorno;
      jArray :=  TJSONObject.ParseJSONValue(aRetorno) as TJSONArray;

     for i := 0 to jArray.Size - 1 do
     begin

      aEntradaEstoque := TEntradaEstoqueVeiculo0KM.Create;
      aSaidaEstoque := TSaidaEstoqueVeiculo0KM.Create;
      aRetornoEstoque := TRetornoEstoqueVeiculo0KM.Create;

      jObject := jArray.Get(i) as TJsonObject;

      aJsonEntrada := TJsonObject( jObject ).GetValue( 'entradaEstoque' );
      aJsonSaida := TJsonObject( jObject ).GetValue( 'saidaEstoque' );

      aRetornoEstoque.id := jObject.GetValue<integer>('id');
      aRetornoEstoque.estado := jObject.GetValue<string>('estado');
      aRetornoEstoque.numeroCRV:= jObject.GetValue<string>('numeroCrv');
      aRetornoEstoque.codigosegurancaCRV:= jObject.GetValue<string>('codigoSegurancaCrv');
      aRetornoEstoque.chassi:= jObject.GetValue<string>('chassi');
      aRetornoEstoque.placa:= jObject.GetValue<string>('placa');
      aRetornoEstoque.quilometragemOdometro:= jObject.GetValue<integer>('quilometragemHodometro');
      aRetornoEstoque.renavam := jObject.GetValue<string>('renavam');
      aRetornoEstoque.tipoCRV:= jObject.GetValue<string>('tipoCrv');

      if( not aJsonEntrada.null ) then
        begin
          aEntradaEstoque.cpfOperadorResponsavel := aJsonEntrada.getValue<String>('cpfOperadorResponsavel' );
          aEntradaEstoque.chaveNotaFiscal := aJsonEntrada.getValue<String>('chaveNotaFiscalEntrada' );
          aEntradaEstoque.dataEntradaEstoque := aJsonEntrada.getValue<TDateTime>('dataHora' );
        end;

      if( not aJsonSaida.Null ) then
        begin
          aSaidaEstoque.cpfOperadorResponsavel := aJsonSaida.getValue<String>('cpfOperadorResponsavel' );
          aSaidaEstoque.chaveNotaFiscal := aJsonSaida.getValue<String>('chaveNotaFiscalSaida' );
          aSaidaEstoque.Motivo := aJsonSaida.getValue<String>('motivo' );
          aSaidaEstoque.dataVenda := aJsonSaida.getValue<TDateTime>('dataHora' );
        end;

      FREtorno.Add( aRetornoEstoque );

     end;

    end;


  finally
   FErro := FConsulta.Erro;
   result := aCodigoREtorno = 200;
  end;

end;

constructor TConsultarEstoqueVeiculos0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
  FListaChassi := TStringList.Create;
  FRetorno := TObjectList<TRetornoEstoqueVeiculo0KM>.Create;
end;

destructor TConsultarEstoqueVeiculos0KM.destroy;
begin

  inherited;
  FListaChassi.Free;
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;

end;

class function TConsultarEstoqueVeiculos0KM.new: TConsultarEstoqueVeiculos0KM;
begin
  result := self.Create;
end;

end.
