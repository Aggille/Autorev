unit CadastroCardapio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExStdCtrls,
  JvDBCombobox, JvDBCheckBox, JvExControls, JvOutlookBar, JvValidators,
  JvComponentBase, JvErrorIndicator, WideStrings, SqlExpr, FMTBcd, Provider,
  DBClient, System.ImageList, System.Actions;

type
  TBoxAtendimentoCardapio = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    Editar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    Cancelar: TAction;
    Excluir: TAction;
    Procurar: TAction;
    Novo: TAction;
    DataSource1: TDataSource;
    Consultar: TAction;
    JvStatusBar1: TJvStatusBar;
    EditSequencia: TMaskEdit;
    JvDBMaskEditDescricao: TJvDBMaskEdit;
    tblCardapio: TIBDataSet;
    JvDBMaskEditCodigo: TJvDBMaskEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    JvDBMaskEditTempo: TJvDBMaskEdit;
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
    JvDBMaskEdit3: TJvDBMaskEdit;
    JvDBMaskEdit4: TJvDBMaskEdit;
    JvDBMaskEdit5: TJvDBMaskEdit;
    JvDBMaskEdit6: TJvDBMaskEdit;
    Label8: TLabel;
    Label10: TLabel;
    tblCardapioID_ATENDIMENTO_CARDAPIO: TIntegerField;
    tblCardapioID_REVISAO: TIntegerField;
    tblCardapioMODELO: TIBStringField;
    tblCardapioREVISAO: TIBStringField;
    tblCardapioID_PECAS: TIntegerField;
    tblCardapioQUANTIDADE: TIntegerField;
    tblCardapioPRECO: TIBBCDField;
    tblCardapioPRECO_TABELA: TIBBCDField;
    JvDBMaskEdit1: TJvDBMaskEdit;
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
    procedure DoAfterClose;
    procedure ConsultarExecute(Sender: TObject);
    procedure EditSequenciaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCardapioAfterCancel(DataSet: TDataSet);
    procedure tblCardapioAfterPost(DataSet: TDataSet);
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

  end;

var
  BoxAtendimentoCardapio: TBoxAtendimentoCardapio;
  Retorno : String;
  
implementation

uses

   BIBLIOTECA, FDB, pesquisaGeral;

{$R *.dfm}

function TBoxAtendimentoCardapio.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que est�o em branco no cadastro}
begin
{  inherited;}
  Result := True; {: assume que est�o todos preenchidos}
//  if ComboBoxCategoria.Text = '' then
//    begin
//      MessageDlg('Selecione a categoria.', mtWarning,[mbOk], 0);
//      Result := False;
//      ComboBoxCategoria.SetFocus; {: coloca o foco no controle}
//    end;
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

procedure TBoxAtendimentoCardapio.FormShow(Sender: TObject);
begin
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
end;

procedure TBoxAtendimentoCardapio.DoAfterClose;
begin
  DataSource1.Dataset.Close;
  Close;
end;

procedure TBoxAtendimentoCardapio.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
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

//  DBCheckBoxRevGrat := False;
end;

procedure TBoxAtendimentoCardapio.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := False;
   EditSequencia.Enabled := True;
   EditSequencia.Setfocus;
end;

procedure TBoxAtendimentoCardapio.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permiss�es/restri��es }
  if not DataSource1.DataSet.IsEmpty then
   begin
    DataSource1.Dataset.Open;
    DataSource1.Dataset.Edit;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    JVDBMaskEditCodigo.SetFocus;
   end;
end;

procedure TBoxAtendimentoCardapio.EditSequenciaExit(Sender: TObject);
var
   id : Integer;
begin
    id := StrToInt(EditSequencia.Text);
    EnableDisableControls(False, False, True);
    BtnSalvar.Enabled := False;
    Salvar.Enabled := False;
    BtnEditar.SetFocus;
    begin
      with tblCardapio do
      begin
       if id<>0 then
         begin
          parambyname( 'id' ).AsInteger := id;
          Open;
          if recordcount = 0  then
            begin
              case MessageDlg('Registro n�o localizado. Deseja cadastrar um novo?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
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
                  DataSource1.DataSet.Cancel;
                  Close;
                end;
              end;
            end;
         end;
      end;
   end;
end;

procedure TBoxAtendimentoCardapio.SalvarExecute(Sender: TObject);
begin
  {: salvo os dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    DataSource1.DataSet.Post;
    EnableDisableControls(False, True, False);
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    Limpatela;
    BtnConsultar.Setfocus;
  end;
end;

procedure TBoxAtendimentoCardapio.tblCardapioAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxAtendimentoCardapio.tblCardapioAfterPost(DataSet: TDataSet);
begin
    FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxAtendimentoCardapio.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSource1.DataSet.Active) and (DataSource1.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      DataSource1.DataSet.Delete;
      EnableDisableControls(False, True, False);
      LimpaTela;
     end;
  end;
end;

procedure TBoxAtendimentoCardapio.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edi��o ou inser��o}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as altera��es realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('pe�as da f�brica','PECYAM',
      ['Codigo','Id_Pecyam','Descricao'],
      ['C�digo:','Sequ�ncia:','Descri��o:',''],
      'Descricao','Id_Pecyam',Fdb1.SQLConnection1,'','','');
     with tblCardapio do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        EditSequencia.Text := tblCardapio.FieldByName('Id_Pecyam').Text;
     end;
     EnableDisableControls(False, False, True);
     BtnSalvar.Enabled := False;
     Salvar.Enabled := False;
     EditSequencia.Enabled := False;
     BtnEditar.SetFocus;
   end;
end;

procedure TBoxAtendimentoCardapio.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxAtendimentoCardapio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxAtendimentoCardapio := nil;
end;

procedure TBoxAtendimentoCardapio.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxAtendimentoCardapio.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
      DoAfterClose;
    end;
  if key = #13 then
  begin
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxAtendimentoCardapio.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxAtendimentoCardapio.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxAtendimentoCardapio.LimpaTela;
begin
  EditSequencia.Clear;
  DataSource1.Dataset.Close;
end;

procedure TBoxAtendimentoCardapio.EnableDisableControls(Value: Boolean; Value1: Boolean;
            Value2: Boolean);
var
  i : integer;
begin
  {: faz um la�o em todos os componentes}
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

procedure TBoxAtendimentoCardapio.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os bot�es }
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
