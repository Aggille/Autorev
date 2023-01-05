{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento consulte veículos pendentes de entrada em seu estoque
Programador: Leandro do Couto
}


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
  Vcl.Forms, System.Classes, IdGlobal, UConstsRenave, FDB;

{ TConsultaRenave }

procedure TConsultarRenave.Consulta;
var
aHttp:TIDHttp;
aHandler: TIdSSLIOHandlerSocketOpenSSL;
aJSONStream:TStringStream;
aJValue:tJSonValue;
AResponseContent: TStringStream;
aRet:TStringList;
begin

  if( FURL = '' ) then
    raise Exception.Create(StrInformeAURL);

  if( FModo = '' ) then
    raise exception.Create(StrInformeMetodoConsulta);

  try

    try

      aHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      AResponseContent := TStringStream.Create('');

      with aHandler do
        begin
          SSLOptions.Method := sslvTLSv1_2;
          SSLOptions.Mode := sslmUnassigned;
          SSLOptions.VerifyMode := [];
          SSLOptions.VerifyDepth := 0;
          SSLOptions.CertFile := FChavePublica;
          SSLOptions.KeyFile := FChavePrivada;
        end;

      aHttp := TIDHttp.Create(nil);
      aHttp.ProxyParams.BasicAuthentication := False;
      aHttp.IOHandler := aHandler;

      with aHttp do
      begin
       Request.Clear;
       Request.ContentType := StrApplicationjson;
       ConnectTimeout:= 10000;
       FUrl := FURLBase + FURL;

       aJSONStream := TStringStream.Create(FBody, TEncoding.UTF8);

       if( FMetodo = StrHttpPOST ) then
        begin
          Post( FUrl,aJSONStream,AResponseContent);
          FRetorno := AResponseContent.DataString;
        end
       else
          FRetorno := Get( FURL );

       FCodigoRetorno := aHttp.Response.ResponseCode;

       if( FCodigoRetorno > IntHttpCode201 ) then
       begin
        aJValue:= TJSONObject.ParseJSONValue(FRetorno);
        FErro := TErroConsultaRenave.Create;
        FErro.Data := aJValue.GetValue<TDateTime>( 'dataHora' );
        FErro.Detalhe := aJValue.GetValue<String>( 'detalhe' );
        //FErro.LogIdRastreabilidade := aJValue.GetValue<String>( 'logIdRastreabilidade' );
        FErro.mensagem := aJValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
        FErro.Titulo:= aJValue.GetValue<String>( 'titulo' );
       end;

      end;
    except
      on E:EIdHTTPProtocolException  do
      begin
       if( aHttp.Response <> nil ) then
       begin

        FRetorno := e.ErrorMessage;
        aJValue:= TJSONObject.ParseJSONValue(FRetorno);
        FErro := TErroConsultaRenave.Create;
        FCodigoRetorno := e.ErrorCode;

        case E.ErrorCode of
          IntHttpCode401:
            begin
              FErro.Data := now;
              FErro.Detalhe := StrCodigoDoErro + e.ErrorCode.ToString;
              FErro.mensagem := StrErroNaoAutorizado;
              FErro.Titulo:= e.Message;
            end;

          IntHttpCode403:
            begin
              FErro.Data := now;
              FErro.Detalhe := StrCodigoDoErro + e.ErrorCode.ToString;
              FErro.mensagem := StrErroAcessoNegado;
              FErro.Titulo:= e.Message;
            end;

          IntHttpCode404:
            begin
              FErro.Data := now;
              FErro.Detalhe := StrCodigoDoErro + e.ErrorCode.ToString;
              FErro.mensagem := StrErroServicoNaoEncontrado;
              FErro.Titulo:= e.Message;
            end;

          IntHttpCode422: // erro de negócio
            begin
              FErro.Data := aJValue.GetValue<TDateTime>( 'dataHora' );
              FErro.Detalhe := aJValue.GetValue<String>( 'detalhe' );
              FErro.mensagem := aJValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
              FErro.Titulo:= aJValue.GetValue<String>( 'titulo' );
//
//              if( DebugHook <> 0 ) then
//              begin
//                /// ARQUIVO CRIADO APENAS PARA TESTE..
//                ///
//                ///  REMOVER QUANDOFOR PARA PRODUÇÃO
//                ///
//                FCodigoRetorno := IntHttpCode201 or IntHttpCode200;
//                aRet := TStringList.Create;
//                aRet.LoadFromFile(ExtractFilePath( Application.ExeName ) + 'retorno_teste.json' );
//                FRetorno := aRet.Text;
//                aRet.Free;
//              end;


            end;
          IntHttpCode500:
            begin
              FErro.Data := aJValue.GetValue<TDateTime>( 'dataHora' );
              FErro.Detalhe := aJValue.GetValue<String>( 'detalhe' );
              FErro.mensagem := aJValue.GetValue<String>( 'mensagemParaUsuarioFinal' );
              FErro.Titulo:= aJValue.GetValue<String>( 'titulo' );
              //FErro.LogIdRastreabilidade := aJValue.GetValue<String>( 'LogIdRastreabilidade' );
            end
          else
            begin
              FErro.Data := now;
              FErro.Detalhe := StrCodigoDoErro + e.ErrorCode.ToString;
              FErro.mensagem := e.ErrorMessage;
              FErro.Titulo:= e.Message;
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
        FErro.Titulo:= StrErroInesperado;
      end;

    end;

  finally
    freeAndNil( aJSONStream );
    freeAndNil( aHandler );
    FreeandNil( aHttp );
  end;

end;

constructor TConsultarRenave.create;
var
aIni:TIniFile;
aSecao,aNomeIni:String;
aux:TREstClient;
begin
  try

    aNomeIni := ExtractFilePath( Application.Exename ) +  '\Autorev.ini';
    aSecao := 'renave_' + FDB1.IBDataSetConcessionaria.fieldbyname( 'cnpj' ).asString;

    if( not FileExists( aNomeIni ) ) then
      raise Exception.Create('Arquivo autorev.ini não encontrado');

    aIni := TIniFile.Create( aNomeIni );
    FModo := aIni.readString( asecao , 'modo' , 'H' );
    FCertificado := aIni.ReadString( asecao , 'certificado' , '' );
    FSenhaCertificado := aIni.ReadString( asecao , 'senha_certificado' , '' );
    FCertificadoSeguranca := aIni.ReadString( asecao , 'certificado_seguranca' , '' );
    FChavePublica := aIni.ReadString( asecao , 'chave_publica' , '' );
    FChavePrivada := aIni.ReadString( asecao , 'chave_privada' , '' );

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
