unit CadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, AppEvnts, IBCustomDataSet, ToolWin, System.ImageList,
  System.Actions;

type
  TBoxUsuarios = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    Editar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    Cancelar: TAction;
    Excluir: TAction;
    Procurar: TAction;
    StatusBar1: TStatusBar;
    Novo: TAction;
    Anterior: TAction;
    Proximo: TAction;
    Ultimo: TAction;
    Primeiro: TAction;
    DataSource1: TDataSource;
    DBCheckBoxAdministrador: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
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
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnProcurar: TBitBtn;
    BtnPrimeiro: TBitBtn;
    BtnAnterior: TBitBtn;
    BtnProximo: TBitBtn;
    BtnUltimo: TBitBtn;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    Panel2: TPanel;
    LabelSequencia: TLabel;
    DBText1: TDBText;
    DBEditUsuario: TDBEdit;
    LabelUsuario: TLabel;
    LabelLogin: TLabel;
    LabelSenha: TLabel;
    EditSenha: TEdit;
    DBEditLogin: TDBEdit;
    Panel3: TPanel;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox110: TDBCheckBox;
    DBCheckBox111: TDBCheckBox;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox113: TDBCheckBox;
    DBCheckBox114: TDBCheckBox;
    DBCheckBox115: TDBCheckBox;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox118: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    DBCheckBox120: TDBCheckBox;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox123: TDBCheckBox;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure EditarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ProcurarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AnteriorExecute(Sender: TObject);
    procedure ProximoExecute(Sender: TObject);
    procedure UltimoExecute(Sender: TObject);
    procedure PrimeiroExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditSenhaExit(Sender: TObject);
    procedure DoAfterClose;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditSenhaExit(Sender: TObject);
    procedure tblUsuarioAfterCancel(DataSet: TDataSet);
    procedure tblUsuarioAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnableDisableButtons (Value: Boolean);
    procedure EnableDisableControls (Value: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;

  end;

var
  BoxUsuarios: TBoxUsuarios;
  Retorno : String;

implementation

uses

   FDB, BIBLIOTECA, PesquisaGeral;

{$R *.dfm}

function TBoxUsuarios.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
{  inherited;}
  Result := True; {: assume que estão todos preenchidos}
  for i := 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[i].Required then
      if (DtSrc.DataSet.Fields[i].IsNull) Or (DtSrc.DataSet.Fields[i].AsString = '') then
      begin
        MessageDlg('Preencha o campo " '+ DtSrc.DataSet.Fields[i].DisplayLabel + '"', mtWarning,[mbOk], 0);
        Result := False;
        DtSrc.DataSet.Fields[i].FocusControl; {: coloca o foco no controle}
        Break;
      end;
end;

procedure TBoxUsuarios.DoAfterClose;
begin
  DataSource1.Dataset.Close;
end;

procedure TBoxUsuarios.FormActivate(Sender: TObject);
begin
  EnableDisableButtons(True);
end;

procedure TBoxUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxUsuarios := nil;
end;

procedure TBoxUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  EnableDisableButtons(True);
  if Key = #27 then
   begin
     DoAfterClose;
     Close;
   end;
   {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
end;

procedure TBoxUsuarios.DBEditSenhaExit(Sender: TObject);
begin
//  tblUsuario.FieldByName('Senha').AsString := Crypto(DBEditSenha.Text);
 // DBEditSenha.Text := Crypto(DBEditSenha.Text);
end;

procedure TBoxUsuarios.DBEditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  EnableDisableButtons(True);
  if Key = #27 then
   begin
     DoAfterClose;
     Close;
   end;
 if Key = #13 then
   begin
//     DBEditSenha.Text := Crypto(DBEditSenha.Text);
     BtnSalvar.SetFocus;
   end;
end;

procedure TBoxUsuarios.FormShow(Sender: TObject);
begin
  DataSource1.Dataset.Open;
  EnableDisableButtons(True);
end;

procedure TBoxUsuarios.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
  EnableDisableControls(True);
  TEdit(DBEditUsuario).SetFocus;
  PermissoesForm;
  Restricoes;

end;

procedure TBoxUsuarios.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxUsuarios.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
    DataSource1.Dataset.Open;
   begin
     Retorno := Biblioteca.PesquisaGeral('Usuário','Usuarios',
      ['Usuario','Id_Usuarios','Login'],
      ['Usuário:','Sequência:','Login:',''],
      'Descricao','Id_Usuarios',Fdb1.SQLConnection1,'','','');
     with tblUsuario do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
//        DBText1.Text := tblUsuario.FieldByName('Id_Usuario').Text;
     end;
     EnableDisableControls(True);
     BtnSalvar.Enabled := False;
     Salvar.Enabled := False;
//     EditSequencia.Enabled := False;
     BtnEditar.SetFocus;
   end;
end;

procedure TBoxUsuarios.Restricoes;
begin
  {: implementado nos forms descendentes }
end;


procedure TBoxUsuarios.EnableDisableControls(Value: Boolean);
var
  i : integer;
begin
  inherited;
  {: faz um laço em todos os componentes}
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TCustomEdit) then
       (Components[i] as TCustomEdit).Enabled := Value;
    if (Components[i] is TBitBtn) then
       (Components[i] as TBitBtn).Enabled := Value;
    if (Components[i] is TDBRadioGroup) then
       (Components[i] as TDBRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  BtnNovo.Enabled := True;
  BtnProcurar.Enabled := True;
  BtnEditar.Enabled := True;
  Novo.Enabled := True;
  Procurar.Enabled := True;
  Editar.Enabled := True;
end;

procedure TBoxUsuarios.SalvarExecute(Sender: TObject);
begin
  {: salvo as dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    DataSource1.DataSet.Post;
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
  end;
end;

procedure TBoxUsuarios.tblUsuarioAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxUsuarios.tblUsuarioAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxUsuarios.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSource1.DataSet.Active) and (DataSource1.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      DataSource1.DataSet.Delete;
  end;
  EnableDisableControls(True);
end;

procedure TBoxUsuarios.UltimoExecute(Sender: TObject);
begin
  DataSource1.DataSet.Last;
  Ultimo.Enabled := False;
  Proximo.Enabled := False;
  Primeiro.Enabled := True;
  Anterior.Enabled := True;
end;

procedure TBoxUsuarios.ProximoExecute(Sender: TObject);
begin
   DataSource1.DataSet.Next;
   Primeiro.Enabled := True;
   Anterior.Enabled := True;
   if DataSource1.DataSet.Eof then
     begin
       Proximo.Enabled := False;
       Ultimo.Enabled := False;
     end;
end;

procedure TBoxUsuarios.PrimeiroExecute(Sender: TObject);
begin
  Datasource1.Dataset.First;
  Ultimo.Enabled := True;
  Proximo.Enabled := True;
  Primeiro.Enabled := False;
  Anterior.Enabled := False;
end;

procedure TBoxUsuarios.AnteriorExecute(Sender: TObject);
begin
   DataSource1.DataSet.Prior;
   Ultimo.Enabled := True;
   Proximo.Enabled := True;
   if DataSource1.DataSet.Bof then
     begin
       Primeiro.Enabled := False;
       Anterior.Enabled := False;
     end;
end;

procedure TBoxUsuarios.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  DataSource1.DataSet.Cancel;
  EnableDisableControls(True);
end;

procedure TBoxUsuarios.EditSenhaExit(Sender: TObject);
begin
  tblUsuario.FieldByName('Senha').AsString := Crypto(EditSenha.Text);
//  EditSenha.Text := Crypto(EditSenha.Text);
end;

procedure TBoxUsuarios.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSource1.DataSet.IsEmpty then
    EnableDisableControls(True);
    PermissoesForm;
    Restricoes;
    tblUsuario.Edit;
    EditSenha.Text := DeCrypto(tblUsuario.FieldByName('Senha').AsString);
    TEdit(DBEditUsuario).SetFocus;
end;

procedure TBoxUsuarios.EnableDisableButtons(Value: Boolean);
begin
  { Habilita/desabilita os botões }
  Novo.Enabled := Value;
  Excluir.Enabled := Value;
  Salvar.Enabled := Value;
  Procurar.Enabled := Value;
  Cancelar.Enabled := Value;
  Proximo.Enabled := True;
  Ultimo.Enabled := True;
  Primeiro.Enabled := True;
  Anterior.Enabled := True;
  if DataSource1.DataSet.Bof then
    begin
      Primeiro.Enabled := False;
      Anterior.Enabled := False;
    end;

  if DataSource1.DataSet.Eof then
    begin
      Proximo.Enabled := False;
      Ultimo.Enabled := False;
    end;
end;

end.
