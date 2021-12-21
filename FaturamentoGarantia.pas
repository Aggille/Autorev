unit FaturamentoGarantia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ToolWin, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, Buttons, Mask, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, rxToolEdit, rxCurrEdit, DBCtrls;

type
  TBoxFaturamentoGarantia = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Atendimento: TEdit;
    Label7: TLabel;
    CodigoCliente: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    BtnNovo: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConfirma: TBitBtn;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    DataSourceAtendimento: TDataSource;
    DataSourceAtendimentoRecebimento: TDataSource;
    tblAtendimentoRecebimento: TIBDataSet;
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
    tblNofisaSERIENF: TIBStringField;
    Label13: TLabel;
    SerieNF: TComboBox;
    tblAtendimentoPecas: TIBDataSet;
    DataSourceAtendimentoPecas: TDataSource;
    tblPecasCST: TIBStringField;
    ValorLiquidoVenda: TJvDBMaskEdit;
    Vencimento: TJvDBDateEdit;
    Label16: TLabel;
    ValorDevido: TJvDBMaskEdit;
    Label3: TLabel;
    FormaPagamento: TDBLookupComboBox;
    Label12: TLabel;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblNofisaFaturasFORMA_PAGAMENTO: TStringField;
    BtnConfirmaPagamento: TBitBtn;
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
    tblAtendimentoRecebimentoID_ATENDIMENTO_RECEBIMENTO: TIntegerField;
    tblAtendimentoRecebimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblAtendimentoRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblAtendimentoRecebimentoVENCIMENTO: TDateField;
    tblAtendimentoServicos: TIBDataSet;
    DataSourceAtendimentoServicos: TDataSource;
    tblAtendimento: TIBDataSet;
    tblAtendimentoServicosID_ATENDIMENTO_SERVICOS: TIntegerField;
    tblAtendimentoServicosID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoServicosID_ATENDIMENTO: TIntegerField;
    tblAtendimentoServicosID_TMO: TIntegerField;
    tblAtendimentoServicosTEMPO: TIBBCDField;
    tblAtendimentoServicosPRECO: TIBBCDField;
    tblAtendimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoID_CLIENTES: TIntegerField;
    tblAtendimentoID_MECANICO: TIntegerField;
    tblAtendimentoID_CATEGORIA: TIntegerField;
    tblAtendimentoMARCA: TIBStringField;
    tblAtendimentoMODELO: TIBStringField;
    tblAtendimentoANO_FABRICACAO: TIBStringField;
    tblAtendimentoANO_MODELO: TIBStringField;
    tblAtendimentoCHASSI: TIBStringField;
    tblAtendimentoKM: TIntegerField;
    tblAtendimentoDATA_ENTRADA: TDateField;
    tblAtendimentoDATA_SAIDA: TDateField;
    tblAtendimentoORC_OS: TIBStringField;
    tblAtendimentoCOR: TIBStringField;
    tblAtendimentoPLACA: TIBStringField;
    tblAtendimentoSTATUS: TIBStringField;
    tblAtendimentoMEMO: TBlobField;
    tblAtendimentoDESCONTO: TIBBCDField;
    tblAtendimentoTOTAL_PECAS: TIBBCDField;
    tblAtendimentoTOTAL_SERVICOS: TIBBCDField;
    tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField;
    tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField;
    tblAtendimentoRecebimentoFORMA_PAGAMENTO: TStringField;
    IBQuery3: TIBQuery;
    tblSeda: TIBDataSet;
    DataSourceSeda: TDataSource;
    tblTMO: TIBDataSet;
    DataSourceTMO: TDataSource;
    tblTMOID_TMO: TIntegerField;
    tblTMOCODIGO: TIBStringField;
    tblTMODESCRICAO: TIBStringField;
    tblTMOID_CATEGORIA: TIntegerField;
    tblTMOTEMPO: TIBBCDField;
    tblTMOTEMPO_GAR: TIBBCDField;
    tblTMOREV_GRAT: TIBStringField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblSedaID_SEDA: TIntegerField;
    tblSedaID_CONCESSIONARIA: TIntegerField;
    tblSedaID_NOFI: TIntegerField;
    tblSedaNF: TIBStringField;
    tblSedaID_TMO: TIntegerField;
    tblSedaDESCRICAO_SERVICO: TIBStringField;
    tblSedaTEMPO: TIBBCDField;
    tblSedaPRECO: TIBBCDField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    Label4: TLabel;
    DadosAd01: TEdit;
    DadosAd02: TEdit;
    DadosAd03: TEdit;
    DadosAd04: TEdit;
    StatusBar1: TStatusBar;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblPecasFabrica: TIBDataSet;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaCODIGO_NOVO: TIBStringField;
    tblPecasFabricaORIGEM: TIBStringField;
    tblPecasFabricaCUSTO: TIBBCDField;
    tblPecasFabricaQTDE_EMBAL: TIBStringField;
    tblPecasFabricaPESO: TIBStringField;
    tblPecasFabricaIPI: TIBBCDField;
    tblPecasFabricaREAJUSTE: TIBBCDField;
    tblPecasFabricaPRECO_GARAN: TIBBCDField;
    tblPecasFabricaPPS: TIBBCDField;
    tblPecasFabricaRESERVADO: TIBStringField;
    DataSource1: TDataSource;
    tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField;
    tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoPecasID_ATENDIMENTO: TIntegerField;
    tblAtendimentoPecasID_PECAS: TIntegerField;
    tblAtendimentoPecasQUANTIDADE: TIntegerField;
    tblAtendimentoPecasPRECO: TIBBCDField;
    tblAtendimentoPecasSTATUS: TIBStringField;
    tblAtendimentoPecasPRECO_TABELA: TIBBCDField;
    IBQuery5: TIBQuery;
    IBQuery5VALOR: TIBBCDField;
    IBQuery4: TIBQuery;
    IBQuery6: TIBQuery;
    tblAtendimentoPecasCODIGO: TIBStringField;
    Label5: TLabel;
    CodigoFabricante: TMaskEdit;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    NomeFabricante: TJvDBMaskEdit;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    tblSadaID_PECAS: TIntegerField;
    tblSeda1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField2: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    DataSource2: TDataSource;
    Panel2: TPanel;
    Frete: TRadioGroup;
    tblAtendimentoID_ATENDENTE: TIntegerField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaID_MECANICO: TIntegerField;
    Label11: TLabel;
    Label14: TLabel;
    CodigoTransportadora: TMaskEdit;
    QuantidadeVolumes: TMaskEdit;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    tblPessoasNUMERO: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCaixaHISTORICO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecasFabricaDESCRICAO: TIBStringField;
    tblPecasFabricaNCM: TIBStringField;
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
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AtendimentoExit(Sender: TObject);
    procedure EnableDisableButtons(Value : Boolean; Value1 : Boolean);
    procedure EnableDisableControls(Value: Boolean);    
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure SerieNFExit(Sender: TObject);
    procedure tblAtendimentoAfterCancel(DataSet: TDataSet);
    procedure tblAtendimentoAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure tblNofisaFaturasBeforePost(DataSet: TDataSet);
    procedure tblAtendimentoBeforeDelete(DataSet: TDataSet);
    procedure BtnReceberClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure AtualizaValores;
    procedure AbrirDs;
    procedure GeraNF;
    procedure FecharDs;
    procedure CriarNFServicos;
    procedure CriarNFEntrada;
    procedure CancelaFaturamento;
    procedure CriarNFRemessa;
    procedure SpeedButton3Click(Sender: TObject);
    procedure CodigoFabricanteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BaseIcms: String;
    ValICMS: String;
    NFGerada : Boolean;
    idAtendimento : Integer;
    CNPJ : String;
    idNofisa : Integer;
    idSada : Integer;
    idNofisaPrincipal : Integer;
    idFabricante : Integer;
    idSeda : Integer;
    idNotaVelha : Integer;
    idNumeroNotaFiscal : Integer;
    PrimeiroCFOP : String;
    SegundoCFOP : String;
    ISSQN : Extended;
    Val_serv : Extended;
    Val_ISS : Extended;
    Tot_Nota : Extended;
    mensagem : String;
    totalRemessa : extended;
  end;

var
  retorno : String;
  BoxFaturamentoGarantia: TBoxFaturamentoGarantia;

implementation

uses FDB, Biblioteca, Empresas, OperacoesVendasPecas, FaturamentoVeiculos,
  FinanceiroCaixaEntradasPendencias, RelatorioNotasFiscais, ReemiteNFs,
  NfeGerenciamento, Efuncoes;

{$R *.dfm}

procedure TBoxFaturamentoGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=caFree;
   BoxFaturamentoGarantia := nil;
   FecharDs;
end;

procedure TBoxFaturamentoGarantia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Atendimento.Text <> '')  and
   (tblAtendimento.FieldByName('Status').AsString <> 'Faturado') then
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

procedure TBoxFaturamentoGarantia.CancelaFaturamento;
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

procedure TBoxFaturamentoGarantia.CodigoFabricanteExit(Sender: TObject);
begin
if CodigoFabricante.Text = '' then
   CodigoFabricante.Text := '0';
idFabricante := StrToInt(CodigoFabricante.Text);
if StrtoInt(CodigoFabricante.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoFabricante.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFabricante<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idfabricante;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fabricante inexistente.');
             CodigoFabricante.SetFocus;
            end
          else
            begin
             if not FieldByName('Fabricante').AsBoolean then
               begin
                Showmessage('Esta sequência não pertence à um fabricante.');
                CodigoFabricante.SetFocus;
               end;
             if not ValidaCliente(tblPessoas) then
               CodigoFabricante.SetFocus
             else
               SerieNF.SetFocus;
             NomeFabricante.Text := FieldbyName('Nome').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxFaturamentoGarantia.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
     Close;
    end;
end;

procedure TBoxFaturamentoGarantia.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFaturamentoGarantia.FormShow(Sender: TObject);
begin
  NFGerada := False;
  EnableDisableButtons(False, False);
  AbrirDs;
  Atendimento.SetFocus;
end;

procedure TBoxFaturamentoGarantia.AtendimentoExit(Sender: TObject);
var
  i: Integer;
begin
NFGerada := False;
if Atendimento.Text = '' then
   Atendimento.Text := '0';
idAtendimento := StrToInt(Atendimento.Text);
if StrtoInt(Atendimento.Text) = 0 then
  begin
   SpeedButton1.Click;
   Atendimento.SetFocus;
  end
else
  begin
    with tblAtendimento do
      begin
       if idAtendimento<>0 then
         begin
          Close;
          parambyname( 'idAtendimento' ).AsInteger := idAtendimento;
          ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          Open;
          Last;
          First;
          if recordcount = 0  then
            begin
             showmessage('Atendimento inexistente.');
             Atendimento.SetFocus;
            end
          else
            begin
             if FieldByName('Status').AsString = 'Em edição' then
                begin
                  showmessage('Atendimento em edição.');
                  Atendimento.SetFocus;
                end;
             if FieldByName('Status').AsString = 'Pendente' then
                begin
                  showmessage('Atendimento pendente de autorização.');
                  Atendimento.SetFocus;
                end;
            end;
         end;
      end;
      With tblAtendimentoRecebimento do
       begin
        Close;
        ParamByName('idAtendimento').AsInteger := idAtendimento;
        Open;
       end;
      {Pega um sequence novo para a NF}
       IBQuery1.Open;
       IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
       idNofisaPrincipal := IdNofisa;
       IBQuery1.Close;
       with tblAtendimentoRecebimento do
         begin
         if recordcount <> 0 then
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
         end;
       with tblNofisaFaturas do
         begin
          Close;
          ParamByName('Id').AsInteger := IdNofisa;
          Open;
         end;
   i:=1;
   tblSerienf.Close;
   tblserienf.ParamByName('id').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   tblSerienf.Open;
   tblSerienf.first;
   SerieNF.Items.Clear;
   repeat
     SerieNF.Items.AddObject(DataSourceSerieNF.DataSet.FieldByName('SerieNF').AsString,
      Pointer(i));
     i:= i+1;
     DataSourceSerienf.DataSet.next;
   until DataSourceSerienf.DataSet.Eof;
   SerieNF.Enabled := True;
   SerieNF.ItemIndex := 0;
//   SerieNF.SetFocus;
   CodigoFabricante.SetFocus;
   with tblPessoas do
   begin
     Close;
     ParamByName('id').AsInteger := tblAtendimento.FieldByName('id_Clientes').AsInteger;
     Open;
     CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
     NomeCliente.Text := FieldByName('Nome').AsString;
     CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);     
   end;
   AtualizaValores;
  end;
  if tblPessoas.FieldByName('Codigo_Municipio').AsString = null then
     begin
       Showmessage('Atualize o cadastro do cliente.');
       Atendimento.SetFocus;
     end;

end;

procedure TBoxFaturamentoGarantia.SerieNFExit(Sender: TObject);
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
   if (SerieNF.Text <> 'e') and (tblAtendimento.FieldByName('Total_Pecas').AsFloat <> 0) then
    begin
     showmessage('Série inválida');
     SerieNF.SetFocus;
    end
   else

   BtnConfirma.SetFocus;
end;

procedure TBoxFaturamentoGarantia.AtualizaValores;
begin
  if tblAtendimento.FieldByName('Orc_Os').AsInteger = 3 then
    begin
      with tblAtendimentoPecas do
       begin
         Close;
         Parambyname('IdAtendimento').AsInteger := IdAtendimento;
         Open;
         First;
         while not eof do
          begin
            with tblPecasFabrica do
              begin
                tblPecasFabrica.Close;
                tblPecasFabrica.ParamByName('Id').AsString :=
                  tblAtendimentoPecas.FieldByName('Codigo').AsString;
                tblPecasFabrica.Open;
              end;
            if tblPecasFabrica.recordCount <> 0 then
            begin
              tblAtendimentoPecas.Edit;
              tblAtendimentoPecas.FieldByName('Preco').AsCurrency :=
                tblPecasFabrica.FieldByName('Preco_Garan').AsCurrency;
              tblAtendimentoPecas.Post;
            end
            else
            Showmessage('Código: '+tblAtendimentoPecas.FieldByName('Codigo').AsString +
              'não atualizado.');
            tblAtendimentoPecas.Next;
          end;
       end;
      {Somando total_pecas}{preco}
      IBQuery5.Close;
      IBQuery5.Parambyname('idAtendimento').AsInteger := IdAtendimento;
      IBQuery5.Open;
      With tblAtendimento do
       begin
        Edit;
        FieldByName('Total_Pecas').AsCurrency := IBQuery5.FieldByName('Valor').AsCurrency;
        FieldByName('Valor_Liquido_Venda').AsCurrency :=
          FieldByName('Total_Pecas').AsCurrency +
          FieldByName('Total_Servicos').AsCurrency -
          FieldByName('Desconto').AsCurrency;
        Post;
       end;
    end;
end;

procedure TBoxFaturamentoGarantia.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Atendimento pós-venda','Atendimento',
      ['Id_Cliente','Id_Atendimento','Id_Concessionaria'],
      ['Cliente:','Sequência:','Concessionária:',''],
      'Id_Cliente','Id_Atendimento',Fdb1.SQLConnection1,'Status =','Aprovado','idconcessionaria');
  //    'Id_Cliente','Id_Atendimento',Fdb1.SQLConnection1,'Orc_OS = ''''''3'''''' and Status = ','Aprovado','IdConcessionaria');
     with tblAtendimento do
     begin
        Close;
        Parambyname('idAtendimento').AsInteger := StrToInt(Retorno);
        ParamByName('IdConcessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        Atendimento.Text := tblAtendimento.FieldByName('Id_Atendimento').Text;
     end;
     Atendimento.SetFocus;
end;

procedure TBoxFaturamentoGarantia.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Fabricante = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoFabricante.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeFabricante.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFabricante.SetFocus;
end;

procedure TBoxFaturamentoGarantia.tblNofisaFaturasBeforePost(DataSet: TDataSet);
begin
  tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger := idNofisa;
end;

procedure TBoxFaturamentoGarantia.tblAtendimentoAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFaturamentoGarantia.tblAtendimentoAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFaturamentoGarantia.tblAtendimentoBeforeDelete(DataSet: TDataSet);
var
  I: Integer;
begin
  with tblAtendimentoPecas do
  begin
    Close;
    Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
    Open;
    Last;
    First;
    for i := 0 to RecordCount -1 do
      begin
        delete;
      end;
  end;
  with tblAtendimentoRecebimento do
  begin
    Close;
    Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
    Open;
    Last;
    First;
    for i := 0 to RecordCount -1 do
      begin
        delete;
      end;
  end;
end;

procedure TBoxFaturamentoGarantia.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxFaturamentoGarantia.BtnConfirmaClick(Sender: TObject);
begin
  if (Copy(BoxEmpresas.CNPJ,1,8) = Copy(CNPJ,1,8)) then
     Showmessage('Não é possivel fazer faturamento para mesmo CNPJ.') 
  else
    begin

if CodigoFabricante.Text = '' then
 begin
  showmessage('Preencha o código do fabricante.');
  CodigoFabricante.SetFocus;
 end
else
begin
AtualizaValores;
if (tblPessoas.FieldByName('id_Clientes').AsInteger = 1) or
   (tblSerieNF.FieldByName('SerieNF').AsString = 'CF') then
  Showmessage('Cliente consumidor ou série de NF não permitida.')
else
begin
if (not NFGerada) then
 begin
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('Select sum(Nofisa_faturas.valor) as Valor');
  IBQuery2.SQL.Add('from Nofisa_faturas');
  IBQuery2.SQL.Add('where Nofisa_faturas.Id_Nofisa =');
  IBQuery2.Sql.Add(':idNofisa');
  IBQuery2.Parambyname('idNofisa').AsString := IntToStr(IdNofisa);
  IBQuery2.Open;
  if IBQuery2.FieldByName('Valor').AsFloat =
    tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat then
     begin
   //    EnableDisableButtons(False, False);
       case MessageDlg('Confirma geração da NF?', mtConfirmation, [mbYes,mbNo], 0) of
         mrYes:
         begin
           GeraNF;
           Atendimento.Text := '';
           ValorLiquidoVenda.Text := '';
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

procedure TBoxFaturamentoGarantia.BtnConfirmaPagamentoClick(Sender: TObject);
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
     tblNofisaFaturas.Post;
end;

procedure TBoxFaturamentoGarantia.GeraNF;
var
  i: Integer;
  o: integer;
  CodigoFiscal : String;
  TemICMSSubstituicao : Boolean;
  TemICMS : Boolean;
  TemServico : Boolean;
  DescricaoCodigoFiscal : String;
  CFOP3 : String;
  DescontoPeca : Extended;
  BaseICMSPeca : Extended;
  ICMSPeca : Extended;
  ValorTotalPeca : Extended;
begin
//try
  NFGerada := True;
  TemICMSSubstituicao := False;
  TemICms := False;
  TemServico := False;
  {posicionar o point sobre o cliente não o fabricante}
  with tblPessoas do
   begin
     Close;
     ParamByName('id').AsInteger := tblAtendimento.FieldByName('id_Clientes').AsInteger;
     Open;
  end;
  {Pegar número da NF}
  with tblSerieNF do
   begin
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
//     Mensagem := 'Números das notas fiscais geradas: '+IntToStr(IdNumeroNotaFiscal);
   end;
  {As quantidades do estoque foram baixadas no pedido}
 try
  {Gravar dados da NF - sada}
  PrimeiroCFOP := '';
  SegundoCFOP := '';
  BaseICMS := '0';
  ValICMS := '0';
  o := 0;
  with tblAtendimentoPecas do
    begin
      Close;
      ParamByName('idAtendimento').AsInteger := idAtendimento;
      Open;
      Last;
      First;
      for i := 1 to RecordCount do
        begin
         o := i;
         tblPecas.Close;
         tblPecas.ParamByName('id').AsString :=
           tblAtendimentoPecas.FieldByName('id_pecas').AsString;
         tblPecas.Open;
         tblPecasEstoque.Close;
         tblPecasEstoque.ParamByName('idPecas').AsString :=
           tblAtendimentoPecas.FieldByName('id_pecas').AsString;
         tblPecasEstoque.ParamByName('idConcessionaria').AsString :=
           tblAtendimento.FieldByName('id_Concessionaria').AsString;
         tblPecasEstoque.Open;
         tblSada.Insert;
         tblSada.FieldByName('Id_Nofisa').AsInteger := IdNofisa;
         tblSada.FieldByName('Id_Concessionaria').AsInteger :=
           tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
         tblSada.FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
         tblSada.FieldByName('id_pecas').AsInteger :=
           tblPecas.FieldByName('id_pecas').AsInteger;
         tblSada.FieldByName('Codigo').AsString :=
           tblPecas.FieldByName('Codigo').AsString;
         tblSada.FieldByName('Descricao').AsString :=
           tblPecas.FieldByName('Descricao').AsString;
         tblSada.FieldByName('Qtde').AsInteger := FieldByName('Quantidade').AsInteger;
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
           FieldByName('Preco').AsFloat) * tblSada.FieldByName('Qtde').AsFloat;
         if tblSada.FieldByName('Subst').AsBoolean then
            TemICMSSubstituicao := True
         else
            TemICMS := True;
//         tblSada.FieldByName('Base_ICMS').AsInteger := 0;
         tblSada.FieldByName('Base_ICMS').AsFloat :=
            FieldByName('Preco').AsFloat *
            tblSada.FieldByName('Qtde').AsFloat;    //Base de ICMS sem desconto

         tblSada.FieldByName('ICMS').AsInteger := 0;
         tblSada.FieldByName('Desconto').AsInteger := 0;
         if not tblSada.FieldByName('Subst').AsBoolean then
           begin
             tblSada.FieldByName('Base_ICMS').AsFloat :=
               FieldByName('Preco').AsFloat *
               tblSada.FieldByName('Qtde').AsFloat;    //Base de ICMS sem desconto
             tblSada.FieldByName('ICMS').AsFloat :=
               tblSada.FieldByName('Base_ICMS').AsFloat *
               tblSada.FieldByName('Aliq_Icms').AsFloat;
             BaseICMS := FloatToStr(StrToFloat(BaseIcms) +
              (FieldByName('Preco').AsFloat *
               tblSada.FieldByName('Qtde').AsFloat));
             ValICMS := FloatToStr(StrToFloat(ValICMS) +
              tblSada.FieldByName('ICMS').AsFloat);
  {se existir desconto geral recalcula base de ICMS e valor do ICMS do produto}
             if tblAtendimento.FieldByName('Desconto').AsFloat <> 0 then
               begin
                ValorTotalPeca := (FieldByName('Preco').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat);
                DescontoPeca := ValorTotalPeca *
                 (tblAtendimento.FieldByName('Desconto').AsFloat /
                 (tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat -
                  tblAtendimento.FieldByName('Total_Servicos').AsFloat +
                  tblAtendimento.FieldByName('Desconto').AsFloat));
                BaseICMSPeca := ValorTotalPeca - DescontoPeca;
                ICMSPeca := BaseICMSPeca * tblSada.FieldByName('Aliq_Icms').AsFloat;
                tblSada.FieldByName('Base_Icms').AsFloat := BaseICMSPeca;
                tblSada.FieldByName('ICMS').AsFloat := ICMSPeca;
                tblSada.FieldByName('Desconto').AsFloat := DescontoPeca;
               end;
           end;
         if tblSada.FieldByName('Subst').AsBoolean then
           begin
             if tblAtendimento.FieldByName('Desconto').AsFloat <> 0 then
               begin
                ValorTotalPeca := (FieldByName('Preco').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat);
                DescontoPeca := ValorTotalPeca *
                 (tblAtendimento.FieldByName('Desconto').AsFloat /
                 (tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat -
                  tblAtendimento.FieldByName('Total_servicos').AsFloat +
                  tblAtendimento.FieldByName('Desconto').AsFloat));
                tblSada.FieldByName('Desconto').AsFloat := DescontoPeca;
               end;
                  //acrescido em função ICMS_ST em vigor 01/01/2019
                  //Campos para atacado
                tblSada.fieldByName('vBC_STRet').AsCurrency := tblPecas.fieldByName('vBC_STRet').AsCurrency;
                tblSada.fieldByName('pST').AsCurrency := tblPecas.fieldByName('pST').AsCurrency;
                tblSada.fieldByName('vICMS_STRet').AsCurrency := tblPecas.fieldByName('vICMS_STRet').AsCurrency +
                                                                 tblPecas.fieldByName('ICMS').AsCurrency;
                  //Campos para consumidor final
                tblSada.fieldByName('vBC_Efet').AsCurrency := tblSada.FieldByName('Base_Icms').AsCurrency;//tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
                tblSada.fieldByName('pICMS_Efet').AsCurrency := BoxEmpresas.Aliquota_ICMS1.Value;
                tblSada.fieldByName('vICMS_Efet').AsCurrency := tblsada.fieldByName('vBC_Efet').AsCurrency *
                                                    tblsada.FieldByName('pICMS_Efet').AsCurrency;
                tblSada.FieldByName('Base_Icms').AsFloat := 0;//BaseICMSPeca;
                tblSada.FieldByName('ICMS').AsFloat := 0;//ICMSPeca;

           end;
         tblSada.FieldByName('Custo').AsString :=
           tblPecasEstoque.FieldByName('Cst_Medio').AsString;
         tblSada.FieldByName('Preco').AsCurrency :=
           FieldByName('Preco').AsCurrency;
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
//         FieldByName('NAT_OP').AsString := Natureza_operacao;
         tblSada.FieldByName('St_Cofins').AsBoolean :=
           tblPecas.FieldByName('St_Cofins').AsBoolean;
         with tblsada do
         begin
         end;

         tblSada.Post;

         Next;
        end;//fim tblSAda
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
  with tblAtendimentoServicos do
  begin
    Close;
    ParamByName('IdAtendimento').AsInteger := IdAtendimento;
    Open;
    if RecordCount <> 0 then
      begin
        TemServico := True;
        First;
        while (not tblAtendimentoServicos.Eof) do
         begin
          tblSeda.Insert;
          tblSeda.Fieldbyname('id_Concessionaria').AsInteger :=
            FieldByName('id_Concessionaria').AsInteger;
          tblSeda.FieldByName('id_Nofi').Value := idNofisa;
          tblSeda.FieldByName('NF').Value := IdNumeroNotaFiscal;
          tblSeda.FieldByName('Id_TMO').AsInteger := FieldByName('id_TMO').AsInteger;
          tblTMO.Close;
          tblTMO.ParamByName('idTMO').AsInteger :=
             tblAtendimentoServicos.FieldByName('id_TMO').AsInteger;
          tblTMO.Open;
          tblSeda.FieldByName('Descricao_Servico').AsString :=
            tblTMO.FieldByName('Descricao').AsString;
          tblSeda.FieldByName('Tempo').Value := FieldByName('Tempo').value;
          tblSeda.FieldByName('Preco').Value := FieldByName('Preco').value;
          tblSeda.Post;
          tblAtendimentoServicos.next;
         end;
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
    if TemServico then
     begin
       SQL.Clear;
       SQL.Add('select * from Cfop');
       Sql.Add('Where Prestacao_Servicos = '+''''+'T'+'''');
       Open;
       if tblPessoas.FieldByName('Estado').AsString = 'RS' then
           CFOP3 := FieldByName('CFOP1').AsString
       else
           CFOP3 := FieldByName('CFOP2').AsString;
       if (TemICMS) or (TemICMSSubstituicao) then
         begin
           DescricaoCodigoFiscal := DescricaoCodigoFiscal + '/' +
             FieldByName('Descricao').AsString;
           CodigoFiscal := CodigoFiscal + '/' +  CFOP3;
         end
       else
         begin
           DescricaoCodigoFiscal := FieldByName('Descricao').AsString;
           CodigoFiscal := CFOP3;
         end;
       Close;
     end;
   end;
  {Gravar Nofisa}
  with tblNofisa do
  begin
     Insert;
     FieldByName('id_nofisa').AsInteger := IdNofisa;
     FieldByName('Id_Concessionaria').AsInteger :=
       tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
     FieldByName('Id_Clientes').AsInteger :=
       tblAtendimento.FieldByName('Id_clientes').AsInteger;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('SerieNF').AsString := SerieNF.Text;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     FieldByName('Origem').AsString := 'G';
     FieldByName('ENT_SAI').AsString := 'S';
     FieldByName('vendedor').AsInteger :=
       tblAtendimento.FieldByName('Id_mecanico').AsInteger;
     FieldByName('Desc_Pec').AsFloat :=
       tblAtendimento.FieldByName('Desconto').AsFloat;
     FieldByName('Base_ICMS').AsFloat := StrToFloat(BaseICMS);
     FieldByName('Val_ICMS').AsFloat := StrToFloat(ValICMS);
     FieldByName('Tot_prod').AsCurrency :=
       tblAtendimento.FieldByName('Total_Pecas').AsFloat -
       tblAtendimento.FieldByName('Desconto').AsFloat;
     FieldByName('Tot_Nota').AsCurrency :=
       tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
     FieldByName('Val_Serv').AsCurrency := FieldByName('Tot_Nota').AsCurrency -
       FieldByName('Tot_prod').AsCurrency;
     if FieldByName('Desc_pec').AsFloat <> 0 then
      begin
       FieldByName('Base_ICMS').AsFloat := (FieldByName('Base_ICMS').AsFloat) - (FieldByName('Base_ICMS').AsFloat *
         (FieldByName('Desc_Pec').AsFloat /
         (tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat -
         FieldByName('Val_serv').AsFloat + FieldByName('Desc_Pec').AsFloat )));
       FieldByName('Val_ICMS').AsFloat := FieldByName('Val_ICMS').AsFloat - (FieldByName('Val_ICMS').AsFloat *
         (FieldByName('Desc_Pec').AsFloat /
         (tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat -
         FieldByName('Val_serv').AsFloat + FieldByName('Desc_Pec').AsFloat )));
      end;
     FieldByName('ISSQN').AsFloat := StrToFloat(BoxEmpresas.Aliquota_ISS.Text)*100; //aliq.ISSQN
     FieldByName('Val_ISS').AsFloat := FieldByName('Val_Serv').AsFloat *
      (FieldByName('ISSQN').AsFloat/100);//Valor do ISSQN
     FieldByName('Frete_Tipo').AsString := IntToStr(Frete.ItemIndex + 1);
     FieldByName('Cod_Trans').AsString := CodigoTransportadora.Text;
     FieldByName('Quantidade_volumes').AsInteger := StrToInt(QuantidadeVolumes.Text);
     FieldByName('Qtde_Prod').AsInteger := o;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Dados_Ad01').AsString := DadosAd01.Text;
     FieldByName('Dados_Ad02').AsString := DadosAd02.Text;
     FieldByName('Dados_Ad03').AsString := DadosAd03.Text;
     FieldByName('Dados_Ad04').AsString := DadosAd04.Text;
     FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
     FieldByName('Codigo_fiscal').AsString := CodigoFiscal;
     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
     Post;
  end;
  {Gravar Nofisa faturas}
  with tblNofisafaturas do
  begin
     Close;
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
  {Gravar Cx ou contas a receber}
  With TblNofisaFaturas do
    begin
      Last;
      First;
      Edit;
      FieldByName('Valor').AsFloat := tblNofisa.FieldByName('Tot_Nota').AsFloat -
         tblNofisa.FieldByName('Val_serv').AsFloat;
      Post;
      for i := 1 to RecordCount do
        begin
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
                  FieldByName('id_clientes').AsInteger := StrToInt(CodigoFabricante.Text);
  //                  tblAtendimento.FieldByName('Id_clientes').AsInteger;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('Documento').AsString :=
                    tblNofisaFaturas.FieldByName('Fatura').AsString;
                  FieldByName('Origem').AsString := 'P';
                  FieldByName('Natureza').AsString := 'E';
                  FieldByName('Data_lancamento').AsDateTime :=
                    tblNofisa.FieldByName('Emissao').AsDateTime;
                  FieldByName('Valor').AsCurrency :=
                    tblNofisaFaturas.FieldByName('Valor').AsCurrency;
                  FieldByName('Historico').AsString := Substr('Valor ref.venda pós-venda - ' +
                    tblPessoas.FieldByName('Nome').AsString,1,60);
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
                    tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('id_clientes').AsInteger := StrToInt(CodigoFabricante.Text);
//                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
                  FieldByName('Documento').AsString :=
                    tblNofisaFaturas.FieldByName('Fatura').AsString;
                  FieldByName('Parcela').AsString := IntToStr(i);
                  FieldByName('Vezes').AsString :=
                    IntToStr(tblNofisaFaturas.RecordCount);
                  FieldByName('Id_Forma_Pagamento').AsInteger :=
                    tblNofisaFaturas.FieldByName('Id_Formas_pagamento').AsInteger;
                  FieldByName('Origem').AsString := 'G';
                  FieldByName('Vencimento').AsDateTime :=
                    tblNofisaFaturas.FieldByName('Vencimento').AsDateTime;
                  FieldByName('Valor').AsCurrency :=
                    tblNofisaFaturas.FieldByName('Valor').AsCurrency;
                  FieldByName('Emissao').AsDateTime :=
                    tblNofisa.FieldByName('Emissao').AsDateTime;
                  FieldByName('Historico').AsString := 'Valor ref.venda pós-venda-Garantia';
                  FieldByName('Status').AsString := 'Processado';
                  Post;
                end;
             end;
           Next;
        end;
    end;
  {Fechar o atendimento}
    with tblAtendimento do
      begin
        Edit;
        FieldByName('Status').AsString := 'Fechado';
        Post;
      end;
  {Ajustar estoque de OS}
   tblAtendimentoPecas.Last;
   tblAtendimentoPecas.First;
   for i := 1 to tblAtendimentoPecas.RecordCount do
     begin
       with tblPecasEstoque do
       begin
         Close;
         ParamByName('idPecas').AsInteger :=
           tblAtendimentoPecas.FieldByName('id_pecas').AsInteger;
         Open;
         Edit;
         FieldByName('EstoqOs').AsInteger := FieldByName('EstoqOs').AsInteger -
           tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
         Post;
       end;
       tblAtendimentoPecas.Next;
     end;
     if BoxEmpresas.Dividir_NF_Garantia then
       begin
        {Dividir peças e serviços em duas notas fiscais}
         begin
          with tblNofisa do
          begin
            if fieldByName('Val_Iss').AsFloat <> 0 then
              begin
               mensagem := 'Existem serviços neste faturamento.'+#13+'O faturamento será dividido em duas NFs.';
               Mensagem := mensagem +#13+'Números das notas fiscais geradas: '+
                  #13+IntToStr(IdNumeroNotaFiscal);
               Val_Serv := FieldByName('Val_serv').AsFloat;
               Val_ISS := FieldByName('Val_ISS').AsFloat;
               ISSQN := FieldByName('ISSQN').AsFloat;
               Tot_Nota := FieldByName('Tot_Nota').AsFloat;
               with tblNofisa do
                begin
                 Edit;
                 FieldByName('Tot_Nota').AsFloat := FieldByName('Tot_Nota').AsFloat -
                   FieldByName('Val_serv').AsFloat;
                 FieldByName('Val_Serv').AsFloat := 0;
                 FieldByName('Val_ISS').AsFloat := 0;
                 FieldByName('ISSQN').AsFloat := 0;
                 if (Substr(FieldByName('Codigo_Fiscal').AsString,6,4) = '5933') or
                   (Substr(FieldByName('Codigo_Fiscal').AsString,6,4) = '6933') then
                  begin
                    FieldByName('Codigo_Fiscal').AsString := Substr(FieldByName('Codigo_Fiscal').AsString,1,4);
                    FieldByName('Descricao_Codigo_Fiscal').AsString := TiraCFOPServicos(FieldByName('Descricao_Codigo_Fiscal').AsString,1);
                  end;
                 if (Substr(FieldByName('Codigo_Fiscal').AsString,11,4) = '5933') or
                   (Substr(FieldByName('Codigo_Fiscal').AsString,11,4) = '6933') then
                  begin
                   FieldByName('Codigo_Fiscal').AsString := Substr(FieldByName('Codigo_Fiscal').AsString,1,9);
                   FieldByName('Descricao_Codigo_Fiscal').AsString := TiraCFOPServicos(FieldByName('Descricao_Codigo_Fiscal').AsString,2);
                  end;
                 Post;
                end;
               idNotaVelha := tblNofisa.FieldByName('id_nofisa').AsInteger;
               CriarNFServicos;
              end
            else
              Mensagem := 'Números das notas fiscais geradas: '+#13+IntToStr(IdNumeroNotaFiscal);
          end;
         end;
        end;
 {criar nf de entrada para remessa}
 CriarNFEntrada;
{criar nf de remessa}
 CriarNFRemessa;
  {Voltar SQL da tblSerienf}
  with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where ID_Concessionaria = :id';
      // SelectSql.Text := 'Select * From SerieNF';select * From SerieNF where ID_Concessionaria = :id
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
    showmessage(mensagem);
end;


procedure TBoxFaturamentoGarantia.CriarNFServicos;
var
 idSeda : Integer;
begin
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('id').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerie').AsString := 'T';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     mensagem := mensagem + #13 +IntToStr(IdNumeroNotaFiscal);
//     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  IBQuery6.Open;
  IdSeda := IBQuery6.FieldByName('id_Seda').AsInteger;
  IBQuery6.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    DuplicaRegistro(tblNofisa);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_clientes').AsInteger := StrToInt(CodigoFabricante.Text);  //alteracao garantia gerar nf serviço no nome da fabricante
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '5933';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'PRESTACAO DE SERVICOS';
    FieldByName('SerieNF').AsString := 'T';
    FieldByName('Val_Serv').AsFloat := Val_Serv;
    FieldByName('Val_ISS').AsFloat := Val_ISS;
    FieldByName('ISSQN').AsFloat := ISSQN;
    FieldByName('Tot_Prod').AsFloat := Val_Serv;
    FieldByName('Tot_Nota').AsFloat := Val_Serv;
    FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
    Post;
   end;
  with tblNofisaFaturas do
   begin
     Insert;
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' + '1';
     FieldByName('Vencimento').AsDateTime := DataAtual + 30;
     FieldByName('Valor').AsFloat := Val_Serv;
     FieldByName('Id_Formas_Pagamento').AsInteger := 2;
     Post;
   end;
  with tblSeda do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNotaVelha;
    Open;
    while not eof do
     begin
       idSeda := FieldByName('Id_Seda').AsInteger;
       Edit;
       FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;

       Post;
       with tblSeda1 do
         begin
          tblSeda1.Close;
          tblSeda1.ParamByName('idSeda').AsInteger := IdSeda;
          tblSeda1.Open;
          tblSeda1.Edit;
          tblSeda1.FieldByName('Id_nofi').AsInteger := IdNofisa;
          tblSeda1.Post;
         end;

       tblSeda.Next;
     end;
     tblSeda1.Close;
  end;

                    {Gravar conta a receber}
              with tblCreceber do
                begin
                  Insert;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('id_clientes').AsInteger := StrToInt(CodigoFabricante.Text);
//                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
                  FieldByName('Documento').AsString :=
                    tblNofisaFaturas.FieldByName('Fatura').AsString;
                  FieldByName('Parcela').AsString := '1';
                  FieldByName('Vezes').AsString :=
                    IntToStr(tblNofisaFaturas.RecordCount);
                  FieldByName('Id_Forma_Pagamento').AsInteger :=
                    tblNofisaFaturas.FieldByName('Id_Formas_pagamento').AsInteger;
                  FieldByName('Origem').AsString := 'G';
                  FieldByName('Vencimento').AsDateTime :=
                    tblNofisaFaturas.FieldByName('Vencimento').AsDateTime;
                  FieldByName('Valor').AsCurrency :=
                    tblNofisaFaturas.FieldByName('Valor').AsCurrency;
                  FieldByName('Emissao').AsDateTime :=
                    tblNofisa.FieldByName('Emissao').AsDateTime;
                  FieldByName('Historico').AsString := 'Valor ref.venda pós-venda-Garantia';
                  FieldByName('Status').AsString := 'Processado';
                  Post;
               end;


  end;

procedure TBoxFaturamentoGarantia.CriarNFEntrada;
begin
{Pegar o número da NF}
   TotalRemessa := 0;
   with tblSerieNF do
   begin
     Close;
     ParamByName('id').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerie').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     mensagem := mensagem + #13 +IntToStr(IdNumeroNotaFiscal);
//     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    Close;
    ParamByName('idNofisa').AsInteger := IdNofisaPrincipal;
    Open;
    DuplicaRegistro(tblNofisa);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '1949';
    if FieldByName('id_clientes').AsInteger = 1296 then
      FieldByName('CODIGO_FISCAL').AsString := '2949';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'ENTRADA DE MERC.P/GARANTIA';
    FieldByName('ENT_SAI').AsString := 'E';
    FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
    FieldByName('Base_ICMS').AsInteger := 0;
    FieldByName('Val_ICMS').AsInteger := 0;
    FieldByName('Val_Serv').AsFloat := 0;//Val_Serv;
    FieldByName('Val_ISS').AsFloat := 0;//Val_ISS;
    FieldByName('ISSQN').AsFloat := 0;//ISSQN;
//    FieldByName('Tot_Prod').AsFloat := Val_Serv;
//    FieldByName('Tot_Nota').AsFloat := Val_Serv;
    Post;
   end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNofisaPrincipal;
    Open;
    while not eof do
    begin
     if (FieldByName('Codigo').AsString = '90793AB40100') or
        (FieldByName('Codigo').AsString = '90793AB40400') or
        (FieldByName('Codigo').AsString = '90793AB40500') or
        (FieldByName('Codigo').AsString = '90793AB40700') or
        (FieldByName('Codigo').AsString = '90793AB41500') or
        (FieldByName('Codigo').AsString = '90793AB41700') or
        (FieldByName('Codigo').AsString = '90793AB41900') or
        (FieldByName('Codigo').AsString = '90793AB41200') or
        (Substr(FieldByName('Codigo').AsString,1,9) = '304000223') or
        (Substr(FieldByName('Codigo').AsString,1,9) = '304000304') or
        (FieldByName('Codigo').AsString = '90793AB80100') or
        (FieldByName('Codigo').AsString = '90793AB80200') or
        (FieldByName('Codigo').AsString = '90793AB80300') or
        (FieldByName('Codigo').AsString = '90793AB40800') or
        (FieldByName('Codigo').AsString = '90793AB41000')
                then
        Next
     else
      begin
       {Pega um sequence novo para a NF}
       IBQuery4.Open;
       IdSada := IBQuery4.FieldByName('id_Sada').AsInteger;
       IBQuery4.Close;
       DuplicaRegistro(tblSada);
       FieldByName('Aliq_ICMS').AsInteger := 0;
       FieldByName('ICMS').AsInteger := 0;
       FieldByName('Id_nofisa').AsInteger := IdNofisa;
       FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
       FieldByName('id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Id_Sada').AsInteger := idSada;
       with tblPecasFabrica do
        begin
          tblPecasFabrica.Close;
          tblPecasFabrica.ParamByName('Id').AsString :=
            tblSada.FieldByName('Codigo').AsString;
          tblPecasFabrica.Open;
        end;
       if tblPecasFabrica.Recordcount <> 0 then
        FieldByName('Preco').AsCurrency :=
        (tblPecasFabrica.FieldByName('PPS').AsCurrency * 0.10);
       TotalRemessa := TotalRemessa + (FieldByName('preco').AsCurrency * FieldByName('Qtde').AsCurrency);
       FieldByName('CFOP').AsString := '1949';
       if tblnofisa.FieldByName('id_clientes').AsInteger = 1296 then
         FieldByName('CFOP').AsString := '2949';
                         //acrescido em função ICMS_ST em vigor 01/01/2019
                  //Campos para atacado
                tblSada.fieldByName('vBC_STRet').AsCurrency := 0;//tblPecas.fieldByName('vBC_STRet').AsCurrency;
                tblSada.fieldByName('pST').AsCurrency := 0;//tblPecas.fieldByName('pST').AsCurrency;
                tblSada.fieldByName('vICMS_STRet').AsCurrency := 0;//tblPecas.fieldByName('vICMS_STRet').AsCurrency;
                  //Campos para consumidor final
                tblSada.fieldByName('vBC_Efet').AsCurrency := 0;//tblSada.FieldByName('Base_Icms').AsCurrency;//tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
                tblSada.fieldByName('pICMS_Efet').AsCurrency := 0;//BoxEmpresas.Aliquota_ICMS1.Value;
                tblSada.fieldByName('vICMS_Efet').AsCurrency := 0;//tblsada.fieldByName('vBC_Efet').AsCurrency *




       Post;
       Next;
      end;
    end;
  end;
        {Somando total_pecas}{preco}
  tblNofisa.Edit;
  tblNofisa.FieldByName('TOT_PROD').AsCurrency := TotalRemessa;
  tblNofisa.FieldByName('TOT_NOTA').AsCurrency := TotalRemessa;
  tblNofisa.Post;

end;


procedure TBoxFaturamentoGarantia.CriarNFRemessa;
begin
 TotalRemessa := 0;
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('id').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerie').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     mensagem := mensagem + #13 +IntToStr(IdNumeroNotaFiscal);
//     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    Close;
    ParamByName('idNofisa').AsInteger := IdNofisaPrincipal;
    Open;
    DuplicaRegistro(tblNofisa);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '6949';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'REMESSA DE MERC.P/GARANTIA';
    FieldByName('id_Clientes').AsInteger := StrToInt(CodigoFabricante.Text);
    FieldByName('Dados_ad01').AsString := 'Remessa de peças defeituosas em virtude';
    FieldByName('Dados_ad02').AsString := 'de garantia, sem débito ao destinatário';
    FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
    FieldByName('Base_ICMS').AsInteger := 0;
    FieldByName('Val_ICMS').AsInteger := 0;
    FieldByName('ISSQN').AsFloat := 0;
//    FieldByName('Tot_Prod').AsFloat := Val_Serv;
//    FieldByName('Tot_Nota').AsFloat := Val_Serv;
    Post;
   end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNofisaPrincipal;
    Open;
    while not eof do
    begin
     if (FieldByName('Codigo').AsString = '90793AB40100') or
        (FieldByName('Codigo').AsString = '90793AB40400') or
        (FieldByName('Codigo').AsString = '90793AB40500') or
        (FieldByName('Codigo').AsString = '90793AB40700') or
        (FieldByName('Codigo').AsString = '90793AB41500') or
        (FieldByName('Codigo').AsString = '90793AB41700') or
        (FieldByName('Codigo').AsString = '90793AB41900') or
        (FieldByName('Codigo').AsString = '90793AB41200') or
        (Substr(FieldByName('Codigo').AsString,1,9) = '304000223') or
        (Substr(FieldByName('Codigo').AsString,1,9) = '304000304') or
        (FieldByName('Codigo').AsString = '90793AB80100') or
        (FieldByName('Codigo').AsString = '90793AB80200') or
        (FieldByName('Codigo').AsString = '90793AB80300') or
        (FieldByName('Codigo').AsString = '90793AB40800') or
        (FieldByName('Codigo').AsString = '90793AB41000')
           then
        Next
     else
      begin
       {Pega um sequence novo para a NF}
       IBQuery4.Open;
       IdSada := IBQuery4.FieldByName('id_Sada').AsInteger;
       IBQuery4.Close;
       DuplicaRegistro(tblSada);
       FieldByName('Aliq_ICMS').AsInteger := 0;
       FieldByName('ICMS').AsInteger := 0;
       FieldByName('Id_nofisa').AsInteger := IdNofisa;
       FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
       FieldByName('id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Id_Sada').AsInteger := idSada;
       with tblPecasFabrica do
        begin
          tblPecasFabrica.Close;
          tblPecasFabrica.ParamByName('Id').AsString :=
            tblSada.FieldByName('Codigo').AsString;
          tblPecasFabrica.Open;
        end;
       if tblPecasFabrica.RecordCount <> 0 then
        FieldByName('Preco').AsCurrency :=
         (tblPecasFabrica.FieldByName('PPS').AsCurrency * 0.10);
       TotalRemessa := TotalRemessa + (FieldByName('preco').AsCurrency * FieldByName('Qtde').AsCurrency);
       FieldByName('CFOP').AsString := '6949';
                         //acrescido em função ICMS_ST em vigor 01/01/2019
                  //Campos para atacado
                tblSada.fieldByName('vBC_STRet').AsCurrency := 0;//tblPecas.fieldByName('vBC_STRet').AsCurrency;
                tblSada.fieldByName('pST').AsCurrency := 0;//tblPecas.fieldByName('pST').AsCurrency;
                tblSada.fieldByName('vICMS_STRet').AsCurrency := 0;//tblPecas.fieldByName('vICMS_STRet').AsCurrency;
                  //Campos para consumidor final
                tblSada.fieldByName('vBC_Efet').AsCurrency := 0;//tblSada.FieldByName('Base_Icms').AsCurrency;//tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
                tblSada.fieldByName('pICMS_Efet').AsCurrency := 0;//BoxEmpresas.Aliquota_ICMS1.Value;
                tblSada.fieldByName('vICMS_Efet').AsCurrency := 0;//tblsada.fieldByName('vBC_Efet').AsCurrency *


       Post;
       Next;
      end;
   end;
  end;
 {Somando total_pecas}{preco}
  tblNofisa.Edit;
  tblNofisa.FieldByName('TOT_PROD').AsCurrency := TotalRemessa;
  tblNofisa.FieldByName('TOT_NOTA').AsCurrency := TotalRemessa;
  tblNofisa.Post;
end;


procedure TBoxFaturamentoGarantia.BtnExcluiClick(Sender: TObject);
begin
  case MessageDlg('Excluir fatura?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: tblNofisaFaturas.Delete;
    end;
  BtnNovo.SetFocus;
end;

procedure TBoxFaturamentoGarantia.BtnImprimirClick(Sender: TObject);
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

procedure TBoxFaturamentoGarantia.BtnNovoClick(Sender: TObject);
begin
  tblNofisaFaturas.Insert;
  EnableDisableControls(True);
  FormaPagamento.SetFocus;
end;

procedure TBoxFaturamentoGarantia.BtnReceberClick(Sender: TObject);
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

procedure TBoxFaturamentoGarantia.EnableDisableButtons(Value : Boolean; Value1 : Boolean);
begin
  BtnNovo.Enabled := Value;
  BtnExclui.Enabled := Value;
  BtnConfirmaPagamento.Enabled := Value;
  BtnConfirma.Enabled := Value;
  Frete.Enabled := Value;
end;

procedure TBoxFaturamentoGarantia.EnableDisableControls(Value: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
end;
procedure TBoxFaturamentoGarantia.AbrirDs;
begin
  DataSourceAtendimento.Dataset.Open;
  DataSourceAtendimentoRecebimento.Dataset.Open;
  DataSourceAtendimentoPecas.Dataset.Open;
  DataSourceAtendimentoServicos.Dataset.Open;
  DataSourceSerieNF.Dataset.Open;
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceSada.Dataset.Open;
  DataSourceSeda.Dataset.Open;
  DataSourceCreceber.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
  DataSourcePecas.Dataset.Open;
  DataSourcePecasEstoque.Dataset.Open;
  DataSourceCaixa.Dataset.Open;
end;

procedure TBoxFaturamentoGarantia.FecharDs;
begin
  DataSourceAtendimento.Dataset.Close;
  DataSourceAtendimentoRecebimento.Dataset.Close;
  DataSourceAtendimentoPecas.Dataset.Close;
  DataSourceAtendimentoServicos.Dataset.Close;
  DataSourceSerieNF.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceSada.Dataset.Close;
  DataSourceSeda.Dataset.Close;  
  DataSourceCreceber.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourcePecas.Dataset.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourceCaixa.Dataset.Close;
  DataSourceTMO.Dataset.Close;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery3.Close;
end;

end.
