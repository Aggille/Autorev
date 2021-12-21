unit OperacoesComprasPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvExDBGrids, JvDBGrid, System.Actions,
  System.ImageList;

type
  TBoxComprasPecas = class(TForm)
    ImageList1: TImageList;
    PageControl: TPageControl;
    PagePecas: TTabSheet;
    PageConhecimento: TTabSheet;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageNotasFiscais: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    CodigoTransportadora: TMaskEdit;
    NomeTransportadora: TMaskEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    CodigoFornecedor: TMaskEdit;
    NomeFornecedor: TMaskEdit;
    Bevel1: TBevel;
    Emissao: TJvDBDateEdit;
    JvStatusBar1: TJvStatusBar;
    ActionList1: TActionList;
    Cancelar: TAction;
    Salvar: TAction;
    ToolBar1: TToolBar;
    BtnCancelar: TBitBtn;
    BtnSalvarLote: TBitBtn;
    FecharLote: TAction;
    BtnSalvar: TBitBtn;
    SpeedButton1: TSpeedButton;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
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
    tblConhecimento: TIBDataSet;
    tblNofi: TIBDataSet;
    DataSourceConhecimento: TDataSource;
    DataSourceNofi: TDataSource;
    DataSourceNfda: TDataSource;
    DataSourceModelosVeiculos: TDataSource;
    tblModelos: TIBDataSet;
    tblModelosID_MODVEIC: TIntegerField;
    tblModelosMARCA: TIBStringField;
    tblModelosMODELO: TIBStringField;
    tblModelosCILINDROS: TIntegerField;
    tblModelosCILINDRADAS: TIntegerField;
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosRENAVAM: TIBStringField;
    tblModelosCLASSIF_FISCAL: TIBStringField;
    tblModelosPPS: TIBBCDField;
    tblModelosPPS_ABRACY: TIBBCDField;
    tblModelosPRECO_VENDA: TIBBCDField;
    tblConhecimentoID_CONHECIMENTO: TIntegerField;
    tblConhecimentoID_CONCESSIONARIA: TIntegerField;
    DBValorFrete: TJvDBMaskEdit;
    tblConhecimentoNUMERO_CONHECIMENTO: TIBStringField;
    tblConhecimentoQTDE_NFS: TIBStringField;
    tblConhecimentoTRANSPORTADORA: TIBStringField;
    tblConhecimentoVALOR_FRETE: TIBBCDField;
    tblConhecimentoVALOR_MERCADORIAS: TIBBCDField;
    NumeroConhecimento: TMaskEdit;
    Label56: TLabel;
    NumeroNotaFiscalLote: TMaskEdit;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    NotaFiscal: TMaskEdit;
    CFOP: TJvDBMaskEdit;
    ICMSSubst: TJvDBMaskEdit;
    CreditoICMS: TJvDBMaskEdit;
    Chegada: TJvDBDateEdit;
    Frete: TJvDBMaskEdit;
    Seguro: TJvDBMaskEdit;
    Outros: TJvDBMaskEdit;
    Label57: TLabel;
    Label58: TLabel;
    SerieNF: TJvDBMaskEdit;
    SpeedButton3: TSpeedButton;
    DBQtdeNfs: TDBEdit;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
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
    QtdeProdutos: TDBEdit;
    tblModelosCST: TIBStringField;
    tblNfDaCST: TIBStringField;
    TotalProdutos: TDBEdit;
    TotalIPI: TDBEdit;
    TotalNota: TJvDBMaskEdit;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblConhecimentoSTATUS: TIBStringField;
    DBValorMercadorias: TDBEdit;
    ProdutoNumero: TDBEdit;
    Label31: TLabel;
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    DataSourcePecasMovimentacao: TDataSource;
    tblNofi2: TIBDataSet;
    DataSourceNofi2: TDataSource;
    DataSourcePecasEstoque: TDataSource;
    tblPecasEstoque: TIBDataSet;
    tblNfDaID_PECA: TIntegerField;
    CodigoPeca: TMaskEdit;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    Descricao: TLabel;
    DescricaoPeca: TJvDBMaskEdit;
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
    DataSourcePecas: TDataSource;
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
    tblNofi2ID_NOFI: TIntegerField;
    tblNofi2ID_CONCESSIONARIA: TIntegerField;
    tblNofi2ID_CLIENTES: TIntegerField;
    tblNofi2ID_CONHECIMENTO: TIntegerField;
    tblNofi2NUMERO: TIBStringField;
    tblNofi2SERIE: TIBStringField;
    tblNofi2EMISSAO: TDateField;
    tblNofi2CODIGO: TIBStringField;
    tblNofi2ORIGEM: TIBStringField;
    tblNofi2ENT_SAI: TIBStringField;
    tblNofi2VENDEDOR: TIBStringField;
    tblNofi2COMISSAO: TIBBCDField;
    tblNofi2SAIDA: TDateField;
    tblNofi2HORA: TIBStringField;
    tblNofi2CFOP: TIBStringField;
    tblNofi2NAT_OP: TIBStringField;
    tblNofi2IE_SUBS: TIBStringField;
    tblNofi2DESC_PEC: TIBBCDField;
    tblNofi2DESC_OFI: TIBBCDField;
    tblNofi2ICMS: TIBBCDField;
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
    tblNofi2VAL_PIS: TIBBCDField;
    tblNofi2VAL_COFINS: TIBBCDField;
    tblModelosHP: TIBStringField;
    tblModelosVEICULO_NOVO: TIBStringField;
    IBQuery1: TIBQuery;
    ValorUnitario: TDBEdit;
    Quantidade: TDBEdit;
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
    Label17: TLabel;
    tblNfDaICMS_SUBST: TIBBCDField;
    CreditoICMSUnitario: TDBEdit;
    ICMSSubstUnitario: TDBEdit;
    IPIUnitario: TDBEdit;
    IBQuery2: TIBQuery;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    IBQueryICMS: TIBQuery;
    IBQueryIPI: TIBQuery;
    IBQueryICMSSubst: TIBQuery;
    BtnNovo: TBitBtn;
    DBGrid1: TDBGrid;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    CurrencyEdit1: TCurrencyEdit;
    Label19: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label20: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label22: TLabel;
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
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBStringField17: TIBStringField;
    tblPecasCST: TIBStringField;
    DataSourcePecas2: TDataSource;
    IBQueryTotal: TIBQuery;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    tblNfDaVLR_FRETE: TFMTBCDField;
    tblNfDaVLR_SEGURO: TFMTBCDField;
    tblNofi2CHAVE: TIBStringField;
    tblNofi2RECIBO: TIBStringField;
    tblNofi2PROTOCOLO: TIBStringField;
    tblNofi2ARQUIVO: TIBStringField;
    tblNofi2XML: TBlobField;
    tblNofi2PROTOCOLO_CONSULTA: TIBStringField;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    tblNofiBASE_ICMS: TFMTBCDField;
    tblNofi2BASE_ICMS: TFMTBCDField;
    tblNofi2VAL_ICMS: TFMTBCDField;
    tblNofiVAL_ICMS: TFMTBCDField;
    PageFaturas: TTabSheet;
    ValorFatura: TJvDBMaskEdit;
    VencimentoFatura: TJvDBDateEdit;
    tblNofiFaturas: TIBDataSet;
    DataSourceNofiFaturas: TDataSource;
    tblNofiFaturasID_NOFI_FATURAS: TIntegerField;
    tblNofiFaturasID_NOFI: TIntegerField;
    tblNofiFaturasFATURA: TIBStringField;
    tblNofiFaturasVENCIMENTO: TDateField;
    tblNofiFaturasVALOR: TIBBCDField;
    JvDBGrid1: TJvDBGrid;
    Botoes: TJvDBNavigator;
    IBQueryNofiFaturas: TIBQuery;
    tblCPagar: TIBDataSet;
    DataSourceCPagar: TDataSource;
    tblCPagarID_CPAGAR: TIntegerField;
    tblCPagarID_CONCESSIONARIA: TIntegerField;
    tblCPagarID_CLIENTES: TIntegerField;
    tblCPagarDOCUMENTO: TIBStringField;
    tblCPagarNFISCAL: TIBStringField;
    tblCPagarCONTA: TIBStringField;
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    tblCPagarVENCIMENTO: TDateField;
    tblCPagarVALOR: TIBBCDField;
    tblCPagarEMISSAO: TDateField;
    tblCPagarPAGAMENTO: TDateField;
    tblCPagarVALOR_PAGO: TIBBCDField;
    tblCPagarBANCO: TIBStringField;
    tblCPagarHISTORICO: TIBStringField;
    tblCPagarSTATUS: TIBStringField;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Label26: TLabel;
    RadioGroup2: TRadioGroup;
    Label27: TLabel;
    Chave: TDBEdit;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCST2: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecas2DESCRICAO: TIBStringField;
    tblPecas2CODIGO_SGS: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BtnUsadosClick(Sender: TObject);
    procedure DoAfterClose;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoTransportadoraKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure NumeroConhecimentoExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoTransportadoraExit(Sender: TObject);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoFornecedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure NotaFiscalExit(Sender: TObject);
    procedure DBQtdeNfsExit(Sender: TObject);
    procedure BtnSalvarLoteClick(Sender: TObject);
    procedure OutrosExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AbrirDS;
    procedure FecharDs;
    procedure GravaEstoque;
    procedure GravaEstoqueDados;
    procedure CodigoPecaExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TotalProdutosExit(Sender: TObject);
//    procedure ICMSSubstUnitarioExit(Sender: TObject);
    procedure ConfereSoma;
    procedure IPIUnitarioExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AtualizaValores;
    procedure ICMSSubstUnitarioExit(Sender: TObject);
    procedure tblNofiFaturasBeforePost(DataSet: TDataSet);
    procedure tblNofiFaturasAfterInsert(DataSet: TDataSet);
    procedure ChaveExit(Sender: TObject);
  private
    { Private declarations }
     NumeroProdutosDigitados : integer; {quantidade de produtos digitados}
     NumeroNfsDigitadas : integer; {quantidade de notas digitadas}
     QtdeNfsLote : integer;   {quantidade de notas no lote}
     QtdeProdutosLote : integer; {quantidade de produtos na NF}
     nf :integer;

  public
     Total : Currency;
     ArqSalvar : integer;
     id_conhecimento : integer; {sequencia do conhecimento}
     idnofi : integer;
     idPeca : Integer;
     idTransportadora : Integer;
     idConhecimento : Integer; {numero do conhecimento}
     TotalProd : Extended;//integer;
     TotalICMsUnit : Extended;
     TotalICMsSubstUnit : Extended;
     TotalIPIUnit : Extended;
     TotalMercadorias : Extended; //String; //Integer;
     procedure EnableDisableButtonsInicio (); {Value: Boolean);}
     procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
     procedure EnableDisableCampos (Value: Boolean);
     procedure EnableDisableControls(Value: Boolean);
     procedure GravaLote; virtual;
     procedure EnableDisableUsados (value : Boolean);
    end;

var
  BoxComprasPecas: TBoxComprasPecas;
  TipoEntrada : Integer;
  Retorno : String;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasNovos, OperacoesComprasUsados;

{$R *.dfm}

procedure TBoxComprasPecas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasPecas := nil;
end;

procedure TBoxComprasPecas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (DataSourceNofi.State in [dsEdit, DsInsert]) or
    (DataSourceNfda.State in [dsEdit, DsInsert]) or
    (DataSourceConhecimento.State in [dsEdit, DsInsert]) then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxComprasPecas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComprasPecas.FormShow(Sender: TObject);
begin
  AbrirDS;
  EnableDisableControls(True);
  EnableDisableButtonsInicio();
  NumeroProdutosDigitados := 0; {quantidade de produtos digitados}
  NumeroNfsDigitadas :=0; {quantidade de notas digitadas}
  QtdeNfsLote :=0;   {quantidade de notas no lote}
  QtdeProdutosLote :=0; {quantidade de produtos na NF}
end;

procedure TBoxComprasPecas.ConfereSoma;
begin
   if (NumeroProdutosDigitados = StrToInt(QtdeProdutos.Text)) then
    begin
     AtualizaValores;
//         showmessage(floattostr(totalprod));
  //      showmessage(tblnfda.fieldbyname('vlr_unit').asstring);
    //    showmessage(tblnfda.fieldByname('qtde').AsString);
      //   showmessage(tblnofi.fieldbyname('tot_prod').asstring);
     if (TotalProd - tblNofi.FieldByName('Tot_Prod').AsCurrency) > 0.009 then
         begin
//          showmessage(currtostr(totalprod));
  //        showmessage(tblNofi.fieldByName('tot_prod').AsString);
          Showmessage('A soma dos produtos não confere.');
          Quantidade.SetFocus;
         end
     else
      if (TotalICMsUnit - //+ tblNfDa.FieldByName('Vlr_ICMS').AsCurrency) -
        (tblNofi.FieldByName('Val_ICMS').AsCurrency)) > 0.009 then
         begin
          Showmessage('A soma de crédito de ICMS não confere.');
          CreditoICMSUnitario.SetFocus;
         end
      else
       if (TotalICMsSubstUnit -//+ tblNfDa.FieldByName('ICMS_SUBST').AsCurrency) -
         (tblNofi.FieldByName('Val_ICMS_S').AsCurrency)) > 0.009 then
         begin
          Showmessage('A soma de ICMS substituição não confere.');
          ICMSSubstUnitario.SetFocus;
         end
       else
        if (TotalIPIUnit -//+ tblNfDa.FieldByName('Vlr_IPI').AsCurrency) -
         (tblNofi.FieldByName('Val_IPI').AsCurrency)) > 0.009 then
          begin
           Showmessage('A soma de IPI não confere.');
           CodigoPeca.SetFocus;
          end
        else
          begin
           ArqSalvar := 4;
//           BtnSalvar.Enabled := True;
//           Salvar.Enabled := True;
//           BtnSalvar.Setfocus;
          end;
     end
    else
     begin
       ArqSalvar := 4;
//       BtnSalvar.Enabled := True;
//       Salvar.Enabled := True;
//       BtnSalvar.Setfocus;
     end;
end;

procedure TBoxComprasPecas.ICMSSubstUnitarioExit(Sender: TObject);
begin
       ArqSalvar := 3;
       BtnSalvar.Enabled := True;
       Salvar.Enabled := True;
       BtnSalvar.Setfocus;
end;

procedure TBoxComprasPecas.IPIUnitarioExit(Sender: TObject);
var
  BaseICMSSubstituicao : Extended;
  BaseICMs : Extended;
begin
  if tblPecas.FieldByName('Subst_Trib').AsBoolean then
   begin
    BaseICMSSubstituicao :=(tblNFda.FieldByName('Vlr_Unit').AsCurrency *
      tblNFda.FieldByName('Qtde').AsFloat) +
      tblNfDa.FieldByName('Vlr_IPI').AsCurrency;
    BaseICms :=(tblNFda.FieldByName('Vlr_Unit').AsCurrency *
      tblNFda.FieldByName('Qtde').AsFloat);
    tblNfda.FieldByName('vlr_ICMS').AsInteger := 0;
    if tblPessoas.FieldByName('Fabricante').AsBoolean then
     begin
      if tblPessoas.FieldByName('Estado').AsString <> 'RS' then
        tblNFda.FieldByName('vlr_ICMS').AsCurrency := (BaseICMS * 0.12)
      else
        tblNFda.FieldByName('vlr_ICMS').AsCurrency := (BaseICMS * 0.17);
      tblNFda.FieldByName('ICMS_Subst').AsCurrency := ((BaseICMSSubstituicao *
      (1.341 * 0.17)) - (tblNFda.FieldByName('vlr_ICMS').AsCurrency));
     end
    else
     begin
      if tblPessoas.FieldByName('Estado').AsString <> 'RS' then
        tblNFda.FieldByName('vlr_ICMS').AsCurrency := (BaseICMSSubstituicao * 0.12)
      else
        tblNFda.FieldByName('vlr_ICMS').AsCurrency := (BaseICMSSubstituicao * 0.17);
      tblNFda.FieldByName('ICMS_Subst').AsCurrency := (BaseICMSSubstituicao *
      (1.484 * 0.17))- (tblNFda.FieldByName('vlr_ICMS').AsCurrency);
     end
   end
  else
   begin
    if tblPessoas.FieldByName('Estado').AsString <> 'RS' then
      tblNFda.FieldByName('vlr_ICMS').AsCurrency :=
      ((((tblNFda.FieldByName('Vlr_Unit').AsCurrency) *
       (tblNFda.FieldByName('Qtde').AsFloat)) *
//       (tblNfDa.FieldByName('Vlr_IPI').AsCurrency)) *
        0.12))
    else
      tblNFda.FieldByName('vlr_ICMS').AsCurrency :=
       ((((tblNFda.FieldByName('Vlr_Unit').AsCurrency) *
         (tblNFda.FieldByName('Qtde').AsFloat)) *
//??       (tblNfDa.FieldByName('Vlr_IPI').AsCurrency)) *
        0.17));
    tblNFda.FieldByName('ICMS_Subst').AsInteger := 0;
   end;
end;

procedure TBoxComprasPecas.NumeroConhecimentoExit(Sender: TObject);
begin
   CodigoTransportadora.SetFocus;
end;

procedure TBoxComprasPecas.OutrosExit(Sender: TObject);
begin
  Chave.SetFocus;
  {: Soma o total da NF}
  with tblNofi do
   begin
     Total := FieldByName('TOT_PROD').AsCurrency +
       FieldByName('VAL_IPI').AsCurrency +
       FieldByName('VAL_ICMS_S').AsCurrency +
//       FieldByName('VAL_ICMS').AsCurrency +
       FieldByName('VAL_FRETE').AsCurrency +
       FieldByName('VAL_SEGURO').AsCurrency +
       FieldByName('VAL_OUTROS').AsCurrency;
      TotalNota.Text := FloatToStr(Total);//FloatToStrF(total,ffNumber,15,2);
   end;
  if tipoentrada <> 2 then
   begin
   if (NumeroNFsDigitadas = QtdeNFSLote) and
      (TotalMercadorias + Total <>
    tblConhecimento.FieldByName('Valor_Mercadorias').AsCurrency) then
       begin
        Showmessage('A soma das mercadorias não confere.');
        TotalProdutos.SetFocus;
       end;
   end;
end;

procedure TBoxComprasPecas.NotaFiscalExit(Sender: TObject);
var
 idNotaFiscal : Integer;
 idFornecedor : Integer;
begin
if NotaFiscal.Text = '' then
   NotaFiscal.Text := '0';
if CodigoFornecedor.Text = '' then
   CodigoFornecedor.Text := '0';
//idNotaFiscal := StrToInt(NotaFiscal.Text);
idFornecedor := StrToInt(CodigoFornecedor.Text);
if StrtoInt(NotaFiscal.Text) <> 0 then
  begin
    with tblPessoas do
      begin
       if idFornecedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idFornecedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fornecedor inexistente.');
             CodigoFornecedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Fornecedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um fornecedor.');
                CodigoFornecedor.SetFocus;
               end;
             NomeFornecedor.Text := FieldbyName('Nome').Text;
            end;
          //Close;
         end;
      end;
  end
else
   begin
   SpeedButton3.Click;
  // NotaFiscal.SetFocus;
  end;
idnotafiscal := strtoint(notafiscal.text);
with tblNofi do
begin
  Close;
  parambyName ('idNotaFiscal').AsInteger := idNotaFiscal;
  parambyName ('idFornecedor').AsInteger := idFornecedor;
  Open;
  if recordcount <> 0 then
    begin
     if tblnofi.FieldByName('Status').AsString = 'Aberto' then
       begin
         showmessage('Nota fiscal cadastrada. Reabrindo inclusão.');
         DataSourceNofi.DataSet.Edit;
         idNofi := tblNofi.FieldByName('id_nofi').AsInteger;
       end
     else
       begin
         Showmessage('Nota fiscal cadastrada e encerrada.');
         notafiscal.Setfocus
       end
    end
  else
   begin
    DataSourceNofi.Dataset.Insert;
    {Pega um sequence novo para a NF}
    IBQuery1.Open;
    IdNofi := IBQuery1.FieldByName('id_nofi').AsInteger;
    IBQuery1.Close;
   end;
end;
DataSourceNofi.Dataset.FieldByName('Numero').AsString := IntToStr(idnotafiscal);
end;

procedure TBoxComprasPecas.ChaveExit(Sender: TObject);
begin
  ArqSalvar := 2;
  BtnSalvar.Enabled := True;
  Salvar.Enabled := True;
  BtnSalvar.SetFocus;
end;

procedure TBoxComprasPecas.CodigoFornecedorExit(Sender: TObject);
var
 idFornecedor : Integer;
begin
if CodigoFornecedor.Text = '' then
   CodigoFornecedor.Text := '0';
idFornecedor := StrToInt(CodigoFornecedor.Text);
if StrtoInt(CodigoFornecedor.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoFornecedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFornecedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idFornecedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fornecedor inexistente.');
             CodigoFornecedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Fornecedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um fornecedor.');
                CodigoFornecedor.SetFocus;
               end;
             NomeFornecedor.Text := FieldbyName('Nome').Text;
             if fieldByName('fabricante').AsString = 'T' then
               Showmessage('Esta entrada deve ser feita com XML.'+#13+'Não pode ser digitada');
            end;
          Close;
         end;
      end;
  end;
end;

procedure TBoxComprasPecas.CodigoPecaExit(Sender: TObject);
begin
if CodigoPeca.Text = '' then
  begin
   SpeedButton4.Click;
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
             SpeedButton4.Click;
            end;
          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          IdPeca := FieldByName('Id_Pecas').AsInteger;
          DataSourceNfDa.Dataset.FieldByName('CFOP').AsString :=
            FieldByName('CFOP1').AsString;
         end;
      end;
  end;
end;

procedure TBoxComprasPecas.CodigoTransportadoraExit(Sender: TObject);
begin
if NumeroConhecimento.Text = '' then
   NumeroConhecimento.Text := '0';
if CodigoTransportadora.Text = '' then
   CodigoTransportadora.Text := '0';
idTransportadora := StrToInt(CodigoTransportadora.Text);
idConhecimento := StrToInt(NumeroConhecimento.Text);
if StrtoInt(CodigoTransportadora.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoTransportadora.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idTransportadora<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idTransportadora;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Transportadora inexistente.');
             CodigoTransportadora.SetFocus;
            end
          else
            begin
             if not FieldByName('Transportadora').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à uma transportadora.');
                CodigoTransportadora.SetFocus;
               end;
             NomeTransportadora.Text := FieldbyName('Nome').Text;
            end;
          Close;
         end;
      end;
  end;
with tblConhecimento do
begin
  Close;
  parambyName ('idConhecimento').AsInteger := idConhecimento;
  parambyName ('idTransportadora').AsInteger := idTransportadora;
  Open;
  if recordcount <> 0 then
    begin
     if tblConhecimento.FieldByName('Status').AsString = 'Aberto' then
       begin
         showmessage('Conhecimento cadastrado. Reabrindo inclusão.');
         DataSourceConhecimento.DataSet.Edit;
         idConhecimento := tblConhecimento.FieldByName('id_Conhecimento').AsInteger;
       end
     else
       begin
         Showmessage('Conhecimento cadastrado e encerrado.');
         numeroconhecimento.Setfocus
       end
    end
  else
    begin
      DataSourceConhecimento.Dataset.Insert;
      {Pega um sequence novo para o conhecimento}
      IBQuery2.Open;
      IdConhecimento := IBQuery2.FieldByName('id_conhecimento').AsInteger;
      IBQuery2.Close;
    end;
end;
end;

procedure TBoxComprasPecas.CodigoTransportadoraKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #27 then
  begin
    DoAfterClose;
    Close;
  end;
      {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    if CodigoTransportadora.Text = '' then
    else
      begin
        MessageDlg('Conhecimento já registrado.', mtInformation, [mbOK], 0);
        BtnCancelar.OnClick(Sender);
      end;
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
end;

procedure TBoxComprasPecas.DBGrid1ColEnter(Sender: TObject);
begin
//     if (DBGrid1.SelectedField = tblGridFDB1.IBDataSetLoteDadosNFEItem) then
     begin
       if ((tblNfda.State <> dsInsert) and
          (tblNFda.State <> dsEdit)) then
         begin
          tblNFda.Edit;
          tblNFda.Post;
         end;
     end;
end;

procedure TBoxComprasPecas.DBGrid1ColExit(Sender: TObject);
begin
{     if (DBGrid1.SelectedField = fdb1.IBDatasetLoteDadosNFEItem) then
     begin
       if (not fdb1.IBDatasetVeiculos.Locate('ITEM',
       fdb1.IBDatasetLoteDadosNFEItem.AsString,
        [loCaseInsensitive, loPartialKey])) then
        begin
          MessageDlg('Código do produto não encontrado !',mtInformation, [mbOK], 0);
          fdb1.IBDatasetLoteDadosNFE.Edit;
          fdb1.IBDatasetLoteDadosNFEItem.AsString := '';
          fdb1.IBDatasetLoteDadosNFE.Post;
        end;
     end;}
end;

procedure TBoxComprasPecas.DBGrid1DblClick(Sender: TObject);
begin
   With tblNFda do
    begin
     Edit;
     ProdutoNumero.Text := IntToStr(Recno);
     NumeroProdutosDigitados := RecordCount;
     CodigoPeca.Text := FieldByName('item').AsString;
     TotalProd := TotalProd - (tblNfDa.FieldByName('Vlr_Unit').AsCurrency *
        tblNfDa.FieldByName('Qtde').AsCurrency);//variant
     AtualizaValores;
    end;
   CodigoPeca.SetFocus;  
end;

procedure TBoxComprasPecas.DBQtdeNfsExit(Sender: TObject);
begin
//   QtdeNfsLote := DBQTdeNfs.AsFloat;   {quantidade de notas no lote}
end;

procedure TBoxComprasPecas.DoAfterClose;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceNfda.Dataset.Close;
    DataSourceConhecimento.Dataset.Close;
    DataSourceModelosVeiculos.Dataset.Close;
    DataSourcePessoas.DataSet.Close;
end;

procedure TBoxComprasPecas.BtnUsadosClick(Sender: TObject);
begin
//  Action :=caFree;
//  BoxComprasPecas := nil;
//  if not Assigned(BoxComprasUsados) then
//    BoxComprasUsados := TBoxComprasUsados.Create(Self);
//  BoxComprasUsados.Show;
end;

procedure TBoxComprasPecas.ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar := 1;
    BtnSalvar.Enabled := True;
    Salvar.Enabled := True;
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxComprasPecas.TotalProdutosExit(Sender: TObject);
var
 Total : Currency;
begin
    {: Soma o total da NF}
    with tblNofi do
     begin
      Total := FieldByName('TOT_PROD').AsCurrency +
        FieldByName('VAL_IPI').AsCurrency +
        FieldByName('VAL_ICMS_S').AsCurrency +
//        FieldByName('VAL_ICMS').AsCurrency +
        FieldByName('VAL_FRETE').AsCurrency +
        FieldByName('VAL_SEGURO').AsCurrency +
        FieldByName('VAL_OUTROS').AsCurrency;
      TotalNota.Text := FloatToStr(total);//FloatToStrF(total,ffNumber,15,2);
     end;
end;

procedure TBOXComprasPecas.AtualizaValores;
begin
   IBQueryTotal.Close;
   IBQueryTotal.ParamByName('idNofi').AsInteger := idNofi;
   IBQueryTotal.Open;
   TotalProd := IBQueryTotal.FieldByName('valor').AsFloat;
   IBQueryICMS.Close;
   IBQueryICMS.ParamByName('idNofi').AsInteger := idNofi;
   IBQueryICMS.Open;
   TotalICMSUnit := IBQueryICMS.FieldByName('valor').AsFloat;
   IBQueryIPI.Close;
   IBQueryIPI.ParamByName('idNofi').AsInteger := idNofi;
   IBQueryIPI.Open;
   TotalIPIUnit := IBQueryIPI.FieldByName('valor').AsFloat;
   IBQueryICMSSubst.Close;
   IBQueryICMSSubst.ParamByName('idNofi').AsInteger := idNofi;
   IBQueryICMSSubst.Open;
   TotalICMSSubstUnit := IBQueryICMSSubst.FieldByName('valor').AsFloat;
   CurrencyEdit1.Value := TotalProd;   
   CurrencyEdit2.Value := TotalICMSUnit;
   CurrencyEdit3.Value := TotalICMSSubstUnit;
end;

procedure TBoxComprasPecas.BtnSalvarClick(Sender: TObject);
begin
 try
 if DataSourceNofi.Dataset.FieldByName('Chave').AsString = null then
    begin
      Showmessage('Digite a chave da NF');
      Chave.SetFocus;
    end;
 if tblPessoas.fieldByName('fabricante').AsString = 'T' then
    Showmessage('Esta entrada deve ser feita com XML.'+#13+'Não pode ser digitada')
 else
 begin
  BtnSalvar.Enabled := False;
  Salvar.Enabled := False;
  if ArqSalvar = 1 then
    begin
      DataSourceConhecimento.Dataset.FieldByName('id_Conhecimento').AsInteger := IdConhecimento;
      DataSourceConhecimento.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      DataSourceConhecimento.DataSet.FieldByName('Status').AsString := 'Aberto';
      if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Com conhecimento' then
        begin
         DataSourceConhecimento.Dataset.FieldByName('Transportadora').AsInteger :=
           StrToInt(CodigoTransportadora.Text);
         DataSourceConhecimento.Dataset.FieldByName('Numero_Conhecimento').AsString :=
           NumeroConhecimento.Text;
        end;
      DataSourceConhecimento.DataSet.Post;
      if tipoentrada =2 then
          begin
            idTransportadora := 1;
            TotalProdutos.Text := DBValorMercadorias.Text;
          end;
      DataSourceConhecimento.DataSet.Open;
      Id_conhecimento := DataSourceConhecimento.Dataset.FieldByName('Id_Conhecimento').AsInteger;
      EnableDisableControls(False);
      PageNotasFiscais.Visible :=True;
      PageNotasFiscais.Enabled := True;
      PageControl.TabIndex := 1;
      PageConhecimento.Enabled := False;
      EnableDisableControls(True);
      CodigoFornecedor.Setfocus;
      if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento'  then
        QtdeNfsLote := 1
      else
        QtdeNfsLote := StrToInt(DBQtdeNfs.Text);
      NumeroNotaFiscalLote.Text := IntToStr(1);
      NumeroNfsDigitadas := 1;
      TotalMercadorias := 0;
    end;
  if ArqSalvar = 2 then
    begin
      begin
       TotalMercadorias := TotalMercadorias + total;
       DataSourceNofi.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       DataSourceNofi.Dataset.FieldByName('Id_Clientes').AsInteger :=
         StrToInt(CodigoFornecedor.Text);
       DataSourceNofi.DataSet.FieldByName('id_Nofi').AsInteger := IdNofi;
       DataSourceNofi.DataSet.FieldByName('Id_Conhecimento').AsInteger := id_conhecimento;
       DataSourceNofi.Dataset.FieldByname('Status').AsString := 'Aberto';
       DataSourceNofi.Dataset.FieldByName('Ent_sai').AsString := 'E';
       DataSourceNofi.DataSet.FieldByName('Origem').AsString := 'P';
       DataSourceNofi.DataSet.FieldByName('Frete_tipo').AsInteger := RadioGroup2.ItemIndex;
       DataSourceNofi.Dataset.Post;
       DataSourceNofi.Dataset.Close;
       DataSourceNofi.Dataset.Open;
       EnableDisableControls(False);
       PagePecas.Enabled := True;
       PageControl.TabIndex := 2;
       PageConhecimento.Enabled := False;
       PageNotasFiscais.Enabled := False;
       EnableDisableControls(True);
       tblModelos.Open;
       QtdeProdutosLote := StrToInt(QtdeProdutos.Text); {quantidade de produtos na NF}
       with tblNofiFaturas do
        begin
          Close;
          ParamByName('idNofi').AsInteger := idNofi;
          Open;
        end;
       with tblNFda do
         begin
           Close;
           ParamByName('idNofi').AsInteger := idNofi;
           Open;
           First;
           TotalProd := 0;
           while not eof do
            begin
             TotalProd := TotalProd + (tblNfDa.FieldByName('Vlr_Unit').AsCurrency *
               tblNfDa.FieldByName('Qtde').AsCurrency);//Variant);
             Next;
            end;
           NumeroProdutosDigitados := tblNFda.RecordCount + 1;{quantidade de produtos digitados}
           AtualizaValores;
//           BtnNovo.SetFocus;
         end;
    end;
   end;
  if ArqSalvar = 3 then
     begin
        TotalProd := TotalProd + (tblNfDa.FieldByName('Vlr_Unit').AsCurrency *
           tblNfDa.FieldByName('Qtde').AsCUrrency);//variant
        AtualizaValores;
        DataSourceNfDa.Dataset.FieldByName('Prod_Numero').AsString :=
          IntToStr(NumeroProdutosDigitados);
        DataSourceNfDa.Dataset.FieldByName('Id_Nofi').AsInteger := IdNofi;
        DataSourceNfDa.Dataset.FieldByName('Item').AsString := CodigoPeca.Text;
        DataSourceNfDa.Dataset.FieldByName('id_peca').AsInteger := IdPeca;
        DataSourceNfDa.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        DataSourceNfda.Dataset.FieldByName('NF').AsString :=
          DataSourceNofi.Dataset.FieldByName('Numero').AsString;
        DataSourceNfda.Dataset.FieldByName('Id_Conhecimento').AsInteger := Id_conhecimento;
        if tipoentrada=1 then
          DataSourceNfda.Dataset.FieldByName('CST').AsString :=
            DataSourceModelosVeiculos.Dataset.FieldByName('CST').AsString;
        DataSourceNfDa.Dataset.Post;

        if numeroProdutosDigitados=StrToInt(qtdeprodutos.Text) then
  //       begin
         //conferir faturas;
          if NumeroNfsDigitadas = QtdeNfsLote then
            {Confere soma}
            ConfereSoma
//              ArqSalvar :=4     {Fechar a nota}
          else
            begin
             NumeroNfsDigitadas := NumeroNfsDigitadas + 1;
             NumeroNotaFiscalLote.Text := IntToStr(NumeroNfsDigitadas);
             TotalProd := 0;
             TotalICMSSubstUnit := 0;
             TotalICMSUnit := 0;
             TotalIPIUnit := 0;
             PageNotasFiscais.Enabled := True;
             PageControl.TabIndex := 1;
             PagePecas.Enabled := False;
             tblNofi.Insert;
             with tblNFda do
               begin
                 Close;
                 ParamByName('idNofi').AsInteger := IdNofi;
                 Open;
                 DBGrid1.Refresh;
                 DataSourceNFda.DataSet.Active := True;
               end;
             NotaFiscal.SetFocus;
            end
         else
          begin
            CodigoPeca.Text := '';
            BtnNovo.SetFocus;
          end;
         with tblNfDa do
          begin
           Close;
           ParamByName('idNofi').AsInteger := idNofi;
           Open;
           DBGrid1.Refresh;
           DataSourceNFda.DataSet.Active := True;
          end;
//        end;
        NumeroProdutosDigitados := NumeroProdutosDigitados +1;
        ProdutoNumero.Text := IntToStr(NumeroProdutosDigitados);
     end;
  if ArqSalvar = 4 then
    begin
      BtnSalvarLote.Enabled := True;
      FecharLote.Enabled := True;
      BtnSalvarLote.SetFocus;
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
  showmessage('Dados gravados');
end;

procedure TBoxComprasPecas.BtnSalvarLoteClick(Sender: TObject);
begin
  case MessageDlg('Confirma Fechamento do lote?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: GravaLote;
    end
end;

procedure TBoxComprasPecas.GravaLote;
Begin
  try
    With tblConhecimento do
     Begin
      Open;
      Edit;
      FieldByName('Status').AsString := 'Fechado';
      Post;
      Close;
     end;
    With tblNofi2 do
     begin
      Close;
      ParamByName('idConhecimento').AsInteger := IdConhecimento;
      Open;
      First;
       While not eof do
        begin
         Edit;
         FieldByName('Status').AsString := 'Fechado';
         Post;
         IdNofi := FieldByName('id_nofi').AsInteger;
         with IBQueryNofiFaturas do
          begin
            Close;
            ParamByName('idNofi').AsInteger := IdNofi;
            Open;
            if FieldByName('Valor').AsCurrency <> tblNofi2.FieldByName('Tot_Nota').AsCurrency then
             begin
              showmessage('O total das faturas não confere');
              abort;
             end
            else //gravar o CPAGAR
             begin
               with tblNofiFaturas do
                 begin
                  Close;
                  ParamByName('idNofi').AsInteger := IdNofi;
                  Open;
                  while not tblNofiFaturas.eof do
                    begin
                       tblCPagar.Open;
                       tblCPagar.Insert;
                       tblCPagar.FieldByName('Id_Concessionaria').AsInteger :=
                         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                       tblCPagar.FieldByName('Id_Clientes').AsInteger := tblNofi2.FieldByName('Id_Clientes').AsInteger;
                       tblCPagar.FieldByName('Documento').AsString := FieldByName('Fatura').AsString;
                       tblCPagar.FieldByName('NFiscal').AsString := tblNofi2.FieldByName('Numero').AsString;
                       tblCPagar.FieldByName('Id_Forma_Pagamento').AsInteger := 2;
                       tblCPagar.FieldByName('Vencimento').AsDateTime := FieldByName('Vencimento').AsDateTime;
                       tblCPagar.FieldByName('Valor').AsCurrency := FieldByName('Valor').AsCurrency;
                       tblCPagar.FieldByName('Emissao').AsDateTime := tblNofi2.FieldByName('Emissao').AsDateTime;
                       tblCPagar.FieldByName('Historico').AsString := 'Compra peças ref.NF.' +
                         tblNofi2.FieldByName('Numero').AsString;
                       tblCPagar.FieldByName('Status').AsString := 'Processado';
                       tblCPagar.Post;
                       tblNofiFaturas.Next;
                    end;
                 end;
             end;
          end;
         GravaEstoque;
         Next;
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
  showmessage('Dados gravados');
   BtnSalvarLote.Enabled := False;
   FecharLote.Enabled := False;
   PageConhecimento.Tabvisible := True;
   EnableDisableButtonsInicio();
   BtnCancelar.Enabled := False;
   Cancelar.Enabled := False;
   Pagepecas.TabVisible := False;
End;

procedure TBoxComprasPecas.GravaEstoque;
begin
  With tblNFda do //dados da NF - pecas
    begin
      Close;
      ParamByName('idNofi').AsInteger := idNofi;
      Open;
      First;
      while not eof do
        begin
          GravaEstoqueDados;
          Next;
        end;
    end;
end;

procedure TBoxComprasPecas.GravaEstoqueDados;
var
 mEstoque : Extended;
 mICMS : Extended;
 mICMSSubst : Extended;
 mIPI : Extended;
 mFreteUnitario : Extended;
 mOutros : Extended;
 mFreteGeral : Extended;
begin
  with tblPecas2 do
    begin
      Close;
      ParamByName('idPecas').AsInteger := tblNFda.FieldByName('id_Peca').AsInteger;
      Open;
    end;
  with tblPecasEstoque do
     begin
       Close;
       ParamByName('idPecas').AsInteger := tblNFda.FieldByName('id_Peca').AsInteger;
       ParamByName('idConcessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Edit;
       mICMS := (tblNFda.FieldByName('Vlr_ICMS').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mICMSSubst := (tblNFda.FieldByName('ICMS_Subst').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mIPI := (tblNFda.FieldByName('Vlr_IPI').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mFreteUnitario := (tblNFda.FieldByName('Vlr_unit').AsFloat /
         tblNofi2.FieldByName('Tot_Prod').AsFloat);
       mOutros :=  (tblNofi2.FieldByName('Val_Frete').AsFloat + tblNofi2.FieldByName('Val_Seguro').AsFloat +
         tblNofi2.FieldByName('Val_Outros').AsFloat);//+ //valores de cada nota(frete,seguro e outros)
       mEstoque := FieldByName('Estoque').AsFloat;
       if mEstoque < 0 then
          mEstoque := 0;
      if (RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento') or
         (tblConhecimento.FieldByName('Valor_frete').AsInteger = 0) then
           mFreteGeral := 0
      else
       mFreteGeral := (tblConhecimento.FieldByName('Valor_Frete').AsFloat /
         tblConhecimento.FieldByName('Valor_Mercadorias').AsFloat) *
         tblNFda.FieldByName('Vlr_unit').AsFloat;//Frete do conhecimento)}
       if recordCount <> 0 then
         begin
          FieldByName('Ult_Compra').AsDateTime :=
            tblNofi2.FieldByName('Emissao').AsDateTime;
          FieldByName('Fornecedor').AsInteger :=
            tblNofi2.FieldByName('id_Clientes').AsInteger;
          if tblPecas2.FieldByName('Subst_Trib').AsBoolean then
            FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat + mICMSSubst + mIPI +
              (mfreteunitario * mOutros) + mFreteGeral
          else
            FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat - mICMS + mIPI +
              (mfreteunitario * mOutros) + mFreteGeral;
          if Mestoque =  0 then
            FieldByName('Cst_medio').AsFloat := FieldBYName('Cst_atual').AsFloat
          else
            FieldByName('Cst_Medio').AsFloat :=
             ((FieldByName('Estoque').AsFloat * FieldByName('Cst_medio').AsFloat) + //valor total do estoque antigo
             (FieldByName('Cst_atual').AsFloat * tblNFda.FieldByName('Qtde').AsFloat)) / //valor total do estoque adquirido
             (mEstoque + tblNFda.FieldByName('Qtde').AsFloat);
          FieldByName('Estoque').AsFloat := FieldByName('Estoque').AsFloat +
            tblNFda.FieldByName('Qtde').AsFloat;
           Post;
         end
       else
         begin
          Insert;
          FieldByName('Id_Pecas').AsInteger :=
            tblNFda.FieldByName('id_peca').AsInteger;
          FieldByName('Id_Concessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          FieldByName('Estoqos').AsInteger := 0;
          FieldByName('Ult_Compra').AsDateTime :=
            tblNofi2.FieldByName('Emissao').AsDateTime;
          FieldByName('Fornecedor').AsString :=
            tblNofi2.FieldByName('id_Clientes').AsString;
          if tblPecas2.FieldByName('Subst_Trib').AsBoolean then
            FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat + mICMSSubst + mIPI +
              (mFreteUnitario * mOutros) + mFreteGeral
          else
            FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat - mICMS + mIPI +
              (mFreteUnitario * mOutros) + mFreteGeral;
          if mEstoque = 0 then
            FieldByName('Cst_medio').AsFloat := FieldByName('Cst_atual').AsFloat
          else
            FieldByName('Cst_Medio').AsFloat :=
             (FieldByName('Cst_atual').AsFloat * tblNFda.FieldByName('Qtde').AsFloat) / //valor total do estoque adquirido
             (tblNFda.FieldByName('Qtde').AsFloat);
          FieldByName('Estoque').AsInteger :=
            tblNFda.FieldByName('Qtde').AsInteger;
          Post;
         end;
     end;
  with tblPecasMovimentacao do
     begin
       Insert;
       FieldByName('Id_Concessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Id_pecas').AsInteger :=
         tblNFda.FieldByName('id_peca').AsInteger;
       FieldByName('Movimento').AsString := 'E';
       FieldByName('Quantidade_Movimentada').AsFloat :=
         tblNFda.FieldByName('Qtde').AsFloat;
       FieldByName('Quantidade_Atual').AsFloat :=
         tblPecasEstoque.FieldByName('Estoque').AsFloat;
       FieldByName('Custo_Medio').AsFloat :=
         tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
       FieldByName('Data').AsDateTime := DataAtual;
       FieldByName('Emissao').AsDateTime :=
         tblNofi2.FieldByName('Emissao').AsDateTime;
       FieldByName('NF').AsString :=
         tblNofi2.FieldByName('Numero').AsString;  
       Post;
     end;
  tblPecas2.Close;
end;

procedure TBoxComprasPecas.RadioGroup1Click(Sender: TObject);
begin
    DBValorMercadorias.Enabled := True;
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Com conhecimento' then
      begin
        numeroconhecimento.Enabled := True;
        CodigoTransportadora.Enabled := True;
        DBValorFrete.Enabled := True;
        DBQtdeNfs.Enabled := True;
        NumeroConhecimento.Setfocus;
      end;
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento' then
      begin
        numeroconhecimento.Enabled := False;
        CodigoTransportadora.Enabled := False;
        DBValorFrete.Enabled := False;
        DBQtdeNfs.Enabled := False;
        DataSourceConhecimento.Dataset.Open;
        DataSourceConhecimento.Dataset.Insert;
       {Pega um sequence novo para o conhecimento}
        IBQuery2.Open;
        IdConhecimento := IBQuery2.FieldByName('id_conhecimento').AsInteger;
        IBQuery2.Close;
        tblConhecimento.FieldByName('Qtde_Nfs').AsString := '1';
        DBValorMercadorias.Setfocus;
      end;
 end;

procedure TBoxComprasPecas.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Transportadora','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Transportadora = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoTransportadora.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeTransportadora.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoTransportadora.SetFocus;
end;

procedure TBoxComprasPecas.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Fornecedor','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Razão Social:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Fornecedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoFornecedor.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeFornecedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFornecedor.SetFocus;
end;

procedure TBoxComprasPecas.SpeedButton3Click(Sender: TObject);
begin
     Nf := STRtoINT(NotaFiscal.text);
     Retorno := Biblioteca.PesquisaGeral('Nota Fiscal','Nofi',
      ['Numero','Id_Nofi','Serie','Emissao'],
      ['Número da NF:','Sequência:','Série NF:','Data Emissão:',''],
      'Numero','Numero',Fdb1.SQLConnection1,'Status = ','Aberto','Ativo');
     with tblNofi do
     begin
       Close;
       Parambyname('idfornecedor').AsInteger := StrToInt(CodigoFornecedor.Text);
       ParamByName('idNotaFiscal').AsInteger := StrToInt(Retorno);
       Open;
       NotaFiscal.Text := Retorno;
       Edit;
     end;
     CFOP.SetFocus;
end;

procedure TBoxComprasPecas.SpeedButton4Click(Sender: TObject);
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
        IdPeca := FieldByName('Id_Pecas').AsInteger;
     end;
     if CodigoPeca.Text = '' then
     begin
       CodigoPeca.SetFocus;
     end;
end;

procedure TBoxComprasPecas.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasPecas.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasPecas.tblNofiFaturasAfterInsert(DataSet: TDataSet);
begin
  tblNofiFaturas.FieldByName('Fatura').AsString := NotaFiscal.Text + '-1';
  ValorFatura.SetFocus;
end;

procedure TBoxComprasPecas.tblNofiFaturasBeforePost(DataSet: TDataSet);
begin
  tblNofiFaturas.FieldByName('Id_Nofi').AsInteger := IdNofi;
end;

procedure TBoxComprasPecas.EnableDisableButtonsInicio();{Value: Boolean);}
begin
  { Habilita/desabilita os botões }
  BtnSalvar.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnSalvarLote.Enabled := False;
  Salvar.Enabled := False;
  Cancelar.Enabled := False;
  FecharLote.Enabled := False;
  PageConhecimento.Enabled := True;
  PageControl.TabIndex := 0;
  RadioGroup1.Enabled := True;
  Radiogroup1.Setfocus;
end;

procedure TBoxComprasPecas.BtnCancelarClick(Sender: TObject);
begin
  EnableDisableButtonsInicio();
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasPecas.BtnNovoClick(Sender: TObject);
begin
  with tblNFda do
   begin
      Insert;
      FieldByName('CFOP').Value := tblNofi.FieldByName('CFOP').Value;
      FieldByName('VLR_IPI').AsInteger := 0;
      FieldByName('VLR_ICMS').AsInteger := 0;
      FieldByName('Prod_Numero').AsString := IntToStr(NumeroProdutosDigitados);
      CodigoPeca.SetFocus;
   end;
end;

procedure TBoxComprasPecas.EnableDisableButtons(Value: Boolean; Value1 : Boolean);
begin
  { Habilita/desabilita os botões }
  BtnCancelar.Enabled := Value1;
  Cancelar.Enabled := Value1;
end;

procedure TBoxComprasPecas.EnableDisableCampos(Value: Boolean);
begin
      if ArqSalvar = 1 then
        begin
          RadioGroup1.Enabled := False;
          NumeroConhecimento.Enabled := False;
          DBQtdeNfs.Enabled := False;
          CodigoTransportadora.Enabled := False;
          DBValorFrete.Enabled := False;
          DBValorMercadorias.Enabled := False;
        end;
      if ArqSalvar = 2 then
        begin
          NotaFiscal.Enabled := False;
          QtdeProdutos.Enabled := False;
          CFOP.Enabled := False;
          SerieNF.Enabled := False;
          Emissao.Enabled := False;
          Chegada.Enabled := False;
          CodigoFornecedor.Enabled  := False;
          NomeFornecedor.Enabled := False;
          TotalProdutos.Enabled := False;
          TotalIPI.Enabled := False;
          ICMSSubst.Enabled := False;
          CreditoICMS.Enabled := False;
          Outros.Enabled := False;
          TotalNota.Enabled := False;
        end;

end;

procedure TBoxComprasPecas.EnableDisableUsados(Value : Boolean);
begin
end;

procedure TBoxComprasPecas.EnableDisableControls(Value: Boolean);
var
  i : integer;
begin
  {: faz um laço em todos os componentes}
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TSpeedButton) then
       (Components[i] as TSpeedButton).Enabled:= Value;
    if (Components[i] is TMaskEdit) then
       (Components[i] as TMaskEdit).Enabled:= Value;
    if (Components[i] is TJVDBMaskEdit) then
       (Components[i] as TJVDBMaskEdit).Enabled:= Value;
    if (Components[i] is TCustomEdit) then
       (Components[i] as TCustomEdit).Enabled := Value;
    if (Components[i] is TRadioGroup) then
       (Components[i] as TRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  NomeTransportadora.Enabled := False;
  NomeFornecedor.Enabled := False;
//  RadioGroup1.ItemIndex := -1;
end;
procedure TBoxComprasPecas.AbrirDs;
begin
  DataSourcePessoas.Dataset.Open;
  DataSourceConhecimento.Dataset.Open;
  DataSourceNofi.Dataset.Open;
  DataSourceNfDa.Dataset.Open;
  DataSourcePecasMovimentacao.Dataset.Open;
  DataSourceModelosVeiculos.Dataset.Open;
end;

procedure TBoxComprasPecas.FecharDs;
begin
  DataSourcePessoas.Dataset.Close;
  DataSourceConhecimento.Dataset.Close;
  DataSourceNofi.Dataset.Close;
  DataSourceNofiFaturas.Dataset.Close;
  DataSourceNfDa.Dataset.Close;
  DataSourcePecasMovimentacao.Dataset.Close;
  DataSourceModelosVeiculos.Dataset.Close;
  DataSourcePecas2.Dataset.Close;
  DataSourceCPagar.Dataset.Close;
  IBQueryICMS.Close;
  IBQueryIPI.Close;
  IBQueryTotal.Close;
  IBQuery1.CLose;
  IBQuery2.Close;
  IBQueryICMSSubst.Close;
end;

end.
