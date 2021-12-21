unit DebitoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, DBClient, FMTBcd, SqlExpr, Provider;

type
  TBoxDebitoCliente = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    LabelCodigo: TLabel;
    LabelDescricao: TLabel;
    JvStatusBar1: TJvStatusBar;
    CodigoCliente: TMaskEdit;
    Documento: TJvDBMaskEdit;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    Label3: TLabel;
    Parcela: TJvDBMaskEdit;
    Valor: TJvDBMaskEdit;
    Label4: TLabel;
    tblCReceber: TIBDataSet;
    IBTransaction1: TIBTransaction;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberFORMA_PAG: TIBStringField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberCONTA: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberHISTORICO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    Vezes: TJvDBMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    CodigoAvalista: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    NomeAvalista: TJvDBMaskEdit;
    Label6: TLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Vencimento: TJvDBDateEdit;
    Label16: TLabel;
    Pagamento: TJvDBDateEdit;
    Label7: TLabel;
    tblFormasPagamento: TIBDataSet;
    tblFormasPagamentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasPagamentoFORMA_PAGAMENTO: TIBStringField;
    tblFormasPagamentoCOEFICIENTE: TFMTBCDField;
    tblFormasPagamentoPRAZO: TIBStringField;
    tblFormasPagamentoVEICULOS: TIBStringField;
    tblFormasPagamentoPECAS: TIBStringField;
    tblFormasPagamentoPOSVENDA: TIBStringField;
    tblFormasPagamentoCRECEBER: TIBStringField;
    tblFormasPagamentoCPAGAR: TIBStringField;
    DataSourceFormaPagamentos: TDataSource;
    FormaPagamento: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Origem: TJvDBMaskEdit;
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
    procedure CodigoClienteExit(Sender: TObject);
    procedure CodigoClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCReceberAfterPost(DataSet: TDataSet);
    procedure tblCReceberAfterCancel(DataSet: TDataSet);
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
  BoxDebitoCliente: TBoxDebitoCliente;
  Retorno : String;

implementation

uses

   BIBLIOTECA, FDB, PesquisaGeral;

{$R *.dfm}

function TBoxDebitoCliente.FieldsWrithe(DtSrc: TDataSource): Boolean;
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

procedure TBoxDebitoCliente.DoAfterClose;
begin
  DataSource1.Dataset.Close;
  Close;
end;

procedure TBoxDebitoCliente.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  Excluir.Enabled := false;
  CodigoCliente.Text := '';
  CodigoCliente.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxDebitoCliente.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := false;
   CodigoCliente.Enabled := True;
   CodigoCliente.Setfocus;
end;

procedure TBoxDebitoCliente.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSource1.DataSet.IsEmpty then
   begin
    DataSource1.Dataset.Edit;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    CodigoCliente.SetFocus;
   end;
end;

procedure TBoxDebitoCliente.CodigoClienteClick(Sender: TObject);
begin
 BtnConsultar.Click;
end;

procedure TBoxDebitoCliente.CodigoClienteExit(Sender: TObject);
var
   id : Integer;
begin
    id := StrToInt(CodigoCliente.Text);
    EnableDisableControls(False, False, True);
    BtnSalvar.Enabled := False;
    Salvar.Enabled := False;
    BtnEditar.SetFocus;
    begin
      with tblCReceber do
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
                  DataSource1.DataSet.Cancel;
                  Close;
                end;
              end;
            end;
         end;
      end;
   end;
end;

procedure TBoxDebitoCliente.SalvarExecute(Sender: TObject);
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

procedure TBoxDebitoCliente.tblCReceberAfterCancel(DataSet: TDataSet);
begin
   IBTransaction1.RollbackRetaining;
end;

procedure TBoxDebitoCliente.tblCReceberAfterPost(DataSet: TDataSet);
begin
    IBTransaction1.CommitRetaining;
end;

procedure TBoxDebitoCliente.ExcluirExecute(Sender: TObject);
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

procedure TBoxDebitoCliente.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSource1.State in [dsEdit, dsInsert] then
     case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
      mrYes: BtnSalvar.Click;
      mrNo: DataSource1.DataSet.Cancel;
     end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('Categoria','Categoria',
      ['Id_Categoria','Codigo','Descricao'],
      ['Sequência:','Código:','Descrição:',''],
      'Descricao','Id_Categoria',Fdb1.SQLConnection1,'','','');
     with tblcReceber do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblCReceber.FieldByName('Id_CReceber').Text;
     end;
     EnableDisableControls(False, False, True);
     BtnSalvar.Enabled := False;
     Salvar.Enabled := False;
     CodigoCliente.Enabled := False;
     BtnEditar.SetFocus;
   end;
end;

procedure TBoxDebitoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxCReceber := nil;
end;

procedure TBoxDebitoCliente.FormShow(Sender: TObject);
begin
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
end;

procedure TBoxDebitoCliente.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxDebitoCliente.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxDebitoCliente.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxDebitoCliente.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxDebitoCliente.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxDebitoCliente.LimpaTela;
begin
  CodigoCliente.Clear;
  DataSource1.Dataset.Close;
end;

procedure TBoxDebitoCliente.EnableDisableControls(Value: Boolean; Value1: Boolean;
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
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso1.AsString = 'T') then
    begin
      BtnNovo.Enabled := Value1;
      BtnEditar.Enabled := Value2;
      BtnExcluir.Enabled := Value2;
      BtnSalvar.Enabled := Value2;
      BtnCancelar.Enabled := Value2;
      Novo.Enabled := Value1;
      Editar.Enabled := Value2;
      Excluir.Enabled := Value2;
      Salvar.Enabled := Value2;
      Cancelar.Enabled := Value2;
    end;
  BtnProcurar.Enabled := Value1;
  BtnConsultar.Enabled := Value1;
  Procurar.Enabled := Value1;
  Consultar.Enabled := Value1;
  CodigoCliente.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  if value2 then
    BtnSalvar.Setfocus;
end;

procedure TBoxDebitoCliente.EnableDisableButtons(Value: Boolean; Value1: Boolean);
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
   (FDB1.IBDataSetLoginAcesso1.AsString <> 'T') then
    begin
      BtnNovo.Enabled := False;
      BtnEditar.Enabled := False;
      BtnExcluir.Enabled := False;
      BtnCancelar.Enabled := False;
      BtnSalvar.Enabled := False;
      Novo.Enabled := False;
      Editar.Enabled := False;
      Excluir.Enabled := False;
      Cancelar.Enabled := False;
      Salvar.Enabled := False;
    end;
  BtnProcurar.Enabled := Value;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
  BtnConsultar.Enabled := Value;
end;

end.
