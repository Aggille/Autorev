unit CadastroTMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExStdCtrls,
  JvDBCombobox, JvDBCheckBox, JvExControls, JvOutlookBar, JvValidators,
  JvComponentBase, JvErrorIndicator, WideStrings, SqlExpr, FMTBcd, Provider,
  DBClient, JvDBLookup, System.ImageList, System.Actions;

type
  TBoxTMO = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    Editar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    Cancelar: TAction;
    Excluir: TAction;
    Procurar: TAction;
    Novo: TAction;
    DataSourceTMO: TDataSource;
    Consultar: TAction;
    JvStatusBar1: TJvStatusBar;
    EditSequencia: TMaskEdit;
    JvDBMaskEditDescricao: TJvDBMaskEdit;
    tbltMO: TIBDataSet;
    IBTransaction1: TIBTransaction;
    JvDBMaskEditCodigo: TJvDBMaskEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    tbltMOID_TMO: TIntegerField;
    tbltMOCODIGO: TIBStringField;
    tbltMODESCRICAO: TIBStringField;
    tbltMOTEMPO: TIBBCDField;
    tbltMOTEMPO_GAR: TIBBCDField;
    tbltMOREV_GRAT: TIBStringField;
    JvDBMaskEditTempoGarantia: TJvDBMaskEdit;
    JvDBMaskEditTempo: TJvDBMaskEdit;
    tblCategoria: TIBDataSet;
    DataSourceCategoria: TDataSource;
    tblCategoriaID_CATEGORIA: TIntegerField;
    tblCategoriaDESCRICAO: TIBStringField;
    tblCategoriaPRECO: TIBBCDField;
    tblCategoriaPRECO_GAR: TIBBCDField;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    tbltMOID_CATEGORIA: TIntegerField;
    Categoria1: TDBLookupComboBox;
    Revisao: TComboBox;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure EditarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ProcurarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure AbrirDs;
    procedure FecharDs;
    procedure ConsultarExecute(Sender: TObject);
    procedure EditSequenciaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbltMOAfterCancel(DataSet: TDataSet);
    procedure tbltMOAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RevisaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls (Value: Boolean; Value1: Boolean;
              Value2: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
    procedure LimpaTela; virtual;
//    procedure PreencheCategoria; virtual;

  end;

var
  BoxTMO: TBoxTMO;
  retorno : String; //integer;

implementation

uses

   BIBLIOTECA, FDB, pesquisaGeral;

{$R *.dfm}

function TBoxTMO.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
{  inherited;}
  Result := True; {: assume que estão todos preenchidos}
  if Categoria1.Text = '' then
    begin
      MessageDlg('Selecione a categoria.', mtWarning,[mbOk], 0);
      Result := False;
      Categoria1.SetFocus; {: coloca o foco no controle}
    end;
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

procedure TBoxTMO.FormShow(Sender: TObject);
begin
  AbrirDs;
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
//  PreencheCategoria;
end;

procedure TBOXTMO.AbrirDs;
begin
  DataSourceTMO.Dataset.Open;
  DataSourceCategoria.Dataset.Open;
end;

procedure TBoxTMO.FecharDs;
begin
  DataSourceTMO.Dataset.Close;
  DataSourceCategoria.Dataset.Close;
end;

{procedure TboxTmo.PreencheCategoria;
var
  i : integer;
begin
  DataSourceCategoria.Dataset.Open;
  ComboBoxCategoria.Items.Text := '';
  With tblCategoria do
    begin
      Open;
      Last;
      First;
      for i := 0 to RecordCount do
        begin
          ComboBoxCategoria.Items.Text := ComboBoxCategoria.Items.Text +
            tblCategoria.FieldByName('Codigo').Text +
            '-' + tblCategoria.FieldByName('Descricao').Text;;
          tblCategoria.Next;
        end;
      Close;
      ComboBoxCategoria.ItemIndex := -1;
    end;
end;
 }
procedure TBoxTMO.NovoExecute(Sender: TObject);
begin
  {: novo registro}
//  Preenchecategoria;
  DataSourceTMO.DataSet.Open;
  DataSourceTMO.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  Excluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  EditSequencia.Enabled := False;
  EditSequencia.Text := '';
  JVDBMaskEditCodigo.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxTMO.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := False;
   EditSequencia.Enabled := True;
   EditSequencia.Setfocus;
end;

procedure TBoxTMO.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSourceTMO.DataSet.IsEmpty then
   begin
    DataSourceTMO.Dataset.Open;
    DataSourceTMO.Dataset.Edit;
    if tblTMO.FieldByName('REV_GRAT').AsString = 'T' then
      Revisao.ItemIndex := 0
    else
      Revisao.ItemIndex := 1;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    JVDBMaskEditCodigo.SetFocus;
   end;
end;

procedure TBoxTMO.EditSequenciaExit(Sender: TObject);
var
   id : Integer;
begin
    id := StrToInt(EditSequencia.Text);
    EnableDisableControls(False, False, True);
    BtnSalvar.Enabled := False;
    Salvar.Enabled := False;
    BtnEditar.SetFocus;
    begin
      with tblTmo do
      begin
       if id<>0 then
         begin
          parambyname( 'id' ).AsInteger := id;
          Open;
          if recordcount = 0  then
            begin
              case MessageDlg('Registro não localizado. Deseja cadastrar um novo?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
                mrYes:
                begin
                  BtnNovo.Click;
                end;
                mrNo:
                begin
                  EnableDisableControls(False, True, False);
                  BtnSalvar.Enabled := False;
                  Salvar.Enabled := False;
                  BtnConsultar.SetFocus;
                  DataSourceTMO.DataSet.Cancel;
                  Close;
                end;
              end;
            end;
         end;
      end;
   end;
end;

procedure TBoxTMO.SalvarExecute(Sender: TObject);
begin
  {: salvo os dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSourceTMO) and (DataSourceTMO.State in [dsEdit, dsInsert]) then
  begin
    DataSourceTMO.DataSet.Post;
    EnableDisableControls(False, True, False);
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    Limpatela;
    BtnConsultar.Setfocus;
  end;
end;

procedure TBoxTMO.tbltMOAfterCancel(DataSet: TDataSet);
begin
   IBTransaction1.RollbackRetaining;
end;

procedure TBoxTMO.tbltMOAfterPost(DataSet: TDataSet);
begin
    IBTransaction1.CommitRetaining;
end;

procedure TBoxTMO.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSourceTMO.DataSet.Active) and (DataSourceTMO.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      DataSourceTMO.DataSet.Delete;
      EnableDisableControls(False, True, False);
      LimpaTela;
     end;
  end;
end;

procedure TBoxTMO.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSourceTMO.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSourceTMO.DataSet.Cancel;
    end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('tempo de mão-de-obra','Tmo',
      ['Codigo','Descricao','Id_Tmo'],
      ['Código:','Descrição:','Sequência:'],
      'Descricao','Id_Tmo',Fdb1.SQLConnection1,'','','');
     with tblTmo do
     begin
        Close;
        Parambyname('id').AsInteger := StrtoInt(Retorno);
        Open;
        EditSequencia.Text := tblTmo.FieldByName('Id_Tmo').Text;
     end;
     EnableDisableControls(False, False, True);
     BtnSalvar.Enabled := False;
     Salvar.Enabled := False;
     EditSequencia.Enabled := False;
     BtnEditar.SetFocus;
   end;
end;

procedure TBoxTMO.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxTMO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxTMO := nil;
end;

procedure TBoxTMO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourceTMO.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxTMO.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    Close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxTMO.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
      Close;
    end;
  if key = #13 then
  begin
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxTMO.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxTMO.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxTMO.RevisaoExit(Sender: TObject);
begin
 if Revisao.ItemIndex = 0 then {Paga pela fábrica}{T}
    tblTMO.FieldByName('REV_GRAT').AsString := 'T'
 else
    tblTMO.FieldByName('REV_GRAT').AsString := 'F';
end;

procedure TBoxTMO.LimpaTela;
begin
  EditSequencia.Clear;
  DataSourceTMO.Dataset.Close;
end;

procedure TBoxTMO.EnableDisableControls(Value: Boolean; Value1: Boolean;
            Value2: Boolean);
var
  i : integer;
begin
  {: faz um laço em todos os componentes}
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TJVDBMaskEdit) then
       (Components[i] as TJVDBMaskEdit).Enabled:= Value;
    if (Components[i] is TCustomEdit) then
       (Components[i] as TCustomEdit).Enabled := Value;
    if (Components[i] is TDBRadioGroup) then
       (Components[i] as TDBRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
//   JVDBMaskEditCodigo.Enabled:= Value;
//   JVDBMaskEditDescricao.Enabled:= Value;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso8.AsString = 'T') then
    begin
      BtnNovo.Enabled := Value1;
      BtnEditar.Enabled := Value2;
      BtnSalvar.Enabled := Value2;
      BtnCancelar.Enabled := Value2;
      Novo.Enabled := Value1;
      Editar.Enabled := Value2;
      Salvar.Enabled := Value2;
      Cancelar.Enabled := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
      Excluir.Enabled := Value2;
      BtnExcluir.Enabled := Value2;
   end;
  BtnProcurar.Enabled := Value1;
  BtnConsultar.Enabled := Value1;
  Procurar.Enabled := Value1;
  Consultar.Enabled := Value1;
  EditSequencia.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  if value2 then
    BtnSalvar.Setfocus;
end;

procedure TBoxTMO.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os botões }
  BtnNovo.Enabled := Value;
  BtnEditar.Enabled := Value1;
  BtnExcluir.Enabled := Value1;
  BtnCancelar.Enabled := Value1;
  BtnSalvar.Enabled := Value1;
  Novo.Enabled := Value;
  Editar.Enabled := Value1;
  Excluir.Enabled := Value1;
  Cancelar.Enabled := Value1;
  Salvar.Enabled := Value1;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso8.AsString <> 'T') then
    begin
      BtnNovo.Enabled := False;
      BtnEditar.Enabled := False;

      BtnCancelar.Enabled := False;
      BtnSalvar.Enabled := False;
      Novo.Enabled := False;
      Editar.Enabled := False;

      Cancelar.Enabled := False;
      Salvar.Enabled := False;
    end;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') then    
    begin
      Excluir.Enabled := False;
      BtnExcluir.Enabled := False;
    end;
  BtnProcurar.Enabled := Value;
  BtnConsultar.Enabled := Value;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
end;

end.
