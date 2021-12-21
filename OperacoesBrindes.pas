unit OperacoesBrindes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ComCtrls, ToolWin, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, IBCustomDataSet, ExtCtrls,
  DBTables, IBQuery, IBSQL, rxToolEdit, rxCurrEdit, DBCtrls, Wwdbigrd, Wwdbgrid;

type
  TBoxOperacoesBrindes = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    Pedido: TEdit;
    DataSourceOrcamentoPecas: TDataSource;
    tblOrcamentoPecas: TIBDataSet;
    DataSourcePecas: TDataSource;
    DataSourcePessoas: TDataSource;
    tblPessoas: TIBDataSet;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    tblPecas: TIBDataSet;
    tblOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasID_CLIENTES: TIntegerField;
    tblOrcamentoPecasTOTAL_VENDA: TIBBCDField;
    tblOrcamentoPecasTOTAL_NESTA_VENDA: TIBBCDField;
    tblOrcamentoPecasSTATUS: TIBStringField;
    IBQuery1: TIBQuery;
    IBQuery1ID_ORCAMENTO_PECAS: TLargeintField;
    tblOrcamentoPecasDados: TIBDataSet;
    DataSourceOrcamentoPecasDados: TDataSource;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS_DADOS: TIntegerField;
    tblOrcamentoPecasDadosID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasDadosQTDE_ORCADA: TIntegerField;
    tblOrcamentoPecasDadosPRECO_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosVALOR_NESTA_VENDA: TIBBCDField;
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
    tblOrcamentoPecasDadosID_PECAS: TIntegerField;
    tblOrcamentoPecasDESCONTO: TIBBCDField;
    IBQuery2: TIBQuery;
    tblOrcamentoPecasVALOR_LIQUIDO_VENDA: TIBBCDField;
    tblOrcamentoPecasDadosSTATUS: TIBStringField;
    tblPecasEstoque: TIBDataSet;
    DataSourcePecasEstoque: TDataSource;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosAcessorios: TIBDataSet;
    DataSourcePedidoVeiculosAcessorios: TDataSource;
    tblOrcamentoPecasDadosTESTE: TStringField;
    tblOrcamentoPecasDadosCODIGO1: TStringField;
    tblOrcamentoPecasID_CONCESSIONARIA: TIntegerField;
    tblOrcamentoPecasID_VENDEDOR: TIntegerField;
    Label14: TLabel;
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
    Panel2: TPanel;
    IBQuery3: TIBQuery;
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
    SpeedButton4: TSpeedButton;
    tblPecas3: TIBDataSet;
    IntegerField4: TIntegerField;
    IBStringField18: TIBStringField;
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
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    tblPedidoVeiculosID_USUARIO: TIntegerField;
    tblPedidoVeiculosUSUARIO: TIBStringField;
    tblPedidoVeiculosCOR: TIBStringField;
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosVALOR_VIP: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField;
    tblPedidoVeiculosVALOR_VIP2: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULOS: TIntegerField;
    DataSourcePedidoVeiculos: TDataSource;
    CodigoCliente: TDBEdit;
    CodigoVendedor: TDBEdit;
    tblPedidoVeiculosNOMEVENDEDOR: TIBStringField;
    tblPedidoVeiculosNOMECLIENTE: TIBStringField;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField;
    tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField;
    tblPedidoVeiculosAcessoriosENTREGA: TDateField;
    tblPedidoVeiculosAcessoriosCUSTO: TIBBCDField;
    tblPedidoVeiculosAcessoriosENTREGUE_POR: TIBStringField;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid2IButton: TwwIButton;
    tblPedidoVeiculosAcessoriosENTREGUE: TIBStringField;
    Label12: TLabel;
    TotalBrindes: TCurrencyEdit;
    BitBtn1: TBitBtn;
    Quantidade: TMaskEdit;
    CodigoPeca: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    PrecoVenda: TJvMaskEdit;
    Descricao: TLabel;
    DescricaoPeca: TJvDBMaskEdit;
    Label10: TLabel;
    PrecoProduto: TJvDBMaskEdit;
    Label17: TLabel;
    wwDBGrid1: TwwDBGrid;
    Label4: TLabel;
    TotalBruto: TJvDBMaskEdit;
    Label11: TLabel;
    TotalNestaVenda: TJvDBMaskEdit;
    Label5: TLabel;
    Desconto: TJvDBMaskEdit;
    Label6: TLabel;
    ValorLiquidoVenda: TJvDBMaskEdit;
    BtnConclui: TBitBtn;
    Panel3: TPanel;
    Label13: TLabel;
    FormaPagamento: TDBLookupComboBox;
    BtnNovoPagamento: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExcluiPagamento: TBitBtn;
    Vencimento: TJvDBDateEdit;
    Label16: TLabel;
    ValorDevido: TJvDBMaskEdit;
    Label18: TLabel;
    tblOrcamentoPecasRecebimento: TIBDataSet;
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS_RECEBIMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblOrcamentoPecasRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblOrcamentoPecasRecebimentoVENCIMENTO: TDateField;
    tblOrcamentoPecasRecebimentoTESTE: TStringField;
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
    BtnNovaVenda: TBitBtn;
    BtnConfirmaItem: TBitBtn;
    BtnExcluiItem: TBitBtn;
    BtnNovoItem: TBitBtn;
    Label19: TLabel;
    Orcamento: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBGrid2: TDBGrid;
    Label22: TLabel;
    VendedorPecas: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label23: TLabel;
    NomeVendedorPecas: TJvDBMaskEdit;
    tblPecasDESCRICAO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
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
    tblPecas3DESCRICAO: TIBStringField;
    tblPecas2DESCRICAO: TIBStringField;
    tblPecas2CST: TIBStringField;
    tblPecas2CODIGO_SGS: TIntegerField;
    tblPecasVBC_STRET: TIBBCDField;
    tblPecasPST: TIBBCDField;
    tblPecasVICMS_STRET: TIBBCDField;
    tblPecasPMVAST: TIBBCDField;
    tblPecasPRED_BCST: TIBBCDField;
    tblPecasVBC_ST: TIBBCDField;
    tblPecasPICMS_ST: TIBBCDField;
    tblPecasVICMS_ST: TIBBCDField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
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
    procedure BtnDescontoClick(Sender: TObject);
    procedure BtnNovoItemClick(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure BtnNovaVendaClick(Sender: TObject);
    procedure tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
    procedure BtnFormaClick(Sender: TObject);
    procedure EnableDisableButtons(Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls(Value: Boolean; Value1: Boolean);
    procedure BtnNovoPagamentoClick(Sender: TObject);
    procedure BtnConcluiPagamentoClick(Sender: TObject);
    procedure VencimentoExit(Sender: TObject);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnAtualizaTotaisClick(Sender: TObject);
    procedure BtnExcluiItemClick(Sender: TObject);
    procedure BtnConfirmaItemClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtnAutorizaClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure BtnExcluiPagamentoClick(Sender: TObject);
    procedure HabilitaDesabilitaBotoes(Value : Boolean);
    procedure FormaPagamentoExit(Sender: TObject);
    procedure ValorDevidoExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure VendedorPecasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCliente : Integer;
    idPeca : Integer;
    idVendedor: Integer;
    idNofisa : Integer;
    NovaVenda : Boolean;
    idOrcamentoPecas : Integer;
    idNumeroNotaFiscal : Integer;
    estoque : Integer;
    CNPJ : String;
    procedure LimpaCampos;
    procedure AbrirDs;
    procedure CalculaTotais;
    procedure FecharDs;
    procedure GravaProduto;
    procedure FechaVenda;
    procedure Concluir;
  end;

var
  BoxOperacoesBrindes: TBoxOperacoesBrindes;
  Retorno : String; //Integer;
  Status : String;
  DescontoCliente : String;
  
implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxOperacoesBrindes.FormaPagamentoExit(Sender: TObject);
begin
  ValorDevido.SetFocus;
end;

procedure TBoxOperacoesBrindes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action := caFree;
  BoxOperacoesBrindes := nil;
end;

procedure TBoxOperacoesBrindes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxOperacoesBrindes.FormShow(Sender: TObject);
begin
   NovaVenda := True;
   EnableDisableButtons(False, True);
   HabilitaDesabilitaBotoes(False);
   AbrirDs;
   Quantidade.Text := '1';
end;

procedure TBoxOperacoesBrindes.DescontoExit(Sender: TObject);
begin
   CalculaTotais;
end;

procedure TBoxOperacoesBrindes.CalculaTotais;
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
     Edit;
     FieldByName('Total_Venda').AsCurrency := IBQuery2.FieldByName('Valor').AsCurrency;
     Post;
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
     Edit;
     if (FieldByName('Total_Nesta_venda').AsCurrency - TotalBrindes.Value) > 0 then
       FieldByName('Desconto').AsCurrency := TotalBrindes.Value;
     FieldByName('Total_Nesta_Venda').AsCurrency := IBQuery2.FieldByName('Valor').AsCurrency;
     FieldByName('Valor_Liquido_Venda').AsCurrency :=
        FieldByName('Total_Nesta_Venda').AsCurrency - FieldByName('Desconto').AsCurrency;
     if status = 'Pendente' then
        FieldByName('Status').AsString := 'Pendente';
     Post;
    end;
End;

procedure TBoxOperacoesBrindes.PrecoVendaExit(Sender: TObject);
begin
///   BtnConfirmaItem.Click;
//   BtnNovoItem.SetFocus;
  BtnConfirmaItem.SetFocus;
end;

procedure TBoxOperacoesBrindes.GravaProduto;
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

procedure TBoxOperacoesBrindes.LimpaCampos;
begin
   DescricaoPeca.Text := '';
   PrecoProduto.Text := '';
   CodigoPeca.Text := '';
   Quantidade.Text := '';
   PrecoVenda.Text := '';
end;

procedure TBoxOperacoesBrindes.PedidoExit(Sender: TObject);
begin
  if Pedido.Text = '' then
    Pedido.Text := '0';
  if StrToInt(pedido.Text) = 0 then
    SpeedButton4.Click;
  if StrToInt(pedido.Text) <> 0 then
   begin
     with tblPedidoVeiculos do
      begin
        Close;
        ParamByName('idPedidoVeiculos').AsInteger := StrToInt(Pedido.Text);
        Open;
        if recordCount = 0 then
         begin
          Showmessage('Pedido não encontrado.');
          Pedido.SetFocus;
         end
        else
          if FieldByName('Status').AsString = 'Pendente' then
            begin
             Showmessage('Pedido pendente.');
             Pedido.SetFocus;
            end
          else
           if FieldByName('Status').AsString = 'Cancelado' then
            begin
             Showmessage('Pedido cancelado.');
             Pedido.SetFocus;
            end
           else
             if FieldByName('Status').AsString = 'Aprovado' then
              begin
               Showmessage('Pedido aprovado e não faturado.');
               Pedido.SetFocus;
              end
             else
               if FieldByName('Status').AsString = 'Em edição' then
                 begin
                   Showmessage('Pedido em edição.');
                   Pedido.SetFocus;
                 end
               else
                 if (FieldByName('Status').AsString <> 'Fechado') and
                    (FieldByName('Status').AsString <> 'Faturado') then
                   begin
                     Showmessage('Pedido não faturado.');
                     Pedido.SetFocus;
                   end;
           with tblPedidoVeiculosAcessorios do
            begin
              Close;
              ParamByName('idPedidoVeiculos').AsInteger := StrToInt(Pedido.Text);
              Open;
            end;
      end;
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
         if FieldByName('Desconto').AsString = '' then
           DescontoCliente := '0'
         else
           DescontoCliente := FieldByName('Desconto').AsString;
      end;
     with tblPedidoVeiculosAcessorios do
      begin
         Close;
         ParamByName('IdPedidoVeiculos').AsInteger := StrToInt(Pedido.Text);
         Open;
      end;
   end;
end;

procedure TBoxOperacoesBrindes.QuantidadeExit(Sender: TObject);
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

procedure TBoxOperacoesBrindes.CodigoPecaExit(Sender: TObject);
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
          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          PrecoVenda.Text := FieldByName('Preco').Text;
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

procedure TBoxOperacoesBrindes.CodigoVendedorExit(Sender: TObject);
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
  if pedido.Text <> '' then  //Gravar Pedido de veiculos
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

procedure TBoxOperacoesBrindes.BtnDescontoClick(Sender: TObject);
begin
   Desconto.Enabled := True;
   Desconto.Setfocus;
end;

procedure TBoxOperacoesBrindes.BtnExcluiItemClick(Sender: TObject);
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

procedure TBoxOperacoesBrindes.BtnExcluiPagamentoClick(Sender: TObject);
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

procedure TBoxOperacoesBrindes.BitBtn1Click(Sender: TObject);
begin
   with tblPedidoVeiculosAcessorios do
   begin
     first;
     while not eof  do
     begin
       wwDBGrid2DblClick( wwdbGrid2 );
       next;
       application.ProcessMessages;
     end;
   end;
end;

procedure TBoxOperacoesBrindes.BtnAtualizaTotaisClick(Sender: TObject);
begin
  CalculaTotais;
end;

procedure TBoxOperacoesBrindes.BtnAutorizaClick(Sender: TObject);
begin
  tblOrcamentoPecas.Edit;
  tblOrcamentopecas.FieldByName('Status').AsString := 'BrindeAprovado';
  tblOrcamentoPecas.Post;
  Showmessage('Orcamento aprovado.'+#13+ 'Emita faturamento.');
end;

procedure TBoxOperacoesBrindes.BtnNovoItemClick(Sender: TObject);
begin
  Quantidade.Text := '1';
  CodigoPeca.SetFocus;
end;

procedure TBoxOperacoesBrindes.BtnConcluiClick(Sender: TObject);
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
    FechaVenda;
    IBQuery2.Close;
    IBQuery2.SQL.Clear;
    IBQuery2.Sql.Add('Select sum(Orcamento_Pecas_Recebimento.valor_devido) as Valor');
    IBQuery2.SQL.Add('from Orcamento_Pecas_Recebimento');
    IBQuery2.SQL.Add('where Orcamento_Pecas_Recebimento.Id_Orcamento_Pecas =');
    IBQuery2.Sql.Add(':idOrcamentoPecas');
    IBQuery2.Parambyname('idorcamentoPecas').AsString := IntToStr(IdOrcamentoPecas);
    IBQuery2.Open;
    if IBQuery2.FieldByName('Valor').AsCurrency + TotalBrindes.Value <
      tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency then
      Showmessage('A soma de faturas a cobrar do cliente e os brindes é menor que as peças entregues.')
    else
       if tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsInteger > 0 then
         begin
           FecharDs;
           AbrirDs;
           with tblOrcamentoPecas do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;
           with tblOrcamentoPecasDados do
            begin
              Close;
              ParamByName('idOrcamentoPecas').AsInteger := StrToInt(Orcamento.Text);
              Open;
            end;
           CalculaTotais;
           Case MessageDlg('Confirma a venda,'+ #13+ 'que tem o total líquido de R$:' + #13 +
             CurrtoStr(tblOrcamentoPecas.FieldByName('Valor_liquido_Venda').AsCurrency) + ' ?', mtConfirmation,
             [mbYes,mbNo], 0) of
                mrYes: Concluir;
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

procedure TBoxOperacoesBrindes.FechaVenda;
begin
 if TotalBrindes.Value < tblOrcamentoPecas.FieldByName('Valor_liquido_Venda').AsCurrency then
   begin
 //    Showmessage('Entrega cancelada.'+#13+'O total de brindes é superior ao crédito.')
    case MessageDlg('O total de brindes entregues e superior ao crédito.'+#13+
      'O saldo deverá ser pago pelo cliente.'+#13+
      'Confirma entrega de brindes?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
       with tblOrcamentoPecasRecebimento do
        begin
//         showmessage('duplicata');
          if tblOrcamentoPecas.FieldByName('Desconto').AsCurrency - TotalBrindes.value <> 0 then
           begin
              Insert;
              FieldByName('Id_formas_pagamento').AsInteger := 12;
              FieldByName('Forma_Pagamento').asString := 'BRINDE';
              FieldByName('Vencimento').AsDateTime := DataAtual;
              FieldByName('Id_orcamento_Pecas').AsInteger := IdOrcamentoPecas;
              FieldByName('Valor_devido').asCurrency := TotalBrindes.Value;
              Post;
           end;
        end;
//       Concluir;
      end;
    end;
   end
 else
  if TotalBrindes.Value > tblOrcamentoPecas.FieldByName('Valor_Liquido_Venda').AsCurrency then
   case MessageDlg('O total de crédito é superior aos brindes entregues.'+#13+
      'O saldo de crédito será cancelado e não poderá ser entregues mais brindes.'+#13+
      'Confirma entrega de brindes?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
       with tblOrcamentoPecasRecebimento do
        begin
          if tblOrcamentoPecas.FieldByName('Desconto').AsCurrency - TotalBrindes.value <> 0 then
           begin
            Insert;
            FieldByName('Id_formas_pagamento').AsInteger := 12;
            FieldByName('Forma_Pagamento').asString := 'BRINDE';
            FieldByName('Vencimento').AsDateTime := DataAtual;
            FieldByName('Id_orcamento_Pecas').AsInteger := IdOrcamentoPecas;
            FieldByName('Valor_devido').asCurrency := tblOrcamentoPecas.FieldByName('Valor_liquido_Venda').AsCurrency;//TotalBrindes.Value;
            Post;
           end;
        end;
//       Concluir;
      end;
   end
  else
   begin
       with tblOrcamentoPecasRecebimento do
        begin
          if tblOrcamentoPecas.FieldByName('Desconto').AsCurrency - TotalBrindes.value <> 0 then
           begin
            Insert;
            FieldByName('Id_formas_pagamento').AsInteger := 12;
            FieldByName('Forma_Pagamento').asString := 'BRINDE';
            FieldByName('Vencimento').AsDateTime := DataAtual;
            FieldByName('Id_orcamento_Pecas').AsInteger := IdOrcamentoPecas;
            FieldByName('Valor_devido').asCurrency := TotalBrindes.Value;
            Post;
           end;
        end;
//    Concluir;
   end;
end;

procedure TBoxOperacoesBrindes.Concluir;
begin
   LimpaCampos;
   Pedido.Text := '';
   CodigoCliente.Text := '';
   NomeCliente.Text := '';
   Desconto.Enabled := False;
   Status := 'BrindeAprovado';
 try
  NovaVenda := True;
  with tblPedidoVeiculosAcessorios do
   begin
      First;
      while not eof do
       begin
         if FieldByName('entregue').AsString = 'S' then
          begin
           Edit;
           FieldByName('Entregue_por').AsString := CodigoVendedor.Text;
           FieldByName('Entrega').AsDateTime := DataAtual;
           Post;
          end;
         Next;
       end;
   end;
   with tblOrcamentoPecas do
     begin
//       showmessage(descontopadraopecas);
//       showmessage(descontocliente);
       if ((StrToFloat(FieldByName('Valor_Liquido_Venda').AsString)
          < ((StrToFloat(FieldByName('Total_Venda').AsString)*
         (1-(StrToFloat(DescontoPadraoPecas)/100))) - TotalBrindes.Value)) and //desconto padrão
         (StrToFloat(FieldByName('Valor_Liquido_Venda').AsString)
          < (StrToFloat(FieldByName('Total_venda').AsString)*
         (1-(StrToFloat(DescontoCliente)/100)) - TotalBrindes.Value))) then //desconto de cada cliente
           begin
             Status := 'Pendente';
           end;
       Edit;
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
   if tblOrcamentoPecas.FieldByName('Status').AsString = 'BrindeAprovado' then
     Showmessage('Venda aprovada. Emita o faturamento.'+#13+'Orçamento: '+IntToStr(idOrcamentoPecas));
   if tblOrcamentoPecas.FieldByName('Status').AsString = 'Pendente' then
     Showmessage('Faturamento pendente. Solicite autorização.'+#13+'Orçamento: '+IntToStr(idOrcamentoPecas));
   DataSourceOrcamentoPecasDados.Dataset.Refresh;
end;

procedure TBoxOperacoesBrindes.BtnConcluiPagamentoClick(Sender: TObject);
begin
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('select sum(Orcamento_Pecas_recebimento.valor_devido) as Valor');
  IBQuery2.SQL.Add('from Orcamento_Pecas_Recebimento');
  IBQuery2.SQL.Add('where Orcamento_Pecas_recebimento.Id_Orcamento_Pecas =');
  IBQuery2.Sql.Add(':idOrcamentoPecas');
  IBQuery2.Parambyname('idOrcamentopecas').AsString := IntToStr(IdOrcamentoPecas);
  IBQuery2.Open;  //valor-liquido-venda
  EnableDisableControls(False, True);
  EnableDisableButtons(False, True);
  //BtnConclui.SetFocus;
end;

procedure TBoxOperacoesBrindes.BtnNovaVendaClick(Sender: TObject);
begin
 if Pedido.Text = '' then
   Showmessage('Selecione um pedido primeiro.')
 else
  begin
  if NovaVenda then  //Gravar Orçamento de peças
    begin
      NovaVenda := False;
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
    end;
   Quantidade.Text := '1';
   HabilitaDesabilitaBotoes(True);
   VendedorPecas.SetFocus;
  end;
end;

procedure TBoxOperacoesBrindes.BtnConfirmaItemClick(Sender: TObject);
begin
   begin
    NovaVenda := False;
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
   end;
end;

procedure TBoxOperacoesBrindes.BtnConfirmaPagamentoClick(Sender: TObject);
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

procedure TBoxOperacoesBrindes.BtnConsultaClick(Sender: TObject);
begin
  //Editar := False;
  Pedido.Enabled := True;
  SpeedButton4.Enabled := True;
//  BtnConclui.Enabled := False;
  Pedido.SetFocus;
end;

procedure TBoxOperacoesBrindes.BtnFormaClick(Sender: TObject);
begin
  EnableDisableButtons(True, False);
  //BtnNovoPagamento.SetFocus;
end;

procedure TBoxOperacoesBrindes.BtnNovoPagamentoClick(Sender: TObject);
begin
  EnableDisableControls(True, False);
  with tblOrcamentoPecasRecebimento do
    begin
      Insert;
    end;
  FormaPagamento.SetFocus;
end;

procedure TBoxOperacoesBrindes.CodigoClienteExit(Sender: TObject);
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
            if FieldByName('Desconto').AsString = '' then
              DescontoCliente := '0'
            else
              DescontoCliente := FieldByName('Desconto').AsString;
            CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);
         end;
      end;
  end;
  if Pedido.Text = '' then  //Gravar Orçamento de peças
    begin
      IBQuery1.Open;
      IdOrcamentoPecas := IBQuery1.FieldByName('id_Orcamento_pecas').AsInteger;
      Pedido.Text := IntToStr(IdOrcamentoPecas);
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

procedure TBoxOperacoesBrindes.SpeedButton1Click(Sender: TObject);
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

procedure TBoxOperacoesBrindes.SpeedButton2Click(Sender: TObject);
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
     if Pedido.Text <> '' then  //Gravar Orçamento de peças
       tblOrcamentoPecas.FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
     CodigoCliente.SetFocus;
end;

procedure TBoxOperacoesBrindes.SpeedButton3Click(Sender: TObject);
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

procedure TBoxOperacoesBrindes.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de peças pendentes','Pedido_Veiculos',
      ['Id_Orcamento_Pecas','Id_Clientes','Valor_Liquido_Venda','Id_Concessionaria'],
      ['Sequência:','Cod.Cliente:','Valor Venda:','Concessionária:',''],
      'Chassi','Id_Pedido_Veiculos',Fdb1.SQLConnection1,'Status =' + '''' + 'Fechado'+ '''' + ' or Status =',
         'Faturado','idConcessionaria');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('idPedidoVeiculos').AsInteger := StrToInt(Retorno);
        Open;
        Pedido.Text := Retorno; 
     end;

     Pedido.SetFocus;
end;

procedure TBoxOperacoesBrindes.SpeedButton5Click(Sender: TObject);
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
        tblOrcamentoPecas.FieldByName('Id_Vendedor').AsString := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeVendedorPecas.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     VendedorPecas.SetFocus;
end;

procedure TBoxOperacoesBrindes.tblOrcamentoPecasBeforeDelete(DataSet: TDataSet);
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

procedure TBoxOperacoesBrindes.tblPecasAfterCancel(DataSet: TDataSet);
begin
 FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxOperacoesBrindes.tblPecasAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxOperacoesBrindes.ValorDevidoExit(Sender: TObject);
begin
  Vencimento.SetFocus;
end;

procedure TBoxOperacoesBrindes.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxOperacoesBrindes.VendedorPecasExit(Sender: TObject);
begin
  if VendedorPecas.Text = '' then
    VendedorPecas.Text := '0';
  if StrToInt(VendedorPecas.Text) = 0 then
    SpeedButton5.Click;
  tblOrcamentoPecas.Post;
  tblOrcamentoPecas.Edit;
end;

procedure TBoxOperacoesBrindes.wwDBGrid2DblClick(Sender: TObject);
begin
   with tblPedidoVeiculosAcessorios do
    begin
     edit;
     if fieldbyname( 'entregue' ).asString = 'S' then
       begin
        fieldbyname( 'entregue' ).asString := 'N';
        TotalBrindes.value := TotalBrindes.Value - fieldByName('Valor_Acessorio').AsCurrency;
       end
     else
       if (FieldByName('Entrega').AsDateTime = null) or
          (FieldByName('Entrega').AsDateTime < StrToDate('01/01/2009')) then
         begin
           FieldByName( 'entregue' ).asString := 'S';
           TotalBrindes.Value := TotalBrindes.Value + fieldByName('Valor_Acessorio').AsCurrency;
         end
       else
        Showmessage('Este brinde já foi entregue.');
     post;
    end;
end;

procedure TBoxOperacoesBrindes.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
//  BtnNovoPagamento.Enabled := Value;
  //BtnExcluiPagamento.Enabled := Value;
//  BtnConfirmaPagamento.Enabled := Value;
//  BtnConcluiPagamento.Enabled := Value;
//  BtnDesconto.Enabled := Value1;
//  BtnCancelar.Enabled := Value1;
  BtnNovoItem.Enabled := Value1;
//  BtnConclui.Enabled := Value1;
//  BtnNovaVenda.Enabled := Value1;
//  BtnForma.Enabled := Value1;
end;

procedure TBoxOperacoesBrindes.EnableDisableControls(Value: Boolean; Value1: Boolean);
begin
//  FormaPagamento.Enabled := Value;
//  ValorDevido.Enabled := Value;
  //Vencimento.Enabled := Value;
  Pedido.Enabled := Value1;
  CodigoCliente.Enabled := Value1;
  CodigoPeca.Enabled := Value1;
  Quantidade.Enabled := Value1;
  PrecoVenda.Enabled := Value1;
  SpeedButton1.Enabled := Value1;
  SpeedButton2.Enabled := Value1;
end;

procedure TBoxOperacoesBrindes.HabilitaDesabilitaBotoes(Value : Boolean);
begin
  BtnNovoItem.Enabled := Value;
  BtnExcluiItem.Enabled := Value;
  BtnConfirmaItem.Enabled := Value;
  Panel2.Enabled := Value;
  Panel3.Enabled := Value;
//  Panel3.enabled := False;
end;

procedure TBoxOperacoesBrindes.AbrirDs;
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

procedure TBoxOperacoesBrindes.FecharDs;
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
