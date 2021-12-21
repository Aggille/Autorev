unit CadastroPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, JvDBCheckBox, JvTransparentButton, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDateTimePicker, JvDBDateTimePicker,
  JvDBCombobox, Grids, DBGrids, JvErrorIndicator, JvValidators, JvComponentBase,
  ACBrBase, ACBrNFe, ACBrDFe, System.Actions, System.ImageList, JvCombobox;

type
  TBoxPessoas = class(TForm)
    ImageList1: TImageList;
    DataSourcePessoas: TDataSource;
    JvStatusBar1: TJvStatusBar;
    tblPessoas: TIBDataSet;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Nome: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label32: TLabel;
    Pai: TDBEdit;
    CodigoMunicipio: TDBEdit;
    Bairro: TDBEdit;
    Endereco: TDBEdit;
    Mae: TDBEdit;
    TabSheet2: TTabSheet;
    Label33: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    COEndereco: TDBEdit;
    COBairro: TDBEdit;
    COCidade: TDBEdit;
    COEstado: TDBEdit;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Estado2: TDBEdit;
    TabSheet4: TTabSheet;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label12: TLabel;
    Bevel3: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    EditSequencia: TMaskEdit;
    Descricao: TJvDBMaskEdit;
    LabelSequencia: TLabel;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
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
    Nascimento: TJvDBDateEdit;
    tblPessoasCODIGO: TIBStringField;
    CEP: TJvDBMaskEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBMaskEdit2: TJvDBMaskEdit;
    DBEdit1: TDBEdit;
    COCEP: TJvDBMaskEdit;
    CPF: TJvDBComboBox;
    NumeroCPFCNPJ: TJvDBMaskEdit;
    Identidade: TJvDBMaskEdit;
    Label38: TLabel;
    Label39: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label40: TLabel;
    Desconto: TJvDBMaskEdit;
    Label17: TLabel;
    Email: TDBEdit;
    Label41: TLabel;
    DBEdit3: TDBEdit;
    DBEdit21: TDBEdit;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCPF: TIBStringField;
    R: TIBStringField;
    tblPessoasFOTO: TIBStringField;
    DataSourceCrecebid: TDataSource;
    tblCrecebid: TIBDataSet;
    tblCreceber: TIBDataSet;
    DataSourceCreceber: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label42: TLabel;
    Label43: TLabel;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
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
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCrecebidID_CRECEBER: TIntegerField;
    tblCrecebidID_CONCESSIONARIA: TIntegerField;
    tblCrecebidID_CLIENTES: TIntegerField;
    tblCrecebidID_AVALISTA: TIntegerField;
    tblCrecebidDOCUMENTO: TIBStringField;
    tblCrecebidPARCELA: TIBStringField;
    tblCrecebidVEZES: TIBStringField;
    tblCrecebidORIGEM: TIBStringField;
    tblCrecebidCONTA: TIBStringField;
    tblCrecebidVENCIMENTO: TDateField;
    tblCrecebidVALOR: TIBBCDField;
    tblCrecebidEMISSAO: TDateField;
    tblCrecebidTOTAL: TIBBCDField;
    tblCrecebidPAGAMENTO: TDateField;
    tblCrecebidVALOR_PAGO: TIBBCDField;
    tblCrecebidBANCO: TIBStringField;
    tblCrecebidHISTORICO: TIBStringField;
    tblCrecebidSTATUS: TIBStringField;
    tblCrecebidID_PEDIDO_VEICULOS: TIntegerField;
    tblCPFCNPJ: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    DateField1: TDateField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    DateField2: TDateField;
    IBBCDField1: TIBBCDField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBBCDField2: TIBBCDField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    DateField3: TDateField;
    IBBCDField3: TIBBCDField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    DataSourceCPFCNPJ: TDataSource;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCrecebidID_FORMA_PAGAMENTO: TIntegerField;
    Label44: TLabel;
    REG_SPC: TDBEdit;
    Estado: TDBComboBox;
    Cidade: TDBLookupComboBox;
    tblCidade: TIBDataSet;
    DataSourceCidade: TDataSource;
    tblCidadeID_CODIGO_CIDADE: TIntegerField;
    tblCidadeCODIGO: TIBStringField;
    tblCidadeCIDADE: TIBStringField;
    tblCidadeESTADO: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    validador: TJvValidators;
    Sumario: TJvValidationSummary;
    JvErrorIndicator1: TJvErrorIndicator;
    jvNome: TJvCustomValidator;
    JvNascimento: TJvCustomValidator;
    JvIdentidade: TJvCustomValidator;
    JvCPF: TJvCustomValidator;
    JvNUM_CPF: TJvCustomValidator;
    JvPai: TJvCustomValidator;
    JvMae: TJvCustomValidator;
    JvEndereco: TJvCustomValidator;
    JvCidade: TJvCustomValidator;
    JvCEP: TJvCustomValidator;
    JvTelefone: TJvCustomValidator;
    JvCOEndereco: TJvCustomValidator;
    BitBtn1: TBitBtn;
    JvCOBairro: TJvCustomValidator;
    JvCOCidade: TJvCustomValidator;
    JvCOEstado: TJvCustomValidator;
    JvCOCEP: TJvCustomValidator;
    BtnConsultar: TBitBtn;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    NomeVendedor: TDBEdit;
    Label45: TLabel;
    JvTipos: TJvCustomValidator;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label46: TLabel;
    Label47: TLabel;
    tblVeiculos: TIBDataSet;
    DataSourceVeiculos: TDataSource;
    tblNofisa: TIBDataSet;
    DataSourceNofisa: TDataSource;
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
    JvBairro: TJvCustomValidator;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    JvEmail: TJvCustomValidator;
    Panel1: TPanel;
    BtnGoogle: TBitBtn;
    Financeira: TJvDBCheckBox;
    Mecanico: TJvDBCheckBox;
    Vendedor: TJvDBCheckBox;
    Transportador: TJvDBCheckBox;
    Fornecedor: TJvDBCheckBox;
    Cliente: TJvDBCheckBox;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    Numero: TDBEdit;
    DBEdit4: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    JvNumero: TJvCustomValidator;
    FONE1: TJvDBMaskEdit;
    ACBrNFe1: TACBrNFe;
    Cidade1: TDBEdit;
    tblPessoasRETENCAO_ISS: TIBStringField;
    Label50: TLabel;
    DBEdit2: TDBEdit;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    ConsultaSEFAZ: TBitBtn;
    tblFone: TIBDataSet;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    IBStringField53: TIBStringField;
    DateField4: TDateField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    DateField5: TDateField;
    IBBCDField4: TIBBCDField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    DateField6: TDateField;
    IBBCDField6: TIBBCDField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    IBStringField87: TIBStringField;
    IBStringField88: TIBStringField;
    IBStringField89: TIBStringField;
    IBStringField90: TIBStringField;
    IBStringField91: TIBStringField;
    IBStringField92: TIBStringField;
    IBStringField93: TIBStringField;
    IBStringField94: TIBStringField;
    IBStringField95: TIBStringField;
    IBStringField96: TIBStringField;
    tblEmail: TIBDataSet;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField97: TIBStringField;
    IBStringField98: TIBStringField;
    IBStringField99: TIBStringField;
    IBStringField100: TIBStringField;
    IBStringField101: TIBStringField;
    DateField7: TDateField;
    IBStringField102: TIBStringField;
    IBStringField103: TIBStringField;
    IBStringField104: TIBStringField;
    IBStringField105: TIBStringField;
    IBStringField106: TIBStringField;
    IBStringField107: TIBStringField;
    IBStringField108: TIBStringField;
    DateField8: TDateField;
    IBBCDField7: TIBBCDField;
    IBStringField109: TIBStringField;
    IBStringField110: TIBStringField;
    IBStringField111: TIBStringField;
    IBStringField112: TIBStringField;
    IBStringField113: TIBStringField;
    IBStringField114: TIBStringField;
    IBStringField115: TIBStringField;
    IBStringField116: TIBStringField;
    IBStringField117: TIBStringField;
    IBBCDField8: TIBBCDField;
    IBStringField118: TIBStringField;
    IBStringField119: TIBStringField;
    IBStringField120: TIBStringField;
    IBStringField121: TIBStringField;
    IBStringField122: TIBStringField;
    IBStringField123: TIBStringField;
    IBStringField124: TIBStringField;
    IBStringField125: TIBStringField;
    IBStringField126: TIBStringField;
    DateField9: TDateField;
    IBBCDField9: TIBBCDField;
    IBStringField127: TIBStringField;
    IBStringField128: TIBStringField;
    IBStringField129: TIBStringField;
    IBStringField130: TIBStringField;
    IBStringField131: TIBStringField;
    IBStringField132: TIBStringField;
    IBStringField133: TIBStringField;
    IBStringField134: TIBStringField;
    IBStringField135: TIBStringField;
    IBStringField136: TIBStringField;
    IBStringField137: TIBStringField;
    IBStringField138: TIBStringField;
    IBStringField139: TIBStringField;
    IBStringField140: TIBStringField;
    IBStringField141: TIBStringField;
    IBStringField142: TIBStringField;
    IBStringField143: TIBStringField;
    IBStringField144: TIBStringField;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure EditarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ProcurarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure DoAfterClose;
    procedure ConsultarExecute(Sender: TObject);
    procedure EditSequenciaExit(Sender: TObject);
    procedure EditSequenciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblPessoasAfterCancel(DataSet: TDataSet);
    procedure tblPessoasAfterPost(DataSet: TDataSet);
    procedure MecanicoKeyPress(Sender: TObject; var Key: Char);
    procedure COCEPKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure CPFExit(Sender: TObject);
    procedure NumeroCPFCNPJExit(Sender: TObject);
    procedure AbrirDs;
    Procedure FecharDs;
    Procedure PreencheTipos;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EstadoExit(Sender: TObject);
    procedure COEstadoExit(Sender: TObject);
    procedure Estado2Exit(Sender: TObject);
    procedure CidadeExit(Sender: TObject);
    procedure tblPessoasBeforePost(DataSet: TDataSet);
    procedure jvNomeValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvPaiValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvMaeValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvEnderecoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCidadeValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCEPValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvTelefoneValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCOEnderecoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCOBairroValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCOCidadeValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCOEstadoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCOCEPValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvIdentidadeValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCPFValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvNUM_CPFValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvNascimentoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvTiposValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure JvBairroValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure BtnGoogleClick(Sender: TObject);
    procedure JvEmailValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvNumeroValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure ConsultaSEFAZClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCPFCNPJ : String;
    numAntigoCPF : String;
    procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls (Value: Boolean; Value1: Boolean;
              Value2: Boolean);
    procedure PermissoesForm; virtual;
    procedure Restricoes ;virtual;
    procedure LimpaTela; virtual;
  end;

var
  BoxPessoas: TBoxPessoas;
  Id_concessionaria: Integer;
  Retorno : String;

implementation

uses

   BIBLIOTECA, PESQUISAGeral, FDB, Empresas, Efuncoes;

{$R *.dfm}

function TBoxPessoas.FieldsWrithe(DtSrc: TDataSource): Boolean;
//var
//  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
{  inherited;}
  Result := True; {: assume que estão todos preenchidos}
{
  for i := 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[i].Required then
      if (DtSrc.DataSet.Fields[i].IsNull) Or (DtSrc.DataSet.Fields[i].AsString = '') then
      begin
        MessageDlg('Preencha o campo " '+ DtSrc.DataSet.Fields[i].DisplayLabel + '"', mtWarning,[mbOk], 0);
        Result := False;
        DtSrc.DataSet.Fields[i].FocusControl; // coloca o foco no controle
        Break;
      end;
      }
end;

procedure TBoxPessoas.DoAfterClose;
begin
  DataSourcePessoas.Dataset.Close;
  Close;
end;

procedure TBoxPessoas.NovoExecute(Sender: TObject);
begin
  {: novo registro}
  DataSourcePessoas.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  Excluir.Enabled := False;
  EditSequencia.Enabled := False;
  EditSequencia.Text := '';
  PageControl1.TabIndex :=0;
  Fdb1.AtualizaDataAtual;
  JvDBDateEdit3.Date := DataAtual;
  Desconto.EditText := '10,00';
  Desconto.Enabled := False;
  tblPessoas.FieldByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblpessoas.FieldByName('Nome_Vendedor').AsString := BoxEmpresas.UsuarioLogado;
  //Descricao.SetFocus;
  tblPessoas.FieldByName('Cliente').AsString := 'T';
  Cliente.Checked;
  CPF.SetFocus;
  PermissoesForm;
  Restricoes;
end;

procedure TBoxPessoas.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   BtnSalvar.Enabled := False;
   Salvar.Enabled := False;
   PageControl1.TabIndex := 0;
   EditSequencia.Enabled := True;
   EditSequencia.Setfocus;
end;

procedure TBoxPessoas.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSourcePessoas.DataSet.IsEmpty then
   begin
    DataSourcePessoas.Dataset.Edit;
    PreencheTipos;
    numAntigoCPF := tblPessoas.FieldByName('NUM_CPF').AsString;
    EnableDisableControls(True, False, True);
    PermissoesForm;
    Restricoes;
    NumeroCPFCNPJ.SetFocus;
//Descricao.SetFocus;
   end;
end;

procedure TBoxPessoas.EditSequenciaClick(Sender: TObject);
begin
 BtnConsultar.Click;
end;

procedure TBoxPessoas.EditSequenciaExit(Sender: TObject);
var
   id : Integer;
begin
    id := StrToInt(EditSequencia.Text);
    begin
      with tblPessoas do
      begin
       if id<>0 then
         begin
          tblCreceber.Close;
          tblCrecebid.Close;
          tblCreceber.ParamByName('id').AsInteger := id;
          tblCrecebid.ParamByName('id').AsInteger := id;
          tblCreceber.Open;
          tblCrecebid.Open;
          Close;
          parambyname( 'id' ).AsInteger := id;
          Open;
          if recordcount = 0  then
            begin
              case MessageDlg('Registro não localizado. Deseja cadastrar um novo?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
                mrYes:
                begin
                  BtnNovo.Click;
                end;
                mrNo:
                begin
                  EnableDisableControls(False, True, False);
                  BtnSalvar.Enabled := False;
                  Salvar.Enabled := False;
                  BtnConsultar.SetFocus;
                  DataSourcePessoas.DataSet.Cancel;
                  Close;
                end;
              end;
            end
          else
            PreencheTipos
         end;
      end;
   end;
   
    if (FDB1.IBDataSetLoginacesso24.AsString = 'T') OR
       (FDB1.IBDataSetLoginacesso25.AsString = 'T') OR
       (FDB1.IBDataSetLoginADM.AsString = 'T') OR
       (tblpessoas.FieldByName('Nome_Vendedor').AsString = BoxEmpresas.UsuarioLogado) then
     begin
      EnableDisableControls(False, False, True);
      BtnSalvar.Enabled := False;
      Salvar.Enabled := False;
      BtnEditar.SetFocus;
     end
    else
     begin
      BtnProcurar.Enabled := True;
      BtnConsultar.Enabled := True;
      BtnProcurar.SetFocus;
     end;

end;

procedure TBoxPessoas.SalvarExecute(Sender: TObject);
begin
 if(DataSourcePessoas.State in [dsInsert]) then
  begin
    if ValidaEmailETelefone(BoxPessoas.tblPessoas, BoxPessoas.tblFone, BoxPessoas.tblEmail, True) then//nova validaçao 31/08/2018
    {: salvo os dados se os campos estiverem preenchidos}
    begin
     if FieldsWrithe(DataSourcePessoas) and (DataSourcePessoas.State in [dsEdit, dsInsert]) then
     begin
       DataSourcePessoas.DataSet.Post;
       EnableDisableControls(False, True, False);
       MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
       Limpatela;
       BtnConsultar.Setfocus;
     end;
    end
    else
     Showmessage('Erro no preenchimento do telefone e/ou e-mail.')
  end
 else
  begin
    if ValidaEmailETelefone(BoxPessoas.tblPessoas, BoxPessoas.tblFone, BoxPessoas.tblEmail, False) then//nova validaçao 31/08/2018
    {: salvo os dados se os campos estiverem preenchidos}
    begin
     if FieldsWrithe(DataSourcePessoas) and (DataSourcePessoas.State in [dsEdit, dsInsert]) then
     begin
       DataSourcePessoas.DataSet.Post;
       EnableDisableControls(False, True, False);
       MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
       Limpatela;
       BtnConsultar.Setfocus;
     end;
    end
    else
     Showmessage('Erro no preenchimento do telefone e/ou e-mail.')
  end;
end;

procedure TBoxPessoas.tblPessoasAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPessoas.tblPessoasAfterPost(DataSet: TDataSet);
begin
   FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxPessoas.tblPessoasBeforePost(DataSet: TDataSet);
var
mensagem:String;
x:Integer;
begin
   sumario.Summaries.Clear;
   validador.Validate;

   mensagem:= 'Preencha:' + #13;

   for x := 0 to sumario.summaries.count  - 1 do
     mensagem := mensagem + sumario.summaries[x] + #13;

   if sumario.summaries.count > 0 then
   begin
     showmessage( mensagem );
     abort;
   end;


end;

procedure TBoxPessoas.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSourcePessoas.DataSet.Active) and (DataSourcePessoas.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      DataSourcePessoas.DataSet.Delete;
      EnableDisableControls(False, True, False);
      LimpaTela;
     end;
  end;
end;

procedure TBoxPessoas.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSourcePessoas.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSourcePessoas.DataSet.Cancel;
    end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('Pessoa','Clientes',
      ['Nome','NUM_CPF','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','CNPJ/CPF:','Sequência:','Código:','Concessionária'],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'','','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        EditSequencia.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        PreencheTipos
     end;
     EnableDisableControls(False, False, True);
     if (FDB1.IBDataSetLoginacesso24.AsString = 'T') OR
       (FDB1.IBDataSetLoginacesso25.AsString = 'T') OR
       (FDB1.IBDataSetLoginADM.AsString = 'T') then
        begin
         BtnSalvar.Enabled := False;
         Salvar.Enabled := False;
         EditSequencia.Enabled := False;
         BtnEditar.SetFocus;
        end
     else
        begin
         if tblPEssoas.FieldByName('Nome_Vendedor').AsString = BoxEmpresas.UsuarioLogado then
           begin
             BtnEditar.Enabled := True;
             Editar.Enabled := True;
             BtnEditar.SetFocus;
           end;
         BtnProcurar.Enabled := True;
         BtnConsultar.Enabled := True;
         BtnProcurar.SetFocus;
        end;
   end;
end;

procedure TBoxPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxPessoas := nil;
  FecharDs;
end;

procedure TBoxPessoas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourcePessoas.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxPessoas.FormShow(Sender: TObject);
begin
  AbrirDs;
  REG_SPC.Enabled := False;
  EnableDisableButtons(True, False);
  PageControl1.TabIndex := 0;
  BtnProcurar.SetFocus;
end;

procedure TBoxPessoas.JvBairroValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'Bairro' ).asString <> '' )
end;

procedure TBoxPessoas.JvCEPValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'CEP' ).asString <> '' )
end;

procedure TBoxPessoas.JvCidadeValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'cidade' ).asString <> '' )
end;

procedure TBoxPessoas.JvCOBairroValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'COBairro' ).asString <> '' )
end;

procedure TBoxPessoas.JvCOCEPValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'COCEP' ).asString <> '' )
end;

procedure TBoxPessoas.JvCOCidadeValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'COCIdade' ).asString <> '' )
end;

procedure TBoxPessoas.JvCOEnderecoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'COendereco' ).asString <> '' )
end;

procedure TBoxPessoas.JvCOEstadoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'COEstado' ).asString <> '' )
end;

procedure TBoxPessoas.JvCPFValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( CPF.Text <> '' )
end;

procedure TBoxPessoas.JvEmailValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
 if(DataSourcePessoas.State in [dsInsert]) then
   valid := ValidaEmailETelefone(BoxPessoas.tblPessoas,BoxPessoas.tblFone, BoxPessoas.tblEmail, True)//nova validaçao 31/08/2018
 else
   valid := ValidaEmailETelefone(BoxPessoas.tblPessoas,BoxPessoas.tblFone, BoxPessoas.tblEmail, False);//nova validaçao 31/08/2018

end;

procedure TBoxPessoas.JvEnderecoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'endereco' ).asString <> '' )

end;

procedure TBoxPessoas.JvIdentidadeValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
  //  valid := ( tblPessoas.fieldbyname( 'identidade' ).asString <> '' )
end;

procedure TBoxPessoas.JvMaeValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'mae' ).asString <> '' )

end;

procedure TBoxPessoas.JvNascimentoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'nascimento' ).asString <> '' )
end;

procedure TBoxPessoas.MecanicoKeyPress(Sender: TObject; var Key: Char);
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
    PageControl1.TabIndex := 1;
    Email.SetFocus;
  end
end;

procedure TBoxPessoas.CPFExit(Sender: TObject);
begin
   if CPF.ItemIndex = 1 then
     begin
      Label38.Caption := 'I.Estadual:';
      NumeroCPFCNPJ.EditMask := '99.999.999/9999-99;1;_'
     end
   else
     begin
      Label38.Caption := 'Identidade:';
      NumeroCPFCNPJ.EditMask := '999.999.999-99;1;_'
     end;
end;

procedure TBoxPessoas.NumeroCPFCNPJExit(Sender: TObject);
begin
  if CPF.ItemIndex = 1 then
     if (not(Biblioteca.cnpj(NumeroCPFCNPJ.Text))) and
        (NumAntigoCPF <> tblPessoas.FieldByName('Num_CPF').AsString) then
       begin
        showmessage('CNPJ inválido.');
        NumeroCPFCNPJ.SetFocus;
       end;
  if CPF.ItemIndex = 0 then
     if (not(Biblioteca.cpf(NumeroCPFCNPJ.Text))) and
        (NumAntigoCPF <> tblPessoas.FieldByName('Num_CPF').AsString) then
       begin
        showmessage('CPF inválido.');
        NumeroCPFCNPJ.SetFocus;
       end;
 //Número válido - Pesquisar sua existência anterior no cadastro
   idCPFCNPJ := NumeroCPFCNPJ.Text;
   With TblCPFCNPJ do
     begin
       Close;
       parambyname( 'idCPFCNPJ' ).AsString := idCPFCNPJ;
       Open;
       if (recordcount <> 0) and
          (NumAntigoCPF <> tblPessoas.FieldByName('Num_CPF').AsString) then
         begin
          Showmessage('CPF/CNPJ já cadastrado.'+#13+'Na sequência:'+ TblCPFCNPJ.FieldByName('Id_Clientes').AsString); //IntToStr(Recno));
          Close;
          NumeroCPFCNPJ.Text := '';
          NumeroCPFCNPJ.Setfocus;
         end;
       Close;
     end;
end;

procedure TBoxPessoas.COCEPKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    PageControl1.TabIndex := 2;
    DBEdit20.SetFocus;
  end
end;

procedure TBoxPessoas.jvNomeValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( (tblPessoas.fieldbyname( 'nome' ).asString <> '') and
             (tblPessoas.FieldByName('Nome').AsString <> 'CONSUMIDOR'))
end;

procedure TBoxPessoas.JvNumeroValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'numero' ).asString <> '' )
end;

procedure TBoxPessoas.JvNUM_CPFValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'NUM_CPF' ).asString <> '' )
end;

procedure TBoxPessoas.JvPaiValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
    valid := ( tblPessoas.fieldbyname( 'pai' ).asString <> '' )

end;

procedure TBoxPessoas.JvTelefoneValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
 if(DataSourcePessoas.State in [dsInsert]) then
   valid := ValidaEmailETelefone(BoxPessoas.tblPessoas,BoxPessoas.tblFone,BoxPessoas.tblEmail, True)//nova validaçao 31/08/2018
 else
  valid := ValidaEmailETelefone(BoxPessoas.tblPessoas,BoxPessoas.tblFone,BoxPessoas.tblEmail, False);//nova validaçao 31/08/2018
//  if valid then
//   showmessage('valido')
//  else
//   showmessage('invalido');
//    valid := (tblPessoas.fieldbyname( 'fone1' ).AsString <> '' );
end;

procedure TBoxPessoas.JvTiposValidate(Sender: TObject; ValueToValidate: Variant;
  var Valid: Boolean);
begin
//  valid := (cliente or fornecedor or financeira or transportador or mecanico)

end;

procedure TBoxPessoas.BitBtn1Click(Sender: TObject);
begin
 with tblPessoas do
  begin
  FieldByName('CoEndereco').AsString := FieldByName('Endereco').AsString;
  FieldByName('CoBairro').AsString := FieldByName('Bairro').AsString;
  FieldByName('CoCidade').AsString := FieldByName('Cidade').AsString;
  FieldByName('CoEstado').AsString := FieldByName('Estado').AsString;
  FieldByName('CoCEP').AsString := FieldByName('CEP').AsString;
  end;
end;

procedure TBoxPessoas.ConsultaSEFAZClick(Sender: TObject);
begin
//comentado por problemas de consulta no site sefaz

   if tblPessoas.FieldByName('CPF').AsString = 'CNPJ' then
     begin
      if (BoxEmpresas.Certificado = '') then
        ACBrNFe1.ssl.SelecionarCertificado
      else
        ACBrNFe1.configuracoes.certificados.numeroserie := BoxEmpresas.Certificado;

      if tblPessoas.FieldByName('Estado').AsString = '' then
         tblPessoas.FieldByName('Estado').AsString := 'RS';
      ACBrNFe1.WebServices.ConsultaCadastro.UF  := tblPessoas.FieldByName('Estado').AsString;

      if Length(TiraPontosEBarrasCPF(tblPessoas.FieldByName('Num_Cpf').AsString)) > 11 then
         ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := TiraPontosEBarrasCPF(tblPessoas.FieldByName('Num_Cpf').AsString)//Documento
      else
         ACBrNFe1.WebServices.ConsultaCadastro.CPF := TiraPontosEBarrasCPF(tblPessoas.FieldByName('Num_Cpf').AsString);//Documento;
      ACBrNFe1.WebServices.ConsultaCadastro.Executar;

      if ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.cStat = 264 then // NÃO é contribuinte
        begin
          if (tblPessoas.FieldByName('CPF').AsString = 'CNPJ') and (tblPessoas.FieldByName('Identidade').AsString <> 'ISENTO') then
           begin
            Showmessage('Empresa sem inscrição estadual, registre como ISENTO.');
            //result := False;
           end;
        end;
      if ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.cStat = 111 then // é contribuinte
       begin
        if ACBrNFe1.Webservices.ConsultaCadastro.RetConsCad.InfCad.Items[0].cSit = 0 then  //foi baixada
         begin
//           result := False;
           Showmessage('Não é possível emitir NF para esta empresa, ela está baixada no ICMS.');
         end
        else
         begin
           with tblPessoas do
            begin
              FieldByName('Bairro').AsString := ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xBairro;
              FieldByName('Numero').AsString := ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].nro;
              FieldByName('Endereco').AsString := ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xLgr;
              FieldByName('CEP').AsString := IntToStr(ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CEP);
              FieldByName('CEP').AsString := Substr(FieldByName('CEP').AsString,1,5) + '-' + Substr(FieldByName('CEP').AsVariant,6,3);
              FieldByName('Codigo_Municipio').AsString := iNTtOsTR(ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].cMun);
              FieldByName('Identidade').AsString := ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].IE;
//              FieldByName('Identidade').AsString := StrZero(FieldByName('Identidade').AsInteger,10,0);
              FieldByName('Complemento').AsString := (ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xCpl);
              FieldByName('Nome').AsString := (ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
              FieldByName('Cidade').AsString := (ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xMun);
              Cidade.Visible := False;
              Cidade1.Visible := True;
              BitBtn1.Click;
            end;
         end;
       end;
     end;

end;

procedure TBoxPessoas.BtnGoogleClick(Sender: TObject);
begin
  GoogleMaps('',tblPessoas.FieldByName('Endereco').AsString,'',tblPessoas.FieldByName('Bairro').AsString,
  tblPessoas.FieldByName('Cidade').AsString,tblPessoas.FieldByName('Estado').AsString,
  tblPessoas.FieldByName('CEP').AsString);
end;

procedure TBoxPessoas.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
  BtnEditar.Enabled := False;
  Editar.Enabled := False;
  BtnSalvar.Enabled := False;
  Salvar.Enabled := False;
  Cancelar.Enabled := False;
  BtnCancelar.Enabled := False;
end;

procedure TBoxPessoas.CidadeExit(Sender: TObject);
begin
  tblPessoas.FieldByName('Codigo_Municipio').AsString :=
    tblCidade.FieldByName('Codigo').AsString;
end;

procedure TBoxPessoas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxPessoas.COEstadoExit(Sender: TObject);
begin
  if not(Biblioteca.VEstado(COEstado.Text)) then
   begin
     Showmessage('Estado inválido.');
     COEstado.SetFocus;
   end;
end;

procedure TBoxPessoas.EstadoExit(Sender: TObject);
begin
  with tblCidade do
  begin
    Close;
    ParamByName('Estado').AsString := Estado.Text;
    Open;
  end;
  if not(Biblioteca.VEstado(Estado.Text)) then
   begin
     Showmessage('Estado inválido.');
     Estado.SetFocus;
   end;
end;

procedure TBoxPessoas.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    PageControl1.TabIndex := 3;
    DBEdit6.SetFocus;
  end
end;

procedure TBoxPessoas.Estado2Exit(Sender: TObject);
begin
  if not(Biblioteca.VEstado(Estado2.Text)) then
   begin
     Showmessage('Estado inválido.');
     Estado2.SetFocus;
   end;
end;

procedure TBoxPessoas.DBEditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
      DoAfterClose;
    end;
  if key = #13 then
  begin
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxPessoas.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage.PageIndex = 5 then
  begin
    with tblVeiculos do
    begin
      Close;
      PAramByName('idclientes').AsInteger := tblPessoas.FieldByName('Id_Clientes').AsInteger;
      Open;
    end;
    with tblNofisa do
    begin
      Close;
      PAramByName('idClientes').AsInteger := tblPessoas.FieldByName('Id_Clientes').AsInteger;
      Open;
    end;
  end;
end;

procedure TBoxPessoas.PermissoesForm;
begin
  {: implementado nos forms descendentes }
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso25.AsString = 'T') then
     Desconto.Enabled := True
  else
     Desconto.Enabled := False;
end;

procedure TBoxPessoas.Restricoes;
begin
  {: implementado nos forms descendentes }
  JvDBDateEdit3.Enabled := False;
end;

procedure TBoxPessoas.LimpaTela;
begin
  EditSequencia.Clear;
  Cidade1.Visible := False;
  Cidade.Visible := True;
  DataSourcePessoas.Dataset.Close;
  DataSourcePessoas.Dataset.Open;
end;

procedure TBoxPessoas.EnableDisableControls(Value: Boolean; Value1: Boolean;
            Value2: Boolean);
var
  i : integer;
begin
  {: faz um laço em todos os componentes}
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TJVDBMaskEdit) then
       (Components[i] as TJVDBMaskEdit).Enabled:= Value;
    if (Components[i] is TCustomEdit) then
       (Components[i] as TCustomEdit).Enabled := Value;
    if (Components[i] is TDBRadioGroup) then
       (Components[i] as TDBRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso62.AsString = 'T') then
    begin
      BtnNovo.Enabled := Value1;
      Novo.Enabled := Value1;
      BtnSalvar.Enabled := Value2;
      BtnCancelar.Enabled := Value2;
      Salvar.Enabled := Value2;
      Cancelar.Enabled := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso24.AsString = 'T') Or
     (tblpessoas.FieldByName('Nome_Vendedor').AsString = BoxEmpresas.UsuarioLogado) then
    begin
      BtnEditar.Enabled := Value2;
      Editar.Enabled := Value2;
      end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') then
    begin
      Excluir.Enabled := Value2;
      BtnExcluir.Enabled := Value2;
    end;
  CodigoMunicipio.Enabled := False;
  BtnProcurar.Enabled := Value1;
  BtnConsultar.Enabled := Value1;
  Procurar.Enabled := Value1;
  Consultar.Enabled := Value1;
  EditSequencia.Enabled := True;
  if value1 then
    BtnConsultar.Setfocus;
  if (value2) and ((FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso24.AsString = 'T') Or
     (tblpessoas.FieldByName('Nome_Vendedor').AsString = BoxEmpresas.UsuarioLogado) Or
     (FDB1.IBDataSetLoginAcesso25.AsString = 'T')) then
     BtnSalvar.Setfocus;
end;

procedure TBoxPessoas.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os botões }
  BtnNovo.Enabled := Value;
  Novo.Enabled := Value;
  BtnEditar.Enabled := Value1;
  BtnExcluir.Enabled := Value1;
  BtnCancelar.Enabled := Value1;
  BtnSalvar.Enabled := Value1;
  Editar.Enabled := Value1;
  Excluir.Enabled := Value1;
  Cancelar.Enabled := Value1;
  Salvar.Enabled := Value1;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso24.AsString <> 'T') And
   (tblpessoas.FieldByName('Nome_Vendedor').AsString <> BoxEmpresas.UsuarioLogado) then
   //acesso24 para alterações básicas
   //acesso25 para alterações de descontos para cliente
    begin
      TabSheet7.Visible := False;
      BtnEditar.Enabled := False;
      Editar.Enabled := False;
    end;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
    (FDB1.IBDataSetLoginAcesso62.AsString <> 'T') then
      BEGIN
       Novo.Enabled := False;
       BtnNovo.Enabled := False;
       BtnCancelar.Enabled := False;
       BtnSalvar.Enabled := False;
       Cancelar.Enabled := False;
       Salvar.Enabled := False;
      END;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso61.AsString <> 'T') then
     REG_SPC.Enabled := True;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') then
    begin
      Excluir.Enabled := False;
      BtnExcluir.Enabled := False;
    end;
  BtnProcurar.Enabled := Value;
  BtnConsultar.Enabled := Value;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
end;

procedure TBoxPessoas.PreencheTipos;
begin
  with tblPessoas do
  begin
  if FieldByName('Cliente').AsBoolean then
    Cliente.Checked := True
  else
    Cliente.Checked := False;
  if FieldByName('Fornecedor').AsBoolean then
    Fornecedor.Checked := True
  else
    Fornecedor.Checked := False;
  if FieldByName('Vendedor').AsBoolean then
    Vendedor.Checked := True
  else
    Vendedor.Checked := False;
  if FieldByName('Mecanico').AsBoolean then
    Mecanico.Checked := True
  else
    Mecanico.Checked := False;
  if FieldByName('Transportadora').AsBoolean then
    Transportador.Checked := True
  else
    Transportador.Checked := False;
  if FieldByName('Financeira').AsBoolean then
    Financeira.Checked := True
  else
    Financeira.Checked := False;
  end;
  with tblCidade do
  begin
    Close;
    ParamByName('Estado').AsString := Estado.Text;
    Open;
  end;

end;

procedure TBoxPessoas.AbrirDs;
begin
  DataSourcePessoas.DataSet.Open;
  DataSourceCreceber.DataSet.Open;
  DataSourceCrecebid.DataSet.Open;
  DataSourceCidade.Dataset.Open;
end;

procedure TBoxPessoas.FecharDs;
begin
  DataSourcePessoas.DataSet.Close;
  DataSourceCreceber.DataSet.Close;
  DataSourceCrecebid.DataSet.Close;
  DataSourceCidade.Dataset.Close;
end;
end.
