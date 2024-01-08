{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize o cancelamento da saída de estoque
Programador: Leandro do Couto
}



unit UCancelarEntrega;


interface

uses
  UCancelamentoSaidaEstoqueVeiculo0KM, UErroConsultaRenave, UConsultarRenave,
  URealizaCancelaEntrega, URetornoConsultaEntregas;

type
  TCancelarEntrega = class
    private
      FErro: TErroConsultaRenave;
      FRetorno: TRetornoConsultaEntregas;
      FCancelamento: TRealizaCancelaEntrega;
      FConsulta:TConsultarRenave;
      procedure ProcessaRetorno( aValue:String );
    public
      constructor create;
      destructor destroy;override;
      class function new:TCancelarEntrega;
      property Cancelamento: TRealizaCancelaEntrega read FCancelamento write FCancelamento;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoConsultaEntregas read FRetorno write FRetorno;
      function Cancela:boolean;

  end;


implementation

uses
  System.JSON, System.SysUtils, UConstsRenave, REST.Json;

{ TCancelarEntrega }

function TCancelarEntrega.Cancela: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin
  aURL := 'entregas-veiculo-zero-km/cancelamento';

  try

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FCancelamento);
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

constructor TCancelarEntrega.create;
begin
  FConsulta := TConsultarRenave.Create;
  FCancelamento := TRealizaCancelaEntrega.Create;
end;

destructor TCancelarEntrega.destroy;
begin
  FConsulta.Free;
  if( FCancelamento <> nil ) then FCancelamento.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;

  inherited;
end;

class function TCancelarEntrega.new: TCancelarEntrega;
begin
  result := self.Create;
end;

procedure TCancelarEntrega.ProcessaRetorno(aValue: String);
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
