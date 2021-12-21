unit OperacoesSeguro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, FMTBcd, DBClient, Provider, SqlExpr;

type
  TBoxSeguro = class(TForm)
    Panel1: TPanel;
    JvStatusBar1: TJvStatusBar;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    dtsCorretora: TDataSource;
    tblCorretora: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBBCDField1: TIBBCDField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    tblSeguros: TIBDataSet;
    tblSegurosID_SEGURO: TIntegerField;
    tblSegurosID_PEDIDO_VEICULOS: TIntegerField;
    tblSegurosCORRETORA: TIBStringField;
    tblSegurosVALOR_PREMIO: TIBBCDField;
    tblSegurosDATA: TDateField;
    tblSegurosID_CLIENTES: TIntegerField;
    tblSegurosID_VENDEDOR: TIntegerField;
    Datasource1: TDataSource;
    ActionList1: TActionList;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    Label1: TLabel;
    SequenciaSeguro: TDBEdit;
    FormaPagamento: TDBLookupComboBox;
    Label3: TLabel;
    Label5: TLabel;
    Vencimento: TJvDBDateEdit;
    CodigoVendedor: TJvDBMaskEdit;
    Label7: TLabel;
    CodigoCliente: TJvDBMaskEdit;
    ValorDevido: TJvDBMaskEdit;
    Pedido: TJvDBMaskEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
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
    procedure EditSequenciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCfopAfterCancel(DataSet: TDataSet);
    procedure tblCfop11AfterPost(DataSet: TDataSet);
    procedure tblCfopAfterPost(DataSet: TDataSet);
    procedure DataSetProvider1UpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
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
  BoxSeguro: TBoxSeguro;
  Retorno : String;

implementation

uses

   BIBLIOTECA, PESQUISAGeral, FDB;

{$R *.dfm}

function TBoxSeguro.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que est�o em branco no cadastro}
begin
  Result := True; {: assume que est�o todos preenchidos}
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

procedure TBoxSeguro.DoAfterClose;
begin
  DataSource1.Dataset.Close;
  Close;
end;

procedure TBoxSeguro.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  dtsCorretora.Dataset.Open;
  DataSource1.DataSet.Open;
  DataSource1.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  Excluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled  := false;
  SequenciaSeguro.Enabled := False;
  SequenciaSeguro.Text := '';
  Pedido.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxSeguro.tblCfop11AfterPost(DataSet: TDataSet);
begin
 // tblCfop.ApplyUpdates(0);
//    IBTransaction1.CommitRetaining;
end;

procedure TBoxSeguro.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := false;
   SequenciaSeguro.Enabled := True;
   SequenciaSeguro.Setfocus;
end;

procedure TBoxSeguro.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permiss�es/restri��es }
  if not DataSource1.DataSet.IsEmpty then
   begin
    DataSource1.Dataset.Edit;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    Pedido.SetFocus;
   end;
end;

procedure TBoxSeguro.EditSequenciaClick(Sender: TObject);
begin
 BtnConsultar.Click;
end;

procedure TBoxSeguro.EditSequenciaExit(Sender: TObject);
var
   id : Integer;
begin
    id := StrToInt(SequenciaSeguro.Text);
    EnableDisableControls(False, False, True);
    BtnSalvar.Enabled := False;
    Salvar.Enabled := False;
    BtnEditar.SetFocus;
    begin
      with tblSeguros do
      begin
       if id<>0 then
         begin
          //parambyname( 'id' ).AsInteger := id;
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
                  Salvar.Enabled := false;
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

procedure TBoxSeguro.SalvarExecute(Sender: TObject);
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

procedure TBoxSeguro.tblCfopAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxSeguro.tblCfopAfterPost(DataSet: TDataSet);
begin
    FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxSeguro.ExcluirExecute(Sender: TObject);
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

procedure TBoxSeguro.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edi��o ou inser��o}
  if DataSource1.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as altera��es realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSource1.DataSet.Cancel;
    end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('CFOP','Cfop',
      ['Descricao','Codigo','Id_Cfop'],
      ['Descri��o:','C�digo:','Sequ�ncia:'],
      'Descricao','Id_Cfop',Fdb1.SQLConnection1,'','','');
     with tblSeguros do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        SequenciaSeguro.Text := tblSeguros.FieldByName('Id_Seguro').Text;
     end;
     EnableDisableControls(False, False, True);
     BtnSalvar.Enabled := False;
     Salvar.Enabled := False;
     SequenciaSeguro.Enabled := False;
     BtnEditar.SetFocus;
   end;
end;

procedure TBoxSeguro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxSeguro := nil;
end;

procedure TBoxSeguro.FormShow(Sender: TObject);
begin
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
end;

procedure TBoxSeguro.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxSeguro.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxSeguro.DataSetProvider1UpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
Showmessage('Erro de gravacao'+E.Message);
end;

procedure TBoxSeguro.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxSeguro.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxSeguro.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxSeguro.LimpaTela;
begin
  SequenciaSeguro.Clear;
  DataSource1.Dataset.Close;
end;

procedure TBoxSeguro.EnableDisableControls(Value: Boolean; Value1: Boolean;
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
     (FDB1.IBDataSetLoginAcesso2.AsString = 'T') then
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
  SequenciaSeguro.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  if value2 then
    BtnSalvar.Setfocus;
end;

procedure TBoxSeguro.EnableDisableButtons(Value: Boolean; Value1: Boolean);
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
   (FDB1.IBDataSetLoginAcesso2.AsString <> 'T') then
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
      BtnExcluir.Enabled := False;
      Excluir.Enabled := False;
    end;
  BtnProcurar.Enabled := Value;
  BtnConsultar.Enabled := Value;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
end;

end.
