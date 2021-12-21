unit FaturamentoVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ToolWin, StdCtrls, DB, IBCustomDataSet, Buttons,
  Mask, DBCtrls, Grids, DBGrids, IBQuery, rxToolEdit, rxCurrEdit, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBControls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP;

type
  TBoxFaturamentoVeiculos = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Pedido: TEdit;
    LabelPedido: TLabel;
    DataSourcepedidoVeiculos: TDataSource;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
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
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    CodigoCliente: TDBEdit;
    DBGrid1: TDBGrid;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
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
    Label7: TLabel;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    tblNofisaFaturas: TIBDataSet;
    DataSourceNofisaFaturas: TDataSource;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    IBQuery1: TIBQuery;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    BtnNovo: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConfirma: TBitBtn;
    IBQuery2: TIBQuery;
    ValorParaFaturamento: TCurrencyEdit;
    DataSourceNofisa: TDataSource;
    tblNofisa: TIBDataSet;
    Label10: TLabel;
    CodigoFinanceira: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    NomeFinanceira: TJvDBMaskEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
    DataSourceVeiculos: TDataSource;
    tblVeiculos: TIBDataSet;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosNOTA_ENT: TIBStringField;
    tblVeiculosDATA_ENT: TDateField;
    tblVeiculosFONE: TIBStringField;
    tblVeiculosCONSIG: TIBStringField;
    tblVeiculosCUSTO: TIBBCDField;
    tblVeiculosCUSTO_ICMS: TIBBCDField;
    tblVeiculosPRECO: TIBBCDField;
    tblVeiculosDATA_SAI: TDateField;
    tblVeiculosNF_SAIDA: TIBStringField;
    tblVeiculosVENDA: TIBStringField;
    tblVeiculosMOTOR: TIBStringField;
    tblVeiculosFINANC_PRO: TIBStringField;
    tblVeiculosSTATUS: TIBStringField;
    tblVeiculosRESERVADA: TDateField;
    tblVeiculosFOTO: TIBStringField;
    tblVeiculosRESERVADA_POR: TIBStringField;
    tblVeiculosESTOQUE: TIBStringField;
    tblSada: TIBDataSet;
    DataSourceSada: TDataSource;
    tblSadaID_SADA: TIntegerField;
    tblSadaID_NOFISA: TIntegerField;
    tblSadaID_CONCESSIONARIA: TIntegerField;
    DataSourceSerieNF: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    tblVeiculosORIGEM: TIBStringField;
    Label14: TLabel;
    Observacao: TEdit;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblCreceber: TIBDataSet;
    DataSourceCreceber: TDataSource;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
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
    Label13: TLabel;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblNofisaFaturasFORMA_PAGAMENTO: TStringField;
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
    ValorDevido: TJvDBMaskEdit;
    Vencimento: TJvDBDateEdit;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    BtnConfirmaPagamento: TBitBtn;
    SerieNF: TComboBox;
    tblCreceberSTATUS: TIBStringField;
    BtnReceber: TBitBtn;
    BtnImprimir: TBitBtn;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    IBQuery3: TIBQuery;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    Label18: TLabel;
    DadosAd01: TEdit;
    DadosAd02: TEdit;
    DadosAd03: TEdit;
    DadosAd04: TEdit;
    tblSerieNF1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField3: TIntegerField;
    DataSourceSerieNF1: TDataSource;
    IBQuery4: TIBQuery;
    Panel2: TPanel;
    Frete: TRadioGroup;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    Label19: TLabel;
    Brindes: TCurrencyEdit;
    Label20: TLabel;
    DescontoUsadas: TCurrencyEdit;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    tblDescontoFinanceira: TIBDataSet;
    DataSourceDescontoFinanceira: TDataSource;
    tblDescontoFinanceiraID_DESCONTO_FINANCEIRA: TIntegerField;
    tblDescontoFinanceiraID_CLIENTES: TIntegerField;
    tblDescontoFinanceiraID_PEDIDO: TIntegerField;
    tblDescontoFinanceiraVALOR: TIBBCDField;
    tblDescontoFinanceiraNUMERO_NF: TIntegerField;
    tblDescontoFinanceiraDATA_NF: TDateField;
    tblDescontoFinanceiraID_NOFISA: TIntegerField;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    tblVeiculosNCM: TIBStringField;
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
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULO: TIntegerField;
    tblPedidoVeiculosCILINDRADAS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    Label21: TLabel;
    Grupo: TMaskEdit;
    Label22: TLabel;
    Cota: TMaskEdit;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    tblNofisaVENDEDOR: TIntegerField;
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_MECANICO: TIntegerField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    tblNofisaNFE_REFERENCIADA: TIBStringField;
    tblNofisaNUMERO_NFSE: TIBStringField;
    tblNofisaCODIGO_NFSE: TIBStringField;
    tblNofisaARQ_XML_RPS: TIBStringField;
    tblNofisaARQ_XML_NFSE: TIBStringField;
    tblNofisaXML_NFSE: TWideMemoField;
    tblNofisaXML_RPS: TWideMemoField;
    tblSadaNF: TIBStringField;
    tblSadaCODIGO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
    tblSadaQTDE: TSmallintField;
    tblSadaUNIDADE: TIBStringField;
    tblSadaCST: TIBStringField;
    tblSadaSUBST: TIBStringField;
    tblSadaICMS: TIBBCDField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
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
    tblSadaPOTENCIA: TIBStringField;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    tblVeiculosCODIGO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    tblPedidoVeiculosFORMA_VISITA: TIBStringField;
    tblPedidoVeiculosID_VEICULO_USADO: TIntegerField;
    tblPedidoVeiculosDATA_PEDIDO: TDateField;
    IBQuery7: TIBQuery;
    IBQuery7TOT_NOTA: TIBBCDField;
    tblPedidoVeiculosNUM_CPF: TIBStringField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblVeiculosVBC_STRET: TIBBCDField;
    tblVeiculosPST: TIBBCDField;
    tblVeiculosVICMS_STRET: TIBBCDField;
    tblVeiculosPRED_BCST: TIBBCDField;
    tblVeiculosVBC_ST: TIBBCDField;
    tblVeiculosPICMS_ST: TIBBCDField;
    tblVeiculosVICMS_ST: TIBBCDField;
    tblNofisaFaturasNUMERO_CV: TIBStringField;
    tblCreceberNUMERO_CV: TIBStringField;
    tblPedidoVeiculosRecebimentoNUMERO_CV: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GerarFaturas;
    procedure tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
    procedure tblPedidoVeiculosAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure EnableDisableButtons(Value : Boolean; Value1 : Boolean);
    procedure EnableDisableControls(Value : Boolean);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CodigoFinanceiraExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SerieNFExit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure tblNofisaFaturasBeforePost(DataSet: TDataSet);
    procedure BtnReceberClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure CriarNFDesconto;
    procedure ObservacaoExit(Sender: TObject);
    procedure DescontoUsadasExit(Sender: TObject);
    procedure GravarTabelaDesconto;
    procedure GrupoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idPedido : Integer;
    idNofisa : Integer;
    idCreceber : Integer;
    CNPJ : String;
    idNotaVelha : Integer;
    idNofisaVelha : Integer;
    idNumeroNotaFiscal : Integer;
    idFinanceira : Integer;
    ValorDesconto : Extended;
    DataVelha : Variant;
    NFGerada : Boolean;
    GeradoFaturas : Boolean;
    Cilindradas : Integer;
//    SerieNotaFiscal : String;
//    Dados_ad01 : String;
//    Dados_ad02 : String;
//    Dados_ad03 : String;
//    Dados_ad04 : String;
    Reducao_de_Base : String;
    CFOP1 : String;
    CFOP2 : String;
    Financiado : Boolean;
    DescricaoCodigoFiscal : String;
    procedure DoAfterClose; virtual;
    procedure AbrirDs; virtual;
    procedure EnviarEmail;
    procedure CancelaFaturamento; virtual;
    procedure GeraNf; virtual;
    procedure CFOP(StrTexto : String);
    procedure CalculaValordeFaturamento;
  end;

var
  Retorno : String;
  BoxFaturamentoVeiculos: TBoxFaturamentoVeiculos;

implementation

uses FaturamentoPosVenda, FDB, Biblioteca, Empresas, efuncoes,
  FinanceiroCaixaEntradasPedidos, RelatorioNotasFiscais, ReemiteNFs,
  NfeGerenciamento, DescontoFinanceira;

{$R *.dfm}

procedure TBoxFaturamentoVeiculos.CFOP(StrTexto: String);
begin
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('select * from Cfop');
  if StrTexto = 'U' then
     IBQuery2.Sql.Add('Where venda_Usados = '+''''+'T'+'''');
  if StrTexto = 'N' then
     IBQuery2.SQL.Add('Where venda_novos = '+''''+'T'+'''');
  if StrTexto = 'S' then
     IBQuery2.SQL.Add('Where prestacao_servicos = '+''''+'T'+'''');
  if StrTexto = 'P' then
     IBQuery2.SQL.Add('Where Pecas_substituicao_icms = '+''''+'T'+'''');
  if StrTexto = 'I' then
     IBQuery2.SQL.Add('Where pecas_com_icms = '+''''+'T'+'''');
  IBQuery2.Open;
  Reducao_de_base := IBQuery2.FieldByName('Reducao_de_base').AsString;
  Cfop1 := IBQuery2.FieldByName('CFOP1').AsString;
  Cfop2 := IBQuery2.FieldByName('CFOP2').AsString;
  DescricaoCodigoFiscal := IBQuery2.FieldByName('DESCRICAO').AsString;
  Dadosad01.Text := Substr( IBQuery2.FieldByName('Dados_ad01').AsString,1,50 );
  Dadosad02.Text := Substr( IBQuery2.FieldByName('Dados_ad02').AsString,1,50 );
  if tblVeiculos.FieldByName('Origem').AsString = 'U' then
     DadosAd03.text := Substr('NF de entr.: ' +
       tblveiculos.FieldByName('Nota_ent').AsString +' de: ' +
       tblVeiculos.FieldByName('Data_ent').AsString,1,50);

//  Dadosad03.Text := IBQuery2.FieldByName('Dados_ad03').AsString;
end;

procedure TBoxFaturamentoVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DoAfterClose;
   Action :=caFree;
   BoxFaturamentoVeiculos := nil;
end;

procedure TBoxFaturamentoVeiculos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Pedido.Text <> '')  and
   (tblPedidoVeiculos.FieldByName('Status').AsString <> 'Faturado') then
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

procedure TBoxFaturamentoVeiculos.CancelaFaturamento;
var
  I: Integer;
begin
  with tblNofisaFaturas do
   begin
    Last;
    First;
    for I := 0 to RecordCount - 1 do
     delete;
   end;
end;

procedure TBoxFaturamentoVeiculos.CodigoFinanceiraExit(Sender: TObject);
var
  i: Integer;
begin
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
      SerieNF.Enabled := True;
      SerieNF.ItemIndex := 0;

if CodigoFinanceira.Text = '' then
   CodigoFinanceira.Text := '0';
idFinanceira := StrToInt(CodigoFinanceira.Text);
if StrtoInt(CodigoFinanceira.Text) = 0 then
  begin
//   ValorParaFaturamento.Enabled := True;
  // ValorParaFaturamento.SetFocus;
    Observacao.Enabled := True;
    Observacao.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFinanceira<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idfinanceira;
          Open;
          Last;
          First;
          if recordcount = 0  then
            begin
             showmessage('Financeira inexistente.');
             CodigoFinanceira.SetFocus;
            end
          else
            begin
             if not FieldByName('Financeira').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à uma financeira.');
                CodigoFinanceira.SetFocus;
               end;
            end;
         end;
         Nomefinanceira.Text := FieldbyName('Nome').Text;
         EnableDisableButtons(False, True);
         if NomeFinanceira.Text <> '' then
            Observacao.Text := Substr('Alienação fiduciária a ' + trim(  FieldbyName('Nome').Text),1,60);
         Observacao.SetFocus;
      end;
  end;
end;

procedure TBoxFaturamentoVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFaturamentoVeiculos.FormShow(Sender: TObject);
begin

//  Showmessage('Caso a financeira esteja exigindo uma NF'+ #13 + 'de valor superior ao do financiamento' + #13 +
//    'Registre uma fatura de' + #13 + 'DESCONTO FINANCEIRA' + #13+ 'do valor que está sendo emitido a maior.');
  GeradoFaturas := False;
  NFGerada := False;
  EnableDisableButtons(False, False);
  AbrirDs;
  Pedido.Setfocus;

end;

procedure TBoxFaturamentoVeiculos.PedidoExit(Sender: TObject);
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
    with tblPedidoVeiculos do
      begin
       if idPedido<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idPedido;
          ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          Open;
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
                end
             else
             if FieldByName('Status').AsString = 'Pendente' then
                begin
                  showmessage('Pedido pendente de autorização.');
                  Pedido.SetFocus;
                end
             else
             if FieldByName('Status').AsString = 'Fechado' then
                begin
                  showmessage('Pedido está fechado.');
                  Pedido.SetFocus;
                end
             else
             if FieldByName('Status').AsString = 'Cancelado' then
                begin
                  showmessage('Pedido cancelado.');
                  Pedido.SetFocus;
                end
             else
             if tblPedidoVeiculos.FieldByName('Status').AsString = 'Faturado' then
                begin
                  showmessage('Pedido já faturado.');
                  Pedido.SetFocus;
                end
             else
             if FieldByName('Status').AsString <> 'Aprovado' then
                begin
                  showmessage('Pedido não aprovado.');
                  Pedido.SetFocus;
                end;
            end;
         end;
      end;
   end;
   Dadosad04.Text := 'CPF do vendedor:' + tblPedidoVeiculos.FieldByName('Num_CPF').AsString;//cpf do vendedor //IBQuery2.FieldByName('Dados_ad04').AsString;
   if tblVeiculos.FieldByName('Origem').AsString = 'N' then
       CFOP('N')
   else
       CFOP('U');
    With tblPedidoVeiculosRecebimento do
     begin
       Financiado := False;
       Close;
       ParamByName('id').AsInteger := StrToInt(Pedido.Text);
       Open;
       First;
       while not eof do
        begin
         if FieldByName('id_formas_Pagamento').AsInteger = 1 then
           Financiado := True;
         Next;
        end;
       First;
     end;
     CodigoFinanceira.Text := tblPedidoVeiculos.FieldByName('Id_Financeira').AsString;
     with tblPessoas do
     begin
       Close;
       ParamByName('id').AsInteger := tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
       Open;
       CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
       CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);
     end;
     if tblPessoas.FieldByName('Codigo_Municipio').AsString = null then
      begin
       Showmessage('Atualize o cadastro do cliente.');
       Pedido.SetFocus;
      end;

        IBQuery2.Close;
        IBQuery2.SQL.Clear;
        IBQuery2.Sql.Add('select sum(Pedido_Veiculos_Recebimento.valor_devido) as Valor');
        IBQuery2.SQL.Add('from Pedido_Veiculos_recebimento');
        IBQuery2.SQL.Add('where Pedido_Veiculos_recebimento.Id_Pedido_veiculos =');
        IBQuery2.Sql.Add(':idPedidoVeiculos');
        IBQuery2.Parambyname('idPedidoVeiculos').AsString := Pedido.Text; //IntToStr(IdNofisa);
        IBQuery2.Open;
        ValorParaFaturamento.Text := IBQuery2.FieldByName('Valor').AsString;
        if  (FDB1.IBDataSetLoginacesso99.AsString = 'T') or
            (FDB1.IBDataSetLoginADM.AsString = 'T') then
            ValorParaFaturamento.Enabled := True
        else
            ValorParaFaturamento.Enabled := False;
    CodigoFinanceira.SetFocus;
    Cilindradas := tblPedidoveiculos.FieldByName('cilindradas').AsInteger;
end;

procedure TBoxFaturamentoVeiculos.CalculaValordeFaturamento;
begin
  with IBQuery5 do
   begin
    Close;
    ParamByName('idPedidoVeiculos').AsInteger := idPedido;
    Open;
    Brindes.Value := FieldByName('Valor').AsCurrency;
   end;
  With IBQuery6 do
   begin
    Close;
    ParamByName('idNofisa').AsInteger := idNofisa;
    Open;
   end;
  ValorParaFaturamento.Value := tblPedidoVeiculos.FieldByName('Valor_a_receber').AsCurrency -
      DescontoUsadas.Value -  //Desconto de usadas
      IBQuery6.FieldByName('Valor').AsCurrency; // valor do desconto de financeira
//      IBQuery5.FieldByName('Valor').AsCurrency + //Valor dos brindes

end;

procedure TBoxFaturamentoVeiculos.SerieNFExit(Sender: TObject);
begin
  EnableDisableButtons(True, True);
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
//  BtnConfirma.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de veículos','Pedido_veiculos',
      ['Chassi','Id_Pedido_veiculos','Id_Cliente','Id_Concessionaria'],
      ['Chassi:','Sequência:','Cliente:','Concessionária:',''],
      'Chassi','Id_pedido_veiculos',Fdb1.SQLConnection1,'Status = '+ '''' + 'Aprovado'+ '''' + ' or Status =' +
      '''' + 'Pendente' + '''' + 'or Status = ','Em edição','idconcessionaria');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        ParamByName('IdConcessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        Pedido.Text := tblPedidoVeiculos.FieldByName('Id_Pedido_veiculos').Text;
     end;
     Pedido.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Agente Financeiro','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Financeira = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoFinanceira.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeFinanceira.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFinanceira.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.tblNofisaFaturasBeforePost(DataSet: TDataSet);
begin
  tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger := idNofisa;
end;

procedure TBoxFaturamentoVeiculos.tblPedidoVeiculosAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFaturamentoVeiculos.tblPedidoVeiculosAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFaturamentoVeiculos.GerarFaturas;
var
  I: Integer;
begin
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  with tblPedidoVeiculosRecebimento do
  begin
     Last;
     First;
     for I := 0 to RecordCount - 1 do
       begin
         tblNofisaFaturas.Insert;
         tblNofisaFaturas.FieldByName('Id_Formas_Pagamento').AsInteger :=
           FieldByName('Id_Formas_Pagamento').AsInteger;
         tblNofisaFaturas.FieldByName('Id_Nofisa').AsInteger :=  IdNofisa;
         tblNofisaFaturas.FieldByName('Vencimento').AsDateTime :=
           FieldByName('Vencimento').AsDateTime;
         tblNofisaFaturas.FieldByName('Valor').AsCurrency :=
           FieldByName('Valor_devido').AsCurrency;
         tblNofisaFaturas.FieldByName('Numero_CV').AsString :=
           FieldByName('Numero_CV').AsString;
         tblNofisaFaturas.Post;
         Next;
       end;
     tblnofisafaturas.Close;
     tblNofisaFaturas.ParamByName('id').AsInteger := IdNofisa;
     tblNofisafaturas.Open;   
  end;
end;

procedure TBoxFaturamentoVeiculos.ObservacaoExit(Sender: TObject);
begin
  if not GeradoFaturas then
    GerarFaturas;
  GeradoFaturas := True;
end;

procedure TBoxFaturamentoVeiculos.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.BtnConfirmaClick(Sender: TObject);
var
  Gerar : Boolean;
  Cancelar : Boolean;
//  mcusto : Extended;
begin
  if (Copy(BoxEmpresas.CNPJ,1,8) = Copy(CNPJ,1,8)) then
     Showmessage('Não é possivel fazer faturamento para mesmo CNPJ.')
  else
    begin

      if not ConfereVencimento(tblPedidoVeiculosRecebimento) then
       showmessage('Geração cancelada.'+#13+'Há vencimentos passados.')
      else
      if not ConfereVencimento(tblNofisaFaturas) then
       showmessage('Geração cancelada.'+#13+'Há vencimentos passados.')
      else
      begin
      if (financiado) and (Observacao.Text = '') then
        begin
          Showmessage('Este veículo deve possuir alienação.');
          Observacao.SetFocus;
        end
      else
      begin
      if (tblPessoas.FieldByName('id_Clientes').AsInteger = 1) or
         (tblSerieNF.FieldByName('SerieNF').AsString = 'CF') then
        Showmessage('Cliente consumidor ou série de NF não permitida.')
      else
      begin
      if (not NFGerada) then
       begin
        EnableDisableControls(False);
        IBQuery2.Close;
        IBQuery2.SQL.Clear;
        IBQuery2.Sql.Add('select sum(Nofisa_faturas.valor) as Valor');
        IBQuery2.SQL.Add('from Nofisa_faturas');
        IBQuery2.SQL.Add('where Nofisa_faturas.Id_Nofisa =');
        IBQuery2.Sql.Add(':idNofisa');
        IBQuery2.Parambyname('idNofisa').AsString := IntToStr(IdNofisa);
        IBQuery2.Open;
        GErar := True;
        with tblVeiculos do
          begin
            Close;
            ParamByName('Id').AsInteger := tblPedidoveiculos.FieldByName('id_veiculos').AsInteger;
            Open;
          end;
        with IBQuery7 do
          begin
            Close;
            ParamByName('idNumero').AsString := tblVeiculos.FieldByName('Nota_ent').AsString;
            ParamByName('idConcessionaria').AsInteger :=  tblVeiculos.FieldByName('id_Concessionaria').AsInteger;
            Open;
          end;
        Cancelar := False;
        if (tblVeiculos.FieldByName('Origem').AsString = 'U') then//acrescentado em 29/06/2020
         begin
          if ((StrToInt(ValorParaFaturamento.Text)-2500 > IBQuery7.FieldByName('TOT_NOTA').AsInteger) and //tblVeiculos.FieldByName('Custo').AsInteger) and
           (tblVeiculos.FieldByName('Origem').AsString = 'U')) or
           ((StrToInt(ValorParaFaturamento.Text) <= IBQuery7.FieldByName('TOT_NOTA').AsInteger) and //tblVeiculos.FieldByName('Custo').AsInteger) and
           (tblVeiculos.FieldByName('Origem').AsString = 'U')) then
          begin
           Showmessage('Faturamento de motocicleta usada em desacordo.'+#13+'Valor de venda inferior ao custo.'+#13+
             'Faturamento cancelado.');
           Cancelar := True;
          end;
         end;

//        else
        if not Cancelar then
        begin
         if IBQuery2.FieldByName('Valor').AsString =
           (ValorParaFaturamento.Text) then
           begin
             case MessageDlg('Confirma geração da NF?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes:
               begin
                 with tblPedidoVeiculosRecebimento do
                   begin
                     First;
                     while not eof do
                      begin
                        if (FieldByName('Vencimento').AsDateTime > DataAtual) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 5) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 9) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 13) and
                           (FieldByName('Id_Formas_Pagamento').AsInteger <> 10) then
                          if FDB1.ClienteComDebito(StrToInt(CodigoCliente.Text)) then
                           begin
                            Showmessage('Este cliente tem débitos em aberto.'+#13+'Faturamento cancelado.');
                            Gerar := False;
                           end;
                        Next;
                      end;
                   end;
                 if Gerar then
                   begin
                     GeraNF;
                     ValorParaFaturamento.Text := '';
                   end;
               end;
             end;
             BtnImprimir.SetFocus;
           end
         else
           begin
             showmessage('A soma das faturas não confere com o total da nota.');
             BtnNovo.SetFocus;
           end;
        end
        else
        showmessage('Não há NF para gerar');
       end;
      end;
      end;
     end;
    end;
end;

procedure TBoxFaturamentoVeiculos.BtnConfirmaPagamentoClick(Sender: TObject);
begin
  tblNofisaFaturas.Post;
  BtnNovo.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.GeraNf;
var
  matriz: array[1..11] of String;
  I: integer;
  CriarNFdeDesconto : Boolean;
begin
 {Pegar o número da NF}
 with tblSerieNF do
  begin
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
  end;
 try
  CriarNFdeDesconto := False;
  NFGerada := True;
{gravar agente financeiro}
  with tblPedidoVeiculos do
  begin
    Edit;
    FieldByName('Id_financeira').AsInteger := StrToInt(CodigoFinanceira.Text);
    Post;
  end;
{LOCALIZANDO O REGISTRO DA financeira}
  with tblPessoas do
  begin
    Close;
    ParamByName('Id').AsInteger :=
      tblPedidoVeiculos.FieldByName('id_financeira').AsInteger;
    Open;
    if ((recordCount <> 0) and (tblPessoas.FieldByName('fabricante').AsBoolean)) or
       ((Observacao.Text <> '' ) and (tblPessoas.FieldByName('fabricante').AsBoolean)) then
      begin
        {enviar email de gravame}
//         showmessage('envia email');
        EnviarEmail;
      end
    else
  //   showmessage('nao envia email');
  end;
 {LOCALIZANDO O REGISTRO DA PESSOA}
  with tblPessoas do
  begin
    Close;
    ParamByName('Id').AsInteger :=
      tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
    Open;
  end;
{Alterar o veiculos}
  with tblVeiculos do
  begin
    Close;
    ParamByName('Id').AsInteger := tblPedidoveiculos.FieldByName('id_veiculos').AsInteger;
    Open;
    Edit;
    FieldByName('id_clientes').AsInteger :=
      tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
    FieldByName('Status').AsString := 'VENDIDO';
    FieldByName('NF_Saida').AsString := IntToStr(IdNumeroNotaFiscal);
    Fdb1.AtualizaDataAtual;
    FieldByName('Data_SAI').AsDateTime := DataAtual;
    Post;
  end;
  {Gravar o Nofisa}
  with tblNofisa do
  begin
     Insert;
     FieldByName('id_nofisa').AsInteger := IdNofisa;
     FieldByName('Id_Concessionaria').AsInteger :=
       tblPedidoveiculos.FieldByName('Id_Concessionaria').AsInteger;
     FieldByName('Id_Clientes').AsInteger :=
       tblPedidoveiculos.FieldByName('Id_clientes').AsInteger;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('SerieNF').AsString := SerieNF.Text;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     FieldByName('ENT_SAI').AsString := 'S';
     FieldByName('vendedor').AsInteger :=
       tblPedidoveiculos.FieldByName('Id_vendedor').AsInteger;
     FieldByName('Origem').AsString := tblveiculos.FieldByName('Origem').AsString;
     if tblVeiculos.FieldByName('Origem').AsString = 'N' then
       begin
         CFOP('N');
         FieldByName('Base_ICMS').AsCurrency := 0;
         FieldByName('Val_Icms').AsCurrency := 0;
       end
     else  {veiculos usado}
        begin
         CFOP('U');
//         showmessage(FloatToStr(BoxEmpresas.Aliquota_ICMS1.Value));
         FieldByName('Base_ICMS').AsFloat := (ValorParaFaturamento.Value *
          (100-StrToFloat(Reducao_de_base)))/100;
         FieldByName('Val_ICMS').AsFloat := FieldByName('Base_ICMS').AsFloat *
          (BoxEmpresas.Aliquota_ICMS1.Value);
        end;
     FieldByName('Tot_prod').AsCurrency := ValorParaFaturamento.Value;
     FieldByName('Tot_Nota').AsCurrency := ValorParaFaturamento.Value;
     if tblPessoas.FieldByName('Estado').AsString = 'RS' then
       FieldByName('Codigo_Fiscal').AsString := CFOP1
     else
       FieldByName('Codigo_fiscal').AsString := CFOP2;
     FieldByName('Descricao_codigo_fiscal').AsString := Trim( DescricaoCodigoFiscal ) ;


     FieldByName('Frete_Tipo').AsString := IntToStr(Frete.ItemIndex + 1);
     FieldByName('Dados_Ad01').AsString := Substr( Dadosad01.Text,1,50 ) ;
     FieldByName('Dados_Ad02').AsString := Substr( Dadosad02.Text,1,50 );
     FieldByName('Dados_Ad03').AsString := Substr( DadosAd03.Text,1,50 );

     FieldByName('Dados_Ad04').AsString := Substr( DadosAd04.Text,1,50 ) ;
     FieldByName('Dados_Ad05').AsString := Substr('Sequência do cliente:'+ FieldByName('Id_Clientes').AsString,1,50);
     if tblVeiculos.FieldByName('Origem').AsString = 'N' then
       FieldByName('Dados_Ad03').AsString := trim( DadosAd03.Text )
     else
         FieldByName('Dados_Ad03').AsString := Substr('NF de entr.: ' +
           tblveiculos.FieldByName('Nota_ent').AsString +' de: ' +
           tblVeiculos.FieldByName('Data_ent').AsString,1,50);
     FieldByName('Dados_Ad04').AsString := Substr(DadosAd04.Text,1,50);

    /// showmessage( '01 '+ inttostr( length( fieldbyname( 'dados_ad01' ).asString ) ));
    // showmessage( '02 '+ inttostr( length( fieldbyname( 'dados_ad02' ).asString ) ));
    // showmessage( '03 '+ inttostr( length( fieldbyname( 'dados_ad03' ).asString ) ));
    // showmessage( '04 '+ inttostr( length( fieldbyname( 'dados_ad04' ).asString ) ));
   //  showmessage( '05 '+ inttostr( length( fieldbyname( 'dados_ad05' ).asString ) ));
   //  showmessage( 'obs '+ inttostr( length( Observacao.Text ) ));

     FieldByName('Obs').AsString := Substr( Observacao.Text,1,60 ) ;
     FieldByName('Qtde_prod').AsInteger := 1;
     FieldByName('Status').AsString := 'Processado';
     Post;
  end;
{Gravar dados da nf - sada}
 with tblSada do
 begin
    Insert;
    FieldByName('Id_Concessionaria').AsInteger :=
      tblPedidoveiculos.FieldByName('Id_Concessionaria').AsInteger;
    FieldByName('Id_Nofisa').AsInteger := IdNofisa;
    if tblPessoas.FieldByName('Estado').AsString = 'RS' then
       FieldByName('CFOP').AsString := CFOP1
    else
       FieldByName('CFOP').AsString := CFOP2;
    FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
    FieldByName('NCM').AsString := tblveiculos.FieldByName('NCM').AsString;
    FieldByName('Descricao').AsString := 'Motocicleta';
    FieldByName('Qtde').AsInteger := 1;
    FieldByName('Unidade').AsString := 'UN';
    FieldByName('NAT_OP').AsString := DescricaoCodigoFiscal;
    FieldByName('Cilindradas').AsInteger := Cilindradas;
    matriz[1] := 'Marca';
    matriz[2] := 'Modelo';
    matriz[3] := 'Placa';
    matriz[4] := 'Ano_Modelo';
    matriz[5] := 'Ano_Fabricacao';
    matriz[6] := 'Renavam';
    matriz[7] := 'Cor';
    matriz[8] := 'Combustivel';
    matriz[9] := 'CST';
    matriz[10] := 'Chassi';
    matriz[11] := 'Motor';
    for I := 1 to 11 do
      begin
        FieldByName(matriz[i]).AsString :=
           tblVeiculos.FieldByName(matriz[i]).AsString;
      end;
    FieldByName('Potencia').AsString := tblVeiculos.FieldByName('HP').AsString;
    FieldByName('Custo').AsString := tblVeiculos.FieldByName('Custo_Icms').AsString;
    FieldByName('Preco').AsCurrency := ValorParaFaturamento.Value;
    if tblVeiculos.FieldByName('Origem').AsString = 'N' then
       begin
         FieldByName('Subst').AsString := 'T';
         FieldByName('ST_Cofins').AsString := 'T';
         //acrescido em função ICMS_ST em vigor 01/01/2019
         //Campos para atacado
         fieldByName('vBC_STRet').AsCurrency := tblVeiculos.fieldByName('vBC_STRet').AsCurrency;
         fieldByName('pST').AsCurrency := tblVeiculos.fieldByName('pST').AsCurrency;
         fieldByName('vICMS_STRet').AsCurrency := tblVeiculos.fieldByName('vICMS_STRet').AsCurrency;
//                                                                 tblVeiculos.fieldByName('ICMS').AsCurrency;
         //Campos para consumidor final
         fieldByName('pRed_BCEfet').AsCurrency := tblVeiculos.fieldByName('pRed_BCST').AsCurrency;
         fieldByName('vBC_Efet').AsCurrency := ((100 - tblVeiculos.fieldByName('pRed_BCST').AsCurrency)/100) *
                                               ValorParaFaturamento.Value;
         fieldByName('pICMS_Efet').AsCurrency := BoxEmpresas.Aliquota_ICMS1.Value;
         fieldByName('vICMS_Efet').AsCurrency := ValorParaFaturamento.Value * 0.12;//fieldByName('vBC_Efet').AsCurrency *
//                                                 fieldByName('pICMS_Efet').AsCurrency;
       end;
    if (tblVeiculos.FieldByName('Origem').AsString = 'U') or
       (tblVeiculos.FieldByName('Origem').AsString = 'M') then
       begin
         FieldByName('Subst').AsString := 'F';
         FieldByName('ST_Cofins').AsString := 'F';
         if (tblVeiculos.FieldByName('Origem').AsString = 'U') then
           begin
             FieldByName('Base_ICMS').AsFloat := (ValorParaFaturamento.Value *
              (100-StrToFloat(Reducao_de_base)))/100;
             FieldByName('ICMS').AsFloat := FieldByName('Base_ICMS').AsFloat *
              (BoxEmpresas.Aliquota_ICMS1.Value);
             FieldByName('Aliq_ICMs').AsFloat := StrToFloat(BoxEmpresas.Aliquota_ICMS1.EditText);//17/100;
           end;
       end;
    Post;
 end;

{Alterar o Nofisa_faturas}
  with tblNofisafaturas do
  begin
     Close;
     ParamByName('Id').AsInteger := IdNofisa;
     Open;
     First;
     i := 1;
     if RecordCount <> 0 then
     begin
      if (tblNofisaFaturas.RecordCount = 1) and
         (FieldByName('Vencimento').AsString = DateToStr(DataAtual)) then
          begin
           tblNofisa.Edit;
           tblNofisa.FieldByName('Forma_Pagamento').AsString := 'V';
           tblNofisa.Post;
          end;
      while not Eof do
       begin
         if FieldByName('id_formas_pagamento').AsInteger = 11 then
           begin
              CriarNFdeDesconto := True;
//              NFDesconto := idNumeroNotaFiscal;
              ValorDesconto := FieldByName('Valor').AsCurrency;
              DataVelha := tblNofisa.FieldByName('Emissao').AsDateTime;
           end;
         Edit;
         FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
            IntToStr(i);
         Post;
         i := i + 1;
         Next;
       end;
     end;
  end;

{Alterar o pedido_veiculos}
  with tblpedidoVeiculos do
  begin
    Edit;
    FieldByName('id_financeira').AsInteger := StrToInt(CodigoFinanceira.Text);
    FieldByName('Status').AsString := 'Faturado';
    FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);
    Fdb1.AtualizaDataAtual;
    FieldByName('Data_NF').AsDateTime := DataAtual;
    Post;
  end;
{Criar o contas a receber}
 with tblPedidoVeiculosRecebimento do
 begin
   First;
   i := 1;
   while not eof do
    begin
      {Pegar sequence do Creceber}
      IBQuery3.Open;
      IdCreceber := IBQuery3.FieldByName('id_Creceber').AsInteger;
      IBQuery3.Close;
      tblCreceber.Insert;
      tblCreceber.FieldByName('id_Creceber').AsInteger := idCreceber;
      tblCreceber.FieldByName('Id_Concessionaria').AsInteger :=
        tblPedidoveiculos.FieldByName('Id_Concessionaria').AsInteger;
      tblCreceber.FieldByName('Id_Clientes').AsInteger :=
        tblPedidoveiculos.FieldByName('Id_clientes').AsInteger;
      tblCreceber.FieldByName('Id_Pedido_veiculos').AsInteger := idPedido;
      tblCreceber.FieldByName('Documento').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
        IntToStr(i);
      tblCreceber.FieldByName('Parcela').AsString := IntToStr(i);
      tblCreceber.FieldByName('Vezes').AsString :=
        IntToStr(tblpedidoveiculosRecebimento.RecordCount);
      tblCreceber.FieldByName('Id_Forma_Pagamento').AsInteger :=
        tblPedidoVeiculosRecebimento.FieldByName('Id_Formas_pagamento').AsInteger;
      tblCreceber.FieldByName('Origem').AsString :=
        tblVeiculos.FieldByName('Origem').AsString;
      tblCreceber.FieldByName('Id_Avalista').AsInteger :=
        tblPedidoVeiculos.FieldByName('Id_avalista').AsInteger;
      tblCreceber.FieldByName('Vencimento').AsDateTime :=
        tblPedidoVeiculosRecebimento.FieldByName('Vencimento').AsDateTime;
      tblCreceber.FieldByName('Valor').AsCurrency :=
        tblPedidoVeiculosRecebimento.FieldByName('Valor_devido').AsCurrency;
      tblCreceber.FieldByName('Emissao').AsDateTime :=
        tblNofisa.FieldByName('Emissao').AsDateTime;
      if tblVeiculos.FieldByName('Origem').AsString = 'N' then
        tblCreceber.FieldByName('Historico').AsString := Substr('Vlr.ref.venda motoc.0Km - ' +
          tblPessoas.FieldByName('Nome').AsString,1,60);
      if tblVeiculos.FieldByName('Origem').AsString = 'U' then
        tblCreceber.FieldByName('Historico').AsString := Substr('Vlr.ref.venda motoc.usada - ' +
         tblPessoas.FieldByName('Nome').AsString,1,60);
      if tblVeiculos.FieldByName('Origem').AsString = 'M' then
        tblCreceber.FieldByName('Historico').AsString := Substr('Vlr.ref.venda motor de popa - ' +
         tblPessoas.FieldByName('Nome').AsString,1,60);
      tblCreceber.FieldByName('Status').AsString := 'Pendente';
      tblCreceber.FieldByName('Numero_CV').AsString := tblPedidoVeiculosRecebimento.FieldByName('Numero_CV').AsString;
      tblCreceber.Post;
      tblPedidoVeiculosRecebimento.Edit;
      tblPedidoVeiculosRecebimento.FieldByName('id_Creceber').AsInteger := idCreceber;
      tblPedidoVeiculosRecebimento.Post;
      i := i + 1;
      tblPedidoVeiculosRecebimento.Next;
    end;
  end;
  Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
  {Criar NF de Desconto}
   if CriarNFdeDesconto then
     begin
//       CriarNFDesconto;
       GravarTabelaDesconto;
     end;
    {Voltar SQL da tblSerienf}
  with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF';
       Open;
    end;
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

procedure TBoxFaturamentoVeiculos.EnviarEmail;
var
 SmtpHost : String;
 SmtpPort : String;
 SmtpUser : String;
 SmtpPass : String;
 EmailAssunto : String;
 Para : String;
 Mensagem : TStringList;
begin
   Mensagem := TStringList.Create();
   with mensagem do
     begin
       add( 'Foi faturada motocicleta que necessita gravame ref. pedido: ' +
          tblPedidoVeiculos.FieldByName('id_Pedido_veiculos').AsString);

//       add( '' + tblPessoas.FieldByName('Id_Clientes').AsString + ' - ' + tblPessoas.FieldByName('Nome').AsString);
//       add( 'que está registrado no SPC.' );
//       add( '' );
       add( 'do cliente sequência: '  + tblPedidoVeiculos.FieldByName('id_Clientes').AsString);
//       add( 'Data do recebimento: ' + tblCreceber.FieldByName('Pagamento').AsString);
       add( '' );
       add( '' );
       add( 'Sem mais,' );
       add( '' );
       add( '' );
       add( BoxEmpresas.Fantasia);
       add( '' );
       add( '' );
       add( 'Não responda este e-mail.');
       add( 'E-mail gerado automaticamente por Autorev-DS - Dealer System' );
     end;

  SmtpHost      := BoxEmpresas.Host;//Ini.ReadString( 'Email','Host'   ,'') ;
  SmtpPort      := BoxEmpresas.Port;//Ini.ReadString( 'Email','Port'   ,'') ;
  SmtpUser      := BoxEmpresas.Usuario;//.ReadString( 'Email','User'   ,'') ;
  SmtpPass      := BoxEmpresas.Pass;//Ini.ReadString( 'Email','Pass'   ,'') ;
  EmailAssunto  := 'Necessidade de registro de gravame';//Ini.ReadString( 'Email','Assunto','') ;
  Para          := 'contasapagar@yamavale.com.br';
//  Para          := 'eduardo@yamavale.com.br';
//  Para := 'nfe.recebimento@yamavale.com.br';
  try
   idMessage1.Recipients.EMailAddresses := Para;
   idMessage1.Subject := EmailAssunto;
   idMessage1.Body := Mensagem;
   idSMTP1.Host := BoxEmpresas.Host;
   idSMTP1.Port := StrToInt(BoxEmpresas.Port);
   idSMTP1.Username := BoxEmpresas.Usuario;
   idSMTP1.Password := BoxEmpresas.Pass;
   idSMTP1.Connect;
   idSMTP1.Send(IdMessage1);
   idSMTP1.Disconnect;
   //Showmessage('e-mail enviado com sucesso.');
  except
     on e:Exception do
      begin
         Showmessage('Erro no envio do e-mail.'+#13+
         'Nao esqueça de avisar o financeiro sobre o gravame.'+ #13 + e.Message );
      end;
  end;
end;

procedure TBoxFaturamentoVeiculos.CriarNFDesconto;//(NFDesconto: String; ValorDesconto : Extended);
var
  IdSada : Integer;
begin
{Pegar o número da NF}
   with tblSerieNF1 do
   begin
     idNotaVelha := idNumeroNotaFiscal;
     Close;
     ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerieNF').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  idNofisaVelha := idNofisa;
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  IBQuery4.Open;
  IdSada := IBQuery4.FieldByName('id_Sada').AsInteger;
  IBQuery4.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    DuplicaRegistro(tblNofisa);
    FieldByName('Emissao').AsDateTime := DataAtual;
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '1411';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'DEV.VED.MEC.ADQ.TERC.SUJ.S.TRIB.';
    FieldByName('Dados_Ad01').AsString := 'DEVOLUCAO REF NF. ' + IntToStr(IdNotaVelha);//NFDesconto.Text;
    FieldByName('Dados_Ad02').AsString := 'DO DIA ' + DateToStr(DataVelha);
    FieldByName('Tot_Prod').Value := ValorDesconto;//.Value;
    FieldByName('Tot_Nota').Value := ValorDesconto;//.Value;
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Chave').AsString := '';
    FieldByName('Recibo').AsString := '';
    FieldByName('Protocolo').AsString := '';
    FieldByName('Arquivo').AsString := '';
    FieldByName('xml').AsString := '';
    FieldByName('Protocolo_Cancelamento').AsString := '';
    FieldByName('Ent_sai').AsString := 'E';
    Post;
   end;
  with tblNofisaFaturas do
   begin
     Insert;
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' + '1';
     FieldByName('Vencimento').AsDateTime := DataAtual;
     FieldByName('Valor').AsCurrency :=  ValorDesconto;//.Value;
     FieldByName('Id_Formas_Pagamento').AsInteger := 2;
     Post;
   end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNofisaVelha;
    Open;
    DuplicaRegistro(tblSada);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('NF').AsString := IntToStr(idNumeroNotaFiscal);//NFDesconto.Text;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Id_Sada').AsInteger := idSada;
    FieldByName('Preco').Value := ValorDesconto;//.Value;
    FieldByName('CFOP').AsString := '1411';
    Post;
  end;
end;

procedure TBoxFaturamentoVeiculos.GravarTabelaDesconto;
begin
  with tblDescontoFinanceira do
   begin
     Insert;
     FieldByName('Id_pedido').AsInteger := tblPedidoVeiculos.FieldByName('id_Pedido_Veiculos').AsInteger;
     FieldByName('Id_Clientes').AsInteger := tblPedidoVeiculos.FieldByName('id_Clientes').AsInteger;
     FieldByName('Id_Nofisa').AsInteger := idNofisa;
     FieldByName('Numero_NF').AsInteger := idNumeroNotaFiscal;
     FieldByName('Data_NF').AsDateTime := DataVelha;
     FieldByName('Valor').AsCurrency :=  ValorDesconto;
     Post;
   end;
end;

procedure TBoxFaturamentoVeiculos.GrupoExit(Sender: TObject);
begin
  If (StrToInt(Grupo.text) > 0) or (StrToInt(cota.Text) > 0) then
   DadosAd03.text := 'Grupo: ' + Grupo.text + ' Cota: ' + cota.text
  else
   DadosAd03.text := '';
end;

procedure TBoxFaturamentoVeiculos.BtnExcluiClick(Sender: TObject);
begin
  Showmessage('Esta operação só excluirá a fatura da NF. Para excluir do contas a receber altere o pedido.');
  case MessageDlg('Excluir fatura?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
      DataSourceNofisaFaturas.dataset.Delete;
     end;
    end;
  BtnNovo.SetFocus;
//  CalculaValorDeFaturamento;
end;

procedure TBoxFaturamentoVeiculos.BtnImprimirClick(Sender: TObject);
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
  if not Assigned(BoxReemiteNFs) then
    BoxReemiteNFs := TBoxReemiteNFs.Create(Self);
  BoxReemiteNFs.Show;
  if BoxReemiteNFs.EmitirNotaFiscal(IntToStr(IdNumeroNotaFiscal)) then
    BoxReemiteNFs.EmiteNF
 end
else
 showmessage('Primeiro gere a NF');
end;

procedure TBoxFaturamentoVeiculos.BtnNovoClick(Sender: TObject);
begin
  tblNofisaFaturas.Insert;
  EnableDisableControls(True);
  FormaPagamento.SetFocus;
end;

procedure TBoxFaturamentoVeiculos.BtnReceberClick(Sender: TObject);
begin
if NFGerada then
 begin
  if not Assigned(BoxFinanceiroCaixaEntradasPedidos) then
    BoxFinanceiroCaixaEntradasPedidos := TBoxFinanceiroCaixaEntradasPedidos.Create(Self);
  BoxFinanceiroCaixaEntradasPedidos.Show;
 end
else
 showmessage('Primeiro gere a NF');
end;

procedure TBoxFaturamentoVeiculos.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
   {: se apertou ESC, fecha janela}
 { if Key = #27 then
    begin
     Close;
    end;
  {: troca ENTER por TAB}
{  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
//    if (ataSourceNofisaFaturas.State in [dsEdit]) then
    if (dts2.State in [dsEdit]) then
      tblAuxFaturas2.Post
    else
      tblAuxFaturas2.Edit;
  end;}
end;

procedure TBoxFaturamentoVeiculos.DescontoUsadasExit(Sender: TObject);
begin
//  CalculaValorDeFaturamento;
end;

procedure TBoxFaturamentoVeiculos.DoAfterClose;
begin
  DataSourceSada.Dataset.Close;
  DataSourceCreceber.Dataset.Close;
  DataSourceDescontoFinanceira.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourcePedidoVeiculos.Dataset.Close;
  DataSourcePedidoVeiculosRecebimento.Dataset.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery3.Close;
  IBQuery4.Close;
  DataSourceSerieNF.Dataset.Close;
  tblSerieNF.Close;
  tblSerienF1.Close;
end;

procedure TBoxFaturamentoVeiculos.AbrirDs;
begin
  DataSourceSada.Dataset.Open;
  DataSourceDescontoFinanceira.Dataset.Open;
  DataSourceCreceber.Dataset.Open;
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourcePedidoVeiculos.Dataset.Open;
  DataSourcePedidoVeiculosRecebimento.Dataset.Open;
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourceSerieNF.Dataset.Open;
end;

procedure TBoxFaturamentoVeiculos.EnableDisableButtons(Value : Boolean; Value1 : Boolean);
begin
  BtnNovo.Enabled := Value;
  BtnExclui.Enabled := Value;
  BtnConfirma.Enabled := Value;
  BtnConfirmaPagamento.Enabled := Value;
//  ValorParaFaturamento.Enabled := Value1;
  Frete.Enabled := Value1;
  Observacao.Enabled := Value1;
end;

procedure TBoxFaturamentoVeiculos.EnableDisableControls(Value: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
end;
end.
