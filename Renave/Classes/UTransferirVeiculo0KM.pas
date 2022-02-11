{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize a transferência de estoque de outro estabelecimento para seu próprio estoque
Programador: Leandro do Couto
}

unit UTransferirVeiculo0KM;

interface

uses
  UTransferenciaVeiculo0KM, UErroConsultaRenave, UConsultarRenave,
  URetornoEntradaEstoqueVeiculo0KM;


type
  TTransferirVeiculo0KM = class
  private
    FTRansferencia: TTransferenciaVeiculo0KM;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    FRetorno: TRetornoEntradaEstoqueVeiculo0KM;
    procedure ProcessaRetorno( aValue:String );

  published
  public
    constructor create;
    destructor destroy;override;
    class function new:TTransferirVeiculo0KM;
    property Transferencia: TTransferenciaVeiculo0KM read FTRansferencia write FTRansferencia;
    property Erro: TErroConsultaRenave read FErro write FErro;
    property Retorno: TRetornoEntradaEstoqueVeiculo0KM read FRetorno write FRetorno;
    function Transfere:boolean;

  end;
implementation

uses
  UConstsRenave, REST.Json, System.JSON;

{ TTransferirVeiculo0KM }

function TTransferirVeiculo0KM.Transfere: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'transferencias-entre-estabelecimentos-veiculo-zero-km';

  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FTransferencia);
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

constructor TTransferirVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TTransferirVeiculo0KM.destroy;
begin
  FConsulta.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;


class function TTransferirVeiculo0KM.new: TTransferirVeiculo0KM;
begin
  result := self.Create;
end;

procedure TTransferirVeiculo0KM.ProcessaRetorno(aValue: String);
var
aJson,
aJsonVendedor,
aJsonEntrada:TJSonValue;
begin
  try
    FRetorno := TRetornoEntradaEstoqueVeiculo0KM.Create;
    aJson := TJsonObject.ParseJSONValue(aValue);
    aJsonEntrada := ( aJson as TJsonObject ).GetValue('entradaEstoque');

    if( not aJsonEntrada.null ) then
    begin
      aJsonVendedor := ( aJsonEntrada as TJsonObject ).GetValue('vendedor');
      FRetorno.numeroTermoEntradaEstoque := ( aJsonEntrada as TJsonValue ).GetValue<Integer>('numeroTermoEntradaEstoque');
      FRetorno.chaveNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<String>('chaveNotaFiscalEntrada');
      FRetorno.cpfOperadorResponsavel:= ( aJsonEntrada as TJsonValue ).GetValue<String>('cpfOperadorResponsavel');
      FRetorno.dataHora := ( aJsonEntrada as TJsonValue ).GetValue<TDateTime>('dataHora');
      FRetorno.dataHoraEnvioNotaFiscalEntrada := ( aJsonEntrada as TJsonValue ).GetValue<TDatetime>('dataHoraEnvioNotaFiscalEntrada');

      if( not aJsonVendedor.null ) then
      begin
        FRetorno.numeroDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('numeroDocumento');
        FRetorno.tipoDocumentoVendedor := ( aJsonVendedor as TJsonValue ).GetValue<String>('tipoDocumento');
      end;

    end;

  finally
    aJson.Free;
    aJsonVendedor := nil;
    aJsonEntrada := nil;
  end;

end;

end.
