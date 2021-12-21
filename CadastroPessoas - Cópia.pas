unit CadastroPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, AppEvnts, ExtDlgs;

type
  TBoxPessoas = class(TForm)

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
    BoxPessoas: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    TabSheet1: TTabSheet;
    Codigo: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Nome: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Bevel1: TBevel;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    Bevel3: TBevel;
    DBEdit14: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DataSource1: TDataSource;
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
    procedure DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure DoAfterClose;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FButtonDeleteClick: TNotifyEvent;
    FButtonInsertClick: TNotifyEvent;
    procedure DoButtonInsertClick(Sender: TObject);
    procedure DoButtonDeleteClick(Sender: TObject);
  public
    { Public declarations }
    procedure EnableDisableButtons (Value: Boolean);
    procedure EnableDisableControls (Value: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
  published
    property OnButtonInsertClick: TNotifyEvent read FButtonInsertClick write FButtonInsertClick;
    property OnButtonDeleteClick: TNotifyEvent read FButtonDeleteClick write FButtonDeleteClick;
  end;

var
  BoxPessoas: TBoxPessoas;

implementation

uses

   FDB, BIBLIOTECA, PesquisaPessoas;

{$R *.dfm}


function TBoxPessoas.FieldsWrithe(DtSrc: TDataSource): Boolean;
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

procedure TBoxPessoas.FormActivate(Sender: TObject);
begin
  EnableDisableButtons(True);
end;

procedure TBoxPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TBoxPessoas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxPessoas.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  EnableDisableButtons(True);
  if Key = #27 then
    begin
      DoAfterClose;
      close;
    end;
  if Key = #13 then
    BtnSalvar.SetFocus;
end;


procedure TBoxPessoas.FormShow(Sender: TObject);
begin
  DataSource1.Dataset.Open;
  EnableDisableButtons(True);
end;

procedure TBoxPessoas.NovoExecute(Sender: TObject);
begin
  {: novo registro}
   DataSource1.DataSet.Open;
   DataSource1.DataSet.Insert;
   EnableDisableControls(True);
   TEdit(DBEdit1).SetFocus;
   PermissoesForm;
   Restricoes;
end;

procedure TBoxPessoas.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxPessoas.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
    DataSource1.Dataset.Open;
    Application.CreateForm(TBoxPesquisarPessoa, BoxPesquisarPessoa);
    BoxPesquisarPessoa.ShowModal;
end;

procedure TBoxPessoas.DoAfterClose;
begin
  DataSource1.Dataset.Close;
end;

procedure TBoxPessoas.Restricoes;
begin
  {: implementado nos forms descendentes }
end;


procedure TBoxPessoas.SalvarExecute(Sender: TObject);
begin
  {: salvo as dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSource1) and (DataSource1.State in [dsEdit, dsInsert]) then
  begin
    DataSource1.DataSet.Post;
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
  end;
end;

procedure TBoxPessoas.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSource1.DataSet.Active) and (DataSource1.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      DataSource1.DataSet.Delete;
  end;
  EnableDisableControls(True);
end;

procedure TBoxPessoas.UltimoExecute(Sender: TObject);
begin
  DataSource1.DataSet.Last;
  Ultimo.Enabled := False;
  Proximo.Enabled := False;
  Primeiro.Enabled := True;
  Anterior.Enabled := True;
end;

procedure TBoxPessoas.ProximoExecute(Sender: TObject);
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

procedure TBoxPessoas.PrimeiroExecute(Sender: TObject);
begin
  Datasource1.Dataset.First;
  Ultimo.Enabled := True;
  Proximo.Enabled := True;
  Primeiro.Enabled := False;
  Anterior.Enabled := False;
end;

procedure TBoxPessoas.AnteriorExecute(Sender: TObject);
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

procedure TBoxPessoas.btnDeleteClick(Sender: TObject);
begin
  DoButtonDeleteClick(Self);
end;

procedure TBoxPessoas.btnInsertClick(Sender: TObject);
begin
  DoButtonInsertClick(Self);
end;

procedure TBoxPessoas.DoButtonDeleteClick(Sender: TObject);
begin
  if Assigned(FButtonDeleteClick) then
    FButtonDeleteClick(Self);
end;

procedure TBoxPessoas.DoButtonInsertClick(Sender: TObject);
begin
  if Assigned(FButtonInsertClick) then
    FButtonInsertClick(Self);
end;

procedure TBoxPessoas.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  DataSource1.DataSet.Cancel;
  EnableDisableControls(True);
end;

procedure TBoxPessoas.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSource1.DataSet.IsEmpty then
    EnableDisableControls(True);
    PermissoesForm;
    Restricoes;
    TEdit(DBEdit1).SetFocus;
end;
 
procedure TBoxPessoas.EnableDisableControls(Value: Boolean);
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
     (FDB1.IBDataSetLoginAcesso7.AsString = 'T') then
    begin
      Novo.Enabled := True;
      Editar.Enabled := True;
      Excluir.Enabled := True;
      Salvar.Enabled := True;
      Cancelar.Enabled := True;
    end;
end;

procedure TBoxPessoas.EnableDisableButtons(Value: Boolean);
begin
  { Habilita/desabilita os botões }
  Novo.Enabled := Value;
  Excluir.Enabled := Value;
  Salvar.Enabled := Value;
  Cancelar.Enabled := Value;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso7.AsString <> 'T') then
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
