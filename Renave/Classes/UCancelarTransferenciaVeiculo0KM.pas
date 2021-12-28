unit UCancelarTransferenciaVeiculo0KM;

interface

uses
  UCancelamentoTransferenciaVeiculo0KM,
  URetornoCancelamentoTransferenciaVeiculo0KM, UErroConsultaRenave,
  UConsultarRenave;
type
  TCancelarTransferenciaVeiculo0KM = class
    private
      FRetorno: TRetornoCancelamentoTransferenciaVeiculo0KM;
      FCancelamento: TCancelamentoTransferenciaVeiculo0KM;
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      procedure processaRetorno( aValue:String );
    published
      property Retorno: TRetornoCancelamentoTransferenciaVeiculo0KM read FRetorno write FRetorno;
      property Cancelamento: TCancelamentoTransferenciaVeiculo0KM read FCancelamento write FCancelamento;
      property Erro: TErroConsultaRenave read FErro write FErro;
    public
      constructor create;
      destructor destroy;override;
      class function new:TCancelarTransferenciaVeiculo0KM;
      function Cancela:boolean;
  end;

implementation

uses
  UConstsRenave, REST.Json, System.JSON, System.SysUtils;

{ TCancelarTransferenciaVeiculo0KM }

function TCancelarTransferenciaVeiculo0KM.Cancela: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'cancelamentos-autorizacoes-transferencias-veiculo-zero-km';

  try

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FCancelamento);
    Fconsulta.Body := aBody;
    Fconsulta.Consulta;
    aCodigoRetorno := FConsulta.CodigoRetorno;

    if( aCodigoRetorno = IntHttpCode200 ) then
      ProcessaRetorno( FConsulta.Retorno );

  finally
    result := aCodigoRetorno = IntHttpCode200;
    FErro := FConsulta.Erro;
  end;

end;

constructor TCancelarTransferenciaVeiculo0KM.create;
begin
  FRetorno := TRetornoCancelamentoTransferenciaVeiculo0KM.Create;
  FCancelamento := TCancelamentoTransferenciaVeiculo0KM.Create;
  FConsulta := TConsultarRenave.Create;
end;

destructor TCancelarTransferenciaVeiculo0KM.destroy;
begin
  FRetorno.Free;
  FCancelamento.Free;
  FConsulta.Free;
  if( FErro <> nil ) then FErro.Free;

  inherited;
end;

class function TCancelarTransferenciaVeiculo0KM.new: TCancelarTransferenciaVeiculo0KM;
begin
  result := self.Create;
end;

procedure TCancelarTransferenciaVeiculo0KM.processaRetorno(aValue: String);
var
aJson:TJSonValue;

begin

  try
      FRetorno := TRetornoCancelamentoTransferenciaVeiculo0KM.Create;
      aJson := TJsonObject.ParseJSONValue(aValue);

      if( aJson <> nil ) then
      begin
        FRetorno.chassi := TJsonObject( aJson ).getValue<String>('chassi' );
        FRetorno.cnpjEstabelecimentoAutorizador := TJsonObject( aJson ).getValue<String>('cnpjEstabelecimentoAutorizador' );
        FRetorno.cnpjEstabelecimentoDestino := TJsonObject( aJson ).getValue<String>('cnpjEstabelecimentoDestino' );
        FRetorno.cpfOperadorResponsavelAutorizacao  := TJsonObject( aJson ).getValue<String>('cpfOperadorResponsavelAutorizacao' );
        FRetorno.dataHoraAutorizacao := TJsonObject( aJson ).getValue<TDatetime>('dataHoraAutorizacao' );
        FRetorno.estadoAutorizacaoTransferencia := TJsonObject( aJson ).getValue<String>('estadoAutorizacaoTransferencia' );
        FRetorno.placaVeiculo := TJsonObject( aJson ).getValue<String>('placaVeiculo' );
        FRetorno.id := TJsonObject( aJson ).getValue<Integer>('id' );
        FRetorno.idEstoque := TJsonObject( aJson ).getValue<Integer>('idEstoque' );
      end;

  finally
    freeAndNil( aJson );
  end;

end;

end.
