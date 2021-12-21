unit CadastroTMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, AppEvnts, IBDatabase, IBCustomDataSet;

type
  TBoxTMO = class(TForm)
    Panel1: TPanel;
    BtnNovo: TBitBtn;
    ActionList1: TActionList;
    Editar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    Cancelar: TAction;
    Excluir: TAction;
    BtnCancelar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnProcurar: TBitBtn;
    Procurar: TAction;
    StatusBar1: TStatusBar;
    Novo: TAction;
    BtnAnterior: TBitBtn;
    Anterior: TAction;
    BtnPrimeiro: TBitBtn;
    BtnProximo: TBitBtn;
    BtnUltimo: TBitBtn;
    Proximo: TAction;
    Ultimo: TAction;
    Primeiro: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DataSource1: TDataSource;
    DBEditCodigo: TDBEdit;
    DBEditDescricao: TDBEdit;
    DBEditCategoria: TDBEdit;
    DBEditTempo: TDBEdit;
    DBEditTempoGarantia: TDBEdit;
    DBTextID_TMO: TDBText;
    Label7: TLabel;
    DBCheckBoxRevGrat: TDBCheckBox;
    tblTmo: TIBDataSet;
    trnTmo: TIBTransaction;
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
    procedure Timer1Timer(Sender: TObject);
    procedure DoAfterClose;
    procedure DBCheckBoxRevGratKeyPress(Sender: TObject; var Key: Char);
    procedure tblTmoAfterPost(DataSet: TDataSet);
    procedure tblTmoAfterCancel(DataSet: TDataSet);
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
  BoxTMO: TBoxTMO;

implementation

uses

   FDB, BIBLIOTECA, PESQUISATMO, Menu;

{$R *.dfm}

function TBoxTMO.FieldsWrithe(DtSrc: TDataSource): Boolean;
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

procedure TBoxTMO.DoAfterClose;
begin
  DataSource1.Dataset.Close;
end;

procedure TBoxTMO.FormActivate(Sender: TObject);
begin
  EnableDisableButtons(True);
end;

procedure TBoxTMO.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  EnableDisableButtons(True);
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
  end;
end;

procedure TBoxTMO.DBCheckBoxRevGratKeyPress(Sender: TObject; var Key: Char);
begin
  {: se apertou ESC, fecha janela}
  EnableDisableButtons(True);
  if Key = #27 then
   begin
    DoAfterClose;
    BoxTMO.Free;
    Close;
   end;
  if Key = #13 then
    BtnSalvar.SetFocus;
end;

procedure TBoxTMO.FormShow(Sender: TObject);
var
id:Integer;
begin
//  DataSource1.Dataset.Open;
   id := strtoint( inputbox( 'Código', 'digite' , '0' ) );
   with tblTmo do
   begin
     parambyname( 'id' ).asInteger := id;
     open;
     if recordcount = 0  then showmessage( 'Não cadastrado' );
   end;
  EnableDisableButtons(True);
end;

procedure TBoxTMO.NovoExecute(Sender: TObject);
begin
  {: novo registro}
   DataSource1.DataSet.Open;
   DataSource1.DataSet.Insert;
   EnableDisableControls(True);
   TEdit(DBEditCodigo).SetFocus;
   PermissoesForm;
   Restricoes;
end;

procedure TBoxTMO.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxTMO.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
    DataSource1.Dataset.Open;
    Application.CreateForm(TBoxPesquisarTMO, BoxPesquisarTMO);
    BoxPesquisarTMO.ShowModal;
end;

procedure TBoxTMO.Restricoes;
begin
  {: implementado nos forms descendentes }
end;



procedure TBoxTMO.SalvarExecute(Sender: TObject);
begin
  {: salvo as dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    DataSource1.DataSet.Post;
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
  end;
end;

procedure TBoxTMO.tblTmoAfterCancel(DataSet: TDataSet);
begin
   trnTmo.RollbackRetaining;
end;

procedure TBoxTMO.tblTmoAfterPost(DataSet: TDataSet);
begin
  trnTmo.CommitRetaining
end;

procedure TBoxTMO.Timer1Timer(Sender: TObject);
begin
MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
end;

procedure TBoxTMO.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSource1.DataSet.Active) and (DataSource1.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      DataSource1.DataSet.Delete;
  end;
  EnableDisableControls(True);
end;

procedure TBoxTMO.UltimoExecute(Sender: TObject);
begin
  DataSource1.DataSet.Last;
  Ultimo.Enabled := False;
  Proximo.Enabled := False;
  Primeiro.Enabled := True;
  Anterior.Enabled := True;
end;

procedure TBoxTMO.ProximoExecute(Sender: TObject);
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

procedure TBoxTMO.PrimeiroExecute(Sender: TObject);
begin
  Datasource1.Dataset.First;
  Ultimo.Enabled := True;
  Proximo.Enabled := True;
  Primeiro.Enabled := False;
  Anterior.Enabled := False;
end;

procedure TBoxTMO.AnteriorExecute(Sender: TObject);
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

procedure TBoxTMO.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  DataSource1.DataSet.Cancel;
  EnableDisableControls(True);
end;

procedure TBoxTMO.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSource1.DataSet.IsEmpty then
    EnableDisableControls(True);
    PermissoesForm;
    Restricoes;
    TEdit(DBEditCodigo).SetFocus;
end;

procedure TBoxTMO.EnableDisableControls(Value: Boolean);
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
 {   if (Components[i] is TDBDateTimePicker) then
       (Components[i] as TDBDateTimePicker).Enabled := Value; }
    if (Components[i] is TDBRadioGroup) then
       (Components[i] as TDBRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso8.AsString = 'T') then
    begin
      Novo.Enabled := True;
      Editar.Enabled := True;
      Excluir.Enabled := True;
      Salvar.Enabled := True;
      Cancelar.Enabled := True;
    end;
end;

procedure TBoxTMO.EnableDisableButtons(Value: Boolean);
begin
  { Habilita/desabilita os botões }
  Novo.Enabled := Value;
  Excluir.Enabled := Value;
  Salvar.Enabled := Value;
  Cancelar.Enabled := Value;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso8.AsString <> 'T') then
    begin
      Novo.Enabled := False;
      Editar.Enabled := False;
      Excluir.Enabled := False;
      Salvar.Enabled := False;
      Cancelar.Enabled := False;
    end;
  Procurar.Enabled := Value;
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
