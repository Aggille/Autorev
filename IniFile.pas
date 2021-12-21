unit IniFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls;

type
  TBoxIniFile = class(TForm)
    Ip: TEdit;
//    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   pathlogo : String;
  procedure LeBanco();
//    procedure GravaBanco();
  end;

var
  BoxIniFile: TBoxIniFile;

implementation

uses FDB, Login;

{$R *.dfm}
//procedure TBoxIniFile.GravaBanco;
//var
//  BancoDados : Tinifile;
//begin
//  BancoDados := Tinifile.Create('C:\AUTOREV\Source\Autorev.ini');
//  BancoDados.WriteString('BancoDeDados','path','localhost:C:\Autorev\Database\');
//  BancoDados.free;
//end;

//procedure TBoxIniFile.FormShow(Sender: TObject);
//begin
//  try
 //   LeBanco();
  //  BoxIniFile.Free;
{    Application.CreateForm(TBoxLogin, BoxLogin);
    BoxLogin.Showmodal;
    Close;
    BoxLogin.Free;
  finally
 end;
end;
 }
procedure TBoxIniFile.LeBanco();
var
  BancoDados : Tinifile;
  LocalBanco : STRING;
begin
  //BancoDados := Tinifile.Create('c:\autorev-sd\autorev.ini');
  BancoDados := Tinifile.Create(ExtractFilePath( Application.Exename ) + '\autorev.ini');
  LocalBanco := BancoDados.ReadString('BancoDeDados','path','');
  PathLogo   := BancoDados.ReadString('BancoDeDados','pathlogo','');
//LocalBanco := 'localhost:c:\autorev\database\autorev.fdb';
 // showmessage(localbanco);
  ip.Text := localbanco;
  FDB1.IBDatabase.DatabaseName := LocalBanco;
  FDB1.SQLConnection1.Params[8] := 'Database=' + LocalBanco;
end;

end.

