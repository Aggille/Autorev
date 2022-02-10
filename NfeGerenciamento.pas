unit NfeGerenciamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,pnfsNFSe,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, ToolWin,ACBrDFeUtil ,
  StdCtrls, Buttons, Inifiles,  OleCtrls, SHDocVw, IBQuery, Mask, JvExMask, JvToolEdit,
  pcnNFeW, ACBrNFe, ACBrNFeDANFEClass,pcnConversaoNfe,
  ACBrNFSe, pcnConversao,pnFsConversao, Shellapi,
  ACBrNFSeDANFSeClass,  ACBrNFeDANFEFR, AcbrDFeSSL,
  ACBrNFSeDANFSeFR, frxClass, ACBrBase, ACBrDFe, ACBrNFeDANFEFRDM, ACBrMail,
  frxDBSet, ACBrDFeReport, ACBrDFeDANFeReport;
type
  TBoxNFeGerenciamento = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    DataSourceNofisa: TDataSource;
    DBGrid1: TDBGrid;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    o: TIntegerField;
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
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    ToolBar1: TToolBar;
    BtnConsultar: TBitBtn;
    BtnEnviar: TBitBtn;
    BtnImprimir: TBitBtn;
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
    OpenDialog1: TOpenDialog;
    BtnCancelar: TBitBtn;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
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
    DataSourceSada: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    DataSourceNofisaFaturas: TDataSource;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblSeda: TIBDataSet;
    DataSourceSeda: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    Label1: TLabel;
    DataNFs: TJvDateEdit;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    BtnDanfeExterno: TBitBtn;
    Btnxml: TBitBtn;
    EmailMsg: TMemo;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    BitBtn1: TBitBtn;
    tblNofisaDADOS_AD05: TIBStringField;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    tblSadaID_PECAS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaNCM1: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_MECANICO: TIntegerField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    tblSadaCILINDRADAS: TIntegerField;
    ACBrNFe1: TACBrNFe;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    BitBtn3: TBitBtn;
    tblNofisaESTADO: TIBStringField;
    tblNofisaNUM_CPF: TIBStringField;
    tblNofisaCPF: TIBStringField;
    tblNofisaIDENTIDADE: TIBStringField;
    BitBtn4: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    tblNofisaNFE_REFERENCIADA: TIBStringField;
    BitBtn5: TBitBtn;
    tblNofisa2: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    DateField1: TDateField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField5: TIntegerField;
    DateField2: TDateField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBBCDField11: TIBBCDField;
    IBBCDField12: TIBBCDField;
    IBBCDField13: TIBBCDField;
    IBBCDField14: TIBBCDField;
    IBBCDField15: TIBBCDField;
    IBBCDField16: TIBBCDField;
    IBBCDField17: TIBBCDField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField6: TIntegerField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    BlobField1: TBlobField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    DateField3: TDateField;
    IBStringField25: TIBStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    DataSource1: TDataSource;
    tblNofisa3: TIBDataSet;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IBStringField32: TIBStringField;
    DateField4: TDateField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IntegerField14: TIntegerField;
    DateField5: TDateField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBBCDField18: TIBBCDField;
    IBBCDField19: TIBBCDField;
    IBBCDField20: TIBBCDField;
    IBBCDField21: TIBBCDField;
    IBBCDField22: TIBBCDField;
    IBBCDField23: TIBBCDField;
    IBBCDField24: TIBBCDField;
    IBBCDField25: TIBBCDField;
    IBBCDField26: TIBBCDField;
    IBBCDField27: TIBBCDField;
    IBBCDField28: TIBBCDField;
    IBBCDField29: TIBBCDField;
    IBBCDField30: TIBBCDField;
    IBBCDField31: TIBBCDField;
    IBBCDField32: TIBBCDField;
    IBBCDField33: TIBBCDField;
    IBBCDField34: TIBBCDField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IntegerField15: TIntegerField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    BlobField2: TBlobField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    DateField6: TDateField;
    IBStringField56: TIBStringField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    nfs: TACBrNFSe;
    tblNofisaNUMERO_NFSE: TIBStringField;
    tblNofisaCODIGO_NFSE: TIBStringField;
    tblNofisaARQ_XML_RPS: TIBStringField;
    tblNofisaARQ_XML_NFSE: TIBStringField;
    tblNofisaXML_NFSE: TMemoField;
    tblNofisaXML_RPS: TMemoField;
    tblNofisa4: TIBDataSet;
    tblNofisa4ID_NOFISA: TIntegerField;
    tblNofisa4ID_CONCESSIONARIA: TIntegerField;
    tblNofisa4ID_CLIENTES: TIntegerField;
    tblNofisa4NUMERO: TIntegerField;
    tblNofisa4SERIENF: TIBStringField;
    tblNofisa4EMISSAO: TDateField;
    tblNofisa4ORIGEM: TIBStringField;
    tblNofisa4ENT_SAI: TIBStringField;
    tblNofisa4VENDEDOR: TIntegerField;
    tblNofisa4SAIDA: TDateField;
    tblNofisa4HORA: TIBStringField;
    tblNofisa4IE_SUBS: TIBStringField;
    tblNofisa4DESC_PEC: TIBBCDField;
    tblNofisa4DESC_OFI: TIBBCDField;
    tblNofisa4BASE_ICMS: TIBBCDField;
    tblNofisa4VAL_ICMS: TIBBCDField;
    tblNofisa4BASE_ICM_S: TIBBCDField;
    tblNofisa4VAL_ICMS_S: TIBBCDField;
    tblNofisa4VAL_FRETE: TIBBCDField;
    tblNofisa4VAL_SEGURO: TIBBCDField;
    tblNofisa4VAL_OUTROS: TIBBCDField;
    tblNofisa4VAL_IPI: TIBBCDField;
    tblNofisa4VAL_SERV: TIBBCDField;
    tblNofisa4ISSQN: TIBBCDField;
    tblNofisa4VAL_ISS: TIBBCDField;
    tblNofisa4TOT_PROD: TIBBCDField;
    tblNofisa4TOT_NOTA: TIBBCDField;
    tblNofisa4PIS: TIBBCDField;
    tblNofisa4COFINS: TIBBCDField;
    tblNofisa4COD_TRANS: TIBStringField;
    tblNofisa4FRETE_TIPO: TIBStringField;
    tblNofisa4PLACA: TIBStringField;
    tblNofisa4DADOS_AD01: TIBStringField;
    tblNofisa4DADOS_AD02: TIBStringField;
    tblNofisa4DADOS_AD03: TIBStringField;
    tblNofisa4DADOS_AD04: TIBStringField;
    tblNofisa4QTDE_PROD: TIntegerField;
    tblNofisa4STATUS: TIBStringField;
    tblNofisa4CODIGO_FISCAL: TIBStringField;
    tblNofisa4DESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisa4FORMA_PAGAMENTO: TIBStringField;
    tblNofisa4CHAVE: TIBStringField;
    tblNofisa4RECIBO: TIBStringField;
    tblNofisa4PROTOCOLO: TIBStringField;
    tblNofisa4ARQUIVO: TIBStringField;
    tblNofisa4XML: TBlobField;
    tblNofisa4PROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisa4MOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisa4DADOS_AD05: TIBStringField;
    tblNofisa4RECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisa4TRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisa4ID_MECANICO: TIntegerField;
    tblNofisa4ID_ATENDENTE: TIntegerField;
    tblNofisa4QUANTIDADE_VOLUMES: TIntegerField;
    tblNofisa4NFE_REFERENCIADA: TIBStringField;
    tblNofisa4NUMERO_NFSE: TIBStringField;
    tblNofisa4CODIGO_NFSE: TIBStringField;
    tblNofisa4ARQ_XML_RPS: TIBStringField;
    tblNofisa4ARQ_XML_NFSE: TIBStringField;
    tblNofisa4XML_NFSE: TMemoField;
    tblNofisa4XML_RPS: TMemoField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    tblPessoasRETENCAO_ISS: TIBStringField;
    CheckBox5: TCheckBox;
    ACBrMail1: TACBrMail;
    tblSadaPOTENCIA: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisa2OBS: TIBStringField;
    tblNofisa2NUMERO_NFSE: TIBStringField;
    tblNofisa2CODIGO_NFSE: TIBStringField;
    tblNofisa2ARQ_XML_RPS: TIBStringField;
    tblNofisa2ARQ_XML_NFSE: TIBStringField;
    tblNofisa2XML_NFSE: TWideMemoField;
    tblNofisa2XML_RPS: TWideMemoField;
    tblNofisa3OBS: TIBStringField;
    tblNofisa3NUMERO_NFSE: TIBStringField;
    tblNofisa3CODIGO_NFSE: TIBStringField;
    tblNofisa3ARQ_XML_RPS: TIBStringField;
    tblNofisa3ARQ_XML_NFSE: TIBStringField;
    tblNofisa3XML_NFSE: TWideMemoField;
    tblNofisa3XML_RPS: TWideMemoField;
    tblNofisa4OBS: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblNofisaNOME: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    tblSadaDESCRICAO: TIBStringField;
    frxReport1: TfrxReport;
    ACBrNFSe1: TACBrNFSe;
    DanfSe: TACBrNFSeDANFSeFR;
    BitBtn6: TBitBtn;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    CheckBox9: TCheckBox;
    tblNofisaCONSUMIDOR_FINAL: TIBStringField;
    BitBtn7: TBitBtn;
    tblFone: TIBDataSet;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IBStringField13: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    DateField7: TDateField;
    IBStringField66: TIBStringField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    DateField8: TDateField;
    IBBCDField35: TIBBCDField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    IBBCDField36: TIBBCDField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    IBStringField87: TIBStringField;
    IBStringField88: TIBStringField;
    IBStringField89: TIBStringField;
    IBStringField90: TIBStringField;
    DateField9: TDateField;
    IBBCDField37: TIBBCDField;
    IBStringField91: TIBStringField;
    IBStringField92: TIBStringField;
    IBStringField93: TIBStringField;
    IBStringField94: TIBStringField;
    IBStringField95: TIBStringField;
    IBStringField96: TIBStringField;
    IBStringField97: TIBStringField;
    IBStringField98: TIBStringField;
    IBStringField99: TIBStringField;
    IBStringField100: TIBStringField;
    IBStringField101: TIBStringField;
    IBStringField102: TIBStringField;
    IBStringField103: TIBStringField;
    IBStringField104: TIBStringField;
    IBStringField105: TIBStringField;
    IBStringField106: TIBStringField;
    IBStringField107: TIBStringField;
    IBStringField108: TIBStringField;
    tblEmail: TIBDataSet;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IBStringField109: TIBStringField;
    IBStringField110: TIBStringField;
    IBStringField111: TIBStringField;
    IBStringField112: TIBStringField;
    IBStringField113: TIBStringField;
    DateField10: TDateField;
    IBStringField114: TIBStringField;
    IBStringField115: TIBStringField;
    IBStringField116: TIBStringField;
    IBStringField117: TIBStringField;
    IBStringField118: TIBStringField;
    IBStringField119: TIBStringField;
    IBStringField120: TIBStringField;
    DateField11: TDateField;
    IBBCDField38: TIBBCDField;
    IBStringField121: TIBStringField;
    IBStringField122: TIBStringField;
    IBStringField123: TIBStringField;
    IBStringField124: TIBStringField;
    IBStringField125: TIBStringField;
    IBStringField126: TIBStringField;
    IBStringField127: TIBStringField;
    IBStringField128: TIBStringField;
    IBStringField129: TIBStringField;
    IBBCDField39: TIBBCDField;
    IBStringField130: TIBStringField;
    IBStringField131: TIBStringField;
    IBStringField132: TIBStringField;
    IBStringField133: TIBStringField;
    IBStringField134: TIBStringField;
    IBStringField135: TIBStringField;
    IBStringField136: TIBStringField;
    IBStringField137: TIBStringField;
    IBStringField138: TIBStringField;
    DateField12: TDateField;
    IBBCDField40: TIBBCDField;
    IBStringField139: TIBStringField;
    IBStringField140: TIBStringField;
    IBStringField141: TIBStringField;
    IBStringField142: TIBStringField;
    IBStringField143: TIBStringField;
    IBStringField144: TIBStringField;
    IBStringField145: TIBStringField;
    IBStringField146: TIBStringField;
    IBStringField147: TIBStringField;
    IBStringField148: TIBStringField;
    IBStringField149: TIBStringField;
    IBStringField150: TIBStringField;
    IBStringField151: TIBStringField;
    IBStringField152: TIBStringField;
    IBStringField153: TIBStringField;
    IBStringField154: TIBStringField;
    IBStringField155: TIBStringField;
    IBStringField156: TIBStringField;
    Danfe: TACBrNFeDANFEFR;
    tblNofisaFaturasNUMERO_CV: TIBStringField;
    CheckBox10: TCheckBox;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    tblNofisaPESO_BRUTO: TIBBCDField;
    tblSadaALIQ_ICMS: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure tblNofisaAfterCancel(DataSet: TDataSet);
    procedure tblNofisaAfterPost(DataSet: TDataSet);
    procedure BtnEnviarClick(Sender: TObject);
    procedure BtnArquivarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure At_nfe( chave, recibo, protocolo, arquivo, xml:String);
    function Gera_Nfe_Acbr( xml, txt, assina, valida, transmite, imprime, email, exporta:boolean ):TAcbrNfe;
    procedure BtnNFsArquivadasClick(Sender: TObject);
    procedure BtnDesarquivarClick(Sender: TObject);
    procedure CriarNFServicos;
    procedure Carregaxml( var nfe:TAcbrNfe );
    procedure CarregaXMLSe( var nfe:TAcbrNFSe );
    procedure DataNFsChange(Sender: TObject);
    procedure BtnDanfeExternoClick(Sender: TObject);
    procedure BtnxmlClick(Sender: TObject);
    procedure Enviarxml;
    procedure Envio(Transmite, Imprime, Exporta, Email: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    function ConsultaSintegra : Boolean;
    function TestaNF : Boolean;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure nfsStatusChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
  private
    procedure enviaNfs;
    procedure enviaNfs2;
    procedure cancelaNfs;
    procedure imprimeNfs;

    { Private declarations }
  public
    { Public declarations }
    idNumeroNotaFiscal : Integer;
    idNofisa : Integer;
    idSeda : Integer;
    idNotaVelha : Integer;
    ISSQN : Extended;
    Val_serv : Extended;
    Val_ISS : Extended;
    Tot_Nota : Extended;
    Valor_Pago : Extended;
  end;

var
  BoxNFeGerenciamento: TBoxNFeGerenciamento;

implementation

uses FDB, Empresas, Biblioteca, Efuncoes, ufrmAguardaNFe, NFE, ReemiteNFs;

{$R *.dfm}

procedure TBoxNFeGerenciamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  ACbrNFe1.Free;
  Action :=caFree;
  BoxNFeGerenciamento := nil;
end;

procedure TBoxNFeGerenciamento.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxNFeGerenciamento.FormShow(Sender: TObject);
begin
   BtnCancelar.Enabled := False;
   BtnConsultar.Enabled:= False;
   CheckBox5.Enabled := True;
   if (FDB1.IBDataSetLoginacesso64.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnCancelar.Enabled := True;
   if  (FDB1.IBDataSetLoginacesso93.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     CheckBox1.Enabled := True;
   if (FDB1.IBDataSetLoginADM.AsString = 'T') then
    begin
     BtnConsultar.enabled := True;
     CheckBox2.Enabled := True;
     CheckBox3.Enabled := True;
     CheckBox4.Enabled := True;
//     CheckBox7.Enabled := True;
     CheckBox8.Enabled := True;
     CheckBox10.Enabled := True;
     bitbtn6.enabled := True;
    end;

    CheckBox7.Enabled := True;

    with acbrMail1 do
    begin
      From := BoxEmpresas.Usuario;
      Host := BoxEmpresas.Host;
      PassWord := BoxEmpresas.Pass;
      Port := BoxEmpresas.Port;
      SetSSL := false;// ( Host = 'smtp.ynovamotos.com.br' );
      SetTls := true;
      Subject := 'Arquivo XML de NF-e';
      UserName := BoxEmpresas.Usuario;
      FromName := BoxEmpresas.Empresa;
    end;

   Danfe.FastFile := ExtractFilePath( Application.ExeName ) + '\Danfe.fr3';
   DataNfs.Date := DataAtual;
   FecharDs;
   AbrirDs;

//   if tblNofisa.FieldByName('Origem').AsString = 'N' then
//    btnenviar.enabled := False
//   else
  //  begin
//    btnenviar.enabled := True;
//   BtnEnviar.SetFocus;
//    end;
end;

procedure TBoxNFeGerenciamento.tblNofisaAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxNFeGerenciamento.tblNofisaAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxNFeGerenciamento.BtnCancelarClick(Sender: TObject);
var
  M: TStringStream;
  vAux : String;
begin
  case MessageDlg('Tem certeza que deseja cancelar esta NF?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
 begin

 if( tblNofisa.fieldbyname( 'serienf' ).asString = 'T' ) then
 begin
  cancelaNfs();
  exit;
 end;


  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.ssl.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;

  m := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml' ).asString );
  ACBrNFe1.NotasFiscais.Clear;
  ACbrnfe1.NotasFiscais.LoadFromStream( m );

    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
       exit;

  if ( frmAguardaNFe = nil ) then
    frmAguardaNFe := TfrmAguardaNFe.Create(Application);

 frmAguardaNfe.Show;


    try

       //    nf.NotasFiscais.LoadFromFile(arq);

       with acbrnfe1.EventoNFe.Evento.Add do
       begin
//        infevento.id := '1';
        infevento.cOrgao := 43;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := vAUX;
       end;

       AcbrNFe1.EnviarEvento(boxNfeGerenciamento.tblNofisa.FieldByName('Numero').AsInteger);

       if Acbrnfe1.webservices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cstat<>135  then
       begin
        frmAguardaNfe.Mensagens.Lines.Add( 'Cancelamento não executado:' + inttostr( acbrnfe1.webservices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cstat ) + #13 +
                      Acbrnfe1.webservices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo );
        exit;
       end
       else
        begin
         with boxNfeGerenciamento.tblNofisa do
           begin
             Edit;
             FieldByName('Status').AsString := 'NF-e Cancelada';
             FieldByName('Protocolo_cancelamento').AsString := ACbrNfe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].retInfEvento.nProt;
             FieldByName('Motivo_Cancelamento').AsString := vAux;
             Post;
             Close;
             Open;
           end;
          frmAguardaNfe.Mensagens.Lines.Add( 'Processo concluído com sucesso...' );
          frmAguardaNfe.btnOk.Enabled := true;
          frmAguardaNFe.BtnOk.SetFocus;
          ACBrNFe1.NotasFiscais.Clear;
        end;
    except
      on e:Exception do
      begin
        frmAguardaNfe.Mensagens.Lines.Add( 'Erro no processo:' + e.Message );
        frmAguardaNfe.btnOk.Enabled := true;
        frmAguardaNFe.BtnOk.SetFocus;
        ACBrNFe1.NotasFiscais.Clear;
      end;

    end;
  end;
  end;
  frmAguardaNFE := nil;

end;

procedure TBoxNFeGerenciamento.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stNFeStatusServico :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Verificando Status do servico...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando dados da NFe...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Recebendo dados da NFe...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Consultando NFe...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando cancelamento de NFe...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando pedido de Inutilização...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Consultando Recibo de Lote...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TBoxNFeGerenciamento.BtnDanfeExternoClick(Sender: TObject);
begin
  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.ssl.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if FileExists(BoxEmpresas.Logo) then
     ACBrNFe1.DAnfe.Logo := BoxEmpresas.Logo;
    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TBoxNFeGerenciamento.BitBtn1Click(Sender: TObject);
begin
  begin
   if not Assigned(BoxReemiteNFs) then
    BoxReemiteNFs := TBoxReemiteNFs.Create(Self);
   BoxReemiteNFs.Show;
   if BoxReemiteNFs.EmitirNotaFiscal(IntToStr(tblNofisa.FieldByName('Numero').AsInteger)) then
    BoxReemiteNFs.EmiteNF
  end
end;

procedure TBoxNFeGerenciamento.BitBtn2Click(Sender: TObject);
begin
with tblPessoas do
 begin
  Close;
  ParamByName('Id').AsInteger := 2507;//tblNofisa.FieldByName('Id_Clientes').AsInteger;
  Open;
 end;

  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.ssl.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
  if not ConsultaSintegra then
     showmessage('erro')
  else
     Showmessage('ok');
end;

function TBoxNFeGerenciamento.TestaNF : Boolean;
begin
  result := True;
  if tblNofisa.FieldByName('SerieNF').AsString <> 'T' then
   begin
     if (tblPessoas.FieldByName('CPF').AsString = 'CNPJ') then
      if (not CheckBox5.checked) and  (not CheckBox9.checked) then
       begin
        Showmessage('Marque indicação de finalidade: Nfe-Consumidor ou Nfe-Posterior comercialização.');
        result := False;
       end;
   end;
//  if (tblPessoas.FieldByName('CPF').AsString = 'CPF') and (tblPessoas.FieldByName('Estado').AsString <> 'RS') then
//     begin
//       Showmessage('Não é possível emitir nf para fora do estado para este cliente.');
 //      Result := False;
 //    end;
end;

function TBoxNFeGerenciamento.ConsultaSintegra : Boolean;
var
 UF, Documento : String;
begin
 result := True;
 if CheckBox9.Checked then
  begin
   if (CheckBox1.Checked) and (tblPessoas.FieldByName('Consumidor').AsString <> 'T')
      and (Substr(tblPessoas.FieldByName('Nome').AsString,1,5) <> 'YNOVA') then
   begin
    UF := tblNofisa.FieldByName('Estado').AsString;
    Documento :=  TiraPontosEBarrasCPF(tblNofisa.FieldByName('Num_Cpf').AsString);
    ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
    if (tblNofisa.FieldByName('CPF').AsString = 'CNPJ') and
       (UF <> 'SP') then//Length(Documento) > 11 then
     begin
       ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento;
       ACBrNFe1.WebServices.ConsultaCadastro.Executar;
     if ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.cStat = 264 then // NÃO é contribuinte
      begin
        if (tblNofisa.FieldByName('CPF').AsString = 'CNPJ') and
           (Alltrim(tblNofisa.FieldByName('Identidade').AsString) <> 'ISENTO') then
         begin
          Showmessage('Empresa sem inscrição estadual, registre como ISENTO.');
          result := False;
         end;
      end;
     if ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.cStat = 111 then // é contribuinte
      begin
      if ACBrNFe1.Webservices.ConsultaCadastro.RetConsCad.InfCad.Items[0].cSit = 0 then  //foi baixada
       begin
         if Alltrim(tblNofisa.FieldByName('Identidade').AsString) <> 'ISENTO' then
           begin

             result := False;
             Showmessage('Não é possível emitir NF para esta empresa, ela está baixada no ICMS.;Registre ela como isenta.');
           end;
       end;
         if Alltrim(tblNofisa.FieldByName('Identidade').AsString) <> 'ISENTO' then
           begin

           if (IntToStr(ACBrNFe1.Webservices.ConsultaCadastro.RetConsCad.InfCad.Items[0].cMun) <>
             tblPessoas.FieldByName('Codigo_Municipio').AsString) or
             (tblPessoas.FieldByName('Numero').AsString <>
             ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].nro) or
             (tblPessoas.FieldByName('Endereco').AsString <>
             ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xLgr)
            then
            begin
             result := False;
             Showmessage('Não é possível emitir NF para esta empresa, o endereço está errado no cadastro.');
            end;
          end;
      end;
     end;
   end;
  end;
end;

procedure TBoxNFeGerenciamento.BitBtn3Click(Sender: TObject);
var
  vAux : String;
begin
  if tblNofisa.FieldByName('Status').AsString = 'Processado' then
   if not(InputQuery('Alteração de dados da NF-e', 'Novo código do cliente:', vAux)) then
     Showmessage('alteração cancelada.')
   else
     begin
      tblNofisa.Edit;
      tblNofisa.FieldByName('id_clientes').AsInteger := StrToInt(vAux);
      tblNofisa.Post;
      tblNofisa.Close;
      tblNofisa.Open;
     end
  else
    showmessage('Não é possível alterar o cliente desta NF.');
end;

procedure TBoxNFeGerenciamento.BitBtn4Click(Sender: TObject);
begin
  with tblPessoas do
   begin
    Close;
    ParamByName('Id').AsInteger := tblNofisa.FieldByName('Id_Clientes').AsInteger;
    Open;
   end;
  if tblPessoas.FieldByName('Codigo_Municipio').AsVariant = null then
    showmessage('O código do município é inválido.')
  else
    begin
      if (BoxEmpresas.Certificado = '') then
        ACBrNFe1.ssl.SelecionarCertificado
      else
        ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
      if tblnofisa.FieldByName('Status').AsString = 'Processado' then
     begin
      with tblNofisa do
      begin
                Val_Serv := FieldByName('Val_serv').AsFloat;
                Val_ISS := FieldByName('Val_ISS').AsFloat;
                ISSQN := FieldByName('ISSQN').AsFloat;
                Tot_Nota := FieldByName('Tot_Nota').AsFloat;
                Gera_Nfe_ACbr(True,True,True,True,True,True,False,True); //troca o quinto false por true parsa enviar nf 4.0
//                AcbrNFe1.NotasFiscais.Items[0].SaveToFile;
      end
     end
     else
      if tblNofisa.FieldByName('Status').AsString =  'NF-e Autorizada'  then
        showmessage('Nf-e já autorizada.');
    end;
end;

procedure TBoxNFeGerenciamento.BitBtn5Click(Sender: TObject);
var
  M: TStringStream;
  ArquivoXml : TMemo;
begin
  tblnofisa2.open;
  tblNofisa2.First;
  while not tblnofisa2.Eof do
  begin
   try
     begin
       frmAguardaNFE := nil;
       ArquivoXml := TMemo.Create(nil);
       ACBrNFe1.NotasFiscais.Clear;
       if (BoxEmpresas.Certificado = '') then
         ACBrNFe1.ssl.SelecionarCertificado
       else
         ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
         m := TStringStream.Create( tblNofisa2.fieldbyname( 'xml' ).asString );
         ACbrnfe1.NotasFiscais.LoadFromStream( m );
         ACBrNFe1.Consultar;
         {
         AcbrNFe1.NotasFiscais.Items[0].SaveToFile('C:\YTransfer\Saida\teste\' +
                                     dfeUtil.LimpaNumero( acbrnfe1.notasfiscais.items[0].nfe.infNFe.ID ) +'-NFe.xml');
                                     }
       ACBrNFe1.NotasFiscais.Clear;
     end;
    except
      on e:Exception do
      begin
        frmAguardaNfe.Mensagens.Lines.Add( 'Erro no processo:' + e.Message );
        frmAguardaNfe.btnOk.Enabled := true;
        frmAguardaNFe.BtnOk.SetFocus;
        ACBrNFe1.NotasFiscais.Clear;
      end;
   end;
   m.free;
   arquivoxml.free;
  // end;
   tblnofisa2.Next;
   end;
   showmessage('final');
end;

{var
  M: TStringStream;
    vAux : String;
begin
  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.configuracoes.certificados.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;

  m := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml' ).asString );
  ACBrNFe1.NotasFiscais.Clear;
  ACbrnfe1.NotasFiscais.LoadFromStream( m );
       with acbrnfe1.EventoNFe.Evento.Add do
       begin
//        infevento.id := '1';
        infevento.cOrgao := 43;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := vAUX;
       end;
    AcbrNFe1.NotasFiscais.Items[0].SaveToFile;
    showmessage('arquivo XML exportado.');
end;
}
procedure TBoxNFeGerenciamento.BtnArquivarClick(Sender: TObject);
begin
   if tblNofisa.FieldByName('Status').AsString = 'NF-e Autorizada' then
     case MessageDlg('Arquivar NF-e?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with tblNofisa do
         begin
          Edit;
          FieldByName('Status').AsString := 'Arquivado';
          Post;
         end;
       end;
     end;
end;

procedure TBoxNFeGerenciamento.Enviarxml;
var
// IniFile : String ;
 SmtpHost : String;
 SmtpPort : String;
 SmtpUser : TStringList;
 SmtpPass : String;
 EmailAssunto : String;
 Para : String;
 SmtpSSL : Boolean;
// Ini :  TIniFile;
// StreamMemo : TMemoryStream;
 Mensagem : TStringList;
 mrps, mNfs:TStringStream;

begin

  Application.CreateForm( TfrmAguardaNfe, frmAguardaNfe );
  frmAguardaNfe.Show;
  frmAguardaNfe.btnOk.Enabled := false;


 if tblNofisa.FieldByName('Origem').AsString = 'U' then
   Showmessage('Não é possível enviar NF de usados')
 else
  if( tblNofisa.fieldbyname( 'serienf' ).asString = 'T' ) then
     begin
        nfs.NotasFiscais.clear;
        nfs.Configuracoes.Geral.PathIniCidades := 'C:\Autorev-SD\';
        config_nfs( nfs, BoxEmpresas );
        CarregaXMLSe(nfs);

//        mRps := TStringStream.Create( tblNofisa.fieldbyname( 'xml_rps' ).asString );
//        mNfs := TStringStream.Create( tblNofisa.fieldbyname( 'xml_nfse' ).asString );
//        nfs.NotasFiscais.LoadFromStream( MNFS );
//        if not nfs.NotasFiscais.LoadFromStream( mNfs ) then
//        begin
//            if not nfs.NotasFiscais.LoadFromStream( mRps ) then
//              begin
 //               showmessage( 'Impossivel carregar XML do banco de dados' );
  //              exit;
   //           end;
//        end;

       Mensagem := TStringList.Create();
       with mensagem do
         begin
           add( 'Prezado(a): ' + nfs.notasfiscais.Items[0].NFse.Tomador.RazaoSocial );
           add( '' );
           add( '' );
           add( 'Conforme legislação vigente, segue em anexo arquivo XML referente a Nfs-e relacionada abaixo:' );
           add( '' );
           add( 'Número: '  + ( nfs.notasfiscais.items[0].nfse.Numero ) );
           add( 'Emissão: ' + DateToSTr( nfs.notasfiscais.items[0].NFse.DataEmissao  ) );
           add( 'Código de Verificação: ' + nfs.notasfiscais.items[0].nfse.CodigoVerificacao);
           add( '' );
           add( '' );
           add( 'Sem mais,' );
           add( '' );
           add( '' );
           add( BoxEmpresas.Fantasia);
           add( '' );
           add( '' );
           add( '' );
           add( '' );
           add( '' );
           add( '' );
           add( 'Não responda este e-mail, se preciso entre em contato diretamente conosco.');
           add( 'E-mail gerado automaticamente por Autorev' );
         end;

        SmtpHost      := BoxEmpresas.Host;//Ini.ReadString( 'Email','Host'   ,'') ;
        SmtpPort      := BoxEmpresas.Port;//Ini.ReadString( 'Email','Port'   ,'') ;
        smtpUser      := TStringList.Create;
        SmtpUser.Add( BoxEmpresas.Usuario );//.ReadString( 'Email','User'   ,'') ;
        SmtpPass      := BoxEmpresas.Pass;//Ini.ReadString( 'Email','Pass'   ,'') ;
        SmtpSSL       := False;
        if SmtpHost = 'smtp.ynovamotos.com.br' then
          SmtpSSL       := True;
        EmailAssunto  := 'Arquivo XML de NF-e';//Ini.ReadString( 'Email','Assunto','') ;
        Para          := tblPessoas.FieldByName('email').AsString;
        if Para <> '' then
          case MessageDlg('Enviar XML para e-mail diferente do cadastrado?', mtConfirmation, [mbYes,mbNo], 0) of
           mrYes:
             InputQuery('Enviar Email', 'Email de destino', Para);
          end;
        if Para = '' then
         if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
          exit;
         nfs.DANFSE.Logo := BoxEmpresas.Logo_Prefeitura;
         nfs.DANFSE.PrestLogo := BoxEmpresas.Logo;

          try
             frmAguardaNfe.Mensagens.Lines.Add( 'Enviando email ' + Para );
             nfs.NotasFiscais.Items[0].EnviarEmail(Para, EmailAssunto, Mensagem, True );
             frmAguardaNfe.Mensagens.Lines.Add( 'Email enviado com sucesso' );
             frmAguardaNfe.btnOk.Enabled := true;

          except
            on e:Exception do
            begin
              frmAguardaNfe.btnOk.Enabled := true;
              frmAguardaNfe.Mensagens.Lines.Add( 'ERRO NO PROCESSO ' + #13 + e.Message );
            end;
          end;
      end
  else
    begin
     CarregaXML(ACBrNFe1);
     Mensagem := TStringList.Create();
     with mensagem do
       begin
         add( 'Prezado(a): ' + Acbrnfe1.notasfiscais.Items[0].NFe.Dest.xNome );
         add( '' );
         add( '' );
         add( 'Conforme legislação vigente, segue em anexo arquivo XML referente a Nf-e relacionada abaixo:' );
         add( '' );
         add( 'Número: '  + inttoStr( Acbrnfe1.notasfiscais.items[0].nfe.Ide.cNF ) );
         add( 'Emissão: ' + DateToSTr( ACBrnfe1.notasfiscais.items[0].NFe.Ide.dEmi  ) );
         add( 'Chave NF-e: ' + ( Acbrnfe1.notasfiscais.items[0].nfe.infNFe.ID ));
         add( '' );
         add( '' );
         add( 'Sem mais,' );
         add( '' );
         add( '' );
         add( BoxEmpresas.Fantasia);
  //       add( acbrnfe1.notasfiscais.items[0].NFe.Emit.xNome );
         add( '' );
         add( '' );
         add( '' );
         add( 'Para consultar essa nota,clique no endereço abaixo' );
         add( 'http://www.sefaz.rs.gov.br/NFE/NFE-AUT.aspx?chaveNFe='+ ( acbrnfe1.notasfiscais.items[0].nfe.infNFe.ID ) );
         add( '' );
         add( '' );
         add( '' );
         add( 'Não responda este e-mail, se preciso entre em contato diretamente conosco.');
         add( 'E-mail gerado automaticamente por Autorev' );
       end;
    smtpUser := TStringList.Create;

    SmtpHost      := BoxEmpresas.Host;//Ini.ReadString( 'Email','Host'   ,'') ;
    SmtpPort      := BoxEmpresas.Port;//Ini.ReadString( 'Email','Port'   ,'') ;
    SmtpUser.Add( BoxEmpresas.Usuario );//.ReadString( 'Email','User'   ,'') ;
    SmtpPass      := BoxEmpresas.Pass;//Ini.ReadString( 'Email','Pass'   ,'') ;
    SmtpSSL       := False;
    if SmtpHost = 'smtp.ynovamotos.com.br' then
      SmtpSSL       := True;
    EmailAssunto  := 'Arquivo XML de NF-e';//Ini.ReadString( 'Email','Assunto','') ;
    Para          := tblPessoas.FieldByName('email').AsString;
    if Para <> '' then
      case MessageDlg('Enviar XML para e-mail diferente do cadastrado?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes:
         InputQuery('Enviar Email', 'Email de destino', Para);
      end;
    if Para = '' then
     if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
      exit;
    try

      frmAguardaNfe.Mensagens.Lines.Add( 'Enviando email ' + Para );
      acbrnfe1.NotasFiscais.Items[0].EnviarEmail(Para, EmailAssunto, Mensagem, True );
        frmAguardaNfe.Mensagens.Lines.Add('e-mail enviado com sucesso.');
        frmAguardaNfe.btnOk.Enabled := true;
    except
       on e:Exception do
        begin
           frmAguardaNfe.Mensagens.Lines.Add('Erro no envio do e-mail'+ #13 + e.Message );
           frmAguardaNfe.btnOk.Enabled := true;
        end;
    end;
    AcbrNfe1.NotasFiscais.Clear;
   end;
end;

procedure TBoxNFeGerenciamento.BtnEnviarClick(Sender: TObject);
var
  ApagaNFPecas : Boolean;
  NFParaApagar : Integer;
begin
with tblPessoas do
 begin
  Close;
  ParamByName('Id').AsInteger := tblNofisa.FieldByName('Id_Clientes').AsInteger;
  Open;
 end;

if testaNF() then
begin
if tblNofisa.FieldByName('SerieNF').AsString = 'T' then
  begin

    DanfSe.FastFile:=ExtractFilePath( Application.ExeName ) + '\Report\'+'DANFSE.fr3';
    enviaNfs();//Gera a nf
    envianfs2();
    EnviarXml;
    exit;

   showmessage('Esta serie de NF não pode ser enviada eletronicamente.');
    with nfs do
     begin
       with NotasFiscais.Add.NFSe do
         begin
            with IdentificacaoRPS do
              begin
                 Numero := tblNoFisa.fieldbyname( 'numero' ).asString;
                 Serie  := tblNoFisa.fieldbyname( 'serienf' ).asString;
              end;
         end;
     end;
    //codigo de gravatai 4309209
  end
else
begin
//Verificar Data Atual, se superior a 01/01/2019 então exigir que o cadastro tenha dados ref. bases ICMS ST
//if DataAtual > CTOD('11/12/2018'). then
// Showmessage('ICMS ST');

with tblPessoas do
 begin
  Close;
  ParamByName('Id').AsInteger := tblNofisa.FieldByName('Id_Clientes').AsInteger;
  Open;
 end;
if tblPessoas.FieldByName('Codigo_Municipio').AsVariant = null then
  showmessage('O código do município é inválido.')
else
begin
  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.ssl.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
//ACBrNFe1.configuracoes.certificados.SelecionarCertificado;
  if tblnofisa.FieldByName('Status').AsString = 'Processado' then
 begin
  with tblNofisa do
  begin
   if (tblNofisa.FieldByName('Origem').AsString <> 'U') and
      (not ValidaEmailETelefone(BoxNfeGerenciamento.tblPessoas, BoxNfeGerenciamento.tblFone, BoxNfeGerenciamento.tblEmail, False)) then
       Showmessage('O telefone e/ou e-mail são inválidos.')
   else

    if not ConsultaSintegra then
     showmessage('erro')
    else
     begin
//       showmessage(tblpessoas.fieldByName('id_clientes').ASString);
       if (fieldByName('Val_Iss').AsFloat <> 0) and (BoxEmpresas.Dividir_NF_Servico) then
            begin
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
             ApagaNFPecas := False;
             if fieldByName('Tot_nota').asCurrency = 0 then //asInteger
               Begin
                 ApagaNFPecas := True;
                 NFParaApagar := FieldByName('id_Nofisa').AsInteger;
                 showmessage('vai apagar');

               End;
             CriarNFServicos;
             //verificar se a nf de peças esta com valor zerado, se estiver excluir ela.
             if ApagaNFPecas then
              begin
               with tblSerieNF do
                begin
                 Close;
                 ParamByName('idConcessionaria').AsInteger :=
                  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 ParamByName('IdSerieNF').AsString := 'e';
                 Open;
                 idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger - 1;
                 Edit;
                 FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
                 Post;
                 Showmessage('Número da nota fiscal excluída: '+IntToStr(IdNumeroNotaFiscal));
                end;
               with tblNofisa4 do
                begin
                 Close;
                 ParamByName('idNofisa').AsInteger := NFParaApagar;
                 Open;
                 delete;
                 Post;
                 tblNofisa.Close;
                 tblNofisa.Open;
                end;
              end;
            end
       else
         begin
          if (tblNofisa.fieldByName('Tot_nota').asCurrency = 0) and (not CheckBox4.Checked) then
            begin
             showmessage('vai apagar');
              NFParaApagar := tblNofisa.FieldByName('id_Nofisa').AsInteger;
              with tblSerieNF do
                begin
                 Close;
                 ParamByName('idConcessionaria').AsInteger :=
                  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                 ParamByName('IdSerieNF').AsString := 'e';
                 Open;
                 idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger - 1;
                 Edit;
                 FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
                 Post;
                 Showmessage('Número da nota fiscal excluída: '+IntToStr(IdNumeroNotaFiscal+1));
                end;
               with tblNofisa4 do
                begin
                 Close;
                 ParamByName('idNofisa').AsInteger := NFParaApagar;
                 Open;
                 edit;
                 delete;
                 Post;
                 tblNofisa.Close;
                 tblNofisa.Open;
                end;


            end
          else
           begin
            Gera_Nfe_ACbr(True,True,True,True,True,True,False,True);
            //AcbrNFe1.NotasFiscais.Items[0].SaveToFile;
            Checkbox5.Checked := False;
            CheckBox9.Checked := False;
            Envio(True, True, True, True);
           end;
         end;
     end;

    end;
  end
  else
  if tblNofisa.FieldByName('Status').AsString =  'NF-e Autorizada'  then
    showmessage('Nf-e já autorizada.');
 end;
end;
//else
// Showmessage('
end;
end;

procedure TBoxNFeGerenciamento.CriarNFServicos;
var
  idNotaVelha : integer;
begin
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerieNF').AsString := 'T';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    idNotaVelha := FieldByName('id_Nofisa').AsInteger;
    DuplicaRegistro(tblNofisa);
    FieldByName('SerieNF').AsString := 'T';
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '5933';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'PRESTACAO DE SERVICOS';
    FieldByName('Val_Serv').AsFloat := Val_Serv;
    FieldByName('Val_ISS').AsFloat := Val_ISS;
    FieldByName('ISSQN').AsFloat := ISSQN;
    FieldByName('Tot_Prod').AsFloat := Val_Serv;
    FieldByName('Tot_Nota').AsFloat := Val_Serv;
    if FieldByName('Origem').AsString = 'G' then
      FieldByName('id_clientes').AsInteger := 1296;
    Post;
   end;
  with tblNofisaFaturas do
   begin
     Insert;
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' + '1';
     FieldByName('Vencimento').AsDateTime := DataAtual;
     FieldByName('Valor').AsFloat := Val_Serv;
     FieldByName('Id_Formas_Pagamento').AsInteger := 2;
     Post;
   end;
   showmessage('service');
  with tblSeda do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNotaVelha;
    Open;
    while not eof do
    begin
      IBQuery2.Open;
      IdSeda := IBQuery2.FieldByName('id_Seda').AsInteger;
      IBQuery2.Close;
      DuplicaRegistro(tblSeda);
      FieldByName('Id_nofi').AsInteger := IdNofisa;
      FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
      FieldByName('id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('Id_Seda').AsInteger := idSeda;
      if FieldByName('id_TMO').IsNull then
         FieldByName('id_TMO').AsInteger := 1;
     Post;
     Next;
    end;
    { Alterar/excluir serviço da NF de peças}
    Close;
    ParamByName('idNofisa').AsInteger := idNotaVelha;
    Open;
    while not eof do
    begin
      edit;
      FieldByName('Descricao_servico').AsString := 'Servico excluido';
      FieldByName('Id_nofi').AsInteger := 1;
      post;
      next;
    end;
  end;
end;

procedure TBoxNFeGerenciamento.DataNFsChange(Sender: TObject);
begin
  tblNofisa.Close;
  tblNofisa.ParamByName('idStatus').AsString := 'Arquivado';
  tblNofisa.ParamByName('idEmissao').AsDateTime := DataNFs.Date;
  tblNofisa.ParamByName('idConcessionaria').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblNofisa.Open;
  tblNofisa.Last;
end;

procedure TBoxNFeGerenciamento.DBGrid1CellClick(Column: TColumn);
begin
if tblNofisa.fieldByname('origem').AsString = 'N' then
   btnenviar.enabled := False
else
   btnenviar.enabled := True;

end;

procedure TBoxNFeGerenciamento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if tblNofisa.fieldByname('origem').AsString = 'N' then
   btnenviar.enabled := False
else
   btnenviar.enabled := True;
//if (Key = #116) or (Key = #53) then
//  begin
//    BtnEnviar.enabled := True;
//  end;
 if
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
      BtnEnviar.enabled := True;
   end;

end;

procedure TBoxNFeGerenciamento.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if tblNofisa.fieldByname('origem').AsString = 'N' then
   btnenviar.enabled := False
else
   btnenviar.enabled := True;
end;

procedure TBoxNFeGerenciamento.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if tblNofisa.fieldByname('origem').AsString = 'N' then
   btnenviar.enabled := False
else
   btnenviar.enabled := True;

end;

procedure TBoxNFeGerenciamento.enviaNfs;
var
  xie: String;
  r: extended;
  x, i: Integer;
  aux: extended;
  auxString, stnf: String;
  ValorISS: Double;
  rps,ok:Boolean;


begin

    application.CreateForm( TfrmAguardaNfe, frmAguardaNfe );
    frmAguardaNfe.Show;
    frmAguardaNfe.Mensagens.Lines.Add( 'Gerando NFs-e...' );
    Config_Nfs(nfs, boxEmpresas);
try
    with nfs do
    begin
     tblSeda.Close;
     tblSeda.ParamByName('idnofisa').AsInteger :=
     tblNofisa.FieldByName('id_nofisa').AsInteger;
     tblSeda.Open;

      rps := false;
      notasfiscais.Clear;

      NotasFiscais.NumeroLote:=tblNofisa.fieldbyname( 'numero' ).asString;;

      with NotasFiscais.Add.NFSe do

      begin

         infId.ID := tblNofisa.fieldbyname( 'numero' ).asString;

         producao := snNao;

         Numero           := tblNofisa.fieldbyname( 'numero' ).asString;
         SeriePrestacao   := tblNofisa.fieldbyname( 'serienf' ).asString;

         with IdentificacaoRps do
         begin
            Numero := tblNofisa.fieldbyname( 'numero' ).asString;
            Serie  := tblNofisa.fieldbyname( 'serienf' ).asString;
            Tipo   := trRPS;
         end;

         DataEmissao                      := tblNofisa.fieldbyname( 'emissao' ).asDateTime + StrToTime( TimeToStr( now ) );

         {
           RegimeEspTributacao:Array[1..2,1..6] of String =
           (('1','2','3','4','5','6'),
           ('Microempresa Municipal',
           'Estimativa',
           'Sociedade de profissionais',
           'Cooperativa' ,
           'Microempresário Individual',
           'Microempresário Empresa PP'));

  NatOperacaoMunicipal:Array[1..2,1..18] of String =
  (('1','2','3','4','5','6','7','51','52','58','59', '61', '62' , '63' , '64' , '68','69','78' ),
  ('Tributação no Município (1)',
   'Tributação Fora do Município (2)',
   'Isenção (3)',
   'Imune (4)',
   'Exigibilidade suspensa por decisão judicial (5)',
   'Exigibilidade suspensa por procedimento (6)',
   'Não Incidência (7)',
   'Tributação no Município com retenção de ISS (51)',
   'Tributação do Município sem retenção ISS (52)',
   'Não Tributado (58)',
   'Simples Nacional (59)',
   'Tributação no Município (61)',
   'Tributação do Município sem ISS (62)',
   'Tributação fora do Município (63)',
   'Tributação fora do Município sem ISS (64)',
   'Não Tributa (68)',
   'Simples Nacional (69)',
   'Não Tributa (78)'));


         }
        // VERIFICAR
               //    notasfiscais.add.NFSe.NaturezaOperacao
         NaturezaOperacao                 := StrToNaturezaOperacao( ok, '1' );
         RegimeEspecialTributacao         := TnfseRegimeEspecialTributacao( 0 );;//retMicroempresaMunicipal;era 3-soc prof

        // TnfseSimNao = ( snSim, snNao );
         OptanteSimplesNacional :=  snNao;

        // TnfseSimNao = ( snSim, snNao );
        IncentivadorCultural := snNao;

        // TnfseStatusRPS = ( srNormal, srCancelado );
        Status := srNormal;

        if BoxEmpresas.CodigoMunicipio = '4309209' then //GRAVATAI 4309209
         begin
          Servico.ItemServico.Items[0].Codigo := '14.01';
//          Servico.ItemListaServico := '14.01';
         end;

        with prestador do
        begin
         Prestador.Cnpj               := boxEmpresas.Cnpj;
         Prestador.InscricaoMunicipal := BoxEmpresas.IM;
         Prestador.cUF                := StrToInt( copy( BoxEmpresas.CodigoMunicipio , 0, 2 ) );
        end;

        with prestadorServico do
        begin
         RazaoSocial                    := BoxEmpresas.Empresa;
         NomeFantasia                   := BoxEmpresas.Fantasia;
         Endereco.TipoLogradouro        := '';
         Endereco.Endereco              := boxEmpresas.Endereco;
         Endereco.Numero                := boxEmpresas.Numero;
         Endereco.Bairro                := boxEmpresas.Bairro;
         Endereco.CodigoMunicipio       := boxEmpresas.CodigoMunicipio ;
         Endereco.UF                    := BoxEmpresas.Estado;
         Endereco.CEP                   := boxEmpresas.CEP;
         Endereco.xMunicipio            := boxEmpresas.Cidade;
         Endereco.xPais                 := 'Brasil';

         IdentificacaoPrestador.Cnpj                := boxEmpresas.cnpj;
         IdentificacaoPrestador.InscricaoMunicipal  := boxEmpresas.IM;
         IdentificacaoPrestador.cUF                 := StrToInt( copy( boxEmpresas.CodigoMunicipio , 0, 2 ) );

        end;



         tblPessoas.Close;
         tblPessoas.ParamByName('id').AsInteger := tblNofisa.fieldbyname( 'id_clientes' ).asInteger;
         tblPessoas.Open;



         Tomador.IdentificacaoTomador.CpfCnpj             := tiraPontoseBarrasCPF(tblPessoas.FieldByName('Num_CPF').AsString);

         Tomador.RazaoSocial := tiraAcento(tblPessoas.FieldByName('Nome').AsString);

         Tomador.Endereco.Endereco        := tiraAcento(tblPessoas.FieldByName('Endereco').AsString);
         Tomador.Endereco.Numero          := tiraAcento(tblPessoas.FieldByName('Numero').AsString);
         Tomador.Endereco.Complemento     := tiraAcento(tblPessoas.FieldByName('Complemento').AsString);
         Tomador.Endereco.Bairro          := tiraAcento(tblPessoas.FieldByName('Bairro').AsString);
         Tomador.Endereco.CodigoMunicipio := tblPessoas.FieldByName('Codigo_Municipio').AsString;//9999999;//
         Tomador.Endereco.UF              := tblPessoas.FieldByName('Estado').AsString;//'EX';//
         Tomador.Endereco.CEP             := tiraPontoseBarrasCPF(tblPessoas.FieldByName('CEP').AsString);

         Servico.ItemListaServico           := '14.02';//tblProdutos.fieldbyname( 'CODIGO_SERVICO' ).asString;//'1719';
         if BoxEmpresas.CodigoMunicipio = '4309209' then //GRAVATAI 4309209
            Servico.ItemListaServico           := '14.01';
         Servico.CodigoMunicipio            := tblPessoas.FieldByName('Codigo_Municipio').AsString;//9999999;//
        // VERIFICAR...

        Servico.CodigoTributacaoMunicipio  := '140200100';// tblConfig.fieldbyname( 'CODIGO_TRIBUTACAO_MUNICIPAL' ).asString;//frmPrincipal.tblEmpresa.fieldbyname( 'codigo_trib_municipio' ).asString;;//'7';//
//                                                  codigo correto =   140100300

//                                                  ver
//                                                  http://lproweb.procempa.com.br/pmpa/prefpoa/notalegal/usu_doc/arq_tabela_apoio_notalegal.txt
        Servico.Valores.ValorServicos          := tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency;
        Servico.Valores.ValorDeducoes          := 0.00;
        //Servico.valores.Aliquota               := 5;
//        Servico.Valores.ValorPis               := tblNofisa.fieldbyname( 'valor_retencao_pis' ).asCurrency;
  //Retencao de ISSQN
        if tblPessoas.FieldByName('Retencao_Iss').AsBoolean <> True then
         begin
          Servico.Valores.IssRetido              := stNormal; //2;  //issqn nao retido
          Servico.Valores.ValorIss               := tblNofisa.fieldbyname( 'val_iss' ).asCurrency
         end
        else
         begin
          Servico.Valores.IssRetido                       := stRetencao; //1; //issqn retido
          Servico.valores.ValorIssRetido                  := tblNofisa.fieldByName('val_iss').Ascurrency;
          Tomador.IdentificacaoTomador.InscricaoMunicipal := tblPessoas.FieldByName('IM').AsString;
         end;
        Servico.Valores.OutrasRetencoes        := 0.00;
        Servico.Valores.DescontoIncondicionado := 0.00;
        Servico.Valores.DescontoCondicionado   := 0.00;
        if checkbox7.Checked then
        begin
          Servico.Valores.ValorPis         := tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*0.65/100;
          Servico.Valores.ValorCofins      := tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*3.00/100;
          Servico.Valores.ValorCsll        := tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*1.00/100;
          Servico.Valores.ValorLiquidoNfse := (tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency) +
                                              (tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*0.65/100) +
                                              (tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*3.00/100) +
                                              (tblNofisa.fieldbyname( 'Tot_nota' ).asCurrency*1.00/100);
        end;

        Servico.Valores.BaseCalculo            := Servico.Valores.ValorServicos -
                                                  Servico.Valores.ValorDeducoes -
                                                  Servico.Valores.DescontoIncondicionado;

          begin
            Servico.Valores.Aliquota    := tblNofisa.fieldbyname( 'issqn' ).asFloat ;
            ValorISS                    := tblNofisa.fieldbyname( 'val_iss' ).asCurrency;
          end;

        Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
                                         Servico.Valores.ValorPis -
                                         Servico.Valores.ValorCofins -
                                         Servico.Valores.ValorInss -
                                         Servico.Valores.ValorIr -
                                         Servico.Valores.ValorCsll -
                                         Servico.Valores.OutrasRetencoes -
                                         Servico.Valores.ValorIssRetido -
                                         Servico.Valores.DescontoIncondicionado -
                                         Servico.Valores.DescontoCondicionado;

          Servico.CodigoCnae                := BoxEmpresas.Cnae;
          Servico.CodigoMunicipio           := BoxEmpresas.CodigoMunicipio;
         with tblSeda do    //não é da tabela sada e sim da seda
         begin
            first;
            while not eof do
            begin
               with Servico.ItemServico.Add do
               begin
                  Descricao     := fieldbyname( 'descricao_servico' ).asString;
                  Servico.Discriminacao := Servico.Discriminacao + #13 + fieldbyname( 'descricao_servico' ).asString;;
                  Quantidade    := fieldbyname( 'tempo' ).asInteger;
                  ValorUnitario := fieldbyname( 'Preco' ).asCurrency;
                  ValorTotal    := fieldbyname( 'Preco' ).asCurrency * fieldbyname( 'tempo' ).asCurrency;;
                  ValorServicos := ValorTotal;
                  ValorISs      := ValorTotal * Servico.Valores.Aliquota / 100 ;
                  Aliquota      := Servico.Valores.Aliquota;
                  BaseCalculo   := ValorTotal;
                  ValorPis      := ValorTotal * 0.0165;
                  ValorCofins   := valorTotal * 0.076;
                  Codigo        := fieldbyname( 'id_tmo' ).asString;

                  Servico.CodigoTributacaoMunicipio  := '140200100';
                  Servico.ItemListaServico        := '14.02';
                  Servico.MunicipioIncidencia     := StrToInt( boxEmpresas.CodigoMunicipio );

               end;
               next;
            end;
         end;
      end;

    end;
//        nfs.NotasFiscais.GerarRPS;
        // Envia a nota e Salva os Arquivos..

{
        if nfs.Enviar(tblNofisa.fieldbyname('numero').asInteger, false ) then
        begin

          if atualiza_nfs( nfs, tblNofisa ) then
          begin
            tblNofisa.fieldbyname( 'status' ).asString := 'NF-e Autorizada';
            tblNofisa.FieldByName('numero_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.Numero;
            tblNofisa.FieldByName('codigo_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.CodigoVerificacao;

                                               //      Showmessage('a3');

            tblNofisa.Post;
                                //         Showmessage('a4');

            nfs.NotasFiscais.items[0].Imprimir();
            frmAguardaNfe.Mensagens.Lines.Add( 'Processo concluído com sucesso...' );
            frmAguardaNfe.btnOk.Enabled := true;
            frmAguardaNFe.BtnOk.SetFocus;
            nfs.NotasFiscais.Clear;
          end;
        end;
 }

except
  on e:Exception do
  begin
            frmAguardaNfe.Mensagens.Lines.Add( 'ERRO NO PROCESSO: '+ e.Message );
            frmAguardaNfe.btnOk.Enabled := true;
            frmAguardaNFe.BtnOk.SetFocus;
            nfs.NotasFiscais.Clear;
  end;

end;


end;

procedure TBoxNFeGerenciamento.enviaNfs2;
begin
 try
 //passou //        nfs.NotasFiscais.GerarRPS;
        nfs.Configuracoes.Geral.SSLLib             := libWinCrypt;
        nfs.Configuracoes.Geral.SSLXmlSignLib      := xsMsXml;

//     nfs.Configuracoes.WebServices.Ambiente := taHomologacao;


        if nfs.Enviar(tblNofisa.fieldbyname('numero').asInteger, false ) then
        begin
          if atualiza_nfs( nfs, tblNofisa ) then
          begin
            tblNofisa.fieldbyname( 'status' ).asString := 'NF-e Autorizada';
            tblNofisa.FieldByName('numero_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.Numero;
            tblNofisa.FieldByName('codigo_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.CodigoVerificacao;

            tblNofisa.Post;

            nfs.NotasFiscais.items[0].Imprimir();
            frmAguardaNfe.Mensagens.Lines.Add( 'Processo concluído com sucesso...' );
            frmAguardaNfe.btnOk.Enabled := true;
            frmAguardaNFe.BtnOk.SetFocus;
            nfs.NotasFiscais.Clear;
          end;
        end;

 except
  on e:Exception do
  begin
            frmAguardaNfe.Mensagens.Lines.Add( 'ERRO NO PROCESSO: '+ e.Message );
            frmAguardaNfe.btnOk.Enabled := true;
            frmAguardaNFe.BtnOk.SetFocus;
            nfs.NotasFiscais.Clear;
  end;

 end;

end;

function TBoxNFeGerenciamento.Gera_Nfe_Acbr( xml, txt, assina, valida, transmite, imprime, email, exporta:boolean ):TAcbrNfe;
Var
    IniFile : String ;
    xie     : String;
    Ini     : TIniFile ;
    i : integer;
    st : String;
    auxString :String;
    arquivoXml :String;
    recibo:String;
    temServico : Boolean;
    mPIS : Currency;
    mCOFINS : Currency;
    mServ   : Currency;
    mISS    : Currency;
    CST_PIS : String;
    CST_COFINS : String;
    consumidor : Boolean;
    VL_PIS : Extended;
    VL_COFINS : Extended;
    VL_BC_PIS : Extended;
    VL_BC_COFINS : Extended;
    ALIQ_PIS_PERC : Extended;
    ALIQ_COFINS_PERC : Extended;
    TOT_PIS : Extended;
    TOT_COFINS : Extended;
//    OUTROVALOR : EXTENDED;
//    M: TStringStream;
begin
  consumidor := True;
  temServico := False;
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);

  frmAguardaNfe.Mensagens.Lines.Clear;
  frmAguardaNfe.Show;
  frmAguardaNFe.BringToFront;
  frmAguardaNfe.Mensagens.Lines.Add( 'Gerando XML...' );
  Application.ProcessMessages;

  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
 with ACBrNFe1 do
 begin
 try
  NotasFiscais.Clear;
  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
   with ide do
    begin
//     ACBrNFe1.NotasFiscais.Add.NFe.Ide.finNFe := fnAjuste, fnNormal, fnComplementar
      finNFe := fnNormal;
      if (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1411') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1202') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '2411') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '2202') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5411') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6411') or
//         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6603') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6202') or
         (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5202') then
             finNFE := fnDevolucao;
      if CheckBox2.Checked then
       begin
         finNFe := fnAjuste;
         NFRef.Add.refNFe := tblNofisa.FieldByName('NFe_Referenciada').AsString;//Campo chave Nfe referenciada
       end;
      if CheckBox3.Checked then
       begin
//         finNFe := fnAjuste;
         finNfe := fnDevolucao;
         NFRef.Add.refNFe := tblNofisa.FieldByName('NFe_Referenciada').AsString;//Campo chave Nfe referenciada
       end;
      if CheckBox4.Checked then
       begin
         finNFe := fnComplementar;
         NFRef.Add.refNFe := tblNofisa.FieldByName('NFe_Referenciada').AsString;//Campo chave Nfe referenciada
       end;
      if ( not (CheckBox2.Checked)) and ( not (tblNofisa.FieldByName('NFe_Referenciada').IsNull)) and
         ( not (CheckBox4.Checked)) and ( not (tblNofisa.FieldByName('NFe_Referenciada').IsNull)) and
         ( not (CheckBox3.Checked)) and ( not (tblNofisa.FieldByName('NFe_Referenciada').IsNull))  then
        begin
           Showmessage('Nf de ajuste/devolução/complementar. Marque ela como tal.');
           abort;
        end;
      natOp          := Substr(tblNofisa.FieldByName('Codigo_fiscal').AsString + '-' + tblNofisa.FieldByName('Descricao_Codigo_Fiscal').AsString,1,60);
   //   cNF            := tblNofisa.FieldByName('Numero').AsInteger;
      if CheckBox10.Checked then
        cNF := strToInt('43'+ Strzero(tblNofisa.FieldByName('numero').AsInteger,6,0));
      nNF            := tblNofisa.FieldByName('Numero').AsInteger;
      modelo         := 55;
      Serie          := 1;
      if BoxEmpresas.Feira then
        Serie        := 2;
      dEmi           := tblNofisa.FieldByName('Emissao').AsDateTime;
      dSaiEnt        := Date;
      tpAmb          := taProducao;//taHomologacao; //StrToInt(Ini.ReadString( 'WebService','Ambiente'  ,'')) ;
      if tblNofisa.FieldByName('Ent_sai').AsString = 'S' then
        tpNF              := tnSaida
      else
        tpNf              := tnEntrada;
        //comentada na versao 4.0
 //     if tblNofisa.FieldByName('Forma_Pagamento').AsString = 'V' then
 //       indPag    := ipVista
 //     else
 //       indPag    := ipPrazo; //copy(InString, 1, NumChars);


      cUF       := StrToInt(Copy(BoxEmpresas.CodigoMunicipio,1,2));
//                 StrToInt(Copy((Ini.ReadString( 'Emitente','CodCidade'  ,'')),1,2)) ; //43;
      cMunFG    := StrToInt(BoxEmpresas.CodigoMunicipio);
 //                StrToInt(Ini.ReadString( 'Emitente','CodCidade'  ,'')) ;
    end;
//           cUF         := strToInt( copy( frmMenu.tblEmpresa.fieldbyname( 'codigo_municipio' ).asString, 0 , 2 ) );
  //         cMunFG      := frmMenu.tblEmpresa.fieldbyname( 'codigo_municipio' ).asInteger;
    with emit do
     begin
       CNPJCPF := BoxEmpresas.CNPJ;
       IE      := BoxEmpresas.IE;
       IM      := BoxEmpresas.IM;
       CNAE    := BoxEmpresas.CNAE;
       IEST    := '';
       xNome   := BoxEmpresas.ConcessionariaEmUso.Text;
       xFant   := BoxEmpresas.Fantasia;
       EnderEmit.Fone    :=  BoxEmpresas.Fone;
       EnderEmit.CEP     :=  StrToInt(BoxEmpresas.CEP);
       EnderEmit.xLgr    :=  BoxEmpresas.Endereco;
       EnderEmit.nro     :=  BoxEmpresas.Numero;
       EnderEmit.xCpl    :=  BoxEmpresas.Complemento;
       EnderEmit.xBairro :=  BoxEmpresas.Bairro;
       EnderEmit.cMun    :=  StrToInt(BoxEmpresas.CodigoMunicipio);
       EnderEmit.xMun    :=  BoxEmpresas.Cidade;
       EnderEmit.UF      :=  BoxEmpresas.Estado;
       EnderEmit.cPais   :=  1058;
       EnderEmit.xPais   :=  'Brasil';
     end;
    //Criado para versão 4.0 da NFe
//    With Pag.Add do

     begin
       if (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1202') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1949') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '2949') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5409') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5152/5409') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5152') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5202') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5949') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '5910') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1411') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1662') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1662/1411') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1411/1662') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1411/1202') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6411') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6202') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6603') or
          (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '6949') then//Nfs sem valor a cobrar
           begin
             with Pag.Add do
              begin
               tPag :=  fpSemPagamento;
               vPag :=  0; //vSemPagamento
              end;
           end
       else //Nfs com valor a cobrar
       begin
        if (tblNofisa.FieldByName('CODIGO_FISCAL').AsString = '1102') then //COMPRA
          begin
             with Pag.Add do
              begin
               tPag :=  fpOutro;
               xPag :=  'Negociação futura';
               vPag :=  tblNofisa.FieldByName('tot_nota').AsCurrency; //vSemPagamento
              end;
          end
        else
        begin
         with tblNofisaFaturas Do
          begin
            Close;
            ParamByName('id').AsInteger := tblNofisa.FieldByName('id_Nofisa').AsInteger;
            Open;
            First;
  //          while not eof do
      //      For i := 0 to RecordCount -1 do
           Valor_Pago := 0;
//showmessage(CurrToSTR(tblNofisa.fieldByName('tot_nota').ASCurrency));
           while CURRTOSTR(Valor_Pago) <> CurrTOSTR(tblNofisa.FieldByName('tot_nota').AsCurrency) do  //true
             begin

              with pag.add do
               begin
                if (FieldByName('id_formas_Pagamento').AsString = '1') or //financiamento
                   (FieldByName('id_formas_Pagamento').AsString = '11') or //desconto financeira
                   (FieldByName('id_formas_Pagamento').AsString = '18') then //usado
                  begin
                   tPag :=  fpOutro;
                   vPag :=  FieldByName('Valor').AsCurrency;
                  end;

               if (FieldByName('id_formas_Pagamento').AsString = '1') then //financiamento
                 xPag :=  'Financiamento';
               if (FieldByName('id_formas_Pagamento').AsString = '11') then //desconto financeira
                 xPag :=  'Financiamento';
               if (FieldByName('id_formas_Pagamento').AsString = '18') then //usado
                 xPag :=  'Usado';

                if FieldByName('id_formas_Pagamento').AsString = '2' then //Duplicata
                 begin
                   tPag :=  fpDinheiro;
                   vPag :=  FieldByName('Valor').AsCurrency;
                 end;
                if (FieldByName('id_formas_Pagamento').AsString = '3') or   //cheque
                 (FieldByName('id_formas_Pagamento').AsString = '4') then //Cheque pré
                 begin
                  tPag :=  fpCheque;
                  vPag :=  FieldByName('Valor').AsCurrency;
                 end;
                if FieldByName('id_formas_Pagamento').AsString = '5' then //Cartao visa      6,7 e 8 não utilizados em NFs
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag := fpCartaoCredito;
                  tBand := bcVisa;
                  vPag :=  FieldByName('Valor').AsCurrency;
                 end;
                if FieldByName('id_formas_Pagamento').AsString = '9' then //Cartao Master
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  tBand := bcMasterCard;
                  vPag :=  FieldByName('Valor').AsCurrency;
                 end;
                if FieldByName('id_formas_Pagamento').AsString = '10' then //Cartao Hiper
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  tBand := bcHiperCard;
                  vPag :=  FieldByName('Valor').AsCurrency;
                 end;

               if FieldByName('id_formas_Pagamento').AsString = '13' then //Cartao BANRICOMPRAS
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  vPag :=  FieldByName('Valor').AsCurrency;
                  tBand := bcOutros;
                 end;
               if FieldByName('id_formas_Pagamento').AsString = '14' then //Cartao ELO
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  vPag :=  FieldByName('Valor').AsCurrency;
                  tBand := bcElo;
                 end;
               if FieldByName('id_formas_Pagamento').AsString = '15' then //Cartao DINNERS
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  vPag :=  FieldByName('Valor').AsCurrency;
//                  tBand := bcDinersClub;
                 end;
               if FieldByName('id_formas_Pagamento').AsString = '16' then //Cartao DINNERS
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  vPag :=  FieldByName('Valor').AsCurrency;
//                  tBand := bcAmericanExpress;
                 end;
               if FieldByName('id_formas_Pagamento').AsString = '17' then //Cartao BNDES
                 begin
                  if fieldByName('Vencimento').AsDateTime - tblNofisa.fieldByName('Emissao').AsDateTime < 20 then
                    tPag := fpCartaoDebito
                  else
                    tPag :=  fpCartaoCredito;
                  vPag :=  FieldByName('Valor').AsCurrency;
//                  tBand := bcOutros;
                 end;

                 Valor_Pago := Valor_Pago + FieldByName('Valor').AsCurrency;
//                 showmessage(CurrtoSTR(valor_pago));
                 next;
               end;
             end;
          end
        end;
       end;
     end;
    //Fim da criação
    with tblPessoas do
    begin
      Close;
      ParamByName('Id').AsInteger := tblNofisa.FieldByName('Id_Clientes').AsInteger;
      Open;
    end;
    with dest do
    begin
       CNPJCPF               := tiraPontoseBarrasCPF(tblPessoas.FieldByName('Num_CPF').AsString);
       xNome                 := tiraAcento(tblPessoas.FieldByName('Nome').AsString);
       EnderDest.xlgr        := tiraAcento(tblPessoas.FieldByName('Endereco').AsString);

       CNPJCPF               := tiraPontoseBarrasCPF(tblPessoas.FieldByName('Num_CPF').AsString);//'';//
       xNome                 := tiraAcento(tblPessoas.FieldByName('Nome').AsString);//'FDL TRADING CORPORATION';//
       EnderDest.xlgr        := tiraAcento(tblPessoas.FieldByName('Endereco').AsString);//'AVE. SUITE';//
       EnderDest.nro         := tblPessoas.FieldByName('Numero').AsString;//'0';//
       EnderDest.xCpl        := tblPessoas.FieldByName('Complemento').AsString;
       EnderDest.xBairro     := tiraAcento(tblPessoas.FieldByName('Bairro').AsString);
       EnderDest.cMun        := tblPessoas.FieldByName('Codigo_Municipio').AsInteger;//9999999;//
       EnderDest.xMun        := tiraAcento(tblPessoas.FieldByName('Cidade').AsString);//'EXTERIOR';//
       EnderDest.CEP         := StrToInt(tiraPontoseBarrasCPF(tblPessoas.FieldByName('CEP').AsString));
       EnderDest.UF          := tblPessoas.FieldByName('Estado').AsString;//'EX';//
       EnderDest.Fone        := tblPessoas.FieldByName('Fone1').AsString;
       dest.Email            := tblPessoas.FieldByName('email').AsString;
       if tblPessoas.FieldByName('estado').AsString <> 'EX' then
        begin
         enderDest.cPais       := 1058;
         enderDest.xPais       := 'BRASIL';//'BRASIL';//
        end
       else
        begin
         enderDest.cPais       := 2496;//1058;//
         enderDest.xPais       := 'ESTADOS UNIDOS';
         EnderDest.xMun        := 'EXTERIOR';
         EnderDest.cMun        := 9999999;
        end;
       if (tblPessoas.FieldByName('CPF').AsString = 'CNPJ') and (CheckBox5.checked) and
          ((tblNofisa.FieldByName('Origem').AsString <> 'U') and
           (tblNofisa.FieldByName('Origem').AsString <> 'M') and
           (tblNofisa.FieldByName('Origem').AsString <> 'N')) then
         case MessageDlg('Confirma a emissão de nf à consumidor final mesmo sendo para CNPJ?', mtConfirmation, [mbYes,mbNo], 0) of
           mrNo:
            Abort;
           mrYes:
         end;
 //      if (tblPessoas.FieldByName('CPF').AsString = 'CNPJ') and (not CheckBox9.checked) and
 //         ((tblNofisa.FieldByName('Origem').AsString <> 'U') and
  //         (tblNofisa.FieldByName('Origem').AsString <> 'M') and
   //        (tblNofisa.FieldByName('Origem').AsString <> 'N')) then
    //     case MessageDlg('Confirma a emissão de nf para CNPJ e com posterior comercialização?', mtConfirmation, [mbYes,mbNo], 0) of
     //      mrNo:
      //      Abort;
       //    mrYes:
      //   end;

       if (tblPessoas.FieldByName('CPF').AsString = 'CPF') or
          (CheckBox5.checked) or
          (tblPessoas.FieldByName('Consumidor').AsString = 'T') then
         begin
          consumidor := True;
          indIeDest := inNaoContribuinte;
          ide.indFinal := cfConsumidorFinal;

         // ie := '';   //para versao 3.1    ide.indfinal
 //        IE                       := 'ISENTO'  //para versao 2.0

          if(tblPessoas.fieldbyname( 'identidade' ).asString <> '' ) and
           (tblPessoas.FieldByName('CPF').AsString = 'CNPJ') then
            begin
              IE  := tblPessoas.FieldByName('Identidade').AsString;
              indIeDest := inContribuinte; // se não der utilizar checkbox5
            end;



         end
       else
         begin
           consumidor := False;
           indIeDest := inContribuinte;
           ide.indFinal := cfNao;
           IE  := tblPessoas.FieldByName('Identidade').AsString;

           if( tblPessoas.fieldbyname( 'identidade' ).asString = '' ) then
            begin
             ie := '';
             indIeDest := inNaoContribuinte;
             consumidor := True;
            end
           else
           begin

            if tblPessoas.FieldByName('Identidade').AsString = 'ISENTO' then
            begin
              indIeDest := inIsento;
              ie := '';
              consumidor := True;
            end;
           end;

           if ((tblNofisa.FieldByName('Origem').AsString = 'U') or
             (tblNofisa.FieldByName('Origem').AsString = 'M') or
             (tblNofisa.FieldByName('Origem').AsString = 'O') or
             (tblNofisa.FieldByName('Origem').AsString = 'N')) then
           begin
             indIeDest := inNaoContribuinte;
             ide.indFinal := cfConsumidorFinal;
             consumidor := True;
           end;
         end;
       ISUF                   := '';
    end;
    tblNofisa.Edit;
    if consumidor then
      tblNofisa.FieldByName('Consumidor_final').AsString := 'T'
    else
      tblNofisa.FieldByName('Consumidor_final').AsString := 'F';
    tblNofisa.Post;
    if Dest.EnderDest.UF = 'EX'
     then ide.idDest := doExterior
    else if Dest.EnderDest.UF = Emit.EnderEmit.UF
          then ide.idDest := doInterna
            else ide.idDest := doInterestadual;


   with cobr.Fat do
     begin
       nFat           := tblNofisa.fieldbyname('numero').asString;
       vOrig          := tblNofisa.fieldbyname('tot_nota').asCurrency;//+outrovalor;
//             vDesc          := tblNotasFiscais.fieldbyname( 'valor_retencao_pis_cofins' ).asCurrency;
       vLiq           := tblNofisa.fieldbyname( 'tot_nota' ).AsCurrency;//+outrovalor;
//                               tblNotasFiscais.fieldbyname( 'valor_retencao_pis_cofins' ).asCurrency;
     end;

  with Cobr do
    begin
      with tblNofisaFaturas do
      begin
        Close;
        ParamByName('id').AsInteger :=
          tblNofisa.FieldByName('Id_Nofisa').AsInteger;
        Open;
        Last;
        First;
        i := 0;
        while not eof do
          begin
           if fieldByName('id_formas_pagamento').asInteger <> 12 then
           begin
            inc(i);
            with Dup.Add do
             begin
              dVenc := tblNofisaFaturas.FieldByName('Vencimento').AsDateTime;
              nDup :=  StrZero(i,3,0);//tblNofisa.FieldByName('Numero').AsString + '-' + INtToStr(i);//StrZero(i,3,0); //tblNofisaFaturas.FieldByName('Fatura').AsString;
              vDup :=  tblNofisaFaturas.FieldByName('Valor').AsCurrency;
             end;
           end;
           tblNofisaFaturas.Next;
          end;
      end;
    end;
  tblSada.Close;
  tblSada.ParamByName('idnofisa').AsInteger :=
    tblNofisa.FieldByName('id_nofisa').AsInteger;
  tblSada.Open;
  tblSada.Last;
  tblSada.First;
  i := 0;
  while not tblSada.eof do
   begin
    with Det.Add do
    begin
      with prod do
       begin
        inc(i);
        nitem         := i;
        cprod         := tblSada.FieldByName('Codigo').AsString;
        cean          := '';

        if tblSada.FieldByName('Descricao').AsString = 'Motocicleta' then

         begin

         if (tblNofisa.FieldByName('Origem').AsString = 'U') or
            (tblNofisa.FieldByName('Origem').AsString = 'M') then
          begin
           cProd      := tblSada.FieldByName('Chassi').AsString;
           xProd      := 'Marca:' + tblSada.FieldByName('Marca').AsString +
            ' Modelo:' + tblSada.FieldByName('Modelo').AsString +
            ' Cor:' + tblSada.FieldByName('Cor').AsString +
            ' Chassi:' + tblSada.FieldByName('Chassi').AsString +
            ' Ano fabricação:' + tblSada.FieldByName('Ano_fabricacao').AsString +
            ' Ano modelo:' + tblSada.FieldByName('Ano_Modelo').AsString;
           if (Len(tblSada.FieldByName('NCM').AsString) = 0) or
               (tblSada.FieldByName('NCM').AsString = null) then
              NCM := '87112010'
           else
              NCM := tblSada.FieldByName('NCM').AsString;
          end
         else
         if (tblNofisa.FieldByName('Origem').AsString = 'N') then
          begin
//           nitem := 1;
           cProd := tblSada.FieldByName('Chassi').AsString;
           xProd := 'Yamaha';
           if (Len(tblSada.FieldByName('NCM').AsString) = 0) or
               (tblSada.FieldByName('NCM').AsString = null) then
              prod.NCM := '87112010'
           else
              NCM := tblSada.FieldByName('NCM').AsString;
           infAdProd := 'Modelo:' + tblSada.FieldByName('Modelo').AsString +
             ' Chassi:' +tblSada.FieldByName('Chassi').AsString +
             ' Cor:' + tblSada.FieldByName('Cor').AsString +
             ' Ano Fabricação:' + tblSada.FieldByName('Ano_fabricacao').AsString +
             ' Ano Modelo:' + tblSada.FieldByName('Ano_Modelo').AsString +
             ' Renavam:' + tblSada.FieldByName('Renavam').AsString +
             ' Motor:' +tblSada.FieldByName('Motor').AsString +
             ' Potência:' +tblSada.FieldByName('Potencia').AsString + ' CV';
           with VeicProd do
            begin
              veicprod.Cilin := Strzero(tblSada.FieldByName('cilindradas').AsInteger,4,0);//CM3
              veicprod.CMT := '0'; //CMKG
              tpOp := toVendaConcessionaria;
              chassi := tblSada.FieldByName('Chassi').AsString;
              ccor := '1';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'AMARELA' then
                ccor := 'AM';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'AZUL' then
                ccor := 'AZ';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'BEGE' then
                ccor := 'BG';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'BRANCA' then
                ccor := 'BR';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'CINZA' then
                ccor := 'CZ';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'DOURADA' then
                ccor := 'DR';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'GRENA' then
                ccor := 'GR';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'LARANJA' then
                ccor := 'LJ';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'PRATA' then
                ccor := 'PR';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'PRETA' then
                ccor := 'PT';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'ROXA' then
                ccor := 'RX';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'VERDE' then
                ccor := 'VD';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'VERMELHA' then
                ccor := 'VM';
              //ccorDenatran
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'AMARELA' then
                ccorDenatran := '01';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'AZUL' then
                ccorDenatran := '02';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'BEGE' then
                ccorDenatran := '03';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'BRANCA' then
                ccorDenatran := '04';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'CINZA' then
                ccorDenatran := '05';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'DOURADA' then
                ccorDenatran := '06';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'GRENA' then
                ccorDenatran := '07';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'LARANJA' then
                ccorDenatran := '08';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'MARROM' then
                ccorDenatran := '09';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'PRATA' then
                ccorDenatran := '10';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'PRETA' then
                ccorDenatran := '11';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'ROSA' then
                ccorDenatran := '12';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'ROSA METAL' then
                ccorDenatran := '12';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'ROXA' then
                ccorDenatran := '13';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'VERDE' then
                ccorDenatran := '14';
              if Alltrim(tblSada.FieldByName('Cor').AsString) = 'VERMELHA' then
                veicprod.ccorDenatran := '15';

                      {01-AMARELO 02-AZUL
                       03-BEGE
                        04-BRANCA
                      05-CINZA
                      06-DOURADA
                      07-GRENA
                      08-LARANJA
                      09-MARROM
                      10-PRATA
                      11-PRETA
                      12-ROSA
                      13-ROXA
                      14-VERDE
                      15-VERMELHA
                      16-FANTASIA
                       TpRest - tipo de restrição
                      0 - Não há;
                      1 - Alienação Fiduciária;
                      2 - Arrendamento Mercantil;
                      3 - Reserva de Domínio;
                      4 - Penhor de Veículos;
                      9 - outras. (v2.0)
                      }
              tpRest := 0;
              if (Copy(tblNofisa.FieldByName('OBS').AsString,1,5) = 'Alien') or
                 (Copy(tblNofisa.FieldByName('OBS').AsString,1,5) = 'ALIEN') then
                 tpRest := 1;
              if (Copy(tblNofisa.FieldByName('OBS').AsString,1,6) = 'Reserv') or
                 (Copy(tblNofisa.FieldByName('OBS').AsString,1,6) = 'RESERV') then
                 tpRest := 3;
              xcor := tblSada.FieldByName('Cor').AsString;
              PesoL := '0';
              PesoB := '0';
              nSerie := '0';
              if ALLTRIM(tblSada.FieldByName('Combustivel').AsString) = 'GASOLINA' then
                tpcomb := '02';
              if ALLTRIM(tblSada.FieldByName('Combustivel').AsString) = 'ALCOOL/GASOLINA' then
                tpcomb := '16';
              if ALLTRIM(tblSada.FieldByName('Combustivel').AsString) = 'GAS/ALC' then
                tpcomb := '16';

              if tblSada.FieldByName('Combustivel').AsString = 'GASOLINA/ELETRICO' then
                tpcomb := '18';
              if tblSada.FieldByName('Combustivel').AsString = 'ALCOOL/GASOLINA/GNV' then
                tpcomb := '17';
             // tpComb := tblSada.FieldByName('Combustivel').AsString;
              if tblSada.FieldByName('Motor').AsString = '' then
                nMotor := ' '
              else
                nMotor := tblSada.FieldByName('Motor').AsString;

             // CMKG := '0';
              dist := '0';// Distancia entre eixos
             // Renavam := '000'+tblSada.FieldByName('Renavam').AsString;
              anoFab := tblSada.FieldByName('Ano_fabricacao').AsInteger;
              anoMod := tblSada.FieldByName('Ano_Modelo').AsInteger;
              tpPint := 'S';
              tpVeic :=  4;
              espVeic :=  1;
              VIN := 'N';//tblSada.FieldByName('Chassi').AsString;
              CondVeic := cvAcabado; //1-veiculo acabado
              pot := tblSada.FieldByName('Potencia').AsString;
              cMod := '0';
             // cMod := tblSada.FieldByName('Renavam').AsInteger;

            end;
          end;
         end
        else
         begin
          xProd      := tblSada.FieldByName('Descricao').AsString;
          if tblSada.FieldByName('NCM').AsString = '' then
            NCM          := TiraPontoseBarrasCPF(tblSada.FieldByName('NCM1').AsString)//tblItems.fieldbyname( 'posicao_fiscal' ).asString;
          else
            NCM := tblSada.FieldByName('NCM').AsString;
         end;
        CFOP         := tblSada.FieldByName('CFOP').AsString;
        uCom         := 'PC';//tblSada.FieldByName('Unidade').AsString;
        qCom         := tblSada.FieldByName('Qtde').AsFloat;
        vUnCom       := tblSada.FieldByName('Preco').AsFloat;
        vUnTrib      := tblSada.FieldByName('Preco').AsFloat;
        uTrib        := 'PC';//tblSada.FieldByName('Unidade').AsString;
        qTrib        := tblSada.FieldByName('Qtde').AsFloat;

        prod.vOutro  := tblSada.FieldByName('Outro_Valor').AsFloat;//outroValor;

        if tblSada.FieldByName('Desconto').AsString <> '' then
          vDesc        := tblSada.FieldByName('Desconto').AsFloat;
        vProd        := tblSada.FieldByName('Preco').AsFloat *
                        tblSada.FieldByName('Qtde').AsFloat;
        if (tblSada.FieldByName('CFOP').AsString = '5656') or
           (tblSada.FieldByName('CFOP').AsString = '1662') then
           begin
              Comb.cProdANP  := 620505001;
              Comb.descANP   := 'OUTROS OLEOS LUBRIFICANTES AUTOMOTIVOS';
              Comb.UFcons    := 'RS';
           end;
        if tblSada.FieldByName('CFOP').AsString = '6656' then
           begin
              Comb.cProdANP  := 620505001;
              Comb.descANP   := 'OUTROS OLEOS LUBRIFICANTES AUTOMOTIVOS';
              Comb.UFcons    := dest.EnderDest.UF;//tblPessoas.FieldByName('Estado').AsString;//'EX';//tbl'RS';
           end;
//                showmessage(tblSada.FieldByName('CFOP').AsString);
        if (tblPessoas.FieldByName('CPF').AsString = 'CPF') and (tblPessoas.FieldByName('Estado').AsString <> 'RS') then
             if (tblSada.FieldByName('CFOP').AsString = '6404') then //or (tblSada.FieldByName('CFOP').AsString = '6656') then
                begin
                  imposto.ICMSUFDest.vBCUFDest := 0.00;
                  imposto.ICMSUFDest.pFCPUFDest := 2;
                  imposto.ICMSUFDest.pICMSUFDest := 17.5;//18; //17
                  if tblSada.FieldBYName('cst').AsString = '260'then
                    imposto.ICMSUFDest.pICMSInter := 4.00       //é 4.00 7.00 ou 12.00
                  else
                    imposto.ICMSUFDest.pICMSInter := 12.00;       //é 4.00 7.00 ou 12.00
                  imposto.ICMSUFDest.pICMSInterPart := 100;
                  imposto.ICMSUFDest.vFCPUFDest := 0.00;
                  imposto.ICMSUFDest.vICMSUFDest := 0.00;
                  imposto.ICMSUFDest.vICMSUFRemet := 0.00;

                end;   //descomentado em 12/04/2018    //descomentado em 02/07/2018
//              }

       if tblPessoas.FieldByName('Estado').AsString = 'EX' then
         with prod.di.add do
          begin
//              NF DE IMPORTAÇÃO
             nDi := '1105708103';
             dDi := StrToDateTime('30/03/2011');
             xLocDesemb := 'EADI/NH';
             UFDesemb := 'RS';
             dDesemb := StrToDateTime('30/03/2011');//date -1;
             cExportador := '31837';
             with adi.Add do
               begin
                 nAdicao := 1;
                 nSeqAdi := 1;
                 cFabricante := '31387';
               end;
       //   end;
       end;

      with imposto.icms do // criado para colocar icms substituicao em 01/01/2019
      begin
       if consumidor then
        begin
         if (BoxEmpresas.Obrigar_ICMS_ST_NFE = true )  then
          begin
             imposto.ICMS.pRedBCEfet := tblSada.FieldByName('pRed_BCEfet').AsCurrency;
             imposto.ICMS.vBCEfet := tblSada.FieldByName('vBC_Efet').AsCurrency;
             imposto.ICMS.pICMSEfet := tblSada.FieldByName('pICMS_Efet').AsCurrency*100;
             imposto.ICMS.vICMSEfet := tblSada.FieldByName('vICMS_Efet').AsCurrency;
          end;
        end
       else
        begin
         if //((tblsada.FieldByName('vICMS_STRet').AsString = null) or
            //(tblsada.FieldByName('vBC_STRet').AsString = null) or
           // (tblsada.FieldByName('pST').AsString = null)) and
            (BoxEmpresas.Obrigar_ICMS_ST_NFE = True)  then
            begin
//              Showmessage('Cadastro incompleto. Envio cancelado.');
      //        abort;
            end;
         if (BoxEmpresas.Obrigar_ICMS_ST_NFE = true )  then
          begin
            imposto.ICMS.vBCSTRet := tblSada.FieldByName('vBC_STRet').AsCurrency;
            imposto.icms.pST := tblSada.FieldByName('pST').AsCurrency;
            imposto.icms.vICMSSubstituto := tblSada.FieldByName('ICMS_Substituto').AsCurrency;//0.00;//ACRESCIDO EM 10/01/2020
            imposto.icms.vICMSSTRet := tblSada.FieldByName('vICMS_STRet').AsCurrency;

          end;
        end;


      end;

      with imposto.icms do
       begin
         st := copy( tblSada.Fieldbyname('CST').AsString , 2 , 2 );
         if st = '00'
            then cst := cst00;
         if st = '10'
            then cst := cst10;
         if st = '20'
            then cst := cst20;
         if st = '30'
            then cst := cst30;
         if st = '40'
            then cst := cst40;
         if st = '41'
            then cst := cst41;
         if st = '51'
            then cst := cst51;
         if st = '60'
            then cst := cst60;
         if st = '70'
            then cst := cst70;
         if st = '90'
            then cst := cst90;
         if (Copy(tblSada.Fieldbyname('CST').AsString , 1 , 1 )) = '0' then
           orig      := oeNacional;
         if (Copy(tblSada.Fieldbyname('CST').AsString , 1 , 1 )) = '1' then
           orig      := oeEstrangeiraImportacaoDireta;
         if (Copy(tblSada.Fieldbyname('CST').AsString , 1 , 1 )) = '2' then
           orig      := oeEstrangeiraAdquiridaBrasil;
         pICMS     := tblSada.FieldByName('Aliq_ICMS').AsCurrency * 100;
         vICMS     := tblSada.FieldByName('ICMS').AsCurrency;
        if tblSada.FieldByName('CFOP').AsString ='6404' then
          IMPOSTO.ICMS.modBCST := dbisPrecoTabelado;

        if tblSada.FieldByName('Base_ICMS').AsString <> '' then
           vBC       := tblSada.FieldByName('Base_ICMS').AsCurrency
        else
          vBC       := tblSada.FieldByName('Preco').AsCurrency;

        if tblsada.FieldByName('cst').AsString = '051' then
          vBC       := 0;
          //        IPI.CST := ipi01;
                     if tblSada.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_PIS         := '04' // tributavel monofasica -aliquota zero
                     else
                       CST_PIS         := '01'; // tributavel
                     if tblSada.FieldByName('CFOP').AsString = '5949' then //codigo_fiscal
                       CST_PIS      := '08';
                     if (tblSada.FieldByName('ST_COFINS').AsString = 'T') or
                        (tblSada.FieldByName('CFOP').AsString = '5949') then //CODIGO_FISCAL
                       VL_BC_PIS       := 0
                     else
                       VL_BC_PIS       := (tblSada.FieldByName('Preco').AsCurrency * tblSada.FieldByName('Qtde').asFloat) -
                                           tblSada.FieldByName('Desconto').AsCurrency;
                     if (tblSada.FieldByName('ST_COFINS').AsString = 'T') or (tblSada.FieldByName('CFOP').AsString = '5949') then //codigo_fiscal
                       ALIQ_PIS_PERC   := 0
                     else
                       if (tblSada.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (tblSada.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_PIS_PERC     := 0.65;
                           VL_PIS            := ( tblSada.FieldByName('Preco').AsCurrency *
                                                  tblSada.FieldByName('Qtde').asFloat ) * ( 0.65 / 100 );
                         end
                       else
                         begin
                           ALIQ_PIS_PERC     := 1.65;
                           VL_PIS            := (( tblSada.FieldByName('Preco').AsCurrency *
                                                   tblSada.FieldByName('Qtde').asFloat ) -
                                                   tblSada.FieldByName('Desconto').AsCurrency) * ( 1.65 / 100 );
                         end;
               //      QUANT_BC_PIS      := 0;
              //       ALIQ_PIS_R        := 0;

                     if tblSada.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_COFINS      := '04'
                     else
                       CST_COFINS      := '01';
                     if tblSada.FieldByName('CFOP').AsString = '5949' then //Codigo_fiscal
                       CST_COFINS      := '08';
                     if (tblSada.FieldByName('ST_COFINS').AsString = 'T') or (tblSada.FieldByName('CFOP').AsString = '5949') then //Codigo_fiscal
                       VL_BC_COFINS    := 0
                     else
                       VL_BC_COFINS    := (tblSada.FieldByName('Preco').AsCurrency *
                                           tblSada.FieldByName('Qtde').asFloat) -
                                           tblSada.FieldByName('Desconto').AsCurrency;
                     if (tblSada.FieldByName('ST_COFINS').AsString = 'T') or (tblSada.FieldByName('CFOP').AsString = '5949') then       //Codigo_fiscal
                       ALIQ_COFINS_PERC   := 0
                     else
                       if (tblSada.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (tblSada.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_COFINS_PERC     := 3;
                           VL_COFINS         := ( tblSada.FieldByName('Preco').AsCurrency * tblSada.FieldByName('Qtde').asFloat ) * ( 3 / 100 );
                         end
                       else
                         begin
                           ALIQ_COFINS_PERC  := 7.6;
                           VL_COFINS         := (( tblSada.FieldByName('Preco').AsCurrency *
                                                   tblSada.FieldByName('Qtde').asFloat ) -
                                                   tblSada.FieldByName('Desconto').AsCurrency) * ( 7.6 / 100 );
                         end;
                     if (CFOP = '5933') or (CFOP = '6933') then //mao de obra
                       begin
                         CST_PIS := '01';
                          VL_BC_PIS       := tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := (tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    :=tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := (tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
                       end;
                     if CST_COFINS <> '04' then
                      if (CFOP = '5152') or (CFOP = '5409') or (CFOP = '5949') then
                       begin
                          CST_PIS := '08';
                          VL_BC_PIS := 0;
                          ALIQ_PIS_PERC :=0;
                          VL_PIS := 0;
                          CST_COFINS := '08';
                          VL_BC_COFINS := 0;
                          ALIQ_COFINS_PERC :=0;
                          VL_COFINS := 0;
                       end;
                     if (tblNofisa.FieldByName('Origem').AsString = 'G') and
                        ((tblNofisa.FieldByName('Codigo_Fiscal').AsString = '1949') or
                        (tblNofisa.FieldByName('Codigo_Fiscal').AsString = '6949')) then
                       begin
                          CST_PIS := '08';
                          VL_BC_PIS := 0;
                          ALIQ_PIS_PERC :=0;
                          VL_PIS := 0;
                          CST_COFINS := '08';
                          VL_BC_COFINS := 0;
                          ALIQ_COFINS_PERC :=0;
                          VL_COFINS := 0;
                       end;
                     if tblNofisa.FieldByName('ENT_SAI').AsString = 'E' then
                       begin
                          CST_PIS := '70';
                          VL_BC_PIS := 0;
                          ALIQ_PIS_PERC :=0;
                          VL_PIS := 0;
                          CST_COFINS := '70';
                          VL_BC_COFINS := 0;
                          ALIQ_COFINS_PERC :=0;
                          VL_COFINS := 0;
                       end;
                     if (tblNofisa.FieldByName('ENT_SAI').AsString = 'E') and
                        (tblNofisa.FieldByName('Origem').AsString = 'U') then //Compra de usadas
                       begin
     //                     CST_IPI       := '02';
    //                      VL_BC_ICMS    := 0;
     //                     VL_ICMS       := 0;
                          CST_PIS       := '74';
                          CST_COFINS    := '74';
                       end;
                     if (tblNofisa.FieldByName('ENT_SAI').AsString = 'E') and
                        (tblNofisa.FieldByName('Origem').AsString = 'G') then //Entrada peças para garantia
                       begin
     //                     CST_IPI     := '02';
                          CST_PIS     := '74';
                          CST_COFINS  := '74';
                       end;

                //     QUANT_BC_COFINS   := 0;
                //     ALIQ_COFINS_R     := 0;

       //Criar os valores de PIS e COFINS em cada produto
//       VL_PIS := FormatFloat('#,##0.00',(VL_PIS));
//       VL_COFINS := FormatFloat('#,##0.00',StrToFloat(VL_COFINS));
  //     VL_BC_PIS := FormatFloat('#,##0.00',StrToFloat(VL_BC_PIS));
    //   VL_BC_COFINS := FormatFloat('#,##0.00',StrToFloat(VL_BC_COFINS));
       VL_PIS := (ROUND(VL_PIS*100))/100;
       VL_COFINS := (ROUND(VL_COFINS*100))/100;
       VL_BC_PIS := (ROUND(VL_BC_PIS*100))/100;
       VL_BC_COFINS := (ROUND(VL_BC_COFINS*100))/100;
                                      //                   SHOWMESSAGE(CURRTOSTR(VL_PIS));
//       showmessage(currtostr(tot_pis));
       with imposto.PIS do
         begin
           if CST_PIS = '01' then
              CST  := PIS01;
           if CST_PIS = '04' then
              CST  := PIS04;
           if CST_PIS = '08' then
              CST  := PIS08;
           if CST_PIS = '70' then
              CST  := PIS70;
           if CST_PIS = '74' then
              CST  := PIS74;
           vBC  := VL_BC_PIS;
           vPIS := VL_PIS;
           pPIS := ALIQ_PIS_PERC;
         end;
       with imposto.COFINS do
         begin
           if CST_COFINS = '01' then
              CST  := COF01;
           if CST_COFINS = '04' then
              CST  := COF04;
           if CST_COFINS = '08' then
              CST  := COF08;
           if CST_COFINS = '70' then
              CST  := COF70;
           if CST_COFINS = '74' then
              CST  := COF74;
           vBC  := VL_BC_COFINS;
           vCOFINS := VL_COFINS;
           pCOFINS := ALIQ_COFINS_PERC;
         end;
       tblSada.Edit;
       tblSada.FieldByName('VL_PIS').AsCurrency              := VL_PIS;
       tblSada.FieldByName('CST_PIS').AsString            := CST_PIS;
       tblSada.FieldByName('VL_BC_PIS').AsCurrency        := VL_BC_PIS;
       tblSada.FieldByName('ALIQ_PIS_PERC').AsCurrency    := ALIQ_PIS_PERC;
       tblSada.FieldByName('VL_COFINS').AsCurrency           := VL_COFINS;
       tblSada.FieldByName('CST_COFINS').AsString         := CST_COFINS;
       tblSada.FieldByName('VL_BC_COFINS').AsCurrency     := VL_BC_COFINS;
       tblSada.FieldByName('ALIQ_COFINS_PERC').AsCurrency := ALIQ_COFINS_PERC;
       tblSada.Post;
       TOT_PIS := TOT_PIS + VL_PIS;
       TOT_COFINS := TOT_COFINS + VL_COFINS;
       VL_PIS :=0;
       VL_COFINS := 0;
       VL_BC_COFINS :=0;
       VL_BC_PIS :=0;
    //   CST_PIS := ;
    //   CST_COFINS :=0 ;
       ALIQ_PIS_PERC := 0;
       ALIQ_COFINS_PERC:=0;

//        IMPOSTO.IPI.pIPI := 35;
  //    IF tblSada.FieldByName('Modelo').AsString = 'YZF R6' THEN
    //    IMPOSTO.IPI.vIPI := 7497.92
//      ELSE
  //      IMPOSTO.IPI.vIPI := 10601.94;
      end;
     end;
    tblSada.Next;
    end;
   end;
   tblSeda.Close;
   tblSeda.ParamByName('idnofisa').AsInteger :=
     tblNofisa.FieldByName('id_nofisa').AsInteger;
   tblSeda.Open;
   tblSeda.Last;
   tblSeda.First;
 if tblSeda.RecordCount <> 0 then
  begin
   while not tblSeda.eof do
    begin
     with Det.Add do
      begin
       with prod do
        begin
          inc(i);
          nitem         := i;
          cprod         := tblSeda.FieldByName('ID_TMO').AsString;
          cean          := '';
          xProd        := tblSeda.FieldByName('Descricao_Servico').AsString;
          if tblPessoas.FieldByName('Estado').AsString <> 'RS' then
             CFOP         := '6933'
          else
             CFOP         := '5933';
          NCM := '99999999';//999999';//tblSada.FieldByName('NCM').AsString;
          uCom         := 'PC';//tblSada.FieldByName('Unidade').AsString;
          qCom         := tblSeda.FieldByName('Tempo').AsFloat;
          vUnCom       := tblSeda.FieldByName('Preco').AsFloat;
          vUnTrib      := tblSeda.FieldByName('Preco').AsFloat;
          uTrib        := 'PC';//tblSada.FieldByName('Unidade').AsString;
          qTrib        := tblSeda.FieldByName('Tempo').AsFloat;
          vProd        := tblSeda.FieldByName('Preco').AsFloat *
                          tblSeda.FieldByName('Tempo').AsFloat;
          imposto.ICMS.CST := cst41;
          imposto.ICMS.vBC := 0;
          imposto.ICMS.vICMS := 0;
          imposto.PIS.CST := PIS01;
          imposto.Cofins.Cst := COf01;
          CST_PIS := '01';
          VL_BC_PIS       := tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat;
          ALIQ_PIS_PERC     := 1.65;
          VL_PIS            := (tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
          CST_COFINS := '01';
          VL_BC_COFINS    :=tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat;
          ALIQ_COFINS_PERC  := 7.6;
          VL_COFINS         := (tblSeda.FieldByName('preco').AsCurrency * tblSeda.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
{
       VL_PIS := (ROUND(VL_PIS*100))/100;
       VL_COFINS := (ROUND(VL_COFINS*100))/100;
       VL_BC_PIS := (ROUND(VL_BC_PIS*100))/100;
       VL_BC_COFINS := (ROUND(VL_BC_COFINS*100))/100;
          imposto.pis.vBC  := VL_BC_PIS;
          imposto.pis.vPIS := VL_PIS;
          imposto.pis.pPIS := ALIQ_PIS_PERC;
          imposto.cofins.vBC  := VL_BC_COFINS;
          imposto.cofins.vCOFINS := VL_COFINS;
          imposto.cofins.pCOFINS := ALIQ_COFINS_PERC;

          TOT_PIS := TOT_PIS + VL_PIS;
          TOT_COFINS := TOT_COFINS + VL_COFINS;
 }
 
          if (tblNofisa.FieldByName('val_Iss').AsInteger <> null) and
             (tblNofisa.FieldByName('Val_iss').AsFloat <> 0) then
          with imposto.ISSQN do
            begin
             temServico := True;
             IMPOSTO.ISSQN.cListServ := '14.01';
             imposto.ISSQN.cMunFG := StrToInt(BoxEmpresas.CodigoMunicipio);
             vBC     := tblSeda.FieldByName('Preco').AsFloat *
                          tblSeda.FieldByName('Tempo').AsFloat;
             vISSQN  := (tblSeda.FieldByName('Preco').AsFloat *
                          tblSeda.FieldByName('Tempo').AsFloat) *
                         tblNofisa.FieldByName('ISSQN').AsCurrency/100;
             vAliq   := tblNofisa.FieldByName('ISSQN').AsCurrency;
             mServ := mServ + imposto.ISSQN.vBC;
             mISS  := mISS + imposto.ISSQN.vISSQN;
             cSitTrib := ISSQNcSitTribNORMAL;
            end;
        end;
      end;
      tblSeda.Next;
    end;
  end;
   with total do
    begin
      ICMStot.vPIS       := TOT_PIS;
      ICMStOT.vCOFINS    := TOT_COFINS;
      ICMSTot.vOutro     := (tblNofisa.FieldByName('val_outros').AsCurrency);
      ICMSTot.vBC        := (tblNofisa.FieldByName('Base_ICMS').AsCurrency);
      ICMSTOT.vICMS      := (tblNofisa.FieldByName('Val_ICMS').AsCurrency);
      ICMSTOT.vBCST      := 0;
      ICMSTOT.vST        := 0;
      ICMSTOT.vProd      := (tblNofisa.FieldByName('tot_prod').AsCurrency) +
   //                         (tblNofisa.FieldByName('Val_Serv').AsCurrency) +
                            (tblNofisa.FieldByName('Desc_Pec').AsCurrency);
//      ICMSTOT.vFrete                  := tblNotasFiscais.fieldbyname( 'valor_do_frete' ).asCurrency;
//      ICMSTOT.vSeg                    := tblNotasFiscais.fieldbyname( 'valor_seguro' ).ascurrency;
      ICMSTOT.vDesc      := tblNofisa.fieldbyname('Desc_Pec').ascurrency;
//      ICMSTOT.vIPI                    := tblNotasFiscais.fieldbyname( 'valor_do_ipi' ).asCurrency;
      ICMSTOT.vNF        := (tblNofisa.FieldByName('tot_Nota').AsCurrency);//+outrovalor;
      if TemServico then
        begin
          ISSQNtot.vBC := tblNofisa.FieldByName('Val_Serv').AsCurrency;
          ISSQNTot.vISS :=  tblNofisa.FieldByName('Val_iss').AsCurrency;
          ISSQNTot.vServ := tblNofisa.FieldByName('Val_Serv').AsCurrency;
          ISSQNTot.dCompet := tblNofisa.FieldByName('Emissao').AsDateTime;
        end
      else
        begin
          ISSQNtot.vBC := 0;
          ISSQNtot.vISS := 0;
          ISSQNtot.vServ := 0;
        end;

   end;
   with transp do
      begin
          if tblNoFisa.fieldbyname('frete_tipo').AsString = '1' then
              modFrete    := mfContaEmitente
          else
              modFrete    := mfContaDestinatario;
          if tblNofisa.fieldbyname('Cod_trans').AsString <>  '' then
            begin
             tblPessoas.Close;
             tblPessoas.ParamByName('id').AsInteger :=
               tblNofisa.FieldByName('Cod_trans').AsInteger;
             tblPessoas.Open;
             with Transporta do
               begin
                 CNPJCPF         := tiraPontoseBarrasCPF(tblPessoas.fieldbyname('Num_CPF').AsString);
                 xNome           := tiraAcento(tblPessoas.fieldbyname( 'Nome' ).AsString);
                 if tblPessoas.FieldByName('CPF').AsString = 'CPF' then
                   IE            := '' //ISENTO'
                 else
                   begin
                    xie := tblPessoas.FieldByName('Identidade').AsString;
                    xie := StringReplace( xie , '/' , '', [rfReplaceAll] );
                    xie := StringReplace( xie, '-' , '', [rfReplaceAll] );
                    xie := StringReplace( xie, '.' , '', [rfReplaceAll] );
                    IE           := xie;
                   end;
                 xEnder          := tiraAcento(tblPessoas.fieldbyname('Endereco').asString);
                 xMun            := tiraAcento(tblPessoas.fieldbyname('Cidade').asString ) ;
                 UF              := tblPessoas.fieldbyname('Estado' ).AsString;
//                 veicTransp.placa  := tblNofisa.fieldbyname( 'placa' ).asString;
  //               veicTransp.UF     := tblPessoas.fieldbyname( 'Estado' ).asString;//uf da placa do veiculo
               end;
           end;

           with vol.Add do
           begin
            if not tblNofisa.fieldByName('Peso_bruto').isNull then
             begin
  //             Showmessage('pesobruto');
//               Showmessage(tblNofisa.fieldbyname( 'Peso_bruto' ).asString);
              pesoB                    := tblNofisa.fieldbyname( 'peso_bruto' ).asCurrency;
             end;
            if not tblNofisa.fieldbyname( 'quantidade_volumes' ).IsNull then
             begin
              qVol                      := tblNofisa.fieldbyname( 'quantidade_volumes' ).asInteger;
              esp                       := 'VOLUMES';//tblNotasFiscais.fieldbyname( 'especie_volumes' ).asString;
             end;
//             marca                     := tblNotasFiscais.fieldbyname( 'marca' ).asString;
        //     pesoL                     := 1170.06;//tblNotasFiscais.fieldbyname( 'peso_liquido' ).asFloat;
//             pesoB                     := 80;//tblNotasFiscais.fieldbyname( 'peso_bruto' ).asFloat;
           end;
        end;
//      if tblNotasFiscais.fieldbyname( 'planodepagamento' ).asInteger > 0 then
//        begin

//        end;
           if tblNofisa.FieldByName('Dados_Ad01').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('Dados_Ad01').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
           if tblNofisa.FieldByName('Dados_Ad02').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('Dados_Ad02').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
           if tblNofisa.FieldByName('Dados_Ad03').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('Dados_Ad03').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
           if tblNofisa.FieldByName('Dados_Ad04').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('Dados_Ad04').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
           if tblNofisa.FieldByName('Dados_Ad05').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('Dados_Ad05').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
           if tblNofisa.FieldByName('OBS').AsString <> '' then
             with InfAdic.obsCont.add do
              begin
                auxString := copy(tblNofisa.FieldByName('OBS').AsString, 0 , 60 );
                xcampo := '-';
                xTexto := tiraAcento( auxString )+' ' ;
              end;
         if checkBox8.Checked then
           with autXML.Add do
            begin
              cnpjcpf := '62934252000145';
            end;
       //criar observação adicional ref. ao PIS e COFINS
        with InfAdic.obsCont.add do
          begin
             auxString := 'PIS: R$'+ CurrToStr(Round(total.ICMSTot.vPIS*100)/100) +
                          ' COFINS: R$'+  CurrToStr(Round(total.ICMSTot.vCOFINS*100)/100);
             xcampo := '-';
             xTexto := tiraAcento( auxString )+' ' ;
          end;
//      total.ICMSTOT.vNF        := 420;
  {     ACBrNFe1.NotasFiscais.Clear;
       if (BoxEmpresas.Certificado = '') then
         ACBrNFe1.configuracoes.Certificados.SelecionarCertificado
       else
         ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
         m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
         ACbrnfe1.NotasFiscais.LoadFromStream( m );
         ACBrNFe1.Consultar;
         AcbrNFe1.NotasFiscais.Items[0].SaveToFile('C:\Autorev-SD\' +
                                     dfeUtil.LimpaNumero( acbrnfe1.notasfiscais.items[0].nfe.infNFe.ID ) +'-NFe.xml');
 }
//     ACBrNFe1.NotasFiscais.Add.NFe.Ide.finNFe := fnAjuste, fnNormal, fnComplementar

  end;
   except
      on e:Exception do
      begin
         Showmessage('Erro no processo: ' + e.Message );
      end;

 end;
// Envio(Transmite, Imprime, Exporta, Email);
 Ini.free;
 end;
end;



procedure TBoxNFeGerenciamento.nfsStatusChange(Sender: TObject);
begin
  case nfs.Status of
    stNFseRecepcao :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando dados da NFS-e...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNFSeConsulta :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Consultando NFS-e...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNFSeAguardaProcesso:
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Aguardando retorno...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNfseCancelamento :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando cancelamento de NFS-e...');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
    stNFSeEmail :
    begin
      if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);
      frmAguardaNFe.Mensagens.Lines.Add('Enviando email');
      frmAguardaNFe.Show;
      frmAguardaNFe.BringToFront;
    end;
  end;
  Application.ProcessMessages;

end;

procedure TBOXNFEGerenciamento.Envio(Transmite, Imprime, Exporta, Email: Boolean);
var
  F:TextFile;
  F2:TextFile;
  ArquivoXMl : string;
  ArquivoXMl2 : string;
begin
 try
  begin
  with AcbrNFe1 do
  begin
//   NotasFiscais.Items[0].SaveToFile;
   notasFiscais.GerarNFe;
//   notasFiscais.Assinar;
//   notasfiscais.Validar; comentado versao 4.0 para nao enviar eduardo


   arquivoXml  :=  configuracoes.arquivos.PathSalvar + tblNofisa.fieldbyname('numero').AsString + '-' +
                                                                           LimpaNumero( notasfiscais.items[0].nfe.infNFe.ID ) +'-NFe.xml'  ;
   arquivoXml2  :=  'C:\YTransfer\Saida\' + //tblNofisa.fieldbyname('numero').AsString + '-' +
                                                                           LimpaNumero( notasfiscais.items[0].nfe.infNFe.ID ) +'-NFe.xml'  ;

   At_nfe( LimpaNumero( notasfiscais.Items[0].nfe.infNFe.ID ) , '' , '' ,
           arquivoXml, '');

    if transmite then
      begin
        frmAguardaNFe.BringToFront;
        frmAguardaNfe.Mensagens.Lines.Add( 'Transmitindo...' );
        Application.ProcessMessages;
        Enviar(tblNofisa.fieldbyname('Numero').AsInteger , false )  ;
        // depois de enviar.. grava a chave, pois se der falha no retorno, será possivel consultar a nota
        At_nfe(( limpaNumero( AcBrNFe1.NotasFiscais.items[0].nfe.infNFe.ID ) ),
                              '',
                              '',
                              '',
                              '' );

           frmAguardaNfe.Mensagens.Lines.Add( 'Enviada com sucesso, chave '+ LimpaNumero( notasfiscais.items[0].NFe.infNFe.ID ) );
           frmAguardaNfe.Mensagens.Lines.Add( 'Aguardando o retorno...' );
           webservices.Consulta.NFeChave   := LimpaNumero( notasfiscais.items[0].nfe.infnfe.id );
           //webServices.consulta.Executar;

           frmAguardaNfe.Mensagens.Lines.Add( 'Retorno ' + inttostr( webservices.Retorno.cStat ) );

           if ( webservices.Retorno.cStat = 104 ) or ( webservices.Retorno.cStat = 100 )then
           begin
               frmAguardaNfe.Mensagens.Lines.Add( 'Protocolo Número ' + webservices.retorno.Protocolo )  ;
               frmAguardaNfe.Mensagens.Lines.Add( 'Recibo ' + webservices.Retorno.Recibo );

               At_nfe(  ( limpaNumero( notasfiscais.items[0].nfe.infNFe.ID ) ),
                                   webservices.Retorno.Recibo,
                                   webservices.retorno.Protocolo,
                                   arquivoXml,
                                   notasfiscais.items[0].xml );

              with ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.obsCont.add do
              begin
                   xCampo := 'Protocolo ';
                   xTexto := webservices.Retorno.protocolo;
              end;

              with ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.obsCont.add do
              begin
                   xCampo := 'Recibo de Entrega ';
                   xTexto := webservices.Retorno.Recibo;
              end;
              with tblNofisa do
                begin
                  Edit;
                  if ( webservices.Retorno.cStat = 104 ) then
                    FieldByName('Status').AsString := 'NF-e em processamento';
                  if ( webservices.Retorno.cStat = 100 ) then
                  if tblnofisa.fieldbyname( 'protocolo' ).asString <> '' then
                    FieldByName('Status').AsString := 'NF-e Autorizada'
                  else
                    FieldByName('Status').AsString := 'Transmitida';
                  Post;
                end;
              notasfiscais.items[0].nfe.Ide.tpEmis := TPcnTipoEmissao( teNormal );
              if imprime then
                begin
                  frmAguardaNfe.Mensagens.Lines.Add( 'Imprimindo DANFE ' );
                  if tblnofisa.fieldbyname( 'protocolo' ).asString <> '' then
                     danfe.protocolo := tblnofisa.fieldbyname( 'protocolo' ).asString //danfe.protocolonfe
                  else
                     danfe.protocolo := webservices.retorno.Protocolo; //danfe.protocolonfe
//                     danfe.protocolonfe := webservices.retorno.Protocolo; //danfe.protocolonfe

//                  case MessageDlg('Imprimir hora de saída?', mtConfirmation, [mbYes,mbNo], 0) of
            //        mrYes:
//            AcbrNfe1.danfe.ImprimirHoraSaida := True;
    //                mrNo:   AcbrNfe1.danfe.ImprimirHoraSaida := False;
      //            end;
                  if FileExists(BoxEmpresas.Logo) then
                    ACBrNFe1.Danfe.Logo := BoxEmpresas.Logo;
                  notasFiscais.Imprimir;
                  frmAguardaNfe.Mensagens.Lines.Add( 'Danfe Impresso...' );
                end;
           end
           else
               Exception.Create( 'Impossível processar retorno. Erro ' + IntToStr(webServices.Retorno.cStat) );
      end;
      if exporta then
        begin
            if fileExists( arquivoXml ) then
            begin
              case MessageDlg('O arquivo ' + arquivoXml + 'já existe, deseja exportar novamente?', mtConfirmation, [mbYes,mbNo], 0) of
                mrYes:
                  begin
                     deletefile( ArquivoXml );
                  end;
              end;
            end;
            AssignFile(F, arquivoXml);                                   // Cria o arquivo
            AssignFile(F2, arquivoXml2);                                   // Cria o arquivo p/Yamaha
            Rewrite(F);                                                  // Regrava o arquivo
            Rewrite(F2);                                                  // Regrava o arquivo

            // se houver o xml gravado dentro da nota, é esse que deve ser gerado...
            if tblNofisa.fieldbyname('xml').isNull  then
            begin
               Writeln(f, notasfiscais.items[0].xml);
               Writeln(f2, notasfiscais.items[0].xml);
               At_nfe( LimpaNumero( notasfiscais.Items[0].nfe.infNFe.ID ) , '' , '' , arquivoXml, notasfiscais.items[0].xml );
            end
            else
              begin
                Writeln(f, tblNofisa.fieldbyname( 'xml' ).asString );
                Writeln(f2, tblNofisa.fieldbyname( 'xml' ).asString );
              end;
            CloseFile(f); {Fecha o arquivo texto}
            CloseFile(f2); {Fecha o arquivo texto}
            frmAguardaNfe.Mensagens.Lines.Add( 'XML Salvo em ...' + arquivoXml );
        end;
    if email then
     begin
      with tblPessoas do
        begin
          Close;
          ParamByName('id').AsInteger := tblNofisa.FieldByName('id_clientes').AsInteger;
          Open;
        end;
       if tblPessoas.Fieldbyname('email').AsString <> '' then
          begin
             frmAguardaNfe.Mensagens.Lines.Add( 'Enviando XML para ' +
               tblPessoas.fieldbyname('email').asString );
             if tblPessoas.FieldByName('email').AsString <> '' then
               case MessageDlg('Enviar xml por e-mail?', mtConfirmation, [mbYes,mbNo], 0) of
                 mrYes: enviarxml;//( arquivoXml );
               end;
             frmAguardaNfe.mensagens.Lines.Add( 'envio em construção, ainda não concluído');// XML enviado com sucesso' );
          end;
     end;
    //Acionar programa de envio do xml para a fabrica
    ShellExecute(0,'Open','c:\YTransfer\YTransfer.exe',nil,nil,sw_show);
    //fim do acionamento
    frmAguardaNfe.Mensagens.Lines.Add( 'Processo concluído com sucesso...' );
    frmAguardaNfe.btnOk.Enabled := true;
    frmAguardaNFe.BtnOk.SetFocus;
    ACBrNFe1.NotasFiscais.Clear;
  end;
end;
    except
      on e:Exception do
      begin
         frmAguardaNfe.Mensagens.Lines.Add( 'Erro no processo: ' + e.Message );
         frmAguardaNfe.btnOk.Enabled := true;
         frmAguardaNFe.BtnOk.SetFocus;
         ACBrNFe1.NotasFiscais.Clear;
      end;
 end;
  frmAguardaNFE := nil;
end;

procedure TBoxNfeGerenciamento.At_nfe( chave, recibo, protocolo, arquivo, xml:String);
begin
  With tblNofisa do
    begin
      Edit;
      FieldByName('chave').AsString := ( LimpaNumero( chave ) );
      if recibo <> '' then
         FieldByName('recibo').AsString := ( recibo ) ;
      if protocolo <> '' then
         FieldByName('Protocolo').AsString := ( protocolo );
      if arquivo <> '' then
         FieldByName('Arquivo').AsString := (arquivo); //quotedStr( arquivo );
      if xml <> '' then
         FieldByName('Xml').AsString := ( xml );
      Post;
    end;
end;

procedure TBoxNFeGerenciamento.BtnImprimirClick(Sender: TObject);

begin
  if CheckBox6.Checked then
    Danfe.imprimeDetalhamentoEspecifico := True
  else
    Danfe.ImprimeDetalhamentoEspecifico := False;
  ACbrNFe1.NotasFiscais.Clear;
  if (tblNofisa.FieldByName('Status').AsString = 'NF-e Autorizada') or
     (tblNofisa.FieldByName('Status').AsString = 'NF-e Cancelada') then
   begin
    if( tblNofisa.fieldbyname( 'SerieNF' ).asString = 'T' ) then
    begin
     ImprimeNfs(); //excluido 01/09/2018
     exit;
    end;

    CarregaXML(ACBrNFe1);
    acbrnfe1.danfe.protocolo := tblnofisa.fieldbyname( 'protocolo' ).asString;
//    case MessageDlg('Imprimir hora de saída?', mtConfirmation, [mbYes,mbNo], 0) of
//     mrYes:
//    AcbrNfe1.danfe.ImprimirHoraSaida := True;
//     mrNo:   AcbrNfe1.danfe.ImprimirHoraSaida := False;
//    end;
    if FileExists(BoxEmpresas.Logo) then
     ACBrNFe1.DAnfe.Logo := BoxEmpresas.Logo;
    ACBrNFe1.NotasFiscais.Imprimir;
   end
  else
   begin
    if (BoxEmpresas.Certificado = '') then
     ACBrNFe1.ssl.SelecionarCertificado
    else
     ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
     OpenDialog1.Title := 'Selecione a NFE';
     OpenDialog1.DefaultExt := '*-nfe.XML';
     OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
     OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
     if OpenDialog1.Execute then
     begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
      acbrnfe1.danfe.protocolo := tblnofisa.fieldbyname( 'protocolo' ).asString;
      ACBrNFe1.NotasFiscais.Imprimir;
      ACBrNFe1.NotasFiscais.Clear;
     end;
   end;
end;

procedure TBoxNFeGErenciamento.CarregaXml( var nfe:TAcbrNfe );
var
M: TStringStream;
begin
     // se o xml armazenado no memo não é nulo.. entao usa ele..
     if not ( tblNofisa.fieldbyname( 'xml' ).isnull ) then
     begin
        m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
        ACbrnfe1.NotasFiscais.LoadFromStream( m );
        exit;
     end;
end;

procedure TBoxNFeGErenciamento.CarregaXMLSe( var nfe:TAcbrNFSe );
var
M: TStringStream;
arqxml : String;
begin
     // se o xml armazenado no memo não é nulo.. entao usa ele..

     if not ( tblNofisa.fieldbyname( 'xml_nfse' ).isnull ) then
      begin
        m := TStringStream.Create( tblNofisa.fieldbyname( 'xml_nfse' ).asString );
        nfe.NotasFiscais.LoadFromStream( m );
        exit;
      end
     else
      begin
         arqXml  := Nfe.Configuracoes.Arquivos.GetPathNFSe( tblNofisa.fieldbyname( 'emissao' ).asDateTime )+'\'+
                tblNofisa.FieldByName('Numero_Nfse').AsString + 'T-nfse.xml';
         nfe.NotasFiscais.LoadFromFile(arqxml);
      end;
{

   //carrregando xml externo
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  if OpenDialog1.Execute then
  begin
    nfe.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  //  if FileExists(BoxEmpresas.Logo) then
//     ACBrNFe1.DAnfe.Logo := BoxEmpresas.Logo;
  end;
 }
end;

procedure TBoxNFeGerenciamento.BtnConsultarClick(Sender: TObject);
var
  m,mrps: TStringStream;
  xml : String;
  ArquivoXml : TMemo;
  PathRps, ArqRps:String;
begin
    frmAguardaNFE := nil;

   try

        if tblNofisa.fieldbyname('serienf' ).asString = 'T'  then
        begin
          config_nfs( nfs , BoxEmpresas );
          PathRps := nfs.Configuracoes.arquivos.GetPathRPS (tblNofisa.fieldbyname( 'emissao' ).asDateTime );
          arqRps := PathRps + '\'+tblNofisa.fieldbyname( 'numero' ).asString +
                              tblNofisa.fieldbyname( 'serieNf' ).asString + '-Rps.xml';
         // nfs.NotasFiscais.loadFromFile( arqRps );

          //consulta o a NFSE pelo RPs...

//            mRps := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_rps' ).asString )

         // if tblnofisa.fieldByName('xml_rps').asString <> null then

           // showmessage('falta xml');
        //  end;
  //        nfs.NotasFiscais.loadFromStream( mRps );
      //mNfs := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_nfse' ).asString );
                          //     Showmessage('b2');

// ESTE FUNCIONA PARA QUANDO TEM XML

       {      nfs.ConsultarNFSeporRps (  tblNofisa.fieldbyname( 'numero' ).asString,
                                       tblNofisa.fieldbyname( 'serienf' ).asString,
                                       TipoRPSToStr(trRps) );    }
// ATE AQUI QUANDO TEM XML


//                                       BoxEmpresas.Cnpj,
//                                       BoxEmpresas.IM);

 //A PARTIR DAQUI
//          acbrnfe1.Configuracoes.WebServices.UFCodigo := 43;

          envianfs();

          nfs.NotasFiscais.Items[0].GravarXML();  //ultima inclusão 06-09-2017
        {  nfs.ConsultarNFSe(tblNofisa.fieldbyname( 'emissao' ).asDateTime,
                            tblNofisa.fieldbyname( 'emissao' ).asDateTime,
                            tblNofisa.fieldbyname( 'numero_nfse' ).asString,1,

                            BoxEmpresas.Cnpj,
                            BoxEmpresas.IM,
                            '','','','');}
           //trocando por consulta por RPS
            nfs.ConsultarNFSeporRps(tblNofisa.FieldByName('numero').AsString,tblNofisa.FieldByName('serienf').AsString,'1');
          nfs.NotasFiscais.Items[0].GravarXML();  //ultima inclusão 06-09-2017
          nfs.NotasFiscais.Items[0].ImprimirPDF;

//ATE AQUI QUANDO NAO TEM XML

              tblNofisa.Edit;
                                        //           Showmessage('b4');
              if atualiza_nfs( nfs, tblNofisa ) then
                begin
                  frmAguardaNfe.Mensagens.Lines.Add( 'Número :' + nfs.notasfiscais.items[0].nfse.Numero );
                  frmAguardaNfe.Mensagens.Lines.Add( 'Código de verificação :' + nfs.notasfiscais.items[0].nfse.CodigoVerificacao );
                  frmAguardaNfe.Mensagens.Lines.Add( 'Nota atualizada com sucesso' );
                  tblNofisa.FieldByName('numero_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.Numero;
                  tblNofisa.FieldByName('codigo_nfse').AsString := nfs.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
                  tblNofisa.Post;
                end
              else
                tblNofisa.Cancel;

              frmAguardaNfe.btnOK.Enabled := true;

        end

      else

       //CONSULTA NF-e do ICMS

       begin


         ArquivoXml := TMemo.Create(nil);
         ACBrNFe1.NotasFiscais.Clear;
         Acbrnfe1.Configuracoes.WebServices.UF := 'RS';

         if (BoxEmpresas.Certificado = '') then
           ACBrNFe1.ssl.SelecionarCertificado
         else
           ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;

         if (tblNofisa.FieldByName('xml').AsString = '') or
            (tblNofisa.FieldByName('xml').AsString = null) then
           begin
           // GEra todo XML novamente.
             Acbrnfe1.Configuracoes.WebServices.UF := 'RS';

             Gera_Nfe_Acbr(True,True, true, True,True, True, True, true);
             AcbrNFe1.NotasFiscais.Items[0].GravarXML();

           end
         else
          begin
            m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
            ACbrnfe1.NotasFiscais.LoadFromStream( m );
          end;
         Acbrnfe1.Configuracoes.WebServices.UF := 'RS';
         ACBrNFe1.Consultar;
         frmAguardaNfe.Mensagens.Lines.Add( 'Processo concluído com sucesso...' );
         frmAguardaNfe.Mensagens.Lines.Add( 'Protocolo Número: ' + ACBrNfe1.webservices.Consulta.Protocolo )  ;
         frmAguardaNfe.Mensagens.Lines.Add( 'Data: ' + DatetOStr(ACBrNFe1.webservices.Consulta.DhRecbto) )  ;
         frmAguardaNfe.Mensagens.Lines.Add( 'Situação: ' + ACBrNFe1.webservices.Consulta.Msg );
         frmAguardaNfe.Mensagens.Lines.Add( 'Chave:' + ACBrNFe1.WebServices.Consulta.NFeChave);
         frmAguardaNfe.Mensagens.lines.add( 'Status: ' + inttostr( ACBrNFe1.webservices.consulta.cStat ));
         frmAguardaNfe.Mensagens.Lines.Add(ACBrNFe1.WebServices.Consulta.xMotivo);
         if ACBrNFe1.Webservices.Consulta.xMotivo = 'Cancelamento de NF-e homologado' then
          begin
            Showmessage('Cancelamento homologado');
            with tblNofisa do
             begin
               if FieldByName('Protocolo_Cancelamento').AsString = '' then
                 begin
                   Edit;
                   FieldByName('Protocolo_Cancelamento').AsString :=
                     ACBrNfe1.webservices.Consulta.Protocolo;
                   FieldByName('Status').AsString := 'NF-e Cancelada';
                   Post;
                 end;
             end;
          end;
         if ACBrNFe1.Webservices.Consulta.XMotivo = 'Autorizado o uso da NF-e' then
          begin
            Showmessage('NF-e Autorizada');
            with tblNofisa do
             begin
               if (FieldByName('Recibo').AsString = '') then
                 begin
                   Edit;
                   FieldByName('Protocolo').AsString :=
                     ACBrNfe1.webservices.Consulta.Protocolo;
                   FieldByName('Status').AsString := 'NF-e Autorizada';
                   if (FieldByName('Recibo').IsNull) then
                     FieldByName('Recibo').AsString :=
                       ACBRNFe1.WebServices.Retorno.Recibo;
                   if (FieldByName('Chave').IsNull) then
                     FieldByName('Chave').AsString :=
                       ACBrNFe1.WebServices.Consulta.NFeChave;
                   if (FieldByName('xml').IsNull) then
                     FieldByName('xml').AsString := ACBRNFE1.NotasFiscais.items[0].xml;
                   Post;
                 end;
             end;
          end;
         frmAguardaNfe.btnOk.Enabled := true;
         frmAguardaNFe.BtnOk.SetFocus;
         ACBrNFe1.NotasFiscais.Clear;
       end;
    except
      on e:Exception do
      begin
        frmAguardaNfe.Mensagens.Lines.Add( 'Erro no processo:' + e.Message );
        frmAguardaNfe.btnOk.Enabled := true;
        frmAguardaNFe.BtnOk.SetFocus;
        ACBrNFe1.NotasFiscais.Clear;
      end;
   end;
   m.free;
   arquivoxml.free;
end;

procedure TBoxNFeGerenciamento.BtnDesarquivarClick(Sender: TObject);
begin
 case MessageDlg('Confirma Desarquivamento da NF-e?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with tblNofisa do
         begin
          Edit;
          FieldByName('Status').AsString := 'NF-e Autorizada';
          Post;
         end;
       end;
  end;
  with tblNofisa do
  begin
    Close;
    SelectSql.Clear;
    SelectSql.Text := 'Select * from NOFISA' +
     'where id_Concessionaria = :idConcessionaria' +
     'and Status <> :idStatus';
    ParamByName('idStatus').AsString := 'Arquivado';
    Open;
  end;
end;

procedure TBoxNFeGerenciamento.BtnNFsArquivadasClick(Sender: TObject);
begin
  with tblNofisa do
  begin
    Close;
    SelectSql.Clear;
    SelectSql.Text := 'Select * from NOFISA' +
     'where id_Concessionaria = :idConcessionaria' +
     'and Status = :idStatus';
    ParamByName('idStatus').AsString := 'Arquivado';
    Open;
  end;
  DBGrid1.SetFocus;
end;

procedure TBoxNFeGerenciamento.BtnxmlClick(Sender: TObject);
begin
if tblNofisa.FieldByName('Status').AsString <> 'NF-e Autorizada' then
  showmessage('NF-e não autorizada.')
else
 begin
  Enviarxml;
  AcBRNFe1.NotasFiscais.Clear;
  nfs.NotasFiscais.Clear;
 end;
end;

procedure TBoxNFeGerenciamento.imprimeNfs;
var
PathNfs, ArqNfs, PathRps, ArqRps, vAux:String;
MRps, MNfs: TStringStream;
n:TAcbrNfse;
d:TACBrNFSeDANFSeFR;
begin
      d:=TACBrNFSeDANFSeFR.Create(nil);
      config_danfe_nfs(d, boxEmpresas);
      n:=TAcbrNfse.Create(nil);
      n.NotasFiscais.Clear;
      n.DANFSe := d;
      d.ACBrNFSe := n;

      Config_Nfs( n , BoxEmpresas );

//      d.Provedor := proBHISS;
//   Danfe.FastFile := ExtractFilePath( Application.ExeName ) + '\Danfe.fr3';
//   Danfe.FastFile := ExtractFilePath( Application.ExeName ) + '\Danfe.fr3'; ExtractFileDir???
   //   d.FastFile := ExtractFilePath( Application.ExeName ) + '\Report\DANFSE.fr3';
      PathRps := n.Configuracoes.arquivos.GetPathRPS (tblNofisa.fieldbyname( 'emissao' ).asDateTime );
      PathNfs := n.Configuracoes.arquivos.GetPathNFSe (tblNofisa.fieldbyname( 'emissao' ).asDateTime );
      arqRps := PathRps + '\'+tblNofisa.fieldbyname( 'arq_xml_rps' ).asString;
      arqNfs  := PathNfs + '\'+tblNofisa.fieldbyname( 'arq_xml_nfse' ).asString;


      mRps := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_rps' ).asString );
      mNfs := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_nfse' ).asString );


      if not n.NotasFiscais.LoadFromStream( mNfs ) then
      begin
          if not n.NotasFiscais.LoadFromStream( mRps ) then
            begin
              showmessage( 'Impossivel carregar XML do banco de dados' );
              exit;
            end;
      end;
      with n.NotasFiscais.Items[0].NFse do
       begin
         Numero := tblNofisa.FieldByName('numero_nfse').AsString;
         CodigoVerificacao := tblNofisa.FieldByName('codigo_nfse').AsString;
         PrestadorServico.RazaoSocial :=                 BoxEmpresas.ConcessionariaNome.Text;
         PrestadorServico.Endereco.Endereco :=           BoxEmpresas.ConcessionariaEndereco.Text;
         PrestadorServico.Endereco.Numero :=             BoxEmpresas.Numero;
         PrestadorServico.Endereco.xMunicipio :=         BoxEmpresas.Cidade;
         PrestadorServico.Contato.Telefone :=            BoxEmpresas.Fone;
         PrestadorServico.Endereco.CodigoMunicipio :=    BoxEmpresas.CodigoMunicipio;
         PrestadorServico.IdentificacaoPrestador.Cnpj := BoxEmpresas.CNPJ;
         PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal := BoxEmpresas.IM;

       end;
      //  d.Logo := BoxEmpresas.Logo_Prefeitura;
     //   d.PrestLogo := BoxEmpresas.Logo;
        n.DANFSE.Logo := BoxEmpresas.Logo_Prefeitura;
        n.DANFSE.PrestLogo := BoxEmpresas.Logo;

        n.NotasFiscais.Items[0].Imprimir;


        n.Free;
        d.free;


end;


procedure TBoxNFeGerenciamento.cancelaNfs;
var
PathNfs, ArqNfs, PathRps, ArqRps, vAux:String;
MRps, MNfs: TStringStream;

begin

    application.CreateForm( TfrmAguardaNfe, frmAguardaNfe );


    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
       exit;

    frmAguardaNfe.Show;

      PathRps := nfs.Configuracoes.arquivos.GetPathRPS (tblNofisa.fieldbyname( 'emissao' ).asDateTime );
      PathNfs := nfs.Configuracoes.arquivos.GetPathNFSe (tblNofisa.fieldbyname( 'emissao' ).asDateTime );
      arqRps := PathRps + '\'+tblNofisa.fieldbyname( 'arq_xml_rps' ).asString;
      arqNfs  := PathNfs + '\'+tblNofisa.fieldbyname( 'arq_xml_nfse' ).asString;


      mRps := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_rps' ).asString );
      mNfs := TStringStream.Create( boxNfeGerenciamento.tblNofisa.fieldbyname( 'xml_nfse' ).asString );

      if not nfs.NotasFiscais.LoadFromStream( mNfs ) then
      begin
          if not nfs.NotasFiscais.LoadFromStream( mRps ) then
            begin
              showmessage( 'Impossivel carregar XML do banco de dados' );
              exit;
            end;
      end;

      try
        Config_nfs( nfs , BoxEmpresas );
        nfs.CancelarNFSe('2' );//1 - erro na emissão - 2 = serviço canceladao
        tblNofisa.Edit;
        tblNofisa.FieldByName('Status').AsString := 'NF-e Cancelada';
        tblNofisa.FieldByName('Protocolo_cancelamento').AsString := nfs.WebServices.CancNFSe.Protocolo;
        tblNofisa.FieldByName('Motivo_Cancelamento').AsString := vAux;
        tblNofisa.Post;

        frmAguardaNfe.Mensagens.Lines.Add( 'Cancelamento concluido com sucesso' );
        frmAguardaNfe.btnOk.Enabled := true;
      Except
        on e:Exception do
        begin
          frmAguardaNfe.Mensagens.Lines.Add( 'ERRO NO CANCELAMENTO: ' + e.Message );
          frmAguardaNfe.btnOk.Enabled := true;

        end;

      end;




///
end;

procedure TBoxNFeGerenciamento.AbrirDs;
begin
//  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceSada.DataSet.Open;
  DataSourceSeda.DataSet.Open;
  DataSourcePessoas.DataSet.Open;
  tblNofisa.Close;
  tblNofisa.ParamByName('idStatus').AsString := 'Arquivado';
  tblNofisa.ParamByName('idEmissao').AsDateTime := DataNFs.Date;
  tblNofisa.ParamByName('idConcessionaria').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblNofisa.Open;
  tblNofisa.Last;
end;

procedure TBoxNFeGerenciamento.FecharDs;
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceSada.DataSet.Close;
  DataSourceSeda.DataSet.Close;
  DataSourcePessoas.Dataset.Close;
  IBQuery1.Close;
  IBquery2.Close;
end;

procedure TBoxNFeGerenciamento.BitBtn6Click(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  if (BoxEmpresas.Certificado = '') then
    ACBrNFe1.ssl.SelecionarCertificado
  else
    ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;
  ACBrNfe1.configuracoes.Arquivos.PathSchemas := 'C:\Autorev-SD\Schemas';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim((Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit;
  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(idLote);
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

//  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  //memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.EventoRetorno;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
//  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetWS, WBResposta);
//  }
end;

procedure TBoxNFeGerenciamento.BitBtn7Click(Sender: TObject);
var
M: TStringStream;

begin
     // se o xml armazenado no memo não é nulo.. entao usa ele..
     if not ( tblNofisa.fieldbyname( 'xml' ).isnull ) then
     begin
        m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
//        Memo.lines.LoadFromStream( m );
        if ( frmAguardaNFe = nil ) then
        frmAguardaNFe := TfrmAguardaNFe.Create(Application);

        frmAguardaNfe.Show;
        frmAguardaNfe.Mensagens.Lines.LoadFromStream( m );
        frmAguardaNfe.btnOk.Enabled := true;
        frmAguardaNFe.BtnOk.SetFocus;
        frmAguardaNFE := nil;



     end;

end;

end.

