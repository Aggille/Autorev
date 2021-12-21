unit CadastroCPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, DBClient, FMTBcd, SqlExpr, Provider, IBQuery, Wwkeycb;

type
  TBoxCPagar = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    DataSourceCPagar: TDataSource;
    LabelCodigo: TLabel;
    LabelDescricao: TLabel;
    JvStatusBar1: TJvStatusBar;
    CodigoCliente: TMaskEdit;
    ToolBar1: TToolBar;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    Valor: TJvDBMaskEdit;
    Label4: TLabel;
    tblCPagar: TIBDataSet;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label6: TLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Vencimento: TJvDBDateEdit;
    Label16: TLabel;
    Pagamento: TJvDBDateEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    NotaFiscal: TJvDBMaskEdit;
    SpeedButton3: TSpeedButton;
    ActionList1: TActionList;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
    Documento: TMaskEdit;
    IBQuery1: TIBQuery;
    NomeCliente: TJvDBMaskEdit;
    tblCPagarID_CPAGAR: TIntegerField;
    tblCPagarID_CONCESSIONARIA: TIntegerField;
    tblCPagarID_CLIENTES: TIntegerField;
    tblCPagarDOCUMENTO: TIBStringField;
    tblCPagarNFISCAL: TIBStringField;
    tblCPagarCONTA: TIBStringField;
    tblCPagarVENCIMENTO: TDateField;
    tblCPagarVALOR: TIBBCDField;
    tblCPagarEMISSAO: TDateField;
    tblCPagarPAGAMENTO: TDateField;
    tblCPagarVALOR_PAGO: TIBBCDField;
    tblCPagarBANCO: TIBStringField;
    tblCPagarHISTORICO: TIBStringField;
    tblCPagarSTATUS: TIBStringField;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
    tblPessoasCPF: TIBStringField;
    tblPessoasNUM_CPF: TIBStringField;
    tblPessoasNASCIMENTO: TDateField;
    tblPessoasPAI: TIBStringField;
    tblPessoasMAE: TIBStringField;
    tblPessoasENDERECO: TIBStringField;
    tblPessoasBAIRRO: TIBStringField;
    tblPessoasCIDADE: TIBStringField;
    tblPessoasESTADO: TIBStringField;
    tblPessoasCEP: TIBStringField;
    tblPessoasCADASTRO: TDateField;
    tblPessoasDESCONTO: TIBBCDField;
    tblPessoasFONE1: TIBStringField;
    tblPessoasFONE2: TIBStringField;
    tblPessoasFONE3: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMPRESA: TIBStringField;
    tblPessoasADMISSAO: TDateField;
    tblPessoasSALARIO: TIBBCDField;
    tblPessoasEMPR_ENDERECO: TIBStringField;
    tblPessoasEMPR_BAIRRO: TIBStringField;
    tblPessoasEMPR_CIDADE: TIBStringField;
    tblPessoasEMPR_ESTADO: TIBStringField;
    tblPessoasEMPR_CEP: TIBStringField;
    tblPessoasEMPR_FONE: TIBStringField;
    tblPessoasREF_NOME1: TIBStringField;
    tblPessoasREF_FONE1: TIBStringField;
    tblPessoasREF_NOME2: TIBStringField;
    tblPessoasREF_FONE2: TIBStringField;
    tblPessoasREF_COML1: TIBStringField;
    tblPessoasREF_COML_FONE1: TIBStringField;
    tblPessoasREF_COML2: TIBStringField;
    tblPessoasREF_COML_FONE2: TIBStringField;
    tblPessoasREF_BANC: TIBStringField;
    tblPessoasREF_AG_BANC: TIBStringField;
    tblPessoasREF_CTA_BANC: TIBStringField;
    tblPessoasFOTO: TIBStringField;
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
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure EditarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCPagarAfterPost(DataSet: TDataSet);
    procedure tblCPagarAfterCancel(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DocumentoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure JvDBMaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idDocumento : String;
    RegNovo : Boolean;
    idfornecedor : Integer;

    procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls (Value: Boolean; Value1: Boolean;
              Value2: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
    procedure LimpaTela; virtual;

  end;

var
  BoxCPagar: TBoxCPagar;
  Retorno : String;

implementation

uses

   BIBLIOTECA, FDB, PesquisaGeral, Empresas;

{$R *.dfm}

function TBoxCPagar.FieldsWrithe(DtSrc: TDataSource): Boolean;
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

procedure TBoxCPagar.DocumentoExit(Sender: TObject);
begin
if not (RegNovo) then
begin
idDocumento := (Documento.Text);
if Documento.Text = '' then
  begin
   SpeedButton3.Click;
   Documento.SetFocus;
  end
else
  begin
    with tblCPagar do
      begin
       if idDocumento<>'' then
         begin
          Close;
          parambyname( 'idDocumento' ).AsString := idDocumento;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Documento inexistente.');
             Documento.SetFocus;
            end
          else
           begin
            Documento.Text := FieldByName('Documento').AsString;
            CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
            with IBQuery1 do
             begin
               Close;
               ParamByName('idClientes').AsInteger :=
                 tblCPagar.FieldByName('Id_Clientes').AsInteger;
               Open;
               NomeCliente.Text := FieldByName('Nome').AsString;
             end;
           end;
         end;
      end;
  end;
end;
end;

procedure TBoxCPagar.NovoExecute(Sender: TObject);
begin
  RegNovo := True;
  {: novo registro}
  DataSourceCPagar.DataSet.Open;
  DataSourceCPagar.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  Excluir.Enabled := false;
  CodigoCliente.Text := '';
  Documento.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxCPagar.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idFornecedor := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFornecedor<>0 then
         begin
          Close;
          parambyname( 'idClientes' ).AsInteger := idFornecedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fornecedor inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Fornecedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um fornecedor.');
                CodigoCliente.SetFocus;
               end;
            end;
            NomeCliente.Text := FieldbyName('Nome').Text;
         end;
      end;
  end;
end;

procedure TBoxCPagar.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := false;
   Documento.Enabled := True;
   Documento.Setfocus;
end;

procedure TBoxCPagar.EditarExecute(Sender: TObject);
begin
  RegNovo := False;
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSourceCPagar.DataSet.IsEmpty then
   begin
    DataSourceCPagar.Dataset.Edit;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    CodigoCliente.SetFocus;
   end;
end;

procedure TBoxCPagar.SalvarExecute(Sender: TObject);
begin
  RegNovo := False;
  {: salvo os dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSourceCPagar) and (DataSourceCPagar.State in [dsEdit, dsInsert]) then
  begin
    tblCPagar.FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    tblCPagar.FieldByName('id_clientes').AsInteger :=
      StrToInt(CodigoCliente.Text);
    tblCPagar.FieldByName('Documento').AsString :=
      Documento.Text;      
    tblCPagar.FieldByName('Status').AsString := 'Processado';
    DataSourceCPagar.DataSet.Post;
    EnableDisableControls(False, True, False);
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    Limpatela;
    BtnConsultar.Setfocus;
  end;
end;

procedure TBoxCPagar.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Fornecedor','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Fornecedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('idClientes').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxCPagar.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Contas à pagar','CPagar',
      ['Id_Creceber','Codigo','Descricao','Id_Concessionaria'],
      ['Sequência:','Código:','Descrição:','Concessionária:',''],
      'Descricao','Documento',Fdb1.SQLConnection1,'Status = ','Processado','');
     with tblCPagar do
     begin
        Close;
        Parambyname('idDocumento').AsString := Retorno;
        Open;
        IdDocumento := FieldByName('Documento').AsString;
        Documento.Text := FieldByName('Documento').AsString;
     end;
     if Documento.Text = '' then
     begin
       Documento.SetFocus;
     end;
end;

procedure TBoxCPagar.tblCPagarAfterCancel(DataSet: TDataSet);
begin
   Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCPagar.tblCPagarAfterPost(DataSet: TDataSet);
begin
    Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxCPagar.ExcluirExecute(Sender: TObject);
begin
  RegNovo := False;
  {: deleta se houver dados no DataSet }
  if (DataSourceCPagar.DataSet.Active) and (DataSourceCPagar.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      DataSourceCPagar.DataSet.Delete;
      EnableDisableControls(False, True, False);
      LimpaTela;
     end;
  end;
end;

procedure TBoxCPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxCPagar := nil;
end;

procedure TBoxCPagar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourceCPagar.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxCPagar.FormShow(Sender: TObject);
begin
  RegNovo := False;
  AbrirDs;
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
end;

procedure TBoxCPagar.JvDBMaskEdit1Exit(Sender: TObject);
begin
  BtnSalvar.SetFocus;
end;

procedure TBoxCPagar.CancelarExecute(Sender: TObject);
begin
  RegNovo := False;
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxCPagar.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxCPagar.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxCPagar.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxCPagar.LimpaTela;
begin
  CodigoCliente.Clear;
  DataSourceCPagar.Dataset.Close;
end;

procedure TBoxCPagar.EnableDisableControls(Value: Boolean; Value1: Boolean;
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
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or        {edição}
     (FDB1.IBDataSetLoginAcesso28.AsString = 'T') then
    begin
      BtnEditar.Enabled := Value2;
      Editar.Enabled := Value2;
      BtnSalvar.Enabled := Value2;
      BtnCancelar.Enabled := Value2;
      Salvar.Enabled := Value2;
      Cancelar.Enabled := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or   {inclusão}
     (FDB1.IBDataSetLoginAcesso33.AsString = 'T') then
      begin
        BtnNovo.Enabled := Value1;
        Novo.Enabled := Value1;
        BtnSalvar.Enabled := Value2;
        BtnCancelar.Enabled := Value2;
        Salvar.Enabled := Value2;
        Cancelar.Enabled := Value2;
      end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or  {exclusão}
     (FDB1.IBDataSetLoginAcesso34.AsString = 'T') then
      begin
        Excluir.Enabled := Value2;
        BtnExcluir.Enabled := Value2;
        BtnSalvar.Enabled := Value2;
        BtnCancelar.Enabled := Value2;
        Salvar.Enabled := Value2;
        Cancelar.Enabled := Value2;
      end;
  BtnConsultar.Enabled := Value1;
  Procurar.Enabled := Value1;
  Consultar.Enabled := Value1;
  CodigoCliente.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  if value2 then
    BtnSalvar.Setfocus;
end;

procedure TBoxCPagar.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os botões }
  BtnNovo.Enabled := False;
  Novo.Enabled := False;
  Excluir.Enabled := False;
  BtnExcluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnSalvar.Enabled := False;
  Cancelar.Enabled := False;
  Salvar.Enabled := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso28.AsString = 'T') then
    begin
      BtnEditar.Enabled := Value1;
      Editar.Enabled := Value1;
      BtnCancelar.Enabled := Value1;
      BtnSalvar.Enabled := Value1;
      Cancelar.Enabled := Value1;
      Salvar.Enabled := Value1;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso33.AsString = 'T') then
     begin
      BtnNovo.Enabled := Value;
      Novo.Enabled := Value;
      BtnCancelar.Enabled := Value1;
      BtnSalvar.Enabled := Value1;
      Cancelar.Enabled := Value1;
      Salvar.Enabled := Value1;
     end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso34.AsString = 'T') then
     begin
      BtnExcluir.Enabled := Value1;
      Excluir.Enabled := Value1;
      BtnCancelar.Enabled := Value1;
      BtnSalvar.Enabled := Value1;
      Cancelar.Enabled := Value1;
      Salvar.Enabled := Value1;
     end;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
  BtnConsultar.Enabled := Value;
end;

procedure TBoxCPagar.FecharDs;
begin
  DataSourceCPagar.Dataset.Close;
  DataSourceFormaPagamentos.Dataset.Close;  
  DataSourcePessoas.Dataset.Close;
end;

procedure TBoxCPagar.AbrirDs;
begin
  DataSourceCPagar.Dataset.Open;
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
end;

end.
