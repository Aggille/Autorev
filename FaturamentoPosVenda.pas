unit FaturamentoPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ToolWin, JvExMask, JvToolEdit, JvMaskEdit, Math,
  JvDBControls, Buttons, Mask, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, rxToolEdit, rxCurrEdit, DBCtrls, DBClient, RxCombos, RxLookup,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TBoxFaturamentoPosVenda = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Atendimento: TEdit;
    Label7: TLabel;
    CodigoCliente: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
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
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblNofisaFaturasFORMA_PAGAMENTO: TStringField;
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
    tblSadaID_PECAS: TIntegerField;
    Panel2: TPanel;
    Frete: TRadioGroup;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaID_MECANICO: TIntegerField;
    tblAtendimentoID_ATENDENTE: TIntegerField;
    ReabrirOS: TBitBtn;
    tblSerieNFS: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField3: TIntegerField;
    DataSourceSerieNFS: TDataSource;
    tblAuxFaturas: TClientDataSet;
    dts1: TDataSource;
    tblAuxFaturasID_NOFISA: TIntegerField;
    tblAuxFaturasFATURA: TStringField;
    tblAuxFaturasVENCIMENTO: TDateTimeField;
    tblAuxFaturasVALOR: TCurrencyField;
    tblAuxFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblAuxFaturasFORMA_PAGAMENTO: TStringField;
    tblNofisa1: TIBDataSet;
    tblNofisa1ID_NOFISA: TIntegerField;
    tblNofisa1ID_CONCESSIONARIA: TIntegerField;
    tblNofisa1ID_CLIENTES: TIntegerField;
    tblNofisa1NUMERO: TIntegerField;
    tblNofisa1SERIENF: TIBStringField;
    tblNofisa1EMISSAO: TDateField;
    tblNofisa1ORIGEM: TIBStringField;
    tblNofisa1ENT_SAI: TIBStringField;
    tblNofisa1VENDEDOR: TIntegerField;
    tblNofisa1SAIDA: TDateField;
    tblNofisa1HORA: TIBStringField;
    tblNofisa1IE_SUBS: TIBStringField;
    tblNofisa1DESC_PEC: TIBBCDField;
    tblNofisa1DESC_OFI: TIBBCDField;
    tblNofisa1BASE_ICMS: TIBBCDField;
    tblNofisa1VAL_ICMS: TIBBCDField;
    tblNofisa1BASE_ICM_S: TIBBCDField;
    tblNofisa1VAL_ICMS_S: TIBBCDField;
    tblNofisa1VAL_FRETE: TIBBCDField;
    tblNofisa1VAL_SEGURO: TIBBCDField;
    tblNofisa1VAL_OUTROS: TIBBCDField;
    tblNofisa1VAL_IPI: TIBBCDField;
    tblNofisa1VAL_SERV: TIBBCDField;
    tblNofisa1ISSQN: TIBBCDField;
    tblNofisa1VAL_ISS: TIBBCDField;
    tblNofisa1TOT_PROD: TIBBCDField;
    tblNofisa1TOT_NOTA: TIBBCDField;
    tblNofisa1PIS: TIBBCDField;
    tblNofisa1COFINS: TIBBCDField;
    tblNofisa1COD_TRANS: TIBStringField;
    tblNofisa1FRETE_TIPO: TIBStringField;
    tblNofisa1PLACA: TIBStringField;
    tblNofisa1QTDE_PROD: TIntegerField;
    tblNofisa1STATUS: TIBStringField;
    tblNofisa1CODIGO_FISCAL: TIBStringField;
    tblNofisa1DESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisa1FORMA_PAGAMENTO: TIBStringField;
    tblNofisa1CHAVE: TIBStringField;
    tblNofisa1RECIBO: TIBStringField;
    tblNofisa1PROTOCOLO: TIBStringField;
    tblNofisa1ARQUIVO: TIBStringField;
    tblNofisa1XML: TBlobField;
    tblNofisa1PROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisa1MOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisa1RECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisa1TRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisa1ID_MECANICO: TIntegerField;
    tblNofisa1ID_ATENDENTE: TIntegerField;
    tblNofisa1QUANTIDADE_VOLUMES: TIntegerField;
    tblNofisa1NFE_REFERENCIADA: TIBStringField;
    tblNofisa1NUMERO_NFSE: TIBStringField;
    tblNofisa1CODIGO_NFSE: TIBStringField;
    tblNofisa1ARQ_XML_RPS: TIBStringField;
    tblNofisa1ARQ_XML_NFSE: TIBStringField;
    tblNofisa1XML_NFSE: TMemoField;
    tblNofisa1XML_RPS: TMemoField;
    tblSerieNF1: TIBDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField2: TIBStringField;
    IntegerField6: TIntegerField;
    tblSerieNF2: TIBDataSet;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IBStringField3: TIBStringField;
    IntegerField9: TIntegerField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCaixaHISTORICO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    tblNofisaNFE_REFERENCIADA: TIBStringField;
    tblNofisaNUMERO_NFSE: TIBStringField;
    tblNofisaCODIGO_NFSE: TIBStringField;
    tblNofisaARQ_XML_RPS: TIBStringField;
    tblNofisaARQ_XML_NFSE: TIBStringField;
    tblNofisaXML_NFSE: TWideMemoField;
    tblNofisaXML_RPS: TWideMemoField;
    tblNofisaOBS: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    tblNofisa1OBS: TIBStringField;
    tblNofisa1DADOS_AD01: TIBStringField;
    tblNofisa1DADOS_AD02: TIBStringField;
    tblNofisa1DADOS_AD03: TIBStringField;
    tblNofisa1DADOS_AD04: TIBStringField;
    tblNofisa1DADOS_AD05: TIBStringField;
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
    Panel3: TPanel;
    Label16: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    FormaPagamento: TDBLookupComboBox;
    ValorDevido: TJvDBMaskEdit;
    BtnNovo: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConfirma: TBitBtn;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    VALORCARTAO: TCurrencyEdit;
    PRIMEIROVENCIMENTO: TDateEdit;
    Label5: TLabel;
    NumeroCV: TEdit;
    NumeroParcelas: TEdit;
    tblNofisaFaturasNUMERO_CV: TIBStringField;
    BitBtn3: TBitBtn;
    Cartao: TDBLookupComboBox;
    wwDBGrid1: TwwDBGrid;
    tblAuxFaturas2: TClientDataSet;
    IntegerField10: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    CurrencyField1: TCurrencyField;
    IntegerField11: TIntegerField;
    StringField2: TStringField;
    dts2: TDataSource;
    tblAuxFaturas2NUMERO_CV: TStringField;
    Vencimento: TDateEdit;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberNUMERO_CV: TIBStringField;
    tblAuxFaturasNUMERO_CV: TStringField;
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
    procedure ReabrirOSClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PRIMEIROVENCIMENTOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BaseIcms: String;
    ValICMS: String;
    NFGerada : Boolean;
    idAtendimento : Integer;
    CNPJ : String;
    servico : integer;
    idNofisa : Integer;
    IdNofisaServico : Integer;
    TemServico : Boolean;
    idNumeroNotaFiscal : Integer;
    idNumeroNotaFiscalServico : Integer;
    PrimeiroCFOP : String;
    SegundoCFOP : String;
    procedure AbrirDs; virtual;
    procedure GeraNF; Virtual;
    procedure FecharDs; virtual;
    procedure CancelaFaturamento; virtual;        
  end;

var
  retorno : String;
  BoxFaturamentoPosVenda: TBoxFaturamentoPosVenda;

implementation

uses FDB, Biblioteca, Empresas, OperacoesVendasPecas, FaturamentoVeiculos,
  FinanceiroCaixaEntradasPendencias, RelatorioNotasFiscais, ReemiteNFs,
  NfeGerenciamento, Efuncoes;

{$R *.dfm}

procedure TBoxFaturamentoPosVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=caFree;
   BoxFaturamentoPosVenda := nil;
   FecharDs;
end;

procedure TBoxFaturamentoPosVenda.FormCloseQuery(Sender: TObject;
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

procedure TBoxFaturamentoPosVenda.CancelaFaturamento;
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

procedure TBoxFaturamentoPosVenda.DBGrid2KeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFaturamentoPosVenda.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFaturamentoPosVenda.FormShow(Sender: TObject);
begin
  NFGerada := False;
  EnableDisableButtons(False, False);
  AbrirDs;
  Atendimento.SetFocus;
end;

procedure TBoxFaturamentoPosVenda.AtendimentoExit(Sender: TObject);
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
       IBQuery1.Close;

{       with tblAtendimentoRecebimento do
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
         }

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
   SerieNF.SetFocus;
   with tblPessoas do
   begin
     Close;
     ParamByName('id').AsInteger := tblAtendimento.FieldByName('id_Clientes').AsInteger;
     Open;
     CodigoCliente.Text := FieldByName('Id_Clientes').AsString;
     NomeCliente.Text := FieldByName('Nome').AsString;
     CNPJ := TiraPontoseBarrasCPF(FieldByName('NUM_CPF').AsString);
   end;
  end;
     if tblPessoas.FieldByName('Codigo_Municipio').AsString = null then
     begin
       Showmessage('Atualize o cadastro do cliente.');
       Atendimento.SetFocus;
     end;
end;

procedure TBoxFaturamentoPosVenda.SerieNFExit(Sender: TObject);
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
   BitBtn3.SetFocus;//BtnConfirma.SetFocus;
end;

procedure TBoxFaturamentoPosVenda.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Atendimento pós-venda','Atendimento',
      ['Id_Cliente','Id_Atendimento','Id_Concessionaria'],
      ['Cliente:','Sequência:','Concessionária:',''],
      'Id_Cliente','Id_Atendimento',Fdb1.SQLConnection1,'Status =','Aprovado','idconcessionaria');
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

procedure TBoxFaturamentoPosVenda.tblNofisaFaturasBeforePost(DataSet: TDataSet);
begin
  tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger := idNofisa;
  if (Servico=1) and (TemServico) and (BoxEmpresas.Dividir_NF_Servico)  then
    tblNofisaFaturas.FieldByName('id_Nofisa').AsInteger := idNofisaServico;
end;

procedure TBoxFaturamentoPosVenda.tblAtendimentoAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFaturamentoPosVenda.tblAtendimentoAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFaturamentoPosVenda.tblAtendimentoBeforeDelete(DataSet: TDataSet);
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

procedure TBoxFaturamentoPosVenda.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxFaturamentoPosVenda.BitBtn1Click(Sender: TObject);
begin
      {Pega um sequence novo para a NF}
    //   IBQuery1.Open;
  //     IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
//       IBQuery1.Close;
       with tblAtendimentoRecebimento do
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

procedure TBoxFaturamentoPosVenda.BitBtn2Click(Sender: TObject);
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
          if i> 1 then
            FieldByName('Vencimento').AsDateTime := IncMonth(PrimeiroVencimento.Date,(i-1));
//          FieldByName('Valor').AsCurrency := ValorCartao.Value/StrToInt(NumeroParcelas.Text);
          FieldByName('Valor').AsCurrency := (Round((ValorCartao.Value/StrToInt(NumeroParcelas.Text))*100))/100;
          x := x + FieldByname('Valor').AsCurrency;
          Post;
        end;
       Next;
      end;
    end;
 end;
end;

procedure TBoxFaturamentoPosVenda.BitBtn3Click(Sender: TObject);
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

procedure TBoxFaturamentoPosVenda.BtnConfirmaClick(Sender: TObject);
var
  Gerar : Boolean;
begin
  try
        //copiando da tabela auxiliar para o banco.
        with tblAuxFaturas2 do
        begin
          tblAuxFaturas2.First;
          tblNofisaFaturas.Close;
          tblNofisaFaturas.Open;
          while not eof do
          begin
            tblNofisaFaturas.Insert;
            tblNofisaFaturas.FieldByName('id_nofisa').AsInteger := FieldByName('id_nofisa').AsInteger;
            tblNofisaFaturas.FieldByName('Fatura').AsString := FieldByName('Fatura').AsString;
            tblNofisaFaturas.FieldByName('Vencimento').AsString := FieldByName('Vencimento').AsString;
            tblNofisaFaturas.FieldByName('Valor').AsCurrency := FieldByName('Valor').AsCurrency;
            tblNofisaFaturas.FieldByName('Fatura').AsString := FieldByName('Fatura').AsString;
            tblNofisaFaturas.FieldByName('id_formas_Pagamento').AsString := FieldByName('id_formas_Pagamento').AsString;
            tblNofisaFaturas.FieldByName('Numero_CV').AsString := FieldByName('Numero_CV').AsString;
            tblNofisaFaturas.Post;
//            showmessage(tblNofisafaturas.FieldByName('valor').AsString);
            Next;
          end;
        end;
           // fim

  if (Copy(BoxEmpresas.CNPJ,1,8) = Copy(CNPJ,1,8)) then
     Showmessage('Não é possivel fazer faturamento para mesmo CNPJ.')
  else
    begin
     if (not ConfereCV(tblNofisaFaturas)) then
       Showmessage('Geração cancelada.'+#13+'Há cartões sem indicação de CV.')
     else
      begin
      if (not ConfereVencimento(tblNofisaFaturas)) then
       showmessage('Geração cancelada.'+#13+'Há vencimentos passados.')
      else
      begin
      if (tblPessoas.FieldByName('id_Clientes').AsInteger = 1) or
         (tblSerieNF.FieldByName('SerieNF').AsString = 'CF') then
        Showmessage('Cliente consumidor ou série de NF não permitida.')
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
//            SHOWMESSAGE(IBQuery2.FieldByName('Valor').AssTRING);
  //          SHOWMESSAGE(tblAtendimento.FieldByName('Valor_Liquido_Venda').AsSTRING);
        if IBQuery2.FieldByName('Valor').AsFloat =
          tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat then
           begin
             case MessageDlg('Confirma geração da NF?', mtConfirmation, [mbYes,mbNo], 0) of
               mrYes:
                 begin
                   with tblNofisaFaturas do
                     begin
                       First;
                       while not eof do
                        begin
//                                               showmessage('a1');
                          if (FieldByName('Vencimento').AsDateTime > DataAtual) and
                             (FieldByName('Id_Formas_Pagamento').AsInteger <> 5) and
                             (FieldByName('Id_Formas_Pagamento').AsInteger <> 9) and
                             (FieldByName('Id_Formas_Pagamento').AsInteger <> 13) and
                             (FieldByName('Id_Formas_Pagamento').AsInteger <> 10) then
                            if //(not tblPessoas.FieldByName('Fabricante').AsBoolean ) and
                              (FDB1.ClienteComDebito(StrToInt(CodigoCliente.Text))) then
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
                       Atendimento.Text := '';
                       ValorLiquidoVenda.Text := '';
                     end;
                 end;
             end;
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
        showmessage('Não há NF para gerar');
      end;
      end;
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
end;

procedure TBoxFaturamentoPosVenda.BtnConfirmaPagamentoClick(Sender: TObject);
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

procedure TBoxFaturamentoPosVenda.GeraNF;
var
  i: Integer;
  o: integer;
  CodigoFiscal : String;
  TemICMSSubstituicao : Boolean;
  TemICMS : Boolean;
  DescricaoCodigoFiscal : String;
  DescricaoCodigoFiscalServico : String;
  CFOP3 : String;
  DescontoPeca : Extended;
  BaseICMSPeca : Extended;
  ICMSPeca : Extended;
  ValorTotalPeca : Extended;
  ValorTotalNFs : Extended;
  ValorTotalNFServicos : Extended;
  ValorTotalNFPecas : Extended;
  aux,ValorDesconto,TotDesconto:Extended;
  ValorDuplicata : Extended;
  TotalDuplicatas : Extended;
  TotalDuplicatasServicos : Extended;
  ValorDuplicataServicos : Extended ;
  VencimentoDS : Extended;
  IdFormasPagamentoDS : Integer;
  FormaPagamentoDS : String;
  CV : String;
begin
  aux := 0;
  servico := 0;
  NFGerada := True;
  TemICMSSubstituicao := False;
  TemICms := False;
  TemServico := False;
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
  //gravar numero das faturas na tabela auxiliar
  with tblAuxFaturas do
  begin
    i := 1;
    First;
    while not tblAuXFaturas.Eof do
    begin
      Edit;
      FieldByName('Fatura').AsString := IntToStr(idNumeroNotaFiscal)+ '-' + IntToStr(i);
      Post;
      i := i + 1;
      Next;
    end;
  end;
  {Gravar dados da NF - sada}
  PrimeiroCFOP := '';
  SegundoCFOP := '';
  BaseICMS := '0';

  // Variaveis para calculo do arredondamento do desconto...
  ValorDesconto := tblAtendimento.fieldbyname( 'Desconto' ).ascurrency;


  ValICMS := '0';
  o := 0;

  with tblAtendimentoServicos do
   begin
    Close;
    ParamByName('IdAtendimento').AsInteger := IdAtendimento;
    Open;
    if RecordCount <> 0 then
      begin
        TemServico := True;
      end;
   end;

  if (TemServico) and (BoxEmpresas.Dividir_NF_Servico)  then
   begin
     //Pega uma NF de servico
  {Pegar número da NF}
    with tblSerieNFS do
     begin
      ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
      idNumeroNotaFiscalServico := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
      Edit;
      FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscalServico;
      Post;
      Close;
     end;
    {Pega um sequence novo para a NF serviços}
       IBQuery1.Open;
       IdNofisaServico := IBQuery1.FieldByName('id_nofisa').AsInteger;
       IBQuery1.Close;
   end;
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
         tblSada.FieldByName('Codigo').AsString :=
           tblPecas.FieldByName('Codigo').AsString;
         tblSada.FieldByName('Id_pecas').AsInteger :=
           tblPecas.FieldByName('id_pecas').AsInteger;
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

         if tblSada.FieldByName('Subst').AsBoolean then // se for ICMS subst zera o valor do ICMS
            tblSada.FieldByName('ICMS').AsInteger := 0;

         tblSada.FieldByName('Desconto').AsInteger := 0;

         tblSada.FieldByName('Base_ICMS').AsFloat :=
             FieldByName('Preco').AsFloat *
             tblSada.FieldByName('Qtde').AsFloat;    //Base de ICMS sem desconto

         //calcula base de ICMS para produtos sem não tiver desconto na NF
         if tblAtendimento.FieldByName('Desconto').AsFloat = 0 then
         begin
           if not tblSada.FieldByName('Subst').AsBoolean then
             begin
               tblSada.FieldByName('ICMS').AsFloat :=
                 tblSada.FieldByName('Base_ICMS').AsFloat *
                 tblSada.FieldByName('Aliq_Icms').AsFloat;
               BaseICMS := FloatToStr(StrToFloat(BaseIcms) +
                (FieldByName('Preco').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat));
               ValICMS := FloatToStr(StrToFloat(ValICMS) +
                tblSada.FieldByName('ICMS').AsFloat);
             end;
         end;


         ValorTotalPeca := (FieldByName('Preco').AsFloat * tblSAda.fieldbyname( 'qtde' ).asFloat );
          /// CALCULO DO DESCONTO...
         if tblAtendimento.FieldByName('Desconto').AsFloat <> 0 then
         begin
            DescontoPeca := ValorTotalPeca *
             (tblAtendimento.FieldByName('Desconto').AsFloat /
             (tblAtendimento.FieldByName('Valor_Liquido_Venda').AsFloat -
              tblAtendimento.FieldByName('Total_Servicos').AsFloat +
              tblAtendimento.FieldByName('Desconto').AsFloat));

            // arredondamento
            descontoPeca := ( round( descontopeca * 100 ) ) / 100 ;
            aux := aux + descontopeca;

            // se é o último item, pega o que restou do desconto...
            // assim não dá diferença

            if( i = RecordCount ) then
            begin
              DescontoPeca := DescontoPeca +( valordesconto - Aux );
            end;

            // Diminui o desconto Calculado do total...
           if not tblSada.FieldByName('Subst').AsBoolean then
             begin
               tblSada.FieldByName('ICMS').AsFloat :=
                 tblSada.FieldByName('Base_ICMS').AsFloat *
                 tblSada.FieldByName('Aliq_Icms').AsFloat;
               BaseICMS := FloatToStr(StrToFloat(BaseIcms) +
                (FieldByName('Preco').AsFloat *
                 tblSada.FieldByName('Qtde').AsFloat));
               ValICMS := FloatToStr(StrToFloat(ValICMS) +
                tblSada.FieldByName('ICMS').AsFloat);
             end;


             {se existir desconto geral recalcula base de ICMS e valor do ICMS do produto}
             if tblAtendimento.FieldByName('Desconto').AsFloat <> 0 then
               begin

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
                tblSada.FieldByName('Desconto').asCurrency := DescontoPeca;
               //acrescido em função ICMS_ST em vigor 01/01/2019
               end;
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
         tblSada.FieldByName('St_Cofins').AsBoolean :=
           tblPecas.FieldByName('St_Cofins').AsBoolean;


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
//     if (Tem Servico) and (BoxEmpresas.Dividir_NF_Servico) then

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
          if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
             tblSeda.FieldByName('id_Nofi').Value := IdNofisaServico;
          tblSeda.FieldByName('NF').Value := IdNumeroNotaFiscal;
          if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
            tblSeda.FieldByName('NF').Value := IdNumeroNotaFiscalServico;
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

      if NOT (BoxEmpresas.Dividir_NF_Servico) then
        begin
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
        end
       else
         DescricaoCodigoFiscalServico := FieldByName('Descricao').AsString;
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
     FieldByName('Origem').AsString := 'O';
     FieldByName('ENT_SAI').AsString := 'S';
     FieldByName('vendedor').AsInteger :=
       tblAtendimento.FieldByName('Id_mecanico').AsInteger;
     FieldByName('id_mecanico').AsInteger :=
       tblAtendimento.FieldByName('Id_mecanico').AsInteger;
     FieldByName('id_atendente').AsInteger :=
       tblAtendimento.FieldByName('Id_atendente').AsInteger;
     FieldByName('Desc_Pec').AsFloat :=
       tblAtendimento.FieldByName('Desconto').AsFloat;
     FieldByName('Base_ICMS').AsFloat := StrToFloat(BaseICMS);
     FieldByName('Val_ICMS').AsFloat := StrToFloat(ValICMS);
     FieldByName('Tot_prod').AsCurrency :=
       tblAtendimento.FieldByName('Total_Pecas').AsFloat -//+
       tblAtendimento.FieldByName('Desconto').AsFloat;

     FieldByName('Tot_Nota').AsCurrency := tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
     ValorTotalNFs := FieldByName('Tot_Nota').AsCurrency;
     if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
       FieldByName('Tot_Nota').AsCurrency := tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency -
                                             tblAtendimento.FieldByName('Total_Servicos').AsCurrency;
     ValorTotalNFPecas := FieldByName('Tot_Nota').AsCurrency;

     FieldByName('Val_Serv').AsCurrency := tblAtendimento.FieldByName('Total_Servicos').AsCurrency;
     if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
        FieldByName('Val_Serv').AsCurrency := 0;//tblAtendimento.FieldByName('Total_Servicos').AsCurrency;
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
     if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
        FieldByName('ISSQN').AsFloat := 0;//StrToFloat(BoxEmpresas.Aliquota_ISS.Text)*100; //aliq.ISSQN

     FieldByName('Val_ISS').AsFloat := FieldByName('Val_Serv').AsFloat *
      (FieldByName('ISSQN').AsFloat/100);//Valor do ISSQN
     if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
        FieldByName('Val_ISS').AsFloat := 0;//FieldByName('Val_Serv').AsFloat *

     FieldByName('Frete_Tipo').AsString := IntToStr(Frete.ItemIndex + 1);
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
  {Gravar Nofisa de serviços}
 if (TemServico) and (BoxEmpresas.Dividir_NF_Servico) then
   with tblNofisa do
   begin
     Insert;
     FieldByName('id_nofisa').AsInteger := IdNofisaServico;
     FieldByName('Id_Concessionaria').AsInteger :=
       tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
     FieldByName('Id_Clientes').AsInteger :=
       tblAtendimento.FieldByName('Id_clientes').AsInteger;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscalServico;
     FieldByName('SerieNF').AsString := 'T';//SerieNF.Text;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     FieldByName('Origem').AsString := 'O';
     FieldByName('ENT_SAI').AsString := 'S';
     FieldByName('vendedor').AsInteger :=
       tblAtendimento.FieldByName('Id_mecanico').AsInteger;
     FieldByName('id_mecanico').AsInteger :=
       tblAtendimento.FieldByName('Id_mecanico').AsInteger;
     FieldByName('id_atendente').AsInteger :=
       tblAtendimento.FieldByName('Id_atendente').AsInteger;
     FieldByName('Base_ICMS').AsFloat := 0;
     FieldByName('Val_ICMS').AsFloat := 0;
     FieldByName('Tot_prod').AsCurrency := 0;
     FieldByName('Tot_Nota').AsCurrency := tblAtendimento.FieldByName('Total_Servicos').AsCurrency;
     FieldByName('Val_Serv').AsCurrency := tblAtendimento.FieldByName('Total_Servicos').AsCurrency;
     ValorTotalNFServicos := FieldByName('Tot_Nota').AsCurrency;
     FieldByName('ISSQN').AsFloat := StrToFloat(BoxEmpresas.Aliquota_ISS.Text)*100; //aliq.ISSQN
     FieldByName('Val_ISS').AsFloat := FieldByName('Val_Serv').AsFloat *
      (FieldByName('ISSQN').AsFloat/100);//Valor do ISSQN
     FieldByName('Frete_Tipo').AsString := IntToStr(Frete.ItemIndex + 1);
//     FieldByName('Qtde_Prod').AsInteger := o;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Dados_Ad01').AsString := DadosAd01.Text;
     FieldByName('Dados_Ad02').AsString := DadosAd02.Text;
     FieldByName('Dados_Ad03').AsString := DadosAd03.Text;
     FieldByName('Dados_Ad04').AsString := DadosAd04.Text;
     FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
     FieldByName('Codigo_fiscal').AsString := CFOP3;
     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscalServico;
     Post;
   end;

  {Gravar Nofisa faturas}
  with tblNofisafaturas do
  begin
     Close;
     ParambyName('id').asInteger := idNofisa;
     Open;
     Last;
     First;
     TotalDuplicatas := 0;
     TotalDuplicatasServicos := 0;
     for I := 1 to RecordCount do
       begin
         Edit;
         FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
            IntToStr(i);
         Post;
         Edit;
         cv := FieldByName('Numero_CV').AsString;
         if TemServico and (BoxEmpresas.Dividir_NF_Servico) then
           begin
             ValorDuplicata := FieldByName('Valor').AsCurrency / ValorTotalNFs * ValorTotalNFPecas;
             ValorDuplicataServicos := FieldByName('Valor').AsCurrency - ValorDuplicata;
             FieldByName('Valor').AsCurrency := RoundTo(ValorDuplicata, -2);
             if i=RecordCount then
                FieldByName('Valor').AsCurrency := ValorTotalNfPecas-totalduplicatas//ValorDuplicata;
             else
                totalduplicatas := totalDuplicatas + RoundTo(ValorDuplicata, -2);
             with tblauxFaturas do
              begin
              if ValorDuplicataServicos > 0 then
               begin
                Insert;
                tblAuxFaturas.FieldByName('Id_Nofisa').AsInteger := IdNofisaServico;
                tblAuxFaturas.FieldByName('Fatura').AsString := IntToStr (IdNumeroNotaFiscalServico) + '-' + IntToStr(i);
                tblAuxFaturas.FieldByName('Vencimento').AsDateTime := tblNofisaFaturas.fieldByName('Vencimento').AsdateTime;// VencimentoDS;
                tblAuxFaturas.FieldByName('Valor').AsCurrency := RoundTo(ValorDuplicataServicos, -2);
                tblAuxFaturas.FieldByName('Id_Formas_Pagamento').AsInteger := tblNofisaFaturas.fieldByName('Id_Formas_Pagamento').AsInteger;//IdFormasPagamentoDS;
                tblAuxFaturas.FieldByName('Forma_Pagamento').AsString := tblNofisaFaturas.fieldByName('Forma_Pagamento').AsString;//FormaPagamentoDS;
                tblAuxFaturas.FieldByName('Numero_CV').AsString := cv;
                if i=TblNofisaFaturas.RecordCount then
                   tblAuxFaturas.FieldByName('Valor').AsCurrency := (ValorTotalNFs-ValorTotalNfPecas) - TotalDuplicatasServicos
                else
                  TotalDuplicatasServicos := TotalDuplicatasServicos + RoundTo(ValorDuplicataServicos, -2);
                tblAuxFaturas.Post;
               end;
              end;
           end;
         tblNofisaFaturas.Post;
         Next;
       end;
       with tblauxFaturas do
         begin
           tblNofisafaturas.close;
           tblNofisafaturas.ParamByName('id').AsInteger :=  tblAuxFaturas.fieldByName('id_Nofisa').AsInteger;
           tblNofisafaturas.open;
           tblauxFAturas.Last;
           tblauxFAturas.First;
           for i := 1 to RecordCount do
            if tblauxFaturas.FieldByName('valor').AsCurrency > 0 then
            begin
             begin
               tblNofisaFaturas.Insert;
               tblNofisaFaturas.FieldByName('Fatura').AsString := tblAuxFaturas.fieldByName('Fatura').AsString;//IntToStr (IdNumeroNotaFiscalServico) + '-' + IntToStr(i);
               tblNofisaFaturas.FieldByName('Vencimento').AsDateTime := tblAuxFaturas.fieldByName('Vencimento').AsdateTime;// VencimentoDS;
               tblNofisaFaturas.FieldByName('Valor').AsCurrency := tblAuxFaturas.FieldByName('Valor').AsCurrency;
               tblNofisaFaturas.FieldByName('Id_Formas_Pagamento').AsInteger := tblAuxFaturas.fieldByName('Id_Formas_Pagamento').AsInteger;//IdFormasPagamentoDS;
               tblNofisaFaturas.FieldByName('Forma_Pagamento').AsString := tblauxFaturas.fieldByName('Forma_Pagamento').AsString;//FormaPagamentoDS;
               tblNofisaFaturas.FieldByName('id_nofisa').AsInteger := idnofisaServico;//tblAuxFaturas.fieldByName('id_Nofisa').AsInteger;//IdNofisaServico;
               tblNofisaFaturas.FieldByName('Numero_CV').AsString := tblAuxFaturas.FieldByName('Numero_cv').AsString;
               servico := 1;
               tblNofisaFaturas.Post;
               servico := 0;
               tblAuxFaturas.Next;
             end;
            end;
         end;
  end;

// Apagar faturas com valor zerado na nf peças. As de serviços não foram geradas.
   with tblNofisaFaturas do
    begin
       close;
       ParamByName('id').AsInteger :=  idNofisa;
       Open;
       for i := 1 to RecordCount do
         begin
            if not eof then
              begin
                if fieldByName('valor').AsCurrency = 0 then
                  delete
                else
                 begin
          //          Edit;
          //          FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
          //          IntToStr(i);
          //          Post;
                 end;
                Next;
              end;
         end;

    end;



  {Gravar Cx ou contas a receber}
  With TblNofisaFaturas do
    begin
           tblNofisafaturas.close;
           tblNofisafaturas.ParamByName('id').AsInteger :=  idNofisa;
           tblNofisafaturas.open;

      Last;
      First;
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
                  FieldByName('id_clientes').AsInteger :=
                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
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
                  FieldByName('Historico').AsString := Substr('Vlr.ref.venda pós-venda - ' +
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
                  FieldByName('Numero_CV').AsString := tblNofisaFaturas.FieldByName('Numero_CV').AsString;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('id_clientes').AsInteger :=
                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
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
                  FieldByName('Historico').AsString := 'Vlr.ref.venda pós-venda';
                  FieldByName('Status').AsString := 'Processado';
                  Post;
                end;
             end;
           Next;
        end;
    end;

  {Gravar Cx ou contas a receber-NF de servicos}

if TemServico and (BoxEmpresas.Dividir_NF_Servico) then
 begin
//               showmessage('tem servico');
  With TblNofisaFaturas do
    begin

      Close;
      ParamByName('id').AsInteger := IdNofisaServico;
      Open;
      Last;
      First;
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
                  FieldByName('id_clientes').AsInteger :=
                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
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
                  FieldByName('Historico').AsString := Substr('Vlr.ref.venda pós-venda - ' +
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
                  FieldByName('Numero_CV').AsString := tblNofisaFaturas.FieldByName('Numero_CV').AsString;
                  FieldByName('id_Concessionaria').AsInteger :=
                    tblAtendimento.FieldByName('Id_Concessionaria').AsInteger;
                  FieldByName('id_clientes').AsInteger :=
                    tblAtendimento.FieldByName('Id_clientes').AsInteger;
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
                  FieldByName('Historico').AsString := 'Vlr.ref.venda pós-venda';
                  FieldByName('Status').AsString := 'Processado';
                  Post;
                end;
             end;
           Next;
        end;
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
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
     // excluir nf com valor zerado.
     with tblnofisa1 do
     begin
       close;
       parambyname('idnofisa').AsInteger := idNofisa;
       Open;
       if (fieldByName('Tot_nota').asInteger = 0) and (fieldByName('SerieNf').AsString ='e') then
          begin
            //excluir nf e renumerar ultimo nf emitida
              with tblSerieNF1 do
                begin
                 Close;
                 ParamByName('id').AsInteger :=
                  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 Open;
                 idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger - 1;
                 Edit;
                 FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
                 Post;
                 Showmessage('Número da nota fiscal excluída: '+IntToStr(IdNumeroNotaFiscal));
                end;
               with tblNofisa1 do
                begin
                 delete;
                 Close;
                end;

          end;
       if (fieldByName('Tot_nota').asInteger = 0) and (fieldByName('SerieNf').AsString ='T') then
          begin
            //excluir nf e renumerar ultimo nf emitida
              with tblSerieNF2 do
                begin
                 Close;
                 ParamByName('id').AsInteger :=
                  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 Open;
                 idNumeroNotaFiscalServico := FieldByName('Ultimo_numero_emitido').AsInteger - 1;
                 Edit;
                 FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscalServico;
                 Post;
                 Showmessage('Número da nota fiscal excluída: '+IntToStr(IdNumeroNotaFiscalServico));
                end;
               with tblNofisa1 do
                begin
                 delete;
                 Close;
                end;

          end;

       close;
     end;

 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;

  {Voltar SQL da tblSerienf}
  with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where ID_Concessionaria = :id';
      // SelectSql.Text := 'Select * From SerieNF';select * From SerieNF where ID_Concessionaria = :id
       Open;
    end;
end;

procedure TBoxFaturamentoPosVenda.PRIMEIROVENCIMENTOExit(Sender: TObject);
begin
 if (PrimeiroVencimento.Date = DataAtual) or (PrimeiroVencimento.Date < DataAtual)then
   begin
     Showmessage('O primeiro vencimento precisa ser uma data futura.');
     PrimeiroVencimento.SetFocus;
   end;
end;

procedure TBoxFaturamentoPosVenda.ReabrirOSClick(Sender: TObject);
begin
  case MessageDlg('Confirma reabertura de OS?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
        with tblAtendimento do
          begin
            Edit;
            FieldByName('Status').AsString := 'Em edição';
            Post;
          end;
        Atendimento.SetFocus;
      end;
  end;
end;

procedure TBoxFaturamentoPosVenda.BtnExcluiClick(Sender: TObject);
begin
  case MessageDlg('Excluir fatura?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: tblAuxFaturas2.Delete;
    end;
  BtnNovo.SetFocus;
end;

procedure TBoxFaturamentoPosVenda.BtnImprimirClick(Sender: TObject);
begin
if NFGerada then
 if (tblNofisa.FieldByName('Serienf').AsString = 'e') or ((TemServico) and (BoxEmpresas.Dividir_NF_Servico)) then
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

procedure TBoxFaturamentoPosVenda.BtnNovoClick(Sender: TObject);
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

procedure TBoxFaturamentoPosVenda.BtnReceberClick(Sender: TObject);
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

procedure TBoxFaturamentoPosVenda.EnableDisableButtons(Value : Boolean; Value1 : Boolean);
begin
  BtnNovo.Enabled := Value;
  BtnExclui.Enabled := Value;
  BtnConfirmaPagamento.Enabled := Value;
  BtnConfirma.Enabled := Value;
  Frete.Enabled := Value;
end;

procedure TBoxFaturamentoPosVenda.EnableDisableControls(Value: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
end;
procedure TBoxFaturamentoPosVenda.AbrirDs;
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

procedure TBoxFaturamentoPosVenda.FecharDs;
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
//  IBQuery4.Close;

end;

end.
