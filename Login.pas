unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, AppEvnts, RxCalc, DB,
  IBCustomDataSet, IBQuery;

type
  TBoxLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edusuario: TEdit;
    Edsenha: TEdit;
    DataSourceParametros: TDataSource;
    IBQuery1: TIBQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EdsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
//    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
//   procedure FinalizaTimer(Sender: TObject; var Done : Boolean);
//    procedure ComecaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxLogin: TBoxLogin;
  MinutosInativos : Integer;
  Minutos : Integer;

implementation

uses FDB, MENU, BIBLIOTECA, Empresas, IniFile;

{$R *.dfm}

//procedure ComecaTimer(Sender: TObject);
//begin
// Timer.enabled := False;
//end;

//procedure FinalizaTimer(Sender: TObject; var Done : Boolean);
//begin
// Timer.enabled := False;
//end;

//procedure TBoxLogin.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
//begin
//  finalizaTimer();
//  ComecaTimer;
//  Timer.enabled := False;
//   MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0)
//end;

procedure TBoxLogin.Button1Click(Sender: TObject);
begin
    if FDB1.ValidaUsuario(EdUsuario.Text, Crypto(EdSenha.Text)) then
    begin
      {: usuário válido }
      try
          BoxLogin.Free;
          Application.CreateForm(TBoxEmpresas, BoxEmpresas);
          BoxEmpresas.Showmodal;
          Application.Terminate;
      finally
      end;
    end
    else
      {: usuário inválido }
      begin
        Edusuario.Setfocus;
        raise Exception.Create('Usuário ou senha inválidos');
      end
end;

procedure TBoxLogin.Button2Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TBoxLogin.EdsenhaKeyPress(Sender: TObject; var Key: Char);
begin
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
  if Key = #27 then
     Application.Terminate;
end;

procedure TBoxLogin.EdusuarioKeyPress(Sender: TObject; var Key: Char);
begin
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
  if Key = #27 then
     Application.Terminate;
end;

procedure TBoxLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then
    Application.Terminate;
end;

procedure TBoxLogin.FormShow(Sender: TObject);
begin
   FDB1.IBDatabase.Connected := false;
   BoxInifile.LeBanco();
   FDB1.IBDatabase.Connected := True;
   DataSourceParametros.DataSet.Open;
   if IBQuery1.FieldByName('Versao_Sistema').AsString <> '1.40' then
     begin
       Showmessage('O sistema está desatualizado. Atualize ele para poder executar');
       Application.Terminate;
     end;
   Edusuario.Setfocus;
end;                                                   
end.
