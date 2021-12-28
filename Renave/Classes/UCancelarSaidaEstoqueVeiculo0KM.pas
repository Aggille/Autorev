{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize o cancelamento da saída de estoque
Programador: Leandro do Couto
}


unit UCancelarSaidaEstoqueVeiculo0KM;

interface

uses
  UCancelamentoSaidaEstoqueVeiculo0KM, UErroConsultaRenave, UConsultarRenave,
  URetornoCancelamentoSaidaEstoqueVeiculo0KM;
type

  TCancelarSaidaEstoqueVeiculo0KM = class
    private
      FCancelamento:TCancelamentoSaidaEstoqueVeiculo0KM;
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      FRetorno: TRetornoCancelamentoSaidaEstoqueVeiculo0KM;
      procedure ProcessaRetorno( aValue:String );
    published
    public
      constructor create;
      destructor destroy;override;
      class function new:TCancelarSaidaEstoqueVeiculo0KM;
      property Cancelamento: TCancelamentoSaidaEstoqueVeiculo0KM read FCancelamento write FCancelamento;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoCancelamentoSaidaEstoqueVeiculo0KM read FRetorno write FRetorno;
      function CancelaSaida:boolean;

  end;

implementation

uses
  UConstsRenave, REST.Json, System.SysUtils, System.JSON;

{ TCancelarSaidaEstoqueVeiculo0KM }

function TCancelarSaidaEstoqueVeiculo0KM.CancelaSaida: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'cancelamentos-saida-estoque-zero-km';

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

constructor TCancelarSaidaEstoqueVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
  FCancelamento := TCancelamentoSaidaEstoqueVeiculo0KM.Create;
end;

destructor TCancelarSaidaEstoqueVeiculo0KM.destroy;
begin
  FConsulta.Free;
  if( FCancelamento <> nil ) then FCancelamento.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

class function TCancelarSaidaEstoqueVeiculo0KM.new: TCancelarSaidaEstoqueVeiculo0KM;
begin
  result := self.Create;
end;

procedure TCancelarSaidaEstoqueVeiculo0KM.ProcessaRetorno(aValue: String);
var
aJson,
aJsonSaida,
aJsonCancelamento:TJSonValue;

begin

  try
      FRetorno := TRetornoCancelamentoSaidaEstoqueVeiculo0KM.Create;
      aJson := TJsonObject.ParseJSONValue(aValue);
      aJsonSaida := ( aJson as TJsonObject ).GetValue('saidaEstoque');

      if( aJsonSaida <> nil ) then
      begin

        aJsonCancelamento := ( aJsonSaida as TJsonObject ).GetValue('cancelamentoSaidaEstoque');

        if( aJsonCancelamento <> nil ) then
        begin
          FRetorno.dataHoraCancelamentoSaidaEstoque := TJsonObject( aJsonCancelamento ).getValue<TDateTime>( 'dataHoraCancelamentoSaidaEstoque' );
          FRetorno.idEstoqueGeradoNoCancelamentoSaida := TJsonObject( aJsonCancelamento ).getValue<Integer>( 'idEstoqueGeradoNoCancelamentoSaida' );
        end;

      end;

  finally
    freeAndNil( aJson );
  end;
end;

end.
