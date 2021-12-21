unit FaturamentoPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ToolWin, JvExMask, JvToolEdit, JvMaskEdit, Math,
  JvDBControls, Buttons, Mask, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, rxToolEdit, rxCurrEdit, DBCtrls, ButtonGroup, vcl.wwdbigrd,
  vcl.wwdbgrid, Datasnap.DBClient;

type
  TBoxFaturamentoPecas = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Pedido: TEdit;
    Label7: TLabel;
    CodigoCliente: TMaskEdit;
    SpeedButton2: TSpeedButton;
    NomeCliente: TJvDBMaskEdit;
    SpeedButton1: TSpeedButton;
    tblOrcamentoPecas: TIBDataSet;
    tblOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasID_CLIENTES: TIntegerField;
    tblOrcamentoPecasTOTAL_VENDA: TIBBCDField;
    tblOrcamentoPecasTOTAL_NESTA_VENDA: TIBBCDField;
    tblOrcamentoPecasSTATUS: TIBStringField;
    tblOrcamentoPecasDESCONTO: TIBBCDField;
    tblOrcamentoPecasVALOR_LIQUIDO_VENDA: TIBBCDField;
    tblOrcamentoPecasID_CONCESSIONARIA: TIntegerField;
    DataSourceOrcamentoPecas: TDataSource;
    DataSourceOrcamentoPecasRecebimento: TDataSource;
    tblOrcamentoPecasRecebimento: TIBDataSet;
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS_RECEBIMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblOrcamentoPecasRecebimentoVENCIMENTO: TDateField;
    tblOrcamentoPecasRecebimentoTESTE: TStringField;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DataSourceNofisaFaturas: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    IBQuery1: TIBQuery;
    tblNofisa: TIBDataSet;
    DataSourceNofisa: TDataSource;
    DataSourceSada: TDataSource;
    tblSada: TIBDataSet;
    tblSadaID_SADA: TIntegerField;
    tblSadaID_NOFISA: TIntegerField;
    tblSadaID_CONCESSIONARIA: TIntegerField;
    tblSadaNF: TIBStringField;
    tblSadaCODIGO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
    tblSadaQTDE: TSmallintField;
    tblSadaUNIDADE: TIBStringField;
    tblSadaCST: TIBStringField;
    tblSadaSUBST: TIBStringField;
    tblSadaICMS: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblSadaPOTENCIA: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    DataSourceSerieNF: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    DataSourceCreceber: TDataSource;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    DataSourcePecas: TDataSource;
    tblPecas: TIBDataSet;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasPRECO: TIBBCDField;
    tblPecasICMS: TIBBCDField;
    tblPecasPPS: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasORIGINAL: TIBStringField;
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
    IBQuery2: TIBQuery;
    Label1: TLabel;
    Label13: TLabel;
    SerieNF: TComboBox;
    tblOrcamentoPecasDados: TIBDataSet;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS_DADOS: TIntegerField;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasDadosQTDE_ORCADA: TIntegerField;
    tblOrcamentoPecasDadosVALOR_NESTA_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosPRECO_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosID_PECAS: TIntegerField;
    tblOrcamentoPecasDadosSTATUS: TIBStringField;
    tblOrcamentoPecasDadosTESTE: TStringField;
    tblOrcamentoPecasDadosCODIGO1: TStringField;
    DataSourceOrcamentoPecasDados: TDataSource;
    tblOrcamentoPecasID_VENDEDOR: TIntegerField;
    tblPecasCST: TIBStringField;
    ValorLiquidoVenda: TJvDBMaskEdit;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblNofisaFaturasFORMA_PAGAMENTO: TStringField;
    tblOrcamentoPecasDadosLOCAL: TStringField;
    DataSourceCaixa: TDataSource;
    tblCaixa: TIBDataSet;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    tblCaixaID_CAIXA: TIntegerField;
    tblCaixaID_CONCESSIONARIA: TIntegerField;
    tblCaixaID_CLIENTES: TIntegerField;
    tblCaixaDOCUMENTO: TIBStringField;
    tblCaixaORIGEM: TIBStringField;
    tblCaixaNATUREZA: TIBStringField;
    tblCaixaFORMA_PAG: TIBStringField;
    tblCaixaDATA_LANCAMENTO: TDateField;
    tblCaixaDATA_RECEBIMENTO: TDateField;
    tblCaixaVALOR: TIBBCDField;
    tblCaixaCONTA: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    BtnImprimir: TBitBtn;
    BtnReceber: TBitBtn;
    tblCreceberSTATUS: TIBStringField;
    IBQuery3: TIBQuery;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    StatusBar1: TStatusBar;
    DadosAd01: TEdit;
    Label4: TLabel;
    DadosAd02: TEdit;
    DadosAd03: TEdit;
    DadosAd04: TEdit;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblOrcamentoPecasNUMERO_NOTA_FISCAL: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    Panel2: TPanel;
    Frete: TRadioGroup;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    NomeTransportadora: TJvDBMaskEdit;
    CodigoTransportadora: TMaskEdit;
    QuantidadeVolumes: TMaskEdit;
    Label8: TLabel;
    Panel3: TPanel;
    Label16: TLabel;
    FormaPagamento: TDBLookupComboBox;
    ValorDevido: TJvDBMaskEdit;
    Label3: TLabel;
    Label12: TLabel;
    BtnNovo: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConfirma: TBitBtn;
    Label9: TLabel;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCaixaHISTORICO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblPecasVBC_STRET: TIBBCDField;
    tblPecasPST: TIBBCDField;
    tblPecasVICMS_STRET: TIBBCDField;
    tblPecasPMVAST: TIBBCDField;
    tblPecasPRED_BCST: TIBBCDField;
    tblPecasVBC_ST: TIBBCDField;
    tblPecasPICMS_ST: TIBBCDField;
    tblPecasVICMS_ST: TIBBCDField;
    tblAuxFaturas2: TClientDataSet;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    CurrencyField1: TCurrencyField;
    StringField2: TStringField;
    tblAuxFaturas2NUMERO_CV: TStringField;
    IntegerField11: TIntegerField;
    IntegerField10: TIntegerField;
    dts2: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    VALORCARTAO: TCurrencyEdit;
    PRIMEIROVENCIMENTO: TDateEdit;
    NumeroCV: TEdit;
    NumeroParcelas: TEdit;
    BitBtn3: TBitBtn;
    Cartao: TDBLookupComboBox;
    Vencimento: TDateEdit;
    BitBtn1: TBitBtn;
    tblCreceberNUMERO_CV: TIBStringField;
    tblNofisaFaturasNUMERO_CV: TIBStringField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    Label19: TLabel;
    PesoBruto: TMaskEdit;
    tblSadaALIQ_ICMS: TIBBCDField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PedidoExit(Sender: TObject);
    procedure EnableDisableButtons(Value : Boolean; Value1 : Boolean);
    procedure EnableDisableControls(Value: Boolean);    
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure SerieNFExit(Sender: TObject);
    procedure tblOrcamentoPecasAfterCancel(DataSet: TDataSet);
    procedure tblOrcamentoPecasAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure tblNofisaFaturasBeforePost(DataSet: TDataSet);
    procedure tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
    procedure BtnReceberClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QuantidadeVolumesExit(Sender: TObject);
    procedure CodigoTransportadoraExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PRIMEIROVENCIMENTOExit(Sender: TObject);
    procedure PesoBrutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BaseIcms: String;
    NFGerada : Boolean;
    ValICMS: String;
    CNPJ : String;
    idPedido : Integer;
    idNofisa : Integer;
    idNumeroNotaFiscal : Integer;
    PrimeiroCFOP : String;
    SegundoCFOP : String;
    procedure AbrirDs; virtual;
    procedure GeraNF; Virtual;
    procedure FecharDs; virtual;
    procedure CancelaFaturamento; virtual;
  end;

var
  retorno : String;
  BoxFaturamentoPecas: TBoxFaturamentoPecas;

implementation

uses FDB, Biblioteca, Empresas, OperacoesVendasPecas, FaturamentoVeiculos,
  FinanceiroCaixaEntradasPendencias, RelatorioNotasFiscais, ReemiteNFs, efuncoes,
  NfeGerenciamento, OperacoesPosVenda, ReemiteCF;

{$R *.dfm}

procedure TBoxFaturamentoPecas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FecharDs;
   Action :=caFree;
   BoxFaturamentoPecas := nil;
end;

procedure TBoxFaturamentoPecas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Pedido.Text <> '')  and
   (tblOrcamentoPecas.FieldByName('Status').AsString <> 'Faturado') then
    case MessageDlg('Cancela faturamento? (Esta operação não cancela o pedido)', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        CanClose :=  True;
        CancelaFaturamento;
       end;
      mrNo :
       begin
        CanClose := False;
       end;
    end;
end;

procedure TBoxFaturamentoPecas.CancelaFaturamento;
begin
  with tblNofisaFaturas do
   begin
//    Last;
    First;
    while not eof do
//    for I := 0 to RecordCount - 1 do
     delete;
   end;
end;

procedure TBoxFaturamentoPecas.CodigoTransportadoraExit(Sender: TObject);
begin
  QuantidadeVolumes.SetFocus;
end;

procedure TBoxFaturamentoPecas.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
     Close;
    end;
  {: troca ENTER por TAB}
  if key = #13 then
  begin
//    Perform (CM_DialogKey, VK_TAB, 0);
//    key:=#0;
//    if (ataSourceNofisaFaturas.State in [dsEdit]) then
    if (dts2.State in [dsEdit]) then
      tblAuxFaturas2.Post
    else
      tblAuxFaturas2.Edit;
  end;
end;

procedure TBoxFaturamentoPecas.FormKeyPress(Sender: TObject; var Key: Char);
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
  end;
end;

procedure TBoxFaturamentoPecas.FormShow(Sender: TObject);
begin
//  Fdb1.AtualizaDebitoCliente(tblPessoas.FieldByName('id_Clientes').AsInteger)
  EnableDisableButtons(False, False);
  NFGerada := False;
  AbrirDs;
  if BoxEmpresas.Feira then
     DadosAd01.Text := Substr(BoxEmpresas.Endereco_Feira,1,50);
  Pedido.SetFocus;
end;

procedure TBoxFaturamentoPecas.PedidoExit(Sender: TObject);
var
  i: Integer;
begin
NFGerada := False;
if Pedido.Text = '' then
   Pedido.Text := '0';
idPedido := StrToInt(Pedido.Text);
if StrtoInt(pedido.Text) = 0 then
  begin
   SpeedButton1.Click;
   Pedido.SetFocus;
  end
else
  begin
    with tblOrcamentoPecas do
      begin
       if idPedido<>0 then
         begin
          Close;
          parambyname( 'idOrcamentoPecas' ).AsInteger := idPedido;
          ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          Open;
          Last;
          First;
          if recordcount = 0  then
            begin
             showmessage('Pedido inexistente.');
             Pedido.SetFocus;
            end
          else
            begin
             if FieldByName('Status').AsString = 'Em edição' then
                begin
                  showmessage('Pedido em edição.');
                  Pedido.SetFocus;
                end;
             if FieldByName('Status').AsString = 'Pendente' then
                begin
                  showmessage('Pedido pendente de autorização.');
                  Pedido.SetFocus;
                end;
            end;
         end;
      end;
      With tblOrcamentoPecasRecebimento do
       begin
        Close;
        ParamByName('idOrcamentoPecas').AsInteger := idPedido;
        Open;
       end;
      {Pega um sequence novo para a NF}

       IBQuery1.Open;
       IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
       IBQuery1.Close;
{
       with tblOrcamentoPecasRecebimento do
         begin
          First;
          while not eof do
            begin
             tblNofisaFaturas.Insert;
             tblNofisaFaturas.FieldByName('Id_Formas_Pagamento').AsInteger :=
               FieldByName('Id_Formas_Pagamento').AsInteger;
             tblNofisaFaturas.FieldByName('Id_Nofisa').AsInteger :=  IdNofisa;
             tblNofisaFaturas.FieldByName('Vencimento').AsDateTime :=
               FieldByName('Vencimento').AsDateTime;
             tblNofisaFaturas.FieldByName('Valor').AsCurrency :=
               FieldByName('Valor_devido').AsCurrency;
             tblNofisaFaturas.Post;
             Next;
            end;
         end;
       with tblNofisaFaturas do
         begin
          Close;
          ParamByName('Id').AsInteger := IdNofisa;
          Open;
          Last;
          First;
          for I := 1 to RecordCount do
           begin
            Edit;
            FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
              IntToStr(i);
            Post;
            Next;
           end;
         end;
         }

   i:=1;
   DataSourceSerienf.DataSet.Close;
   tblserienf.ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   DataSourceSerienf.DataSet.Open;
   DataSourceSerienf.DataSet.first;
   SerieNF.Items.Clear;
   repeat
     SerieNF.Items.AddObject(DataSourceSerieNF.DataSet.FieldByName('SerieNF').AsString,
      Pointer(i));
     i:= i+1;
     DataSourceSerienf.DataSet.next;
   until DataSourceSerienf.DataSet.Eof;
   with tblPessoas do
   begin
     Close;
     ParamByName('id').AsInteger := tblOrcamentoPecas.FieldByName('Id_Clientes').AsInteger;
     Open;
     CodigoCliente.Text := IntToStr(FieldByName('ID_Clientes').AsInteger);
     NomeCliente.Text := FieldByName('Nome').AsString;
     CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);
   end;
   SerieNF.Enabled := True;
   SerieNF.ItemIndex := 0;
   SerieNF.SetFocus;
   if tblPessoas.FieldByName('Codigo_Municipio').AsString = null then
     begin
       Showmessage('Atualize o cadastro do cliente.');
       Pedido.SetFocus;
     end;
  end;
end;

procedure TBoxFaturamentoPecas.PesoBrutoExit(Sender: TObject);
begin
  BitBtn3.SetFocus;
end;

procedure TBoxFaturamentoPecas.PRIMEIROVENCIMENTOExit(Sender: TObject);
begin
 if (PrimeiroVencimento.Date = DataAtual) or (PrimeiroVencimento.Date < DataAtual)then
   begin
     Showmessage('O primeiro vencimento precisa ser uma data futura.');
     PrimeiroVencimento.SetFocus;
   end;
end;

procedure TBoxFaturamentoPecas.QuantidadeVolumesExit(Sender: TObject);
begin
  PesoBruto.SetFocus;
end;

procedure TBoxFaturamentoPecas.SerieNFExit(Sender: TObject);
begin
   EnableDisableButtons(True, False);
   with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where SerieNF = :idSerie and ID_Concessionaria = :id';
       ParamByName('idSerie').AsString := SerieNF.Text;
       ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
    end;
   if SerieNF.Text <> 'e' then
    begin
     showmessage('Série inválida');
     SerieNF.SetFocus;
    end
   else
     CodigoTransportadora.SetFocus;
end;

procedure TBoxFaturamentoPecas.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de peças','Orcamento_pecas',
      ['Id_orcamento_pecas','Id_Cliente','Id_Concessionaria'],
      ['Sequência:','Cliente:','Concessionária:',''],
      'Id_Cliente','Id_Orcamento_Pecas',Fdb1.SQLConnection1,'Status = '+ '''' + 'Aprovado'+ '''' + ' or Status =',
         'Pendente','idconcessionaria');
     with tblOrcamentoPecas do
     begin
        Close;
        Parambyname('idOrcamentoPecas').AsInteger := StrToInt(Retorno);
        ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        Pedido.Text := tblOrcamentoPecas.FieldByName('Id_Orcamento_pecas').Text;
     end;
end;

procedure TBoxFaturamentoPecas.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Transportadora = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoTransportadora.Text :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeTransportadora.Text := tblPessoas.FieldByName('Nome').Text;

     end;
     CodigoTransportadora.SetFocus;
end;

procedure TBoxFaturamentoPecas.tblNofisaFaturasBeforePost(DataSet: TDataSet);
begin
  tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger := idNofisa;
end;

procedure TBoxFaturamentoPecas.tblOrcamentoPecasAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFaturamentoPecas.tblOrcamentoPecasAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFaturamentoPecas.tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
begin
  with tblOrcamentoPecasDados do
  begin
    Close;
    Parambyname('idOrcamentoPecas').AsString := IntToStr(IdPedido);
    Open;
//    Last;
    First;
//    for i := 0 to RecordCount -1 do
    while not eof do
      begin
        delete;
      end;
  end;
  with tblOrcamentoPecasRecebimento do
  begin
    Close;
    Parambyname('idOrcamentoPecas').AsString := IntToStr(IdPedido);
    Open;
//    Last;
    First;
//    for i := 0 to RecordCount -1 do
    while not eof do
      begin
        delete;
      end;
  end;
end;

procedure TBoxFaturamentoPecas.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxFaturamentoPecas.BitBtn1Click(Sender: TObject);
begin
      {Pega um sequence novo para a NF}
    //   IBQuery1.Open;
  //     IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
//       IBQuery1.Close;
       with tblOrcamentoPecasRecebimento do
         begin
         if recordcount <> 0 then
          begin
           First;
           while not eof do
            begin
             tblAuxFaturas2.Insert;
             tblAuxFaturas2.FieldByName('Id_Formas_Pagamento').AsInteger :=
               FieldByName('Id_Formas_Pagamento').AsInteger;
             tblAuxFaturas2.FieldByName('Id_Nofisa').AsInteger :=  IdNofisa;
             tblAuxFaturas2.FieldByName('Vencimento').AsDateTime :=
               FieldByName('Vencimento').AsDateTime;
             tblAuxFaturas2.FieldByName('Valor').AsCurrency :=
               FieldByName('Valor_devido').AsCurrency;
             tblAuxFaturas2.Post;
             Next;
            end;
          end;
         end;
       with tblAuxFaturas2 do
         begin
          Close;
          Open;
         end;
end;

procedure TBoxFaturamentoPecas.BitBtn2Click(Sender: TObject);
var
 i: integer;
 x: extended;
 idPgto : Integer;
begin
 if NumeroCV.Text = '' then
   begin
     showmessage('Informe o número do CV.');
   end
 else
 begin
  x := 0;
  idPgto := tblAuxFaturas2.FieldByName('Id_Formas_Pagamento').AsInteger;
  if idpgto < 1 then
   begin
     Showmessage('Preencha a forma de pagamento');
     Cartao.Setfocus;
   end
  else
   begin
     For i := 1 to StrToInt(NumeroParcelas.Text) do
      begin
       with tblAuxFaturas2 do //tblNofisaFaturas do
        begin
          if not (dts2.State in [dsInsert]) then
             Insert;
          FieldByName('Numero_CV').AsString := NumeroCV.Text;
          FieldByName('Id_Formas_Pagamento').AsInteger := idPgto;//IBQuery4.FieldByName('Id_Formas_Pagamento').AsInteger;
          FieldByName('Forma_Pagamento').AsString := Cartao.Text;
          FieldByName('Id_Nofisa').AsInteger :=  IdNofisa;
          FieldByName('Vencimento').AsDateTime := PrimeiroVencimento.Date;
          if i > 1 then
            FieldByName('Vencimento').AsDateTime := IncMonth(PrimeiroVencimento.Date,(i-1));
          FieldByName('Valor').AsCurrency := (Round((ValorCartao.Value/StrToInt(NumeroParcelas.Text))*100))/100;
//          if i = strToInt(NumeroParcelas.Text) then
  //          FieldByName('Valor').AsCurrency := ((Round(ValorCartao.Value*100))/100) - x;
          x := x + FieldByname('Valor').AsCurrency;
          Post;
        end;
       Next;
      end;
   end;
 end;
end;

procedure TBoxFaturamentoPecas.BitBtn3Click(Sender: TObject);
begin
  tblAuxFaturas2.Insert;
  Cartao.Enabled := True;
  with tblFormasPagamento do
  begin
     close;
     SelectSQL.Clear;
     SelectSQL.add('select * from FORMAS_PAGAMENTO');
     SelectSql.Add('Where Cartao ='+''''+'T'+'''');
     open;
  end;
  NumeroCV.SetFocus;
end;

procedure TBoxFaturamentoPecas.BtnConfirmaClick(Sender: TObject);
var
  Gerar : Boolean;
begin
 begin
         //copiando da tabela auxiliar para o banco.
        with tblAuxFaturas2 do
        begin
          tblNofisaFaturas.Close;
          tblNofisaFaturas.ParamByName('id').AsInteger := idNofisa;
          tblNofisaFaturas.Open;
          while not eof do
          begin
            tblNofisaFaturas.Insert;
            tblNofisaFaturas.FieldByName('id_nofisa').AsInteger := FieldByName('id_nofisa').AsInteger;
            tblNofisaFaturas.FieldByName('Fatura').AsString := FieldByName('Fatura').AsString;
            tblNofisaFaturas.FieldByName('Vencimento').AsString := FieldByName('Vencimento').AsString;
            tblNofisaFaturas.FieldByName('Valor').AsString := FieldByName('Valor').AsString;
            tblNofisaFaturas.FieldByName('Fatura').AsString := FieldByName('Fatura').AsString;
            tblNofisaFaturas.FieldByName('id_formas_Pagamento').AsString := FieldByName('id_formas_Pagamento').AsString;
            tblNofisaFaturas.FieldByName('Numero_CV').AsString := FieldByName('Numero_CV').AsString;
            tblNofisaFaturas.Post;
            Next;
          end;
        end;
        // fim
  if (Copy(BoxEmpresas.CNPJ,1,8) = Copy(CNPJ,1,8)) then
     Showmessage('Não é possivel fazer faturamento para mesmo CNPJ.')
  else
   begin

    if not ConfereVencimento(tblNofisaFaturas) then
     showmessage('Geração cancelada.'+#13+'Há vencimentos passados.')
    else
    begin
      if (tblPessoas.FieldByName('id_Clientes').AsInteger = 1) and
       (tblSerieNF.FieldByName('SerieNF').AsString <> 'CF') then
        Showmessage('NF gerada para consumidor. Só pode ser emitido CF.')
      else
      begin
      if (not NFGerada) then
       begin
        tblNofisaFaturas.Close;
        tblNofisaFaturas.Open;
        Gerar := True;
        IBQuery2.Close;
        IBQuery2.SQL.Clear;
        IBQuery2.Sql.Add('Select sum(Nofisa_faturas.valor) as Valor');
        IBQuery2.SQL.Add('from Nofisa_faturas');
        IBQuery2.SQL.Add('where Nofisa_faturas.Id_Nofisa =');
        IBQuery2.Sql.Add(':idNofisa');
        IBQuery2.Parambyname('idNofisa').AsString := IntToStr(IdNofisa);
        IBQuery2.Open;
        if IBQuery2.FieldByName('Valor').AsFloat =
           tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat then
           begin
             case MessageDlg('Confirma geração da NF?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes:
               begin
                 with tblNofisaFaturas do
                   begin
                     First;
                     while not eof do
                      begin
                        if (FieldByName('Vencimento').AsDateTime > DataAtual) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 5) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 9) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 13) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 10) then
                          if//(not tblPessoas.FieldByName('Fabricante').AsBoolean ) and
                            (FDB1.ClienteComDebito(StrToInt(CodigoCliente.Text))) then
                           begin
                            Showmessage('Este cliente tem débitos em aberto.'+#13+'Faturamento cancelado.');
                            Gerar := False;
                           end;
                        Next;
                      end;
                   end;
                 if Gerar then
                   GeraNF;
               end;
             end;
             Pedido.Text := '';
             ValorLiquidoVenda.Text := '';
             BtnImprimir.SetFocus;
           end
        else
           begin
             showmessage('A soma das faturas não confere com o total da nota.');
             with tblNofisaFaturas do
               begin
                Close;
                ParamByName('id').asInteger := idNofisa;//tblAuxFaturas2.FieldByName('id_nofisa').asInteger;
                Open;
                while not tblNofisaFaturas.eof do
                 begin
                  delete;
                 end;
               end;
             BtnNovo.SetFocus;
           end;
       end
      else
       begin
        showmessage('Não há NF para gerar');
       end;
      end;
    end;
   end;
 end;
end;

procedure TBoxFaturamentoPecas.BtnConfirmaPagamentoClick(Sender: TObject);
begin
  Fdb1.AtualizaDataAtual;
  if (FormaPagamento.Text = 'Dinheiro') and (Vencimento.Date<>DataAtual) then
    begin
      showmessage('Forma de pagamento incompatível com o vencimento');
      FormaPagamento.SetFocus;
    end
  else
   if (FormaPagamento.Text = 'Cheque') and (Vencimento.Date<>DataAtual) then
     begin
      showmessage('Forma de pagamento incompatível com o vencimento');
      FormaPagamento.SetFocus;
     end
   else
    begin
      tblAuxFaturas2.FieldByName('Vencimento').AsDateTime := Vencimento.Date;
      tblAuxFaturas2.FieldByName('forma_pagamento').AsString := FormaPagamento.Text;
      tblAuxFaturas2.Post;
    end;
end;

procedure TBoxFaturamentoPecas.GeraNF;
var
  i: Integer;
  o: integer;
  UltRegistro : Integer;
  CodigoFiscal : String;
  TemICMSSubstituicao : Boolean;
  TemICMS : Boolean;
  DescricaoCodigoFiscal : String;
  DescontoPeca : Extended;
  DescontoTotal : Extended;
  BaseICMSPeca : Extended;
  ICMSPeca : Extended;
  ValorTotalPeca : Extended;
begin
// try
  NFGerada := True;
  {Pegar número da NF}
  with tblSerieNF do
   begin
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
   end;
  {As quantidades do estoque foram baixadas no pedido}
 try
  {Gravar dados da NF - sada}
  PrimeiroCFOP := '';
  SegundoCFOP := '';
  TemICMSSubstituicao := False;
  TemICms := False;
  BaseICMS := '0';
  ValICMS := '0';
  UltRegistro := 0;
  o := 0;
  i := 0;
  with tblOrcamentoPecasDados do
    begin
      Close;
      ParamByName('idOrcamentoPecas').AsInteger := idPedido;
      Open;
      Last;
      UltRegistro := TblOrcamentoPecasDados.RecNo;
      First;
      while not eof do
        begin
         o := i;
         tblPecas.Close;
         tblPecas.ParamByName('id').AsString :=
           tblOrcamentoPecasDados.FieldByName('id_pecas').AsString;
         tblPecas.Open;
         tblPecasEstoque.Close;
         tblPecasEstoque.ParamByName('idPecas').AsString :=
           tblOrcamentoPecasDados.FieldByName('id_pecas').AsString;
         tblPecasEstoque.ParamByName('idConcessionaria').AsString :=
           tblOrcamentoPecas.FieldByName('id_Concessionaria').AsString;
         tblPecasEstoque.Open;
         tblSada.Insert;
         tblSada.FieldByName('Id_Nofisa').AsInteger := IdNofisa;
         tblSada.FieldByName('Id_Concessionaria').AsInteger :=
           tblOrcamentoPecas.FieldByName('Id_Concessionaria').AsInteger;
         tblSada.FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
         tblSada.FieldByName('Codigo').AsString :=
           tblPecas.FieldByName('Codigo').AsString;
         tblSada.FieldByName('Id_pecas').AsInteger :=
           tblPecas.FieldByName('id_pecas').AsInteger;
         tblSada.FieldByName('Descricao').AsString :=
           tblPecas.FieldByName('Descricao').AsString;
         tblSada.FieldByName('Qtde').AsInteger := FieldByName('Qtde_Orcada').AsInteger;
         tblSada.FieldByName('Unidade').AsString :=
           tblPecas.FieldByName('Unidade').AsString;
         tblSada.FieldByName('Cst').AsString :=
           tblPecas.FieldByName('Cst').AsString;
         tblSada.FieldByName('Subst').AsBoolean :=
           tblPecas.FieldByName('Subst_Trib').AsBoolean;
         if tblPessoas.FieldByName('Estado').AsString = 'RS' then
           tblSada.FieldByName('Aliq_Icms').Value :=
             BoxEmpresas.Aliquota_ICMS1.Value
         else
           tblSada.FieldByName('Aliq_Icms').AsString :=
             BoxEmpresas.Aliquota_ICMS2.Text;
         tblSada.FieldByName('Icms').AsFloat :=
           (tblSada.FieldByName('Aliq_Icms').AsFloat *
           FieldByName('Valor_Nesta_Venda').AsFloat) *
           tblSada.FieldByName('Qtde').AsFloat;
         if tblSada.FieldByName('Subst').AsBoolean then
            TemICMSSubstituicao := True
         else
            TemICMS := True;
//         tblSada.FieldByName('Base_ICMS').AsInteger := 0;
         tblSada.FieldByName('Base_ICMS').AsFloat :=
            FieldByName('Valor_Nesta_Venda').AsFloat *
            tblSada.FieldByName('Qtde').AsFloat;    //Base de ICMS sem desconto

         tblSada.FieldByName('ICMS').AsInteger := 0;
         tblSada.FieldByName('Desconto').AsInteger := 0;
         if not tblSada.FieldByName('Subst').AsBoolean then
           begin
             tblSada.FieldByName('Base_ICMS').AsFloat :=
               FieldByName('Valor_Nesta_Venda').AsFloat *
               tblSada.FieldByName('Qtde').AsFloat;    //Base de ICMS sem desconto
             tblSada.FieldByName('ICMS').AsFloat :=
               tblSada.FieldByName('Base_ICMS').AsFloat *
               tblSada.FieldByName('Aliq_Icms').AsFloat;
             BaseICMS := FloatToStr(StrToFloat(BaseIcms) +
               (FieldByName('Valor_Nesta_Venda').AsFloat) *
                FieldByName('Qtde_Orcada').AsFloat);
             ValICMS := FloatToStr(StrToFloat(ValICMS) +
               tblSada.FieldByName('ICMS').AsFloat);
  {se existir desconto geral recalcula base de ICMS e valor do ICMS do produto}
             if (tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat -
               tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat) <> 0 then
               begin
                ValorTotalPeca := (FieldByName('Valor_Nesta_Venda').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat);
                DescontoPeca := ValorTotalPeca *
                 (tblOrcamentoPecas.FieldByName('Desconto').AsFloat /
                  tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat);
                DescontoPeca := RoundTo(DescontoPeca, -2);
                BaseICMSPeca := ValorTotalPeca - DescontoPeca;
                ICMSPeca := BaseICMSPeca * tblSada.FieldByName('Aliq_Icms').AsFloat;
                tblSada.FieldByName('Base_Icms').AsFloat := BaseICMSPeca;
                tblSada.FieldByName('ICMS').AsFloat := ICMSPeca;
                tblSada.FieldByName('Desconto').AsFloat := DescontoPeca;
                DescontoTotal := DescontoTotal + DescontoPeca;
               end;
           end;
         if tblSada.FieldByName('Subst').AsBoolean then
           begin
             BaseICMSPeca := (FieldByName('Valor_Nesta_Venda').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat);
             if (tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat -
               tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat) <> 0 then
               begin
                ValorTotalPeca := (FieldByName('Valor_Nesta_Venda').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat);
                DescontoPeca := ValorTotalPeca *
                 (tblOrcamentoPecas.FieldByName('Desconto').AsFloat /
                  tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat);
                BaseICMSPeca := ValorTotalPeca - DescontoPeca;
                DescontoPeca := RoundTo(DescontoPeca, -2);
                tblSada.FieldByName('Desconto').AsFloat := DescontoPeca;
                DescontoTotal := DescontoTotal + DescontoPeca;
               end;
                //acrescido em função ICMS_ST em vigor 01/01/2019     alterado em 10/01/2020
                //Campos para atacado
                tblSada.fieldByName('vBC_STRet').AsCurrency := tblPecas.fieldByName('vBC_STRet').AsCurrency;
                tblSada.fieldByName('pST').AsCurrency := tblPecas.fieldByName('pST').AsCurrency;
                tblSada.fieldByName('vICMS_STRet').AsCurrency := tblPecas.fieldByName('vICMS_STRet').AsCurrency *
                                                                 tblSada.FieldByName('Qtde').AsFloat;
                tblSada.FieldByName('ICMS_Substituto').AsCurrency := tblPecas.fieldByName('ICMS').AsCurrency *
                                                                 tblSada.FieldByName('Qtde').AsFloat;

                //Campos para consumidor final
                tblSada.fieldByName('vBC_Efet').AsCurrency := BaseICMSPeca;//tblSada.FieldByName('Base_Icms').AsFloat;//tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency;
                tblSada.fieldByName('pICMS_Efet').AsCurrency := BoxEmpresas.Aliquota_ICMS1.Value;
                tblSada.fieldByName('vICMS_Efet').AsCurrency := tblsada.fieldByName('vBC_Efet').AsCurrency *
                                                    tblsada.FieldByName('pICMS_Efet').AsCurrency;
                tblSada.FieldByName('Base_Icms').AsFloat := 0;//BaseICMSPeca;
                tblSada.FieldByName('ICMS').AsFloat := 0;//ICMSPeca;
                BaseICMSPeca := 0;
           end;
         tblSada.FieldByName('Custo').AsString :=
           tblPecasEstoque.FieldByName('Cst_Medio').AsString;
         tblSada.FieldByName('Preco').AsCurrency :=
           FieldByName('Valor_Nesta_Venda').AsCurrency;
         if tblPessoas.FieldByName('Estado').AsString = 'RS' then
           begin
             tblSada.FieldByName('CFOP').AsString :=
               tblPecas.FieldByName('CFOP1').AsString;
             if PrimeiroCFOP = '' then
               PrimeiroCFOP := tblPecas.FieldByName('CFOP1').AsString;
             if (PrimeiroCFOP <> tblPecas.FieldByName('CFOP1').AsString) and
                (SegundoCFOP = '') then
                SegundoCFOP := tblPecas.FieldByName('CFOP1').AsString;
           end
         else
           begin
             tblSada.FieldByName('CFOP').AsString :=
               tblPecas.FieldByName('CFOP2').AsString;
             if PrimeiroCFOP = '' then
               PrimeiroCFOP := tblPecas.FieldByName('CFOP2').AsString;
             if (PrimeiroCFOP <> tblPecas.FieldByName('CFOP2').AsString) and
                (SegundoCFOP = '') then
                SegundoCFOP := tblPecas.FieldByName('CFOP2').AsString;
           end;
         tblSada.FieldByName('St_Cofins').AsBoolean :=
           tblPecas.FieldByName('St_Cofins').AsBoolean;
         if UltRegistro + 1 = tblSada.RecNo then //ultimo registro de dados do orcamento de pecas
         begin
          if  ((tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat -
            tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat) <> DescontoTotal) then
           begin
              DescontoPeca := DescontoPeca + (RoundTo(tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat, -2) -
               RoundTo(tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat, -2) -
               RoundTo(DescontoTotal, -2));
              DescontoPeca := RoundTo(DescontoPeca, -2);
               tblSada.FieldByName('Desconto').AsFloat := DescontoPeca;
           end;


         end;
         tblSada.Post;
         Next;
        end;

    end;
{Pegar codigo Fiscal}
   with tblSada do
     begin
       Close;
       ParamByName('idNofisa').AsInteger := IdNofisa;
       Open;
       first;
       CodigoFiscal := tblSadaCFOP.asString ;
       Next;
       while not eof do
        begin
         if POS(tblSadaCFOP.AsString, CodigoFiscal) = 0 then
          begin
           CodigoFiscal := CodigoFiscal + '/' + tblSadaCFOP.asString ;
          end;
          Next;
        end;
     end;
{Pegar descricao codigo fiscal}
  With IBQuery3 do
  begin
    DescricaoCodigoFiscal := '';
    Close;
    SQL.Clear;
    SQL.Add('select * from Cfop');
    if TemICMS then
     begin
       Sql.Add('Where Pecas_Com_ICMS = '+''''+'T'+'''');
       Open;
       DescricaoCodigoFiscal := FieldByName('Descricao').AsString;
       Close;
     end;
    if TemICMSSubstituicao then
     begin
       SQL.Clear;
       SQL.Add('select * from Cfop');
       Sql.Add('Where Pecas_Substituicao_ICMS = '+''''+'T'+'''');
       Open;
       if TemICMS then
         DescricaoCodigoFiscal := DescricaoCodigoFiscal + '/' +
           FieldByName('Descricao').AsString
       else
         DescricaoCodigoFiscal := FieldByName('Descricao').AsString;
       Close;
     end;
   end;
  {Gravar Nofisa}
  with tblNofisa do
  begin
     Insert;
     FieldByName('id_nofisa').AsInteger := IdNofisa;
     FieldByName('Id_Concessionaria').AsInteger :=
       tblOrcamentoPecas.FieldByName('Id_Concessionaria').AsInteger;
     FieldByName('Id_Clientes').AsInteger :=
       tblOrcamentoPecas.FieldByName('Id_clientes').AsInteger;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('SerieNF').AsString := SerieNF.Text;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     FieldByName('Origem').AsString := 'P';
     FieldByName('ENT_SAI').AsString := 'S';
     FieldByName('vendedor').AsInteger :=
       tblOrcamentoPecas.FieldByName('Id_vendedor').AsInteger;
     FieldByName('Desc_Pec').AsFloat := //DescontoTotal;
       tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat -
       tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsFloat;
     FieldByName('Base_ICMS').AsFloat := StrToFloat(BaseICMS);
     FieldByName('Val_ICMS').AsFloat := StrToFloat(ValICMS);
     if FieldByName('Desc_pec').AsFloat <> 0 then
      begin
       FieldByName('Base_ICMS').AsFloat := FieldByName('Base_ICMS').AsFloat - (FieldByName('Base_ICMS').AsFloat
         *(FieldByName('Desc_Pec').AsFloat / tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat));
       FieldByName('Val_ICMS').AsFloat := FieldByName('Val_ICMS').AsFloat - (FieldByName('Val_ICMS').AsFloat
         *(FieldByName('Desc_Pec').AsFloat / tblOrcamentoPecas.FieldByName('Total_Nesta_Venda').AsFloat));
      end;
     FieldByName('Tot_prod').AsCurrency :=
       tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency;
     FieldByName('Tot_Nota').AsCurrency :=
       tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency;
     FieldByName('Frete_Tipo').AsString := IntToStr(Frete.ItemIndex + 1);
     FieldByName('Qtde_Prod').AsInteger := o;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Dados_Ad01').AsString := Substr(DadosAd01.Text,1,50);
     FieldByName('Dados_Ad02').AsString := Substr(DadosAd02.Text,1,50);
     FieldByName('Dados_Ad03').AsString := Substr(DadosAd03.Text,1,50);
     FieldByName('Dados_Ad04').AsString := Substr(DadosAd04.Text,1,50);
     FieldByName('Dados_Ad05').AsString := Substr('Sequência do cliente:'+ FieldByName('Id_Clientes').AsString,1,60);
     FieldByName('Codigo_fiscal').AsString := CodigoFiscal;
     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
     FieldByName('Quantidade_Volumes').AsString := QuantidadeVolumes.Text;
     FieldByName('Peso_Bruto').AsString := PesoBruto.Text;
     FieldByName('Cod_Trans').AsString := CodigoTransportadora.Text;
     Post;
  end;
  {Gravar Nofisa faturas}
  with tblNofisafaturas do
  begin
     Close;
     Open;
     First;
//     for I := 1 to RecordCount do
     i := 0;
     while not eof do
       begin
         i := i + 1;
         Edit;
         FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
            IntToStr(i);
         Post;
         Next;
       end;
  end;
  {Gravar Cx ou contas a receber}
  With TblNofisaFaturas do
    begin
      Last;
      First;
      i := 0;
//      for i := 1 to RecordCount do
      while not eof do
        begin
           i := i + 1;
           Fdb1.AtualizaDataAtual;
           if FieldByName('Vencimento').AsString = DateToStr(DataAtual) then
            begin
              if tblNofisaFaturas.RecordCount = 1 then
                 begin
                   tblNofisa.Edit;
                   tblNofisa.FieldByName('Forma_Pagamento').AsString := 'V';
                   tblNofisa.Post;
                 end;
             {Gravar Caixa}
              with tblcaixa do
                begin
                  Insert;
                  FieldByName('id_clientes').AsInteger :=
                    tblOrcamentoPecas.FieldByName('Id_clientes').AsInteger;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblOrcamentoPecas.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('Documento').AsString :=
                    tblNofisaFaturas.FieldByName('Fatura').AsString;
                  FieldByName('Origem').AsString := 'P';
                  FieldByName('Natureza').AsString := 'E';
                  FieldByName('Data_lancamento').AsDateTime :=
                    tblNofisa.FieldByName('Emissao').AsDateTime;
                  FieldByName('Valor').AsCurrency :=
                    tblNofisaFaturas.FieldByName('Valor').AsCurrency;
                  FieldByName('Historico').AsString := Substr('Vlr.ref.venda peças - ' + tblPessoas.FieldByName('Nome').AsString,1,60);
                  FieldByName('Status').AsString := 'Pendente';
                  Post;
                end
            end
           else
             begin
             {Gravar conta a receber}
              with tblCreceber do
                begin
                  Insert;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblOrcamentoPecas.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('id_clientes').AsInteger :=
                    tblOrcamentoPecas.FieldByName('Id_clientes').AsInteger;
                  FieldByName('Documento').AsString :=
                    tblNofisaFaturas.FieldByName('Fatura').AsString;
                  FieldByName('Parcela').AsString := IntToStr(i);
                  FieldByName('Vezes').AsString :=
                    IntToStr(tblNofisaFaturas.RecordCount);
                  FieldByName('Id_Forma_Pagamento').AsInteger :=
                    tblNofisaFaturas.FieldByName('Id_Formas_pagamento').AsInteger;
                  FieldByName('Origem').AsString := 'P';
                  FieldByName('Vencimento').AsDateTime :=
                    tblNofisaFaturas.FieldByName('Vencimento').AsDateTime;
                  FieldByName('Valor').AsCurrency :=
                    tblNofisaFaturas.FieldByName('Valor').AsCurrency;
                  FieldByName('Emissao').AsDateTime :=
                    tblNofisa.FieldByName('Emissao').AsDateTime;
                  FieldByName('Historico').AsString := 'Vlr.ref.venda peças';
                  FieldByName('Status').AsString := 'Processado';
                  FieldByName('Numero_CV').AsString := tblNofisaFaturas.FieldByName('Numero_CV').AsString;
                  Post;
                end;
             end;
           Next;
        end;
    end;
  {Excluir o pedido}
    with tblOrcamentoPecas do
      begin
        Edit;
        FieldByName('Status').AsString := 'Processado'; //delete;
        FieldByName('Numero_Nota_Fiscal').AsInteger := idNumeroNotaFiscal;
        Post;
      end;
  {Voltar SQL da tblSerienf}
  with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where ID_Concessionaria = :id';
       Open;
    end;
    Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
  except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;
  showmessage('Dados gravados');
end;


procedure TBoxFaturamentoPecas.BtnExcluiClick(Sender: TObject);
begin
  case MessageDlg('Excluir fatura?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: tblAuxFaturas2.Delete;
    end;
  BtnNovo.SetFocus;
end;

procedure TBoxFaturamentoPecas.BtnImprimirClick(Sender: TObject);
begin
if NFGerada then
 if tblNofisa.FieldByName('Serienf').AsString = 'e' then
  begin
   if not Assigned(BoxNFeGerenciamento) then
    BoxNFeGerenciamento := TBoxNFeGerenciamento.Create(Self);
   BoxNFeGerenciamento.Show;
  end
 else
  begin
   if not Assigned(BoxReemiteCF) then
    BoxReemiteCF := TBoxReemiteCF.Create(Self);
   BoxReemiteCF.Show;
   if BoxReemiteCF.EmitirCupomFiscal(IntToStr(IdNumeroNotaFiscal)) then
    BoxReemiteCF.EmiteCF
  end
else
 showmessage('Primeiro gere a NF');
end;

procedure TBoxFaturamentoPecas.BtnNovoClick(Sender: TObject);
begin
  tblAuxFaturas2.Insert;
  with tblFormasPagamento do
  begin
     close;
     SelectSQL.Clear;
     SelectSQL.add('select * from FORMAS_PAGAMENTO');
     SelectSql.Add('Where Pecas ='+''''+'T'+'''');
     open;
  end;
  Vencimento.Date := DataAtual;
  EnableDisableControls(True);
  FormaPagamento.SetFocus;
end;

procedure TBoxFaturamentoPecas.BtnReceberClick(Sender: TObject);
begin
if NFGerada then
 begin
  if not Assigned(BoxFinanceiroCaixaEntradasPendencias) then
    BoxFinanceiroCaixaEntradasPendencias := TBoxFinanceiroCaixaEntradasPendencias.Create(Self);
  BoxFinanceiroCaixaEntradasPendencias.Show;
 end
else
 showmessage('Primeiro gere a NF'); 
end;

procedure TBoxFaturamentoPecas.EnableDisableButtons(Value : Boolean; Value1 : Boolean);
begin
  BtnNovo.Enabled := Value;
  BtnExclui.Enabled := Value;
  BtnConfirmaPagamento.Enabled := Value;
  BtnConfirma.Enabled := Value;
  Frete.Enabled := Value;
end;

procedure TBoxFaturamentoPecas.EnableDisableControls(Value: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
end;

procedure TBoxFaturamentoPecas.AbrirDs;
begin
  DataSourceOrcamentoPecas.Dataset.Open;
  DataSourceOrcamentoPecasRecebimento.Dataset.Open;
  DataSourceOrcamentoPecasDados.Dataset.Open;
  DataSourceSerieNF.Dataset.Open;
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceSada.Dataset.Open;
  DataSourceCreceber.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
  DataSourcePecas.Dataset.Open;
  DataSourcePecasEstoque.Dataset.Open;
  DataSourceCaixa.Dataset.Open;
end;

procedure TBoxFaturamentoPecas.FecharDs;
begin
  DataSourceOrcamentoPecas.Dataset.Close;
  DataSourceOrcamentoPecasRecebimento.Dataset.Close;
  DataSourceOrcamentoPecasDados.Dataset.Close;
  DataSourceSerieNF.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceSada.Dataset.Close;
  DataSourceCreceber.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourcePecas.Dataset.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourceCaixa.Dataset.Close;
  IBQuery2.Close;
  IBQuery3.Close;
  IBQuery1.Close;
end;

end.

