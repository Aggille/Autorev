unit u_maladireta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, SqlExpr, Provider,
  DB, DBClient, LMDCustomComponent, LMDIniCtrl, StdCtrls, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBrowseEdit, LMDCustomFileEdit, LMDFileOpenEdit,
  wwriched, Buttons,IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, QRPDFFILT, IdPOP3;

type
  TfrmMalaDireta = class(TForm)
    dtsClientes: TDataSource;
    tblClientes: TClientDataSet;
    tblClientesNOME: TStringField;
    tblClientesCIDADE: TStringField;
    tblClientesTITULO: TStringField;
    tblClientesCONJUGE: TStringField;
    tblClientesID: TIntegerField;
    tblClientesENDERECO: TStringField;
    tblClientesBAIRRO: TStringField;
    tblClientesCEP: TStringField;
    tblClientesUF: TStringField;
    tblClientesTELEFONE: TStringField;
    tblClientesFAX: TStringField;
    tblClientesEMAIL: TStringField;
    tblClientesANIVERSARIO: TDateField;
    tblClientesANIV_CONJUGE: TDateField;
    tblClientesOBS: TGraphicField;
    tblClientesANIV_CASAMENTO: TDateField;
    tblClientesCPF: TStringField;
    tblClientesRG: TStringField;
    dspClientes: TDataSetProvider;
    sqlClientes: TSQLDataSet;
    pagClientes: TPageControl;
    tabclientes: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    lmdINI: TLMDIniCtrl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtAssunto: TEdit;
    Label2: TLabel;
    edtAnexo: TLMDFileOpenEdit;
    Label3: TLabel;
    edtMensagem: TwwDBRichEdit;
    BitBtn1: TBitBtn;
    lblMensagem: TLabel;
    smtp: TIdSMTP;
    pop: TIdPOP3;
    Mensagem: TIdMessage;
    Progresso: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure EnviaEmail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMalaDireta: TfrmMalaDireta;

implementation

uses u_principal;

{$R *.dfm}

procedure TfrmMalaDireta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmMalaDireta.FormShow(Sender: TObject);
begin
   if not abre( [tblClientes] ) then close;
end;


procedure TfrmMalaDireta.enviaEmail;
var
   arquivo:String;

begin

  mensagem  := TIdmessage.create(nil);

    pop.host      := lmdINI.ReadString( 'Email' , 'HostPop' , '' );
    pop.username  := lmdINI.ReadString( 'Email' , 'User_mail' , '' );
    pop.password  := lmdINI.ReadString( 'Email' , 'Senha_mail' , '' );

    smtp.host      := lmdINI.ReadString( 'Email' , 'HostSmtp' , '' );
    smtp.username  := lmdINI.ReadString( 'Email' , 'User_mail' , '' );
    smtp.password  := lmdINI.ReadString( 'Email' , 'Senha_mail' , '' );

    with Mensagem do
    begin

       if pop.connected then pop.disconnect;
       if SMTP.connected then SMTP.disconnect;       

       From.Text  := lmdINI.ReadString( 'Email' , 'Email' , '' );
       Subject    := edtAssunto.Text;
       Body.Text  := edtMensagem.Text;
       // coloca o anexo
       if edtAnexo.text <> '' then TIdAttachment.Create(Mensagem.MessageParts, edtAnexo.Text );

       aguarde( 'Conectando...' );
       try
          pop.connect();
          smtp.Connect();
      finally
          fecha_aguarde;
      end;

       with tblClientes do
       begin
          first;
          progresso.Max  := RecordCount;
          while not eof do
          begin
            if fieldbyname( 'titulo' ).asString = 'S' then
              begin
                lblMensagem.Caption := 'Enviando para: ' + fieldbyname( 'Nome' ).asString;
                Recipients.Clear;
                Recipients.Add ;
                Recipients.EMailAddresses := fieldbyname( 'Nome' ).asString + '<'+fieldbyname( 'email' ).asString+'>';
                smtp.Send(Mensagem);
              end;
              progresso.position  := Recno;
              progresso.Update;
              next;
          end;
      end;
       Smtp.Disconnect;
       pop.disconnect();
       Erro( 'Mala direta enviada com sucesso !' ) ;
  end;

end;


procedure TfrmMalaDireta.BitBtn1Click(Sender: TObject);
begin
  enviaEmail();
end;

end.
