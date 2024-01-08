unit URealizarEntrega;

interface

uses
  UCancelamentoSaidaEstoqueVeiculo0KM, UErroConsultaRenave, UConsultarRenave,
  URealizaCancelaEntrega, URetornoConsultaEntregas;

type
  TRealizarEntrega = class
    private
      FErro: TErroConsultaRenave;
      FRetorno: TRetornoConsultaEntregas;
      FRealizacao : TRealizaCancelaEntrega;
      FConsulta:TConsultarRenave;
      procedure ProcessaRetorno( aValue:String );
    public
      constructor create;
      destructor destroy;override;
      class function new:TRealizarEntrega;
      property Realizacao: TRealizaCancelaEntrega read FRealizacao write FRealizacao;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoConsultaEntregas read FRetorno write FRetorno;
      function Realiza:boolean;

  end;


implementation

uses
  System.JSON, System.SysUtils, UConstsRenave, REST.Json;


{ TRealizarEntrega }

function TRealizarEntrega.Realiza: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin
  aURL := 'entregas-veiculo-zero-km/realizacao';

  try

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FRealizacao);
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

constructor TRealizarEntrega.create;
begin
  FConsulta := TConsultarRenave.Create;
  FRealizacao := TRealizaCancelaEntrega.Create;
end;

destructor TRealizarEntrega.destroy;
begin
  FConsulta.Free;
  if( FRealizacao <> nil ) then FRealizacao.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;

  inherited;
end;

class function TRealizarEntrega.new: TRealizarEntrega;
begin
  result := self.Create;
end;

procedure TRealizarEntrega.ProcessaRetorno(aValue: String);
var
aJson,
aJsonRealizacao,
aJsonCancelamento:TJSonValue;

begin

  try
      FRetorno := TRetornoConsultaEntregas.Create;
      aJson := TJsonObject.ParseJSONValue(aValue);


      if( aJson <> nil ) then
      begin

        FRetorno.Chassi := TJsonObject( aJson ).getValue<String>( 'chassi' );
        FRetorno.cnpjEstabelecimentoEntregador := TJsonObject( aJson ).getValue<String>( 'cnpjEstabelecimentoEntregador' );
        FRetorno.cnpjEstabelecimentoVendedor := TJsonObject( aJson ).getValue<String>( 'cnpjEstabelecimentoVendedor' );
        FRetorno.estado := TJsonObject( aJson ).getValue<String>( 'estado' );
        FRetorno.idAtpv := TJsonObject( aJson ).getValue<String>( 'idAtpv' );
        FRetorno.id := TJsonObject( aJson ).getValue<integer>( 'id' );
        FRetorno.idEntregaGeradaNoCancelamentoEntrega := TJsonObject( aJson ).getValue<integer>( 'idEntregaGeradaNoCancelamentoEntrega' );
        FRetorno.idEntregaOrigemCancelamentoEntrega := TJsonObject( aJson ).getValue<integer>( 'idEntregaOrigemCancelamentoEntrega' );

        aJsonCancelamento := ( aJson as TJsonObject ).GetValue('cancelamentoEntrega');
        aJsonRealizacao := ( aJson as TJsonObject ).GetValue('realizacaoEntrega');

        if( aJsonCancelamento <> nil ) then
        begin
          FRetorno.cancelamentoEntrega.dataHoraRegistro  := TJsonObject( aJsonCancelamento ).getValue<TDateTime>( 'dataHoraRegistro' );
          FRetorno.cancelamentoEntrega.cpfResponsavel := TJsonObject( aJsonCancelamento ).getValue<String>( 'cpfResponsavel' );
          FRetorno.cancelamentoEntrega.motivo := TJsonObject( aJsonCancelamento ).getValue<String>( 'motivo' );
        end;

        if( aJsonRealizacao <> nil ) then
        begin
          FRetorno.realizacaoEntrega.dataHoraRegistro  := TJsonObject( aJsonRealizacao ).getValue<TDateTime>( 'dataHoraRegistro' );
          FRetorno.realizacaoEntrega.cpfResponsavel := TJsonObject( aJsonRealizacao ).getValue<String>( 'cpfResponsavel' );
        end;


      end;

  finally
    freeAndNil( aJson );
  end;

end;

end.
