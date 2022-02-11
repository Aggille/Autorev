{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize autorização de transferência de veículo zero km
Programador: Leandro do Couto
}

unit UAutorizarTransferenciaVeiculo0KM;

interface

uses URetornoAutorizacaoTransferenciaVeiculo0KM, UErroConsultaRenave,System.Json,
  UAutorizacaoTransferenciaVeiculo0KM, UConsultarRenave;

type
  TAutorizarTransferenciaVeiculo0KM = class
    private
      FRetorno: TRetornoAutorizacaoTransferenciaVeiculo0KM;
      FErro: TErroConsultaRenave;
      FAutorizacao: TAutorizacaoTransferenciaVeiculo0KM;
      FConsulta:TConsultarRenave;
      procedure processaRetorno(aValue:String);
    published
      property Retorno: TRetornoAutorizacaoTransferenciaVeiculo0KM read FRetorno write FRetorno;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Autorizacao: TAutorizacaoTransferenciaVeiculo0KM read FAutorizacao write FAutorizacao;
    public
      function Autoriza:boolean;
      constructor create;
      destructor destroy;override;
      class function new:TAutorizarTransferenciaVeiculo0KM;
  end;

implementation

uses
  UConstsRenave, REST.Json;

{ TAutorizarTransferenciaVeiculo0KM }


function TAutorizarTransferenciaVeiculo0KM.Autoriza: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;

begin
  aURL := 'autorizacoes-transferencias-veiculo-zero-km';
  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FAutorizacao);
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

constructor TAutorizarTransferenciaVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TAutorizarTransferenciaVeiculo0KM.destroy;
begin
  FConsulta.Free;
  if( FRetorno <> nil ) then
    FRetorno.Free;

  inherited;
end;

class function TAutorizarTransferenciaVeiculo0KM.new: TAutorizarTransferenciaVeiculo0KM;
begin
  result := self.create;
end;

procedure TAutorizarTransferenciaVeiculo0KM.processaRetorno(aValue:String);
var
aJson:TJSonValue;

begin
  try
    FRetorno := TRetornoAutorizacaoTransferenciaVeiculo0KM.Create;
    aJson := TJsonObject.ParseJSONValue(aValue);

    if( not aJson.null ) then
    begin
      FRetorno.chassi := TJsonObject( aJson ).getValue<String>( 'chassi' );
      FRetorno.cnpjEstabelecimentoAutorizador := TJsonObject( aJson ).getValue<String>( 'cnpjEstabelecimentoAutorizador' );
      FRetorno.cnpjEstabelecimentoDestino := TJsonObject( aJson ).getValue<String>( 'cnpjEstabelecimentoDestino' );
      FRetorno.cpfOperadorResponsavelAutorizacao := TJsonObject( aJson ).getValue<String>( 'cpfOperadorResponsavelAutorizacao' );
      FRetorno.dataHoraAutorizacao := TJsonObject( aJson ).getValue<TDateTime>( 'dataHoraAutorizacao' );
      FRetorno.estadoAutorizacaoTransferencia := TJsonObject( aJson ).getValue<String>( 'estadoAutorizacaoTransferencia' );
      FRetorno.id := TJsonObject( aJson ).getValue<Integer>( 'id' );
      FRetorno.idEstoque:= TJsonObject( aJson ).getValue<Integer>( 'idEstoque' );
      FRetorno.placaVeiculo:= TJsonObject( aJson ).getValue<String>( 'placaVeiculo' );
    end;

  finally
    aJson.Free;
  end;
end;

end.
