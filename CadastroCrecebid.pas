unit CadastroCrecebid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, DBClient, FMTBcd, SqlExpr, Provider, IBQuery, wwSpeedButton,
  wwDBNavigator, wwclearpanel;

type
  TBoxCrecebid = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    DataSourceCreceber: TDataSource;
    LabelCodigo: TLabel;
    LabelDescricao: TLabel;
    JvStatusBar1: TJvStatusBar;
    CodigoCliente: TMaskEdit;
    ToolBar1: TToolBar;
    BtnConsultar: TBitBtn;
    Label3: TLabel;
    Parcela: TJvDBMaskEdit;
    Valor: TJvDBMaskEdit;
    Label4: TLabel;
    tblCReceber: TIBDataSet;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberCONTA: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
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
    Label9: TLabel;
    Label10: TLabel;
    Origem: TJvDBMaskEdit;
    SpeedButton3: TSpeedButton;
    ActionList1: TActionList;
    Imprimir: TAction;
    Consultar: TAction;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
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
    Documento: TMaskEdit;
    IBQuery1: TIBQuery;
    NomeCliente: TJvDBMaskEdit;
    tblCReceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCReceberBOLETO_EMITIDO: TIBStringField;
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
    NovoDocumento: TJvDBMaskEdit;
    Label11: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label12: TLabel;
    JvDBMaskEdit2: TJvDBMaskEdit;
    Label13: TLabel;
    tblCReceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCReceberHISTORICO: TIBStringField;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure CancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCReceberAfterPost(DataSet: TDataSet);
    procedure tblCReceberAfterCancel(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DocumentoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure ImprimirExecute(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoAvalistaExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idDocumento : String;
    RegNovo : Boolean;
    idClientes : Integer;
    idCliente : Integer;
    idAvalista : Integer;
    idCreceber : Integer;
    procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls (Value: Boolean; Value1: Boolean;
              Value2: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
    procedure LimpaTela; virtual;

  end;

var
  BoxCrecebid: TBoxCrecebid;
  Retorno : String;

implementation

uses

   BIBLIOTECA, FDB, PesquisaGeral, RelatorioBoletos, Empresas;

{$R *.dfm}

function TBoxCrecebid.FieldsWrithe(DtSrc: TDataSource): Boolean;
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

procedure TBoxCrecebid.DocumentoExit(Sender: TObject);
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
    with tblCreceber do
      begin
       if idDocumento<>'' then
         begin
        //  Close;
       //   Parambyname('idDocumento').AsString := idDocumento;
       //   ParamByName('idCliente').AsInteger := IdCliente;
       //   Open;
          if recordcount = 0  then
            begin
             showmessage('Documento inexistente.');
             Documento.SetFocus;
            end
          else
           begin
            Documento.Text := FieldByName('Documento').AsString;
            CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
            CodigoAvalista.Text := FieldByName('Id_Avalista').AsString;
            with tblPessoas do
            begin
              Close;
              ParamByName('idClientes').AsInteger :=
                tblCreceber.FieldByName('Id_Clientes').AsInteger;
              Open;
            end;
            with IBQuery1 do
             begin
               Close;
               ParamByName('idClientes').AsInteger :=
                 tblCreceber.FieldByName('Id_Clientes').AsInteger;
               Open;
               NomeCliente.Text := FieldByName('Nome').AsString;
               Close;
               ParamByName('idClientes').AsInteger :=
                 tblCreceber.FieldByName('Id_Avalista').AsInteger;
               Open;
               NomeAvalista.Text := FieldByName('Nome').AsString;
             end;
           end;
         end;
      end;
  end;
end;
end;

procedure TBoxCrecebid.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  RegNovo := True;
  DataSourceCreceber.DataSet.Open;
  DataSourceCreceber.DataSet.Insert;
  EnableDisableControls(True, False, True);
  Valor.Enabled := True;
  Origem.Enabled := True;
  CodigoCliente.Text := '';
  Documento.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxCrecebid.CodigoAvalistaExit(Sender: TObject);
begin
if CodigoAvalista.Text = '' then
   CodigoAvalista.Text := '0';
idAvalista := StrToInt(CodigoAvalista.Text);
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'idClientes' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end;
            end;
            NomeAvalista.Text := FieldbyName('Nome').Text;
         end;
      end;
  end;
end;

procedure TBoxCrecebid.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'idClientes' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end;
            end;
            NomeCliente.Text := FieldbyName('Nome').Text;
         end;
      end;
  end;
end;

procedure TBoxCrecebid.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   Documento.Enabled := True;
   SpeedButton3.Click;
//   CodigoCliente.Setfocus;
end;

procedure TBoxCrecebid.SalvarExecute(Sender: TObject);
begin
  {: salvo os dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSourceCreceber) and (DataSourceCreceber.State in [dsEdit, dsInsert]) then
  begin
    tblCreceber.FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    tblCreceber.FieldByName('id_clientes').AsInteger :=
      StrToInt(CodigoCliente.Text);
    if RegNovo then
      tblCreceber.FieldByName('Documento').AsString :=
        Documento.Text;
    tblCreceber.FieldByName('Status').AsString := 'Processado';
    DataSourceCreceber.DataSet.Post;
    EnableDisableControls(False, True, False);
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    Limpatela;
    BtnConsultar.Setfocus;
  end;
  RegNovo := False;
end;

procedure TBoxCrecebid.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('idClientes').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
        idCliente := StrToInt(Retorno);
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxCrecebid.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Avalista','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('idClientes').AsInteger := StrToInt(Retorno);
        Open;
        CodigoAvalista.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeAvalista.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoAvalista.SetFocus;
end;

procedure TBoxCrecebid.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Contas recebidas','Creceber',
      ['Documento','Id_Creceber','Id_Concessionaria','Valor','Vencimento'],
      ['Documento:','Sequência:','Concessionária:','Valor:','Vencimento:'],
      'Descricao','ID_Creceber',Fdb1.SQLConnection1,'Status =','Recebido','');
     with tblCreceber do
     begin
        Close;
        Parambyname('IdCreceber').AsString := Retorno;
        Open;
        IdCliente := FieldByName('Id_Clientes').AsInteger;
        CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
        IdCreceber := StrToInt(Retorno);
        IdDocumento := FieldByName('Documento').AsString;
        Documento.Text := FieldByName('Documento').AsString;
     end;
 //    if Documento.Text = '' then
 //    begin
       Documento.SetFocus;
 //    end;
end;

procedure TBoxCrecebid.tblCReceberAfterCancel(DataSet: TDataSet);
begin
   Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCrecebid.tblCReceberAfterPost(DataSet: TDataSet);
begin
    FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxCrecebid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxCRecebid := nil;
end;

procedure TBoxCrecebid.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourceCreceber.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxCrecebid.FormShow(Sender: TObject);
begin
  RegNovo := False;
  AbrirDs;
  EnableDisableButtons(True, False);
  BtnConsultar.SetFocus;
end;

procedure TBoxCrecebid.ImprimirExecute(Sender: TObject);
begin
  case MessageDlg('Emitir boleto?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
      Retorno := Biblioteca.ImprimirBoleto(BoxCrecebid.tblCreceber, BoxCrecebid.tblPessoas);
      with tblCreceber do
      begin
        Edit;
        FieldByName('Documento').AsString := Retorno;
        FieldByName('Boleto_emitido').AsString := 'T';
        Post;
      end;
     end;
    end
end;

procedure TBoxCrecebid.CancelarExecute(Sender: TObject);
begin
  RegNovo := False;
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxCrecebid.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxCrecebid.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxCrecebid.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxCrecebid.LimpaTela;
begin
  CodigoCliente.Clear;
  DataSourceCreceber.Dataset.Close;
end;

procedure TBoxCrecebid.EnableDisableControls(Value: Boolean; Value1: Boolean;
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
     (FDB1.IBDataSetLoginAcesso26.AsString = 'T') then
    begin
//      BtnImprimir.Enabled := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or   {inclusão}
     (FDB1.IBDataSetLoginAcesso31.AsString = 'T') then
      begin
  //      BtnImprimir.Enabled := Value2;
      end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or  {exclusão}
     (FDB1.IBDataSetLoginAcesso32.AsString = 'T') then
      begin
    //    BtnImprimir.Enabled := Value2;
      end;
 if (FDB1.IBDataSetLoginAcesso39.AsString = 'T') then
    begin
     begin
      Origem.Enabled := False;
      Valor.Enabled := False;
     end;
  //    Vencimento.Enabled := False;
    end;
  BtnConsultar.Enabled := Value1;
  Consultar.Enabled := Value1;
  CodigoCliente.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  nomecliente.enabled := False;
  nomeavalista.enabled := false;
end;

procedure TBoxCrecebid.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os botões }
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso26.AsString = 'T') then
    begin
    //  BtnImprimir.Enabled := Value1;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso31.AsString = 'T') then
     begin
   //   BtnImprimir.Enabled := Value1;
     end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso32.AsString = 'T') then
     begin
  //    BtnImprimir.Enabled := Value1;
     end;
  Consultar.Enabled := Value;
  BtnConsultar.Enabled := Value;
end;

procedure TBoxCrecebid.FecharDs;
begin
  DataSourceFormaPagamentos.Dataset.Close;
  DataSourceCreceber.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
end;

procedure TBoxCrecebid.AbrirDs;
begin
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourceCreceber.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
end;

end.
