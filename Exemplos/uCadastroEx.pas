unit uCadastroEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, AppEvnts, uLocalizarEx, ImgList,
  DB, DBActns, ActnList, Menus, ufraImage, uDBDateTimePicker,
  SqlExpr, DBCtrls, FMTBcd;

type
  TfrmCadastroEx = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Relatrio1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ActionList1: TActionList;
    Excluir: TAction;
    Localizar: TAction;
    DataSource1: TDataSource;
    LocalizarEx: TLocalizarEx;
    ApplicationEvents1: TApplicationEvents;
    btnLocalizar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnNovo: TBitBtn;
    StatusBar1: TStatusBar;
    Relatorio: TAction;
    Novo: TAction;
    Salvar: TAction;
    Cancelar: TAction;
    Alterar: TAction;
    btnAlterar: TBitBtn;
    ImageList1: TImageList;
    procedure TabSheet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnNovoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure LocalizarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sair1Click(Sender: TObject);
    procedure LocalizarExAfterSearch(Sender: TObject;
      AModalResult: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure NovoExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure RelatorioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    FFile: string;
    FPagina: string;
    function VerificaCampo: Boolean;
    procedure EnterEx (Sender: TObject);
    procedure ExitEx (Sender: TObject);
    procedure EnableDisableControls (Value: Boolean);
    procedure EnableDisableButtons (Value: Boolean);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure MudaFoco;
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
    procedure GetDataSources; virtual;
  end;

var
  frmCadastroEx: TfrmCadastroEx;

implementation

uses uLibrary;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroEx.EnableDisableButtons(Value: Boolean);
begin
  { Habilita/desabilita os botões }
  Novo.Enabled := Value;
  Excluir.Enabled := Value;
  Salvar.Enabled := Value;
  Localizar.Enabled := Value;
  Cancelar.Enabled := Value;
end;

procedure TfrmCadastroEx.EnableDisableControls(Value: Boolean);
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
    if (Components[i] is TfraImage) then
    begin
       (Components[i] as TfraImage).ButtonInsertEnabled :=Value;
       (Components[i] as TfraImage).ButtonDeleteEnabled :=Value;
    end;
    if (Components[i] is TDBDateTimePicker) then
       (Components[i] as TDBDateTimePicker).Enabled := Value;
    if (Components[i] is TDBRadioGroup) then
       (Components[i] as TDBRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  btnNovo.Enabled := True;
  btnLocalizar.Enabled := True;
  btnAlterar.Enabled := True;
end;

function TfrmCadastroEx.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
  inherited;
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

procedure TfrmCadastroEx.TabSheet1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  {: limpa a StatusBar}
  StatusBar1.Panels[0].Text := '';
end;

procedure TfrmCadastroEx.btnNovoEnter(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := (Sender as TControl).Hint;
end;

procedure TfrmCadastroEx.FormCreate(Sender: TObject);
begin
  MudaFoco;
end;

procedure TfrmCadastroEx.SalvarExecute(Sender: TObject);
begin
  {: salvo as dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    DataSource1.DataSet.Post;
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmCadastroEx.LocalizarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: btnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
    LocalizarEx.Execute;
end;

procedure TfrmCadastroEx.EnterEx(Sender: TObject);
begin
  {: altera a cor do componente quando receber o foco }
  if (Sender is TEdit) then
    (Sender as TEdit).Color := clInfoBk;
  if (Sender is TMemo) then
    (Sender as TMemo).Color := clInfoBk;
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).Color := clInfoBk;
  if (Sender is TDBMemo) then
    (Sender as TDBMemo).Color := clInfoBk;
  StatusBar1.Panels[0].Text := (Sender as TControl).Hint;
end;

procedure TfrmCadastroEx.ExitEx(Sender: TObject);
begin
  {: altera a cor do componente quando sair o foco }
  if (Sender is TEdit) then
    (Sender as TEdit).Color := clWindow;
  if (Sender is TMemo) then
    (Sender as TMemo).Color := clWindow;
  {: altera a cor do componente quando sair o foco }
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).Color := clWindow;
  if (Sender is TDBMemo) then
    (Sender as TDBMemo).Color := clWindow;
end;

function TfrmCadastroEx.VerificaCampo: Boolean;
var
  i: integer;
{: função para verificar os Edits obrigatórios}
begin
  Result := False;
  for i := 0 to componentCount -1 do
    if Components[i] is TEdit then
      {: se o componente for um Edit e estiver em branco}
      if (TEdit(Components[i]).AutoSize) And
	       (TEdit(Components[i]).Text = '') then
      begin
        {: coloca o foco no Edit e mostra uma msg}
         Result := True;
	       TEdit(Components[i]).SetFocus;
         MessageDlg(MSG_CAMPO_OBR, mtWarning, [mbOk], 0);
	       Break;
      end;
end;

procedure TfrmCadastroEx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TfrmCadastroEx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_Escape then
    Close;
end;

procedure TfrmCadastroEx.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
{: limpa a StatusBar}
  StatusBar1.Panels[0].Text := '';
end;

procedure TfrmCadastroEx.MudaFoco;
var
  i: integer;
begin
  {: muda o foco dos componentes do formulário }
  for i := 0 to ComponentCount -1 do
  begin
    {: se for um Edit }
    if (Components[i] is TEdit) then
    begin
       (Components[i] as TEdit).OnExit := ExitEx;
       (Components[i] as TEdit).OnEnter := EnterEx;
    end;
    {: se for um Memo }
    if (Components[i] is TMemo) then
    begin
       (Components[i] as TMemo).OnExit := ExitEx;
       (Components[i] as TMemo).OnEnter := EnterEx;
    end;
        {: se for um DBEdit }
    if (Components[i] is TDBEdit) then
    begin
       (Components[i] as TDBEdit).OnExit := ExitEx;
       (Components[i] as TDBEdit).OnEnter := EnterEx;
    end;
    {: se for um DBMemo }
    if (Components[i] is TDBMemo) then
    begin
       (Components[i] as TDBMemo).OnExit := ExitEx;
       (Components[i] as TDBMemo).OnEnter := EnterEx;
    end;
  end;
end;

procedure TfrmCadastroEx.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroEx.LocalizarExAfterSearch(Sender: TObject;
  AModalResult: Integer);
begin
  if AModalResult = mrOK then
  begin
    EnableDisableControls(True);
    PermissoesForm;
    Restricoes;
  end;
end;

procedure TfrmCadastroEx.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit,dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro ?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
      mrYes: begin
          {: verifica se tem permissão para salvar}
          if not btnSalvar.Enabled then
          begin
            MessageDlg(MSG_PERMISSOES, mtWarning, [mbOk], 0);
            CanClose := False;
          end
          else
          begin
            btnSalvar.Click;
            CanClose := True;
          end;
             end;
      mrNo:  begin
               DataSource1.DataSet.Cancel;
               CanClose := True;
             end;
      mrCancel: CanClose := False;
    end;
end;

procedure TfrmCadastroEx.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TfrmCadastroEx.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
  EnableDisableControls(True);
  PermissoesForm;
  Restricoes;
end;

procedure TfrmCadastroEx.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSource1.DataSet.Active) and (DataSource1.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      DataSource1.DataSet.Delete;
  end;
  EnableDisableControls(False);
end;

procedure TfrmCadastroEx.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  DataSource1.DataSet.Cancel;
  EnableDisableControls(False);
end;

procedure TfrmCadastroEx.FormShow(Sender: TObject);
begin
  {: habilita/desabilita os componentes e verifica permissões/restrições }
  GetDataSources;
  EnableDisableControls(False);
  btnAlterar.Enabled := True;
  PermissoesForm;
  Restricoes;
end;
{Excluir.Enabled := (not DataSource1.DataSet.IsEmpty) Or
 (DataSource1.DataSet.RecordCount <=0);}
procedure TfrmCadastroEx.AlterarExecute(Sender: TObject);
begin
  {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSource1.DataSet.IsEmpty then
    EnableDisableControls(True);
  PermissoesForm;
  Restricoes;
end;

procedure TfrmCadastroEx.RelatorioExecute(Sender: TObject);
begin
  {: implementado em cada form, descendente }
end;

procedure TfrmCadastroEx.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TfrmCadastroEx.GetDataSources;
begin
  {: para preencher o DataSet dos DataSources e componentes Localiza }
end;
end.


