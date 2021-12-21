unit Senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DB, IBCustomDataSet, Buttons, Mask,
  DBCtrls, ACBrBase, ACBrEnterTab;

type
  TBoxSenha = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tblUsuario: TIBDataSet;
    tblUsuarioID_USUARIOS: TIntegerField;
    tblUsuarioUSUARIO: TIBStringField;
    tblUsuarioLOGIN: TIBStringField;
    tblUsuarioSENHA: TIBStringField;
    tblUsuarioADM: TIBStringField;
    tblUsuarioACESSO1: TIBStringField;
    tblUsuarioACESSO2: TIBStringField;
    tblUsuarioACESSO3: TIBStringField;
    tblUsuarioACESSO4: TIBStringField;
    tblUsuarioACESSO5: TIBStringField;
    tblUsuarioACESSO6: TIBStringField;
    tblUsuarioACESSO7: TIBStringField;
    tblUsuarioACESSO8: TIBStringField;
    tblUsuarioACESSO9: TIBStringField;
    tblUsuarioACESSO10: TIBStringField;
    tblUsuarioACESSO11: TIBStringField;
    tblUsuarioACESSO12: TIBStringField;
    tblUsuarioACESSO13: TIBStringField;
    tblUsuarioACESSO14: TIBStringField;
    tblUsuarioACESSO15: TIBStringField;
    tblUsuarioACESSO16: TIBStringField;
    tblUsuarioACESSO17: TIBStringField;
    tblUsuarioACESSO18: TIBStringField;
    tblUsuarioACESSO19: TIBStringField;
    tblUsuarioACESSO20: TIBStringField;
    tblUsuarioACESSO21: TIBStringField;
    tblUsuarioACESSO22: TIBStringField;
    tblUsuarioACESSO23: TIBStringField;
    tblUsuarioACESSO24: TIBStringField;
    tblUsuarioACESSO25: TIBStringField;
    tblUsuarioACESSO26: TIBStringField;
    tblUsuarioACESSO27: TIBStringField;
    tblUsuarioACESSO28: TIBStringField;
    tblUsuarioACESSO29: TIBStringField;
    tblUsuarioACESSO30: TIBStringField;
    tblUsuarioACESSO31: TIBStringField;
    tblUsuarioACESSO32: TIBStringField;
    tblUsuarioACESSO33: TIBStringField;
    tblUsuarioACESSO34: TIBStringField;
    tblUsuarioACESSO35: TIBStringField;
    tblUsuarioACESSO36: TIBStringField;
    tblUsuarioACESSO37: TIBStringField;
    tblUsuarioACESSO38: TIBStringField;
    tblUsuarioACESSO39: TIBStringField;
    tblUsuarioACESSO40: TIBStringField;
    tblUsuarioACESSO41: TIBStringField;
    tblUsuarioACESSO42: TIBStringField;
    tblUsuarioACESSO43: TIBStringField;
    tblUsuarioACESSO44: TIBStringField;
    tblUsuarioACESSO45: TIBStringField;
    tblUsuarioACESSO46: TIBStringField;
    tblUsuarioACESSO47: TIBStringField;
    tblUsuarioACESSO48: TIBStringField;
    tblUsuarioACESSO49: TIBStringField;
    tblUsuarioACESSO50: TIBStringField;
    tblUsuarioACESSO51: TIBStringField;
    tblUsuarioACESSO52: TIBStringField;
    tblUsuarioACESSO53: TIBStringField;
    tblUsuarioACESSO54: TIBStringField;
    tblUsuarioACESSO55: TIBStringField;
    tblUsuarioACESSO56: TIBStringField;
    tblUsuarioACESSO57: TIBStringField;
    tblUsuarioACESSO58: TIBStringField;
    tblUsuarioACESSO59: TIBStringField;
    tblUsuarioACESSO60: TIBStringField;
    tblUsuarioACESSO61: TIBStringField;
    tblUsuarioACESSO62: TIBStringField;
    tblUsuarioACESSO63: TIBStringField;
    tblUsuarioACESSO64: TIBStringField;
    tblUsuarioACESSO65: TIBStringField;
    tblUsuarioACESSO66: TIBStringField;
    tblUsuarioACESSO67: TIBStringField;
    tblUsuarioACESSO68: TIBStringField;
    tblUsuarioACESSO69: TIBStringField;
    tblUsuarioACESSO70: TIBStringField;
    tblUsuarioACESSO71: TIBStringField;
    tblUsuarioACESSO72: TIBStringField;
    tblUsuarioACESSO73: TIBStringField;
    tblUsuarioACESSO74: TIBStringField;
    tblUsuarioACESSO75: TIBStringField;
    tblUsuarioACESSO76: TIBStringField;
    tblUsuarioACESSO77: TIBStringField;
    tblUsuarioACESSO78: TIBStringField;
    tblUsuarioACESSO79: TIBStringField;
    tblUsuarioACESSO80: TIBStringField;
    tblUsuarioACESSO81: TIBStringField;
    tblUsuarioACESSO82: TIBStringField;
    tblUsuarioACESSO83: TIBStringField;
    tblUsuarioACESSO84: TIBStringField;
    tblUsuarioACESSO85: TIBStringField;
    tblUsuarioACESSO86: TIBStringField;
    tblUsuarioACESSO87: TIBStringField;
    tblUsuarioACESSO88: TIBStringField;
    tblUsuarioACESSO89: TIBStringField;
    tblUsuarioACESSO90: TIBStringField;
    tblUsuarioACESSO91: TIBStringField;
    tblUsuarioACESSO92: TIBStringField;
    tblUsuarioACESSO93: TIBStringField;
    tblUsuarioACESSO94: TIBStringField;
    tblUsuarioACESSO95: TIBStringField;
    tblUsuarioACESSO96: TIBStringField;
    tblUsuarioACESSO97: TIBStringField;
    tblUsuarioACESSO98: TIBStringField;
    tblUsuarioACESSO99: TIBStringField;
    tblUsuarioACESSO100: TIBStringField;
    tblUsuarioACESSO101: TIBStringField;
    tblUsuarioACESSO102: TIBStringField;
    tblUsuarioACESSO103: TIBStringField;
    tblUsuarioACESSO104: TIBStringField;
    tblUsuarioACESSO105: TIBStringField;
    tblUsuarioACESSO106: TIBStringField;
    tblUsuarioACESSO107: TIBStringField;
    tblUsuarioACESSO108: TIBStringField;
    tblUsuarioACESSO109: TIBStringField;
    tblUsuarioACESSO110: TIBStringField;
    tblUsuarioACESSO111: TIBStringField;
    tblUsuarioACESSO112: TIBStringField;
    tblUsuarioACESSO113: TIBStringField;
    tblUsuarioACESSO114: TIBStringField;
    tblUsuarioACESSO115: TIBStringField;
    tblUsuarioACESSO116: TIBStringField;
    tblUsuarioACESSO117: TIBStringField;
    tblUsuarioACESSO118: TIBStringField;
    tblUsuarioACESSO119: TIBStringField;
    tblUsuarioACESSO120: TIBStringField;
    tblUsuarioACESSO121: TIBStringField;
    tblUsuarioACESSO122: TIBStringField;
    tblUsuarioACESSO123: TIBStringField;
    tblUsuarioACESSO124: TIBStringField;
    tblUsuarioACESSO125: TIBStringField;
    tblUsuarioACESSO126: TIBStringField;
    tblUsuarioACESSO127: TIBStringField;
    tblUsuarioACESSO128: TIBStringField;
    tblUsuarioACESSO129: TIBStringField;
    tblUsuarioACESSO130: TIBStringField;
    tblUsuarioACESSO131: TIBStringField;
    tblUsuarioACESSO132: TIBStringField;
    tblUsuarioACESSO133: TIBStringField;
    tblUsuarioACESSO134: TIBStringField;
    tblUsuarioACESSO135: TIBStringField;
    tblUsuarioACESSO136: TIBStringField;
    tblUsuarioACESSO137: TIBStringField;
    tblUsuarioACESSO138: TIBStringField;
    tblUsuarioACESSO139: TIBStringField;
    tblUsuarioACESSO140: TIBStringField;
    tblUsuarioACESSO141: TIBStringField;
    tblUsuarioACESSO142: TIBStringField;
    tblUsuarioACESSO143: TIBStringField;
    tblUsuarioACESSO144: TIBStringField;
    tblUsuarioACESSO145: TIBStringField;
    tblUsuarioACESSO146: TIBStringField;
    tblUsuarioACESSO147: TIBStringField;
    tblUsuarioACESSO148: TIBStringField;
    tblUsuarioACESSO149: TIBStringField;
    tblUsuarioACESSO150: TIBStringField;
    tblUsuarioACESSO151: TIBStringField;
    tblUsuarioACESSO152: TIBStringField;
    tblUsuarioACESSO153: TIBStringField;
    tblUsuarioACESSO154: TIBStringField;
    tblUsuarioACESSO155: TIBStringField;
    tblUsuarioACESSO156: TIBStringField;
    tblUsuarioACESSO157: TIBStringField;
    tblUsuarioACESSO158: TIBStringField;
    tblUsuarioACESSO159: TIBStringField;
    tblUsuarioACESSO160: TIBStringField;
    DataSource1: TDataSource;
    LabelSenha: TLabel;
    EditSenha: TEdit;
    BtnConfirma: TBitBtn;
    LabelLogin: TLabel;
    DBEditLogin: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    Label1: TLabel;
    EditSenha1: TEdit;
    tblUsuarioTROCAR_SENHA: TIBStringField;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSenha: TBoxSenha;

implementation

uses Empresas, Biblioteca;

{$R *.dfm}

procedure TBoxSenha.BtnConfirmaClick(Sender: TObject);
begin
  if EditSenha.Text <> EditSenha1.Text then
   showmessage('A confirmação de senha é diferente da senha.'+#13+'Digite novamente.')
  else
  with tblUsuario do
  begin
    Edit;
    FieldByName('Senha').AsString := Crypto(EditSenha.Text);
    FieldByName('Trocar_Senha').AsString := 'F';
  //  showmessage(fieldByName('senha').AsString);
//    showmessage(decrypto(fieldByName('senha').AsString));
    Post;
    Showmessage('Senha alterada.');
    Application.Terminate;
  end;
end;

procedure TBoxSenha.FormShow(Sender: TObject);
begin
  with tblUsuario do
  begin
    Close;
    ParamByName('id').AsInteger := BoxEmpresas.idUsuarioLogado;
    Open;
    EditSenha.Text := DeCrypto(tblUsuario.FieldByName('Senha').AsString);
  end;
end;

end.
