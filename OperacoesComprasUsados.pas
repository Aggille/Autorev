unit OperacoesComprasUsados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvCombobox, JvDBCombobox, JvExControls,
  JvDBLookupTreeView, JvDBSearchComboBox, JvDBLookup, JvDBLookupComboEdit,
  Datasnap.DBClient, vcl.wwdblook;

type
  TBoxComprasUsados = class(TForm)
    JvStatusBar1: TJvStatusBar;
    ToolBar1: TToolBar;
    BtnCancelar: TBitBtn;
    BtnConfirma: TBitBtn;
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
    tblNofiSA: TIBDataSet;
    DataSourceNofiSA: TDataSource;
    DataSourceSada: TDataSource;
    tblSaDa: TIBDataSet;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    CodigoFornecedor: TMaskEdit;
    NomeFornecedor: TMaskEdit;
    Label34: TLabel;
    MarcaUsados: TDBEdit;
    Label39: TLabel;
    Potencia: TDBEdit;
    Label40: TLabel;
    Renavam: TDBEdit;
    Custo: TDBEdit;
    Label44: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    motor: TDBEdit;
    Chassi: TDBEdit;
    Modelo2: TRxDBLookupCombo;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Combustivel: TDBEdit;
    Cor: TDBEdit;
    PrecoVenda: TDBEdit;
    Label45: TLabel;
    Label43: TLabel;
    Placa: TDBEdit;
    Label1: TLabel;
    tblSaDaID_SADA: TIntegerField;
    tblSaDaID_NOFISA: TIntegerField;
    tblSaDaID_CONCESSIONARIA: TIntegerField;
    tblSaDaNF: TIBStringField;
    tblSaDaCODIGO: TIBStringField;
    tblSaDaDESCRICAO: TIBStringField;
    tblSaDaQTDE: TSmallintField;
    tblSaDaUNIDADE: TIBStringField;
    tblSaDaCST: TIBStringField;
    tblSaDaSUBST: TIBStringField;
    tblSaDaICMS: TIBBCDField;
    tblSaDaPRECO: TIBBCDField;
    tblSaDaCFOP: TIBStringField;
    tblSaDaST_COFINS: TIBStringField;
    tblSaDaANO_MODELO: TIBStringField;
    tblSaDaRENAVAM: TIBStringField;
    tblSaDaPOTENCIA: TIBStringField;
    tblSaDaCOR: TIBStringField;
    tblSaDaCOMBUSTIVEL: TIBStringField;
    tblSaDaPLACA: TIBStringField;
    tblSaDaMOTOR: TIBStringField;
    tblSaDaCHASSI: TIBStringField;
    tblSaDaANO_FABRICACAO: TIBStringField;
    tblSaDaCUSTO: TIBBCDField;
    tblSaDaMARCA: TIBStringField;
    tblSaDaMODELO: TIBStringField;
    tblSaDaSTATUS: TIBStringField;
    AnoFabricacao: TJvDBMaskEdit;
    AnoModelo: TJvDBMaskEdit;
    tblNofiSAID_NOFISA: TIntegerField;
    tblNofiSAID_CONCESSIONARIA: TIntegerField;
    tblNofiSAID_CLIENTES: TIntegerField;
    tblNofiSANUMERO: TIntegerField;
    tblNofiSASERIENF: TIBStringField;
    tblNofiSAEMISSAO: TDateField;
    tblNofiSAORIGEM: TIBStringField;
    tblNofiSAENT_SAI: TIBStringField;
    tblNofiSAVENDEDOR: TIntegerField;
    tblNofiSASAIDA: TDateField;
    tblNofiSAHORA: TIBStringField;
    tblNofiSAIE_SUBS: TIBStringField;
    tblNofiSADESC_PEC: TIBBCDField;
    tblNofiSADESC_OFI: TIBBCDField;
    tblNofiSABASE_ICMS: TIBBCDField;
    tblNofiSAVAL_ICMS: TIBBCDField;
    tblNofiSABASE_ICM_S: TIBBCDField;
    tblNofiSAVAL_ICMS_S: TIBBCDField;
    tblNofiSAVAL_FRETE: TIBBCDField;
    tblNofiSAVAL_SEGURO: TIBBCDField;
    tblNofiSAVAL_OUTROS: TIBBCDField;
    tblNofiSAVAL_IPI: TIBBCDField;
    tblNofiSAVAL_SERV: TIBBCDField;
    tblNofiSAISSQN: TIBBCDField;
    tblNofiSAVAL_ISS: TIBBCDField;
    tblNofiSATOT_PROD: TIBBCDField;
    tblNofiSATOT_NOTA: TIBBCDField;
    tblNofiSAPIS: TIBBCDField;
    tblNofiSACOFINS: TIBBCDField;
    tblNofiSACOD_TRANS: TIBStringField;
    tblNofiSAFRETE_TIPO: TIBStringField;
    tblNofiSAPLACA: TIBStringField;
    tblNofiSADADOS_AD01: TIBStringField;
    tblNofiSADADOS_AD02: TIBStringField;
    tblNofiSADADOS_AD03: TIBStringField;
    tblNofiSADADOS_AD04: TIBStringField;
    tblNofiSAOBS: TIBStringField;
    tblNofiSAQTDE_PROD: TIntegerField;
    tblNofiSASTATUS: TIBStringField;
    tblVeiculos: TIBDataSet;
    DataSourceVeiculos: TDataSource;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
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
    Status: TRxDBLookupCombo;
    Label2: TLabel;
    DataSourceStatus: TDataSource;
    tblStatus: TIBDataSet;
    tblStatusID_STATUS: TIntegerField;
    tblStatusSTATUS: TIBStringField;
    Label3: TLabel;
    CodigoComprador: TMaskEdit;
    SpeedButton1: TSpeedButton;
    NomeComprador: TMaskEdit;
    tblVeiculosID_COMPRADOR: TIntegerField;
    BtnImprimir: TBitBtn;
    Label13: TLabel;
    SerieNF: TComboBox;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    tblNofiSACODIGO_FISCAL: TIBStringField;
    tblNofiSADESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblVeiculosCST: TIBStringField;
    IBQuery3: TIBQuery;
    BtnTerceiro: TBitBtn;
    tblVeiculos1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    DateField1: TDateField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    DateField2: TDateField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    DateField3: TDateField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IntegerField6: TIntegerField;
    IBStringField26: TIBStringField;
    DataSourceVeiculos1: TDataSource;
    tblSaDaNAT_OP: TIBStringField;
    tblSaDaBASE_ICMS: TIBBCDField;
    tblSaDaDESCONTO: TIBBCDField;
    tblSaDaID_PECAS: TIntegerField;
    tblSaDaNCM: TIBStringField;
    tblSaDaCILINDRADAS: TIntegerField;
    tblVeiculos1ID_MODELO_VEICULO: TIntegerField;
    tblVeiculos1DATA_RECEBIMENTO: TDateField;
    tblVeiculos1NCM: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    tblVeiculosNCM: TIBStringField;
    tblCreceber: TIBDataSet;
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
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    DataSourceCreceber: TDataSource;
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
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    tblCaixa: TIBDataSet;
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
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    DataSourceCaixa: TDataSource;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Documento: TDBEdit;
    LabelData: TLabel;
    Data: TJvDBDateEdit;
    Label12: TLabel;
    Valor: TDBEdit;
    Label5: TLabel;
    Historico: TDBEdit;
    Cliente: TDBEdit;
    LabelCliente: TLabel;
    BitBtn1: TBitBtn;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblCreceberID_VEICULOS_AVALIACAO: TIntegerField;
    tblCreceberID_MODVEIC: TIntegerField;
    tblCreceberANO_MODELO: TIBStringField;
    tblCreceberANO_FABRICACAO: TIBStringField;
    tblCreceberCOR: TIBStringField;
    tblCreceberFIPE: TIBBCDField;
    tblCreceberREPAROS: TIBBCDField;
    tblCreceberVALOR_AVALIACAO: TIBBCDField;
    tblCreceberDATA: TDateField;
    tblCreceberAVALIADOR: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS1: TIntegerField;
    tblCreceberMODELO: TIBStringField;
    tblCreceberPLACA: TIBStringField;
    tblModelos: TIBDataSet;
    tblModelosMODELO: TIBStringField;
    DataSourceModelosVeiculos: TDataSource;
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosCST: TIBStringField;
    tblModelosMARCA: TIBStringField;
    tblModelosHP: TIBStringField;
    tblModelosCILINDRADAS: TIntegerField;
    tblModelosID_MODVEIC: TIntegerField;
    tblAux: TClientDataSet;
    dts1: TDataSource;
    tblAuxidModelo: TIntegerField;
    tblAuxmodelo: TStringField;
    tblAuxmarca: TStringField;
    tblAuxcombustivel: TStringField;
    tblAuxcst: TStringField;
    tblAuxhp: TStringField;
    tblAuxcilindradas: TIntegerField;
    Modelo: TwwDBLookupCombo;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    tblVeiculosCODIGO: TIBStringField;
    tblVeiculosVBC_STRET: TIBBCDField;
    tblVeiculosPST: TIBBCDField;
    tblVeiculosVICMS_STRET: TIBBCDField;
    tblVeiculosPRED_BCST: TIBBCDField;
    tblVeiculosVBC_ST: TIBBCDField;
    tblVeiculosPICMS_ST: TIBBCDField;
    tblVeiculosVICMS_ST: TIBBCDField;
    tblVeiculos1RENAVAM: TIBStringField;
    tblSaDaALIQ_ICMS: TIBBCDField;
    tblSaDaVL_PIS: TIBBCDField;
    tblSaDaCST_PIS: TIBStringField;
    tblSaDaVL_BC_PIS: TIBBCDField;
    tblSaDaALIQ_PIS_PERC: TIBBCDField;
    tblSaDaVL_COFINS: TIBBCDField;
    tblSaDaCST_COFINS: TIBStringField;
    tblSaDaVL_BC_COFINS: TIBBCDField;
    tblSaDaALIQ_COFINS_PERC: TIBBCDField;
    tblSaDaOUTRO_VALOR: TIBBCDField;
    tblSaDaVBC_STRET: TIBBCDField;
    tblSaDaPST: TIBBCDField;
    tblSaDaVICMS_STRET: TIBBCDField;
    tblSaDaPRED_BCEFET: TIBBCDField;
    tblSaDaVBC_EFET: TIBBCDField;
    tblSaDaPICMS_EFET: TIBBCDField;
    tblSaDaVICMS_EFET: TIBBCDField;
    tblSaDaICMS_SUBSTITUTO: TIBBCDField;
    BtnSemTroca: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure AbrirDs;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
    procedure TotalNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Modelo2Change(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure NotaFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoFornecedorExit(Sender: TObject);
    procedure TotalProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoCompradorExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SerieNFExit(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure GeraNF;
    procedure CFOP;
    procedure BtnTerceiroClick(Sender: TObject);
    procedure PrecoVendaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnSemTrocaClick(Sender: TObject);
  private
    { Private declarations }
     NumeroProdutosDigitados : integer; {quantidade de produtos digitados}
     NumeroNfsDigitadas : integer; {quantidade de notas digitadas}
     QtdeNfsLote : integer;   {quantidade de notas no lote}
     QtdeProdutosLote : integer; {quantidade de produtos na NF}
     IdModeloVeiculo : Integer;
  public
    Terceiro : Boolean;
    Dados_ad01 : String;
    Dados_ad02 : String;
    Dados_ad03 : String;
    Dados_ad04 : String;
    CFOP1 : String;
    CFOP2 : String;
    DescricaoCodigoFiscal : String;
     NFGerada : Boolean;
     idNumeroNotaFiscal : Integer;
     IDNofisa : Integer;
     Total : Currency;
     ArqSalvar : integer;
     id_conhecimento : integer; {sequencia do conhecimento}
     idnofi : integer;
     idTransportadora : Integer;
     idConhecimento : Integer; {numero do conhecimento}
     idComprador : Integer;
     TotalProd : Integer;
     TotalMercadorias : Integer;
     procedure EnableDisableButtonsInicio (); {Value: Boolean);}
     procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
     procedure EnableDisableCampos (Value: Boolean);
     procedure EnableDisableControls(Value: Boolean);
    end;

var
  BoxComprasUsados: TBoxComprasUsados;
  TipoEntrada : Integer;
  Retorno : String;
  Estado : String;
//  mCusto : Extended;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasNovos, OperacoesComprasPecas, ReemiteNFs, efuncoes;

{$R *.dfm}

procedure TBoxComprasUsados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasUsados := nil;
end;

procedure TBoxComprasUsados.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if (DataSourceNofisa.State in [dsEdit, DsInsert]) or (DataSourceSada.State in [dsEdit, DsInsert])then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes:
     begin
      BtnCancelar.Click; 
      CanClose := True;
     end;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxComprasUsados.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComprasUsados.FormShow(Sender: TObject);
var
 i : integer;
begin
  EnableDisableControls(True);
  EnableDisableButtonsInicio();
  NumeroProdutosDigitados := 0; {quantidade de produtos digitados}
  NumeroNfsDigitadas :=0; {quantidade de notas digitadas}
  QtdeNfsLote :=0;   {quantidade de notas no lote}
  QtdeProdutosLote :=0; {quantidade de produtos na NF}
  AbrirDs;
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
  with tblModelos do
  begin
    Close;
    open;
    first;
    tblAux.Close;
    tblAux.Open;
    tblAux.EmptyDataSet;
    while not eof do
     begin
       if not ( tblAux.Locate( 'Modelo', tblModelos.fieldbyname( 'Modelo' ).asString , [] ) ) then

       with tblAux do
        begin
         //so coloca na tabela se ainda não estiver modelo
          insert;
          FieldByName('Modelo').AsString := tblmodelos.FieldByName('Modelo').AsString;
          FieldByName('idModelo').AsInteger := tblModelos.FieldByName('Id_modveic').AsInteger;
          FieldByName('Marca').AsString := tblModelos.FieldByName('Marca').AsString;
          FieldByName('Combustivel').AsString := tblModelos.FieldByName('Combustivel').AsString;
          FieldByName('cst').AsString := tblModelos.FieldByName('cst').AsString;
          FieldByName('cilindradas').AsInteger := tblModelos.FieldByName('cilindradas').AsInteger;
          FieldByName('Hp').AsString := tblModelos.FieldByName('hp').AsString;

          Post;
        end;
       tblModelos.next;
     end;
  end;

end;

procedure TBoxComprasUsados.NotaFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
    begin
    if True then
      Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    end;
end;

procedure TBoxComprasUsados.PrecoVendaExit(Sender: TObject);
begin
  if (tblSada.FieldByName('Preco').AsFloat <> 0) and
     (tblSada.FieldByName('Preco').AsFloat < tblSada.FieldByName('Custo').AsFloat + 300)then
   begin
     Showmessage('Preço de venda inválido.');
     PrecoVenda.SetFocus;
   end;
end;

procedure TBoxComprasUsados.CodigoCompradorExit(Sender: TObject);
var
 idComprador : Integer;
begin
if CodigoComprador.Text = '' then
   CodigoComprador.Text := '0';
idComprador := StrToInt(CodigoComprador.Text);
if StrtoInt(CodigoComprador.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoComprador.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idComprador<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idComprador;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoComprador.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                CodigoFornecedor.SetFocus;
               end;
             NomeComprador.Text := FieldbyName('Nome').Text;
            end;
          Close;
         end;
      end;
  end;
end;

procedure TBoxComprasUsados.CodigoFornecedorExit(Sender: TObject);
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
             Estado := FieldByName('Estado').AsString;
            end;
          Close;
         end;
      end;
  end;
end;

procedure TBoxComprasUsados.ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar := 1;
    BtnConfirma.Enabled := True;
    BtnConfirma.Setfocus;
  end;
end;

procedure TBoxComprasUsados.TotalNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar:=2;
    BtnConfirma.Enabled := True;
    BtnConfirma.SetFocus;
  end;
end;

procedure TBoxComprasUsados.TotalProdutosKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComprasUsados.BtnConfirmaClick(Sender: TObject);
begin
   if (Status.Text = '') or (Placa.Text = '') or (anofabricacao.Text = '') or (anomodelo.Text = '') then
     Showmessage('Faltou preencher a placa, o ano ou o estoque.')
   else
   case MessageDlg('Confirma geração da NF de compra de veículo usado?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes:
       begin
         Terceiro := False;
         GeraNF;
         BtnConfirma.Enabled := False;
         BtnImprimir.Enabled := True;
       end;
     end;
end;

procedure TBoxComprasUsados.BtnTerceiroClick(Sender: TObject);
begin
   if (Status.Text = '') or (Placa.Text = '') or (anofabricacao.Text = '') or (anomodelo.Text = '') then
     Showmessage('Faltou preencher a placa, o ano ou o estoque.')
   else
   case MessageDlg('Confirma geração da NF de veículo de terceiro?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes:
       begin
         Terceiro := True;
         GeraNF;
         BtnConfirma.Enabled := False;
         BtnImprimir.Enabled := True;
       end;
     end;

end;

procedure TBoxComprasUsados.BtnImprimirClick(Sender: TObject);
begin
if NFGerada then
 begin
  if BoxReemiteNFs.EmitirNotaFiscal(IntToStr(IdNumeroNotaFiscal)) then
   begin
    BoxReemiteNFs.EmiteNF;
    NFGerada := False
   end
 end
else
 showmessage('Primeiro gere a NF');
end;

procedure TBoxComprasUsados.BtnSemTrocaClick(Sender: TObject);
begin
   BtnConfirma.Enabled := True;
   BtnConfirma.Setfocus;
end;

procedure TBoxComprasUsados.GeraNF;
var
  matriz: array[1..5] of String;
  i : Integer;
  mcusto : Extended;
begin
  with tblVeiculos1 do
  begin
    Close;
    ParamByName('idChassi').AsString := Chassi.Text;
    Open;
    if tblVeiculos1.RecordCount <> 0 then
      showmessage('Veículo já cadastrado. Geração cancelada.')
    else
     begin
       NFGerada := True;
        {Pega um sequence novo para a NF}
        IBQuery1.Open;
        IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
        IBQuery1.Close;
        {Pegar número da NF}
       with tblSerieNF do
        begin
           idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
           Edit;
           FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
           Post;
           Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
        end;
        idTransportadora := 1;
        with tblNofisa do
         begin
           Fdb1.AtualizaDataAtual;
           FieldByName('id_nofisa').AsInteger := IdNofisa;
           FieldByName('Id_Concessionaria').AsInteger :=
             StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Id_Clientes').AsInteger :=
             StrToInt(CodigoFornecedor.Text);
           FieldByName('Vendedor').AsInteger :=
             StrToInt(CodigoComprador.Text);
           FieldByName('SerieNF').AsString := SerieNF.Text;
           FieldByname('Status').AsString := 'Processado';
           FieldByName('Ent_sai').AsString := 'E';
           FieldByName('Origem').AsString := 'U';
           FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
           FieldByName('Emissao').AsDateTime := DataAtual;
           FieldByName('Frete_tipo').AsString := '1';
           if terceiro then
             begin
               FieldBYName('Tot_prod').AsCurrency := tblsada.FieldByName('Custo').AsCurrency;
               FieldByName('Tot_Nota').AsCurrency := tblSada.FieldByName('Custo').AsCurrency;
             end
           else
            begin
             if BoxEmpresas.FIPE then
              begin
               FieldBYName('Tot_prod').AsCurrency := tblCreceber.FieldByName('FIPE').AsCurrency;//tblsada.FieldByName('Custo').AsCurrency;
               FieldByName('Tot_Nota').AsCurrency := tblCreceber.FieldByName('FIPE').AsCurrency;//tblSada.FieldByName('Custo').AsCurrency;
              end
             else
              begin
               FieldBYName('Tot_prod').AsCurrency := tblsada.FieldByName('Custo').AsCurrency;
               FieldByName('Tot_Nota').AsCurrency := tblSada.FieldByName('Custo').AsCurrency;

//               FieldBYName('Tot_prod').AsCurrency := tblsada.FieldByName('Custo').AsCurrency;
  //             FieldByName('Tot_Nota').AsCurrency := tblSada.FieldByName('Custo').AsCurrency;
              end;
            end;
           FieldByName('Base_ICMS').AsInteger := 0;
           FieldByName('Val_ICMS').AsInteger := 0;
           FieldByName('Qtde_Prod').AsString := '1';
           CFOP;
           FieldByName('Dados_Ad01').AsString := Dados_ad01;
           FieldByName('Dados_Ad02').AsString := Dados_ad02;
           FieldByName('Dados_Ad03').AsString := Dados_ad03;
           FieldByName('Dados_Ad04').AsString := Dados_ad04;
           if Estado = 'RS' then
             FieldByName('Codigo_Fiscal').AsString := CFOP1
           else
             FieldByName('Codigo_fiscal').AsString := CFOP2;
           FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
           Post;
         end;
        with tblVeiculos do
         begin
            Insert;
            FieldByName('Id_Concessionaria').AsInteger :=
              StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
            if Terceiro then
              FieldByName('Status').AsString := 'TERCEIRO'
            else
              FieldByName('Status').AsString := Status.Text;
            FieldByName('Id_Fornecedor').AsInteger := StrToInt(CodigoFornecedor.Text);
            FieldByName('Id_Comprador').AsInteger := StrToInt(CodigoComprador.Text);
            FieldByName('CHASSI').AsString := Chassi.Text;
            FieldByName('MARCA').AsString := MarcaUsados.Text;
            FieldByName('MODELO').AsString := Modelo.Text;
            FieldByName('COR').AsString := Cor.Text;
            FieldByName('COMBUSTIVEL').AsString := Combustivel.Text;
            FieldByName('ANO_MODELO').AsString := AnoModelo.Text;
            FieldByName('ANO_FABRICACAO').AsString := AnoFabricacao.Text;
            FieldByName('HP').AsString := Potencia.Text;
            FieldByName('PLACA').AsString := Placa.Text;
            FieldByName('RENAVAM').AsString := Renavam.Text;
            FieldByName('NOTA_ENT').AsInteger := idNumeroNotaFiscal;
            FieldByName('DATA_ENT').AsDateTime :=
              tblNofisa.FieldByName('Emissao').AsDateTime;
            FieldByName('CUSTO').AsCurrency := tblsada.FieldByName('Custo').AsCurrency;
            FieldByName('CUSTO_ICMS').AsCurrency := tblsada.FieldByName('Custo').AsCurrency;
            FieldByName('PRECO').AsCurrency := tblsada.FieldByName('Preco').AsCurrency;
            FieldByName('Id_Modelo_Veiculo').AsInteger := IdModeloVeiculo;
            if Terceiro then
              FieldByName('CST').AsString := '040'
            else
              FieldByName('CST').AsString := '020';
            FieldByName('Origem').AsString := 'U';
            FieldByName('Estoque').AsString  := Status.Text;
            FieldByName('Venda').AsString := 'N';
            if Terceiro then
              FieldByName('Consig').AsString := 'S'
            else
              FieldByName('Consig').AsString := 'N';
            Post;
         end;
        with tblSada do
         begin
            FieldByName('id_nofisa').AsInteger := IdNofisa;
            FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
            FieldByName('CFOP').Value :=
              tblNofisa.FieldByName('Codigo_Fiscal').Value;
            FieldByName('Id_Concessionaria').AsInteger :=
              StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
            FieldByName('Qtde').AsString := '1';
            FieldByName('Unidade').AsString := 'UN';
            FieldByname('Descricao').AsString := 'Motocicleta';
            mCusto := fieldByName('Custo').asCurrency;
            if Terceiro then
                FieldByName('CST').AsString := '040'
            else
              begin
                FieldByName('CST').AsString := '051';
                fieldByName('Custo').asCurrency := tblNofisa.FieldByName('Tot_Nota').AsCurrency;//tblCreceber.FieldByName('FIPE').AsCurrency;
              end;
            FieldByName('Preco').AsCurrency := FieldByName('Custo').AsCurrency;
            Post;
         end;
       //Lançar pgto da motocicleta e baixa da pendencia de pedido
   {Alterar Contas a receber}
    With tblCreceber do
     begin
       Edit;
       FieldByName('Status').AsString := 'Recebido';
       FieldByName('Valor_Pago').AsCurrency := mCusto;//tblSada.FieldByName('Custo').AsCurrency;
       FieldByName('Pagamento').AsDateTime := DataAtual;
       Post;
     end;
  {Alterar pedido de veículos}
    With tblPedidoVeiculosRecebimento do
     begin
        Close;
        ParamByName('id').AsInteger :=
          tblCreceber.FieldByName('id_CReceber').AsInteger;
        Open;
        Edit;
        FieldByName('Cx_bc').AsString := 'Caixa';
        FieldByName('Data_recebimento').AsDateTime :=
          tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor_recebido').AsCurrency :=
          tblCreceber.FieldByName('Valor_Pago').AsCurrency;
        Post;
     end;
  {Gravar caixa - reg.novo}
     matriz[1] := 'Documento';
     matriz[2] := 'Historico';
     matriz[3] := 'Id_concessionaria';
     matriz[4] := 'Id_clientes';
     matriz[5] := 'Origem';
        With tblCaixa do
          begin
           Open;
           Insert;
           FieldByName('Natureza').AsString := 'E';
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Data_recebimento').AsDateTime :=
             tblCreceber.FieldByName('Pagamento').AsDateTime; ;
           for I := 1 to 5 do
             begin
              FieldByName(matriz[i]).AsString :=
                tblCreceber.FieldByName(matriz[i]).AsString;
             end;
           FieldByName('Valor').AsCurrency := tblCreceber.FieldByName('valor_pago').AsCurrency;//tblSada.FieldByName('Custo').AsCurrency;
//             tblCreceber.FieldByName('Valor_Pago').AsCurrency;
           FieldByName('Status').AsString := 'Processado';
           FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
          //Pgto da moto
           Insert;
           FieldByName('Natureza').AsString := 'S';
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Data_recebimento').AsDateTime :=
             tblCreceber.FieldByName('Pagamento').AsDateTime; ;
           for I := 1 to 5 do
             begin
              FieldByName(matriz[i]).AsString :=
                tblCreceber.FieldByName(matriz[i]).AsString;
             end;
           FieldByName('Origem').Asstring := 'U';
           FieldByName('Documento').Asstring := tblNofisa.FieldByName('Numero').AsString;
           FieldByName('Historico').Asstring := Substr('Pgto NF ' + tblNofisa.FieldBYname('Numero').AsString + '-' +
             NomeFornecedor.text,1,60);
           FieldByName('Valor').AsCurrency := tblCreceber.FieldByName('valor_pago').AsCurrency;//tblSada.FieldByName('Custo').AsCurrency;
 //            tblCreceber.FieldByName('Valor_Pago').AsCurrency;
           FieldByName('Status').AsString := 'Processado';
           FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
           Close;
          end;
          //lcto da diferença entre NF e FIPE
        With tblCaixa do
          begin
           Open;
           Insert;
           FieldByName('Natureza').AsString := 'E';
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Data_recebimento').AsDateTime :=
             tblCreceber.FieldByName('Pagamento').AsDateTime; ;
           for I := 1 to 5 do
             begin
              FieldByName(matriz[i]).AsString :=
                tblCreceber.FieldByName(matriz[i]).AsString;
             end;
           FieldByName('Valor').AsCurrency := tblSada.FieldByName('Custo').AsCurrency-tblCreceber.FieldByName('valor_pago').AsCurrency;
//             tblCreceber.FieldByName('Valor_Pago').AsCurrency;
           FieldByName('Status').AsString := 'Processado';
           FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
          //Pgto da moto
           Insert;
           FieldByName('Natureza').AsString := 'S';
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Data_recebimento').AsDateTime :=
             tblCreceber.FieldByName('Pagamento').AsDateTime; ;
           for I := 1 to 5 do
             begin
              FieldByName(matriz[i]).AsString :=
                tblCreceber.FieldByName(matriz[i]).AsString;
             end;
           FieldByName('Origem').Asstring := 'U';
           FieldByName('Documento').Asstring := tblNofisa.FieldByName('Numero').AsString;
           FieldByName('Historico').Asstring := Substr('Pgto NF ' + tblNofisa.FieldBYname('Numero').AsString + '-' +
             NomeFornecedor.text,1,60);
           FieldByName('Valor').AsCurrency := tblSada.FieldByName('Custo').AsCurrency-tblCreceber.FieldByName('valor_pago').AsCurrency;
 //            tblCreceber.FieldByName('Valor_Pago').AsCurrency;
           FieldByName('Status').AsString := 'Processado';
           FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
           Close;
          end;
      end;
  end;
end;

procedure TBoxComprasUsados.CFOP;
begin
   if terceiro then
    begin
     IBQuery3.Close;
     IBQuery3.Open;
     Cfop1 := IBQuery3.FieldByName('CFOP1').AsString;
     Cfop2 := IBQuery3.FieldByName('CFOP2').AsString;
     DescricaoCodigoFiscal := IBQuery3.FieldByName('DESCRICAO').AsString;
     Dados_ad01 := IBQuery3.FieldByName('Dados_ad01').AsString;
     Dados_ad02 := IBQuery3.FieldByName('Dados_ad02').AsString;
     Dados_ad03 := IBQuery3.FieldByName('Dados_ad03').AsString;
     Dados_ad04 := IBQuery3.FieldByName('Dados_ad04').AsString;
    end
   else
    begin
     IBQuery2.Close;
     IBQuery2.Open;
     Cfop1 := IBQuery2.FieldByName('CFOP1').AsString;
     Cfop2 := IBQuery2.FieldByName('CFOP2').AsString;
     DescricaoCodigoFiscal := IBQuery2.FieldByName('DESCRICAO').AsString;
     Dados_ad01 := IBQuery2.FieldByName('Dados_ad01').AsString;
     Dados_ad02 := IBQuery2.FieldByName('Dados_ad02').AsString;
     Dados_ad03 := IBQuery2.FieldByName('Dados_ad03').AsString;
     Dados_ad04 := IBQuery2.FieldByName('Dados_ad04').AsString;
    end;
end;

procedure TBoxComprasUsados.Modelo2Change(Sender: TObject);
var
i : integer;
begin
//   Renavam.SetFocus;
   if not (DataSourceNofiSa.State in [dsinsert]) then
     DataSourceNofiSa.DataSet.Insert;
   if not (DataSourceSada.State in [dsinsert]) then
     DataSourceSada.DataSet.Insert;
   DataSourceSaDa.Dataset.FieldByName('Combustivel').AsString := tblAux.FieldByName('Combustivel').AsString;
   //  DataSourceModelosVeiculos.Dataset.FieldByName('Combustivel').AsString;
   DataSourceSada.Dataset.FieldByName('CST').AsString := tblAux.FieldByName('CST').AsString;
//     DataSourceModelosVeiculos.Dataset.FieldByName('CST').AsString;
   DataSourceSaDa.Dataset.FieldByName('MARCA').AsString := tblAux.FieldByName('Marca').AsString;
//     DataSourceModelosVeiculos.DataSet.FieldByName('MARCA').AsString;
   DataSourceSaDa.Dataset.FieldByName('MODELO').AsString := tblAux.FieldByName('Modelo').AsString;
//     DataSourceModelosVeiculos.DataSet.FieldByName('MODELO').AsString;
   DataSourceSaDa.Dataset.FieldByName('POTENCIA').AsString := tblAux.FieldByName('HP').AsString;
//     DataSourceModelosVeiculos.DataSet.FieldByName('HP').AsString;
   DataSourceSaDa.Dataset.FieldByName('RENAVAM').AsString := '           ';
  //   DataSourceModelosVeiculos.DataSet.FieldByName('RENAVAM').AsString;
   DataSourceSaDa.Dataset.FieldByName('Cilindradas').AsString := IntToStr(tblAux.FieldByName('Cilindradas').AsInteger);
//     DataSourceModelosVeiculos.DataSet.FieldByName('Cilindradas').AsString;
   IdModeloVeiculo := tblAux.FieldByName('idModelo').AsInteger;
   //DataSourceModelosVeiculos.DataSet.FieldByName('Id_modVeic').AsInteger;
   i:=1;
   DataSourceSerienf.DataSet.Close;
   tblserienf.ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   DataSourceSerienf.DataSet.Open;
   DataSourceSerienf.DataSet.first;
   SerieNF.Items.Clear;
   repeat
     SerieNF.Items.AddObject(DataSourceSerieNF.DataSet.FieldByName('SerieNF').AsString,
      Pointer(i));
     i:= i + 1;
     DataSourceSerienf.DataSet.next;
   until DataSourceSerienf.DataSet.Eof;
   SerieNF.ItemIndex := 0;
end;

procedure TBoxComprasUsados.SerieNFExit(Sender: TObject);
begin
   EnableDisableButtons(True, False);
   with tblSerieNF do
    begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where SerieNF = :idSerie and ID_Concessionaria = :id';
       ParamByName('idSerie').AsString := SerieNF.Text;
       ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
    end;
    BitBtn1.SetFocus;
end;

procedure TBoxComprasUsados.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Vendedor-comprador','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoComprador.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeComprador.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoComprador.SetFocus;
end;

procedure TBoxComprasUsados.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Cliente-fornecedor','Clientes',
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

procedure TBoxComprasUsados.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasUsados.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasUsados.EnableDisableButtonsInicio();{Value: Boolean);}
begin
  { Habilita/desabilita os botões }
  IF (FDB1.IBDataSetLoginADM.AsString = 'T') then
    BtnSemTroca.Enabled := True;
  BtnConfirma.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnImprimir.Enabled := False;
  CodigoFornecedor.Setfocus;
end;

procedure TBoxComprasUsados.BitBtn1Click(Sender: TObject);
begin
   with tblcreceber do
    begin
      Close;
      ParamByName('Custo').AsCurrency := tblSada.FieldByName('Custo').AsCurrency;
//      ParamByName('id_Clientes').AsInteger := StrToInt(CodigoFornecedor.Text);
      Open;
      if RecordCount > 0 then
       begin
        BtnConfirma.Enabled := True;
        BtnConfirma.SetFocus;
       end
      else
        BtnConfirma.Enabled := False;
    end;
end;

procedure TBoxComprasUsados.BtnCancelarClick(Sender: TObject);
begin
  EnableDisableButtonsInicio();
  FDb1.IBTransaction.RollbackRetaining;
  BtnCancelar.Enabled := False;
end;

procedure TBoxComprasUsados.EnableDisableButtons(Value: Boolean; Value1 : Boolean);
begin
  { Habilita/desabilita os botões }
  BtnCancelar.Enabled := Value1;
end;

procedure TBoxComprasUsados.EnableDisableCampos(Value: Boolean);
begin
   CodigoFornecedor.Enabled  := False;
   NomeFornecedor.Enabled := False;
end;

procedure TBoxComprasUsados.EnableDisableControls(Value: Boolean);
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
  NomeFornecedor.Enabled := False;
end;

procedure TBoxComprasUsados.FecharDs;
begin
    DataSourceNofisa.Dataset.Close;
    DataSourceSada.Dataset.Close;
    DataSourceModelosVeiculos.Dataset.Close;
    DataSourcePessoas.DataSet.Close;
    DataSourceStatus.DataSet.Close;
    DataSourceSerieNF.Dataset.Close;
    DataSourceVeiculos.DataSet.Close;
end;

procedure TBoxComprasUsados.AbrirDs;
begin
    DataSourceNofisa.Dataset.Open;
    DataSourceSada.Dataset.Open;
    DataSourceModelosVeiculos.Dataset.Open;
    DataSourceVeiculos.DataSet.Open;
    DataSourcePessoas.DataSet.Open;
    DataSourceStatus.DataSet.Open;
    DataSourceSerieNF.Dataset.Open;
end;

end.
