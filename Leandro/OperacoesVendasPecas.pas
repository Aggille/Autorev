unit OperacoesVendasPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ComCtrls, ToolWin, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, IBCustomDataSet, ExtCtrls,
  DBTables, IBQuery, IBSQL, rxToolEdit, rxCurrEdit, DBCtrls, Wwdbigrd, Wwdbgrid;

type
  TBoxVendasPecas = class(TForm)
    ToolBar1: TToolBar;
    DescricaoPeca: TJvDBMaskEdit;
    Label1: TLabel;
    Descricao: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Orcamento: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DataSourceOrcamentoPecas: TDataSource;
    tblOrcamentoPecas: TIBDataSet;
    DataSourcePecas: TDataSource;
    DataSourcePessoas: TDataSource;
    tblPessoas: TIBDataSet;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    CodigoCliente: TMaskEdit;
    CodigoPeca: TMaskEdit;
    tblPecas: TIBDataSet;
    Quantidade: TMaskEdit;
    tblOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasID_CLIENTES: TIntegerField;
    tblOrcamentoPecasTOTAL_VENDA: TIBBCDField;
    tblOrcamentoPecasTOTAL_NESTA_VENDA: TIBBCDField;
    tblOrcamentoPecasSTATUS: TIBStringField;
    IBQuery1: TIBQuery;
    IBQuery1ID_ORCAMENTO_PECAS: TLargeintField;
    BtnDesconto: TBitBtn;
    BtnCancelar: TBitBtn;
    tblOrcamentoPecasDados: TIBDataSet;
    DataSourceOrcamentoPecasDados: TDataSource;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS_DADOS: TIntegerField;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasDadosQTDE_ORCADA: TIntegerField;
    tblOrcamentoPecasDadosPRECO_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosVALOR_NESTA_VENDA: TIBBCDField;
    Label10: TLabel;
    Label9: TLabel;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasICMS: TIBBCDField;
    tblPecasPRECO: TIBBCDField;
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
    PrecoProduto: TJvDBMaskEdit;
    tblOrcamentoPecasDadosID_PECAS: TIntegerField;
    tblOrcamentoPecasDESCONTO: TIBBCDField;
    BtnConclui: TBitBtn;
    IBQuery2: TIBQuery;
    tblOrcamentoPecasVALOR_LIQUIDO_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosSTATUS: TIBStringField;
    BtnNovaVenda: TBitBtn;
    tblPecasEstoque: TIBDataSet;
    DataSourcePecasEstoque: TDataSource;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    PrecoVenda: TJvMaskEdit;
    Label12: TLabel;
    FormaPagamento: TDBLookupComboBox;
    BtnNovoPagamento: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExcluiPagamento: TBitBtn;
    BtnConcluiPagamento: TBitBtn;
    DBGrid2: TDBGrid;
    ValorDevido: TJvDBMaskEdit;
    Label13: TLabel;
    Label16: TLabel;
    BtnForma: TBitBtn;
    tblOrcamentoPecasRecebimento: TIBDataSet;
    DataSourceOrcamentoPecasRecebimento: TDataSource;
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
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS_RECEBIMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblOrcamentoPecasRecebimentoVENCIMENTO: TDateField;
    tblOrcamentoPecasRecebimentoTESTE: TStringField;
    tblOrcamentoPecasDadosTESTE: TStringField;
    tblOrcamentoPecasDadosCODIGO1: TStringField;
    tblOrcamentoPecasID_CONCESSIONARIA: TIntegerField;
    tblOrcamentoPecasID_VENDEDOR: TIntegerField;
    Label14: TLabel;
    CodigoVendedor: TMaskEdit;
    SpeedButton3: TSpeedButton;
    Label15: TLabel;
    NomeVendedor: TJvDBMaskEdit;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    tblPecas2: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    DataSourcePecas2: TDataSource;
    tblPecasMovimentacao: TIBDataSet;
    DataSourcePecasMovimentacao: TDataSource;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    Vencimento: TJvDBDateEdit;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    BtnNovoItem: TBitBtn;
    BtnExcluiItem: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    IBQuery3: TIBQuery;
    BtnConfirmaItem: TBitBtn;
    Label17: TLabel;
    Label4: TLabel;
    TotalBruto: TJvDBMaskEdit;
    Label11: TLabel;
    TotalNestaVenda: TJvDBMaskEdit;
    Label5: TLabel;
    Desconto: TJvDBMaskEdit;
    Label6: TLabel;
    ValorLiquidoVenda: TJvDBMaskEdit;
    BtnTransferencia: TBitBtn;
    StatusBar1: TStatusBar;
    tblOrcamentoPecasNUMERO_NOTA_FISCAL: TIntegerField;
    tblTransferencia: TIBDataSet;
    DataSourceTransferencia: TDataSource;
    tblTransferenciaID_TRANSFERENCIA: TIntegerField;
    tblTransferenciaID_CLIENTES: TIntegerField;
    tblTransferenciaID_CONCESSIONARIA: TIntegerField;
    tblTransferenciaTRANSFERIR_PARA: TIBStringField;
    tblTransferenciaNOVO_ID_CONCESSIONARIA: TIntegerField;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
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
    tblSadaALIQ_ICMS: TIBBCDField;
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
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    tblNofisaSAIDA: TDateField;
    tblNofisaHORA: TIBStringField;
    tblNofisaIE_SUBS: TIBStringField;
    tblNofisaDESC_PEC: TIBBCDField;
    tblNofisaDESC_OFI: TIBBCDField;
    tblNofisaBASE_ICMS: TIBBCDField;
    tblNofisaVAL_ICMS: TIBBCDField;
    tblNofisaBASE_ICM_S: TIBBCDField;
    tblNofisaVAL_ICMS_S: TIBBCDField;
    tblNofisaVAL_FRETE: TIBBCDField;
    tblNofisaVAL_SEGURO: TIBBCDField;
    tblNofisaVAL_OUTROS: TIBBCDField;
    tblNofisaVAL_IPI: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaISSQN: TIBBCDField;
    tblNofisaVAL_ISS: TIBBCDField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    tblNofisaPIS: TIBBCDField;
    tblNofisaCOFINS: TIBBCDField;
    tblNofisaCOD_TRANS: TIBStringField;
    tblNofisaFRETE_TIPO: TIBStringField;
    tblNofisaPLACA: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceSerieNF: TDataSource;
    DataSourceSada: TDataSource;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    IBQuery4: TIBQuery;
    tblPecasCST: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    BtnConsulta: TBitBtn;
    SpeedButton4: TSpeedButton;
    tblPecas3: TIBDataSet;
    IntegerField4: TIntegerField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IntegerField7: TIntegerField;
    DataSource1: TDataSource;
    BtnAutoriza: TBitBtn;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
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
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPecasCST_MEDIO: TIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tblPecasAfterPost(DataSet: TDataSet);
    procedure tblPecasAfterCancel(DataSet: TDataSet);
    procedure CodigoClienteExit(Sender: TObject);
    procedure CodigoPecaExit(Sender: TObject);
    procedure QuantidadeExit(Sender: TObject);
    procedure PrecoVendaExit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDescontoClick(Sender: TObject);
    procedure BtnNovoItemClick(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure BtnNovaVendaClick(Sender: TObject);
    procedure tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnFormaClick(Sender: TObject);
    procedure EnableDisableButtons(Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls(Value: Boolean; Value1: Boolean);
    procedure BtnNovoPagamentoClick(Sender: TObject);
    procedure BtnConcluiPagamentoClick(Sender: TObject);
    procedure FormaPagamentoCloseUp(Sender: TObject);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure BtnExcluiPagamentoClick(Sender: TObject);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnAtualizaTotaisClick(Sender: TObject);
    procedure BtnExcluiItemClick(Sender: TObject);
    procedure BtnConfirmaItemClick(Sender: TObject);
    procedure BtnTransferenciaClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure OrcamentoExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtnAutorizaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCliente : Integer;
    idPeca : Integer;
    idVendedor: Integer;
    idNofisa : Integer;
    idOrcamentoPecas : Integer;
    idNumeroNotaFiscal : Integer;
    estoque : Integer;
    CNPJ : String;
    procedure LimpaCampos;
    procedure AbrirDs;
    procedure CalculaTotais;
    procedure FecharDs;
    procedure FechaVenda;
    procedure GravaProduto;
    procedure CancelaVenda;
  end;

var
  BoxVendasPecas: TBoxVendasPecas;
  Retorno : String; //Integer;
  Status : String;
  DescontoCliente : String;
  
implementation

uses FDB, Biblioteca, Empresas, BoxDesconto;

{$R *.dfm}

procedure TBoxVendasPecas.FormaPagamentoCloseUp(Sender: TObject);
begin
  ValorDevido.SetFocus;
end;

procedure TBoxVendasPecas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action := caFree;
  BoxVendasPecas := nil;
end;

procedure TBoxVendasPecas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Orcamento.Text <> '') and (tblOrcamentoPecas.State in [dsEdit]) then
    case MessageDlg('Cancela venda?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        CanClose :=  True; //MessageDlg('Cancela venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
        CancelaVenda;
       end;
      mrNo :
       begin
        CanClose := False;
       end;
    end;
end;

procedure TBoxVendasPecas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxVendasPecas.FormShow(Sender: TObject);
begin
 //  CodigoCliente.Setfocus;
   BtnNovaVenda.SetFocus;
   EnableDisableButtons(False, True);
   AbrirDs;
   Quantidade.Text := '1';   
end;

procedure TBoxVendasPecas.DescontoExit(Sender: TObject);
begin
//   CalculaTotais;
   BtnForma.SetFocus;
end;

procedure TBoxVendasPecas.CalculaTotais;
begin
    {Somando total_venda}
    IBQuery2.Close;
    IBQuery2.SQL.Clear;
    IBQuery2.Sql.Add('select sum(Orcamento_pecas_dados.preco_Venda*');
    IBQuery2.Sql.Add('Orcamento_Pecas_dados.qtde_orcada) as Valor');
    IBQuery2.SQL.Add('from Orcamento_pecas_dados');
    IBQuery2.SQL.Add('where orcamento_pecas_dados.Id_Orcamento_Pecas =');
    IBQuery2.Sql.Add(':idOrcamentoPecas');
    IBQuery2.Parambyname('idOrcamentoPecas').AsString := IntToStr(IdOrcamentoPecas);
    IBQuery2.Open;
    With tblOrcamentoPecas do
    begin
   //  Edit;
     FieldByName('Total_Venda').AsCurrency := IBQuery2.FieldByName('Valor').AsCurrency;
  //   Post;
    end;
    {Somando total_nesta_Venda}
    IBQuery2.Close;
    IBQuery2.SQL.Clear;
    IBQuery2.Sql.Add('select sum(Orcamento_pecas_dados.valor_nesta_Venda*');
    IBQuery2.Sql.Add('Orcamento_Pecas_dados.qtde_orcada) as Valor');
    IBQuery2.SQL.Add('from Orcamento_pecas_dados');
    IBQuery2.SQL.Add('where orcamento_pecas_dados.Id_Orcamento_Pecas =');
    IBQuery2.Sql.Add(':idOrcamentoPecas');
    IBQuery2.Parambyname('idOrcamentoPecas').AsString := IntToStr(IdOrcamentoPecas);
    IBQuery2.Open;
    With tblOrcamentoPecas do
    begin
//     Edit;
     FieldByName('Total_Nesta_Venda').AsCurrency := IBQuery2.FieldByName('Valor').AsCurrency;
     FieldByName('Valor_Liquido_Venda').AsCurrency :=
        FieldByName('Total_Nesta_Venda').AsCurrency - FieldByName('Desconto').AsCurrency;
//     if status = 'Pendente' then
//        FieldByName('Status').AsString := 'Pendente';
//     Post;
    end;
End;

procedure TBoxVendasPecas.PrecoVendaExit(Sender: TObject);
begin
///   BtnConfirmaItem.Click;
//   BtnNovoItem.SetFocus;
  BtnConfirmaItem.SetFocus;
end;

procedure TBoxVendasPecas.GravaProduto;
begin
  with tblOrcamentoPecasDados do
    begin
  //    Open;
      Insert;
      FieldByName('Status').AsString := Status;
      FieldByName('Qtde_Orcada').AsString := Quantidade.Text;
      FieldByName('Preco_Venda').AsCurrency := tblPecas.FieldByName('Preco').AsCurrency;
      FieldByName('Valor_Nesta_Venda').AsCurrency := StrToCurr(PrecoVenda.Text);
      FieldByName('Id_Orcamento_Pecas').AsInteger := IdOrcamentoPecas;
      FieldByName('Id_Pecas').AsInteger := IdPeca;
      Post;
    end;
    CalculaTotais;
    LimpaCampos;
    BtnNovoItem.SetFocus;
end;

procedure TBoxVendasPecas.LimpaCampos;
begin
   DescricaoPeca.Text := '';
   PrecoProduto.Text := '';
   CodigoPeca.Text := '';
   Quantidade.Text := '';
   PrecoVenda.Text := '';
end;

procedure TBoxVendasPecas.OrcamentoExit(Sender: TObject);
begin
  if Orcamento.Text = '' then
    Orcamento.Text := '0';
  if StrToInt(orcamento.Text) = 0 then
   begin
    SpeedButton4.Click;
   end;
  if StrToInt(orcamento.Text) <> 0 then
   begin
     with tblOrcamentoPecas do
      begin
        Close;
        ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
        Open;
        if recordCount = 0 then
          Showmessage('Orcamento não encontrado.')
        else
          if FieldByName('Status').AsString = 'Pendente' then
            Showmessage('Orcamento pendente.')
          else
           if FieldByName('Status').AsString = 'Cancelado' then
             Showmessage('Orcamento cancelado.')
           else
             if FieldByName('Status').AsString = 'Aprovado' then
               Showmessage('Orcamento aprovado.')
             else
               if FieldByName('Status').AsString = 'Processado' then
                 Showmessage('Orcamento já faturado.')
               else
                 begin
                   Showmessage('Orcamento invalidado.');
                   Orcamento.SetFocus;
                 end;
           with tblOrcamentoPecasDados do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;
           with tblOrcamentoPecasRecebimento do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;

      end;
     CodigoCliente.text := tblOrcamentoPecas.FieldByName('Id_Clientes').AsString;
     CodigoVendedor.text := tblOrcamentoPecas.FieldByName('id_Vendedor').AsString;
     with tblpessoas do
      begin
         Close;
         parambyname( 'id' ).AsInteger := StrToInt(CodigoCliente.Text);
         Open;
         NomeCliente.Text := FieldByName('Nome').AsString;
         Close;
         parambyname( 'id' ).AsInteger := StrToInt(CodigoVendedor.Text);
         Open;
         NomeVendedor.Text := FieldByName('Nome').AsString;

      end;
      Orcamento.text := '';
   end;
  BtnConsulta.SetFocus;
end;

procedure TBoxVendasPecas.QuantidadeExit(Sender: TObject);
begin
PrecoVenda.SetFocus;
if (StrToInt(Quantidade.Text) < 1) or (Quantidade.Text = '') then
  Quantidade.SetFocus;
with tblPecasEstoque do
  begin
    Close;
    ParamByName('IdPecas').AsInteger := IdPeca;
    ParamByName('IdConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if RecordCount = 0 then
      Estoque := 0
    else
      Estoque := FieldByName('Estoque').AsInteger - FieldByName('EstoqOs').AsInteger;
  end;
if Estoque < StrToInt(Quantidade.Text) then
  begin
   Showmessage('Quantidade não disponível.');
   PrecoVenda.SetFocus; 
  end;

end;

procedure TBoxVendasPecas.CodigoPecaExit(Sender: TObject);
begin
if CodigoPeca.Text = '' then
  begin
   SpeedButton1.Click;
  end
else
  begin
    with tblPecas do
      begin
       if CodigoPeca.Text<>'' then
         begin
          Close;
          parambyname( 'id' ).AsString := CodigoPeca.Text;
          Open;
          if recordcount = 0  then
            begin
             SpeedButton1.Click;
            end;
          if (FieldByName('NCM').AsString = '') or (FieldByName('NCM').AsString = null) then
            begin
             Showmessage('Produto sem NCM válida.');
             Speedbutton1.Click;
            end;
          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          PrecoVenda.Text := FieldByName('Preco').Text;
//          PrecoVenda.Text := FieldByName('CST_MEdio').Text;  //ALTERAÇÃO YAMAVALE SAO LEOPOLDO
          IdPeca := FieldByName('Id_Pecas').AsInteger;
         end;
      end;
    with tblPecasEstoque do
      begin
       Close;
       ParamByName('Idconcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       PAramByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if tblPecasEstoque.RecordCount = 0 then
        begin
         showmessage('Essa peça não existe no estoque desta concessionária.');
         SpeedButton1.Click;
        end
       else
         Quantidade.SetFocus;
      end;
  end;
end;

procedure TBoxVendasPecas.CodigoVendedorExit(Sender: TObject);
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) = 0 then
  begin
   SpeedButton3.Click;
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idVendedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idVendedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoVendedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                Codigovendedor.SetFocus;
               end;
            end;
            NomeVendedor.Text := FieldbyName('Nome').Text;
         end;
      end;
  end;
  if orcamento.Text <> '' then  //Gravar Pedido de veiculos
    begin
      with tblOrcamentoPecas do
       begin
         FieldByName('Id_Vendedor').AsInteger := StrToInt(CodigoVendedor.Text);
         Post;
         Edit;
         CodigoPeca.SetFocus;
       end;
    end;
end;

procedure TBoxVendasPecas.BtnDescontoClick(Sender: TObject);
begin
//   Desconto.Enabled := True;
//   Desconto.Setfocus;

  application.CreateForm( TboxPedeDesconto, boxPedeDesconto );

  with boxPedeDesconto do begin
    showmodal;
    if modalResult = mrOk then
    begin
      if edtDesconto.value = 0 then
        tblOrcamentoPecas.fieldbyname( 'desconto' ).asFloat := edtValorDesconto.Value
      else
        tblOrcamentoPecas.fieldbyname( 'desconto' ).asFloat := tblOrcamentoPecas.fieldbyname( 'total_venda' ).asFloat *
                                                              ( edtDesconto.Value / 100 );

      calculaTotais();
    end;

  end;

end;

procedure TBoxVendasPecas.BtnExcluiItemClick(Sender: TObject);
begin
  case MessageDlg('Exclui item?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes :
     begin
     with tblOrcamentoPecasDados do
      begin
        if not DataSourceOrcamentoPecasDados.DataSet.IsEmpty then
         begin
          delete;
          showmessage('Item excluído.');
         end;
      end;
     end;
  end;
  CalculaTotais;
end;

procedure TBoxVendasPecas.BtnAtualizaTotaisClick(Sender: TObject);
begin
  CalculaTotais;
end;

procedure TBoxVendasPecas.BtnAutorizaClick(Sender: TObject);
begin
  tblOrcamentoPecas.Edit;
  tblOrcamentopecas.FieldByName('Status').AsString := 'Aprovado';
  tblOrcamentoPecas.Post;
  Showmessage('Orcamento aprovado.'+#13+ 'Emita faturamento.');
end;

procedure TBoxVendasPecas.BtnCancelarClick(Sender: TObject);
begin
 if Orcamento.Text <> '' then
   case MessageDlg('Cancela venda?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes : CancelaVenda;
   end;
 if (Orcamento.Text = '') and
     (tblOrcamentoPecas.FieldByName('Id_Orcamento_Pecas').AsInteger <> 0) and
     ((tblOrcamentoPecas.FieldByName('Status').AsString = 'Pendente') or (tblOrcamentoPecas.FieldByName('Status').AsString = 'Aprovado')) then
   case MessageDlg('Cancela venda já digitada?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes :
    begin
    //  Cancelar toda venda e retornar peças para o estoque
     try
      with tblOrcamentoPecas do
        begin
         Edit;
         FieldByName('Status').AsString := 'Cancelado';
         post;//delete;
        end;
      with tblOrcamentoPecasDados do
        begin
          while not eof do
            begin
             with tblPecasEstoque do
               begin
                 Close;
                 ParamByName('idPecas').AsInteger :=
                   tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                 ParamByName('idConcessionaria').AsInteger :=
                   StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 Open;
                 Edit;
                 FieldByName('Estoque').AsFloat :=
                   FieldByName('Estoque').AsFloat +
                   tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                 Post;
               end;
             with tblPecasMovimentacao do
               begin
                 Close;
                 Open;
                 Insert;
                 FDB1.AtualizaDataAtual;
                 FieldByName('Id_Concessionaria').AsInteger :=
                   StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 FieldByName('id_Pecas').AsInteger :=
                   tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                 FieldByName('Movimento').AsString := 'E';
                 FieldByName('Quantidade_Movimentada').AsFloat :=
                   tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                 FieldByName('Quantidade_Atual').AsFloat :=
                   tblPecasEstoque.FieldByName('Estoque').AsFloat;
                 FieldByName('Custo_Medio').AsFloat :=
                   tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
                 FieldByName('Data').AsDateTime := DataAtual;
                 Post;
               end;
             tblOrcamentoPecasDados.Next;
            end;
        end;
     except
        on e:Exception do
         begin
           showmessage( 'Erro de gravação:' + e.message );
           abort;
           exit;
         end;
     end;
      Showmessage('Venda cancelada.');
      tblOrcamentoPecas.close;
      tblOrcamentoPecasDados.Close;
      tblOrcamentoPecasRecebimento.close;
    end;
    end;
end;

procedure TBoxVendasPecas.CancelaVenda;
begin
  with tblOrcamentoPecas do
   begin
//     Parambyname('idOrcamentoPecas').AsString := IntToStr(IdOrcamentoPecas);
//showmessage(inttostr(idorcamentopecas));
     Open;
     if not DataSourceOrcamentoPecas.DataSet.IsEmpty then
      begin
       Edit;
       FieldByName('Status').AsString := 'Cancelado';
       post;//delete;
      end;
   end;
   Orcamento.Text := '';
   CodigoCliente.Text := '';
   CodigoVendedor.Text := '';
   CodigoPeca.Text := '';
   Quantidade.Text := '';
   PrecoVenda.Text := '';
   DescricaoPeca.Text := '';
   NomeCliente.Text := '';
   NomeVendedor.Text := '';
   BtnNovaVenda.Click;
end;

procedure TBoxVendasPecas.BtnNovoItemClick(Sender: TObject);
begin
  Quantidade.Text := '1';
  CodigoPeca.SetFocus;
end;

procedure TBoxVendasPecas.BtnConcluiClick(Sender: TObject);
begin
if CodigoPeca.Text <> '' then
 begin
  ShowMessage('Você primeiro precisa confirmar o último item,'+#13+'ou apagá-lo das caixas de diálogo.');
  BtnConfirmaItem.SetFocus;
 end
else
  if (Copy(BoxEmpresas.CNPJ,1,8) <> Copy(CNPJ,1,8)) then
 begin
  if tblOrcamentoPecas.FieldByName('Status').AsString <> 'Em edição' then
    Showmessage('Não há venda em edição.')
  else
   begin
    CalculaTotais;
    if tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsInteger > 0 then
         begin
//           FecharDs;
  //         AbrirDs;
           with tblOrcamentoPecas do
            begin
              Post;
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
              Edit;
            end;
           with tblOrcamentoPecasDados do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;
           with tblOrcamentoPecasRecebimento do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;
           CalculaTotais;
           Case MessageDlg('Confirma a venda,'+ #13+ 'que tem o total líquido de R$:' + #13 +
             CurrtoStr(tblOrcamentoPecas.FieldByName('Valor_liquido_Venda').AsCurrency) + ' ?', mtConfirmation,
             [mbYes,mbNo], 0) of
                mrYes: FechaVenda;
           end;
         end
        else
         begin
         Showmessage('Confirme o item primeiro.');
         BtnConfirmaItem.SetFocus;
         end;
        end;
  end
 else
  Showmessage('Não é possível fazer venda para cliente de mesmo CNPJ.');
end;

procedure TBoxVendasPecas.FechaVenda;
begin
   LimpaCampos;
   Orcamento.Text := '';
   CodigoCliente.Text := '';
   NomeCliente.Text := '';
   Desconto.Enabled := False;
   Status := 'Aprovado';
 try
    with tblOrcamentoPecasRecebimento do
       begin
         while not eof do
          begin
            if FieldByName('Vencimento').AsDateTime > DataAtual then
              if FDB1.ClienteComDebito(tblOrcamentoPecas.FieldByName('id_Clientes').AsInteger) then
               begin
                Showmessage('Este cliente tem débitos em aberto.');
                Status := 'Pendente';
               end;
            Next;
          end;
       end;
   with tblOrcamentoPecasDados do
     begin
       First;
       while not eof do
        begin
          if FieldByName('Status').AsString = 'Pendente' then
            begin
             Status := 'Pendente';
             tblOrcamentoPecas.FieldByName('Status').AsString := 'Pendente';
            end;
          Next;
        end;
     end;
   with tblOrcamentoPecas do
     begin
       if (StrToFloat(FieldByName('Valor_Liquido_Venda').AsString)
          < StrToFloat(FieldByName('Total_Venda').AsString)*
         (1-(StrToFloat(DescontoPadraoPecas)/100))) and //desconto padrão
         (StrToFloat(FieldByName('Valor_Liquido_Venda').AsString)
          < StrToFloat(FieldByName('Total_venda').AsString)*
         (1-(StrToFloat(DescontoCliente)/100)))then //desconto de cada cliente
           begin
             Status := 'Pendente';
           end;
//       Edit;
       if FieldByName('Status').AsString <> 'Pendente' then
         FieldByName('Status').AsString := Status;
       if FieldByName('Desconto').AsCurrency = null then
          FieldByName('Desconto').AsCurrency := 0;
       Post;
     end;
   with tblOrcamentoPecasDados do
     begin
       First;
       while not eof do
         begin
           with tblPecasEstoque do
             begin
               Close;
               ParamByName('idPecas').AsInteger :=
                 tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
               ParamByName('idConcessionaria').AsInteger :=
                 StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
               Open;
               Edit;
               FieldByName('Estoque').AsFloat :=
                 FieldByName('Estoque').AsFloat -
                 tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
               Post;
             end;
           with tblPecasMovimentacao do
             begin
               Close;
               Open;
               Insert;
               FDB1.AtualizaDataAtual;
               FieldByName('Id_Concessionaria').AsInteger :=
                 StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
               FieldByName('id_Pecas').AsInteger :=
                 tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
               FieldByName('Movimento').AsString := 'S';
               FieldByName('Quantidade_Movimentada').AsFloat :=
                 tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
               FieldByName('Quantidade_Atual').AsFloat :=
                 tblPecasEstoque.FieldByName('Estoque').AsFloat;
               FieldByName('Custo_Medio').AsFloat :=
                 tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
               FieldByName('Data').AsDateTime := DataAtual;
               Post;
             end;
           tblOrcamentoPecasDados.Next;
         end;
     end;
 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;
   if tblOrcamentoPecas.FieldByName('Status').AsString = 'Aprovado' then
     Showmessage('Venda aprovada. Emita o faturamento.'+#13+'Orçamento: '+IntToStr(idOrcamentoPecas));
   if tblOrcamentoPecas.FieldByName('Status').AsString = 'Pendente' then
     Showmessage('Faturamento pendente. Solicite autorização.'+#13+'Orçamento: '+IntToStr(idOrcamentoPecas));
   DataSourceOrcamentoPecasDados.Dataset.Refresh;
end;

procedure TBoxVendasPecas.BtnConcluiPagamentoClick(Sender: TObject);
begin
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('select sum(Orcamento_Pecas_recebimento.valor_devido) as Valor');
  IBQuery2.SQL.Add('from Orcamento_Pecas_Recebimento');
  IBQuery2.SQL.Add('where Orcamento_Pecas_recebimento.Id_Orcamento_Pecas =');
  IBQuery2.Sql.Add(':idOrcamentoPecas');
  IBQuery2.Parambyname('idOrcamentopecas').AsString := IntToStr(IdOrcamentoPecas);
  IBQuery2.Open;  //valor-liquido-venda
//  Showmessage(ibquery2.FieldByName('valor').AsString);
  EnableDisableControls(False, True);
  EnableDisableButtons(False, True);
  BtnConclui.SetFocus;
end;

procedure TBoxVendasPecas.BtnNovaVendaClick(Sender: TObject);
begin
  Quantidade.Text := '1';
//  if CodigoCliente.Text <> '' then
///    begin
 //    case MessageDlg('Confirma cancelamento da venda anterior?', mtConfirmation, [mbYes,mbNo], 0) of
  //     mrNo: BtnConclui.SetFocus;
   //    mrYes: CancelaVenda; //BtnCancelar.Click;
     //  end
 //   end;
  idOrcamentoPecas := 0;
  FecharDs;
  AbrirDs;
 // DBGrid1.Refresh;
  DBGrid2.Refresh;
  CodigoCliente.SetFocus;
end;

procedure TBoxVendasPecas.BtnConfirmaItemClick(Sender: TObject);
begin
Status := 'Pendente';
if CodigoPeca.Text = '' then
  CodigoPeca.SetFocus;
if (StrToInt(Quantidade.Text) < 1) or (Quantidade.Text = '') then
  Quantidade.SetFocus;
if (StrToFloat(PrecoVenda.Text) < StrToFloat(PrecoProduto.Text)*
     (1-(StrToFloat(DescontoPadraoPecas)/100))) and //desconto padrão
   (StrToFloat(PrecoVenda.Text) < StrToFloat(PrecoProduto.Text)*
     (1-(StrToFloat(DescontoCliente)/100)))then //desconto de cada cliente
   begin
    case MessageDlg('Esta venda ficará pendente. Confirma desconto?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes : GravaProduto;
      mrNo : PrecoVenda.SetFocus;
    end;
   end
else
   begin
     Status := 'Aprovado';
     GravaProduto;
   end;
//Status := 'Aprovado';
//GravaProduto;
end;

procedure TBoxVendasPecas.BtnConfirmaPagamentoClick(Sender: TObject);
begin
if (int(tblOrcamentoPecasRecebimento.fieldByName('Vencimento').AsDateTime) < int(DataAtual)) then
  Showmessage('Data de vencimento inválida')
else
  with tblOrcamentoPecasRecebimento do
    begin
      FieldByName('Id_orcamento_pecas').AsInteger := idOrcamentoPecas;
      FieldByName('Id_formas_pagamento').AsInteger :=
         tblFormasPagamento.FieldByName('Id_Formas_Pagamento').AsInteger;
      Post;
    end;
    BtnNovoPagamento.SetFocus;
end;

procedure TBoxVendasPecas.BtnConsultaClick(Sender: TObject);
begin
  //Editar := False;
  Orcamento.Enabled := True;
  SpeedButton4.Enabled := True;
  BtnConclui.Enabled := False;
  Orcamento.SetFocus;
 if (FDB1.IBDataSetLoginacesso75.AsString = 'T') or  //cancelamento de pedido de peças
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   btnCancelar.Enabled := True;
end;

procedure TBoxVendasPecas.BtnExcluiPagamentoClick(Sender: TObject);
begin
  case MessageDlg('Exclui forma de pagamento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblOrcamentoPecasRecebimento do
           begin
            Delete;
           end;
      end;
  end;
end;

procedure TBoxVendasPecas.BtnFormaClick(Sender: TObject);
begin
  EnableDisableButtons(True, False);
  BtnNovoPagamento.SetFocus;
end;

procedure TBoxVendasPecas.BtnNovoPagamentoClick(Sender: TObject);
begin
  EnableDisableControls(True, False);
  with tblOrcamentoPecasRecebimento do
    begin
      Insert;
    end;
  FormaPagamento.SetFocus;
end;

procedure TBoxVendasPecas.BtnTransferenciaClick(Sender: TObject);
var
 mCst_Atual : Extended;
 mCst_Medio : Extended;
 o : Integer;
 ComSubstituicao : Boolean;
 SemSubstituicao : Boolean;
begin
 ComSubstituicao := False;
 SemSubstituicao := False;
 if CodigoPeca.Text <> '' then
  begin
  ShowMessage('Você primeiro precisa confirmar o último item,'+#13+'ou apagá-lo das caixas de diálogo.');
  BtnConfirmaItem.SetFocus;
  end
 else
  begin
  if tblOrcamentoPecas.FieldByName('Status').AsString <> 'Em edição' then
    Showmessage('Não há venda em edição.')
  else
   begin
   if (Copy(BoxEmpresas.CNPJ,1,8) = Copy(CNPJ,1,8)) and
     (Copy(BoxEmpresas.CNPJ,1,14) <> Copy(CNPJ,1,14)) then
   begin
   with tblTransferencia do
   begin
    Close;
    ParamByName('idClientes').AsInteger := tblorcamentoPecas.FieldByName('id_Clientes').AsInteger;
    ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if RecordCount <> 0 then
    begin
     case MessageDlg('Confirma transferência de peças para ' +
       tblTransferencia.FieldByName('Transferir_Para').AsString, mtConfirmation, [mbYes,mbNo], 0) of
       mrYes :
       begin
         try
            {Pegar número da NF}
            with tblSerieNF do
             begin
               Close;
               ParamByName('idConcessionaria').AsInteger :=
                 StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
               Open;
               idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
               Edit;
               FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
               Post;
             end;
            {Pega um sequence novo para a NF}
             IBQuery4.Open;
             IdNofisa := IBQuery4.FieldByName('id_nofisa').AsInteger;
             IBQuery4.Close;
         {Gravar novas quantidades de estoque }
           with tblOrcamentoPecasDados do
             begin
               Close;
               ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
               Open;
               First;
               o := 0;
               while not eof do
                 begin
                   with tblPecas3 do
                     begin
                       Close;
                       ParamByName('idPecas').AsInteger := tblOrcamentoPecasDados.FieldByName('Id_Pecas').AsInteger;
                       Open;
                     end;
                   with tblPecasEstoque do
                     begin
                       o := o + 1;
                       tblPecasEstoque.Close;
                       tblPecasEstoque.ParamByName('idPecas').AsInteger :=
                         tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                       tblPecasEstoque.ParamByName('idConcessionaria').AsInteger :=
                         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                       tblPecasEstoque.Open;
                       tblPecasEstoque.Edit;
                       mCst_Atual := FieldByName('Cst_Atual').AsFloat;
                       mCst_Medio := FieldByName('Cst_medio').AsFloat;
                       if mCst_Medio = 0 then
                          mCst_Medio := tblPecas3.FieldByName('Preco').AsFloat/2;
                       if mCst_Atual = 0 then
                          mCst_Atual := mCst_Medio;
                       tblPecasEstoque.FieldByName('Estoque').AsFloat :=
                         tblPecasEstoque.FieldByName('Estoque').AsFloat -
                         tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                       tblPecasEstoque.Post;
                     end;
                    //Registra movimento de peças
                   with tblPecasMovimentacao do
                     begin
                       tblPecasMovimentacao.Close;
                       tblPecasMovimentacao.Open;
                       tblPecasMovimentacao.Insert;
                       FDB1.AtualizaDataAtual;
                       tblPecasMovimentacao.FieldByName('Id_Concessionaria').AsInteger :=
                         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                       tblPecasMovimentacao.FieldByName('id_Pecas').AsInteger :=
                         tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                       tblPecasMovimentacao.FieldByName('Movimento').AsString := 'S';
                       tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsFloat :=
                         tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                       tblPecasMovimentacao.FieldByName('Quantidade_Atual').AsFloat :=
                         tblPecasEstoque.FieldByName('Estoque').AsFloat;
                       tblPecasMovimentacao.FieldByName('Custo_Medio').AsFloat :=
                         tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
                       tblPecasMovimentacao.FieldByName('Data').AsDateTime := DataAtual;
                       tblPecasMovimentacao.Post;
                     end;
                  with tblPecasEstoque do
                     begin
            //          {Gravar quantidades no estoque de quem recebe ou criar um item separado para recebimento
                       tblPecasEstoque.Close;
                       tblPecasEstoque.ParamByName('idPecas').AsInteger :=
                         tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                       tblPecasEstoque.ParamByName('idConcessionaria').AsInteger :=
                         tblTransferencia.FieldByName('Novo_Id_Concessionaria').AsInteger;
                       tblPecasEstoque.Open;
                       if tblPecasEstoque.recordCount = 0 then
                        begin
                         tblPecasEstoque.Insert;
                         tblPecasEstoque.FieldByName('id_Pecas').AsInteger :=
                           tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                         tblPecasEstoque.FieldByName('id_Concessionaria').AsInteger :=
                           tblTransferencia.FieldByName('Novo_Id_Concessionaria').AsInteger;
                         tblPecasEstoque.FieldByName('Estoque').AsInteger :=
                           tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsInteger;
                         tblPecasEstoque.FieldByName('EstoqOS').AsInteger := 0;
                         tblPecasEstoque.FieldByName('Cst_Atual').AsFloat := mCst_Atual;
                         tblPecasEstoque.FieldByName('Cst_Medio').AsFloat := mCst_Medio;

                        end
                       else
                        begin
                         tblPecasEstoque.Edit;
                         tblPecasEstoque.FieldByName('Estoque').AsFloat :=
                          tblPecasEstoque.FieldByName('Estoque').AsFloat +
                          tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                         if tblPecasEstoque.FieldByName('Cst_atual').IsNull then
                          tblPecasEstoque.FieldByName('Cst_Atual').AsFloat := mCst_Atual;
                         if tblPecasEstoque.FieldByName('Cst_atual').AsFloat = 0 then
                          tblPecasEstoque.FieldByName('Cst_Atual').AsFloat := mCst_Atual;
                         if tblPecasEstoque.FieldByName('Cst_medio').IsNull then
                          tblPecasEstoque.FieldByName('Cst_medio').AsFloat := mCst_Atual;
                         if tblPecasEstoque.FieldByName('Cst_medio').AsFloat = 0 then
                          tblPecasEstoque.FieldByName('Cst_medio').AsFloat := mCst_Atual;
                        end;
                       tblPecasEstoque.Post;
                     end;
                   with tblPecasMovimentacao do
                     begin
                       tblPecasMovimentacao.Insert;
                       FDB1.AtualizaDataAtual;
                       tblPecasMovimentacao.FieldByName('Id_Concessionaria').AsInteger :=
                         tblTransferencia.FieldByName('Novo_Id_Concessionaria').AsInteger;
                       tblPecasMovimentacao.FieldByName('id_Pecas').AsInteger :=
                         tblOrcamentoPecasDados.FieldByName('id_pecas').AsInteger;
                       tblPecasMovimentacao.FieldByName('Movimento').AsString := 'E';
                       tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsFloat :=
                         tblOrcamentoPecasDados.FieldByName('Qtde_Orcada').AsFloat;
                       tblPecasMovimentacao.FieldByName('Quantidade_Atual').AsFloat :=
                         tblPecasEstoque.FieldByName('Estoque').AsFloat;
                       tblPecasMovimentacao.FieldByName('Custo_Medio').AsFloat :=
                         tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
                       tblPecasMovimentacao.FieldByName('Data').AsDateTime := DataAtual;
                       tblPecasMovimentacao.Post;
                     end;
                   {Gravar dados da NF}
                   tblSada.Insert;
                   tblSada.FieldByName('Id_Nofisa').AsInteger := IdNofisa;
                   tblSada.FieldByName('Id_Concessionaria').AsInteger :=
                     tblOrcamentoPecas.FieldByName('Id_Concessionaria').AsInteger;
                   tblSada.FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
                   tblSada.FieldByName('Codigo').AsString :=
                     tblPecas3.FieldByName('Codigo').AsString;
                   tblSada.FieldByName('Id_pecas').AsInteger :=
                     tblPecas3.FieldByName('id_pecas').AsInteger;
                   tblSada.FieldByName('Descricao').AsString :=
                     tblPecas3.FieldByName('Descricao').AsString;
                   tblSada.FieldByName('Qtde').AsInteger := FieldByName('Qtde_Orcada').AsInteger;
                   tblSada.FieldByName('Unidade').AsString :=
                     tblPecas3.FieldByName('Unidade').AsString;
                   if Copy(tblPecas3.FieldByName('Cst').AsString,1,1) = '0' then
                     tblSada.FieldByName('Cst').AsString := '051';
                   if Copy(tblPecas3.FieldByName('Cst').AsString,1,1) = '1' then
                     tblSada.FieldByName('Cst').AsString := '151';
                   if Copy(tblPecas3.FieldByName('Cst').AsString,1,1) = '2' then
                     tblSada.FieldByName('Cst').AsString := '251';
                   tblSada.FieldByName('Subst').AsBoolean :=
                     tblPecas3.FieldByName('Subst_Trib').AsBoolean;
                   tblSada.FieldByName('Aliq_Icms').AsInteger := 0;
                   tblSada.FieldByName('Icms').AsInteger := 0;
                   tblSada.FieldByName('Base_ICMS').AsInteger := 0;
                   tblSada.FieldByName('ICMS').AsInteger := 0;
                   tblSada.FieldByName('Desconto').AsInteger := 0;
                   tblSada.FieldByName('Custo').AsString :=
                     tblPecasEstoque.FieldByName('Cst_Medio').AsString;
                     tblSada.FieldByName('Preco').AsCurrency :=
                       tblPecasEstoque.FieldByName('Cst_Medio').AsCurrency;
                   if tblSada.FieldByName('Subst').AsBoolean then
                    begin
                     tblSada.FieldByName('CFOP').AsString := '5409';
                     tblSada.FieldByName('NAT_OP').AsString := 'TRANSF.MERC.C/SUBST.TRIBUT.';
                     ComSubstituicao := True;
                    end
                   else
                    begin
                     tblSada.FieldByName('CFOP').AsString := '5152';
                     tblSada.FieldByName('NAT_OP').AsString := 'TRANSFERÊNCIA DE MERCADORIA';
                     SemSubstituicao := True;
                    end;
                   tblSada.FieldByName('St_Cofins').AsBoolean :=
                     tblPecas3.FieldByName('St_Cofins').AsBoolean;
                   tblSada.Post;
                   tblPecas3.Close;
                   tblOrcamentoPecasDados.Edit;
                    begin
                     tblOrcamentoPecasDados.FieldByName('Preco_Venda').AsFloat :=
                       tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
                     tblOrcamentoPecasDados.FieldByName('Valor_Nesta_Venda').AsFloat :=
                       tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
                    end;
                   tblOrcamentoPecasDados.FieldByName('Status').AsString := 'Aprovado';
                   tblOrcamentoPecasDados.Post;
                   tblOrcamentoPecasDados.Next;
                 end;
             end;
            CalculaTotais;
            tblOrcamentoPecas.Edit;
            tblOrcamentoPecas.FieldByName('Status').AsString := 'Processado';
            tblorcamentoPecas.Post;
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
               FieldByName('SerieNF').AsString := 'e';
               Fdb1.AtualizaDataAtual;
               FieldByName('Emissao').AsDateTime := DataAtual;
               FieldByName('Origem').AsString := 'P';
               FieldByName('ENT_SAI').AsString := 'S';
               FieldByName('vendedor').AsInteger := 0;
               FieldByName('Base_ICMS').AsInteger := 0;
               FieldByName('Val_ICMS').AsInteger := 0;
               FieldByName('Tot_prod').AsCurrency :=
                 tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency;
               FieldByName('Tot_Nota').AsCurrency :=
                 tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency;
               FieldByName('Frete_Tipo').AsString := '1';
               FieldByName('Qtde_Prod').AsInteger := o;
               FieldByName('Status').AsString := 'Processado';
               FieldByName('Dados_Ad01').AsString := 'ICMS diferido cfe RICMS';
               FieldByName('Dados_Ad02').AsString := 'Livro I, art.53, inciso I';
               FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
               if ComSubstituicao then
                    begin
                     FieldByName('Codigo_Fiscal').AsString := '5409';
                     FieldByName('Descricao_codigo_Fiscal').AsString := 'TRANSF.MERC.C/SUBST.TRIBUT.';
                     ComSubstituicao := True;
                    end;

               if SemSubstituicao then
                    begin
                     FieldByName('Codigo_Fiscal').AsString := '5152';
                     FieldByName('Descricao_Codigo_Fiscal').AsString := 'TRANSFERÊNCIA DE MERCADORIA';
                     SemSubstituicao := True;
                    end;

               if (ComSubstituicao) and (SemSubstituicao) then
                 begin
                   FieldByName('Codigo_fiscal').AsString := '5152/5409';
                   FieldByName('Descricao_codigo_fiscal').AsString := 'TRANSF.MERC./TRANSF.MERC.C/SUBST.TRIBUT.'
                 end;
               FieldByName('Transferencia_Pendente').AsString := 'T';
               Post;
            end;
               LimpaCampos;
               Orcamento.Text := '';
               CodigoCliente.Text := '';
               NomeCliente.Text := '';
               CodigoVendedor.Text := '';
               NomeVendedor.Text := '';
               Desconto.Enabled := False;
               tblOrcamentoPecasDados.Close;
               tblOrcamentoPecasDados.Open;
               DataSourceOrcamentoPecasDados.Dataset.Refresh;
               Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
         except
          on e:Exception do
           begin
            showmessage( 'Erro de gravação:' + e.message );
            abort;
            exit;
           end;
         end;
       end;
     end;
    end;
   end;
  end
  else
   Showmessage('Não é possível transferir peças para este cliente.');
  end;
 end;
end;

procedure TBoxVendasPecas.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idCliente;
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
             if not ValidaCliente(tblPessoas) then
               CodigoCliente.SetFocus
             else
               CodigoVendedor.SetFocus;
            end;
            NomeCliente.Text := FieldbyName('Nome').Text;
            DescontoCliente := FieldByName('Desconto').AsString;
            CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);
         end;
      end;
  end;
  if Orcamento.Text = '' then  //Gravar Orçamento de peças
    begin
      IBQuery1.Open;
      IdOrcamentoPecas := IBQuery1.FieldByName('id_Orcamento_pecas').AsInteger;
      Orcamento.Text := IntToStr(IdOrcamentoPecas);
      IBQuery1.Close;
      with tblOrcamentoPecas do
       begin
         Open;
         Insert;
         FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
         FieldByName('Status').AsString := 'Em edição';
         FieldByName('Id_Orcamento_Pecas').AsInteger := IdOrcamentoPecas;
         FieldByName('Id_Concessionaria').AsInteger :=
           StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         Post;
         Edit;
       end;
      CodigoVendedor.SetFocus; 
    end;
end;

procedure TBoxVendasPecas.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Peças','Pecas',
      ['Codigo','Descricao','Id_Pecas'],
      ['Código:','Descrição:','Sequência:'],
      'Descricao','Codigo',Fdb1.SQLConnection1,'','','');
     with tblPecas do
     begin
        Close;
        Parambyname('id').AsString := Retorno;
        Open;
        if (FieldByName('NCM').AsString = '') or (FieldByName('NCM').AsString = null) then
          begin
            Showmessage('Produto sem NCM válida.');
            Speedbutton1.Click;
          end;
        CodigoPeca.Text := tblPecas.FieldByName('Codigo').Text;
        DescricaoPeca.Text := tblPecas.FieldByName('Descricao').Text;
        PrecoVenda.Text := FieldByName('Preco').Text;
        IdPeca := FieldByName('Id_Pecas').AsInteger;
     end;
     if CodigoPeca.Text = '' then
      begin
       CodigoPeca.SetFocus;
      end
     else
     with tblPecasEstoque do
      begin
       Close;
       ParamByName('Idconcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       ParamByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if tblPecasEstoque.RecordCount = 0 then
        begin
         showmessage('Essa peça não existe no estoque desta concessionária.');
         SpeedButton1.Click;
        end;
      end;
end;

procedure TBoxVendasPecas.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     if Orcamento.Text <> '' then  //Gravar Orçamento de peças
       tblOrcamentoPecas.FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
     CodigoCliente.SetFocus;
end;

procedure TBoxVendasPecas.SpeedButton3Click(Sender: TObject);
begin
       Retorno := Biblioteca.PesquisaGeral('Vendedor','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoVendedor.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeVendedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoVendedor.SetFocus;
end;

procedure TBoxVendasPecas.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de peças pendentes','Orcamento_Pecas',
      ['Id_Orcamento_Pecas','Id_Clientes','Valor_Liquido_Venda','Id_Concessionaria'],
      ['Sequência:','Cod.Cliente:','Valor Venda:','Concessionária:',''],
      'Chassi','Id_Orcamento_pecas',Fdb1.SQLConnection1,'Status =','Pendente','idConcessionaria');
     with tblOrcamentoPecas do
     begin
        Close;
        Parambyname('idOrcamentoPecas').AsInteger := StrToInt(Retorno);
        Open;
        orcamento.Text := Retorno; 
     end;

     orcamento.SetFocus;
end;

procedure TBoxVendasPecas.tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
begin
  with tblOrcamentoPecasDados do
  begin
    Close;
    Parambyname('idOrcamentoPecas').AsString := IntToStr(IdOrcamentoPecas);
    Open;
    First;
    while not eof do
      begin
        delete;
      end;
  end;
end;

procedure TBoxVendasPecas.tblPecasAfterCancel(DataSet: TDataSet);
begin
 FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxVendasPecas.tblPecasAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxVendasPecas.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxVendasPecas.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
  BtnNovoPagamento.Enabled := Value;
  BtnExcluiPagamento.Enabled := Value;
  BtnConfirmaPagamento.Enabled := Value;
  BtnConcluiPagamento.Enabled := Value;
  BtnDesconto.Enabled := Value1;
//  BtnCancelar.Enabled := Value1;
  BtnNovoItem.Enabled := Value1;
  BtnConclui.Enabled := Value1;
  BtnNovaVenda.Enabled := Value1;
  BtnForma.Enabled := Value1;
  if (FDB1.IBDataSetLoginacesso77.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnAutoriza.Enabled := True
  else
     BtnAutoriza.Enabled := False;
end;

procedure TBoxVendasPecas.EnableDisableControls(Value: Boolean; Value1: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
  Orcamento.Enabled := Value1;
  CodigoCliente.Enabled := Value1;
  CodigoPeca.Enabled := Value1;
  Quantidade.Enabled := Value1;
  PrecoVenda.Enabled := Value1;
  SpeedButton1.Enabled := Value1;
  SpeedButton2.Enabled := Value1;
end;

procedure TBoxVendasPecas.AbrirDs;
begin
   DataSourceOrcamentoPecasDados.Dataset.Open;
   DataSourceOrcamentoPecasRecebimento.Dataset.Open;
   DataSourcePecasEstoque.Dataset.Open;
   DataSourcePecas.Dataset.Open;
   DataSourcePecasEstoque.Dataset.Open;
   DataSourcePecasMovimentacao.Dataset.Open;
   DataSourcePecas2.Dataset.Open;
   DataSourcePessoas.Dataset.Open;
   DataSourceFormaPagamentos.Dataset.Open;
   DataSourceOrcamentoPecas.Dataset.Open;
   DataSourceNofisa.Dataset.Open;
   DataSourceSada.Dataset.Open;
end;

procedure TBoxVendasPecas.FecharDs;
begin
  DataSourceOrcamentoPecasDados.Dataset.Close;
  DataSourceOrcamentoPecasRecebimento.Dataset.Close;
  DataSourcePecas.Dataset.Close;
  DataSourcePecas2.Dataset.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourcePecasMovimentacao.Dataset.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourceOrcamentoPecas.Dataset.Close;
  DataSourceTransferencia.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceSada.Dataset.Close;
end;

end.
