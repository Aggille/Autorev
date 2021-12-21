unit uSped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, StdCtrls, Buttons, wwdbdatetimepicker, ACBrUtil,ACBrEPCBlocos,
  IBCustomDataSet, ActnList, ComCtrls, wwdblook, DBClient,ACBrSpedFiscal,
  ACBrEFDBlocos, ACBrTXTClass, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBQuery,
  ACBrSpedPisCofins,AcbrSped, System.Actions, ACBrBase;

type
  TBoxSped = class(TForm)
    Label2: TLabel;
    edtDI: TwwDBDateTimePicker;
    Label3: TLabel;
    edtDF: TwwDBDateTimePicker;
    Label4: TLabel;
    edtNomeArq: TEdit;
    Label5: TLabel;
    edtPastaDestino: TEdit;
    Label11: TLabel;
    edtTipoArq: TComboBox;
    Label6: TLabel;
    edtPerfil: TComboBox;
    Label7: TLabel;
    edtTipoAtiv: TComboBox;
    ACBrSpedFiscal1: TACBrSPEDFiscal;
    ActionList1: TActionList;
    actGerar: TAction;
    actBloco_0: TAction;
    actBloco_C: TAction;
    actBloco_1: TAction;
    actBloco_9: TAction;
    actGeraDataNFCompra: TAction;
    trnSped: TIBTransaction;
    StatusBar1: TStatusBar;
    dtsFilial: TDataSource;
    dtsNf: TDataSource;
    dtsItemNf: TDataSource;
    dtsDupl: TDataSource;
    dtsTotItem: TDataSource;
    dtsServicosNf: TDataSource;
    dtsTotServicosNf: TDataSource;
    tblAux190: TClientDataSet;
    tblAux190CST: TStringField;
    tblAux190CFOP: TStringField;
    tblAux190ALIQ_ICMS: TFloatField;
    tblAux190TOTAL: TCurrencyField;
    tblAux190BASE_ICMS: TCurrencyField;
    tblAux190ICMS: TCurrencyField;
    progresso: TProgressBar;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    dtsNfe: TDataSource;
    dtsiItemNfe: TDataSource;
    dtsTotItemE: TDataSource;
    tblAux190BASE_ICMS_ST: TCurrencyField;
    tblAux190ICMS_ST: TCurrencyField;
    btnFechar_p: TBitBtn;
    btnGerar_p: TSpeedButton;
    tblAux190VLR_IPI: TCurrencyField;
    RadioGroup1: TRadioGroup;
    qryNf: TIBQuery;
    qryItemNf: TIBQuery;
    qryNfID_NOFISA: TIntegerField;
    qryNfID_CONCESSIONARIA: TIntegerField;
    qryNfID_CLIENTES: TIntegerField;
    qryNfNUMERO: TIntegerField;
    qryNfSERIENF: TIBStringField;
    qryNfEMISSAO: TDateField;
    qryNfORIGEM: TIBStringField;
    qryNfENT_SAI: TIBStringField;
    qryNfVENDEDOR: TIntegerField;
    qryNfSAIDA: TDateField;
    qryNfHORA: TIBStringField;
    qryNfIE_SUBS: TIBStringField;
    qryNfDESC_PEC: TIBBCDField;
    qryNfDESC_OFI: TIBBCDField;
    qryNfBASE_ICMS: TIBBCDField;
    qryNfVAL_ICMS: TIBBCDField;
    qryNfBASE_ICM_S: TIBBCDField;
    qryNfVAL_ICMS_S: TIBBCDField;
    qryNfVAL_FRETE: TIBBCDField;
    qryNfVAL_SEGURO: TIBBCDField;
    qryNfVAL_OUTROS: TIBBCDField;
    qryNfVAL_IPI: TIBBCDField;
    qryNfVAL_SERV: TIBBCDField;
    qryNfISSQN: TIBBCDField;
    qryNfVAL_ISS: TIBBCDField;
    qryNfTOT_PROD: TIBBCDField;
    qryNfTOT_NOTA: TIBBCDField;
    qryNfPIS: TIBBCDField;
    qryNfCOFINS: TIBBCDField;
    qryNfCOD_TRANS: TIBStringField;
    qryNfFRETE_TIPO: TIBStringField;
    qryNfPLACA: TIBStringField;
    qryNfDADOS_AD01: TIBStringField;
    qryNfDADOS_AD02: TIBStringField;
    qryNfDADOS_AD03: TIBStringField;
    qryNfDADOS_AD04: TIBStringField;
    qryNfOBS: TIBStringField;
    qryNfQTDE_PROD: TIntegerField;
    qryNfSTATUS: TIBStringField;
    qryNfCODIGO_FISCAL: TIBStringField;
    qryNfDESCRICAO_CODIGO_FISCAL: TIBStringField;
    qryNfFORMA_PAGAMENTO: TIBStringField;
    qryNfCHAVE: TIBStringField;
    qryNfRECIBO: TIBStringField;
    qryNfPROTOCOLO: TIBStringField;
    qryNfARQUIVO: TIBStringField;
    qryNfXML: TBlobField;
    qryNfPROTOCOLO_CANCELAMENTO: TIBStringField;
    qryNfMOTIVO_CANCELAMENTO: TIBStringField;
    qryNfDADOS_AD05: TIBStringField;
    qryNfRECEBIMENTO_TRANSFERENCIA: TDateField;
    qryNfTRANSFERENCIA_PENDENTE: TIBStringField;
    qryNfID_MECANICO: TIntegerField;
    qryNfID_ATENDENTE: TIntegerField;
    qryNfQUANTIDADE_VOLUMES: TIntegerField;
    qryItemNfID_SADA: TIntegerField;
    qryItemNfID_NOFISA: TIntegerField;
    qryItemNfID_CONCESSIONARIA: TIntegerField;
    qryItemNfNF: TIBStringField;
    qryItemNfCODIGO: TIBStringField;
    qryItemNfDESCRICAO: TIBStringField;
    qryItemNfQTDE: TSmallintField;
    qryItemNfUNIDADE: TIBStringField;
    qryItemNfCST: TIBStringField;
    qryItemNfSUBST: TIBStringField;
    qryItemNfALIQ_ICMS: TIBBCDField;
    qryItemNfICMS: TIBBCDField;
    qryItemNfCUSTO: TIBBCDField;
    qryItemNfPRECO: TIBBCDField;
    qryItemNfCFOP: TIBStringField;
    qryItemNfNAT_OP: TIBStringField;
    qryItemNfST_COFINS: TIBStringField;
    qryItemNfANO_MODELO: TIBStringField;
    qryItemNfANO_FABRICACAO: TIBStringField;
    qryItemNfRENAVAM: TIBStringField;
    qryItemNfPOTENCIA: TIBStringField;
    qryItemNfCOR: TIBStringField;
    qryItemNfCOMBUSTIVEL: TIBStringField;
    qryItemNfPLACA: TIBStringField;
    qryItemNfMOTOR: TIBStringField;
    qryItemNfCHASSI: TIBStringField;
    qryItemNfMARCA: TIBStringField;
    qryItemNfMODELO: TIBStringField;
    qryItemNfSTATUS: TIBStringField;
    qryItemNfBASE_ICMS: TIBBCDField;
    qryItemNfDESCONTO: TIBBCDField;
    qryItemNfID_PECAS: TIntegerField;
    qryItemNfNCM: TIBStringField;
    qryItemNfCILINDRADAS: TIntegerField;
    qryItemNfCOD_PROC: TIBStringField;
    qryItemNfST_COFINS1: TIBStringField;
    qryItemNfSUBST_TRIB: TIBStringField;
    qryDupl: TIBQuery;
    qryServicosNf: TIBQuery;
    qryServicosNfID_SEDA: TIntegerField;
    qryServicosNfID_CONCESSIONARIA: TIntegerField;
    qryServicosNfID_NOFI: TIntegerField;
    qryServicosNfNF: TIBStringField;
    qryServicosNfID_TMO: TIntegerField;
    qryServicosNfTEMPO: TIBBCDField;
    qryServicosNfPRECO: TIBBCDField;
    qryFilial: TIBQuery;
    qryTotItem: TIBQuery;
    qryTotServicosNf: TIBQuery;
    qryDuplID_NOFISA_FATURAS: TIntegerField;
    qryDuplID_NOFISA: TIntegerField;
    qryDuplFATURA: TIBStringField;
    qryDuplVENCIMENTO: TDateField;
    qryDuplVALOR: TIBBCDField;
    qryDuplID_FORMAS_PAGAMENTO: TIntegerField;
    qryFilialID_CONCESSIONARIA: TIntegerField;
    qryFilialEMPRESA: TIBStringField;
    qryFilialENDERECO: TIBStringField;
    qryFilialCIDADE: TIBStringField;
    qryFilialESTADO: TIBStringField;
    qryFilialCNPJ: TIBStringField;
    qryFilialIE: TIBStringField;
    qryFilialCONCESSION: TIBStringField;
    qryFilialTELEFONE: TIBStringField;
    qryFilialCOD_CONCES: TIBStringField;
    qryFilialALIQUOTA_ISS: TIBBCDField;
    qryFilialALIQUOTA_ICMS1: TIBBCDField;
    qryFilialALIQUOTA_ICMS2: TIBBCDField;
    qryFilialCODIGO_EMPRESA_JB: TIBStringField;
    qryFilialIM: TIBStringField;
    qryFilialCNAE: TIBStringField;
    qryFilialFANTASIA: TIBStringField;
    qryFilialCEP: TIBStringField;
    qryFilialNUMERO: TIBStringField;
    qryFilialCOMPLEMENTO: TIBStringField;
    qryFilialCODIGO_MUNICIPIO: TIBStringField;
    qryFilialBAIRRO: TIBStringField;
    qryFilialHOST: TIBStringField;
    qryFilialPORT: TIBStringField;
    qryFilialUSUARIO: TIBStringField;
    qryFilialPASS: TIBStringField;
    qryFilialCERTIFICADO: TIBStringField;
    qryFilialLOGO: TIBStringField;
    qryFilialDIVIDIR_NF_GARANTIA: TIBStringField;
    qryFilialID_BANCO_CONCESSIONARIA: TIntegerField;
    qryTotItemBASE_ICMS: TIBBCDField;
    qryTotItemICMS: TIBBCDField;
    qryTotItemTOTAL: TIBBCDField;
    qryTotItemALIQ_ICMS: TIBBCDField;
    qryTotItemCST: TIBStringField;
    qryTotItemCFOP: TIBStringField;
    qryNfe: TIBQuery;
    qryTotServicosNfTOTAL: TIBBCDField;
    qryNfeID_NOFI: TIntegerField;
    qryNfeID_CONCESSIONARIA: TIntegerField;
    qryNfeID_CLIENTES: TIntegerField;
    qryNfeID_CONHECIMENTO: TIntegerField;
    qryNfeNUMERO: TIBStringField;
    qryNfeSERIE: TIBStringField;
    qryNfeEMISSAO: TDateField;
    qryNfeCODIGO: TIBStringField;
    qryNfeORIGEM: TIBStringField;
    qryNfeENT_SAI: TIBStringField;
    qryNfeVENDEDOR: TIBStringField;
    qryNfeCOMISSAO: TIBBCDField;
    qryNfeSAIDA: TDateField;
    qryNfeHORA: TIBStringField;
    qryNfeCFOP: TIBStringField;
    qryNfeNAT_OP: TIBStringField;
    qryNfeIE_SUBS: TIBStringField;
    qryNfeDESC_PEC: TIBBCDField;
    qryNfeDESC_OFI: TIBBCDField;
    qryNfeICMS: TIBBCDField;
    qryNfeBASE_ICMS: TFMTBCDField;
    qryNfeVAL_ICMS: TFMTBCDField;
    qryNfeBASE_ICM_S: TIBBCDField;
    qryNfeVAL_ICMS_S: TIBBCDField;
    qryNfeVAL_FRETE: TIBBCDField;
    qryNfeVAL_SEGURO: TIBBCDField;
    qryNfeVAL_OUTROS: TIBBCDField;
    qryNfeVAL_IPI: TIBBCDField;
    qryNfeVAL_SERV: TIBBCDField;
    qryNfeISSQN: TIBBCDField;
    qryNfeVAL_ISS: TIBBCDField;
    qryNfeTOT_PROD: TIBBCDField;
    qryNfeTOT_NOTA: TIBBCDField;
    qryNfePIS: TIBBCDField;
    qryNfeCOFINS: TIBBCDField;
    qryNfeCOD_TRANS: TIBStringField;
    qryNfeFRETE_TIPO: TIBStringField;
    qryNfePLACA: TIBStringField;
    qryNfeDADOS_AD01: TIBStringField;
    qryNfeDADOS_AD02: TIBStringField;
    qryNfeDADOS_AD03: TIBStringField;
    qryNfeDADOS_AD04: TIBStringField;
    qryNfeOBS: TIBStringField;
    qryNfeQTDE_PROD: TIntegerField;
    qryNfeSTATUS: TIBStringField;
    qryNfeVAL_PIS: TIBBCDField;
    qryNfeVAL_COFINS: TIBBCDField;
    qryNfeCHAVE: TIBStringField;
    qryNfeRECIBO: TIBStringField;
    qryNfePROTOCOLO: TIBStringField;
    qryNfeARQUIVO: TIBStringField;
    qryNfeXML: TBlobField;
    qryNfePROTOCOLO_CONSULTA: TIBStringField;
    qryItemNfe: TIBQuery;
    qryItemNfeID_DADOS_NFE: TIntegerField;
    qryItemNfeID_CONCESSIONARIA: TIntegerField;
    qryItemNfeNF: TIBStringField;
    qryItemNfeITEM: TIBStringField;
    qryItemNfeQTDE: TIntegerField;
    qryItemNfeCST: TIBStringField;
    qryItemNfeCFOP: TIntegerField;
    qryItemNfeVLR_UNIT: TFMTBCDField;
    qryItemNfeBASE_ICMS: TIBBCDField;
    qryItemNfeALIQ_ICMS: TIBBCDField;
    qryItemNfeVLR_ICMS: TIBBCDField;
    qryItemNfeICMS_SUBST: TIBBCDField;
    qryItemNfeVLR_IPI: TIBBCDField;
    qryItemNfeMODELO: TIBStringField;
    qryItemNfeANO_FABRICACAO: TIBStringField;
    qryItemNfeANO_MODELO: TIBStringField;
    qryItemNfeCOR: TIBStringField;
    qryItemNfeMOTOR: TIBStringField;
    qryItemNfeCOMBUSTIVEL: TIBStringField;
    qryItemNfeMARCA: TIBStringField;
    qryItemNfePOTENCIA: TIBStringField;
    qryItemNfeRENAVAM: TIBStringField;
    qryItemNfePROD_NUMERO: TIntegerField;
    qryItemNfeID_PECA: TIntegerField;
    qryItemNfeID_NOFI: TIntegerField;
    qryItemNfeID_CONHECIMENTO: TIntegerField;
    qryItemNfeVLR_FRETE: TFMTBCDField;
    qryItemNfeVLR_SEGURO: TFMTBCDField;
    qryItemNfeCST1: TIBStringField;
    qryItemNfeST_COFINS: TIBStringField;
    qryTotItemE: TIBQuery;
    qryTotItemEBASE_ICMS: TFMTBCDField;
    qryTotItemEICMS: TFMTBCDField;
    qryTotItemETOTAL: TFMTBCDField;
    qryTotItemEALIQ_ICMS: TIBBCDField;
    qryTotItemECST: TIBStringField;
    qryTotItemECFOP: TIntegerField;
    tblClientes: TIBQuery;
    tblClientesID_CLIENTES: TIntegerField;
    tblClientesNUM_CPF: TIBStringField;
    tblClientesCODIGO_MUNICIPIO: TIBStringField;
    tblClientesENDERECO: TIBStringField;
    tblClientesBAIRRO: TIBStringField;
    tblClientesESTADO: TIBStringField;
    tblClientesCPF: TIBStringField;
    tblClientesNUMERO: TIBStringField;
    tblClientesCOMPLEMENTO: TIBStringField;
    tblClientesIDENTIDADE: TIBStringField;
    tblVeiculos: TIBQuery;
    tblCodigoConta: TIBQuery;
    tblPecas: TIBQuery;
    tblUnidades: TIBQuery;
    tblUnidadesUNIDADE: TIBStringField;
    tblUnidadesTOTAL: TIntegerField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCODIGO: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosNCM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblCodigoContaID_CLIENTES: TIntegerField;
    tblCodigoContaCODIGO: TIBStringField;
    tblCodigoContaID_CONCESSIONARIA: TIntegerField;
    tblCodigoContaVENDEDOR_YNOVA: TIBStringField;
    tblCodigoContaIDENTIDADE: TIBStringField;
    tblCodigoContaCPF: TIBStringField;
    tblCodigoContaNUM_CPF: TIBStringField;
    tblCodigoContaNASCIMENTO: TDateField;
    tblCodigoContaPAI: TIBStringField;
    tblCodigoContaMAE: TIBStringField;
    tblCodigoContaENDERECO: TIBStringField;
    tblCodigoContaBAIRRO: TIBStringField;
    tblCodigoContaCIDADE: TIBStringField;
    tblCodigoContaESTADO: TIBStringField;
    tblCodigoContaCEP: TIBStringField;
    tblCodigoContaCADASTRO: TDateField;
    tblCodigoContaDESCONTO: TIBBCDField;
    tblCodigoContaFONE1: TIBStringField;
    tblCodigoContaFONE2: TIBStringField;
    tblCodigoContaFONE3: TIBStringField;
    tblCodigoContaCOENDERECO: TIBStringField;
    tblCodigoContaCOBAIRRO: TIBStringField;
    tblCodigoContaCOCIDADE: TIBStringField;
    tblCodigoContaCOESTADO: TIBStringField;
    tblCodigoContaCOCEP: TIBStringField;
    tblCodigoContaSPC: TIBStringField;
    tblCodigoContaREG_SPC: TIBStringField;
    tblCodigoContaEMAIL: TIBStringField;
    tblCodigoContaCLIENTE: TIBStringField;
    tblCodigoContaFORNECEDOR: TIBStringField;
    tblCodigoContaTRANSPORTADORA: TIBStringField;
    tblCodigoContaFINANCEIRA: TIBStringField;
    tblCodigoContaMECANICO: TIBStringField;
    tblCodigoContaVENDEDOR: TIBStringField;
    tblCodigoContaCONTA: TIBStringField;
    tblCodigoContaCOMISSAO: TIBBCDField;
    tblCodigoContaEMPRESA: TIBStringField;
    tblCodigoContaADMISSAO: TDateField;
    tblCodigoContaSALARIO: TIBBCDField;
    tblCodigoContaEMPR_ENDERECO: TIBStringField;
    tblCodigoContaEMPR_BAIRRO: TIBStringField;
    tblCodigoContaEMPR_CIDADE: TIBStringField;
    tblCodigoContaEMPR_ESTADO: TIBStringField;
    tblCodigoContaEMPR_CEP: TIBStringField;
    tblCodigoContaEMPR_FONE: TIBStringField;
    tblCodigoContaREF_NOME1: TIBStringField;
    tblCodigoContaREF_FONE1: TIBStringField;
    tblCodigoContaREF_NOME2: TIBStringField;
    tblCodigoContaREF_FONE2: TIBStringField;
    tblCodigoContaREF_COML1: TIBStringField;
    tblCodigoContaREF_COML_FONE1: TIBStringField;
    tblCodigoContaREF_COML2: TIBStringField;
    tblCodigoContaREF_COML_FONE2: TIBStringField;
    tblCodigoContaREF_BANC: TIBStringField;
    tblCodigoContaREF_AG_BANC: TIBStringField;
    tblCodigoContaREF_CTA_BANC: TIBStringField;
    tblCodigoContaFOTO: TIBStringField;
    tblCodigoContaFABRICANTE: TIBStringField;
    tblCodigoContaCODIGO_MUNICIPIO: TIBStringField;
    tblCodigoContaNOME_VENDEDOR: TIBStringField;
    tblCodigoContaCODIGOSGS: TIntegerField;
    tblCodigoContaFATURA_COM_DEBITOS: TIBStringField;
    tblCodigoContaNUMERO: TIBStringField;
    tblCodigoContaCOMPLEMENTO: TIBStringField;
    tblForne: TIBQuery;
    tblVeiculosE: TIBQuery;
    tblPecasE: TIBQuery;
    tblForneID_CLIENTES: TIntegerField;
    tblForneNUM_CPF: TIBStringField;
    tblForneCODIGO_MUNICIPIO: TIBStringField;
    tblForneENDERECO: TIBStringField;
    tblForneBAIRRO: TIBStringField;
    tblForneESTADO: TIBStringField;
    tblForneCPF: TIBStringField;
    tblForneNUMERO: TIBStringField;
    tblForneCOMPLEMENTO: TIBStringField;
    tblForneIDENTIDADE: TIBStringField;
    tblVeiculosEMARCA: TIBStringField;
    tblVeiculosEMODELO: TIBStringField;
    tblVeiculosECOR: TIBStringField;
    tblVeiculosECOMBUSTIVEL: TIBStringField;
    tblVeiculosEANO_MODELO: TIBStringField;
    tblVeiculosEANO_FABRICACAO: TIBStringField;
    tblVeiculosECHASSI: TIBStringField;
    tblVeiculosENCM: TIBStringField;
    tblVeiculosECLASSIF_FISCAL: TIBStringField;
    tblPecasEDESCRICAO: TIBStringField;
    tblPecasECODIGO: TIBStringField;
    tblPecasEUNIDADE: TIBStringField;
    tblPecasENCM: TIBStringField;
    qryNfT: TIBQuery;
    dtsNfT: TDataSource;
    qryConcessionaria: TIBQuery;
    dtsConcessionaria: TDataSource;
    qryConcessionariaID_TRANSFERENCIA: TIntegerField;
    qryConcessionariaID_CLIENTES: TIntegerField;
    qryConcessionariaID_CONCESSIONARIA: TIntegerField;
    qryConcessionariaTRANSFERIR_PARA: TIBStringField;
    qryConcessionariaNOVO_ID_CONCESSIONARIA: TIntegerField;
    qryTransferencia: TIBQuery;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBStringField26: TIBStringField;
    IntegerField13: TIntegerField;
    dtsTransferencia: TDataSource;
    qryNfTID_NOFISA: TIntegerField;
    qryNfTID_CONCESSIONARIA: TIntegerField;
    qryNfTID_CLIENTES: TIntegerField;
    qryNfTNUMERO: TIntegerField;
    qryNfTSERIENF: TIBStringField;
    qryNfTEMISSAO: TDateField;
    qryNfTORIGEM: TIBStringField;
    qryNfTENT_SAI: TIBStringField;
    qryNfTVENDEDOR: TIntegerField;
    qryNfTSAIDA: TDateField;
    qryNfTHORA: TIBStringField;
    qryNfTIE_SUBS: TIBStringField;
    qryNfTDESC_PEC: TIBBCDField;
    qryNfTDESC_OFI: TIBBCDField;
    qryNfTBASE_ICMS: TIBBCDField;
    qryNfTVAL_ICMS: TIBBCDField;
    qryNfTBASE_ICM_S: TIBBCDField;
    qryNfTVAL_ICMS_S: TIBBCDField;
    qryNfTVAL_FRETE: TIBBCDField;
    qryNfTVAL_SEGURO: TIBBCDField;
    qryNfTVAL_OUTROS: TIBBCDField;
    qryNfTVAL_IPI: TIBBCDField;
    qryNfTVAL_SERV: TIBBCDField;
    qryNfTISSQN: TIBBCDField;
    qryNfTVAL_ISS: TIBBCDField;
    qryNfTTOT_PROD: TIBBCDField;
    qryNfTTOT_NOTA: TIBBCDField;
    qryNfTPIS: TIBBCDField;
    qryNfTCOFINS: TIBBCDField;
    qryNfTCOD_TRANS: TIBStringField;
    qryNfTFRETE_TIPO: TIBStringField;
    qryNfTPLACA: TIBStringField;
    qryNfTDADOS_AD01: TIBStringField;
    qryNfTDADOS_AD02: TIBStringField;
    qryNfTDADOS_AD03: TIBStringField;
    qryNfTDADOS_AD04: TIBStringField;
    qryNfTOBS: TIBStringField;
    qryNfTQTDE_PROD: TIntegerField;
    qryNfTSTATUS: TIBStringField;
    qryNfTCODIGO_FISCAL: TIBStringField;
    qryNfTDESCRICAO_CODIGO_FISCAL: TIBStringField;
    qryNfTFORMA_PAGAMENTO: TIBStringField;
    qryNfTCHAVE: TIBStringField;
    qryNfTRECIBO: TIBStringField;
    qryNfTPROTOCOLO: TIBStringField;
    qryNfTARQUIVO: TIBStringField;
    qryNfTXML: TBlobField;
    qryNfTPROTOCOLO_CANCELAMENTO: TIBStringField;
    qryNfTMOTIVO_CANCELAMENTO: TIBStringField;
    qryNfTDADOS_AD05: TIBStringField;
    qryNfTRECEBIMENTO_TRANSFERENCIA: TDateField;
    qryNfTTRANSFERENCIA_PENDENTE: TIBStringField;
    qryNfTID_MECANICO: TIntegerField;
    qryNfTID_ATENDENTE: TIntegerField;
    qryNfTQUANTIDADE_VOLUMES: TIntegerField;
    qryNfTNFE_REFERENCIADA: TIBStringField;
    qryItemNFT: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SmallintField1: TSmallintField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IntegerField4: TIntegerField;
    IBStringField22: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    dtsItemNFT: TDataSource;
    qryTotItemNFT: TIBQuery;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    dtsTotItemNFT: TDataSource;
    tblPecasT: TIBQuery;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    tblVeiculosT: TIBQuery;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    actBloco_A: TAction;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    tblTmo: TIBQuery;
    tblTmoID_TMO: TIntegerField;
    tblTmoCODIGO: TIBStringField;
    tblTmoDESCRICAO: TIBStringField;
    tblTmoID_CATEGORIA: TIntegerField;
    tblTmoTEMPO: TIBBCDField;
    tblTmoTEMPO_GAR: TIBBCDField;
    tblTmoREV_GRAT: TIBStringField;
    qryNfNUMERO_NFSE: TIBStringField;
    qryNfNFE_REFERENCIADA: TIBStringField;
    qryNfCODIGO_NFSE: TIBStringField;
    qryNfARQ_XML_RPS: TIBStringField;
    qryNfARQ_XML_NFSE: TIBStringField;
    qryNfXML_NFSE: TMemoField;
    qryNfXML_RPS: TMemoField;
    tblCodigoContaNOME: TIBStringField;
    tblCodigoContaRETENCAO_ISS: TIBStringField;
    tblForneNOME: TIBStringField;
    tblClientesNOME: TIBStringField;
    qryServicosNfDESCRICAO_SERVICO: TIBStringField;
    BtnInventario: TSpeedButton;
    sped: TACBrSPEDFiscal;
    QryEstoque: TIBQuery;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    QryEstoqueID_PECAS_ESTOQUE: TIntegerField;
    QryEstoqueID_PECAS: TIntegerField;
    QryEstoqueID_CONCESSIONARIA: TIntegerField;
    QryEstoqueESTOQUE: TIntegerField;
    QryEstoqueESTOQOS: TIntegerField;
    QryEstoqueLOCAL: TIBStringField;
    QryEstoqueCST_MEDIO: TIBBCDField;
    QryEstoqueCST_ATUAL: TIBBCDField;
    QryEstoqueULT_COMPRA: TDateField;
    QryEstoqueULT_VENDA: TDateField;
    QryEstoqueULT_PEDIDO: TDateField;
    QryEstoqueFORNECEDOR: TIBStringField;
    QryEstoquePRATELEIRA: TIBStringField;
    QryEstoqueESCANINHO_GAVETA: TIBStringField;
    QryEstoquePRECO: TIBBCDField;
    QryEstoqueVBC_ST: TIBBCDField;
    QryEstoqueVBC_STRET: TIBBCDField;
    QryEstoqueVICMS_ST: TIBBCDField;
    QryEstoqueVICMS_STRET: TIBBCDField;
    QryEstoqueCST: TIBStringField;
    tblPecas2: TIBQuery;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    CheckBoxH020: TCheckBox;
    tblVeiculos2: TIBQuery;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    tblVeiculos2STATUS: TIBStringField;
    tblVeiculos2ID_CONCESSIONARIA: TIntegerField;
    tblVeiculos2CST: TIBStringField;
    tblVeiculos2CUSTO_ICMS: TIBBCDField;
    CheckBoxPecas: TCheckBox;
    CheckBoxVeiculos: TCheckBox;
    tblveiculos4: TIBDataSet;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    IntegerField26: TIntegerField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    DateField10: TDateField;
    IBStringField87: TIBStringField;
    IBStringField88: TIBStringField;
    IBBCDField12: TIBBCDField;
    IBBCDField13: TIBBCDField;
    IBBCDField14: TIBBCDField;
    DateField11: TDateField;
    IBStringField89: TIBStringField;
    IBStringField90: TIBStringField;
    IBStringField91: TIBStringField;
    IBStringField92: TIBStringField;
    IBStringField93: TIBStringField;
    DateField12: TDateField;
    IBStringField94: TIBStringField;
    IBStringField95: TIBStringField;
    IBStringField96: TIBStringField;
    IBStringField97: TIBStringField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IBStringField98: TIBStringField;
    tblveiculos4ID_VENDEDOR: TIntegerField;
    tblveiculos4NOME: TIBStringField;
    tblveiculos4NOME1: TIBStringField;
    tblveiculos4DATA_PEDIDO: TDateField;
    qryItemNfVL_PIS: TIBBCDField;
    qryItemNfCST_PIS: TIBStringField;
    qryItemNfVL_BC_PIS: TIBBCDField;
    qryItemNfALIQ_PIS_PERC: TIBBCDField;
    qryItemNfVL_COFINS: TIBBCDField;
    qryItemNfCST_COFINS: TIBStringField;
    qryItemNfVL_BC_COFINS: TIBBCDField;
    qryItemNfALIQ_COFINS_PERC: TIBBCDField;
    qryItemNfOUTRO_VALOR: TIBBCDField;
    qryItemNfVBC_STRET: TIBBCDField;
    qryItemNfPST: TIBBCDField;
    qryItemNfVICMS_STRET: TIBBCDField;
    qryItemNfPRED_BCEFET: TIBBCDField;
    qryItemNfVBC_EFET: TIBBCDField;
    qryItemNfPICMS_EFET: TIBBCDField;
    qryItemNfVICMS_EFET: TIBBCDField;
    procedure btnFechar_PClick(Sender: TObject);
    procedure btnGerar_PClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actBloco_0Execute(Sender: TObject);
    function limpa( c:String ):String;
    procedure actBloco_CExecute(Sender: TObject);
    procedure actBloco_1Execute(Sender: TObject);
    procedure actBloco_9Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDFExit(Sender: TObject);
    procedure actBloco_AExecute(Sender: TObject);
    procedure BtnInventarioClick(Sender: TObject);
    procedure GeraBlocoK();
    procedure GeraBlocoH();
    procedure GeraBloco0();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSped: TBoxSped;

implementation

uses FDB, Biblioteca, Empresas, Efuncoes;

{$R *.dfm}

procedure TBoxSped.actBloco_0Execute(Sender: TObject);
var
t:Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.

   BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0000...';

   with ACBrSpedFiscal1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin

         if BoxSPED.edtDI.Date < StrToDate('01/01/2011') then
            COD_VER  := vlVersao102
         else
            COD_VER  := vlVersao103;
         if BoxSPED.edtDI.Date >= StrToDate('01/01/2018') then
            COD_VER  := vlVersao111;
         if BoxSPED.edtDI.Date >= StrToDate('01/01/2019') then
            COD_VER  := vlVersao112;


         DT_INI      := BoxSPED.edtDI.Date;
         DT_FIN      := BoxSPED.edtDF.Date;

         case BoxSPED.edtTipoArq.ItemIndex of
          0 : COD_FIN := raOriginal;
          1 : COD_FIN := raSubstituto;
         end;

         NOME        := trim( qryFilial.FieldByName('Empresa').asString );
         CNPJ        := Limpa( qryFilial.FieldByName('CNPJ').asString );
         CPF         := '';
         UF          := trim( qryFilial.FieldByName('ESTADO').asString ) ;
         IE          := Limpa( qryFilial.FieldByName('IE').asString );
         COD_MUN     := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO
         IM          := trim( qryFilial.FieldByName('IM').asString );//'12345'; //INSCRICAO MUNICAL . COLOCAR NO CADASTRO
         SUFRAMA     := '';

         case BoxSPED.edtPerfil.ItemIndex of
         0 : IND_PERFIL := pfPerfilA;
         1 : IND_PERFIL := pfPerfilB;
         2 : IND_PERFIL := pfPerfilC;
         end;

         case BoxSPED.edtTipoAtiv.ItemIndex of
         0 : IND_ATIV   := atIndustrial;
         1 : IND_ATIV   := atOutros;
         end;
      end;

      BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0001...';

      with Registro0001New do
      begin
         IND_MOV := imComDados;

         // FILHO - Dados complementares da Empresa

         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0005...';

         with Registro0005New do
         begin
            FANTASIA   := trim( qryFilial.FieldByName('Empresa').asString );
            CEP        := trim( qryFilial.FieldByName('CEP').asString );//'00000000';                                   // COLOCAR O CEP
            ENDERECO   := trim( qryFilial.FieldByName('Endereco').asString );
            NUM        := trim( qryFilial.FieldByName('Numero').asString );//'99999' ;                                     // COLOCAR NUMERO DO LOGRADOURO
            COMPL      := trim( qryFilial.FieldByName('Complemento').asString );//'';                                           // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := trim( qryFilial.FieldByName('Bairro').asString );//'Bairro';                                     // BAIRRO
            FONE       := trim( qryFilial.FieldByName('Telefone').asString );//'';                            // TELEFONE
            FAX        := '';                                           // FAX
            EMAIL      := '';                                           // EMAIL
         end;

         // FILHO - Dados do contador.
         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0100...';

         with Registro0100New do
         begin
            // DADOS DO CONTADOR A SEREM COLOCADOS NA TABELA DE CONFIGURAÇÃO

            NOME       := '';  // NOME DO CONTADOR
            CPF        := ''; // CPF DO CONTADOR
            CRC        := ''; // CRC DO CONTADOR
            CNPJ       := ''; // CNPJ
            CEP        := ''; // CEP
            ENDERECO   := ''; // ENDEREÇO
            NUM        := ''; // NUMERO DO ENDEREÇO
            COMPL      := ''; // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := ''; // BAIRRO
            FONE       := ''; // TELEFONE
            FAX        := ''; // FAX
            EMAIL      := ''; // EMAIL
            COD_MUN    := 4313409; // CODIGO DO IBGE
         end;

         BoxSPED.StatusBar1.SimpleText := 'Gerando dados registro 0150... (Clientes)';

         tblClientes.Last;
         t := tblClientes.Recno;
         tblClientes.First;
         progresso.Max := t;

         while not tblClientes.eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0150... ' + tblClientes.fieldbyname( 'Nome' ).asString;
            progresso.Position := tblClientes.Recno;
            application.ProcessMessages();

             // Clientes e fornecedores
            with Registro0150New do
            begin
               COD_PART := trim( 'C' + tblClientes.fieldbyname( 'id_clientes' ).asString );
               NOME     := trim( tblClientes.fieldbyname( 'nome' ).asString );
               COD_PAIS := '1058';
               if trim( tblClientes.fieldbyname('cpf').asString ) = 'CNPJ' then
                  CNPJ     := trim( Limpa( tblClientes.fieldbyname( 'num_cpf' ).asString ))
               else
                  CPF      := trim( Limpa( tblClientes.fieldbyname( 'num_cpf' ).asString ));

               if (trim( tblClientes.fieldbyname('cpf').asString ) = 'CNPJ') and
                  (trim( tblClientes.fieldbyname('identidade').asString ) <> '')   then
                   IE       := trim( tblClientes.fieldbyname('identidade').AsString )//'';//'ISENTO';  // INSCRICAO ESTADUAL DO CLIENTE
               else
                   IE      := 'ISENTO';
//               if trim( tblClientes.fieldbyname('identidade').asString ) = 'ISENTO' then
//                   IE       := '';
               if (trim( tblClientes.fieldbyname('cpf').asString ) = 'CPF') then
                   IE       := 'ISENTO';

               if tblClientes.fieldbyname( 'codigo_municipio' ).asString <> '' then
               COD_MUN  := StrToInt( tblClientes.fieldbyname('codigo_municipio' ).asString );

               SUFRAMA  := '';
               ENDERECO := trim( tblClientes.fieldbyname('Endereco' ).asString );
               NUM      := trim( tblClientes.fieldbyname('Numero' ).asString );//'0'; // NUMERO DO ENDERECO
               COMPL    := trim( tblClientes.fieldbyname('Complemento' ).asString );//''; // COMPLEMENTO DO ENDERECO
               BAIRRO   := trim( tblClientes.fieldbyname('bairro').asString );

            end;

            tblClientes.Next;
         end;


         BoxSPED.StatusBar1.SimpleText := 'Gerando dados registro 0150... (Fornecedores)';

         tblForne.Last;
         t := tblForne.Recno;
         tblForne.First;
         progresso.Max := t;

         while not tblForne.eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0150... ' + tblForne.fieldbyname( 'Nome' ).asString;
            progresso.Position := tblForne.Recno;
            application.ProcessMessages();

             // fornecedores
            with Registro0150New do
            begin
               COD_PART := trim( 'F' + tblForne.fieldbyname( 'id_clientes' ).asString );
               if tblForne.FieldByName('Id_Clientes').AsInteger = 22669 then
                  COD_PART    := 'F60013';
               NOME     := trim( tblForne.fieldbyname( 'nome' ).asString );
               COD_PAIS := '1058';
               if trim( tblForne.fieldbyname('cpf').asString ) = 'CNPJ' then
                CNPJ     := trim( Limpa( tblForne.fieldbyname( 'num_cpf' ).asString ))
               else
                CPF      := trim( Limpa( tblForne.fieldbyname( 'num_cpf' ).asString ));

               IE       := 'ISENTO';  // INSCRICAO ESTADUAL DO Fornecedor

               if (trim( tblForne.fieldbyname('cpf').asString ) = 'CNPJ') and (tblForne.FieldByName('Identidade').AsString <> 'ISENTO') then
                  IE    := trim( tblForne.FieldByName('Identidade').AsString);

               if tblForne.fieldbyname( 'codigo_municipio' ).asString <> '' then
               COD_MUN  := StrToInt( tblForne.fieldbyname('codigo_municipio' ).asString );

               SUFRAMA  := '';
               ENDERECO := trim( tblForne.fieldbyname('Endereco' ).asString );
               NUM      := trim( tblForne.fieldbyname('Numero' ).asString );//'0'; // NUMERO DO ENDERECO
               COMPL    := trim( tblForne.fieldbyname('Complemento' ).asString );//''; // COMPLEMENTO DO ENDERECO
               BAIRRO   := trim( tblForne.fieldbyname('bairro').asString );

            end;

            tblForne.Next;
         end;

         //--- 0190 unidades de medida

      //   tblUnidades.First;

      //   while not tblUnidades.Eof do
     //    begin
            with Registro0190New do
            begin
        //       UNID  := trim( tblUnidades.fieldbyname('Unidade').asString );
        //       DESCR := trim( 'Unidade ' + tblUnidades.fieldbyname( 'Unidade' ).asString );
               UNID := 'PC';
               DESCR := 'PECA';
            end;

   //         tblUnidades.Next;
  //       end;
         //-----------LANCA UM ITEM COM CODIGO DE SERVICOS PARA AS NOTAS SERIE t

         with Registro0200New do
            Begin
               COD_ITEM    := 'SERVICO';
               DESCR_ITEM  := 'SERVICOS';
               UNID_INV    := 'PC';
               TIPO_ITEM   := tiServicos;    // 00 – Mercadoria para Revenda
               COD_NCM     := '99';
               COD_GEN     := '00';
               ALIQ_ICMS   := 0; // ALIQUOTA DO ICMS
            end;
         //--- 0200 produtos

          tblPecas.Last;
          t := tblPecas.Recno;
          tblPecas.First;

          progresso.Max := t;

         while not tblPecas.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Saidas)' + tblPecas.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecas.Recno;
            application.ProcessMessages();
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblPecas.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecas.fieldbyname('Descricao').asString );
               UNID_INV    := trim( tblPecas.fieldbyname('Unidade' ).asString ); //'PC'
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecas.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblPecas.Next;
         end;

          tblPecasE.Last;
          t := tblPecasE.Recno;
          tblPecasE.First;

          progresso.Max := t;

         while not tblPecasE.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Entradas)' + tblPecasE.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecasE.Recno;
            application.ProcessMessages();


            // SÓ COLOCA A PEÇA SE NAO ESTIVER NA OUTRA TABELA
            if not ( tblPecas.Locate( 'codigo', tblPecasE.fieldbyname( 'codigo' ).asString , [] ) ) then
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblPecasE.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecasE.fieldbyname('Descricao').asString );
               UNID_INV    := trim( tblPecasE.fieldbyname('Unidade' ).asString );
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecasE.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblPecasE.Next;
         end;

          tblPecasT.Last;
          t := tblPecasT.Recno;
          tblPecasT.First;

          progresso.Max := t;

         while not tblPecasT.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Entradas)' + tblPecasT.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecasT.Recno;
            application.ProcessMessages();


            // SÓ COLOCA A PEÇA SE NAO ESTIVER NA OUTRA TABELA
            if not ( tblPecas.Locate( 'codigo', tblPecasT.fieldbyname( 'codigo' ).asString , [] ) ) then
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblPecasT.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecasT.fieldbyname('Descricao').asString );
               UNID_INV    := trim( tblPecasT.fieldbyname('Unidade' ).asString );
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecasT.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblPecasT.Next;
         end;



          tblVeiculos.Last;
          t := tblVeiculos.Recno;
          tblVeiculos.First;

          progresso.Max := t;

         while not tblVeiculos.Eof do
         begin

            progresso.Position   := tblVeiculos.Recno;
            application.ProcessMessages();

            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200...(Saida)' + tblVeiculos.fieldbyname( 'Chassi' ).asString;
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblVeiculos.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculos.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculos.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculos.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculos.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculos.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculos.Next;

         end;

          tblVeiculosE.Last;
          t := tblVeiculosE.Recno;
          tblVeiculosE.First;

          progresso.Max := t;

         while not tblVeiculosE.Eof do
         begin

            progresso.Position   := tblVeiculosE.Recno;
            application.ProcessMessages();

            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200...(Entrada)' + tblVeiculosE.fieldbyname( 'Chassi' ).asString;

            // SÓ COLOCA O VEICULO SE ELE NAO ESTA NA OUTRA TABELA

            if not ( tblVeiculos.Locate( 'chassi', tblVeiculosE.fieldbyname( 'chassi' ).asString , [] ) ) then
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblVeiculosE.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculosE.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculosE.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculosE.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculosE.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculosE.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculosE.Next;

         end;

          tblVeiculosT.Last;
          t := tblVeiculosT.Recno;
          tblVeiculosT.First;

          progresso.Max := t;

         while not tblVeiculosT.Eof do
         begin

            progresso.Position   := tblVeiculosT.Recno;
            application.ProcessMessages();

            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200...(Entrada)' + tblVeiculosT.fieldbyname( 'Chassi' ).asString;
            // SÓ COLOCA O VEICULO SE ELE NAO ESTA NA OUTRA TABELA

            if not ( tblVeiculos.Locate( 'chassi', tblVeiculosT.fieldbyname( 'chassi' ).asString , [] ) ) then
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblVeiculosT.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculosT.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculosT.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculosT.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculosT.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculosT.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculosT.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculosT.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculosT.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculosT.Next;

         end;



      end;
   end;


end;

procedure TBoxSped.actBloco_1Execute(Sender: TObject);
begin
   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco 1... ';
end;

procedure TBoxSped.actBloco_9Execute(Sender: TObject);
begin
   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco 9... ';
   ACBrSPEDFiscal1.WriteBloco_9;
end;

procedure TBoxSped.actBloco_AExecute(Sender: TObject);
var
arq:String;
begin

  StatusBar1.SimpleText := 'Gerando Bloco A...';
  application.ProcessMessages;
  arq := 'EFD_'+EdtNomeArq.Text;
  arq := edtPastaDestino.text + '\' + arq;

  with ACBrSPEDPisCofins1 do
  begin
    Arquivo := arq;
    DT_INI := edtDi.Date;
    DT_FIN := edtDf.Date;
    IniciaGeracao;

    with Bloco_0 do
      begin
        with Registro0000New do
        begin

        COD_VER          := vlVersao201;
        TIPO_ESCRIT      := tpEscrOriginal;
        IND_SIT_ESP      := indSitAbertura;
        NUM_REC_ANTERIOR := '';
         DT_INI      := BoxSPED.edtDI.Date;
         DT_FIN      := BoxSPED.edtDF.Date;


         NOME        := trim( qryFilial.FieldByName('Empresa').asString );
         CNPJ        := Limpa( qryFilial.FieldByName('CNPJ').asString );
//         CPF         := '';
         UF          := trim( qryFilial.FieldByName('ESTADO').asString ) ;
//         IE          := Limpa( qryFilial.FieldByName('IE').asString );
         COD_MUN     := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO
//         IM          := trim( qryFilial.FieldByName('IM').asString );//'12345'; //INSCRICAO MUNICAL . COLOCAR NO CADASTRO
         SUFRAMA     := '';

        with Registro0001New do
        begin
           IND_MOV :=  AcbrEpCBlocos.imComDados ;
           // FILHO - Dados do contador.
           with Registro0100New do
           begin
              NOME       := '';
              CPF        := ''; // Deve ser uma informação valida
              CRC        := '';
              CNPJ       := '';
              CEP        := '';
              ENDERECO   := '';
              NUM        := '';
              COMPL      := '';
              BAIRRO     := '';
              FONE       := '';
              FAX        := '';
              EMAIL      := '';
              COD_MUN    := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO;
           end;

           with Registro0110New do
           begin
              COD_INC_TRIB  := codEscrOpIncNaoCumulativo; //codEscrOpIncCumulativo;
              IND_APRO_CRED := indMetodoApropriacaoDireta;
              COD_TIPO_CONT := codIndTipoConExclAliqBasica;
              //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
              //IND_REG_CUM := 1;
           end;

            with Registro0140New do
              begin
                 COD_EST := '1';
                 NOME    := trim( qryFilial.FieldByName('Empresa').asString );;
                 CNPJ    := Limpa( qryFilial.FieldByName('CNPJ').asString );;
                 UF      := trim( qryFilial.FieldByName('ESTADO').asString ) ;
                 IE      := Limpa( qryFilial.FieldByName('IE').asString );;
                 COD_MUN := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO;
                 IM      := '';
                 SUFRAMA := '';
              end;

              with Registro0190New do
              begin
                 UNID  := 'UN';
                 DESCR := 'Unidade'
              end;

             with Registro0500New do
             begin
               DT_ALT := now;
               COD_NAT_CC := ACBrEPCBlocos.ncgAtivo; //comentei para conseguir compilar sped pis cofins
               IND_CTA := ACBrEPCBlocos.indCTASintetica; //tb comentei por esse fato
               NIVEL := '0';
               COD_CTA := '1022';
               NOME_CTA := '';
               COD_CTA_REF := '0';
               CNPJ_EST := Limpa( qryFilial.FieldByName('CNPJ').asString );
             end;


              // Clientes
              with tblClientes do
              begin
                first;
                progresso.Max := REcordCount;
                while not eof do
                begin
                  progresso.Position := Recno;
                  StatusBar1.SimpleText := 'Bloco A0150 ' + fieldbyname( 'nome' ).asString;
                  Application.ProcessMessages;
                    with Registro0150New do
                    begin
                       COD_PART := fieldbyname( 'id_clientes' ).asString;
                       NOME     := fieldbyname( 'nome' ).asString;
                       COD_PAIS := '1058';

                       if( fieldbyname( 'cpf' ).asString = 'CNPJ' ) then
                       begin
                          CNPJ     := limpa( fieldbyname( 'num_cpf' ).asString );
                          CPF      := '';
                       end;

                       if( fieldbyname( 'cpf' ).asString = 'CPF' ) then
                       begin
                          CNPJ     := '';
                          CPF      := limpa( fieldbyname( 'num_cpf' ).asString );
                       end;

                       IE       := '';
                       COD_MUN  := fieldbyname( 'codigo_municipio' ).asInteger;
                       SUFRAMA  := '';
                       ENDERECO := fieldbyname( 'endereco' ).asString;
                       NUM      := fieldbyname( 'numero' ).asString;
                       COMPL    := fieldbyname( 'complemento' ).asString;
                       BAIRRO   := fieldbyname( 'bairro' ).asString;
                    end;

                  next;
                end;
              end;

              // Produtos
              with tblTmo do
              begin
                first;
                progresso.Max := RecordCount;
                while not eof do begin
                  with Registro0200New do
                  begin
                       Progresso.Position := Recno;
                       Statusbar1.SimpleText := 'Gerando blogo A200 ' + fieldbyname( 'descricao' ).asString;
                       Application.ProcessMessages;
                       COD_ITEM     := fieldbyname( 'id_tmo' ).asString;
                       DESCR_ITEM   := fieldbyname( 'descricao' ).asString;
                       COD_BARRA    := '';
                       COD_ANT_ITEM := '';
                       UNID_INV     := 'UN';
                  end;
                  next;
                end;
              end;

        end;



        end;
    end;

   with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
        IND_MOV := AcbrEpCBlocos.imComDados;
        with RegistroA010New do
        begin

          CNPJ := Limpa( qryFilial.FieldByName('CNPJ').asString );;
          with qryNF do
          begin
            first;
            progresso.Max := REcordCount;

            while not eof do
            begin

              Progresso.Position := Recno;
              StatusBar1.SimpleText := 'Gerando registro A010 ' + IntToStr( Recno ) + ' de ' + IntToStr( RecordCount );
              Application.ProcessMessages;

              if ( UpperCase( fieldbyname( 'serienf' ).asString ) <> 'T' )  then
              begin
                next;
                continue;
              end;



              with RegistroA100New do
              begin
                 IND_OPER      := itoPrestado;//itoContratado;
                 IND_EMIT      := iedfProprio;
                 COD_PART      := fieldbyname( 'id_clientes' ).asString;//
                 COD_SIT       := sdfRegular;
                 SER           := '';//fieldbyname( 'serienf').asString;
                 SUB           := '';
                 NUM_DOC       := fieldbyname( 'numero' ).asString;
                 if  (BoxEmpresas.ID_ConcessionariaEmUso.Text = '4') then
                    NUM_DOC := IntToStr(StrToInt(Substr(FieldByName('Numero_NFSE').AsString,5,11)));
                 CHV_NFSE      := '';
                 DT_DOC        := fieldbyname( 'emissao' ).asDateTime;
                 DT_EXE_SERV   := fieldbyname( 'emissao' ).asDateTime;
                 VL_DOC        := fieldbyname( 'tot_nota').asCurrency;
//                 IND_PGTO      := TSped.tpSemPagamento;
                 VL_DESC       := 0;
                 VL_BC_PIS     := VL_DOC;
                 VL_PIS        := VL_DOC * 0.0165;
                 VL_BC_COFINS  := VL_DOC;
                 VL_COFINS     := VL_DOC*0.076;
                 VL_PIS_RET    := 0;
                 VL_COFINS_RET := 0;
                 VL_ISS        := fieldbyname( 'val_iss').asCurrency;;

              end;

              with qryServicosNf do
              begin
                first;
                while not eof do
                begin

                  with RegistroA170New do
                  begin

//                  ValorPis      := ValorTotal * 0.0165;
//                  ValorCofins   := valorTotal * 0.076;

                      NUM_ITEM         := Recno;
                      COD_ITEM         := fieldbyname( 'id_tmo' ).asString;;//FormatFloat('000000', NUM_ITEM); //Código deve ser baseado no registro 0200
                      DESCR_COMPL      := fieldbyname( 'descricao_servico' ).asString;
                      VL_ITEM          := fieldbyname( 'tempo' ).asFloat * fieldbyname( 'preco' ).asCurrency;;
                      VL_DESC          := 0;
                      NAT_BC_CRED      := bccOutrasOpeComDirCredito;
                      IND_ORIG_CRED    := opcMercadoInterno;
                      CST_PIS          := ACBrEPCBlocos.stpisValorAliquotaNormal;//stpisValorAliquotaDiferenciada; //comentei para compilar sped pis e cofins
                      VL_BC_PIS        := VL_ITEM;
                      ALIQ_PIS         := 1.65;
                      VL_PIS           := VL_ITEM * ALIQ_PIS / 100;
                      CST_COFINS       := ACBrEPCBlocos.stcofinsValorAliquotaNormal;//stcofinsValorAliquotaDiferenciada; //comentei para compilar sped pis e cofins
                      VL_BC_COFINS     := VL_ITEM;
                      ALIQ_COFINS      := 7.6;
                      VL_COFINS        := VL_ITEM * ALIQ_COFINS / 100 ;
                      COD_CTA           := '1022|||6||||UN||5933|1|1|'+
                        qryFilial.FieldByName('Codigo_Municipio').AsString+'|1|'+CurrToStr(VL_ITEM)+'|||'+
                        IntToStr(qryFilial.FieldByName('aliquota_iss').AsInteger * 100) + //ALIQ ISS
                        CurrToStr(vl_item *  qryFilial.FieldByName('aliquota_iss').AsCurrency) + //vl_iss
                        '||';          //aux1
              //          ver erros

                   //   *********completar com campo que o JB EXIGE
                      //COD_CCUS         := '';
//                      COD_CCUS         := '123'; //Para usar o COD_CCUS é necessário gerar, primeiro, um registro 0600 correspondente.

                  end;

                  next;
                end;

              end;


              next;


            end;
          end;

        end;

      end;

   end;


  end;


  ACBrSPEDPisCofins1.WriteBloco_A( false );
  StatusBar1.SimpleText := '';

end;

procedure TBoxSped.actBloco_CExecute(Sender: TObject);
var
   INotas, IItens, i, NF_Ini, NF_Fim : Integer;
   AuxCodItem : string;
   AuxVlr : Currency;
   servico:boolean;
   t:Integer;
   total_Itens : Integer;
   Total_Produtos : Extended;
   Saldo_Valor_Frete : Extended;
   Saldo_Valor_Seguro : Extended;
   Saldo_BC_PIS : Extended;
   Valor_Frete : Extended;
   Valor_seguro : Extended;
   mOUTDESP : Extended;
   mCOD_CTA : String;
begin
   //--- abre tabela para registro E510
//   cdsE510.Close;
//   cdsE510.CreateDataSet;
//   cdsE510.EmptyDataSet;

   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco C.

   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco C... ';

   INotas := 0;

   //--- NFs emitidas
   with ACBrSpedFiscal1.Bloco_C do
   begin
//    if RadioGroup1.ItemIndex <> 0 then
    if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 3) then
     begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         qryNf.Last;
         t := qryNf.RecNo;
         qryNF.First;

         progresso.Max := t;


         while not qryNF.Eof do
         begin

           if( UpperCase( qryNf.fieldbyname( 'Serienf' ).asString ) ) = 'T' then
           begin
              qryNf.Next;
              Continue;
           end;

           Inc( INotas );

           BoxSPED.StatusBar1.SimpleText := 'Gerando emitidas registro C100... ' + IntToStr( INotas ) + ' de ' + IntToStr( t ) + ' Nº ' + qryNF.FieldByName('Numero').AsString;;
           progresso.Position := iNotas;
           application.ProcessMessages;
           // NOTAS FISCAIS DE SAIDA
           with RegistroC100New do
           begin
             IND_EMIT      := edEmissaoPropria;
             if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
               IND_OPER      := tpEntradaAquisicao
             else
               IND_OPER      := tpSaidaPrestacao;
             COD_MOD       := '55';   //MODELO - 55 = NF-E
             if qrynf.FieldByName('SerieNF').AsString = 'T' then
               COD_MOD     := 'NFFE';//'01';
             COD_SIT       := sdRegular; //SITUACAO DA NF-E
             if qryNf.fieldbyname( 'SerieNF' ).asString = 'e'  then
               SER := '1'
             else
              if qryNf.fieldbyname( 'SerieNF' ).asString = 'T' then
               SER           := ' '//qryNF.FieldByName('SerieNF').AsString
              else
               SER           := qryNF.FieldByName('SerieNF').AsString;

             NUM_DOC       := qryNF.FieldByName('Numero').AsString;

             CHV_NFE       := qryNF.FieldByName('Chave').AsString;
             DT_DOC        := qryNF.FieldByName('Emissao').AsDateTime;
             DT_E_S        := qryNF.FieldByName('Emissao').AsDateTime;
             VL_DOC        := qryNF.FieldByName('Tot_Nota').AsCurrency;

             COD_PART      := 'C' + qryNF.FieldByName('id_Clientes').AsString;

             if qryNF.FieldByName('Forma_Pagamento').AsString = 'V' then
                IND_PGTO   := tpVista
             else
                IND_PGTO   := tpPrazo;

             VL_DESC       := qryNF.FieldByName('Desc_Pec').AsCurrency + qryNF.FieldByName('Desc_Ofi').AsCurrency;;
             VL_ABAT_NT    := 0;
             VL_MERC       := qryNF.FieldByName('Tot_Nota').AsCurrency + VL_DESC;//qryNF.FieldByName('Tot_Prod').AsCurrency;

             VL_FRT        := qryNF.FieldByName('val_Frete').AsCurrency;

             if qryNF.FieldByName('val_frete').AsCurrency = 0 then
                IND_FRT    := tfSemCobrancaFrete
             else
             begin
                if qryNF.FieldByName('Frete_Tipo').AsInteger = 2 then
                   IND_FRT := tfPorContaDestinatario
                else
                   IND_FRT := tfPorContaEmitente;
             end;

             VL_SEG        := qryNF.FieldByName('Val_Seguro').AsCurrency;
             VL_OUT_DA     := 0;       // DESPESAS ACESSÓRIAS
             VL_BC_ICMS    := qryNF.FieldByName('Base_ICMS').AsCurrency;
             VL_ICMS       := qryNF.FieldByName('Val_ICMS').AsCurrency;
             VL_BC_ICMS_ST := 0;//qryNF.FieldByName('Base_ICM_S').AsCurrency;;
             VL_ICMS_ST    := 0;//qryNF.FieldByName('Val_ICMS_S').AsCurrency;;
             VL_IPI        := qryNF.FieldByName('Val_IPI').AsCurrency;
             VL_PIS        := qryNF.FieldByName('PIS').AsCurrency;
             VL_COFINS     := qryNF.FieldByName('Cofins').AsCurrency;
             VL_PIS_ST     := 0;
             VL_COFINS_ST  := 0;


             // VERIFICA SE TEM SERVIÇO...

             if  pos( '5949' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '6949' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '5933' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '6933' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;

             //--- c140 faturas
//             {

             qryDupl.Last;
             qryDupl.First;
                       {
             if qryDupl.RecordCount > 0 then
               with RegistroC140New do   //Inicio Adicionar os Itens:
               begin
                  IND_EMIT := edEmissaoPropria;
                  IND_TIT  := tcDuplicata;
                  NUM_TIT  := qryNF.FieldByName('Numero').AsString;
                  QTD_PARC := qryDupl.RecordCount;
                  VL_TIT   := qryNF.FieldByName('Tot_Nota').AsCurrency;

                  qryDupl.First;

                  while not qryDupl.Eof do
                  begin

                     with RegistroC141New do
                     begin
                        NUM_PARC := IntToStr( qryDupl.Recno );
                        DT_VCTO  := qryDupl.FieldByName('Vencimento').AsDateTime;
                        VL_PARC  := qryDupl.FieldByName('Valor').AsCurrency;
                     end;

                     qryDupl.Next;
                  end;

               end;
               }
               tblAux190.Close;
               tblAux190.CreateDataSet;

               //c170 --- itens da NF

                // itens da nota DE SERVIÇO..
                IItens := 0;
                tblClientes.Locate( 'id_clientes' , qryNf.fieldbyname( 'id_clientes' ).asString , [] );
                qryServicosNF.First;
                while not qryServicosNF.Eof do
                begin
                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin

                     Inc( IItens );
                     NUM_ITEM          := FormatFloat( '000' , IItens );
                     COD_ITEM          := 'SERVICO';
                     DESCR_COMPL       := trim( qryServicosNF.FieldByName('descricao_servico').asString );
                     QTD               := qryServicosNF.FieldByName('tempo').AsFloat;//0;
                     UNID              := 'PC';
                     VL_ITEM           := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                     VL_DESC           := 0;    // VALOR DO DESCONTO
                     IND_MOV           := mfNao;
                     CST_ICMS          := '041';// NAO TRIBUTADO

                     if qryNf.fieldbyname( 'serienf' ).asString = 'T' then
                        if tblClientes.fieldbyname( 'estado' ).asString = 'RS' then
                           CFOP := '5949'
                        else
                           CFOP := '6949'
                     else
                        if tblClientes.fieldbyname( 'estado' ).asString = 'RS' then
                           CFOP := '5933'
                        else
                           CFOP := '6933';

                     COD_NAT           := '';
                     ALIQ_ICMS         := 0;
                     VL_BC_ICMS        := 0;
                     VL_ICMS           := 0;
                     VL_BC_ICMS_ST     := qryItemNf.FieldByName('VBC_Efet').AsCurrency; // BASE ICMS S.T.
                     ALIQ_ST           := qryItemNf.FieldByName('pICMS_Efet').AsCurrency; // ALIQ. ICMS S.T.
                     VL_ICMS_ST        := qryItemNf.FieldByName('VICMS_Efet').AsCurrency; // VALOR ICMS S.T.
                     IND_APUR          := iaMensal;
                     CST_IPI           := '52'; //CST DO IPI - 52 = SAIDA ISENTA
                     COD_ENQ           := '';
                     VL_BC_IPI         := 0; // BASE DO IPI
                     ALIQ_IPI          := 0; // ALIQ DO IPI
                     VL_IPI            := 0; // VALOR DO IPI
                     CST_PIS           := '08'; // SEM INCIDENCIA
                     VL_BC_PIS         := 0;
                     ALIQ_PIS_PERC     := 0;
                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;
                     VL_PIS            := 0;
                     CST_COFINS        := '08'; // SEM INCIDÊNCIA
                     VL_BC_COFINS      := 0;
                     ALIQ_COFINS_PERC  := 0;
                     QUANT_BC_COFINS   := 0;
                     ALIQ_COFINS_R     := 0;
                     VL_COFINS         := 0;
                     COD_CTA           := '';
                     if (qryItemNF.FieldByName('CST').AsString = '051') and
                        (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') then
                        COD_CTA           := '2001|4|||||||||||||||';
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
                        COD_CTA           := '|||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'U') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1102') then
                          COD_CTA           := '|2001|4|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'P') then
                          COD_CTA           := '|1057|1|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1411') then
                          COD_CTA           := '|1057|1|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1949') then
                          COD_CTA           := '|302||303||||||||||||||01';

        //Agregado na data de 11/03/2019
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 5) then //cartao visa
//                        COD_CTA           := '||93167|||||||||||||||01';
                          COD_CTA           := '||93167|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 9) then //cartao master
                          COD_CTA           := '||95872|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 10) then //Hiper
                          COD_CTA           := '||95909|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 13) then //Banricompras
                          COD_CTA           := '||95947|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 14) then //Cartao Elo
                          COD_CTA           := '||95867|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 15) then //Cartao Dinners
                          COD_CTA           := '||93167|||||||||||||||01';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 16) then //Cartao Amex
                          COD_CTA           := '||93167|||||||||||||||01';
            //agregado na data de 28/03/2019
{                     if qryItemNf.FieldByName('VICMS_Efet').AsCurrency > 0 then
                      begin
                                   //com ICMS ST EFET
                          COD_CTA  := COD_CTA + '04';
                      end
                     else
                      begin
                                  //Sem ICMS ST
                         COD_CTA  := COD_CTA + '01';
                      end;
}
                     if (CFOP = '5933') or (CFOP = '6933') or (CFOP = '6949') then //mao de obra
                       begin
                          CST_PIS := '01';
                          VL_BC_PIS       := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    :=qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
                       end;



                     with tblAux190 do
                     begin

                        if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS,CFOP,ALIQ_ICMS]), [] ) then
                           tblAux190.Insert
                        else
                           tblAux190.Edit;
                           fieldbyname( 'cst' ).asString       := cst_icms;
                           fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 ) ;
                           fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                           fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                           fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                           fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                           Post;

                     end;


                  end; //Fim dos Itens;

                  qryServicosNF.Next;

                end;
                // itens da nota..

//                IItens := 0;

                qryItemNF.First;

                while not qryItemNF.Eof do
                begin

                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin

                     Inc( IItens );

                     NUM_ITEM          := FormatFloat( '000' , IItens );

                     if qryItemNf.fieldbyname( 'codigo' ).asString = '' then
                        COD_ITEM          := trim( qryItemNf.fieldbyname( 'chassi' ).asString )
                     else
                        COD_ITEM          := trim( qryItemNf.fieldbyname( 'codigo' ).asString );


                     DESCR_COMPL       := '';
                     QTD               := qryItemNF.FieldByName('qtde').AsFloat;
                     UNID              := 'PC';//Trim( UpperCase( qryItemNF.FieldByName('Unidade').AsString ) );
                     VL_ITEM           := qryItemNF.FieldByName('preco').AsCurrency * qryItemNF.FieldByName('qtde').AsFloat;
                     if qryItemNF.FieldByName('Desconto').IsNull then
                       VL_DESC         := 0
                     else
                       VL_DESC         := qryItemNF.FieldByName('Desconto').AsFloat; // VALOR DO DESCONTO
                     IND_MOV           := mfSim;
                     CST_ICMS          := qryItemNF.FieldByName('CST').asString;
                     CFOP              := StringReplace( qryItemNF.FieldByName('cfop').AsString , '.' , '' , [rfReplaceAll] );
                     COD_NAT           := '';
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       ALIQ_ICMS       := 0
                     else
                       ALIQ_ICMS       := qryItemNF.FieldByName('Aliq_ICMS').AsCurrency * 100;
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       VL_BC_ICMS      := 0
                     else
                       VL_BC_ICMS      := (qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       VL_ICMS         := 0
                     else
                       VL_ICMS         := qryItemNF.FieldByName('ICMS').AsCurrency;

                     VL_BC_ICMS_ST     := qryItemNf.FieldByName('VBC_Efet').AsCurrency; // BASE ICMS S.T.
                     ALIQ_ST           := qryItemNf.FieldByName('pICMS_Efet').AsCurrency * 100; // ALIQ. ICMS S.T.
                     VL_ICMS_ST        := qryItemNf.FieldByName('VICMS_Efet').AsCurrency; // VALOR ICMS S.T.

//                     VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
  //                   ALIQ_ST           := 0; // ALIQ. ICMS S.T.
    //                 VL_ICMS_ST        := 0; // VALOR ICMS S.T.
                     IND_APUR          := iaMensal;
                     CST_IPI           := '52'; //CST DO IPI - 52 = SAIDA ISENTA
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
                       CST_IPI           := '02'; //CST DO IPI - 52 = SAIDA ISENTA
                     COD_ENQ           := '';
                     VL_BC_IPI         := 0; // BASE DO IPI
                     ALIQ_IPI          := 0; // ALIQ DO IPI
                     VL_IPI            := 0; // VALOR DO IPI

                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_PIS         := '04' // tributavel monofasica -aliquota zero
                     else
                       CST_PIS         := '01'; // tributavel
                     if qryItemNF.FieldByName('CFOP').AsString = '5949' then //codigo_fiscal
                       CST_PIS      := '08';
                     if (qryItemNF.FieldByName('ST_COFINS').AsString = 'T') or
                        (qryItemNF.FieldByName('CFOP').AsString = '5949') then //CODIGO_FISCAL
                       VL_BC_PIS       := 0
                     else
                       VL_BC_PIS       := (qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if (qryItemNF.FieldByName('ST_COFINS').AsString = 'T') or (qryItemNF.FieldByName('CFOP').AsString = '5949') then //codigo_fiscal
                       ALIQ_PIS_PERC   := 0
                     else
                       if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_PIS_PERC     := 0.65;
                           VL_PIS            := ( qryItemNF.FieldByName('Preco').AsCurrency *
                                                  qryItemNF.FieldByName('Qtde').asFloat ) * ( 0.65 / 100 );
                         end
                       else
                         begin
                           ALIQ_PIS_PERC     := 1.65;
                           VL_PIS            := (( qryItemNF.FieldByName('Preco').AsCurrency *
                                                   qryItemNF.FieldByName('Qtde').asFloat ) -
                                                   qryItemNF.FieldByName('Desconto').AsCurrency) * ( 1.65 / 100 );
                         end;
                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;

                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_COFINS      := '04'
                     else
                       CST_COFINS      := '01';
                     if qryItemNF.FieldByName('CFOP').AsString = '5949' then //Codigo_fiscal
                       CST_COFINS      := '08';
                     if (qryItemNF.FieldByName('ST_COFINS').AsString = 'T') or (qryItemNF.FieldByName('CFOP').AsString = '5949') then //Codigo_fiscal
                       VL_BC_COFINS    := 0
                     else
                       VL_BC_COFINS    := (qryItemNF.FieldByName('Preco').AsCurrency *
                                           qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if (qryItemNF.FieldByName('ST_COFINS').AsString = 'T') or (qryItemNF.FieldByName('CFOP').AsString = '5949') then       //Codigo_fiscal
                       ALIQ_COFINS_PERC   := 0
                     else
                       if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_COFINS_PERC     := 3;
                           VL_COFINS         := ( qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat ) * ( 3 / 100 );
                         end
                       else
                         begin
                           ALIQ_COFINS_PERC  := 7.6;
                           VL_COFINS         := (( qryItemNF.FieldByName('Preco').AsCurrency *
                                                   qryItemNF.FieldByName('Qtde').asFloat ) -
                                                   qryItemNF.FieldByName('Desconto').AsCurrency) * ( 7.6 / 100 );
                         end;
                     if (CFOP = '5933') or (CFOP = '6933') then //mao de obra
                       begin
                          CST_PIS := '01';
                          VL_BC_PIS       := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    :=qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
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
                     if (QryNF.FieldByName('Origem').AsString = 'G') and
                        ((QryNF.FieldByName('Codigo_Fiscal').AsString = '1949') or
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '6949')) then
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
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
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
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'U') then //Compra de usadas
                       begin
                          CST_IPI       := '02';
                          VL_BC_ICMS    := 0;
                          VL_ICMS       := 0;
                          CST_PIS       := '74';
                          CST_COFINS    := '74';
                       end;
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'G') then //Entrada peças para garantia
                       begin
                          CST_IPI     := '02';
                          CST_PIS     := '74';
                          CST_COFINS  := '74';
                       end;

                     QUANT_BC_COFINS   := 0;
                     ALIQ_COFINS_R     := 0;
                     COD_CTA           := '';
                     mCOD_CTA          := '';

                     if (qryItemNF.FieldByName('CST').AsString = '051') and
                        (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') then
                        COD_CTA           := '2001|4||||||||||||||||';
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
                        mCOD_CTA           := '||||||||||||||||';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'U') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1102') then
                          mCOD_CTA           := '2001|4|||||||||||||||';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'P') then
                          mCOD_CTA           := '1057|1|||||||||||||||';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1411') then
                          mCOD_CTA           := '1057|1|||||||||||||||';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1949') then
                          mCOD_CTA           := '302||303||||||||||||||';
                     if (CFOP = '6949') and (qryNF.FieldByName('Origem').AsString = 'G')then
                       begin
                         COD_CTA         := '11463||11463||||||||||||||||01';//conta da remessa
//                         COD_CTA         := '|11463|11463|||||||||||||||01';//conta da remessa

                       end;
        //Agregado na data de 31/01/2019
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 5) then //cartao visa
                          mCOD_CTA           := '||93167||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 9) then //cartao master
                          mCOD_CTA           := '||95872||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 10) then //Hiper
                          mCOD_CTA           := '||95909||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 13) then //Banricompras
                          mCOD_CTA           := '||95947||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 14) then //Cartao Elo
                          mCOD_CTA           := '||95867||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 15) then //Cartao Dinners
                          mCOD_CTA           := '||93167||||||||||||||';
                     if (qryNF.FieldByName('ENT_SAI').AsString = 'S') and
                        (QryDupl.FieldByName('ID_Formas_Pagamento').AsInteger = 16) then //Cartao Amex
                          mCOD_CTA           := '||93167||||||||||||||';

            //agregado na data de 28/03/2019
                     if qryItemNf.FieldByName('VICMS_Efet').AsCurrency > 0 then
                      begin
                                   //com ICMS ST EFET
                          mCOD_CTA  := mCOD_CTA + '004|01';
                      end
                     else
                      begin
                                  //Sem ICMS ST
                         mCOD_CTA  := mCOD_CTA + '|01';
                      end;
                     if COD_CTA = '' then
                        COD_CTA := mCOD_CTA;


                     with tblAux190 do
                     begin

                        if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS , CFOP , ALIQ_ICMS]), [] ) then
                           tblAux190.Insert
                        else
                           tblAux190.Edit;

                           fieldbyname( 'cst' ).asString       := cst_icms;
                           fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 );
                           fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                           fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                           fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                           fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                           Post;
                     end;



                  end; //Fim dos Itens;

                  qryItemNF.Next;

                end;

                   //c190 -- TOTAIS DA NOTA POR CFOP

                   IItens := 0;

                   tblAux190.First;

                   while not tblAux190.Eof do
                   begin
                      Inc( IItens );

                      with RegistroC190New do
                      begin
                         CST_ICMS       := tblAux190.fieldbyname( 'cst' ).asString;
                         CFOP           := tblAux190.fieldbyname( 'cfop' ).asString;
                         ALIQ_ICMS      := tblAux190.fieldbyname( 'aliq_icms' ).asFloat;
                         VL_OPR         := tblAux190.fieldbyname( 'Total' ).asCurrency - qryNF.FieldByName('Desc_PEC').AsCurrency;
                         VL_BC_ICMS     := tblAux190.fieldbyname( 'base_icms' ).asCurrency;
                         VL_ICMS        := tblAux190.fieldbyname( 'icms' ).asCurrency;
                         VL_BC_ICMS_ST  := 0;
                         VL_ICMS_ST     := 0;
                         VL_RED_BC      := 0;
                         VL_IPI         := 0;
                         COD_OBS        := '';
                      end;
                      tblAux190.Next;
                   end;
             end;

           qryNF.Next;

           end;

         end;
     end;
//***************************************************************************************************************
       // notas fiscais de transferencias
    if (RadioGroup1.ItemIndex = 2) or (RadioGroup1.ItemIndex = 3) then
     begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         qryNfT.Last;
         t := qryNfT.RecNo;
         qryNFT.First;

         progresso.Max := t;


         while not qryNFT.Eof do
         begin
           with qryConcessionaria do
            begin
              Close;
              ParamByName('id_Concessionaria').AsInteger := qryFilial.FieldByName('Id_Concessionaria').AsInteger;
              Open;
            end;
          if //(qryFilial.FieldByName('Id_Concessionaria').AsInteger = qryConcessionaria.FieldByName('novo_id_Concessionaria').AsInteger) and
            (qryNFT.FieldByName('id_Clientes').AsInteger =
             qryConcessionaria.FieldByName('id_Clientes').AsInteger)
           then

          begin
           Inc( INotas );
           BoxSPED.StatusBar1.SimpleText := 'Gerando emitidas registro C100... ' + IntToStr( INotas ) + ' de ' + IntToStr( t ) + ' Nº ' + qryNF.FieldByName('Numero').AsString;;
           progresso.Position := iNotas;
           application.ProcessMessages;
           // NOTAS FISCAIS DE SAIDA
           with RegistroC100New do
           begin
             IND_EMIT      := edTerceiros;
             IND_OPER      := tpEntradaAquisicao;
             COD_MOD       := '55';      //MODELO - 55 = NF-E
             COD_SIT       := sdRegular; //SITUACAO DA NF-E

             if qryNfT.fieldbyname( 'SerieNF' ).asString = 'e'  then
               SER := '1'
             else
              if qryNf.fieldbyname( 'SerieNF' ).asString = 'T' then
               SER           := ' '//qryNF.FieldByName('SerieNF').AsString
              else
               SER           := qryNFT.FieldByName('SerieNF').AsString;

             NUM_DOC       := qryNFT.FieldByName('Numero').AsString;

             CHV_NFE       := qryNFT.FieldByName('Chave').AsString;
             DT_DOC        := qryNFT.FieldByName('Emissao').AsDateTime;
             DT_E_S        := qryNFT.FieldByName('Emissao').AsDateTime;
             VL_DOC        := qryNFT.FieldByName('Tot_Nota').AsCurrency;

            with qryTransferencia do
             begin
              close;
              parambyname( 'id_Concessionaria' ).asInteger  := qryNFT.fieldByName('id_Concessionaria').AsInteger;
              Open;
             end;
             COD_PART      := 'C' + qryTransferencia.FieldByName('id_Clientes').AsString;

             if qryNFT.FieldByName('Forma_Pagamento').AsString = 'V' then
                IND_PGTO   := tpVista
             else
                IND_PGTO   := tpPrazo;

             VL_DESC       := qryNFT.FieldByName('Desc_Pec').AsCurrency + qryNFT.FieldByName('Desc_Ofi').AsCurrency;
             VL_ABAT_NT    := 0;
             VL_MERC       := qryNFT.FieldByName('Tot_Nota').AsCurrency + VL_DESC;//qryNF.FieldByName('Tot_Prod').AsCurrency;

             VL_FRT        := qryNFT.FieldByName('val_Frete').AsCurrency;

             if qryNFT.FieldByName('val_frete').AsCurrency = 0 then
                IND_FRT    := tfSemCobrancaFrete
             else
             begin
                if qryNFT.FieldByName('Frete_Tipo').AsInteger = 2 then
                   IND_FRT := tfPorContaDestinatario
                else
                   IND_FRT := tfPorContaEmitente;
             end;

             VL_SEG        := qryNFT.FieldByName('Val_Seguro').AsCurrency;
             VL_OUT_DA     := 0;       // DESPESAS ACESSÓRIAS
             VL_BC_ICMS    := qryNFT.FieldByName('Base_ICMS').AsCurrency;
             VL_ICMS       := qryNFT.FieldByName('Val_ICMS').AsCurrency;
             VL_BC_ICMS_ST := 0;//qryNF.FieldByName('Base_ICM_S').AsCurrency;;
             VL_ICMS_ST    := 0;//qryNF.FieldByName('Val_ICMS_S').AsCurrency;;
             VL_IPI        := qryNFT.FieldByName('Val_IPI').AsCurrency;
             VL_PIS        := qryNFT.FieldByName('PIS').AsCurrency;
             VL_COFINS     := qryNFT.FieldByName('Cofins').AsCurrency;
             VL_PIS_ST     := 0;
             VL_COFINS_ST  := 0;


             //--- c140 faturas
               tblAux190.Close;
               tblAux190.CreateDataSet;

               //c170 --- itens da NF

                // itens da nota..

                IItens := 0;
                qryItemNFT.First;

                while not qryItemNFT.Eof do
                begin

                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin

                     Inc( IItens );

                     NUM_ITEM          := FormatFloat( '000' , IItens );

                     if qryItemNfT.fieldbyname( 'codigo' ).asString = '' then
                        COD_ITEM          := trim( qryItemNfT.fieldbyname( 'chassi' ).asString )
                     else
                        COD_ITEM          := trim( qryItemNfT.fieldbyname( 'codigo' ).asString );


                     DESCR_COMPL       := '';
                     QTD               := qryItemNFT.FieldByName('qtde').AsFloat;
                     UNID              := 'PC';//Trim( UpperCase( qryItemNF.FieldByName('Unidade').AsString ) );
                     VL_ITEM           := qryItemNFT.FieldByName('preco').AsCurrency *
                                           qryItemNFT.FieldByName('qtde').AsFloat;
                     if qryItemNFT.FieldByName('Desconto').IsNull then
                       VL_DESC         := 0
                     else
                       VL_DESC         := qryItemNFT.FieldByName('Desconto').AsFloat; // VALOR DO DESCONTO
                     IND_MOV           := mfSim;
                     CST_ICMS          := qryItemNFT.FieldByName('CST').asString;
                     CFOP              := StringReplace( qryItemNFT.FieldByName('cfop').AsString , '.' , '' , [rfReplaceAll] );
                     if CFOP = '5409' then
                       CFOP := '1409';
                     if CFOP = '5152' then
                       CFOP := '1152';

                     COD_NAT           := '';
                     if qryItemNFT.FieldByName('Subst').AsString = 'T' then
                       ALIQ_ICMS       := 0
                     else
                       ALIQ_ICMS       := qryItemNFT.FieldByName('Aliq_ICMS').AsCurrency * 100;
                     if qryItemNFT.FieldByName('Subst').AsString = 'T' then
                       VL_BC_ICMS      := 0
                     else
                       VL_BC_ICMS      := (qryItemNFT.FieldByName('Preco').AsCurrency * qryItemNFT.FieldByName('Qtde').asFloat) -
                                           qryItemNFT.FieldByName('Desconto').AsCurrency;
                     if qryItemNFT.FieldByName('Subst').AsString = 'T' then
                       VL_ICMS         := 0
                     else
                       VL_ICMS         := qryItemNFT.FieldByName('ICMS').AsCurrency;
                     VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
                     ALIQ_ST           := 0; // ALIQ. ICMS S.T.
                     VL_ICMS_ST        := 0; // VALOR ICMS S.T.
                     IND_APUR          := iaMensal;
                     COD_ENQ           := '';
                     VL_BC_IPI         := 0; // BASE DO IPI
                     ALIQ_IPI          := 0; // ALIQ DO IPI
                     VL_IPI            := 0; // VALOR DO IPI

                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;

                          VL_BC_PIS := 0;
                          ALIQ_PIS_PERC :=0;
                          VL_PIS := 0;
                          VL_BC_COFINS := 0;
                          ALIQ_COFINS_PERC :=0;
                          VL_COFINS := 0;
                          CST_IPI       := '02';
                          VL_BC_ICMS    := 0;
                          VL_ICMS       := 0;
                          CST_PIS       := '74';
                          CST_COFINS    := '74';

                     QUANT_BC_COFINS   := 0;
                     ALIQ_COFINS_R     := 0;

                     COD_CTA           := '302||306|||||||||||||||01';
                     with tblAux190 do
                     begin

                        if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS , CFOP , ALIQ_ICMS]), [] ) then
                           tblAux190.Insert
                        else
                           tblAux190.Edit;

                           fieldbyname( 'cst' ).asString       := cst_icms;
                           fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 );
                           fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                           fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                           fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                           fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                           Post;
                     end;



                  end; //Fim dos Itens;

                  qryItemNFT.Next;

                end;

                   //c190 -- TOTAIS DA NOTA POR CFOP

                   IItens := 0;

                   tblAux190.First;

                   while not tblAux190.Eof do
                   begin
                      Inc( IItens );

                      with RegistroC190New do
                      begin
                         CST_ICMS       := tblAux190.fieldbyname( 'cst' ).asString;
                         CFOP           := tblAux190.fieldbyname( 'cfop' ).asString;
                         ALIQ_ICMS      := tblAux190.fieldbyname( 'aliq_icms' ).asFloat;
                         VL_OPR         := tblAux190.fieldbyname( 'Total' ).asCurrency - qryNFT.FieldByName('Desc_PEC').AsCurrency;
                         VL_BC_ICMS     := tblAux190.fieldbyname( 'base_icms' ).asCurrency;
                         VL_ICMS        := tblAux190.fieldbyname( 'icms' ).asCurrency;
                         VL_BC_ICMS_ST  := 0;
                         VL_ICMS_ST     := 0;
                         VL_RED_BC      := 0;
                         VL_IPI         := 0;
                         COD_OBS        := '';
                      end;
                      tblAux190.Next;
                   end;
           end;

          end;
          qryNFT.Next;

         end;

         end;
     end;

//***************************************************************************************************************

       // notas fiscais de entrada

//    if RadioGroup1.ItemIndex <> 1 then
    if (RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 3) then
     begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         qryNfe.Last;
         t := qryNfe.RecNo;
         qryNFe.First;

         progresso.Max := t;


         while not qryNFe.Eof do
         begin

           Inc( INotas );

           BoxSPED.StatusBar1.SimpleText := 'Gerando entradas registro C100... ' + IntToStr( INotas ) + ' de ' + IntToStr( t ) + ' Nº ' + qryNFe.FieldByName('Numero').AsString;;
           progresso.Position := iNotas;
           application.ProcessMessages;
           // NOTAS FISCAIS DE SAIDA
           with RegistroC100New do
           begin
             IND_EMIT      := edTerceiros;
             IND_OPER      := tpEntradaAquisicao;
             COD_MOD       := '55';      //MODELO - 55 = NF-E
             COD_SIT       := sdRegular; //SITUACAO DA NF-E


             if qryNfe.fieldbyname( 'Serie' ).asString = ''  then
               SER := '1'
             else
               SER           := qryNFe.FieldByName('Serie').AsString;

             NUM_DOC       := qryNFe.FieldByName('Numero').AsString;
             CHV_NFE       := qryNFe.FieldByName('Chave').AsString;
             DT_DOC        := qryNFe.FieldByName('Emissao').AsDateTime;
             DT_E_S        := qryNFe.FieldByName('Saida').AsDateTime;
             VL_DOC        := qryNFe.FieldByName('Tot_Nota').AsCurrency;
             VL_OUT_DA     := 0;       // DESPESAS ACESSÓRIAS
//             if qryNFe.FieldByName('Origem').AsString = 'N' then
             VL_OUT_DA  := qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                           qryNFe.FieldByName('Val_IPI').AsCurrency;// +
  //                         qryNFe.FieldByName('Val_PIS').AsCurrency +
    //                       qryNFe.FieldByName('Val_COFINS').AsCurrency;

             COD_PART      := 'F' + qryNFe.FieldByName('id_Clientes').AsString;
             if qryNFe.FieldByName('Id_Clientes').AsInteger = 22669 then
               COD_PART    := 'F60013';

             //if qryNFe.FieldByName('Forma_Pagamento').AsString = 'V' then
             //   IND_PGTO   := tpVista
             //else

             IND_PGTO   := tpPrazo;

             VL_DESC       := qryNFe.FieldByName('Desc_Pec').AsCurrency + qryNFe.FieldByName('Desc_Ofi').AsCurrency;;
             VL_ABAT_NT    := 0;
             if qryNFe.FieldByName('Origem').AsString = 'N' then
               VL_MERC       := qryNFe.FieldByName('TOT_NOTA').AsCurrency -
                              qryNFe.FieldByName('val_ICMS_S').AsCurrency -
                              qryNFe.FieldByName('val_Frete').AsCurrency -
                              qryNFe.FieldByName('val_Seguro').AsCurrency -
//                              qryNFe.FieldByName('val_Outros').AsCurrency - //linha excluída em 08/03/2012-pq a Yamaha está lancando PIS/COFINS Subst no campo val_outros
                              qryNFe.FieldByName('val_IPI').AsCurrency -
                              qryNFe.FieldByName('val_PIS').AsCurrency -
                              qryNFe.FieldByName('val_COFINS').AsCurrency
             else
               VL_MERC       := qryNFe.FieldByName('TOT_NOTA').AsCurrency -
                              qryNFe.FieldByName('val_ICMS_S').AsCurrency -
                              qryNFe.FieldByName('val_Frete').AsCurrency -
                              qryNFe.FieldByName('val_Seguro').AsCurrency -
                              qryNFe.FieldByName('val_Outros').AsCurrency -
                              qryNFe.FieldByName('val_IPI').AsCurrency;

                  //total_produtos;//qryNFe.FieldByName('Tot_Prod').AsCurrency;

             VL_FRT        := qryNFe.FieldByName('val_Frete').AsCurrency;

             if qryNFe.FieldByName('val_frete').AsCurrency = 0 then
                IND_FRT    := tfSemCobrancaFrete
             else
             begin
                if qryNFe.FieldByName('Frete_Tipo').AsInteger = 2 then
                   IND_FRT := tfPorContaDestinatario
                else
                   IND_FRT := tfPorContaEmitente;
             end;

             VL_SEG        := qryNFe.FieldByName('Val_Seguro').AsCurrency;
             VL_BC_ICMS    := qryNFe.FieldByName('Base_ICMS').AsCurrency;
             VL_ICMS       := qryNFe.FieldByName('Val_ICMS').AsCurrency;
             VL_BC_ICMS_ST := qryNFe.FieldByName('Base_ICM_S').AsCurrency;;
             VL_ICMS_ST    := qryNFe.FieldByName('Val_ICMS_S').AsCurrency;;
             VL_IPI        := qryNFe.FieldByName('Val_IPI').AsCurrency;
             VL_PIS        := qryNFe.FieldByName('PIS').AsCurrency;
             VL_COFINS     := qryNFe.FieldByName('Cofins').AsCurrency;
             VL_PIS_ST     := 0;
             VL_COFINS_ST  := 0;

             Saldo_Valor_Frete := VL_FRT;
             Saldo_Valor_Seguro := VL_SEG;
             Saldo_BC_PIS := VL_DOC;


             // VERIFICA SE TEM SERVIÇO...
             //if  pos( '5949' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '6949' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '5933' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '6933' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;

             tblAux190.Close;
             tblAux190.CreateDataSet;

             // itens da nota..

             IItens := 0;

             qryItemNfe.Last;
             Total_Itens := qryItemNfe.RecNo;
             Total_Produtos := 0;
             qryItemNFe.First;


             while not qryItemNFe.Eof do
             begin
               with RegistroC170New do   //Inicio Adicionar os Itens:
               begin


                  Inc( IItens );

                  NUM_ITEM          := FormatFloat( '000' , IItens );

                  if qryItemNfe.fieldbyname( 'item' ).asString = '' then
                     COD_ITEM   := trim( qryItemNfe.fieldbyname( 'chassi' ).asString )
                  else
                     COD_ITEM   := trim( qryItemNfe.fieldbyname( 'item' ).asString );

                  DESCR_COMPL       := '';
                  QTD               := qryItemNFe.FieldByName('qtde').AsFloat;
                  UNID              := 'PC';

                  if qryNfe.FieldbyName('Origem').AsString = 'P' then
                    begin
                     if total_itens = IItens then
                      VL_ITEM           := //(qryNFe.FieldByName('TOT_NOTA').AsFloat -
                                            Round(
                                            (VL_DOC -
                                            qryNFe.FieldByName('val_ICMS_S').Asfloat -
                                            qryNFe.FieldByName('VAL_FRETE').AsFloat -
                                            qryNFe.FieldByName('VAL_SEGURO').AsFloat -
                                            qryNFe.FieldByName('VAL_IPI').AsFloat -
                                            qryNFe.FieldByName('VAL_OUTROS').AsFloat -
                                            Total_Produtos)*100)/100
                     else
                      VL_ITEM           := Round(
                                          (qryItemNFe.FieldByName('vlr_unit').AsFloat *//StrToCurr(FloatToStrF((qryItemNFe.FieldByName('vlr_unit').AsFloat *
                                           qryItemNFe.FieldByName('qtde').AsFloat)*100)/100;
                    end
                  else
                    VL_ITEM           := Round((qryItemNFe.FieldByName('vlr_unit').AsFloat *
                                         qryItemNFe.FieldByName('qtde').AsFloat)*100)/100;

                  VL_DESC           := 0;          // VALOR DO DESCONTO
                  if qryNFe.FieldByName('Origem').AsString = 'N' then
                   begin

                     if qryNFe.FieldByName('Qtde_Prod').Asinteger = 1 then

                      VL_OUT_DA  := qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                    qryNFe.FieldByName('VAL_IPI').AsCurrency +
                                    qryNFe.FieldByName('Val_PIS').AsCurrency +
                                    qryNFe.FieldByName('Val_COFINS').AsCurrency
                     else
                       begin
                         if StrToInt(NUM_ITEM) = 1 then
                            VL_OUT_DA  := (qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                          qryNFe.FieldByName('VAL_IPI').AsCurrency +
                                          qryNFe.FieldByName('Val_PIS').AsCurrency +
                                          qryNFe.FieldByName('Val_COFINS').AsCurrency)/2
                         else
                            VL_OUT_DA  := (qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                          qryNFe.FieldByName('VAL_IPI').AsCurrency +
                                          qryNFe.FieldByName('Val_PIS').AsCurrency +
                                          qryNFe.FieldByName('Val_COFINS').AsCurrency) - VL_OUT_DA;
                       end;
                   end;
{                  if qryNFe.FieldByName('Origem').AsString = 'P' then
                     VL_OUT_DA := qryNFe.FieldByName('VAL_ICMS_S').AsCurrency;
                  RegistroC100New.v}
                  IND_MOV           := mfSim;
                  if qryItemNfe.FieldByName('CST').IsNull then
                    CST_ICMS          := qryItemNFe.FieldByName('CST1').asString
                  else
                    CST_ICMS          := qryItemNFe.FieldByName('CST').asString;
                  CFOP              := StringReplace( qryItemNFe.FieldByName('cfop').AsString , '.' , '' , [rfReplaceAll] );
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.101') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5101') then
                     CFOP := '1102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.102') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5102') then
                     CFOP := '1102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.401') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5401') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.402') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5402') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.403') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5403') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.405') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5405') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.101') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6101') then
                     CFOP := '2102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.102') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6102') then
                     CFOP := '2102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.401') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6401') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.403') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6403') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '2404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '2.404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6404') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.655') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6655') then
                     CFOP := '2652';
                  COD_NAT           := '';
                  ALIQ_ICMS       := qryItemNFe.FieldByName('Aliq_ICMS').AsCurrency * 100;
                  VL_BC_ICMS      := qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat;
                  VL_ICMS         := qryItemNFe.FieldByName('VLR_ICMS').AsCurrency;
                  if (CST_ICMS = '060') or (CST_ICMS = '260') then
                   begin
                     vl_ICMS := 0;
                     vl_BC_ICMS := 0;
                     ALIQ_ICMS := 0;
                   end;
                  VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
                  ALIQ_ST           := 0; // ALIQ. ICMS S.T.
                  VL_ICMS_ST        := 0;//qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency;
  //                if qryNFe.FieldByName('Origem').AsString = 'N' then
//                  VL_ICMS_ST        := qryItemNFe.FieldByName('VAL_ICMS_S').AsCurrency;
                  IND_APUR          := iaMensal;

                  CST_IPI           := '02'; //CST DO IPI - 52 = SAIDA ISENTA
                  COD_ENQ           := '';
                  VL_BC_IPI         := 0; // BASE DO IPI
                  ALIQ_IPI          := 0; // ALIQ DO IPI
                  if (qryNFe.FieldByName('Origem').AsString = 'P') then
                    VL_IPI            := 0
                  else
                    VL_IPI            := qryItemNFe.FieldByName('VLR_IPI').AsCurrency;//vlr_ipi; // VALOR DO IPI //alterado em 18/12/2011

                  VL_BC_PIS         := (qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency);

                  Valor_Frete       := (VL_BC_PIS * VL_FRT) / (VL_MERC);//StrToCurr(FloatToStrF((VL_BC_PIS * VL_FRT) / (VL_MERC),ffNumber,16,2));
                  Valor_Seguro      := (VL_BC_PIS * VL_SEG) / (VL_MERC);//StrToCurr(FloatToStrF((VL_BC_PIS * VL_SEG) / (VL_MERC),ffNumber,16,2));
//                  if total_itens = IItens then
//                    begin
//                      Valor_Frete    := Saldo_valor_Frete;
//                      Valor_Seguro   := Saldo_Valor_seguro;
//                    end;
//                  Saldo_Valor_Frete := Saldo_Valor_Frete - Valor_Frete;
//                  Saldo_Valor_Seguro := Saldo_Valor_Seguro - Valor_Seguro;

                  VL_BC_PIS         := (qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency) +
                                        valor_frete + Valor_Seguro;
                  if total_itens = IItens then
                    begin
                      VL_BC_PIS     := Saldo_BC_PIS;
                    end;
                  Saldo_BC_PIS      := Saldo_BC_PIS - VL_BC_PIS;//StrToCUrr(FloatToStrF((Saldo_BC_PIS - VL_BC_PIS),ffNumber,16,2));
                  CST_PIS           := '50';
                  ALIQ_PIS_PERC     := 1.65;
                  QUANT_BC_PIS      := 0;
                  ALIQ_PIS_R        := 0;
                  VL_PIS            := VL_BC_PIS * //((qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat ) +
                                     //  (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency) *
                                       ( 1.65 / 100 );

                  CST_COFINS        := '50';
                  VL_BC_COFINS      := VL_BC_PIS;//(qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat) +
                                       //(qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency);
                  ALIQ_COFINS_PERC  := 7.6;
                  QUANT_BC_COFINS   := 0;
                  ALIQ_COFINS_R     := 0;
                  VL_COFINS         := VL_BC_COFINS * //((qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat ) +
//                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency) *
                                       ( 7.6 / 100 );


                  COD_CTA           := '2001|1||||||||';//||||||||01';

                  if (qryItemNFe.FieldByName('ST_COFINS').AsString = 'T') or  //entrada de pecas substituicao PIS/COFINS
                     (qryNFe.FieldByName('Origem').AsString = 'N') then
                    begin
                      CST_PIS           := '75';
                      VL_BC_PIS         := 0;
                      ALIQ_PIS_PERC     := 0;
                      VL_PIS            := 0;
                      CST_COFINS        := '75';
                      VL_BC_COFINS      := 0;
                      ALIQ_COFINS_PERC  := 0;
                      VL_COFINS         := 0;
                      VL_PIS_ST         := qryNFe.FieldByName('PIS').AsCurrency;
                      VL_COFINS_ST      := qryNFe.FieldByName('Cofins').AsCurrency;


                      COD_CTA           := '2001|2||||||||';
                      if qryNFe.FieldByName('Origem').AsString = 'N' then
                        COD_CTA           := '2001|3||||||||';//||||||04';
                    end;
                  if qryNFe.FieldByName('Id_Clientes').AsInteger = 22669 then
                    begin
                     COD_CTA           := '2001|3|60013|||||||';//9||||||04';
                    end;
                  if qryNFe.FieldByName('Origem').AsString = 'N' then
                    COD_CTA :=  COD_CTA + '||||||||04';
                  if qryNFe.FieldByName('Origem').AsString = 'P' then
                   begin
                    mOUTDESP := qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency +
                    qryItemNFe.FieldByName('vlr_ipi').AsCurrency;
                    COD_CTA :=  COD_CTA + CurrToSTr(mOUTDESP) +//qryItemNFe.FieldByName('ICMS_SUBST').AsString
                                 '||||||||01';
                   end
                  else
                    COD_CTA :=  COD_CTA + '||||||||01';

                  Total_Produtos :=  Total_Produtos + VL_ITEM;

                  with tblAux190 do
                  begin

                     if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS , CFOP , ALIQ_ICMS]), [] ) then
                        tblAux190.Insert
                     else
                        tblAux190.Edit;

                        fieldbyname( 'cst' ).asString       := cst_icms;
                        fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 );
                        fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                        fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                        fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                        fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                        fieldbyname( 'icms_st' ).asFloat    := fieldbyname( 'icms_st' ).asFloat + vl_icms_st;
                        fieldByName('VLR_IPI').AsFloat      := FieldByName('VLR_IPI').AsFloat +vl_IPI;
                        Post;
                  end;



               end; //Fim dos Itens;

               qryItemNFe.Next;

             end;

                //c190 -- TOTAIS DA NOTA POR CFOP

                IItens := 0;

                tblAux190.First;

                while not tblAux190.Eof do
                begin
                   Inc( IItens );

                   with RegistroC190New do
                   begin

                      CST_ICMS       := tblAux190.fieldbyname( 'cst' ).asString;
                      CFOP           := tblAux190.fieldbyname( 'cfop' ).asString;
                      ALIQ_ICMS      := tblAux190.fieldbyname( 'aliq_icms' ).asFloat;
                      VL_OPR         := tblAux190.fieldbyname( 'Total' ).asCurrency +
                                          tblAux190.fieldbyname( 'icms_st' ).asCurrency +
                                          tblAux190.FieldBYName('VLR_IPI').AsCurrency;
                     if qryNFe.FieldByName('Origem').AsString = 'N' then
                        VL_OPR  := VL_OPR + qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                              qryNFe.FieldByName('Val_FRETE').AsCurrency +
                              qryNFe.FieldByName('Val_SEGURO').AsCurrency +
                              qryNFe.FieldByName('Val_PIS').AsCurrency +
                              qryNFe.FieldByName('Val_COFINS').AsCurrency;
                     if (qryNFe.FieldByName('Origem').AsString = 'P') and
                        (qryNFe.FieldByName('Id_Clientes').AsInteger = 1076) then
                        VL_OPR       := VL_OPR + 
                                        qryNFe.FieldByName('Val_FRETE').AsCurrency +
                                        qryNFe.FieldByName('Val_SEGURO').AsCurrency +
                                        qryNFe.FieldByName('Val_IPI').AsCurrency +
                                        qryNFe.FieldByName('VAL_ICMS_S').AsCurrency;
//                                        tblAux190.fieldbyname( 'icms_st' ).asCurrency;
                      VL_BC_ICMS     := tblAux190.fieldbyname( 'base_icms' ).asCurrency;
                      VL_ICMS        := tblAux190.fieldbyname( 'icms' ).asCurrency;
                      VL_BC_ICMS_ST  := 0;
        VL_ICMS_ST     := 0;//tblAux190.fieldbyname( 'icms_st' ).asCurrency;
                      VL_RED_BC      := 0;
                      VL_IPI         := tblAux190.FieldByName('VLR_IPI').AsCurrency;
                      COD_OBS        := '';
                   end;
                   tblAux190.Next;
                end;
           end;
            qryNfe.Next;
         end;
      end;
     end;
   end;
end;



procedure TBoxSped.btnFechar_PClick(Sender: TObject);
begin
  close;
end;

procedure TBoxSped.btnGerar_PClick(Sender: TObject);
var
t:Integer;
a1, a2:TSTringList;
na1, na2:String;
begin
{
tabelas..
NOFISA = NOTAS FISCAIS DE SAIDA E SERVICOS
SADA = ITENS DE NOTA FISCAL DE SAIDA
SEDA = ITENS DE NOTA FISCAL DE SERVICOS

NOFI = NOTA FISCAL DE ENTRADA
DADOS_NFE = ITENS DA NFE DE ENTRADA
}
   // NOTAS FISCAIS DE SAIDA
   with qryNf do
   begin
    close;
    parambyname( 'inicio' ).asDateTime  := edtDi.Date;
    parambyname( 'final' ).asDateTime   := edtDf.Date;
    Open;
   End;

   with qryNfT do
   begin
    close;
    parambyname( 'inicio' ).asDateTime  := edtDi.Date;
    parambyname( 'final' ).asDateTime   := edtDf.Date;
    Open;
   End;

   // NOTAS FISCAIS DE ENTRADA
   with qryNfe do
   begin
    close;
    parambyname( 'inicio' ).asDateTime  := edtDi.Date;
    parambyname( 'final' ).asDateTime   := edtDf.Date;
    Open;
   end;

   qryServicosNf.Open;
   qryItemNf.Open;
   qryTotServicosNf.Open;
   qryTotItem.Open;
   qryDupl.Open;

   qryItemNFT.Open;
   qryTotItemNFT.Open;
   qryItemNfe.Open;
   qryTotItemE.Open;


   with tblForne do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblVeiculos do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblVeiculosE do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblVeiculosT do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblClientes do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblPecasE do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblPecasT do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblPecas do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with ACBrSpedFiscal1 do
   begin
      Arquivo        := edtNomeArq.Text;
      Path           := edtPastaDestino.Text;
      DT_INI         := edtDI.Date;
      DT_FIN         := edtDF.Date;
      LinhasBuffer   := 100;
      IniciaGeracao;
   end;

   with tblTmo do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   actBloco_0.Execute;
   actBloco_C.Execute;
   actBloco_1.Execute;
   actBloco_9.Execute;
   actBloco_A.Execute;

   with ACBrSpedFiscal1 do
   begin
      LinhasBuffer := 100;
      SaveFileTXT;
   end;

  showmessage( 'Arquivo gerado com sucesso' );

  tblClientes.Close;
  qryConcessionaria.Close;
  qryTransferencia.Close;
  tblVeiculos.Close;
  tblVeiculosE.Close;
  tblVeiculosT.Close;
  tblPecas.close;
  tblPecasE.close;
  tblPecasT.close;
  tblForne.Close;
  qryNf.Close;
  qryNfe.Close;
  qryNfT.Close;
  qryItemNFT.Close;
  qryItemNFe.Close;
  qryTotItemNFT.Close;
  qryTotItemE.Close;


  // Troca os Cabeçalhos dos arquivos...
  a1  := TStringList.Create;
  a2  := TStringList.Create;

  na1 := edtPastaDestino.Text + '\' + EdtNomeArq.Text;
  na2 := edtPastaDestino.Text + '\EFD_' + EdtNomeArq.Text;

  A1.LoadFromFile( na1 );
  A2.LoadFromFile( na2 );

  a2.Strings[0] := a1.Strings[0];

  a2.SaveToFile( na2 );

  a1.Free;
  a2.Free;


end;

procedure TBoxSped.edtDFExit(Sender: TObject);
begin
  EdtNomeArq.Text := 'SPED_FISCAL-' +
                      formatdatetime('mm',strtodatetime(edtDF.text)) +
                      '-' +
                      formatdatetime('dd',strtodatetime(EdtDI.text)) +
                      formatdatetime('dd',strtodatetime(edtDF.text)) +
                      '.TXT';
  EdtNomeArq.SetFocus;
end;

procedure TBoxSped.FormCreate(Sender: TObject);
begin
//  ibDatabase1.Connected := true;
  qryFilial.Open;
  tblUnidades.Open;
end;

procedure TBoxSped.FormKeyPress(Sender: TObject; var Key: Char);
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

function TBoxSped.limpa(c: String): String;
begin
  c := StringReplace( c , '.', '' , [rfReplaceAll]);
  c := StringReplace( c , '-', '' , [rfReplaceAll]);
  c := StringReplace( c , '/', '' , [rfReplaceAll]);
  c := StringReplace( c , ';', '' , [rfReplaceAll]);
  c := StringReplace( c , '\', '' , [rfReplaceAll]);
  c := StringReplace( c , '=', '' , [rfReplaceAll]);
  c := StringReplace( c , '(', '' , [rfReplaceAll]);
  c := StringReplace( c , ')', '' , [rfReplaceAll]);
  result := trim(c);
end;

procedure TBoxSped.BtnInventarioClick(Sender: TObject);
begin
begin
  if MessageDlg('Confirma a geração do arquivo de inventário do SPED', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

  try
    sped.path := edtPastaDestino.Text;
    btnInventario.Enabled := false;
    btnGerar_p.Enabled := false;
    btnFechar_p.Enabled := false;

    with qryEstoque do
    begin
        close;
        ParamByName('id_Concessionaria').AsInteger := qryFilial.FieldByName('Id_Concessionaria').AsInteger;
        Open;//abre( [qryEstoque] )
    end;
    with tblveiculos2 do
    begin
      Close;
      ParamByName('id_Concessionaria').AsInteger := qryFilial.FieldByName('Id_Concessionaria').AsInteger;
      Open;
    end;
    with tblveiculos4 do
    begin
      Close;
      ParamByName('id_Concessionaria').AsInteger := qryFilial.FieldByName('Id_Concessionaria').AsInteger;
      Open;
    end;
    with Sped do
    begin
      Arquivo := 'sped-' + qryFilial.FieldByName('Id_Concessionaria').AsString;
      if CheckBoxPecas.Checked then
         Arquivo := arquivo + '-pecas';
      if CheckBoxVeiculos.Checked then
         Arquivo := arquivo + '-veiculos';
      Arquivo := Arquivo + '.txt';
      DT_INI := edtDI.Date;
      DT_FIN := edtDF.Date;
       with tblPecas2 do
       begin
          close;
//          parambyname( 'inicio' ).asDateTime := edtDi.Date;
  //        parambyname( 'final' ).asDateTime  := edtDf.Date;
            ParamByName('id_Concessionaria').AsInteger := qryFilial.FieldByName('Id_Concessionaria').AsInteger;
          Open;
       end;

      IniciaGeracao();
      GeraBloco0();

//      GeraBlocoK();
      GeraBlocoH();
//      GeraBlocoC();
      SaveFileTXT;
    end;

     showmessage( 'Arquivo gerado com sucesso' );

  finally

    btnInventario.Enabled := true;
    btnGerar_p.Enabled := true;
    btnFechar_p.Enabled := true;

  end;

end;





                       {
 with RegistroH005New do
            begin
               case frmSPED_EFD.rdgPeriodoInv.ItemIndex of
               0 : DT_INV := UltDiaMes( incMonth( frmSPED_EFD.edtDF.Date, -2));
               1 : DT_INV := UltDiaMes( frmSPED_EFD.edtDF.Date );
               2 : DT_INV := UltDiaMes( incMonth( frmSPED_EFD.edtDF.Date, -1));
               end;

               VL_INV := AuxVlr; &&& VALOR TOTAL DO INVENTARIO
            end;

 with RegistroH010New do
                  begin
                     COD_ITEM    := FieldByName('AuxCodItem').asString;
                     UNID        := FieldByName('AuxUn').asString;
                     QTD         := FieldByName('Quantidade').AsFloat;
                     VL_UNIT     := FieldByName('Valor').AsFloat;
                     VL_ITEM     := Arredonda(2, FieldByName('Quantidade').AsFloat * FieldByName('Valor').AsFloat);
                     VL_ITEM_IR  := Arredonda(2, FieldByName('Quantidade').AsFloat * FieldByName('Valor_IR').AsFloat);
                     IND_PROP    := piInformante;
                     COD_CTA     := FieldByName('ContaContabil').asString;
                  end;

 with RegistroH020New do
                        begin
                           CST_ICMS := FieldByName('CST_ICMS').asString;

                           if CST_ICMS = '000' then
                           begin
                              BC_ICMS  := VL_ITEM;
                              VL_ICMS  := Arredonda(2, VL_ITEM * (FieldByName('ICMS_UF').AsFloat / 100));
                           end;
                        end;
                      }
end;

procedure TBoxSped.GeraBlocoH;
var
vlr:Currency;
//totalLinhas : Integer;
begin

//  if( not edtGeraBlocoH.Checked ) then exit;

  vlr := 0;
 if checkBoxPecas.Checked then
  begin
    while not qryEstoque.Eof do
    begin
  //    Mensagem( 'Calculando valor do inventário' + IntToStr(qryEstoque.Recno)+ ' ' + IntToSTR(qryEstoque.RecordCount) );
      vlr := vlr + (qryEstoque.fieldbyname( 'cst_medio' ).asCurrency * qryEstoque.FieldByName('estoque').asinteger);
      qryEstoque.Next;
    end;
  end;
 if checkBoxVeiculos.Checked then
 begin
    tblVeiculos2.First;
    while not tblVeiculos2.Eof do
    begin
      vlr := vlr + (tblVeiculos2.FieldByName('custo_icms').AsCurrency);
      tblVeiculos2.Next;
    end;
    tblVeiculos4.First;
    while not tblVeiculos4.Eof do
    begin
      vlr := vlr + (tblVeiculos4.FieldByName('custo_icms').AsCurrency);
      tblVeiculos4.Next;
    end;

 end;

  with Sped.Bloco_H do
  begin
    with RegistroH001New do
    begin
      IND_MOV := imComDados;
      with RegistroH005New do
      begin
        DT_INV := edtDF.Date; //o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
        VL_INV := vlr;
        if CheckBoxH020.checked then //usar tipo 5
          MOT_INV := miDeterminacaoFiscos
        else
          MOT_INV := miFinalPeriodo;//miDeterminacaoFiscos;//válido somente para o inventário de 01/01/2019 depois
       //usar assNenhum ou para final do periodo assComercialIndustrial
        qryEstoque.First;

       if checkBoxPecas.Checked then
        begin
         while not qryEstoque.Eof do
          begin
           if qryEstoque.FieldByName('estoque').asInteger > 0 then
            begin
             with RegistroH010New do
             begin
              COD_ITEM := qryEstoque.fieldbyname( 'codigo' ).asString;
              UNID := qryEstoque.fieldbyname( 'unidade' ).asString;
              QTD := qryEstoque.fieldbyname( 'estoque' ).asFloat;
              VL_UNIT := qryEstoque.fieldbyname( 'cst_medio' ).asCurrency;
              VL_ITEM := (qryEstoque.fieldbyname( 'cst_medio' ).asCurrency) *
                         (qryEstoque.fieldbyname( 'estoque' ).asFloat);
              IND_PROP := piInformante;
              COD_PART := '';
              TXT_COMPL := '';
              COD_CTA := '302';   //         ver aqui
             if CheckBoxH020.Checked then
               begin
                  with RegistroH020new do
                  begin
                    CST_ICMS := qryEstoque.FieldByName('CST').AsString;
                    BC_ICMS  := qryEstoque.FieldByName('vBC_ST').AsCurrency +
                                qryEstoque.FieldByName('vBC_STret').AsCurrency;
                    VL_ICMS := qryEstoque.FieldByName('vICMS_ST').AsCurrency +
                               qryEstoque.FieldByName('vICMS_STret').AsCurrency;
                  end;
               end;
             end;
            end;
            qryEstoque.Next;
          end;
        end;
       if checkBoxVeiculos.Checked then
        begin
          //veiculos
          tblVeiculos2.First;
         while not tblVeiculos2.Eof do
          begin
            begin
             with RegistroH010New do
             begin
              begin
                  COD_ITEM    := trim( tblVeiculos2.fieldbyname('chassi').asString );
  //               DESCR_ITEM  := trim( tblVeiculos2.fieldbyname('Marca').asString ) +' ' +
  //                              trim( tblVeiculos2.fieldbyname('Modelo').asString ) +' ' +
  //                              trim( tblVeiculos2.fieldbyname('Cor').asString ) +' ' +
  //                              trim( tblVeiculos2.fieldbyname('Combustivel').asString ) + ' ' +
  //                              trim( tblVeiculos2.fieldbyname('ano_fabricacao').asString ) + '/' +
  //                              trim( tblVeiculos2.fieldbyname('ano_modelo').asString );
                  UNID        := 'PC';
                  QTD := 1;//tblVeiculos2.fieldbyname( 'estoque' ).asFloat;
                  VL_UNIT := tblVeiculos2.fieldbyname( 'custo_icms' ).asCurrency;
                  VL_ITEM := (tblVeiculos2.fieldbyname( 'custo_icms' ).asCurrency);
  //                           (tblVeiculos2.fieldbyname( 'estoque' ).asFloat);
                  IND_PROP := piInformante;
                  COD_PART := '';
                  TXT_COMPL := '';
                  COD_CTA := '302';//ver aqui
              end;

             if CheckBoxH020.Checked then
               begin
                  with RegistroH020new do
                  begin
                    CST_ICMS := tblVeiculos2.FieldByName('CST').AsString;
                    BC_ICMS  := tblVeiculos2.FieldByName('vBC_ST').AsCurrency +
                                tblVeiculos2.FieldByName('vBC_STret').AsCurrency;
                    VL_ICMS := tblVeiculos2.FieldByName('vICMS_ST').AsCurrency +
                               tblVeiculos2.FieldByName('vICMS_STret').AsCurrency;
                  end;
               end;
             end;
             tblVeiculos2.Next;
            end;
          end;
          //veiculos em pedido
          tblVeiculos4.First;
         while not tblVeiculos4.Eof do
          begin
            begin
             with RegistroH010New do
             begin
              begin
                  COD_ITEM    := trim( tblVeiculos4.fieldbyname('chassi').asString );
  //               DESCR_ITEM  := trim( tblVeiculos2.fieldbyname('Marca').asString ) +' ' +
  //                              trim( tblVeiculos2.fieldbyname('Modelo').asString ) +' ' +
//                              trim( tblVeiculos2.fieldbyname('Cor').asString ) +' ' +
  //                              trim( tblVeiculos2.fieldbyname('Combustivel').asString ) + ' ' +
  //                              trim( tblVeiculos2.fieldbyname('ano_fabricacao').asString ) + '/' +
  //                              trim( tblVeiculos2.fieldbyname('ano_modelo').asString );
                  UNID        := 'PC';
                  QTD := 1;//tblVeiculos2.fieldbyname( 'estoque' ).asFloat;
                  VL_UNIT := tblVeiculos4.fieldbyname( 'custo_icms' ).asCurrency;
                  VL_ITEM := (tblVeiculos4.fieldbyname( 'custo_icms' ).asCurrency);
  //                           (tblVeiculos2.fieldbyname( 'estoque' ).asFloat);
                  IND_PROP := piInformante;
                  COD_PART := '';
                  TXT_COMPL := '';
                  COD_CTA := '302';//ver aqui
              end;

             if CheckBoxH020.Checked then
               begin
                  with RegistroH020new do
                  begin
                    CST_ICMS := tblVeiculos4.FieldByName('CST').AsString;
                    BC_ICMS  := tblVeiculos4.FieldByName('vBC_ST').AsCurrency +
                                tblVeiculos4.FieldByName('vBC_STret').AsCurrency;
                    VL_ICMS := tblVeiculos4.FieldByName('vICMS_ST').AsCurrency +
                               tblVeiculos4.FieldByName('vICMS_STret').AsCurrency;
                  end;
               end;
             end;
             tblVeiculos4.Next;
            end;
          end;


        end;

      end;
    end;
  end;
end;

procedure TBoxSped.GeraBloco0;
var
t:Integer;
begin
  with sped.Bloco_0 do
  begin
          // Dados da Empresa
      with Registro0000New do
      begin

         if BoxSPED.edtDI.Date < StrToDate('01/01/2011') then
            COD_VER  := vlVersao102
         else
            COD_VER  := vlVersao103;
         if BoxSPED.edtDI.Date >= StrToDate('01/01/2018') then
            COD_VER  := vlVersao111;
         if BoxSPED.edtDI.Date >= StrToDate('01/01/2019') then
            COD_VER  := vlVersao112;

         DT_INI      := BoxSPED.edtDI.Date;
         DT_FIN      := BoxSPED.edtDF.Date;

         case BoxSPED.edtTipoArq.ItemIndex of
          0 : COD_FIN := raOriginal;
          1 : COD_FIN := raSubstituto;
         end;

         NOME        := trim( qryFilial.FieldByName('Empresa').asString );
         CNPJ        := Limpa( qryFilial.FieldByName('CNPJ').asString );
         CPF         := '';
         UF          := trim( qryFilial.FieldByName('ESTADO').asString ) ;
         IE          := Limpa( qryFilial.FieldByName('IE').asString );
         COD_MUN     := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO
         IM          := trim( qryFilial.FieldByName('IM').asString );//'12345'; //INSCRICAO MUNICAL . COLOCAR NO CADASTRO
         SUFRAMA     := '';

         case BoxSPED.edtPerfil.ItemIndex of
         0 : IND_PERFIL := pfPerfilA;
         1 : IND_PERFIL := pfPerfilB;
         2 : IND_PERFIL := pfPerfilC;
         end;

         case BoxSPED.edtTipoAtiv.ItemIndex of
         0 : IND_ATIV   := atIndustrial;
         1 : IND_ATIV   := atOutros;
         end;
      end;

      BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0001...';

      with Registro0001New do
      begin
         IND_MOV := imComDados;

         // FILHO - Dados complementares da Empresa

         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0005...';

         with Registro0005New do
         begin
            FANTASIA   := trim( qryFilial.FieldByName('Empresa').asString );
            CEP        := trim( qryFilial.FieldByName('CEP').asString );//'00000000';                                   // COLOCAR O CEP
            ENDERECO   := trim( qryFilial.FieldByName('Endereco').asString );
            NUM        := trim( qryFilial.FieldByName('Numero').asString );//'99999' ;                                     // COLOCAR NUMERO DO LOGRADOURO
            COMPL      := trim( qryFilial.FieldByName('Complemento').asString );//'';                                           // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := trim( qryFilial.FieldByName('Bairro').asString );//'Bairro';                                     // BAIRRO
            FONE       := trim( qryFilial.FieldByName('Telefone').asString );//'';                            // TELEFONE
            FAX        := '';                                           // FAX
            EMAIL      := '';                                           // EMAIL
         end;

         // FILHO - Dados do contador.
         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0100...';

         with Registro0100New do
         begin
            // DADOS DO CONTADOR A SEREM COLOCADOS NA TABELA DE CONFIGURAÇÃO

            NOME       := '';  // NOME DO CONTADOR
            CPF        := ''; // CPF DO CONTADOR
            CRC        := ''; // CRC DO CONTADOR
            CNPJ       := ''; // CNPJ
            CEP        := ''; // CEP
            ENDERECO   := ''; // ENDEREÇO
            NUM        := ''; // NUMERO DO ENDEREÇO
            COMPL      := ''; // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := ''; // BAIRRO
            FONE       := ''; // TELEFONE
            FAX        := ''; // FAX
            EMAIL      := ''; // EMAIL
            COD_MUN    := 4313409; // CODIGO DO IBGE
         end;
      end;

          with Registro0190New do
            begin
               UNID := 'PC';
               DESCR := 'PECA';
            end;
     if checkBoxPecas.checked then
      begin
       tblPecas2.Last;
       tblPecas2.first;
         while not tblPecas2.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Saidas)' + tblPecas2.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecas2.Recno;
            application.ProcessMessages();
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblPecas2.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecas2.fieldbyname('Descricao').asString );
               UNID_INV    := trim( tblPecas2.fieldbyname('Unidade' ).asString ); //'PC'
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecas2.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS

            end;

            tblPecas2.Next;
         end;

          tblPecas2.Last;
          t := tblPecas2.Recno;
          tblPecas2.First;

          progresso.Max := t;
      end;
      if checkBoxVeiculos.Checked then
       begin
        tblVeiculos2.first;
         while not tblVeiculos2.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200 Veículos...' + tblVeiculos2.fieldbyname( 'Chassi' ).asString;
            progresso.Position   := tblVeiculos2.Recno;
            application.ProcessMessages();
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblVeiculos2.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculos2.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculos2.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculos2.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculos2.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculos2.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculos2.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculos2.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculos2.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculos2.Next;
         end;

          tblVeiculos2.Last;
          t := tblVeiculos2.Recno;
          tblVeiculos2.First;

          progresso.Max := t;
          //veiculos em pedido
        tblVeiculos4.first;
         while not tblVeiculos4.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200 Veículos...' + tblVeiculos4.fieldbyname( 'Chassi' ).asString;
            progresso.Position   := tblVeiculos4.Recno;
            application.ProcessMessages();
            with Registro0200New do
            begin
               COD_ITEM    := trim( tblVeiculos4.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculos4.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculos4.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculos4.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculos4.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculos4.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculos4.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculos4.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculos4.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculos4.Next;
         end;

          tblVeiculos4.Last;
          t := tblVeiculos4.Recno;
          tblVeiculos4.First;

          progresso.Max := t;

       end;

  end;

end;

procedure TBoxSped.GeraBlocoK;

begin
//  if( not edtGeraBlocoK.Checked ) then exit;
  with Sped.Bloco_K do
  begin
    with RegistroK001New do
    begin
      IND_MOV := imComDados;

      with RegistroK100New do
      begin

        DT_INI := EdtDI.Date;
        DT_FIN := EdtDF.Date;

        qryEstoque.First;

        while not qryEstoque.Eof do
        begin

          Mensagem( 'Gerando Registro K200 ( Estoque )'+ inttoSTR(qryEstoque.Recno)+' '+ inttoSTR(qryEstoque.RecordCount) );

          with RegistroK200New do
          begin
            COD_ITEM := qryEstoque.fieldbyname( 'produto' ).asString;
            QTD := qryEstoque.fieldbyname( 'saldo' ).asFloat;

            if( qryEstoque.fieldbyname( 'terceiro' ).asString = 'S' ) then
              IND_EST := estPropInformanteTerceiros
            else
              IND_EST := estPropInformantePoder;

            COD_PART := '';
            DT_EST := edtDf.Date;

          end;
          qryEstoque.Next;
        end;
      end;
    end;
  end;

end;

end.
