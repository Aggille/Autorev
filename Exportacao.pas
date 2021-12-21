unit Exportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit,
  DB, IBCustomDataSet, ACBrNFe, ACBrBase, ACBrDFe;

type
  TBoxExportacao = class(TForm)
    Panel1: TPanel;
    Data: TJvDateEdit;
    BtnConfirma: TBitBtn;
    Label4: TLabel;
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    DataSourceNofisa: TDataSource;
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
    Edit1: TEdit;
    Label1: TLabel;
    tblBancos: TIBDataSet;
    DataSourceBancos: TDataSource;
    tblBancosID_BANCO: TIntegerField;
    tblBancosID_CONCESSIONARIA: TIntegerField;
    tblBancosID_CLIENTES: TIntegerField;
    tblBancosID_AVALISTA: TIntegerField;
    tblBancosDOCUMENTO: TIBStringField;
    tblBancosNATUREZA: TIBStringField;
    tblBancosDATA: TDateField;
    tblBancosVALOR: TIBBCDField;
    tblBancosBANCO: TIBStringField;
    tblBancosCONTA: TIBStringField;
    tblBancosHISTORICO: TIBStringField;
    tblBancosJUROS: TIBBCDField;
    tblBancosORIGEM: TIBStringField;
    BitBtn1: TBitBtn;
    AcbrNFe1: TACBrNFe;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    BtnXMLEntrada: TBitBtn;
    StatusBar1: TStatusBar;
    tblNofi: TIBDataSet;
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
    tblNofiBASE_ICMS: TIBBCDField;
    tblNofiVAL_ICMS: TIBBCDField;
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
    DataSourceNofi: TDataSource;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    tblBancosID_CRECEBER: TIntegerField;
    tblBancosID_CRECEBER1: TIntegerField;
    tblBancosID_CONCESSIONARIA1: TIntegerField;
    tblBancosID_CLIENTES1: TIntegerField;
    tblBancosID_AVALISTA1: TIntegerField;
    tblBancosID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblBancosDOCUMENTO1: TIBStringField;
    tblBancosPARCELA: TIBStringField;
    tblBancosVEZES: TIBStringField;
    tblBancosID_FORMA_PAGAMENTO: TIntegerField;
    tblBancosORIGEM1: TIBStringField;
    tblBancosCONTA1: TIBStringField;
    tblBancosVENCIMENTO: TDateField;
    tblBancosVALOR1: TIBBCDField;
    tblBancosEMISSAO: TDateField;
    tblBancosTOTAL: TIBBCDField;
    tblBancosPAGAMENTO: TDateField;
    tblBancosVALOR_PAGO: TIBBCDField;
    tblBancosBANCO1: TIBStringField;
    tblBancosHISTORICO1: TIBStringField;
    tblBancosSTATUS: TIBStringField;
    tblBancosID_PEDIDO_VEICULOS: TIntegerField;
    tblBancosBOLETO_EMITIDO: TIBStringField;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Data1: TJvDateEdit;
    Data2: TJvDateEdit;
    Label3: TLabel;
    tblSada: TIBDataSet;
    DataSource1: TDataSource;
    tblNofisa2: TIBDataSet;
    DataSource2: TDataSource;
    tblNofisa2ID_NOFISA: TIntegerField;
    tblNofisa2ID_CONCESSIONARIA: TIntegerField;
    tblNofisa2ID_CLIENTES: TIntegerField;
    tblNofisa2NUMERO: TIntegerField;
    tblNofisa2SERIENF: TIBStringField;
    tblNofisa2EMISSAO: TDateField;
    tblNofisa2ORIGEM: TIBStringField;
    tblNofisa2ENT_SAI: TIBStringField;
    tblNofisa2VENDEDOR: TIntegerField;
    tblNofisa2SAIDA: TDateField;
    tblNofisa2HORA: TIBStringField;
    tblNofisa2IE_SUBS: TIBStringField;
    tblNofisa2DESC_PEC: TIBBCDField;
    tblNofisa2DESC_OFI: TIBBCDField;
    tblNofisa2BASE_ICMS: TIBBCDField;
    tblNofisa2VAL_ICMS: TIBBCDField;
    tblNofisa2BASE_ICM_S: TIBBCDField;
    tblNofisa2VAL_ICMS_S: TIBBCDField;
    tblNofisa2VAL_FRETE: TIBBCDField;
    tblNofisa2VAL_SEGURO: TIBBCDField;
    tblNofisa2VAL_OUTROS: TIBBCDField;
    tblNofisa2VAL_IPI: TIBBCDField;
    tblNofisa2VAL_SERV: TIBBCDField;
    tblNofisa2ISSQN: TIBBCDField;
    tblNofisa2VAL_ISS: TIBBCDField;
    tblNofisa2TOT_PROD: TIBBCDField;
    tblNofisa2TOT_NOTA: TIBBCDField;
    tblNofisa2PIS: TIBBCDField;
    tblNofisa2COFINS: TIBBCDField;
    tblNofisa2COD_TRANS: TIBStringField;
    tblNofisa2FRETE_TIPO: TIBStringField;
    tblNofisa2PLACA: TIBStringField;
    tblNofisa2DADOS_AD01: TIBStringField;
    tblNofisa2DADOS_AD02: TIBStringField;
    tblNofisa2DADOS_AD03: TIBStringField;
    tblNofisa2DADOS_AD04: TIBStringField;
    tblNofisa2OBS: TIBStringField;
    tblNofisa2QTDE_PROD: TIntegerField;
    tblNofisa2STATUS: TIBStringField;
    tblNofisa2CODIGO_FISCAL: TIBStringField;
    tblNofisa2DESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisa2FORMA_PAGAMENTO: TIBStringField;
    tblNofisa2CHAVE: TIBStringField;
    tblNofisa2RECIBO: TIBStringField;
    tblNofisa2PROTOCOLO: TIBStringField;
    tblNofisa2ARQUIVO: TIBStringField;
    tblNofisa2XML: TBlobField;
    tblNofisa2PROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisa2MOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisa2DADOS_AD05: TIBStringField;
    tblNofisa2RECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisa2TRANSFERENCIA_PENDENTE: TIBStringField;
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
    tblSadaCUSTO: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
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
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblNofisa2ESTADO: TIBStringField;
    tblNofisa2CPF: TIBStringField;
    tblNofisa2NUM_CPF: TIBStringField;
    tblPecas: TIBDataSet;
    DataSource3: TDataSource;
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
    IBStringField18: TIBStringField;
    IntegerField4: TIntegerField;
    DataSourcePecas2: TDataSource;
    tblPecas2ID_SADA: TIntegerField;
    tblPecas2ID_NOFISA: TIntegerField;
    tblPecas2ID_CONCESSIONARIA: TIntegerField;
    tblPecas2NF: TIBStringField;
    tblPecas2CODIGO1: TIBStringField;
    tblPecas2DESCRICAO1: TIBStringField;
    tblPecas2QTDE: TSmallintField;
    tblPecas2UNIDADE1: TIBStringField;
    tblPecas2CST1: TIBStringField;
    tblPecas2SUBST: TIBStringField;
    tblPecas2ALIQ_ICMS: TIBBCDField;
    tblPecas2ICMS1: TIBBCDField;
    tblPecas2CUSTO: TIBBCDField;
    tblPecas2PRECO1: TIBBCDField;
    tblPecas2CFOP: TIBStringField;
    tblPecas2NAT_OP: TIBStringField;
    tblPecas2ST_COFINS1: TIBStringField;
    tblPecas2ANO_MODELO: TIBStringField;
    tblPecas2ANO_FABRICACAO: TIBStringField;
    tblPecas2RENAVAM: TIBStringField;
    tblPecas2POTENCIA: TIBStringField;
    tblPecas2COR: TIBStringField;
    tblPecas2COMBUSTIVEL: TIBStringField;
    tblPecas2PLACA: TIBStringField;
    tblPecas2MOTOR: TIBStringField;
    tblPecas2CHASSI: TIBStringField;
    tblPecas2MARCA: TIBStringField;
    tblPecas2MODELO: TIBStringField;
    tblPecas2STATUS: TIBStringField;
    tblPecas2BASE_ICMS: TIBBCDField;
    tblPecas2DESCONTO: TIBBCDField;
    tblPecas2ID_PECAS1: TIntegerField;
    BitBtn4: TBitBtn;
    DataSource4: TDataSource;
    tblPecasEstoque: TIBDataSet;
    DataSource5: TDataSource;
    tblpecasLocalizacao: TIBDataSet;
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
    tblPecasEstoquePRATELEIRA: TIBStringField;
    tblPecasEstoqueESCANINHO_GAVETA: TIBStringField;
    tblpecasLocalizacaoID_PECAS_LOCALIZACAO: TIntegerField;
    tblpecasLocalizacaoID_CONCESSIONARIA: TIntegerField;
    tblpecasLocalizacaoID_PECAS: TIntegerField;
    tblpecasLocalizacaoPRATELEIRA: TIBStringField;
    tblpecasLocalizacaoESCANINHO_GAVETA: TIBStringField;
    tblpecasLocalizacaoCORREDOR: TIBStringField;
    tblpecasLocalizacaoCODIGO_SGS: TIntegerField;
    DataSourceDespesas: TDataSource;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    tblBanco: TIBDataSet;
    tblBancoID_BANCO: TIntegerField;
    tblBancoID_CONCESSIONARIA: TIntegerField;
    tblBancoID_CLIENTES: TIntegerField;
    tblBancoID_AVALISTA: TIntegerField;
    tblBancoDOCUMENTO: TIBStringField;
    tblBancoNATUREZA: TIBStringField;
    tblBancoDATA: TDateField;
    tblBancoVALOR: TIBBCDField;
    tblBancoBANCO: TIBStringField;
    tblBancoCONTA: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    tblBancoORIGEM: TIBStringField;
    DataSourceBanco: TDataSource;
    Label5: TLabel;
    Banco: TEdit;
    DataSource6: TDataSource;
    tblPecasEstoqueSubs: TIBDataSet;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField81: TIBStringField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    DateField10: TDateField;
    DateField11: TDateField;
    DateField12: TDateField;
    IBStringField82: TIBStringField;
    tblPecasEstoqueSubsPRATELEIRA: TIBStringField;
    tblPecasEstoqueSubsESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoqueSubsDESCRICAO: TIBStringField;
    tblPecasEstoqueSubsCODIGO: TIBStringField;
    tblPecasEstoqueSubsNOVASUBS: TIBStringField;
    BtnICMSSubst: TBitBtn;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
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
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure GravaClientesJB;
    procedure GravaNotasJB;
    procedure GravaMovProdJB;
    procedure GravaProdutosJB;
    procedure FecharDS;
    procedure GravaBancosJB;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure CarregaXml( var nfe:TAcbrNfe; tabela : TIBDataset );
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnXMLEntradaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure tblPecasEstoqueAfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnICMSSubstClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxExportacao: TBoxExportacao;

implementation

uses FDB, Empresas, Efuncoes, NfeGerenciamento, Biblioteca;

{$R *.dfm}

procedure TBoxExportacao.BitBtn1Click(Sender: TObject);
//var
//    arquivoXml :String;
//    F:TextFile;
begin
 with tblNofisa do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
     begin
       CarregaXml(AcbrNFe1, tblNofisa);
//       arquivoXml  :=  configuracoes.geral.PathSalvar + tblNofisa.fieldbyname('numero').AsString + '-' +
  //          notaUtil.LimpaNumero( notasfiscais.items[0].nfe.infNFe.ID ) +'-NFe.xml'  ;
//       AcbrNFe1.NotasFiscais.Items[recno-1].SaveToFile;
       Next;
     end;
    AcbrNFe1.NotasFiscais.Clear;
    Showmessage('XMLs exportados');
  end;
end;

procedure TBoxExportacao.BitBtn2Click(Sender: TObject);
begin
  GravaMovProdJB;
  Showmessage('Exportação de movimento de produtos concluída');
  GravaProdutosJB;
  Showmessage('Exportação de cadstro de produtos concluída');
  Showmessage('Exportação concluída.');
end;

procedure TBoxExportacao.BitBtn3Click(Sender: TObject);
begin
{  tblpecaslocalizacao.Close;
  tblpecaslocalizacao.ParamByName('IdConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblpecaslocalizacao.Open;
  tblpecaslocalizacao.First;
  while not tblpecaslocalizacao.eof do
   begin
    with tblpecasEstoque do
     begin
      Close;
      ParamByName('IdConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      ParamByName('IdPecas').AsInteger := tblPecasLocalizacao.FieldByName('Id_pecas').AsInteger;
      Open;
      Edit;
      FieldByName('Prateleira').AsString := tblPecasLocalizacao.FieldByName('Prateleira').AsString;
      FieldByName('Escaninho_gaveta').AsString := tblPecasLocalizacao.FieldByName('Escaninho_gaveta').AsString;
//  showmessage(FieldByName('Id_pecas_estoque').AsString);
 // showmessage(tblpecaslocalizacao.FieldByName('Id_pecas').AsString);
      Post;
     end;
    tblpecaslocalizacao.Next;
   end;
  showmessage('fim de gravação');}
end;

procedure TBoxExportacao.BitBtn4Click(Sender: TObject);
begin
{tblDespesas.Open;
  with tblBanco do
   begin
     Close;
//     ParamByName('idHistorico').AsString :=
     Open;
     while not eof do
      begin
        with tblDespesas do
         begin
           Insert;
           FieldByName('Id_Concessionaria').AsInteger := tblBanco.FieldByName('Id_Concessionaria').AsInteger;
//             StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Conta').AsString := tblBanco.FieldByName('Conta').AsString;//CodigoConta.Text;
           FieldByName('Historico').AsString := tblBanco.FieldByName('Historico').AsString;
// 'Pgto.Taxas Veíc.placa ' +
//             tblPedidoVeiculos.FieldByName('Placa').AsString + '-' + NomeCliente.Text;
           FieldByName('Data').AsDateTime := tblBanco.FieldByName('Data').AsDateTime;//tblPedidoVeiculosTaxas.FieldByName('Data_Pagamento').AsDateTime;
           FieldByName('Setor').AsString := 'V';
           FieldByName('Valor').AsCurrency := tblBanco.FieldByName('Valor').AsCurrency;
           Post;
         end;
        tblBanco.Next;
      end;
   end;
showmessage('fim');}
end;

procedure TBoxExportacao.BtnConfirmaClick(Sender: TObject);
begin
  GravaClientesJB;
//  Showmessage('Exportação de cliente concluída');
  GravaNotasJB;
//  Showmessage('Exportação de notas concluída');
  GravaBancosJB;
  Showmessage('Exportação concluída.');
end;

procedure TBoxExportacao.BtnICMSSubstClick(Sender: TObject);
var
   i : Integer;
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   AssignFile(ArquivoTexto,'C:\Autorev-Sd\ICMS_SUBS.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
//   Reset(ArquivoTexto); {Abre o arquivo texto}
//   Readln(ArquivoTexto,Texto); {Armazena a linha atual do arquivo na string Texto e salta para a próxima linha}
with tblPecasEstoqueSubs do
  begin
    i:= 0;
    Close;
    ParamByName('IdConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
      begin
        i := i + 1;
        linha := 'D1';
        linha := linha + STrZero(i,6,0);
        linha := linha + '00000000';//NCM
        linha := linha + '00000000000000';//CODIGO DO PRODUTO
        linha := linha + 
           Alinha(Substr(FieldByName('Descricao').AsString,1,50),50,1);//50 Descricao do produto
        linha := linha + STrZero(FieldByName('Estoque').AsInteger,8,0);//Qtde
        linha := linha + '000';//Decimal QTDE
        linha := linha + 'PC    ';//unidade
        linha := linha + '17000';//aliquota icms
        linha := linha + CLinha(TiraPontosEBarrasCPF(StringReplace(FloatToStrF(
          (FieldByName('CST_MEDIO').AsFloat),
          ffNumber, 15 , 2 ) , ',' , '.' , [rfReplaceAll])),15,1); //valor unitario
        linha := linha + '02650';//MVA
        linha := linha + Clinha(TiraPontosEBarrasCPF(StringReplace(FloatToStrF(
          (FieldByName('CST_MEDIO').AsFloat)* FieldByName('Estoque').AsFloat,
          ffNumber, 15 , 2 ) , ',' , '.' , [rfReplaceAll])),15,1); //valor total aquisição
        linha := linha + Clinha(TiraPontosEBarrasCPF(StringReplace(FloatToStrF(
          (FieldByName('CST_MEDIO').AsFloat)* FieldByName('Estoque').AsFloat * 1.265,
          ffNumber, 15 , 2 ) , ',' , '.' , [rfReplaceAll])),15,1); //base de cálculo
        linha := linha + Clinha(TiraPontosEBarrasCPF(StringReplace(FloatToStrF(
          (FieldByName('CST_MEDIO').AsFloat)* FieldByName('Estoque').AsFloat * 0.21505,

          ffNumber, 15 , 2 ) , ',' , '.' , [rfReplaceAll])),15,1);                       //valor ICMS
        Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
        Next;
      end;
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  end;
  Showmessage('Gravação finalizada.');
end;

procedure TBoxExportacao.BtnXMLEntradaClick(Sender: TObject);
begin
 with tblNofi do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
     begin
       CarregaXml(AcbrNFe1, tblNofi);
//       AcbrNFe1.NotasFiscais.Items[recno-1].SaveToFile;
       Next;
     end;
    Showmessage('XMLs exportados');
  end;

end;

procedure TBoxExportacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  AcbrNfe1.free;
  FecharDs;
end;

procedure TBoxExportacao.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxExportacao.FormShow(Sender: TObject);
begin
  Fdb1.AtualizaDataAtual;
  Data1.date := DataAtual;
  Data2.Date := DataAtual;
  Data.Date := DataAtual;
  Edit1.SetFocus;
end;

procedure TBoxExportacao.GravaMovProdJB;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
   i : Integer;
begin
   AssignFile(ArquivoTexto,'C:\movprod.seq'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
 with tblNofisa2 do
  begin
    Close;
    ParamByName('IdData1').AsDateTime := Data1.Date;
    ParamByName('IdData2').AsDateTime := Data2.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
    begin
     with tblSada do
      begin
        Close;
        ParamByName('idNofisa').AsInteger := tblNofisa2.FieldByName('id_nofisa').AsInteger;
        Open;
        i := 1;
        First;
        While not tblSada.eof do
         begin
          linha := '     ';
          linha := linha + tblNofisa2.FieldByName('Estado').AsString;
          linha := linha + Substr(DateToText(tblNofisa2.FieldByName('Emissao').AsDateTime),5,4); //Ano
          linha := linha + Substr(DateToText(tblNofisa2.FieldByName('Emissao').AsDateTime),3,2); //Mês
          linha := linha + Substr(DateToText(tblNofisa2.FieldByName('Emissao').AsDateTime),1,2); //Dia
          if tblNofisa2.FieldByName('SerieNF').AsString = 'e' then
            linha := linha + '1  '
          else
            linha := linha + Alinha(Copy(tblNofisa2.FieldByName('SerieNF').AsString,1,3),3,1);
          linha := linha + '55'; //modelo
          linha := linha + Alinha(Copy(tblNofisa2.FieldByName('Numero').AsString,1,6),6,1); //Numero da NF
          linha := linha + Alinha(Copy(IntToStr(i),1,3),3,1); // Ordem do produto na NF
          if FieldByName('Descricao').AsString = 'Motocicleta' then
            linha := linha + Copy(FieldByName('Chassi').AsString,1,14)
          else
            linha := linha + Alinha(Copy(FieldByName('Codigo').AsString,1,14),14,1);
          if ((FieldByName('Descricao').AsString = 'Motocicleta') and
             (FieldByName('CST').AsString = null)) or
             ((FieldByName('Descricao').AsString = 'Motocicleta') and
             (FieldByName('CST').AsString = '')) then
            linha := linha + '060'
         else
            linha := linha + FieldByName('Cst').AsString;
          linha := linha + 'PC ';
   //       linha := linha + Alinha(Copy(FieldByName('Qtde').AsString,1,13),13,1);
          linha := linha + Blinha(StringReplace(FloatToStrF(
            (FieldByName('Qtde').AsFloat),
            ffNumber, 17 , 3 ) , ',' , '.' , [rfReplaceAll]),13,1); //Qtde
          linha := linha + Blinha(StringReplace(FloatToStrF(
            (FieldByName('Qtde').AsFloat * FieldByName('Preco').AsFloat),
            ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Vlrpago
          linha := linha + Blinha(StringReplace(FloatToStrF(
            (FieldByName('Base_ICMS').AsFloat),
            ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Base ICMS
          linha := linha + '0000000000.00';                              //icms substituição
          IF FieldByName('Base_ICMS').AsINTEGER > 0 THEN
            linha := linha +Blinha(StringReplace(FloatToStrF(
              (FieldByName('Aliq_ICMS').AsFloat * 100),
              ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),5,1) //ALIQICMS
          ELSE
            linha := linha + '00.00';
          linha := linha + '0000000000.00';                              //ipi
          linha := linha + FieldByName('CFOP').AsString;
          linha := linha + Blinha(StringReplace(FloatToStrF(
            (FieldByName('Desconto').AsFloat),
            ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Desconto
          if tblNofisa2.FieldByName('CPF').AsString = 'CNPJ' then
            linha := linha + tirapontosebarrasCPF(tblNofisa2.FieldByName('NUM_CPF').AsString)
          else
            linha := linha + '000'+ ALLTRIM(tirapontosebarrasCPF(tblNofisa2.FieldByName('NUM_CPF').AsString));//00000000000';
          linha := linha + '0000000000.00'; //valor base de calculo do ipi
          linha := linha + '     '; //volume
          linha := linha + '0000000000.00'; //qtde med
          if FieldByName('Descricao').AsString = 'Motocicleta' then
            linha := linha + '1     '
          else
            linha := linha + '      ';
          linha := linha + Blinha(StringReplace(FloatToStrF(
            (FieldByName('Preco').AsFloat),
            ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Vlrunit
          linha := linha + '     ';
          linha := linha + '              ';
          if FieldByName('Descricao').AsString = 'Motocicleta' then
            linha := linha + 'S'
          else
            linha := linha + ' ';
          linha := linha + Copy((BoxEmpresas.ID_ConcessionariaEmUso.Text),1,6);
          linha := linha + '      '; //filial
          linha := linha + '0 1';

          Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
//          GravaProdutosJB(FieldByName('id_pecas').AsInteger);
          Inc(i);
          tblSada.Next;
         end;
      end;
//     with tblSeda do
      begin

      end;
      tblNofisa2.Next;
    end;
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  end
 //with tblDadosNfe do
end;

procedure TBoxExportacao.GravaProdutosJB;
var
   i : Integer;
   ArquivoTexto2: TextFile; {handle do arquivo texto}
   linha : String;
begin
   AssignFile(ArquivoTexto2,'C:\produtos.seq'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto2); {Recria o arquivo texto}
 with tblNofisa2 do
  begin
    Close;
    ParamByName('IdData1').AsDateTime := Data1.Date;
    ParamByName('IdData2').AsDateTime := Data2.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
    begin
     with tblSada do
      begin
        Close;
        ParamByName('idNofisa').AsInteger := tblNofisa2.FieldByName('id_nofisa').AsInteger;
        Open;
        i := 1;
        First;
        While not tblSada.eof do
         begin
           with tblpecas2 do
            begin
              Close;
              ParamByName('idPEcas').AsInteger := tblSada.FieldByName('id_Pecas').AsInteger;
              Open;
              begin
                if tblSada.FieldByName('Chassi').AsString <> '' then
                  linha := Alinha(tblSada.FieldByName('Chassi').AsString,14,1)
                else
                  linha := Alinha(FieldByName('Codigo').AsString,14,1);
                if tblSada.FieldByName('Chassi').AsString <> '' then
                  linha := linha + Alinha('Motocicleta',45,1)
                else
                  linha := linha + Alinha(FieldByName('Descricao').AsString,45,1);
                linha := linha + '              ';
                linha := linha + 'MR ';
                linha := linha + 'PC ';  //unidade
                linha := linha + '  '; //codespdnf
                linha := linha + '      '; //grupo de produtos
                linha := linha + BoxEmpresas.NumeroEmpresa.Text;  //Empresa
                linha := linha + '      ';
                linha := linha + '0'; //tipo de produto
              end
            end;
          Writeln(ArquivoTexto2, Linha); {Grava a string Texto no arquivo texto}
          tblSada.Next;
         end;
      end;
      tblNofisa2.Next;
    end;
  end;
  CloseFile(ArquivoTexto2); {Fecha o arquivo texto}
end;

procedure TBoxExportacao.tblPecasEstoqueAfterPost(DataSet: TDataSet);
begin
  fdb1.Ibtransaction.CommitRetaining;
end;

procedure TBoxExportacao.GravaBancosJB;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
   Tarifa : Extended;
   i : Integer;
   pos : integer;
   CPF : String;
   NomeCartao : String;
begin
   AssignFile(ArquivoTexto,'C:\contabil\contab.seq'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
with tblBancos do
  begin
    i := 1;
    SelectSql.Clear;
    SelectSql.Add('Select b.*, c.* from banco b');
    SelectSql.Add('left join creceber c on (b.id_Creceber = c.id_creceber)');
    SelectSql.Add('where b.Data = :IdData');
    SelectSql.Add('and b.ID_Concessionaria = :IdConcessionaria');
    if banco.text <> '' then
      SelectSql.Add('and b.banco = :idBanco');
    SelectSql.Add('order by b.data');
    Close;
    ParamByName('IdData').AsDateTime := Data.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    if banco.text <> '' then
      ParamByName('idBanco').AsInteger := StrToInt(Banco.Text);
    Open;
    First;
    while not eof do
    begin
      if fieldByName('id_Clientes').AsInteger <> null then
       begin
        tblPessoas.Close;
        tblPessoas.ParamByName('IdCliente').AsInteger :=
          FieldByName('Id_Clientes').AsInteger;
        tblPessoas.Open;
       end;
      if FieldByName('Juros').AsFloat < 0 then
       begin
          for pos := 1 to len(FieldByName('Historico').AsString) do
           begin
            if (Copy(FieldByName('historico').AsString,pos,4) = 'VISA') then
              NomeCartao := Copy(FieldByName('Historico').AsString,pos,4) + 'NET';
            if (Copy(FieldByName('historico').AsString,pos,5) = 'BANRI') then
              NomeCartao := Copy(FieldByName('Historico').AsString,pos,5) + 'COMPRAS';
            if (Copy(FieldByName('historico').AsString,pos,4) = 'REDE') then
              NomeCartao := Copy(FieldByName('Historico').AsString,pos,4) + 'CARD';
            if (Copy(FieldByName('historico').AsString,pos,6) = 'MASTER') then
              NomeCartao := Copy(FieldByName('Historico').AsString,pos,6) + 'CARD';
            if (Copy(FieldByName('historico').AsString,pos,5) = 'HIPER')   then
              NomeCartao := Copy(FieldByName('Historico').AsString,pos,5) + 'CARD';
            if (Copy(FieldByName('historico').AsString,pos,10) = 'CARTAO ELO') then
              NomeCartao := Copy(FieldByName('Historico').AsString, pos, 10);
           end;
       end;
    //lançamento à débito
      linha := BoxEmpresas.NumeroEmpresa.Text;  //Empresa
      linha := linha + ',000,';            //Filial
      linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
      linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
      linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
      linha := linha + ',';
      //Conta a Débito
      if FieldByName('Natureza').AsString = 'E' then
        linha := linha + FieldByName('Banco').AsString
      else
        linha := linha + FieldByName('Conta').AsString;
      linha := linha + ',';
      linha := linha + ',';

      //Valor
      if FieldByName('Juros').AsFloat > 0 then
       begin
        if FieldByName('Natureza').AsString = 'S' then
         linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat-FieldByName('juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil
        else
         linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil
       end
      else
        if FieldByName('Natureza').AsString = 'E' then          //acrescido em 17/06/2013
          linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil //acrescido em 17/06/2013
        else
          linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat - FieldByName('Juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
      //Historico
      linha := linha + ',0,';
      if not (FieldByName('Conta').IsNull) then
       if FieldByName('Conta').AsInteger < 5000 then
        begin
         if FieldByName('Natureza').AsString = 'E' then
           linha := linha + '"rec.fat.' + FieldByName('Documento').AsString +  ' '+
            tblPessoas.FieldByName('Nome').AsString + '"'
         else
           if FieldByName('Conta').AsString ='2633' then
            linha := linha + FieldByName('Historico').AsString//'pgo.taxa DETRAN veículo placa '+FieldByName('Documento').AsString
           else
           if (FieldByName('Conta').AsString ='151') or (FieldByName('Conta').AsString ='152') then
                linha := linha + '"pgto.fat.' + FieldByName('Documento').AsString + ' '+
                 tblPessoas.FieldByName('Nome').AsString + '"'
            else
             if FieldByName('Historico').AsString = 'N/Depósito cfe recibo' then
               linha := linha + FieldByName('Historico').AsString
             else
               linha := linha + FieldByName('Historico').AsString;// + 'ref.fat.'+FieldByName('Documento').AsString;
        end
       else
         linha := linha + fieldByName('Historico').AsString
      else
       if FieldByName('Juros').AsFloat < 0 then
         linha := linha + '"rec.fat.' + FieldByName('Documento').AsString +  ' '+
           trim(tblPessoas.FieldByName('Nome').AsString) + ' - ' + NomeCartao + '"'
       else
         linha := linha + fieldByName('Historico').AsString;
         linha := linha + ',,,,,,,,,,,,,,,,';
      linha := linha + IntToStr(i);
      linha := linha + ',';
      Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}


    //lançamento à crédito
      linha := BoxEmpresas.NumeroEmpresa.Text;  //Empresa
      linha := linha + ',000,';            //Filial
      linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
      linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
      linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
      linha := linha + ',';
      linha := linha + ',';
      //Conta a Crédito
      if FieldByName('Juros').AsFloat < 0 then
       begin
          if NomeCartao = 'VISANET' then
            linha := linha + '93167'; //23167';
          if (NomeCartao = 'REDECARD') then //and (BoxEmpresas.NumeroEmpresa.Text <> '4') then
            linha := linha + '95872';//25872';
    //      if (NomeCartao = 'REDECARD') and (BoxEmpresas.NumeroEmpresa.Text = '4') then
    //        linha := linha + '23180';
          if (NomeCartao = 'MASTERCARD') then //and (BoxEmpresas.NumeroEmpresa.Text <> '4') then
            linha := linha + '95872';//25872';
//          if (NomeCartao = 'MASTERCARD') and (BoxEmpresas.NumeroEmpresa.Text = '4') then
  //          linha := linha + '23180';
          if (NomeCartao = 'HIPERCARD') then //and (BoxEmpresas.NumeroEmpresa.Text <> '4') then
            linha := linha + '95909';//25909';
//          if (NomeCartao = 'HIPERCARD') and (BoxEmpresas.NumeroEmpresa.Text = '4') then
//            linha := linha + '25229';
          if (NomeCartao = 'BANRICOMPRAS') then //and (BoxEmpresas.NumeroEmpresa.Text = '4') then
            linha := linha + '95947';//29947';
          if (NomeCartao = 'CARTAO ELO') THEN
            linha := linha + '95867';
          if (FieldByName('Natureza').AsString = 'S') and
            ((FieldByName('Conta').AsString ='151') or (FieldByName('Conta').AsString ='152')) then
            linha := linha + FieldByName('Banco').AsString;
       end
      else
       begin
          if FieldByName('Natureza').AsString = 'E' then
           if FieldByName('Historico').AsString = 'N/Depósito cfe recibo' then
             linha := linha + '6'
           else
             linha := linha + FieldByName('Conta').AsString
          else
            linha := linha + FieldByName('Banco').AsString;
       end;
      linha := linha + ',';



      //Valor
      if FieldByName('Juros').AsFloat < 0 then
       begin
        if FieldByName('Natureza').AsString = 'S' then
         if ((FieldByName('Conta').AsString ='151') or (FieldByName('Conta').AsString ='152')) then
           linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil
         else
           linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat+FieldByName('juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil
        else             //alterado em 25-10-2012 (-)
         linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat-FieldByName('juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
       end
      else
       begin
        if FieldByName('Natureza').AsString = 'E' then    //acrescido em 17/06/2013
         linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat-FieldByName('juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil //acrescido em 17/06/2013
        else
         linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Valor').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
       end;
      //Historico
      linha := linha + ',0,';
         if FieldByName('Natureza').AsString = 'E' then
           linha := linha + '"rec.fat.' + FieldByName('Documento').AsString +  ' '+
            tblPessoas.FieldByName('Nome').AsString + '"'
         else
           if FieldByName('Conta').AsString ='2633' then
            linha := linha + FieldByName('Historico').AsString //'pgo.taxa DETRAN veículo placa '+FieldByName('Documento').AsString
           else
           if (FieldByName('Conta').AsString ='151') or (FieldByName('Conta').AsString ='152') then
                linha := linha + '"pgto.fat.' + FieldByName('Documento').AsString + ' '+
                 tblPessoas.FieldByName('Nome').AsString + '"'
            else
             if FieldByName('Historico').AsString = 'N/Depósito cfe recibo' then
               linha := linha + FieldByName('Historico').AsString
             else
               linha := linha + FieldByName('Historico').AsString;// + 'ref.fat.'+FieldByName('Documento').AsString;

      if FieldByName('id_Clientes').AsInteger <> null then
        begin
         linha := linha + ',,';
         CPF := stringReplace( tblPessoas.FieldByName('NUM_CPF').AsString, '-','', [rfReplaceAll] );
         CPF := stringReplace( CPF, '.','', [rfReplaceAll] );
         CPF := stringReplace( CPF, '/','', [rfReplaceAll] );
         linha := linha + CPF;
         if FieldByName('Natureza').AsString = 'E' then
           linha := linha + ',C'
         else
           linha := linha + ',F';
         linha := linha + ',D';
         linha := linha + ',,,,,,,,,,,,';
        end
      else
       begin
        linha := linha + ',,,,';
        linha := linha + ',,,,,,,,,,,,';
       end;
      linha := linha + IntToStr(i);
      linha := linha + ',';
      Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}


    //lançamento de tarifas bancarias e juros
    if not(FieldByName('Juros').IsNull) then
     if FieldByName('Juros').AsFloat > 0 then
      begin
       if FieldByName('Natureza').AsString = 'E' then
        begin
         //tarifas bancárias
         linha := BoxEmpresas.NumeroEmpresa.Text;  //Empresa
         linha := linha + ',000,';            //Filial
         linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
         linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
         linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
         linha := linha + ',';
         linha := linha + ',';
         //Conta a Crédito
            linha := linha + '3005';
         linha := linha + ',';
         //Valor
         tarifa := FieldByName('Valor').AsFloat;
         if tarifa > 5 then
           tarifa := 5;
         linha := linha + Blinha(StringReplace(FloatToStrF((Tarifa), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
         //Historico
         linha := linha + ',0,';
         linha := linha + '"rec.tarif.banc.ref.' + FieldByName('Documento').AsString +  '-'+
             tblPessoas.FieldByName('Nome').AsString + '"';
           linha := linha + ',,,,,,,,,,,,,,,,';
         linha := linha + IntToStr(i);
         linha := linha + ',';
        Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
        end;


      //Juros
       tarifa := FieldByName('juros').AsFloat; //alterado em 17/06/2013 era valor(não juros) 
       if (tarifa > 5) or (FieldByName('Natureza').AsString = 'S') then
         begin
          linha := BoxEmpresas.NumeroEmpresa.Text;  //Empresa
          linha := linha + ',000,';            //Filial
          linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
          linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
          linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
          linha := linha + ',';
          //Conta a Débito
          if FieldByName('Natureza').AsString = 'S' then
            linha := linha + '3002';
          linha := linha + ',';
          //Conta a Crédito
          if FieldByName('Natureza').AsString = 'E' then
            linha := linha + '3022';
          linha := linha + ',';
          //Valor
          if FieldByName('Natureza').AsString = 'E' then
            linha := linha + Blinha(StringReplace(FloatToStrF((Tarifa-5), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //Valor Contabil   //acrescido em 17/06/2013 -5
          else
            linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Juros').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
          //Historico
          linha := linha + ',0,';
          if FieldByName('Natureza').AsString = 'E' then
           linha := linha + '"rec.juros.ref.' + FieldByName('Documento').AsString + '-'+
             tblPessoas.FieldByName('Nome').AsString + '"'
          else
           linha := linha + '"Pgto.juros.ref.' + FieldByName('Documento').AsString + '-'+
             tblPessoas.FieldByName('Nome').AsString + '"';
            linha := linha + ',,,,,,,,,,,,,,,,';
          linha := linha + IntToStr(i);
          linha := linha + ',';
          Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
         end;
       end;
           // Recebimentos com cartão //pgto com desconto
      if FieldByName('Juros').AsFloat < 0 then
       begin
          linha := BoxEmpresas.NumeroEmpresa.Text;  //Empresa
          linha := linha + ',000,';            //Filial
          linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
          linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
          linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
          linha := linha + ',';
         //conta a débito
//          if (FieldByName('Conta').AsString ='151') or (FieldByName('Conta').AsString ='152') then
          if FieldByName('Natureza').AsString = 'E' then
            linha := linha + '2086';

          linha := linha + ',';
          //Conta a Crédito
          if FieldByName('Natureza').AsString = 'S' then
            linha := linha + '3021';

          linha := linha + ',';
          //Valor
          linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Juros').AsFloat*-1), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //Valor Contabil
          //Historico
          linha := linha + ',0,';
          if FieldByName('Natureza').AsString = 'E' then
            linha := linha + '"desp.administradora cartão ' + NomeCartao + '"'
          else
           if FieldByName('Natureza').AsString = 'S' then
             linha := linha + '"Descto rec.ref.' + FieldByName('Documento').AsString +'-'+
              tblPessoas.FieldByName('Nome').AsString + '"'
           else
             linha := linha + '"Pgto.juros.ref.' + FieldByName('Documento').AsString +'-'+
              tblPessoas.FieldByName('Nome').AsString + '"';

          linha := linha + ',,,,,,,,,,,,,,,,';
          linha := linha + IntToStr(i);
          linha := linha + ',';
          Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}

       end;
      Inc(i);
      Next;
    end;
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  end;
end;

procedure TBoxExportacao.GravaClientesJB;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   AssignFile(ArquivoTexto,'C:\contabil\cli001.seq'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
//   Reset(ArquivoTexto); {Abre o arquivo texto}
//   Readln(ArquivoTexto,Texto); {Armazena a linha atual do arquivo na string Texto e salta para a próxima linha}
with tblNofisa do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data.Date;
    ParamByName('IdConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not eof do
      begin
        tblPessoas.Close;
        tblPessoas.ParamByName('IdCliente').AsInteger :=
           FieldByName('Id_Clientes').AsInteger;
        tblPessoas.Open;
        if tblPessoas.RecordCount = 0 then
           Showmessage('Pessoa não localizada.');
        if FieldByName('Ent_Sai').AsString = 'E' then
          linha := StrZero(tblPessoas.FieldByName('id_Clientes').AsInteger + 60000,5,0);
        if FieldByName('Ent_Sai').AsString = 'S' then
          linha := StrZero(tblPessoas.FieldByName('id_Clientes').AsInteger + 10000,5,0);
        linha := linha + Alinha(Copy(tblPessoas.FieldByName('Nome').AsString,1,40),40,1);//40
        if tblPessoas.FieldByName('CPF').AsString = 'CNPJ' then
          begin
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,2); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,4,3); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,8,3); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,12,4); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,17,2); //14
           linha := linha + Alinha(Copy(tblPessoas.FieldByName('Identidade').AsString,1,14),1,14) //IE
          end
        else
          begin
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,3); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,5,3); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,9,3); //14
           linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,13,2); //14
           linha := linha + '   ISENTO        ';  //IE
          end;
        linha := linha + tblPessoas.FieldByName('Estado').AsString;
        linha := linha + '     '; //municipio
        if FieldByName('Ent_Sai').AsString = 'E' then
          linha := linha + 'F';
        if FieldByName('Ent_Sai').AsString = 'S' then
          linha := linha + 'C';
        linha := linha + '   '; //PAIS
        linha := linha +
          Alinha(Substr(tblPessoas.FieldByName('Endereco').AsString,1,30),30,1);//30 endereco
        linha := linha +
          Alinha(Substr(tblPessoas.FieldByName('Cidade').AsString,1,20),20,1);//20 cidade
        if tblPessoas.FieldByName('Estado').AsString = 'RS' then
          linha := linha + '17.00' //ALIQ_ICMS
        else
          linha := linha + '12.00';
        linha := linha + tblPessoas.FieldByName('Fone1').AsString;
        Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
        Next;
      end;
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  end;
end;

procedure TBoxExportacao.GravaNotasJB;
var
   i : Integer;
   Linha: String;
   NumCFOP : Integer;
   CFOP1 : String;
   CFOP2 : String;
   CFOP3 : String;
   CFOP4 : String;
   mCFOP : String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   AssignFile(ArquivoTexto,'C:\contabil\livros.seq'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
with tblNofisa do
  begin
    Close;
    ParamByName('IdEmissao').AsDateTime := Data.Date;
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    First;
    while not tblNofisa.eof do
      begin
        tblPessoas.Close;
        tblPessoas.ParamByName('IdCliente').AsInteger :=
          FieldByName('Id_Clientes').AsInteger;
        tblPessoas.Open;
        if len(FieldByName('Codigo_Fiscal').AsString) < 5 then
            NumCFOP := 1
        else
          if len(FieldByName('Codigo_Fiscal').AsString) < 10 then
             NumCFOP := 2
          else
   //         if len(FieldByName('Codigo_Fiscal').AsString) < 15 then  //linhas para descomentar quando já tiver sido importada as NFs até o dia 04/05/2010
              NumCFOP := 3;
//            else
  //             NumCFOP := 4;
        CFOP1 := Substr(FieldByName('Codigo_Fiscal').AsString,1,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,2,3);
        CFOP2 := Substr(FieldByName('Codigo_Fiscal').AsString,6,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,7,3);
        CFOP3 := Substr(FieldByName('Codigo_Fiscal').AsString,11,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,12,3);
        CFOP4 := Substr(FieldByName('Codigo_Fiscal').AsString,16,1) +
           '.' + Substr(FieldByName('Codigo_Fiscal').AsString,17,3);
        if FieldByName('SerieNF').AsString = 'e' then
         begin
          for i := 1 to NumCFOP do
           begin
            if i = 1 then
              mCFOP := CFOP1
            else
              if i = 2 then
                mCFOP := CFOP2

              else
                if i = 3 then
                  mCFOP := CFOP3
                else
                  mCFOP := CFOP4;
            linha := Alinha((FieldByName('Numero').AsString),6,1);
            linha := linha + '  '; //Serie
            if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 12571) then
             linha := linha + '306  ' //Débito
            else
             if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 13287) then
              linha := linha + '307  '
             else
              if (mCFOP = '5.409') and (FieldByName('Id_Clientes').AsInteger = 15173) then
               linha := linha + '308  '
              else
               if mCFOP = '5.949' then
                linha := linha + '303  '
               else
                if mCFOP = '1.949' then
                 linha := linha + '302  '
                else
                 if mCFOP = '1.409' then
                  linha := linha + '302  '
                 else
                  if mCFOP = '1.102' then
                   linha := linha + '2001 '
                  else
                   linha := linha + '     ';  //Débito
            if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 12571) then
             linha := linha + '306  ' //Débito
            else
             if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 13287) then
              linha := linha + '307  ' //Débito
             else
              if (mCFOP = '1.409') and (FieldByName('Id_Clientes').AsInteger = 15173) then
               linha := linha + '308  '
              else
               if (mCFOP = '5.933') or (mCFOP = '6.933') then  //PRESTACAO SERVICO
                linha := linha + '1022 '
               else
                if (mCFOP = '5.405') and (FieldByName('Origem').AsString = 'N') then
                 linha := linha + '1007 ' //Venda veiculo novo
                else
                 if (mCFOP = '6.404') and (FieldByName('Origem').AsString = 'N') then
                  linha := linha + '1007 ' //Venda veiculo novo
                 else
                  if (mCFOP = '5.405') and (FieldByName('Origem').AsString = 'U') then
                   linha := linha + '1008 ' //Venda veiculo usado
                  else
                   if (mCFOP = '5.656') or (mCFOP = '6.656') then
                    linha := linha + '1006 ' //Venda de óleo
                   else
                     if (mCFOP = '6.404') and (FieldByName('Origem').AsString = 'U') then
                      linha := linha + '1008 ' //Venda veiculo usado
                     else
                      if ((mCFOP = '5.405') and (FieldByName('Origem').AsString = 'P')) or
                       (mCFOP = '5.102') then
                       linha := linha + '1006 ' //Venda pecas
                      else
                       if ((mCFOP = '6.404') and (FieldByName('Origem').AsString = 'P')) or
                       (mCFOP = '6.102') then
                        linha := linha + '1006 ' //Venda pecas
                       else
                      if ((mCFOP = '5.405') and (FieldByName('Origem').AsString = 'O')) or
                       (mCFOP = '5.102') then
                       linha := linha + '1006 ' //Venda oficina-peças
                      else
                       if ((mCFOP = '6.404') and (FieldByName('Origem').AsString = 'O')) or
                       (mCFOP = '6.102') then
                        linha := linha + '1006 ' //Venda oficina-peças
                       else
                        if mCFOP = '5.409' then
                         linha := linha + '302  '
                        else
                         if mCFOP = '5.949' then
                          linha := linha + '302  '
                         else
                          if mCFOP = '1.949' then
                           linha := linha + '303  '
                          else
                           linha := linha + '     ';  //Débito
            linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
            linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
            linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
            if right(mCFOP,3)='933' then  //PRESTACAO SERVICO
              linha := linha + Blinha(  StringReplace( FloatToStrF( (FieldByName('Val_Serv').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT
            else
              if (right(mCFOP,3) = '404') or(right(mCFOP,3) = '405') or (right(mCFOP,3) = '656') then //ICMS SUBST TRIB
                begin
                 linha := linha +
                  Blinha(StringReplace( FloatToStrF( (FieldByName('Tot_Prod').AsFloat -
                   FieldByName('Base_ICMS').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1)
                end
              else
                if (right(mCFOP,3) = '409') or (right(mCFOP,3) = '949') or
                   (right(mCFOP,3) = '405') or (right(mCFOP,3) = '656') or
                   (mCFOP = '1.102') then //Outros
                   linha := linha + Blinha(StringReplace( FloatToStrF( FieldByName('Tot_Prod').AsFloat
                    , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1)
                else
                   begin
                     if FieldByName('Origem').AsString = 'U' then//PARA VEICULOS USADOS
                       linha := linha + Blinha(StringReplace( FloatToStrF ( FieldByName('Tot_Nota').AsFloat
                        , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT --> ERA TOT_NOTA
                     else
                       linha := linha + Blinha(StringReplace( FloatToStrF ( FieldByName('Base_ICMS').AsFloat
                      , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT --> ERA TOT_NOTA
                   end;

            linha := linha + mCFOP; //CFOP

            if (right(mCFOP,3) = '409') or (right(mCFOP,3) = '933') or
               (right(mCFOP,3) = '404') or (right(mCFOP,3) = '405') or
               (right(mCFOP,3) = '656') then
              begin
                linha := linha + '           0.00'; //BC_ICMS
                linha := linha + ' 0.00'; //ALIQ_ICMS
                linha := linha + '         0.00'; //VLR_ICMS
              end
            else
              begin
                linha := linha + '  ';
                linha := linha + Blinha(StringReplace(FloatToStrF(FieldByName('Base_ICMS').AsFloat
                  , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1); //BC_ICMS
                if tblPessoas.FieldByName('Estado').AsString = 'RS' then
                 linha := linha + '17.00' //ALIQ_ICMS
                else
                 linha := linha + '12.00';

                linha := linha + Blinha(StringReplace (FloatToStrF ( FieldByName('Val_ICMS').AsFloat
                  , ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1);//VLR_ICMS
//                linha := linha + '   ';

              end;
            if (right(mCFOP,3) = '949') or (mCFOP = '1.102') or (mCFOP = '5.102') then //VERIFICAR
              if (mCFOP = '5.102') and (FieldByName('Origem').AsString = 'V') then
                linha := linha + Blinha(StringReplace(FloatToStrF ( (FieldByName('Tot_Nota').AsFloat -
                  FieldByName('Base_ICMS').AsFloat)
                   , ffNumber, 16, 2), ',','.',[rfReplaceAll]),13,1)//ISENT_ICMS
              else
                if mCFOP = '5.102' then
                  linha := linha + '0000000000.00' //ISENT_ICMS
                else
                  linha := linha + Blinha(StringReplace(FloatToStrF( (FieldByName('Tot_Prod').AsFloat)
                   , ffNumber, 16, 2), ',','.',[rfReplaceAll]),13,1)//ISENT_ICMS
            else
              linha := linha + '0000000000.00'; //ISENT_ICMS
            //*****OUTRAS ICMS
            if (right(mCFOP,3) = '933') or (right(mCFOP,3) = '404') or
               (right(mCFOP,3) = '405') or (right(mCFOP,3) = '409') or
               (right(mCFOP,3) = '656') then
               if (right(mCFOP,3) = '933') then
                 linha := linha +
                  Blinha(StringReplace( FloatToStrF((FieldByName('Val_Serv').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1)//OUTRA_ICMS
               else
                  linha := linha + Blinha(StringReplace(FloatToStrF((FieldByName('Tot_Prod').AsFloat -
                  FieldByName('Base_ICMS').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1) //OUTRA_ICMS
            else
               linha := linha + '0000000000.00'; //OUTRA_ICMS
            //******
            linha := linha + '  '; //"D=")  //OBS
            linha := linha + '     ';
            linha := linha + '   '; //"/C=")   //OBS
            linha := linha + '     ';
            linha := linha + '     ';
            linha := linha + tblPessoas.FieldByName('Estado').AsString;
            linha := linha + '0000000000.00';     //BC_IPI
            linha := linha + '0000000000.00';    //VLR_IPI
            linha := linha + '0000000000.00';   //ISENT_IPI
            linha := linha + '0000000000.00';  // OUTRA_IPI
            linha := linha + '   '; //PAIS  --> BRA
            linha := linha + '0000000000.00';  //DED_ISS
            if right(mCFOP,3) = '933' then
              begin
//               linha := linha + '   '; //BC_ISS
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('Val_Serv').AsFloat)
                 , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1);//BC_ISS
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('ISSQN').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),5,1);//aliq_Iss
               linha := linha + Blinha(StringReplace( FloatToStrF((FieldByName('Val_iss').AsFloat)
                  , ffNumber, 16 , 2 ), ',' , '.' , [rfReplaceAll]),13,1);//vlr_Iss
              end
           else
              begin
                linha := linha + '         0.00';  //BC_ISS
                linha := linha + ' 0.00';  //ALIQ_ISS
                linha := linha + '         0.00';  //VLR_ISS
              end;
{           if ((left(mCFOP,1) = '1') or(left(mCFOP,1) = '2') or
              (left(mCFOP,1) = '3')) then
                linha := linha +
       FWRITE(ARQ, STRZERO(VAL(CODIGO)+60000,5))  //FORNECEDOR-CLIENTE
     ELSE
       FWRITE(ARQ, STRZERO(VAL(CODIGO)+10000,5))  //FORNECEDOR-CLIENTE
     ENDIF}
            linha := linha + '00000'; //CODIGO FORNECEDOR
            linha := linha + '0000000000.00'; //BC_SUBST
            linha := linha + '0000000000.00'; //ICMS_SUBST
            linha := linha + '0000000000.00';  //DIFERIDO
      //      if len(FieldByName('Numero').AsString) < 6 then
    //          linha := linha + '0'+ FieldByName('Numero').AsString //NUMEROF
  //          else
//              linha := linha + FieldByName('Numero').AsString; //NUMEROF
            linha := linha +  StrZero(FieldByName('Numero').AsInteger,6,0); //NUMEROF
            linha := linha + '     '; //UF_ORIG
            linha := linha + '   ';  //DIEF
            linha := linha + '0000000000.00'; //FUNRURAL
            linha := linha + '0000000000.00'; //DESP_ACESS
            linha := linha + '01';  //MODELO
            linha := linha + 'N';  //EXCL_SERV
            linha := linha + 'N';  //SITUACAO
            linha := linha + '   ';  //NR_MAQUINA
            linha := linha + ' '; //CIF_FOB
            linha := linha + 'N'; //PE
            if ((Substr(mCFOP,1,1) = '1') or (Substr(mCFOP,1,1) = '2') or
              (Substr(mCFOP,1,1) = '3')) then
              begin
                linha := linha + Substr(DateToText(Data.Date),5,4); //Ano
                linha := linha + Substr(DateToText(Data.Date),3,2); //Mês
                linha := linha + Substr(DateToText(Data.Date),1,2); //Dia
              end
           else
              linha := linha +'        ';  //DATA_ENTR
           linha := linha + 'NF '; //ESPECIE
           linha := linha +  'N';  //D_C_SUBST
           linha := linha + '0000000000.00';  //ACRESC_FIN
           linha := linha + ' '; //TP_LCTO
       // INICIO CNPJ/CPF PREENCHIDO  linha := linha + '              ';  //CGC CNPJ CPF
           if tblPessoas.FieldByName('CPF').AsString = 'CNPJ' then
            begin
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,2); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,4,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,8,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,12,4); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,17,2); //14
            end
           else
            begin
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,1,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,5,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,9,3); //14
             linha := linha + Substr(tblPessoas.FieldByName('Num_Cpf').AsString,13,2); //14
             linha := linha + '   ';
            end;
           linha := linha + '       '; //CCUSTO
           linha := linha + '              ';  //INSCR_MUN
           if (Substr(mCFOP,1,1) = '6') then
            linha := linha + 'S'  //ARQMAG
           else
            linha := linha + 'N';  //ARQMAG
           linha := linha + 'P';  //EMISSPROP
           Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
          end;
         end;
        Next;
      end;
  end;
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
end;

procedure TBoxExportacao.CarregaXml( var nfe:TAcbrNfe ; tabela: TIBDataSet);
var
M: TStringStream;
begin
     // se o xml armazenado no memo não é nulo.. entao usa ele..
//     if not ( tblNofisa.fieldbyname( 'xml' ).isnull ) then
    if not (tabela.fieldByName('xml').isnull) then
     begin
        m := TStringStream.Create('');
        m := TStringStream.Create( tabela.fieldbyname( 'xml' ).asString );
//        m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
        ACbrNfe1.NotasFiscais.LoadFromStream( m );
        m.Free;
        exit;
     end;
end;

procedure TBoxExportacao.Data1Exit(Sender: TObject);
begin
  Data2.Date := Data1.Date;
end;

procedure TBoxexportacao.FecharDs;
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceBancos.Dataset.Close;
  DataSourcePessoas.DataSet.Close;
end;
end.
