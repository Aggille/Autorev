{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento realize a saída de estoque do seu veículo para um comprador final
Programador: Leandro do Couto
}

unit USairEstoqueVeiculo0KM;

interface

uses
  USaidaEstoqueVeiculo0KM, UErroConsultaRenave, UConsultarRenave,
  URetornoSaidaEstoqueVeiculo0KM;
type
  TSairEstoqueVeiculo0KM = class
    private
      FSaida:TSaidaEstoqueVeiculo0KM;
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      FRetorno: TRetornoSaidaEstoqueVeiculo0KM;
      procedure ProcessaRetorno( aValue:String );
    published
    public
      constructor create;
      destructor destroy;override;
      class function new:TSairEstoqueVeiculo0KM;
      property Saida: TSaidaEstoqueVeiculo0KM read FSaida write FSaida;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: TRetornoSaidaEstoqueVeiculo0KM read FRetorno write FRetorno;
      function SaiEstoque:boolean;

  end;


implementation

uses
  UConstsRenave, REST.Json, System.JSON;

{ TSairEstoqueVeiculo0KM }

constructor TSairEstoqueVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TSairEstoqueVeiculo0KM.destroy;
begin
  FConsulta.Free;
  if( FRetorno <> nil ) then FRetorno.Free;
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

class function TSairEstoqueVeiculo0KM.new: TSairEstoqueVeiculo0KM;
begin
  result := self.Create;
end;

procedure TSairEstoqueVeiculo0KM.ProcessaRetorno(aValue: String);
var
aJson,
aJsonSaida,
aJsonEndereco,
aJsonMunicipio,
aJsonComprador:TJSonValue;
begin

  try
      FRetorno := TRetornoSaidaEstoqueVeiculo0KM.Create;
      aJson := TJsonObject.ParseJSONValue(aValue);
      aJsonSaida := ( aJson as TJsonObject ).GetValue('saidaEstoque');


      if( aJsonSaida <> nil ) then
      begin

        aJsonComprador := TJsonObject( aJsonSaida ).GetValue( 'comprador' );


        if( aJsonComprador <> nil ) then
          aJsonEndereco := TJsonObject( aJsonComprador ).getValue( 'endereco' );

        FRetorno.chaveNotaFiscalSaida := TJsonObject( aJsonSaida ).GetValue<String>('chaveNotaFiscalSaida' );
        FRetorno.cpfOperadorResponsavel:= TJsonObject( aJsonSaida ).GetValue<String>('cpfOperadorResponsavel' );
        FRetorno.dataHora := TJsonObject( aJsonSaida ).GetValue<TDateTime>('dataHora' );
        FRetorno.dataHoraEnvioNotaFiscalSaida:= TJsonObject( aJsonSaida ).GetValue<TDatetime>('dataHoraEnvioNotaFiscalSaida' );
        FRetorno.motivo := TJsonObject( aJsonSaida ).GetValue<String>('motivo' );
        FRetorno.numeroTermoSaidaEstoque := TJsonObject( aJsonSaida ).GetValue<Integer>('numeroTermoSaidaEstoque' );

        if( aJsonComprador <> nil ) then
        begin
          FRetorno.Comprador.Nome := TJsonObject( aJsonComprador ).GetValue<String>('nome' );
          FRetorno.Comprador.numeroDocumento := TJsonObject( aJsonComprador ).GetValue<String>('numeroDocumento' );
          FRetorno.Comprador.tipoDocumento:= TJsonObject( aJsonComprador ).GetValue<String>('tipoDocumento' );

          if( aJsonEndereco <> nil ) then
          begin

            aJsonMunicipio := TJsonObject( AJsonEndereco ).GetValue( 'municipio' );

            FRetorno.Comprador.Endereco.bairro := TJsonObject( aJsonEndereco ).GetValue<String>('bairro');
            FRetorno.Comprador.Endereco.cep:= TJsonObject( aJsonEndereco ).GetValue<String>('cep');
            FRetorno.Comprador.Endereco.complemento:= TJsonObject( aJsonEndereco ).GetValue<String>('complemento');
            FRetorno.Comprador.Endereco.logradouro:= TJsonObject( aJsonEndereco ).GetValue<String>('logradouro');
            FRetorno.Comprador.Endereco.numero:= TJsonObject( aJsonEndereco ).GetValue<String>('numero');

            if( aJsonMunicipio <> nil ) then
            begin
              FRetorno.Comprador.Endereco.Municipio.id := TJsonObject( aJsonMunicipio ).GetValue<String>('id' );
              FRetorno.Comprador.Endereco.Municipio.nome:= TJsonObject( aJsonMunicipio ).GetValue<String>('nome' );
              FRetorno.Comprador.Endereco.Municipio.uf:= TJsonObject( aJsonMunicipio ).GetValue<String>('uf' );
            end;

          end;

        end;



      end;

  finally

  end;

end;

function TSairEstoqueVeiculo0KM.SaiEstoque: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'saidas-estoque-veiculo-zero-km';

  try

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FSaida);
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

end.
