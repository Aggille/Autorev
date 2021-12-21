unit uSpedBaseST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, Buttons, DB, DBClient, msxmldom, XMLDoc,
  ComCtrls, ExtCtrls, ACBrNFe, IBCustomDataSet, Mask, DBCtrls, IBQuery, pcnConversao, pcnConversaoNFe,
  JvExMask, JvToolEdit, ACBrBase, ACBrDFe;

type
  TBoxSpedBaseST = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    BtnImporta: TBitBtn;
    Memo: TMemo;
    tblNofi: TIBDataSet;
    DataSourceNofi: TDataSource;
    tblNofiID_NOFI: TIntegerField;
    tblNofiID_CONCESSIONARIA: TIntegerField;
    tblNofiID_CLIENTES: TIntegerField;
    tblNofiID_CONHECIMENTO: TIntegerField;
    tblNofiNUMERO: TIBStringField;
    tblNofiSERIE: TIBStringField;
    tblNofiEMISSAO: TDateField;
    tblNofiCODIGO: TIBStringField;
    tblNofiORIGEM: TIBStringField;
    tblNofiENT_SAI: TIBStringField;
    tblNofiVENDEDOR: TIBStringField;
    tblNofiCOMISSAO: TIBBCDField;
    tblNofiSAIDA: TDateField;
    tblNofiHORA: TIBStringField;
    tblNofiCFOP: TIBStringField;
    tblNofiNAT_OP: TIBStringField;
    tblNofiIE_SUBS: TIBStringField;
    tblNofiDESC_PEC: TIBBCDField;
    tblNofiDESC_OFI: TIBBCDField;
    tblNofiICMS: TIBBCDField;
    tblNofiBASE_ICM_S: TIBBCDField;
    tblNofiVAL_ICMS_S: TIBBCDField;
    tblNofiVAL_FRETE: TIBBCDField;
    tblNofiVAL_SEGURO: TIBBCDField;
    tblNofiVAL_OUTROS: TIBBCDField;
    tblNofiVAL_IPI: TIBBCDField;
    tblNofiVAL_SERV: TIBBCDField;
    tblNofiISSQN: TIBBCDField;
    tblNofiVAL_ISS: TIBBCDField;
    tblNofiTOT_PROD: TIBBCDField;
    tblNofiTOT_NOTA: TIBBCDField;
    tblNofiPIS: TIBBCDField;
    tblNofiCOFINS: TIBBCDField;
    tblNofiCOD_TRANS: TIBStringField;
    tblNofiFRETE_TIPO: TIBStringField;
    tblNofiPLACA: TIBStringField;
    tblNofiDADOS_AD01: TIBStringField;
    tblNofiDADOS_AD02: TIBStringField;
    tblNofiDADOS_AD03: TIBStringField;
    tblNofiDADOS_AD04: TIBStringField;
    tblNofiOBS: TIBStringField;
    tblNofiQTDE_PROD: TIntegerField;
    tblNofiSTATUS: TIBStringField;
    tblNofiVAL_PIS: TIBBCDField;
    tblNofiVAL_COFINS: TIBBCDField;
    Label1: TLabel;
    Label3: TLabel;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    IBQuery1: TIBQuery;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    DataSourcePessoas: TDataSource;
    IBQuery2: TIBQuery;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_IPI: TIBBCDField;
    tblNfDaMODELO: TIBStringField;
    tblNfDaANO_FABRICACAO: TIBStringField;
    tblNfDaANO_MODELO: TIBStringField;
    tblNfDaCOR: TIBStringField;
    tblNfDaMOTOR: TIBStringField;
    tblNfDaCOMBUSTIVEL: TIBStringField;
    tblNfDaMARCA: TIBStringField;
    tblNfDaPOTENCIA: TIBStringField;
    tblNfDaRENAVAM: TIBStringField;
    tblNfDaPROD_NUMERO: TIntegerField;
    tblNfDaCST: TIBStringField;
    DataSourceNfda: TDataSource;
    tblPecasEstoque: TIBDataSet;
    DataSourceVeiculos: TDataSource;
    tblCPagar: TIBDataSet;
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
    tblCPagarSTATUS: TIBStringField;
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    DataSourceCPagar: TDataSource;
    BtnConfirma: TBitBtn;
    tblPecas: TIBDataSet;
    DataSourceModelosVeiculos: TDataSource;
    NumeroNF: TEdit;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    tblPecasFabrica: TIBDataSet;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaDESCRICAO: TIBStringField;
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
    IBQuery3: TIBQuery;
    tblNfDaICMS_SUBST: TIBBCDField;
    tblNfDaID_PECA: TIntegerField;
    IBQuery4: TIBQuery;
    BtnImportacaoDireta: TBitBtn;
    Concessionaria: TEdit;
    Emissao: TJvDateEdit;
    Label2: TLabel;
    tblNofi2: TIBDataSet;
    DataSourceNofi2: TDataSource;
    tblNofi2ID_NOFISA: TIntegerField;
    tblNofi2ID_CONCESSIONARIA: TIntegerField;
    tblNofi2ID_CLIENTES: TIntegerField;
    tblNofi2NUMERO: TIntegerField;
    tblNofi2SERIENF: TIBStringField;
    tblNofi2EMISSAO: TDateField;
    tblNofi2ORIGEM: TIBStringField;
    tblNofi2ENT_SAI: TIBStringField;
    tblNofi2VENDEDOR: TIntegerField;
    tblNofi2SAIDA: TDateField;
    tblNofi2HORA: TIBStringField;
    tblNofi2IE_SUBS: TIBStringField;
    tblNofi2DESC_PEC: TIBBCDField;
    tblNofi2DESC_OFI: TIBBCDField;
    tblNofi2BASE_ICMS: TIBBCDField;
    tblNofi2VAL_ICMS: TIBBCDField;
    tblNofi2BASE_ICM_S: TIBBCDField;
    tblNofi2VAL_ICMS_S: TIBBCDField;
    tblNofi2VAL_FRETE: TIBBCDField;
    tblNofi2VAL_SEGURO: TIBBCDField;
    tblNofi2VAL_OUTROS: TIBBCDField;
    tblNofi2VAL_IPI: TIBBCDField;
    tblNofi2VAL_SERV: TIBBCDField;
    tblNofi2ISSQN: TIBBCDField;
    tblNofi2VAL_ISS: TIBBCDField;
    tblNofi2TOT_PROD: TIBBCDField;
    tblNofi2TOT_NOTA: TIBBCDField;
    tblNofi2PIS: TIBBCDField;
    tblNofi2COFINS: TIBBCDField;
    tblNofi2COD_TRANS: TIBStringField;
    tblNofi2FRETE_TIPO: TIBStringField;
    tblNofi2PLACA: TIBStringField;
    tblNofi2DADOS_AD01: TIBStringField;
    tblNofi2DADOS_AD02: TIBStringField;
    tblNofi2DADOS_AD03: TIBStringField;
    tblNofi2DADOS_AD04: TIBStringField;
    tblNofi2OBS: TIBStringField;
    tblNofi2QTDE_PROD: TIntegerField;
    tblNofi2STATUS: TIBStringField;
    tblNofi2CODIGO_FISCAL: TIBStringField;
    tblNofi2DESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofi2FORMA_PAGAMENTO: TIBStringField;
    tblNofi2CHAVE: TIBStringField;
    tblNofi2RECIBO: TIBStringField;
    tblNofi2PROTOCOLO: TIBStringField;
    tblNofi2ARQUIVO: TIBStringField;
    tblNofi2XML: TBlobField;
    tblNofi2PROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofi2MOTIVO_CANCELAMENTO: TIBStringField;
    tblNofi2DADOS_AD05: TIBStringField;
    tblNofi2RECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofi2TRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofi2ID_MECANICO: TIntegerField;
    tblNofi2ID_ATENDENTE: TIntegerField;
    tblNofiBASE_ICMS: TFMTBCDField;
    tblNofiVAL_ICMS: TFMTBCDField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaVLR_FRETE: TFMTBCDField;
    tblNfDaVLR_SEGURO: TFMTBCDField;
    ACBrNFe1: TACBrNFe;
    tblCPagarHISTORICO: TIBStringField;
    tblNfDaVBC_STRET: TIBBCDField;
    tblNfDaPST: TIBBCDField;
    tblNfDaVICMS_STRET: TIBBCDField;
    tblNfDaPMVAST: TIBBCDField;
    tblNfDaPRED_BCST: TIBBCDField;
    tblNfDaVBC_ST: TIBBCDField;
    tblNfDaPICMS_ST: TIBBCDField;
    tblNfDaVICMS_ST: TIBBCDField;
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
    tblPecasCST: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecasVBC_STRET: TIBBCDField;
    tblPecasPST: TIBBCDField;
    tblPecasVICMS_STRET: TIBBCDField;
    tblPecasPMVAST: TIBBCDField;
    tblPecasPRED_BCST: TIBBCDField;
    tblPecasVBC_ST: TIBBCDField;
    tblPecasPICMS_ST: TIBBCDField;
    tblPecasVICMS_ST: TIBBCDField;
    BitBtn1: TBitBtn;
    tblNofi3: TIBDataSet;
    DataSource2: TDataSource;
    tblNofi3ID_NOFI: TIntegerField;
    tblNofi3ID_CONCESSIONARIA: TIntegerField;
    tblNofi3ID_CLIENTES: TIntegerField;
    tblNofi3ID_CONHECIMENTO: TIntegerField;
    tblNofi3NUMERO: TIBStringField;
    tblNofi3SERIE: TIBStringField;
    tblNofi3EMISSAO: TDateField;
    tblNofi3CODIGO: TIBStringField;
    tblNofi3ORIGEM: TIBStringField;
    tblNofi3ENT_SAI: TIBStringField;
    tblNofi3VENDEDOR: TIBStringField;
    tblNofi3COMISSAO: TIBBCDField;
    tblNofi3SAIDA: TDateField;
    tblNofi3HORA: TIBStringField;
    tblNofi3NAT_OP: TIBStringField;
    tblNofi3IE_SUBS: TIBStringField;
    tblNofi3DESC_PEC: TIBBCDField;
    tblNofi3DESC_OFI: TIBBCDField;
    tblNofi3ICMS: TIBBCDField;
    tblNofi3BASE_ICMS: TFMTBCDField;
    tblNofi3VAL_ICMS: TFMTBCDField;
    tblNofi3BASE_ICM_S: TIBBCDField;
    tblNofi3VAL_ICMS_S: TIBBCDField;
    tblNofi3VAL_FRETE: TIBBCDField;
    tblNofi3VAL_SEGURO: TIBBCDField;
    tblNofi3VAL_OUTROS: TIBBCDField;
    tblNofi3VAL_IPI: TIBBCDField;
    tblNofi3VAL_SERV: TIBBCDField;
    tblNofi3ISSQN: TIBBCDField;
    tblNofi3VAL_ISS: TIBBCDField;
    tblNofi3TOT_PROD: TIBBCDField;
    tblNofi3TOT_NOTA: TIBBCDField;
    tblNofi3PIS: TIBBCDField;
    tblNofi3COFINS: TIBBCDField;
    tblNofi3COD_TRANS: TIBStringField;
    tblNofi3FRETE_TIPO: TIBStringField;
    tblNofi3PLACA: TIBStringField;
    tblNofi3DADOS_AD01: TIBStringField;
    tblNofi3DADOS_AD02: TIBStringField;
    tblNofi3DADOS_AD03: TIBStringField;
    tblNofi3DADOS_AD04: TIBStringField;
    tblNofi3OBS: TIBStringField;
    tblNofi3QTDE_PROD: TIntegerField;
    tblNofi3STATUS: TIBStringField;
    tblNofi3VAL_PIS: TIBBCDField;
    tblNofi3VAL_COFINS: TIBBCDField;
    tblNofi3CHAVE: TIBStringField;
    tblNofi3RECIBO: TIBStringField;
    tblNofi3PROTOCOLO: TIBStringField;
    tblNofi3ARQUIVO: TIBStringField;
    tblNofi3XML: TBlobField;
    tblNofi3PROTOCOLO_CONSULTA: TIBStringField;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosRENAVAM: TIBStringField;
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
    tblVeiculosORIGEM: TIBStringField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    tblVeiculosNCM: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    tblVeiculosCODIGO: TIBStringField;
    tblVeiculosVBC_STRET: TIBBCDField;
    tblVeiculosPST: TIBBCDField;
    tblVeiculosVICMS_STRET: TIBBCDField;
    tblVeiculosPRED_BCST: TIBBCDField;
    tblVeiculosVBC_ST: TIBBCDField;
    tblVeiculosPICMS_ST: TIBBCDField;
    tblVeiculosVICMS_ST: TIBBCDField;
    BTNNF: TBitBtn;
    tblNofi3CFOP: TIBStringField;
    tblNofi2QUANTIDADE_VOLUMES: TIntegerField;
    tblNofi2NFE_REFERENCIADA: TIBStringField;
    tblNofi2NUMERO_NFSE: TIBStringField;
    tblNofi2CODIGO_NFSE: TIBStringField;
    tblNofi2ARQ_XML_RPS: TIBStringField;
    tblNofi2ARQ_XML_NFSE: TIBStringField;
    tblNofi2XML_NFSE: TWideMemoField;
    tblNofi2XML_RPS: TWideMemoField;
    tblNofi2CONSUMIDOR_FINAL: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImportaClick(Sender: TObject);
    procedure FecharDS;
    procedure tblNofiAfterCancel(DataSet: TDataSet);
    procedure tblNofiAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImportacaoDiretaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnNFsClick(Sender: TObject);
    procedure BTNNFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idNofi : Integer;
    idPecas : Integer;
    idOrigem : String;
    idFornecedor : Integer;
    idConcessionaria : Integer;
  end;

var
  BoxSpedBaseST: TBoxSpedBaseST;

implementation

uses Empresas, FDB, Biblioteca, efuncoes;

{$R *.dfm}

procedure TBoxSpedBaseST.BtnImportaClick(Sender: TObject);
var
  CNPJ : String;
begin
  ACbrNfe1.NotasFiscais.Clear;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
  if OpenDialog1.Execute then
    ACbrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   with acbrnfe1 do
   begin
//     configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
     //webservices.Consulta.NFeChave := notasfiscais.Items[0].NFe.procNfe.chNFe;
//     configuracoes.webservices.UF := notasfiscais.items[0].nfe.Emit.EnderEmit.UF;
     memo.lines.clear;
     memo.lines.add( 'consultando...' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
     memo.lines.add( 'Estado de origem: ' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
//     consultar;
     //webservices.consulta.executar;
     memo.lines.add( 'Status: ' + InttoStr(acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat));//inttostr( webservices.consulta.cStat ));
     memo.lines.add( 'Situação: ' + acbrnfe1.notasfiscais.items[0].nfe.procNFe.xMotivo);
//     memo.lines.add( 'Dados :' + );//webservices.consulta.DadosMsg );
     memo.lines.add( 'Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
//     memo.lines.add( 'Protocolo da consulta ' + webservices.consulta.Protocolo );
//Verificar se o destinatario do XML é a concessionaria logada. se não for localiza qual é fornece idconcessionaria
     if BoxEmpresas.CNPJ = NotasFiscais.Items[0].nfe.dest.CNPJCPF then
       idConcessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)
     else
       begin
//       Showmessage('Esta nota fiscal não pertence à esta concessionária.');
         IBQuery4.Close;
         IBQuery4.PAramByName('IdCNPJ').AsString := NotasFiscais.Items[0].nfe.dest.CNPJCPF;
         IBQuery4.Open;
//         showmessage(NotasFiscais.Items[0].nfe.dest.CNPJCPF);
         if IBQuery4.RecordCount = 0 then
           begin
            Showmessage('Concessionaria inexistente.');
            idConcessionaria := 0;
            abort;
           end
         else
           idConcessionaria := IBQuery4.FieldByName('Id_Concessionaria').AsInteger;
       end;

     //Procurar id do fornecedor e cadastrar ele se não existir.
     CNPJ := NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
     with tblPessoas do
     begin
       Close;
       ParamByName('idCNPJ').AsString := ColocaPontoseBarrasCNPJ(CNPJ);
       Open;
       if RecordCount = 0 then
        begin
           Showmessage('Fornecedor não cadastrado.'+#13+'Efetuando cadastro.');
           {Pega um sequence novo para o fornecedore}
           IBQuery2.Open;
           IdFornecedor := IBQuery2.FieldByName('id_Clientes').AsInteger;
           IBQuery2.Close;
           Insert;
           FieldByName('Id_Clientes').AsInteger := IdFornecedor;
           FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Nome').AsString :=
             NotasFiscais.Items[0].NFe.Emit.xNome;
           FieldByName('CPF').AsString := 'CNPJ';
           FieldByName('Num_CPF').AsString := CNPJ;
           FieldByName('Endereco').AsString :=
             NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr + NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;;
           FieldByName('bairro').AsString :=
             NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
           FieldByName('Cidade').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
           FieldByName('Codigo_Municipio').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
           FieldByName('Estado').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
           FieldByName('CEP').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
           FieldByName('Fornecedor').AsString := 'T';
           FieldByName('Identidade').AsString := NotasFiscais.Items[0].NFe.Emit.IE;
           FieldByName('Pai').AsString := 'Não declarado';
           FieldByName('Mae').AsString := 'Não declarado';
           FieldByName('CoEndereco').AsString := FieldByName('Endereco').AsString;
           FieldByName('CoBairro').AsString := FieldByName('Bairro').AsString;
           FieldByName('CoCidade').AsString := FieldByName('Cidade').AsString;
           FieldByName('CoCEP').AsString := FieldByName('CEP').AsString;
           FieldByName('CoEstado').AsString := FieldByName('Estado').AsString;
           FDB1.AtualizaDataAtual;
           FieldByName('Cadastro').AsDateTime := DataAtual;
           Post;
        end
       else
         idFornecedor := FieldByName('Id_Clientes').AsInteger;
     end;
     //Verificar se o destinatario do XML é a concessionaria logada.
//     if BoxEmpresas.CNPJ <> NotasFiscais.Items[0].nfe.dest.CNPJCPF then
//       Showmessage('Esta nota fiscal não pertence à esta concessionária.')
//     else
     //Verificar qual ambiente foi gerada
     if NotasFiscais.Items[0].nfe.Ide.tpAmb = taHomologacao then
       Showmessage('Nota fiscal homologada em ambiente de teste.')
     else

      if acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat <> 100 then //webservices.consulta.cStat <> 100 then  //Verifica se o XML foi aceito na SEFAZ.
       if acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat = 999 then //webservices.consulta.cStat = 999 then
         Showmessage('Erro não catalogado.'+#13+'Tente novamente.')
       else
         Showmessage('Arquivo XML com problemas.')
      else
       //verificar se a nota fiscal já foi importada.
       begin
         with tblNofi do
         begin
           Close;
           ParamByName('idNumero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
           ParamByName('idprotocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
           Open;
           if recordCount <> 0 then
             Showmessage('Nota fiscal já importada.')
           else
            begin
             NumeroNF.text := InttoStr(NotasFiscais.Items[0].NFe.Ide.nNF);
             Emissao.Date := NotasFiscais.Items[0].NFe.Ide.dEmi;
             BtnConfirma.Enabled := True;
            end;
         end;
       end;
   end;
end;

procedure TBoxSpedBaseST.BTNNFClick(Sender: TObject);
var
  CNPJ : String;
  M: TStringStream;
  i: integer;
begin
 with AcbrNfe1 do
 begin
  if (StrToInt(Concessionaria.Text) > 0) then
   begin
    with tblNofi3 do
     begin
       Close;
       ParamByName('idConcessionaria').AsInteger := StrToInt(Concessionaria.Text);
       Open;
       First;
     end;
     memo.lines.clear;
     memo.lines.add('Importando nf.');
     with tblNofi3 do
     begin
      while not eof do
       begin
        if (FieldByName('Origem').AsString = 'P') or (FieldByName('Origem').AsString = 'N') then
         begin
           m := TStringStream.Create( tblNofi3.fieldbyname( 'xml' ).asString );
            with acbrnfe1 do
             begin
              NotasFiscais.Clear;
              NotasFiscais.LoadFromStream( m );
              memo.lines.add('Importando NF: '+ IntToStr(notasfiscais.Items[0].Nfe.Ide.nNF));
              memo.lines.add('do dia: '+ DateToStr(notasfiscais.Items[0].Nfe.Ide.dEmi));
              memo.lines.add('Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
              with tblNofi3 do
              begin
                 Edit;
                 FieldByName('Base_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBC;
                 FieldByName('Val_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vICMS;
                 FieldByName('Base_ICM_S').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBCST;
                 FieldByName('Val_ICMS_S').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vST;
                 Post;
              end;
              if FieldByName('Origem').AsString = 'N' then
              begin
               for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
                begin
                 with tblNFDA do
                 begin
                  Close;
                  ParamByName('IdNofi').Asinteger := tblNofi3.FieldByName('Id_Nofi').AsInteger;
                  Open;
                      Edit;

//                      FieldByName('id_concessionaria').AsInteger := strToInt(Concessionaria.text);
  //                    if (fieldbyName('CFOP').AsString) is null then
    //                    FieldbYName('CFOP').ASString := '1';
                      FieldByName('Base_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBC;
                      FieldByName('VLR_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMS;
  //                    FieldByName('Base_ICMS_S').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBCST;
                      FieldByName('ICMS_SUBST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
                      Post;
                 end;
          //            Showmessage('a3');
                end;
              end;
             end;
         end;
        tblNofi3.Next;
       end;
//        tblNofi3.Next;
     end;
   end;
  Showmessage('Final da importação.');
 end;
end;

procedure TBoxSpedBaseST.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACBrNFe1.Free;
  FecharDs;
  Action :=caFree;
  BoxSpedBaseST := nil;
end;

procedure TBoxSpedBaseST.FormKeyPress(Sender: TObject;
  var Key: Char);
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
  end
end;
procedure TBoxSpedBaseST.FormShow(Sender: TObject);
begin
  BtnConfirma.Enabled := False;
end;

procedure TBoxSpedBaseST.tblNofiAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBtransaction.RollbackRetaining;
end;

procedure TBoxSpedBaseST.tblNofiAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxSpedBaseST.BtnImportacaoDiretaClick(Sender: TObject);
var
  CNPJ : String;
  M: TStringStream;
begin
 if (StrToInt(Concessionaria.Text) > 0) and (StrToInt(NumeroNF.Text) > 0) then
   begin
    with tblNofi2 do
     begin
       Close;
       ParamByName('idConcessionaria').AsInteger := StrToInt(Concessionaria.Text);
       ParamByName('idNumero').AsInteger := StrToInt(NumeroNF.Text);
       Open;
     end;
     if tblNofi2.RecordCount <> 0 then
      if tblNofi2.FieldByName('Origem').AsString = 'P' then
       begin
         m := TStringStream.Create( tblNofi2.fieldbyname( 'xml' ).asString );
         with acbrnfe1 do
         begin
          NotasFiscais.Clear;
          NotasFiscais.LoadFromStream( m );

      //     configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
           //webservices.Consulta.NFeChave := notasfiscais.Items[0].NFe.procNfe.chNFe;
      //     configuracoes.webservices.UF := notasfiscais.items[0].nfe.Emit.EnderEmit.UF;
           memo.lines.clear;
      //     memo.lines.add( 'consultando...' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
      //     consultar;
           //webservices.consulta.executar;
      //     memo.lines.add( 'Status: ' + inttostr( webservices.consulta.cStat ));
      //     memo.lines.add( 'Dados :' + webservices.consulta.DadosMsg );
           memo.lines.add( 'Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
      //     memo.lines.add( 'Protocolo da consulta ' + webservices.consulta.Protocolo );
      //Verificar se o destinatario do XML é a concessionaria logada. se não for localiza qual é fornece idconcessionaria
           if BoxEmpresas.CNPJ = NotasFiscais.Items[0].nfe.dest.CNPJCPF then
             idConcessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)
           else
             begin
      //       Showmessage('Esta nota fiscal não pertence à esta concessionária.');
               IBQuery4.Close;
               IBQuery4.PAramByName('IdCNPJ').AsString := NotasFiscais.Items[0].nfe.dest.CNPJCPF;
               IBQuery4.Open;
      //         showmessage(NotasFiscais.Items[0].nfe.dest.CNPJCPF);
               if IBQuery4.RecordCount = 0 then
                 begin
                  Showmessage('Concessionaria inexistente.');
                  idConcessionaria := 0;
                  abort;
                 end
               else
                 idConcessionaria := IBQuery4.FieldByName('Id_Concessionaria').AsInteger;
             end;

           //Procurar id do fornecedor e cadastrar ele se não existir.
           CNPJ := NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
           with tblPessoas do
           begin
             Close;
             ParamByName('idCNPJ').AsString := ColocaPontoseBarrasCNPJ(CNPJ);
             Open;
             if RecordCount = 0 then
              begin
                 Showmessage('Fornecedor não cadastrado.'+#13+'Efetuando cadastro.');
                 {Pega um sequence novo para o fornecedore}
                 IBQuery2.Open;
                 IdFornecedor := IBQuery2.FieldByName('id_Clientes').AsInteger;
                 IBQuery2.Close;
                 Insert;
                 FieldByName('Id_Clientes').AsInteger := IdFornecedor;
                 FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 FieldByName('Nome').AsString :=
                   NotasFiscais.Items[0].NFe.Emit.xNome;
                 FieldByName('CPF').AsString := 'CNPJ';
                 FieldByName('Num_CPF').AsString := CNPJ;
                 FieldByName('Endereco').AsString :=
                   NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr + NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;;
                 FieldByName('bairro').AsString :=
                   NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
                 FieldByName('Cidade').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
                 FieldByName('Codigo_Municipio').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                 FieldByName('Estado').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
                 FieldByName('CEP').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
                 FieldByName('Fornecedor').AsString := 'T';
                 FieldByName('Identidade').AsString := NotasFiscais.Items[0].NFe.Emit.IE;
                 FieldByName('Pai').AsString := 'Não declarado';
                 FieldByName('Mae').AsString := 'Não declarado';
                 FieldByName('CoEndereco').AsString := FieldByName('Endereco').AsString;
                 FieldByName('CoBairro').AsString := FieldByName('Bairro').AsString;
                 FieldByName('CoCidade').AsString := FieldByName('Cidade').AsString;
                 FieldByName('CoCEP').AsString := FieldByName('CEP').AsString;
                 FieldByName('CoEstado').AsString := FieldByName('Estado').AsString;
                 FDB1.AtualizaDataAtual;
                 FieldByName('Cadastro').AsDateTime := DataAtual;
                 Post;
              end
             else
               idFornecedor := FieldByName('Id_Clientes').AsInteger;
           end;
           //Verificar se o destinatario do XML é a concessionaria logada.
      //     if BoxEmpresas.CNPJ <> NotasFiscais.Items[0].nfe.dest.CNPJCPF then
      //       Showmessage('Esta nota fiscal não pertence à esta concessionária.')
      //     else
           //Verificar qual ambiente foi gerada
//           if NotasFiscais.Items[0].nfe.Ide.tpAmb = taHomologacao then
  //           Showmessage('Nota fiscal homologada em ambiente de teste.')
    //       else
        //    if webservices.consulta.cStat <> 100 then  //Verifica se o XML foi aceito na SEFAZ.
      //       if webservices.consulta.cStat = 999 then
          //     Showmessage('Erro não catalogado.'+#13+'Tente novamente.')
   //          else
     //          Showmessage('Arquivo XML com problemas.')
       //     else

             //verificar se a nota fiscal já foi importada.
             begin
               with tblNofi do
               begin
                 Close;
                 ParamByName('idNumero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
                 ParamByName('idprotocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
                 Open;
                 if recordCount <> 0 then
                   Showmessage('Nota fiscal já importada.')
                 else
                  begin
                   NumeroNF.text := InttoStr(NotasFiscais.Items[0].NFe.Ide.nNF);
                   Emissao.Date := NotasFiscais.Items[0].NFe.Ide.dEmi;
                   BtnConfirma.Enabled := True;
                  end;
               end;
             end;
         end;
       end
      else
       Showmessage('NF de peças não localizada')
     else
      Showmessage('NF de peças não localizada, sem registros');
   end
 else
  Showmessage('Preencha os dados concessionaria e número da NF.');
end;

procedure TBoxSpedBaseST.BitBtn1Click(Sender: TObject);
var
  CNPJ : String;
  M: TStringStream;
  i: integer;
begin
 with AcbrNfe1 do
 begin
  if (StrToInt(Concessionaria.Text) > 0) then
   begin
    with tblNofi3 do
     begin
       Close;
       ParamByName('idConcessionaria').AsInteger := StrToInt(Concessionaria.Text);
       Open;
       First;
     end;
     memo.lines.clear;
     memo.lines.add('Importando peças originais.');
     with tblNofi3 do
     begin
      while not eof do
       begin
//        if FieldByName('xml').AsString.IsNullOrEmpty('') then
  //        Next;
        if FieldByName('Origem').AsString = 'P' then
         begin
           m := TStringStream.Create( tblNofi3.fieldbyname( 'xml' ).asString );
            with acbrnfe1 do
             begin
              NotasFiscais.Clear;
              NotasFiscais.LoadFromStream( m );
              memo.lines.add('Importando NF: '+ IntToStr(notasfiscais.Items[0].Nfe.Ide.nNF));
              memo.lines.add('do dia: '+ DateToStr(notasfiscais.Items[0].Nfe.Ide.dEmi));
              memo.lines.add('Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
              for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
               begin
                with tblPecas do
                begin
                  Close;
                  ParamByName('IdCodigo').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.cProd;
                  Open;
                  if tblPecas.RecordCount <> 0 then
                    begin
                     if (tblPecas.FieldByName('CST').AsString ='060') or
                        (tblPecas.FieldByName('CST').AsString ='160') or
                        (tblPecas.FieldByName('CST').AsString ='260') or
                        (tblPecas.FieldByName('CST').AsString ='360') or
                        (tblPecas.FieldByName('CST').AsString ='460') or
                        (tblPecas.FieldByName('CST').AsString ='560') or
                        (tblPecas.FieldByName('CST').AsString ='660') or
                        (tblPecas.FieldByName('CST').AsString ='760') then
                     begin
                      Edit;
                                   //Campos para atacado
                      fieldByName('vBC_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBCST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
                      fieldByName('vICMS_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMSST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      //Campos para consumidor final
                      fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
                      fieldByName('vICMS_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMS/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
                      fieldByName('vBC_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBC/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      Post;
                     end;
                    end;
                end;
               end;
             end;
         end;
         tblNofi3.Next;
       end;
     end;



     //INICIO DOS VEICULOS
     memo.lines.clear;
     memo.lines.add('Importando veículos novos.');
     with tblNofi3 do
     begin
      close;
      open;
      First;
      while not eof do
       begin
        if FieldByName('Origem').AsString = 'N' then
         begin
           m := TStringStream.Create( tblNofi3.fieldbyname( 'xml' ).asString );
            with acbrnfe1 do
             begin
              NotasFiscais.Clear;
              NotasFiscais.LoadFromStream( m );
              memo.lines.add('Importando NF: '+ IntToStr(notasfiscais.Items[0].Nfe.Ide.nNF));
              memo.lines.add('do dia: '+ DateToStr(notasfiscais.Items[0].Nfe.Ide.dEmi));
              memo.lines.add('Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
              for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
               begin
                with tblVeiculos do
                begin
                  Close;
    //              ParamByName('IdChassi').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.veicProd.chassi;
                  ParamByName('idNf').Asinteger := NotasFiscais.Items[0].nfe.Ide.nNF;
                  Open;
                  if tblVeiculos.RecordCount <> 0 then
                    begin
                      Edit;
                                   //Campos para atacado
                      fieldByName('vBC_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBCST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
                      fieldByName('vICMS_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMSST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      //Campos para consumidor final
                      fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
                      fieldByName('vICMS_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMS/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
                      fieldByName('vBC_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBC/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      Post;
                    end;
                end;
               end;
             end;
         end;
         tblNofi3.Next;
       end;

     end;

   end;
 end;
 Showmessage('Final da importação.');
end;


procedure TBoxSpedBaseST.BtnNFsClick(Sender: TObject);
var
  CNPJ : String;
  M: TStringStream;
  i: integer;

begin
 with acbrnfe1 do
     //INICIO DOS VEICULOS
  if (StrToInt(Concessionaria.Text) > 0) then
   begin

     memo.lines.clear;
     memo.lines.add('Importando veículos novos.');
     with tblNofi3 do
     begin
      close;
      open;
      First;
      while not eof do
       begin
        if FieldByName('Origem').AsString = 'N' then
         begin
           m := TStringStream.Create( tblNofi3.fieldbyname( 'xml' ).asString );
            with acbrnfe1 do
             begin
              NotasFiscais.Clear;
              NotasFiscais.LoadFromStream( m );
              memo.lines.add('Importando NF: '+ IntToStr(notasfiscais.Items[0].Nfe.Ide.nNF));
              memo.lines.add('do dia: '+ DateToStr(notasfiscais.Items[0].Nfe.Ide.dEmi));
              memo.lines.add('Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
              for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
               begin
                with tblVeiculos do
                begin
                  Close;
    //              ParamByName('IdChassi').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.veicProd.chassi;
                  ParamByName('idNf').Asinteger := NotasFiscais.Items[0].nfe.Ide.nNF;
                  Open;
                  if tblVeiculos.RecordCount <> 0 then
                    begin
                      Edit;
                                   //Campos para atacado
                      fieldByName('vBC_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBCST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
                      fieldByName('vICMS_STRet').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMSST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      //Campos para consumidor final
                      fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
                      fieldByName('vICMS_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMS/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
                      fieldByName('vBC_ST').AsCurrency := (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBC/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                      Post;
                    end;
                end;
               end;
             end;
         end;
         tblNofi3.Next;
       end;

     end;

   end;
 Showmessage('Final da importação.');

end;

procedure TBoxSpedBaseST.BtnConfirmaClick(Sender: TObject);
var
//  CNPJ : String;
  i: Integer;
  total : extended;
  TotalProd : extended;
  ValorPIS : Extended;
  ValorCOFINS : Extended;
//  preco : extended;
begin
  Total := 0;
  TotalProd := 0;
  ValorPIS := 0;
  ValorCOFINS := 0;
  with ACBrNFe1 do
     begin
      if Copy(NotasFiscais.Items[0].Nfe.Det.Items[0].Prod.xProd,1,5) <> 'MOTOC' then
        try
          //Gravar a nota fiscal
          with tblNofi do
          begin
            Insert;
            {Pega um sequence novo para a NF}
            IBQuery1.Open;
            IdNofi := IBQuery1.FieldByName('id_nofi').AsInteger;
            IBQuery1.Close;
            FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
            FieldByName('id_Nofi').AsInteger := IdNofi;
            FieldByName('id_Clientes').AsInteger := IdFornecedor;
            FieldByName('id_conhecimento').AsInteger := 1;
            FieldByName('Numero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
            FieldByName('Emissao').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;
            FieldByName('Serie').AsInteger := NotasFiscais.Items[0].NFe.Ide.serie;
            FieldByName('Nat_Op').AsString := Substr(NotasFiscais.Items[0].NFe.Ide.natOp,1,40);
            FieldByName('Ent_Sai').AsString := 'E';
            FieldByName('Protocolo_Consulta').AsString := webservices.consulta.Protocolo;
            FieldByName('Protocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
            FieldByName('XML').AsString := NotasFiscais.Items[0].xml;
            FieldByName('Chave').AsString := NotasFiscais.Items[0].NFe.procNFe.chNFe;
            FieldByName('Origem').AsString := 'P';
          end;
          //Gravar dados da Nota - Dados_NFE
          with tblNFDa do
          begin
            Open;
            for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
            begin
            //localizar id da peça
             with tblPecas do
             begin
               Close;
               ParamByName('IdCodigo').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
               Open;
               if recordCount = 0 then
                 begin
                   {Pega um sequence novo para a Peça}
                   IBQuery3.Open;
                   IdPecas := IBQuery3.FieldByName('id_pecas').AsInteger;
                   IBQuery3.Close;
                   //Peça não cadastrada, efetua o cadastro
                   Insert;
                   FieldByName('Id_pecas').AsInteger := idPecas;
                   FieldByName('Codigo').AsString  := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
                   FieldByName('Descricao').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
                   FieldByName('Unidade').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacional then
                     FieldByName('Cod_Proc').AsString := '0';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraImportacaoDireta then
                     FieldByName('Cod_Proc').AsString := '1';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraAdquiridaBrasil then
                     FieldByName('Cod_Proc').AsString := '2';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacionalConteudoImportacaoSuperior40 then
                     FieldByName('Cod_Proc').AsString := '3';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacionalProcessosBasicos then
                     FieldByName('Cod_Proc').AsString := '4';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacionalConteudoImportacaoInferiorIgual40 then
                     FieldByName('Cod_Proc').AsString := '5';
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraImportacaoDiretaSemSimilar then
                     FieldByName('Cod_Proc').AsString := '7'; //para nós não é 6 e 7 pois se veio Yamaha é terceiro
                   if NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraAdquiridaBrasilSemSimilar then
                     FieldByName('Cod_Proc').AsString := '7';
                                    //VERIFICAR PROCEDENCIA NOVA 8

                   FieldByName('NCM').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.NCM;
                   FieldByName('ICMS').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
                   FieldByName('IPI').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
                   FieldByName('Lista').AsString := 'F';
                   with tblPecasFabrica do
                    begin
                     Close;
                     ParamByName('idCodigo').AsString := tblPecas.FieldByName('Codigo').AsString;
                     Open;
                     if tblPecasFabrica.RecordCount <> 0 then
                      begin
                       tblPecas.FieldByName('PPS').AsString := tblPecasFabrica.FieldByName('PPS').AsString;
                       tblPecas.FieldByName('Preco_Gar').AsString := tblPecasFabrica.FieldByName('Preco_Garan').AsString;
                       tblPecas.FieldByName('Original').AsString := 'T';
                       tblPecas.FieldByName('Grupo').AsString := '001';
                       tblPecas.FieldByName('Preco').AsFloat := tblPecasFabrica.FieldByName('PPS').AsFloat *
                         ((StrToFloat(SobrePreco)/100)+1);
                      end
                     else
                      begin
                       tblPecas.FieldByName('Original').AsString := 'F';
                       tblPecas.FieldByName('Grupo').AsString := '002';
                      end;
                    end;
                   if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst10) or
                      (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst30) or
                      (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst60) then
                     FieldByName('Subst_trib').AsString := 'T'
                   else
                     FieldByName('Subst_trib').AsString := 'F';
                   if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINS.CST = cof04) or
                      (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINS.CST = cof06) then
                     FieldByName('ST_COFINS').AsString := 'T'
                   else
                     FieldByName('ST_COFINS').AsString := 'F';
                   if not (FieldByName('Subst_trib').AsBoolean) then
                    begin
                      FieldByName('CFOP1').AsString := '5102';
                      FieldByName('CFOP2').AsString := '6102';
                    end
                   else
                    begin
                     if (NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.CFOP = '6655') or
                        (NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.CFOP = '5655') then
                      begin
                        FieldByName('CFOP1').AsString := '5656';
                        FieldByName('CFOP2').AsString := '6656';
                      end
                     else
                      begin
                        FieldByName('CFOP1').AsString := '5405';
                        FieldByName('CFOP2').AsString := '6404';
                      end;
                    end;
                  //Item nacional com ICMS CST 000
                  if (FieldByName('Cod_Proc').AsInteger = 0) and (FieldByName('Subst_trib').AsString = 'F') then
                    tblPecas.FieldByName('CST').AsString := '000';
                 //Item nacional ICMS subst CST 060
                  if (FieldByName('Cod_Proc').AsInteger = 0) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '060';
                //Item importado com ICMS CST 200
                  if (FieldByName('Cod_Proc').AsInteger = 1) and (FieldByName('Subst_trib').AsString = 'F') then
                    tblPecas.FieldByName('CST').AsString := '200';
                //Item importado ICMS subst CST 260
                  if (FieldByName('Cod_Proc').AsInteger = 1) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '260';

                //Item importado com ICMS CST 200
                  if (FieldByName('Cod_Proc').AsInteger = 2) and (FieldByName('Subst_trib').AsString = 'F') then
                    tblPecas.FieldByName('CST').AsString := '200';
                //Item importado ICMS subst CST 260
                  if (FieldByName('Cod_Proc').AsInteger = 2) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '260';

                  if (FieldByName('Cod_Proc').AsInteger = 3) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '360';

                  if (FieldByName('Cod_Proc').AsInteger = 4) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '460';

               //item impport menor q 40% icms subst cst 560
                  if (FieldByName('Cod_Proc').AsInteger = 5) and (FieldByName('Subst_trib').AsString = 'T') then
                    tblPecas.FieldByName('CST').AsString := '560';
                                     //acrescido em função ICMS_ST em vigor 01/01/2019
                    //Campos para atacado
                  fieldByName('vBC_STRet').AsCurrency := (NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBCST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                  fieldByName('pST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
                  fieldByName('vICMS_STRet').AsCurrency := (NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMSST/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                  //Campos para consumidor final
                  fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
                  fieldByName('vICMS_ST').AsCurrency := (NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMS/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);
                  fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
                  fieldByName('vBC_ST').AsCurrency := (NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBC/NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom);


                   tblPecas.Post;
                 end
                else
                 begin
                   //pega id da peça localizada.
                   IdPecas := FieldByName('id_Pecas').AsInteger;
                   if FieldByName('NCM').AsString <> NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.NCM then
                   begin
                     Edit;
                     FieldByName('NCM').AsString := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.NCM;
                     Post;
                   end;
                   if NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig = oeNacional then
                     idOrigem := '0';
                   if NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraImportacaoDireta then
                     idOrigem := '1';
                   if NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig = oeEstrangeiraAdquiridaBrasil then
                     idOrigem := '2';
                   if FieldByName('Cod_Proc').AsString <> idOrigem then
                   begin
                     Edit;
                     FieldByName('Cod_Proc').AsString := idOrigem;
                     Post;
                   end;
                   if (FieldByName('ST_COFINS').AsString = 'F') then
                     if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINS.CST = cof04) or
                        (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINS.CST = cof06) then
                     begin
                       Edit;
                       FieldByName('ST_COFINS').AsString := 'T';
                       Post;
                     end;
                   if (FieldByName('SUBST_TRIB').AsString = 'F') then
                     if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst10) or
                        (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst30) or
                        (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst60) then
                      begin
                        Edit;
                        FieldByName('SUBST_TRIB').AsString := 'T';
                        FieldByName('CFOP1').AsString := '5405';
                        FieldByName('CFOP2').AsString := '6404';
                           //acrescido em função ICMS_ST em vigor 01/01/2019
                          //Campos para atacado
                        fieldByName('vBC_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBCST;
                        fieldByName('pST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
                        fieldByName('vICMS_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
                        //Campos para consumidor final
                        fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
                        fieldByName('vICMS_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMS;
                        fieldByName('pICMS_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMS;
                        fieldByName('vBC_ST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBC;

                        Post;
                      end;
                 end;
             end;
             //Gravando dados na NFE
             Insert;
             FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
             FieldByName('Id_Conhecimento').AsInteger := 1;
             FieldByName('Id_Nofi').AsInteger := IdNofi;
             FieldByName('id_peca').AsInteger := IdPecas;
             FieldByName('NF').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
             if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst10) or
                (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst30) or
                (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst60) then
                if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacional) then
                  FieldByName('CST').AsString := '060'
                else
                  FieldByName('CST').AsString := '260';
             if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst00) then
                if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacional) then
                  FieldByName('CST').AsString := '000'
                else
                  FieldByName('CST').AsString := '200';         ;
             FieldByName('vlr_frete').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vFrete;
             FieldByName('vlr_seguro').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vSeg;
             FieldByName('ITEM').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
             FieldByName('QTDE').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom;
             FieldByName('CFOP').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
             FieldByName('VLR_ICMS').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
             FieldByName('VLR_IPI').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
             FieldByName('VLR_UNIT').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
             FieldByName('Prod_numero').AsInteger := i + 1;
             FieldByName('ICMS_SUBST').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
                 //acrescido em função ICMS_ST em vigor 01/01/2019
                //Campos para atacado
            fieldByName('vBC_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vBCST;
            fieldByName('pST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
            fieldByName('vICMS_STRet').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
              //Campos para consumidor final
            fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[i].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
//            fieldByName('vBC_Efet').AsCurrency := NotasFiscais.Items[o].Nfe.Det.Items[i].Imposto.ICMS.vBCEfet;
//            fieldByName('pICMS_Efet').AsCurrency := NotasFiscais.Items[o].Nfe.Det.Items[i].Imposto.ICMS.pICMSEfet;

             Post;
             //se não tiver cadastro de quantidades criar o cadastro de quantidades na concessionaria
             with tblPecasEstoque do
              begin
                tblPecasEstoque.Close;
                tblPecasEstoque.ParamByName('idPecas').AsInteger := idPecas;
                tblPecasEstoque.ParamByName('idConcessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                tblPecasEstoque.Open;
                if tblPecasEstoque.RecordCount = 0  then
                 begin
                   tblPecasEstoque.Insert;
                   tblPecasEstoque.FieldByName('id_Pecas').AsInteger := idPecas;
                   tblPecasEstoque.FieldByName('id_Concessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                   tblPecasEstoque.FieldByName('Estoque').AsInteger := 0;
                   tblPecasEstoque.FieldByName('Estoqos').AsInteger := 0;
                   tblPecasEstoque.Post;
                 end;
              end;
            end; // final do loop de produtos da NF
          end;
          //Gravar Contas a Pagar
          with tblCPagar do
          begin
            Open;
            for i := 0 to (NotasFiscais.Items[0].NFe.Cobr.Dup.Count)-1 do
             begin
              Insert;
              FieldByName('Id_Clientes').AsInteger := IdFornecedor;
              FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
              FieldByName('Documento').AsString := IntToStr(NotasFiscais.Items[0].NFe.Ide.nNF) + '-' +
                                                   (Substr(NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup,3,1));


//              IntToStr(NotasFiscais.Items[0].NFe.Ide.nNF) + '-' +
//              IntToStr(StrToInt(NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].nDup));
              FieldByName('NFiscal').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
              FieldByName('Id_forma_Pagamento').AsString := '2';
              FieldByName('Vencimento').AsDateTime := NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
              FieldByName('Valor').AsCurrency := NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
              FieldByName('Emissao').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;
              FieldByName('Historico').AsString := 'Compra peças ref.NF.' +
                 IntToStr(NotasFiscais.Items[0].NFe.Ide.nNF);
              FieldByName('Status').AsString := 'Processado';
              Post;
             end;
          end;
          with tblNofi do
          begin
            FieldByName('Qtde_Prod').AsInteger := NotasFiscais.Items[0].NFe.Det.Count;
            FieldByName('Status').AsString := 'Aberto';
            FieldByName('Val_ICMS_S').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
            FieldByName('Val_PIS').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
            FieldByName('Val_COFINS').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
            FieldByName('CFOP').AsString := '2405';
            FieldByName('Val_Frete').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
            FieldByName('Val_seguro').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
            FieldByName('Val_outros').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro +
              NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
            FieldByName('Frete_Tipo').AsString := modFreteToStr(NotasFiscais.Items[0].Nfe.Transp.modFrete);
            FieldByName('Val_IPI').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
            FieldByName('Tot_Prod').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
            FieldByName('Tot_Nota').AsCurrency := NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
            Post;
          end;
        except
         on e:Exception do
          begin
           showmessage( 'Erro de gravação:' + e.message );
           abort;
           exit;
          end;
        end
      else
       Showmessage('Está é uma NF de motocicleta.');
    end;
    Memo.Lines.Clear;
    Showmessage('Importação concluída.');
    BtnConfirma.Enabled := False;
    BtnImporta.SetFocus;
end;

procedure TBoxSpedBaseST.FecharDs;
begin
  tblNofi.Close;
end;
end.
