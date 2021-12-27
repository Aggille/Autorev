unit UEntrarEstoqueVeiculo0KM;

interface

uses
  UEntradaEstoque0KM, UErroConsultaRenave, UConsultarRenave, URetornoEntradaEstoque0KM;
type
  TEntrarEstoqueVeiculo0KM = class
    private
    FEntrada: TEntradaEstoque0KM;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    FRetorno: TRetornoEntradaEstoque0KM;
    procedure ProcessaRetorno( aValue:String );

    public
      property Entrada: TEntradaEstoque0KM read FEntrada write FEntrada;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoEntradaEstoque0KM read FRetorno write FRetorno;
      function Consulta:boolean;
      constructor create;
      destructor destroy;override;
      class function new:TEntrarEstoqueVeiculo0KM;
  end;


implementation

uses
  Rest.JSON, UConstsRenave, System.JSON ;

{ TEntrarEstoqueVeiculo0KM }

function TEntrarEstoqueVeiculo0KM.Consulta: boolean;
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
  if( FRetorno <> nil ) then
    FRetorno.Free;
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
    FRetorno := TRetornoEntradaEstoque0KM.Create;
    aJson := TJsonObject.ParseJSONValue(aValue);
    aJsonEntrada := ( aJson as TJsonObject ).GetValue('entradaEstoque');

    if( aJsonEntrada <> nil ) then
    begin
      aJsonVendedor := ( aJsonEntrada as TJsonObject ).GetValue('vendedor');
      FRetorno.numeroTermoEntradaEstoque := ( aJsonEntrada as TJsonValue ).GetValue<Integer>('numeroTermoEntradaEstoque');
      FRetorno.chaveNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<String>('chaveNotaFiscalEntrada');
      FRetorno.cpfOperadorResponsavel:= ( aJsonEntrada as TJsonValue ).GetValue<String>('cpfOperadorResponsavel');
      FRetorno.dataHora := ( aJsonEntrada as TJsonValue ).GetValue<TDateTime>('dataHora');
      FRetorno.dataHoraEnvioNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<TDatetime>('dataHoraEnvioNotaFiscalEntrada');

      if( aJsonVendedor <> nil ) then
      begin
        FRetorno.numeroDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('numeroDocumento');
        FRetorno.tipoDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('tipoDocumento');
      end;

    end;

  finally
    aJson.Free;
    aJsonVendedor.Free;
    aJsonEntrada.Free;
  end;

end;

end.
