unit Financiamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet,
  Mask, DBCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, Buttons,
  rxToolEdit, rxCurrEdit, IBQuery, frxClass, frxDBSet;

type
  TBoxFinanciamentos = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tblCreceber1: TIBDataSet;
    tblCreceber1ID_CRECEBER: TIntegerField;
    tblCreceber1ID_CONCESSIONARIA: TIntegerField;
    tblCreceber1ID_CLIENTES: TIntegerField;
    tblCreceber1ID_AVALISTA: TIntegerField;
    tblCreceber1DOCUMENTO: TIBStringField;
    tblCreceber1PARCELA: TIBStringField;
    tblCreceber1VEZES: TIBStringField;
    tblCreceber1ORIGEM: TIBStringField;
    tblCreceber1CONTA: TIBStringField;
    tblCreceber1VENCIMENTO: TDateField;
    tblCreceber1VALOR: TIBBCDField;
    tblCreceber1EMISSAO: TDateField;
    tblCreceber1TOTAL: TIBBCDField;
    tblCreceber1PAGAMENTO: TDateField;
    tblCreceber1VALOR_PAGO: TIBBCDField;
    tblCreceber1BANCO: TIBStringField;
    tblCreceber1HISTORICO: TIBStringField;
    tblCreceber1STATUS: TIBStringField;
    tblCreceber1ID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceber1ID_FORMA_PAGAMENTO: TIntegerField;
    DataSourceCreceber1: TDataSource;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    ValorFinanciamento: TDBEdit;
    NumeroParcelas: TDBEdit;
    Coeficiente: TDBEdit;
    tblTabelas: TIBDataSet;
    DataSourceTabelas: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    BtnConfirma: TBitBtn;
    tblCreceber1NOME: TIBStringField;
    tblCreceber1BOLETO_EMITIDO: TIBStringField;
    Tabela: TDBLookupComboBox;
    tblTabelasID_TABELAS_FINANCIAMENTO: TIntegerField;
    tblTabelasID_FINANCEIRA: TIntegerField;
    tblTabelasTABELA: TIBStringField;
    tblTabelasRETORNO: TIntegerField;
    tblTabelasCOEFICIENTE: TFMTBCDField;
    tblTabelasNUMERO_PARCELAS: TIBStringField;
    ValorParcela: TCurrencyEdit;
    IBQuery1: TIBQuery;
    BtnImprimir: TBitBtn;
    tblPessoas: TIBDataSet;
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
    DataSourcePessoas: TDataSource;
    tblCreceber: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    DateField2: TDateField;
    IBBCDField2: TIBBCDField;
    DateField3: TDateField;
    IBBCDField3: TIBBCDField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField10: TIBStringField;
    DataSourceCreceber: TDataSource;
    tblTabelasTAC: TIBBCDField;
    VencimentoPrimeira: TJvDateEdit;
    procedure AbrirDs;
    procedure FecharDs;
    procedure CalculaParcela;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblCreceber1AfterCancel(DataSet: TDataSet);
    procedure tblCreceber1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCreceber : Integer;
    idPedidoVeiculos : Integer;
  end;

var
  BoxFinanciamentos: TBoxFinanciamentos;
  Retorno : String;

implementation

uses FDB, Biblioteca, Efuncoes, Empresas;

{$R *.dfm}

procedure TBoxFinanciamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxFinanciamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;

end;

procedure TBoxFinanciamentos.FormShow(Sender: TObject);
begin
 AbrirDs;
 BtnConfirma.Enabled := False;
 BtnImprimir.Enabled := False;
 DBGrid1.SetFocus;
end;

procedure TBoxFinanciamentos.tblCreceber1AfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanciamentos.tblCreceber1AfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanciamentos.BtnConfirmaClick(Sender: TObject);
var
 i : Integer;
 documento : String;
begin
  with tblCreceber1 do
  begin
    idPedidoVeiculos := FieldByName('id_Pedido_Veiculos').AsInteger;
    Edit;
    FieldByName('Status').AsString := 'Financiado';
    Post;
  end;
  with tblPedidoVeiculosRecebimento do
  begin
    Close;
    ParamByName('id').AsInteger := tblCreceber1.FieldByName('Id_CReceber').AsInteger;
    Open;
    Edit;
    FDB1.AtualizaDataAtual;
    FieldByName('CX_BC').AsString := 'Financiam.';
    FieldByName('Data_Recebimento').AsDateTime := DataAtual;
    FieldByName('Valor_recebido').AsString := ValorFinanciamento.Text;
    Post;
  end;
  with tblCreceber1 do
  begin
    documento := Substr(FieldByName('Documento').AsString,1,len(ltrim(FieldByName('Documento').AsString))-2);
    for i := 1 to StrToInt(NumeroParcelas.Text) do
      begin
        DuplicaRegistro(tblCreceber1);
        FieldByName('Vezes').AsString := NumeroParcelas.Text;
        FieldByName('Parcela').AsInteger := i;
        FieldByName('Documento').AsString := documento +'-'+ IntToStr(i);
        if i = 1 then
         FieldByName('Vencimento').AsDateTime := VencimentoPrimeira.Date
        else
         VencimentoPrimeira.Date := incMonth(VencimentoPrimeira.Date);
         FieldByName('Vencimento').AsFloat := VencimentoPrimeira.Date;
        FieldByName('Valor').Value := ValorParcela.Value;
        {Pega um sequence novo para a NF}
        IBQuery1.Open;
        IdCreceber := IBQuery1.FieldByName('id_Creceber').AsInteger;
        IBQuery1.Close;
        FieldByName('Id_Creceber').AsInteger := idCreceber;
        FieldByName('Status').AsString := 'Processado';
        Post;
      end;
  end;
  BtnConfirma.Enabled := False;
  BtnImprimir.Enabled := True;
  Showmessage('Dados gravados.');
  BtnImprimir.SetFocus;
end;

procedure TBoxFinanciamentos.BtnImprimirClick(Sender: TObject);
var
  i: Integer;
begin
 with tblPessoas do
 begin
   Close;
   ParamByName('id').AsInteger := tblCreceber1.FieldByName('Id_Clientes').AsInteger;
   Open;
 end;
 with tblCreceber do
 begin
   Close;
   ParamByName('idPedidoVeiculos').AsInteger := idPedidoVeiculos;
   ParamByName('idVezes').AsString := NumeroParcelas.Text;
   ParamByName('idConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   Open;
   Last;
   First;
 end;
 if tblCreceber.RecordCount <> StrToInt(NumeroParcelas.Text) then
   showmessage('Impressão cancelada devido a problemas na contagem das parcelas')
 else
   begin
    for i := 1 to StrToInt(NumeroParcelas.Text) do
     begin
      case MessageDlg('Continuar imprimindo?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes:
        begin;
         Showmessage('Imprimindo boleto:' + IntToStr(i));
         Retorno := Biblioteca.ImprimirBoleto(BoxFinanciamentos.tblCreceber, BoxFinanciamentos.tblPessoas);
         with tblCreceber do
          begin
           Edit;
           FieldByName('Documento').AsString := Retorno;
           FieldByName('Boleto_emitido').AsString := 'T';
           Post;
           Next;
          end;
        end;
      end;
     end;
   end;
  tblCreceber1.Close;
  tblCreceber1.Open;
end;

procedure TBoxFinanciamentos.DBGrid1Exit(Sender: TObject);
begin
  CalculaParcela;
  BtnConfirma.Enabled := True;
end;

procedure TBoxFinanciamentos.CalculaParcela;
begin
   ValorParcela.Text := FloatToStr(((tblTabelas.FieldByName('TAC').AsFloat) +
     StrToFloat(ValorFinanciamento.Text)) *
     StrToFloat (Coeficiente.Text));
   VencimentoPrimeira.Date := IncMonth(tblCreceber1.FieldByName('Vencimento').AsDateTime,1);
 if (FDB1.IBDataSetLoginacesso55.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   ValorParcela.Enabled := True;
end;

Procedure TBoxFinanciamentos.FecharDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Close;
   DataSourceCreceber1.Dataset.Close;
   DataSourceTabelas.Dataset.Close;
end;

Procedure TBoxFinanciamentos.AbrirDs;
begin
   tblCreceber1.ParamByName('idConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceCreceber1.Dataset.Open;
   DataSourceTabelas.Dataset.Open;
end;

end.
