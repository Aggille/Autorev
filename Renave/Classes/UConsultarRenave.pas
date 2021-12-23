unit UConsultarRenave;

interface
uses UErroConsultaRenave, Rest.Client, IDHTTP;

type
  TConsultarRenave = class
    private
      FCodigoRetorno: Integer;
      FURL: String;
      FErro: TErroConsultaRenave;
      FCertificado,
      FSenhaCertificado,
      FCertificadoSeguranca,
      FChavePublica,
      FChavePrivada,
      FModo:String;
      FRetorno: String;
      FUrlBase:String;
    FMetodo: String;
    FBody: String;
    public
      property CodigoRetorno: Integer read FCodigoRetorno write FCodigoRetorno;
      property URL: String read FURL write FURL;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property Retorno: String read FRetorno write FRetorno;
      property Metodo: String read FMetodo write FMetodo;
      property Body: String read FBody write FBody;
      procedure Consulta;
      constructor create;
      destructor destroy;override;
      class function new:TConsultarRenave;
  end;

implementation

uses
  System.SysUtils, System.IniFiles, REST.Types, System.JSON, IdSSLOpenSSL,
  Vcl.Forms, System.Classes, IdGlobal;

{ TConsultaRenave }

procedure TConsultarRenave.Consulta;
var
FHttp:TIDHttp;
FHandler: TIdSSLIOHandlerSocketOpenSSL;
iJSONStream:TStringStream;
jValue:tJSonValue;
aTam:Integer;
LClient:TRestClient;
AResponseContent: TStringStream;

begin

  if( FURL = '' ) then
    raise Exception.Create('Informe a URL');

  if( FModo = '' ) then
    raise exception.Create('Informe o método da consulta ( GET / POST )');

  try

    try

      FHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      AResponseContent := TStringStream.Create('');

      with FHandler do
        begin
          SSLOptions.Method := sslvTLSv1_2;
          SSLOptions.Mode := sslmUnassigned;
          SSLOptions.VerifyMode := [];
          SSLOptions.VerifyDepth := 0;
          SSLOptions.CertFile := FChavePublica;
          SSLOptions.KeyFile := FChavePrivada;
        end;

      FHttp := TIDHttp.Create(nil);
      FHttp.ProxyParams.BasicAuthentication := False;
      FHttp.IOHandler := FHandler;

      with FHTTP do
      begin
       Request.Clear;
       Request.ContentType := 'application/json';
       ConnectTimeout:= 10000;
       FUrl := FURLBase + FURL;

       iJSONStream := TStringStream.Create(FBody, TEncoding.UTF8);

       if( FMetodo = 'POST' ) then
        begin
          Post( FUrl,iJSONStream,AResponseContent);
          FRetorno := AResponseContent.DataString;
        end
       else
          FRetorno := Get( FURL );

        FCodigoRetorno := FHttp.Response.ResponseCode;

       if( FCodigoRetorno <> 200 ) then
       begin
        jValue:= TJSONObject.ParseJSONValue(FRetorno);
        FErro := TErroConsultaRenave.Create;
        FErro.Data := jValue.GetValue<TDateTime>( 'dataHora' );
        FErro.Detalhe := jValue.GetValue<String>( 'detalhe' );
        FErro.LogIdRastreabilidade := jValue.GetValue<String>( 'logIdRastreabilidade' );
        FErro.mensagem := jValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
        FErro.Titulo:= jValue.GetValue<String>( 'titulo' );
       end;

      end;
    except
      on E:EIdHTTPProtocolException  do
      begin
       if( FHttp.Response <> nil ) then
       begin
        FRetorno := e.ErrorMessage;
        jValue:= TJSONObject.ParseJSONValue(FRetorno);
        FErro := TErroConsultaRenave.Create;

        case E.ErrorCode of
          404,422: // erro de negócio
            begin
              FErro.Data := jValue.GetValue<TDateTime>( 'dataHora' );
              FErro.Detalhe := jValue.GetValue<String>( 'detalhe' );
              FErro.mensagem := jValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
              FErro.Titulo:= jValue.GetValue<String>( 'titulo' );
            end;
          500:
            begin
              FErro.Data := jValue.GetValue<TDateTime>( 'dataHora' );
              FErro.Detalhe := jValue.GetValue<String>( 'detalhe' );
              FErro.mensagem := jValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
              FErro.Titulo:= jValue.GetValue<String>( 'titulo' );
              FErro.LogIdRastreabilidade := jValue.GetValue<String>( 'LogIdRastreabilidade' );
            end
          else
            begin
              FErro.Data := now;
              FErro.Detalhe := 'Código do erro: ' + e.ErrorCode.ToString;
              FErro.mensagem := e.Message;
              FErro.Titulo:= 'Erro inesperado';
            end;

        end;




       end;

      end;
      on e:Exception do
      begin
        FRetorno := e.Message;
        FErro := TErroConsultaRenave.Create;
        FErro.Data := now;
        FErro.Detalhe := '';
        FErro.mensagem := e.Message;
        FErro.Titulo:= 'Erro inesperado';
      end;


    end;
  finally
    freeAndNil( iJSONStream );
    freeAndNil( FHandler );
    FreeandNil( FHttp );
  end;

end;

constructor TConsultarRenave.create;
var
aIni:TIniFile;
aNomeIni:String;
aux:TREstClient;
begin
  try

    aNomeIni := ExtractFilePath( Application.Exename ) +  '\Autorev.ini';

    if( not FileExists( aNomeIni ) ) then
      raise Exception.Create('Arquivo autorev.ini não encontrado');

    aIni := TIniFile.Create( aNomeIni );
    FModo := aIni.readString( 'renave' , 'modo' , 'H' );
    FCertificado := aIni.ReadString( 'renave' , 'certificado' , '' );
    FSenhaCertificado := aIni.ReadString('renave' , 'senha_certificado' , '' );
    FCertificadoSeguranca := aIni.ReadString( 'renave' , 'certificado_seguranca' , '' );
    FChavePublica := aIni.ReadString( 'renave' , 'chave_publica' , '' );
    FChavePrivada := aIni.ReadString( 'renave' , 'chave_privada' , '' );

    if( FModo = 'P' ) then
      FUrlBase := 'https://renave.estaleiro.serpro.gov.br/renave-ws/api/'
    else
      FUrlBase := 'https://hom.renave.estaleiro.serpro.gov.br/renave-ws/api/';

  finally
    aIni.Free;
  end;
end;

destructor TConsultarRenave.destroy;
begin
  inherited;
end;

class function TConsultarRenave.new: TConsultarRenave;
begin
  result := self.create;
end;

end.
