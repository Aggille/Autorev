unit FDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, IBQuery, IBCustomDataSet, IBTable, IBSQL,
  IBDatabaseInfo, WideStrings, SqlExpr, FMTBcd, DBClient, Provider, IBStoredProc,
  DBTables, ExtCtrls, StdCtrls, DBXDynalink;

type
  TFDB1 = class(TForm)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    tblCFOP: TIBDataSet;
    IBDataSetPessoas: TIBDataSet;
    IBDataSetPecas: TIBDataSet;
    IBDataSetPessoasID_CLIENTES: TIntegerField;
    IBDataSetPessoasID_CONCESSIONARIA: TIntegerField;
    IBDataSetPessoasCODIGO: TIBStringField;
    IBDataSetPessoasNOME: TIBStringField;
    IBDataSetPessoasCPF: TIBStringField;
    IBDataSetPessoasIDENTIDADE: TIBStringField;
    IBDataSetPessoasNUM_CPF: TIBStringField;
    IBDataSetPessoasNASCIMENTO: TDateField;
    IBDataSetPessoasPAI: TIBStringField;
    IBDataSetPessoasMAE: TIBStringField;
    IBDataSetPessoasENDERECO: TIBStringField;
    IBDataSetPessoasBAIRRO: TIBStringField;
    IBDataSetPessoasCIDADE: TIBStringField;
    IBDataSetPessoasESTADO: TIBStringField;
    IBDataSetPessoasCEP: TIBStringField;
    IBDataSetPessoasCADASTRO: TDateField;
    IBDataSetPessoasDESCONTO: TIBBCDField;
    IBDataSetPessoasFONE1: TIBStringField;
    IBDataSetPessoasFONE2: TIBStringField;
    IBDataSetPessoasFONE3: TIBStringField;
    IBDataSetPessoasCOENDERECO: TIBStringField;
    IBDataSetPessoasCOBAIRRO: TIBStringField;
    IBDataSetPessoasCOCIDADE: TIBStringField;
    IBDataSetPessoasCOESTADO: TIBStringField;
    IBDataSetPessoasCOCEP: TIBStringField;
    IBDataSetPessoasSPC: TIBStringField;
    IBDataSetPessoasREG_SPC: TIBStringField;
    IBDataSetPessoasEMAIL: TIBStringField;
    IBDataSetPessoasCLIENTE: TIBStringField;
    IBDataSetPessoasFORNECEDOR: TIBStringField;
    IBDataSetPessoasMECANICO: TIBStringField;
    IBDataSetPessoasVENDEDOR: TIBStringField;
    IBDataSetPessoasCONTA: TIBStringField;
    IBDataSetPessoasCOMISSAO: TIBBCDField;
    IBDataSetPessoasEMPRESA: TIBStringField;
    IBDataSetPessoasADMISSAO: TDateField;
    IBDataSetPessoasSALARIO: TIBBCDField;
    IBDataSetPessoasEMPR_ENDERECO: TIBStringField;
    IBDataSetPessoasEMPR_BAIRRO: TIBStringField;
    IBDataSetPessoasEMPR_CIDADE: TIBStringField;
    IBDataSetPessoasEMPR_ESTADO: TIBStringField;
    IBDataSetPessoasEMPR_CEP: TIBStringField;
    IBDataSetPessoasEMPR_FONE: TIBStringField;
    IBDataSetPessoasREF_NOME1: TIBStringField;
    IBDataSetPessoasREF_FONE1: TIBStringField;
    IBDataSetPessoasREF_NOME2: TIBStringField;
    IBDataSetPessoasREF_FONE2: TIBStringField;
    IBDataSetPessoasREF_COML1: TIBStringField;
    IBDataSetPessoasREF_COML_FONE1: TIBStringField;
    IBDataSetPessoasREF_COML2: TIBStringField;
    IBDataSetPessoasREF_COML_FONE2: TIBStringField;
    IBDataSetPessoasREF_BANC: TIBStringField;
    IBDataSetPessoasREF_AG_BANC: TIBStringField;
    IBDataSetPessoasREF_CTA_BANC: TIBStringField;
    IBDataSetPecasID_PECAS: TIntegerField;
    IBDataSetPecasID_CONCESSIONARIA: TIntegerField;
    IBDataSetPecasCODIGO: TIBStringField;
    IBDataSetPecasDESCRICAO: TIBStringField;
    IBDataSetPecasGRUPO: TIBStringField;
    IBDataSetPecasESPECIAL: TIBStringField;
    IBDataSetPecasCOD_PROC: TIBStringField;
    IBDataSetPecasCOD_TRIB: TIBStringField;
    IBDataSetPecasLOCAL: TIBStringField;
    IBDataSetPecasUNIDADE: TIBStringField;
    IBDataSetPecasSUBSTITUTO: TIBStringField;
    IBDataSetPecasFORA_LINHA: TIBStringField;
    IBDataSetPecasESTOQUE: TIntegerField;
    IBDataSetPecasESTOQOS: TIntegerField;
    IBDataSetPecasMIN_PEDIDO: TIntegerField;
    IBDataSetPecasQTD_PEDIDA: TIntegerField;
    IBDataSetPecasCST_MEDIO: TIBBCDField;
    IBDataSetPecasCST_ATUAL: TIBBCDField;
    IBDataSetPecasICMS: TIBBCDField;
    IBDataSetPecasPRECO: TIBBCDField;
    IBDataSetPecasPRECO_GAR: TIBBCDField;
    IBDataSetPecasIPI: TIBBCDField;
    IBDataSetPecasFORNECEDOR: TIBStringField;
    IBDataSetPecasULT_COMPRA: TDateField;
    IBDataSetPecasULT_VENDA: TDateField;
    IBDataSetPecasULT_PEDIDO: TIBStringField;
    IBDataSetPecasQTDE_VENDA: TIntegerField;
    IBDataSetPecasM1_VENDAS: TIntegerField;
    IBDataSetPecasM2_VENDAS: TIntegerField;
    IBDataSetPecasM3_VENDAS: TIntegerField;
    IBDataSetPecasVEND_1ABC: TDateField;
    IBDataSetPecasVEND_2ABC: TDateField;
    IBDataSetPecasVEND_3ABC: TDateField;
    IBDataSetPecasLISTA: TIBStringField;
    IBDataSetPecasSUBST_TRIB: TIBStringField;
    IBDataSetPecasST_COFINS: TIBStringField;
    IBDataSetPecasNOVASUBS: TIBStringField;
    IBDataSetPecasCFOP1: TIBStringField;
    IBDataSetPecasCFOP2: TIBStringField;
    IBDataSetTMO: TIBDataSet;
    IBDataSetCategoria: TIBDataSet;
    IBDataSetTMOID_TMO: TIntegerField;
    IBDataSetTMOCODIGO: TIBStringField;
    IBDataSetTMODESCRICAO: TIBStringField;
    IBDataSetTMOCATEG: TIBStringField;
    IBDataSetTMOTEMPO: TIBBCDField;
    IBDataSetTMOTEMPO_GAR: TIBBCDField;
    IBDataSetTMOREV_GRAT: TIBStringField;
    IBDataSetCategoriaID_CATEGORIA: TIntegerField;
    IBDataSetCategoriaCODIGO: TIBStringField;
    IBDataSetCategoriaDESCRICAO: TIBStringField;
    IBDataSetCategoriaPRECO: TIBBCDField;
    IBDataSetCategoriaPRECO_GAR: TIBBCDField;
    IBDataSetUsuarios: TIBDataSet;
    IBDataSetUsuariosID_USUARIOS: TIntegerField;
    IBDataSetUsuariosUSUARIO: TIBStringField;
    IBDataSetUsuariosLOGIN: TIBStringField;
    IBDataSetUsuariosSENHA: TIBStringField;
    IBDataSetUsuariosADM: TIBStringField;
    IBDataSetUsuariosACESSO1: TIBStringField;
    IBDataSetUsuariosACESSO2: TIBStringField;
    IBDataSetUsuariosACESSO3: TIBStringField;
    IBDataSetUsuariosACESSO4: TIBStringField;
    IBDataSetUsuariosACESSO5: TIBStringField;
    IBDataSetUsuariosACESSO6: TIBStringField;
    IBDataSetUsuariosACESSO7: TIBStringField;
    IBDataSetUsuariosACESSO8: TIBStringField;
    IBDataSetUsuariosACESSO9: TIBStringField;
    IBDataSetUsuariosACESSO10: TIBStringField;
    IBDataSetUsuariosACESSO11: TIBStringField;
    IBDataSetUsuariosACESSO12: TIBStringField;
    IBDataSetUsuariosACESSO13: TIBStringField;
    IBDataSetUsuariosACESSO14: TIBStringField;
    IBDataSetUsuariosACESSO15: TIBStringField;
    IBDataSetUsuariosACESSO16: TIBStringField;
    IBDataSetUsuariosACESSO17: TIBStringField;
    IBDataSetUsuariosACESSO18: TIBStringField;
    IBDataSetUsuariosACESSO19: TIBStringField;
    IBDataSetUsuariosACESSO20: TIBStringField;
    IBDataSetUsuariosACESSO21: TIBStringField;
    IBDataSetUsuariosACESSO22: TIBStringField;
    IBDataSetUsuariosACESSO23: TIBStringField;
    IBDataSetUsuariosACESSO24: TIBStringField;
    IBDataSetUsuariosACESSO25: TIBStringField;
    IBDataSetUsuariosACESSO26: TIBStringField;
    IBDataSetUsuariosACESSO27: TIBStringField;
    IBDataSetUsuariosACESSO28: TIBStringField;
    IBDataSetUsuariosACESSO29: TIBStringField;
    IBDataSetUsuariosACESSO30: TIBStringField;
    IBDataSetUsuariosACESSO31: TIBStringField;
    IBDataSetUsuariosACESSO32: TIBStringField;
    IBDataSetUsuariosACESSO33: TIBStringField;
    IBDataSetUsuariosACESSO34: TIBStringField;
    IBDataSetUsuariosACESSO35: TIBStringField;
    IBDataSetUsuariosACESSO36: TIBStringField;
    IBDataSetUsuariosACESSO37: TIBStringField;
    IBDataSetUsuariosACESSO38: TIBStringField;
    IBDataSetUsuariosACESSO39: TIBStringField;
    IBDataSetUsuariosACESSO40: TIBStringField;
    IBDataSetUsuariosACESSO41: TIBStringField;
    IBDataSetUsuariosACESSO42: TIBStringField;
    IBDataSetUsuariosACESSO43: TIBStringField;
    IBDataSetUsuariosACESSO44: TIBStringField;
    IBDataSetUsuariosACESSO45: TIBStringField;
    IBDataSetUsuariosACESSO46: TIBStringField;
    IBDataSetUsuariosACESSO47: TIBStringField;
    IBDataSetUsuariosACESSO48: TIBStringField;
    IBDataSetUsuariosACESSO49: TIBStringField;
    IBDataSetUsuariosACESSO50: TIBStringField;
    IBDataSetUsuariosACESSO51: TIBStringField;
    IBDataSetUsuariosACESSO52: TIBStringField;
    IBDataSetUsuariosACESSO53: TIBStringField;
    IBDataSetUsuariosACESSO54: TIBStringField;
    IBDataSetUsuariosACESSO55: TIBStringField;
    IBDataSetUsuariosACESSO56: TIBStringField;
    IBDataSetUsuariosACESSO57: TIBStringField;
    IBDataSetUsuariosACESSO58: TIBStringField;
    IBDataSetUsuariosACESSO59: TIBStringField;
    IBDataSetUsuariosACESSO60: TIBStringField;
    IBDataSetUsuariosACESSO61: TIBStringField;
    IBDataSetUsuariosACESSO62: TIBStringField;
    IBDataSetUsuariosACESSO63: TIBStringField;
    IBDataSetUsuariosACESSO64: TIBStringField;
    IBDataSetUsuariosACESSO65: TIBStringField;
    IBDataSetUsuariosACESSO66: TIBStringField;
    IBDataSetUsuariosACESSO67: TIBStringField;
    IBDataSetUsuariosACESSO68: TIBStringField;
    IBDataSetUsuariosACESSO69: TIBStringField;
    IBDataSetUsuariosACESSO70: TIBStringField;
    IBDataSetUsuariosACESSO71: TIBStringField;
    IBDataSetUsuariosACESSO72: TIBStringField;
    IBDataSetUsuariosACESSO73: TIBStringField;
    IBDataSetUsuariosACESSO74: TIBStringField;
    IBDataSetUsuariosACESSO75: TIBStringField;
    IBDataSetUsuariosACESSO76: TIBStringField;
    IBDataSetUsuariosACESSO77: TIBStringField;
    IBDataSetUsuariosACESSO78: TIBStringField;
    IBDataSetUsuariosACESSO79: TIBStringField;
    IBDataSetUsuariosACESSO80: TIBStringField;
    IBDataSetUsuariosACESSO81: TIBStringField;
    IBDataSetUsuariosACESSO82: TIBStringField;
    IBDataSetUsuariosACESSO83: TIBStringField;
    IBDataSetUsuariosACESSO84: TIBStringField;
    IBDataSetUsuariosACESSO85: TIBStringField;
    IBDataSetUsuariosACESSO86: TIBStringField;
    IBDataSetUsuariosACESSO87: TIBStringField;
    IBDataSetUsuariosACESSO88: TIBStringField;
    IBDataSetUsuariosACESSO89: TIBStringField;
    IBDataSetUsuariosACESSO90: TIBStringField;
    IBDataSetUsuariosACESSO91: TIBStringField;
    IBDataSetUsuariosACESSO92: TIBStringField;
    IBDataSetUsuariosACESSO93: TIBStringField;
    IBDataSetUsuariosACESSO94: TIBStringField;
    IBDataSetUsuariosACESSO95: TIBStringField;
    IBDataSetUsuariosACESSO96: TIBStringField;
    IBDataSetUsuariosACESSO97: TIBStringField;
    IBDataSetUsuariosACESSO98: TIBStringField;
    IBDataSetUsuariosACESSO99: TIBStringField;
    IBDataSetUsuariosACESSO100: TIBStringField;
    IBDataSetUsuariosACESSO101: TIBStringField;
    IBDataSetUsuariosACESSO102: TIBStringField;
    IBDataSetUsuariosACESSO103: TIBStringField;
    IBDataSetUsuariosACESSO104: TIBStringField;
    IBDataSetUsuariosACESSO105: TIBStringField;
    IBDataSetUsuariosACESSO106: TIBStringField;
    IBDataSetUsuariosACESSO107: TIBStringField;
    IBDataSetUsuariosACESSO108: TIBStringField;
    IBDataSetUsuariosACESSO109: TIBStringField;
    IBDataSetUsuariosACESSO110: TIBStringField;
    IBDataSetUsuariosACESSO111: TIBStringField;
    IBDataSetUsuariosACESSO112: TIBStringField;
    IBDataSetUsuariosACESSO113: TIBStringField;
    IBDataSetUsuariosACESSO114: TIBStringField;
    IBDataSetUsuariosACESSO115: TIBStringField;
    IBDataSetUsuariosACESSO116: TIBStringField;
    IBDataSetUsuariosACESSO117: TIBStringField;
    IBDataSetUsuariosACESSO118: TIBStringField;
    IBDataSetUsuariosACESSO119: TIBStringField;
    IBDataSetUsuariosACESSO120: TIBStringField;
    IBDataSetUsuariosACESSO121: TIBStringField;
    IBDataSetUsuariosACESSO122: TIBStringField;
    IBDataSetUsuariosACESSO123: TIBStringField;
    IBDataSetUsuariosACESSO124: TIBStringField;
    IBDataSetUsuariosACESSO125: TIBStringField;
    IBDataSetUsuariosACESSO126: TIBStringField;
    IBDataSetUsuariosACESSO127: TIBStringField;
    IBDataSetUsuariosACESSO128: TIBStringField;
    IBDataSetUsuariosACESSO129: TIBStringField;
    IBDataSetUsuariosACESSO130: TIBStringField;
    IBDataSetUsuariosACESSO131: TIBStringField;
    IBDataSetUsuariosACESSO132: TIBStringField;
    IBDataSetUsuariosACESSO133: TIBStringField;
    IBDataSetUsuariosACESSO134: TIBStringField;
    IBDataSetUsuariosACESSO135: TIBStringField;
    IBDataSetUsuariosACESSO136: TIBStringField;
    IBDataSetUsuariosACESSO137: TIBStringField;
    IBDataSetUsuariosACESSO138: TIBStringField;
    IBDataSetUsuariosACESSO139: TIBStringField;
    IBDataSetUsuariosACESSO140: TIBStringField;
    IBDataSetUsuariosACESSO141: TIBStringField;
    IBDataSetUsuariosACESSO142: TIBStringField;
    IBDataSetUsuariosACESSO143: TIBStringField;
    IBDataSetUsuariosACESSO144: TIBStringField;
    IBDataSetUsuariosACESSO145: TIBStringField;
    IBDataSetUsuariosACESSO146: TIBStringField;
    IBDataSetUsuariosACESSO147: TIBStringField;
    IBDataSetUsuariosACESSO148: TIBStringField;
    IBDataSetUsuariosACESSO149: TIBStringField;
    IBDataSetUsuariosACESSO150: TIBStringField;
    IBDataSetUsuariosACESSO151: TIBStringField;
    IBDataSetUsuariosACESSO152: TIBStringField;
    IBDataSetUsuariosACESSO153: TIBStringField;
    IBDataSetUsuariosACESSO154: TIBStringField;
    IBDataSetUsuariosACESSO155: TIBStringField;
    IBDataSetUsuariosACESSO156: TIBStringField;
    IBDataSetUsuariosACESSO157: TIBStringField;
    IBDataSetUsuariosACESSO158: TIBStringField;
    IBDataSetUsuariosACESSO159: TIBStringField;
    IBDataSetUsuariosACESSO160: TIBStringField;
    IBDataSetLogin: TIBDataSet;
    IBDataSetLoginID_USUARIOS: TIntegerField;
    IBDataSetLoginUSUARIO: TIBStringField;
    IBDataSetLoginLOGIN: TIBStringField;
    IBDataSetLoginSENHA: TIBStringField;
    IBDataSetLoginADM: TIBStringField;
    IBDataSetLoginACESSO1: TIBStringField;
    IBDataSetLoginACESSO2: TIBStringField;
    IBDataSetLoginACESSO3: TIBStringField;
    IBDataSetLoginACESSO4: TIBStringField;
    IBDataSetLoginACESSO5: TIBStringField;
    IBDataSetLoginACESSO6: TIBStringField;
    IBDataSetLoginACESSO7: TIBStringField;
    IBDataSetLoginACESSO8: TIBStringField;
    IBDataSetLoginACESSO9: TIBStringField;
    IBDataSetLoginACESSO10: TIBStringField;
    IBDataSetLoginACESSO11: TIBStringField;
    IBDataSetLoginACESSO12: TIBStringField;
    IBDataSetLoginACESSO13: TIBStringField;
    IBDataSetLoginACESSO14: TIBStringField;
    IBDataSetLoginACESSO15: TIBStringField;
    IBDataSetLoginACESSO16: TIBStringField;
    IBDataSetLoginACESSO17: TIBStringField;
    IBDataSetLoginACESSO18: TIBStringField;
    IBDataSetLoginACESSO19: TIBStringField;
    IBDataSetLoginACESSO20: TIBStringField;
    IBDataSetLoginACESSO21: TIBStringField;
    IBDataSetLoginACESSO22: TIBStringField;
    IBDataSetLoginACESSO23: TIBStringField;
    IBDataSetLoginACESSO24: TIBStringField;
    IBDataSetLoginACESSO25: TIBStringField;
    IBDataSetLoginACESSO26: TIBStringField;
    IBDataSetLoginACESSO27: TIBStringField;
    IBDataSetLoginACESSO28: TIBStringField;
    IBDataSetLoginACESSO29: TIBStringField;
    IBDataSetLoginACESSO30: TIBStringField;
    IBDataSetLoginACESSO31: TIBStringField;
    IBDataSetLoginACESSO32: TIBStringField;
    IBDataSetLoginACESSO33: TIBStringField;
    IBDataSetLoginACESSO34: TIBStringField;
    IBDataSetLoginACESSO35: TIBStringField;
    IBDataSetLoginACESSO36: TIBStringField;
    IBDataSetLoginACESSO37: TIBStringField;
    IBDataSetLoginACESSO38: TIBStringField;
    IBDataSetLoginACESSO39: TIBStringField;
    IBDataSetLoginACESSO40: TIBStringField;
    IBDataSetLoginACESSO41: TIBStringField;
    IBDataSetLoginACESSO42: TIBStringField;
    IBDataSetLoginACESSO43: TIBStringField;
    IBDataSetLoginACESSO44: TIBStringField;
    IBDataSetLoginACESSO45: TIBStringField;
    IBDataSetLoginACESSO46: TIBStringField;
    IBDataSetLoginACESSO47: TIBStringField;
    IBDataSetLoginACESSO48: TIBStringField;
    IBDataSetLoginACESSO49: TIBStringField;
    IBDataSetLoginACESSO50: TIBStringField;
    IBDataSetLoginACESSO51: TIBStringField;
    IBDataSetLoginACESSO52: TIBStringField;
    IBDataSetLoginACESSO53: TIBStringField;
    IBDataSetLoginACESSO54: TIBStringField;
    IBDataSetLoginACESSO55: TIBStringField;
    IBDataSetLoginACESSO56: TIBStringField;
    IBDataSetLoginACESSO57: TIBStringField;
    IBDataSetLoginACESSO58: TIBStringField;
    IBDataSetLoginACESSO59: TIBStringField;
    IBDataSetLoginACESSO60: TIBStringField;
    IBDataSetLoginACESSO61: TIBStringField;
    IBDataSetLoginACESSO62: TIBStringField;
    IBDataSetLoginACESSO63: TIBStringField;
    IBDataSetLoginACESSO64: TIBStringField;
    IBDataSetLoginACESSO65: TIBStringField;
    IBDataSetLoginACESSO66: TIBStringField;
    IBDataSetLoginACESSO67: TIBStringField;
    IBDataSetLoginACESSO68: TIBStringField;
    IBDataSetLoginACESSO69: TIBStringField;
    IBDataSetLoginACESSO70: TIBStringField;
    IBDataSetLoginACESSO71: TIBStringField;
    IBDataSetLoginACESSO72: TIBStringField;
    IBDataSetLoginACESSO73: TIBStringField;
    IBDataSetLoginACESSO74: TIBStringField;
    IBDataSetLoginACESSO75: TIBStringField;
    IBDataSetLoginACESSO76: TIBStringField;
    IBDataSetLoginACESSO77: TIBStringField;
    IBDataSetLoginACESSO78: TIBStringField;
    IBDataSetLoginACESSO79: TIBStringField;
    IBDataSetLoginACESSO80: TIBStringField;
    IBDataSetLoginACESSO81: TIBStringField;
    IBDataSetLoginACESSO82: TIBStringField;
    IBDataSetLoginACESSO83: TIBStringField;
    IBDataSetLoginACESSO84: TIBStringField;
    IBDataSetLoginACESSO85: TIBStringField;
    IBDataSetLoginACESSO86: TIBStringField;
    IBDataSetLoginACESSO87: TIBStringField;
    IBDataSetLoginACESSO88: TIBStringField;
    IBDataSetLoginACESSO89: TIBStringField;
    IBDataSetLoginACESSO90: TIBStringField;
    IBDataSetLoginACESSO91: TIBStringField;
    IBDataSetLoginACESSO92: TIBStringField;
    IBDataSetLoginACESSO93: TIBStringField;
    IBDataSetLoginACESSO94: TIBStringField;
    IBDataSetLoginACESSO95: TIBStringField;
    IBDataSetLoginACESSO96: TIBStringField;
    IBDataSetLoginACESSO97: TIBStringField;
    IBDataSetLoginACESSO98: TIBStringField;
    IBDataSetLoginACESSO99: TIBStringField;
    IBDataSetLoginACESSO100: TIBStringField;
    IBDataSetLoginACESSO101: TIBStringField;
    IBDataSetLoginACESSO102: TIBStringField;
    IBDataSetLoginACESSO103: TIBStringField;
    IBDataSetLoginACESSO104: TIBStringField;
    IBDataSetLoginACESSO105: TIBStringField;
    IBDataSetLoginACESSO106: TIBStringField;
    IBDataSetLoginACESSO107: TIBStringField;
    IBDataSetLoginACESSO108: TIBStringField;
    IBDataSetLoginACESSO109: TIBStringField;
    IBDataSetLoginACESSO110: TIBStringField;
    IBDataSetLoginACESSO111: TIBStringField;
    IBDataSetLoginACESSO112: TIBStringField;
    IBDataSetLoginACESSO113: TIBStringField;
    IBDataSetLoginACESSO114: TIBStringField;
    IBDataSetLoginACESSO115: TIBStringField;
    IBDataSetLoginACESSO116: TIBStringField;
    IBDataSetLoginACESSO117: TIBStringField;
    IBDataSetLoginACESSO118: TIBStringField;
    IBDataSetLoginACESSO119: TIBStringField;
    IBDataSetLoginACESSO120: TIBStringField;
    IBDataSetLoginACESSO121: TIBStringField;
    IBDataSetLoginACESSO122: TIBStringField;
    IBDataSetLoginACESSO123: TIBStringField;
    IBDataSetLoginACESSO124: TIBStringField;
    IBDataSetLoginACESSO125: TIBStringField;
    IBDataSetLoginACESSO126: TIBStringField;
    IBDataSetLoginACESSO127: TIBStringField;
    IBDataSetLoginACESSO128: TIBStringField;
    IBDataSetLoginACESSO129: TIBStringField;
    IBDataSetLoginACESSO130: TIBStringField;
    IBDataSetLoginACESSO131: TIBStringField;
    IBDataSetLoginACESSO132: TIBStringField;
    IBDataSetLoginACESSO133: TIBStringField;
    IBDataSetLoginACESSO134: TIBStringField;
    IBDataSetLoginACESSO135: TIBStringField;
    IBDataSetLoginACESSO136: TIBStringField;
    IBDataSetLoginACESSO137: TIBStringField;
    IBDataSetLoginACESSO138: TIBStringField;
    IBDataSetLoginACESSO139: TIBStringField;
    IBDataSetLoginACESSO140: TIBStringField;
    IBDataSetLoginACESSO141: TIBStringField;
    IBDataSetLoginACESSO142: TIBStringField;
    IBDataSetLoginACESSO143: TIBStringField;
    IBDataSetLoginACESSO144: TIBStringField;
    IBDataSetLoginACESSO145: TIBStringField;
    IBDataSetLoginACESSO146: TIBStringField;
    IBDataSetLoginACESSO147: TIBStringField;
    IBDataSetLoginACESSO148: TIBStringField;
    IBDataSetLoginACESSO149: TIBStringField;
    IBDataSetLoginACESSO150: TIBStringField;
    IBDataSetLoginACESSO151: TIBStringField;
    IBDataSetLoginACESSO152: TIBStringField;
    IBDataSetLoginACESSO153: TIBStringField;
    IBDataSetLoginACESSO154: TIBStringField;
    IBDataSetLoginACESSO155: TIBStringField;
    IBDataSetLoginACESSO156: TIBStringField;
    IBDataSetLoginACESSO157: TIBStringField;
    IBDataSetLoginACESSO158: TIBStringField;
    IBDataSetLoginACESSO159: TIBStringField;
    IBDataSetLoginACESSO160: TIBStringField;
    IBDataSetConcessionariaLogada: TIBDataSet;
    IBDataSetVeiculos: TIBDataSet;
    IBDataSetVeiculosID_VEICULOS: TIntegerField;
    IBDataSetVeiculosID_CONCESSIONARIA: TIntegerField;
    IBDataSetVeiculosCHASSI: TIBStringField;
    IBDataSetVeiculosMARCA: TIBStringField;
    IBDataSetVeiculosMODELO: TIBStringField;
    IBDataSetVeiculosCOR: TIBStringField;
    IBDataSetVeiculosCOMBUSTIVE: TIBStringField;
    IBDataSetVeiculosANO_FABRIC: TIBStringField;
    IBDataSetVeiculosANO_MODELO: TIBStringField;
    IBDataSetVeiculosGRUPO: TIBStringField;
    IBDataSetVeiculosHP: TIBStringField;
    IBDataSetVeiculosPLACA: TIBStringField;
    IBDataSetVeiculosCNY: TIBStringField;
    IBDataSetVeiculosKM: TIntegerField;
    IBDataSetVeiculosRENAVAM: TIBStringField;
    IBDataSetVeiculosNOTA_ENT: TIBStringField;
    IBDataSetVeiculosDATA_ENT: TDateField;
    IBDataSetVeiculosCODCLI: TIBStringField;
    IBDataSetVeiculosFONE: TIBStringField;
    IBDataSetVeiculosCODFOR: TIBStringField;
    IBDataSetVeiculosCONSIG: TIBStringField;
    IBDataSetVeiculosCUSTO: TIBBCDField;
    IBDataSetVeiculosCUSTO_ICMS: TIBBCDField;
    IBDataSetVeiculosPRECO: TIBBCDField;
    IBDataSetVeiculosDATA_SAI: TDateField;
    IBDataSetVeiculosNF_SAIDA: TIBStringField;
    IBDataSetVeiculosVENDA: TIBStringField;
    IBDataSetVeiculosMOTOR: TIBStringField;
    IBDataSetVeiculosFINANC_PRO: TIBStringField;
    IBDataSetNofi: TIBDataSet;
    IBDataSetNfda: TIBDataSet;
    IBDataSetUsuariosConcessionarias: TIBDataSet;
    Bevel1: TBevel;
    IBDataSetConcessionaria: TIBDataSet;
    IBDataSetUsuariosConcessionariaLogada: TIBDataSet;
    Bevel2: TBevel;
    Bevel3: TBevel;
    IBDataSetUsuariosConcessionariasID_USUARIOS_CONCESSIONARIA: TIntegerField;
    IBDataSetUsuariosConcessionariasID_USUARIOS: TIntegerField;
    IBDataSetUsuariosConcessionariasID_CONCESSIONARIA: TIntegerField;
    tblCFOPID_CFOP: TIntegerField;
    tblCFOPDESCRICAO: TIBStringField;
    tblCFOPCODIGO: TIBStringField;
    IBDataSetNfdaID_NFDA: TIntegerField;
    IBDataSetNfdaID_CONCESSIONARIA: TIntegerField;
    IBDataSetNfdaID_NOFI: TIntegerField;
    IBDataSetNfdaID_PECAS: TIntegerField;
    IBDataSetNfdaNF: TIBStringField;
    IBDataSetNfdaITEM: TIBStringField;
    IBDataSetNfdaFORNEC: TIBStringField;
    IBDataSetNfdaQTDE: TSmallintField;
    IBDataSetNfdaCST_MEDIO: TIBBCDField;
    IBDataSetNfdaCST_ATUAL: TIBBCDField;
    IBDataSetNfdaIPI: TIBBCDField;
    IBDataSetNfdaICMS: TIBBCDField;
    IBDataSetNfdaBASE_ICMS: TIBBCDField;
    IBDataSetNfdaSUBST_TRIB: TIBStringField;
    IBDataSetConcessionariaID_CONCESSIONARIA: TIntegerField;
    IBDataSetConcessionariaEMPRESA: TIBStringField;
    IBDataSetConcessionariaENDERECO: TIBStringField;
    IBDataSetConcessionariaCIDADE: TIBStringField;
    IBDataSetConcessionariaESTADO: TIBStringField;
    IBDataSetConcessionariaCNPJ: TIBStringField;
    IBDataSetConcessionariaIE: TIBStringField;
    IBDataSetConcessionariaCONCESSION: TIBStringField;
    IBDataSetConcessionariaTELEFONE: TIBStringField;
    IBDataSetConcessionariaCOD_CONCES: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    IBDataSetUsuariosConcessionariaLogadaID_USUARIOS_CONCESSIONARIA: TIntegerField;
    IBDataSetUsuariosConcessionariaLogadaID_USUARIOS: TIntegerField;
    IBDataSetUsuariosConcessionariaLogadaID_CONCESSIONARIA: TIntegerField;
    IBDataSetNofiID_NOFI: TIntegerField;
    IBDataSetNofiID_CONCESSIONARIA: TIntegerField;
    IBDataSetNofiID_CLIENTES: TIntegerField;
    IBDataSetNofiNUMERO: TIBStringField;
    IBDataSetNofiSERIE: TIBStringField;
    IBDataSetNofiCODIGO: TIBStringField;
    IBDataSetNofiORIGEM: TIBStringField;
    IBDataSetNofiENT_SAI: TIBStringField;
    IBDataSetNofiVENDEDOR: TIBStringField;
    IBDataSetNofiCOMISSAO: TIBBCDField;
    IBDataSetNofiEMISSAO: TDateField;
    IBDataSetNofiSAIDA: TDateField;
    IBDataSetNofiHORA: TIBStringField;
    IBDataSetNofiCFOP: TIBStringField;
    IBDataSetNofiNAT_OP: TIBStringField;
    IBDataSetNofiIE_SUBS: TIBStringField;
    IBDataSetNofiFAT1: TIBStringField;
    IBDataSetNofiVAL1: TIBBCDField;
    IBDataSetNofiDAT1: TDateField;
    IBDataSetNofiFAT2: TIBStringField;
    IBDataSetNofiVAL2: TIBBCDField;
    IBDataSetNofiDAT2: TDateField;
    IBDataSetNofiFAT3: TIBStringField;
    IBDataSetNofiVAL3: TIBBCDField;
    IBDataSetNofiDAT3: TDateField;
    IBDataSetNofiFAT4: TIBStringField;
    IBDataSetNofiVAL4: TIBBCDField;
    IBDataSetNofiDAT4: TDateField;
    IBDataSetNofiFAT5: TIBStringField;
    IBDataSetNofiVAL5: TIBBCDField;
    IBDataSetNofiDAT5: TDateField;
    IBDataSetNofiFAT6: TIBStringField;
    IBDataSetNofiVAL6: TIBBCDField;
    IBDataSetNofiDAT6: TDateField;
    IBDataSetNofiFAT7: TIBStringField;
    IBDataSetNofiVAL7: TIBBCDField;
    IBDataSetNofiDAT7: TDateField;
    IBDataSetNofiFAT8: TIBStringField;
    IBDataSetNofiVAL8: TIBBCDField;
    IBDataSetNofiDAT8: TDateField;
    IBDataSetNofiFAT9: TIBStringField;
    IBDataSetNofiVAL9: TIBBCDField;
    IBDataSetNofiDAT9: TDateField;
    IBDataSetNofiDESC_PEC: TIBBCDField;
    IBDataSetNofiDESC_OFI: TIBBCDField;
    IBDataSetNofiICMS: TIBBCDField;
    IBDataSetNofiBASE_ICMS: TIBBCDField;
    IBDataSetNofiVAL_ICMS: TIBBCDField;
    IBDataSetNofiBASE_ICM_S: TIBBCDField;
    IBDataSetNofiVAL_ICMS_S: TIBBCDField;
    IBDataSetNofiVAL_FRETE: TIBBCDField;
    IBDataSetNofiVAL_SEGURO: TIBBCDField;
    IBDataSetNofiVAL_OUTROS: TIBBCDField;
    IBDataSetNofiVAL_IPI: TIBBCDField;
    IBDataSetNofiVAL_SERV: TIBBCDField;
    IBDataSetNofiISSQN: TIBBCDField;
    IBDataSetNofiVAL_ISS: TIBBCDField;
    IBDataSetNofiTOT_PROD: TIBBCDField;
    IBDataSetNofiTOT_NOTA: TIBBCDField;
    IBDataSetNofiCOD_TRANS: TIBStringField;
    IBDataSetNofiFRETE_TIPO: TIBStringField;
    IBDataSetNofiPLACA: TIBStringField;
    IBDataSetNofiDADOS_AD01: TIBStringField;
    IBDataSetNofiDADOS_AD02: TIBStringField;
    IBDataSetNofiDADOS_AD03: TIBStringField;
    IBDataSetNofiDADOS_AD04: TIBStringField;
    IBDataSetNofiOBS: TIBStringField;
    IBDataSetAtendimento: TIBDataSet;
    IBDataSetAten_Pec: TIBDataSet;
    IBDataSetAten_Serv: TIBDataSet;
    IBDataSetAtendimentoID_ATENDIME: TIntegerField;
    IBDataSetAtendimentoID_CONCESSIONARIA: TIntegerField;
    IBDataSetAtendimentoID_CLIENTES: TIntegerField;
    IBDataSetAtendimentoCODIGO: TIBStringField;
    IBDataSetAtendimentoCLIENTE: TIBStringField;
    IBDataSetAtendimentoMARCA: TIBStringField;
    IBDataSetAtendimentoMODELO: TIBStringField;
    IBDataSetAtendimentoANO_FABRIC: TIBStringField;
    IBDataSetAtendimentoANO_MODELO: TIBStringField;
    IBDataSetAtendimentoCHASSI: TIBStringField;
    IBDataSetAtendimentoKM: TIntegerField;
    IBDataSetAtendimentoDATA_ENTRA: TDateField;
    IBDataSetAtendimentoDATA_SAIDA: TDateField;
    IBDataSetAtendimentoORC_OS: TIBStringField;
    IBDataSetAtendimentoMECANICO: TIBStringField;
    IBDataSetAtendimentoCATEG: TIBStringField;
    IBDataSetAtendimentoFIM: TIBStringField;
    IBDataSetAtendimentoCOR: TIBStringField;
    IBDataSetAtendimentoPLACA: TIBStringField;
    IBDataSetAten_PecID_ATEN_PEC: TIntegerField;
    IBDataSetAten_PecID_CONCESSIONARIA: TIntegerField;
    IBDataSetAten_PecID_ATENDIME: TIntegerField;
    IBDataSetAten_PecID_PECAS: TIntegerField;
    IBDataSetAten_PecCODIGO: TIBStringField;
    IBDataSetAten_PecCOD_PECA: TIBStringField;
    IBDataSetAten_PecPECA: TIBStringField;
    IBDataSetAten_PecTIPO: TIBStringField;
    IBDataSetAten_PecQTDE: TIBStringField;
    IBDataSetAten_PecPRECO: TIBBCDField;
    IBDataSetAten_PecUNIDADE: TIBStringField;
    IBDataSetAten_PecSUBST_TRIB: TIBStringField;
    IBDataSetAten_PecST_COFINS: TIBStringField;
    IBDataSetAten_PecCFOP2: TIBStringField;
    IBDataSetAten_ServID_ATEN_SER: TIntegerField;
    IBDataSetAten_ServID_ATENDIME: TIntegerField;
    IBDataSetAten_ServID_CONCESSIONARIA: TIntegerField;
    IBDataSetAten_ServCODIGO: TIBStringField;
    IBDataSetAten_ServCOD_SERV: TIBStringField;
    IBDataSetAten_ServSERVICO: TIBStringField;
    IBDataSetAten_ServTIPO: TIBStringField;
    IBDataSetAten_ServGARANTIA: TIBStringField;
    IBDataSetAten_ServTEMPO: TIBBCDField;
    IBDataSetAten_ServVALOR: TIBBCDField;
    IBDataSetAten_ServREV_GRAT: TIBStringField;
    IBDataSetAten_ServMECANICO: TIBStringField;
    IBDataSetModVeic: TIBDataSet;
    IBDataSetModVeicID_MODVEIC: TIntegerField;
    IBDataSetModVeicMARCA: TIBStringField;
    IBDataSetModVeicMODELO: TIBStringField;
    IBDataSetModVeicCILINDROS: TIntegerField;
    IBDataSetModVeicCILINDRADAS: TIntegerField;
    IBDataSetModVeicHP: TIntegerField;
    IBDataSetModVeicCOMBUSTIVEL: TIBStringField;
    IBDataSetModVeicRENAVAM: TIBStringField;
    IBDataSetModVeicCLASSIF_FISCAL: TIBStringField;
    IBDataSetModVeicPPS: TIBBCDField;
    IBDataSetModVeicPPS_ABRACY: TIBBCDField;
    IBDataSetModVeicPRECO_VENDA: TIBBCDField;
    IBDataSetLoteConhecimento: TIBDataSet;
    IBDataSetVeiculosCLASSIF_FISCAL: TIBStringField;
    IBDataSetVeiculosSTATUS: TIBStringField;
    IBDataSetStatus: TIBDataSet;
    IBDataSetStatusID_STATUS: TIntegerField;
    IBDataSetStatusSTATUS: TIBStringField;
    IBDataSetLoteConhecimentoID_LOTE_CONHECIMENTO: TIntegerField;
    IBDataSetLoteConhecimentoID_CONCESSIONARIA: TIntegerField;
    IBDataSetLoteConhecimentoNUMERO_CONHECIMENTO: TIBStringField;
    IBDataSetLoteConhecimentoQTDE_NFS: TIBStringField;
    IBDataSetLoteConhecimentoTRANSPORTADORA: TIBStringField;
    IBDataSetLoteConhecimentoVALOR_FRETE: TIBBCDField;
    IBDataSetLoteConhecimentoVALOR_MERCADORIAS: TIBBCDField;
    IBDataSetCategoria1: TIBDataSet;
    IBDataSetCategoria1ID_CATEGORIA: TIntegerField;
    IBDataSetCategoria1CODIGO: TIBStringField;
    IBDataSetCategoria1DESCRICAO: TIBStringField;
    IBDataSetCategoria1PRECO: TIBBCDField;
    IBDataSetCategoria1PRECO_GAR: TIBBCDField;
    Bevel4: TBevel;
    SQLConnection1: TSQLConnection;
    IBDataSetPessoasTRANSPORTADORA: TIBStringField;
    IBDataSetPessoasFOTO: TIBStringField;
    IBDataSetParametros: TIBDataSet;
    tblCFOPCFOP1: TIntegerField;
    tblCFOPCFOP2: TIntegerField;
    tblCFOPREDUCAO_DE_BASE: TIBBCDField;
    tblCFOPVENDA_NOVOS: TIBStringField;
    tblCFOPVENDA_USADOS: TIBStringField;
    tblCFOPPECAS_SUBSTITUICAO_ICMS: TIBStringField;
    tblCFOPPECAS_COM_ICMS: TIBStringField;
    tblCFOPPRESTACAO_SERVICOS: TIBStringField;
    IBDataSetConcessionariaALIQUOTA_ISS: TIBBCDField;
    IBDataSetConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    IBQuery1: TIBQuery;
    IBDataSetParametrosID_PARAMETROS: TIntegerField;
    IBDataSetParametrosDESCONTO_PADRAO_PECAS: TIBBCDField;
    IBDataSetParametrosSOBRE_PRECO_PECAS: TIBBCDField;
    IBDataSetParametrosVERSAO_SISTEMA: TIBStringField;
    IBDataSetParametrosJUROS_ATRASO: TIBBCDField;
    IBDataSetParametrosDESCONTO_ADIANTAMENTO: TIBBCDField;
    IBDataSetConcessionariaCODIGO_EMPRESA_JB: TIBStringField;
    IBDataSet1: TIBDataSet;
    IBDataSetConcessionariaIM: TIBStringField;
    IBDataSetConcessionariaCNAE: TIBStringField;
    IBDataSetConcessionariaFANTASIA: TIBStringField;
    IBDataSetConcessionariaCEP: TIBStringField;
    IBDataSetConcessionariaNUMERO: TIBStringField;
    IBDataSetConcessionariaCOMPLEMENTO: TIBStringField;
    IBDataSetConcessionariaCODIGO_MUNICIPIO: TIBStringField;
    IBDataSetConcessionariaBAIRRO: TIBStringField;
    IBDataSetConcessionariaHOST: TIBStringField;
    IBDataSetConcessionariaPORT: TIBStringField;
    IBDataSetConcessionariaPASS: TIBStringField;
    IBDataSetConcessionariaUSER: TIBStringField;
    IBDataSetConcessionariaCERTIFICADO: TIBStringField;
    IBDataSetConcessionariaLOGO: TIBStringField;
    IBDataSetLoginTROCAR_SENHA: TIBStringField;
    IBDataSetUsuariosTROCAR_SENHA: TIBStringField;
    Label4: TLabel;
    tblPessoas2: TIBDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    DateField4: TDateField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    DateField5: TDateField;
    IBBCDField4: TIBBCDField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    DateField6: TDateField;
    IBBCDField6: TIBBCDField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    tblPessoas2VENDEDOR_YNOVA: TIBStringField;
    tblPessoas2CODIGOSGS: TIntegerField;
    tblCreceber2: TIBDataSet;
    tblCreceber2ID_CRECEBER: TIntegerField;
    tblCreceber2ID_CONCESSIONARIA: TIntegerField;
    tblCreceber2ID_CLIENTES: TIntegerField;
    tblCreceber2ID_AVALISTA: TIntegerField;
    tblCreceber2ID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceber2DOCUMENTO: TIBStringField;
    tblCreceber2PARCELA: TIBStringField;
    tblCreceber2VEZES: TIBStringField;
    tblCreceber2ID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceber2ORIGEM: TIBStringField;
    tblCreceber2CONTA: TIBStringField;
    tblCreceber2VENCIMENTO: TDateField;
    tblCreceber2VALOR: TIBBCDField;
    tblCreceber2EMISSAO: TDateField;
    tblCreceber2TOTAL: TIBBCDField;
    tblCreceber2PAGAMENTO: TDateField;
    tblCreceber2VALOR_PAGO: TIBBCDField;
    tblCreceber2BANCO: TIBStringField;
    tblCreceber2HISTORICO: TIBStringField;
    tblCreceber2STATUS: TIBStringField;
    tblCreceber2ID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceber2BOLETO_EMITIDO: TIBStringField;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    IBDataSetConcessionariaDIVIDIR_NF_GARANTIA: TIBStringField;
    tblPessoas2FATURA_COM_DEBITOS: TIBStringField;
    IBDataSetConcessionariaID_BANCO_CONCESSIONARIA: TIntegerField;
    IBDataSetConcessionariaFEIRA: TIBStringField;
    IBDataSetConcessionariaENDERECO_FEIRA: TIBStringField;
    IBDataSetConcessionariaDIVIDIR_NF_SERVICO: TIBStringField;
    IBDataSetConcessionariaLOGO_PREFEITURA: TIBStringField;
    IBDataSetConcessionariaATIVA: TIBStringField;
    IBDataSetConcessionariaDESPACHANTE: TIBStringField;
    IBDataSetConcessionariaFIPE: TIBStringField;
    IBDataSetConcessionariaOBRIGAR_ICMS_ST_NFE: TIBStringField;
    IBDataSetConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    IBDataSetConcessionariaEMAIL_RENAVE: TIBStringField;
    IBDataSetConcessionariaCPF_RENAVE: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure IBDataSetAfterCancel(DataSet: TDataSet);
    function ClienteComDebito(idCliente: Integer): Boolean;
  private
    { Private declarations }
  public
      { Public declarations }
      Transc: TTransactionDesc;
      procedure Start;
      procedure AtualizaDataAtual; virtual;
      function ValidaUsuario (sNome, sSenha: string): Boolean;
      function AtualizaDebitoCliente(idClientes : Integer) : Boolean;
  end;

var
  FDB1: TFDB1;

implementation

uses BIBLIOTECA, CadastroTMO, Empresas;

{$R *.dfm}

function TFDB1.AtualizaDebitoCliente(idClientes: Integer): Boolean;
begin
  Result := True;
  with tblPessoas2 do
    begin
      Close;
      ParamByName('idClientes').AsInteger := idClientes;
      Open;
      with tblCreceber2 do
        begin
          Close;
          ParamByName('DataAtual').AsDateTime := DataAtual;
          ParamByName('idClientes').AsInteger := tblPessoas2.FieldByName('id_Clientes').AsInteger;
          Open;
          if recordCount = 0 then
            begin
              tblPessoas2.Edit;
              tblPessoas2.FieldByName('SPC').AsString := 'F';
              tblPessoas2.Post;
            end
          else
            begin
              tblPessoas2.Edit;
              tblPessoas2.FieldByName('SPC').AsString := 'T';
              tblPessoas2.Post;
            end;
        end;
    end;
    if (tblPessoas2.FieldByName('SPC').AsString = 'F') then
      Result := False; //Tem D�bito
    tblCreceber2.Close;
    tblPessoas2.Close;
end;

procedure TFDB1.AtualizaDataAtual;
begin
  Fdb1.IBQuery1.Open;
  DataAtual := Fdb1.IBQuery1.FieldByName('DataAtual').AsDateTime;
  Fdb1.IBQuery1.Close;
end;

procedure TFDB1.Start;
begin
  Transc.IsolationLevel := xilREADCOMMITTED;
  Transc.TransactionID := StrToInt(IDTransaction);
  IBTransaction.StartTransaction;
end;

procedure TFDB1.FormCreate(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TFDB1.IBDataSetAfterDelete(DataSet: TDataSet);
begin
    IBTransaction.CommitRetaining;
    raise Exception.Create(MSG_ERRO);
end;

procedure TFDB1.IBDataSetAfterPost(DataSet: TDataSet);
begin
   IBTransaction.CommitRetaining;
   raise Exception.Create(MSG_ERRO);
end;

procedure TFDB1.IBDataSetAfterCancel(DataSet: TDataSet);
begin
  IBTransaction.Rollback;
  raise Exception.Create(MSG_ERRO);
end;

function TFDB1.ValidaUsuario(sNome, sSenha: string): Boolean;
begin
   IBDatasetLogin.Close;
   IBDatasetLogin.Params[0].AsString := sNome;
   IBDatasetLogin.Params[1].AsString := sSenha;
   IBDatasetLogin.Open;
   Result := (IBDatasetLogin.RecordCount > 0);
end;

function TFDB1.ClienteComDebito(idCliente: Integer): Boolean;
begin
  Result := True;
  with tblCreceber2 do
    begin
      Close;
      ParamByName('DataAtual').AsDateTime := DataAtual - 2;
      ParamByName('idClientes').AsInteger := idCliente;
      Open;
      if RecordCount = 0 then
        Result := False
      else
       begin
         tblPessoas2.Close;
         tblPessoas2.ParamByName('idClientes').AsInteger := idCliente;
         tblPessoas2.Open;
         if tblPessoas2.recordCount <> 0 then
          if tblPessoas2.FieldByName('Fatura_Com_debitos').AsBoolean then
            result := False;
       end;
    end;
end;

end.
