{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize a entrada de veículo zero no estoque do estabelecimento solicitante
Programador: Leandro do Couto
}


unit UEntrarEstoqueVeiculo0KM;

interface

uses
  UEntradaVeiculoEstoque0KM, UErroConsultaRenave, UConsultarRenave, URetornoEntradaEstoqueVeiculo0KM;
type
  TEntrarEstoqueVeiculo0KM = class
    private
      FEntrada: TEntradaEstoqueVeiculo0KM;
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      FRetorno: TRetornoEntradaEstoqueVeiculo0KM;
      procedure ProcessaRetorno( aValue:String );

    public
      property Entrada: TEntradaEstoqueVeiculo0KM read FEntrada write FEntrada;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoEntradaEstoqueVeiculo0KM read FRetorno write FRetorno;
      function EntraEstoque:boolean;
      constructor create;
      destructor destroy;override;
      class function new:TEntrarEstoqueVeiculo0KM;
  end;


implementation

uses
  Rest.JSON, UConstsRenave, System.JSON, System.SysUtils, System.Variants ;

{ TEntrarEstoqueVeiculo0KM }

function TEntrarEstoqueVeiculo0KM.EntraEstoque: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'entradas-estoque-zero-km';

  try

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FEntrada);
    Fconsulta.Body := aBody;
    Fconsulta.Consulta;
    aCodigoRetorno := FConsulta.CodigoRetorno;

    if( aCodigoRetorno = IntHttpCode201 ) then
      ProcessaRetorno( FConsulta.Retorno );

  finally
    result := aCodigoRetorno = IntHttpCode201;
    FErro := FConsulta.Erro;
  end;

end;

constructor TEntrarEstoqueVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TEntrarEstoqueVeiculo0KM.destroy;
begin
  FConsulta.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

class function TEntrarEstoqueVeiculo0KM.new: TEntrarEstoqueVeiculo0KM;
begin
  result := self.create;
end;

procedure TEntrarEstoqueVeiculo0KM.ProcessaRetorno(aValue: String);
var
aJson,
aJsonVendedor,
aJsonEntrada:TJSonValue;

begin
  try

    FRetorno := TRetornoEntradaEstoqueVeiculo0KM.Create;
    aJson := TJsonObject.ParseJSONValue(aValue);
    aJsonEntrada := ( aJson as TJsonObject ).GetValue('entradaEstoque');

    if( not aJsonEntrada.null) then
    begin

      aJsonVendedor := ( aJsonEntrada as TJsonObject ).GetValue('vendedor');
      FRetorno.id := TJSonValue( aJson ).getValue<Integer>('id');

      if ( aJsonEntrada as TJsonValue ).GetValue<String>('numeroTermoEntradaEstoque') <> '' then
        FRetorno.numeroTermoEntradaEstoque := ( aJsonEntrada as TJsonValue ).GetValue<Integer>('numeroTermoEntradaEstoque');

      FRetorno.chaveNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<String>('chaveNotaFiscalEntrada');
      FRetorno.cpfOperadorResponsavel:= ( aJsonEntrada as TJsonValue ).GetValue<String>('cpfOperadorResponsavel');
      FRetorno.dataHora := ( aJsonEntrada as TJsonValue ).GetValue<TDateTime>('dataHora');
      FRetorno.dataHoraEnvioNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<TDatetime>('dataHoraEnvioNotaFiscalEntrada');

//      if( aJsonVendedor.value <> '' ) then
//      begin
//        FRetorno.numeroDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('numeroDocumento');
//        FRetorno.tipoDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('tipoDocumento');
//      end;

    end;

  finally
    aJson.Free;
    aJsonVendedor := nil;
    aJsonEntrada := nil;
  end;

end;

end.
