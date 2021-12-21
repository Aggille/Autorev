unit OperacoesVendasVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ComCtrls, IBCustomDataSet,
  ToolWin, JvMaskEdit, Mask, JvExMask, JvToolEdit, JvDBControls, ExtCtrls,
  JvExDBGrids, JvDBGrid, IBQuery, DBCtrls, JvDBLookup, JvDBLookupComboEdit,
  frxClass, frxDBSet, JvErrorIndicator, JvValidators, JvComponentBase, dateUtils;

type
  TBoxVendasVeiculos = class(TForm)
    DataSourceVeiculos: TDataSource;
    StatusBar1: TStatusBar;
    tblVeiculos: TIBDataSet;
    tblPessoas: TIBDataSet;
    DataSourceClientes: TDataSource;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnAcessorios: TBitBtn;
    BtnConclui: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    Label10: TLabel;
    Marca: TJvDBMaskEdit;
    Modelo: TJvDBMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    AnoFabricacao: TJvDBMaskEdit;
    DataSourcePedidoVeiculos: TDataSource;
    DataSourcePedidoVeiculosAcessorios: TDataSource;
    Label3: TLabel;
    AnoModelo: TJvDBMaskEdit;
    tblVeiculosAcessorios: TIBDataSet;
    DataSourceVeiculosAcessorios: TDataSource;
    tblVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblVeiculosAcessoriosVALOR: TIBBCDField;
    tblVeiculosAcessoriosMODELO: TIBStringField;
    tblVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField;
    IBQuery1: TIBQuery;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
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
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    BtnConfirmaAcessorio: TBitBtn;
    tblPedidoVeiculosAcessorios: TIBDataSet;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Acessorios: TDBLookupComboBox;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField;
    tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField;
    tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField;
    tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField;
    BtnExcluiAcessorio: TBitBtn;
    BtnNovoAcessorio: TBitBtn;
    Bevel1: TBevel;
    BtnConcluiAcessorio: TBitBtn;
    Label6: TLabel;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    NomeVendedor: TJvDBMaskEdit;
    BtnCancelar: TBitBtn;
    BtnEdita: TBitBtn;
    SpeedButton4: TSpeedButton;
    Bevel2: TBevel;
    Label11: TLabel;
    FormaPagamento: TDBLookupComboBox;
    BtnNovoPagamento: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExcluiPagamento: TBitBtn;
    BtnConcluiPagamento: TBitBtn;
    DBGrid2: TDBGrid;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    DataSourceFormaPagamentos: TDataSource;
    tblFormasPagamento: TIBDataSet;
    ValorDevido: TJvDBMaskEdit;
    Label12: TLabel;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    BtnFormaPagamento: TBitBtn;
    Vencimento: TJvDBDateEdit;
    tblFormasPagamentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasPagamentoFORMA_PAGAMENTO: TIBStringField;
    tblFormasPagamentoCOEFICIENTE: TFMTBCDField;
    tblFormasPagamentoPRAZO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    tblVeiculosESTOQUE: TIBStringField;
    IBQuery4: TIBQuery;
    Label14: TLabel;
    SpeedButton5: TSpeedButton;
    Label15: TLabel;
    NomeAvalista: TJvDBMaskEdit;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    Label16: TLabel;
    tblFormasPagamentoVEICULOS: TIBStringField;
    tblFormasPagamentoPECAS: TIBStringField;
    tblFormasPagamentoPOSVENDA: TIBStringField;
    tblFormasPagamentoCRECEBER: TIBStringField;
    tblFormasPagamentoCPAGAR: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
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
    tblModelosCST: TIBStringField;
    DataSourceModelosVeiculos: TDataSource;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblModelosVEICULO_NOVO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    Label17: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    BtnAutoriza: TBitBtn;
    tblAutorizacao: TIBDataSet;
    DataSourceAutorizacao: TDataSource;
    tblAutorizacaoID_AUTORIZACAO: TIntegerField;
    tblAutorizacaoID_VENDA: TIntegerField;
    tblAutorizacaoUSUARIO: TIBStringField;
    tblAutorizacaoDATA: TDateField;
    tblAutorizacaoORIGEM: TIBStringField;
    DataSource1: TDataSource;
    tblPendencias: TIBDataSet;
    DataSourcePendencias: TDataSource;
    tblPendenciasID_PENDENCIAS: TIntegerField;
    tblPendenciasSETOR: TIBStringField;
    tblPendenciasID: TIntegerField;
    tblModelosHP: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblRelPedidoveiculos: TfrxDBDataset;
    tblRelPedidoVeiculosAcessorios: TfrxDBDataset;
    tblRelPedidoVeiculosRecebimento: TfrxDBDataset;
    tblRelPessoas: TfrxDBDataset;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPedidoVeiculosID_USUARIO: TIntegerField;
    BtnImprimir: TBitBtn;
    tblRelConcessionaria: TfrxDBDataset;
    tblPedidoVeiculosUSUARIO: TIBStringField;
    frxReport1: TfrxReport;
    Label19: TLabel;
    SpeedButton6: TSpeedButton;
    Label20: TLabel;
    NomeFinanceira: TJvDBMaskEdit;
    Label21: TLabel;
    Cor: TJvDBMaskEdit;
    tblPedidoVeiculosCOR: TIBStringField;
    Validador: TJvValidators;
    Sumario: TJvValidationSummary;
    JvErrorIndicator1: TJvErrorIndicator;
    CodigoCliente: TJvDBMaskEdit;
    Pedido: TJvDBMaskEdit;
    CodigoAvalista: TJvDBMaskEdit;
    CodigoVendedor: TJvDBMaskEdit;
    ChassiVeiculo: TJvDBMaskEdit;
    CodigoFinanceira: TJvDBMaskEdit;
    JvCodigoCliente: TJvCustomValidator;
    JvCodigoVendedor: TJvCustomValidator;
    JvChassiVeiculo: TJvCustomValidator;
    BtnSalvar: TBitBtn;
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosVALOR_VIP: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField;
    tblPedidoVeiculosVALOR_VIP2: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField;
    tblModelosANO_FABRICACAO: TIBStringField;
    tblModelosANO_MODELO: TIBStringField;
    tblModelosPRECO_VIP: TIBBCDField;
    tblModelosPRECO_NORMAL: TIBBCDField;
    tblModelosPRECO_EXCLUSIVO2: TIBBCDField;
    tblModelosPRECO_NORMAL2: TIBBCDField;
    tblModelosPRECO_VIP2: TIBBCDField;
    BtnConsulta: TBitBtn;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULOS: TIntegerField;
    tblConcessionaria: TIBDataSet;
    tblConcessionariaID_CONCESSIONARIA: TIntegerField;
    tblConcessionariaEMPRESA: TIBStringField;
    tblConcessionariaENDERECO: TIBStringField;
    tblConcessionariaCIDADE: TIBStringField;
    tblConcessionariaESTADO: TIBStringField;
    tblConcessionariaCNPJ: TIBStringField;
    tblConcessionariaIE: TIBStringField;
    tblConcessionariaCONCESSION: TIBStringField;
    tblConcessionariaTELEFONE: TIBStringField;
    tblConcessionariaCOD_CONCES: TIBStringField;
    tblConcessionariaALIQUOTA_ISS: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    tblConcessionariaCODIGO_EMPRESA_JB: TIBStringField;
    tblConcessionariaIM: TIBStringField;
    tblConcessionariaCNAE: TIBStringField;
    tblConcessionariaFANTASIA: TIBStringField;
    tblConcessionariaCEP: TIBStringField;
    tblConcessionariaNUMERO: TIBStringField;
    tblConcessionariaCOMPLEMENTO: TIBStringField;
    tblConcessionariaCODIGO_MUNICIPIO: TIBStringField;
    tblConcessionariaBAIRRO: TIBStringField;
    tblConcessionariaHOST: TIBStringField;
    tblConcessionariaPORT: TIBStringField;
    tblConcessionariaPASS: TIBStringField;
    tblConcessionariaUSER: TIBStringField;
    tblConcessionariaCERTIFICADO: TIBStringField;
    tblConcessionariaLOGO: TIBStringField;
    DataSourceConcessionaria: TDataSource;
    tblPedidoVeiculosNOME: TIBStringField;
    tblPedidoVeiculosNOMEFINANCEIRA: TIBStringField;
    Label13: TLabel;
    ValorAcessorio: TJvDBMaskEdit;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    DBEdit2: TDBEdit;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    tblVeiculosNCM: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    Label25: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    TblFormaVisita: TIBDataSet;
    DataSourceFormaVisita: TDataSource;
    TblFormaVisitaID_FORMA_VISITA: TIntegerField;
    TblFormaVisitaDESCRICAO: TIBStringField;
    tblPedidoVeiculosFORMA_VISITA: TIBStringField;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tblVeiculosAfterPost(DataSet: TDataSet);
    procedure tblVeiculosAfterCancel(DataSet: TDataSet);
    procedure ChassiVeiculoExit(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnConfirmaAcessorioClick(Sender: TObject);
    procedure AcessoriosCloseUp(Sender: TObject);
    procedure BtnExcluiAcessorioClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConcluiAcessorioClick(Sender: TObject);
    procedure BtnNovoAcessorioClick(Sender: TObject);
    procedure BtnAcessoriosClick(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure tblPedidoVeiculosBeforeDelete(DataSet: TDataSet);
    procedure AcessoriosKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnEditaClick(Sender: TObject);
    procedure PedidoExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtnFormaPagamentoClick(Sender: TObject);
    procedure BtnNovoPagamentoClick(Sender: TObject);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure BtnConcluiPagamentoClick(Sender: TObject);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnExcluiPagamentoClick(Sender: TObject);
    procedure FormaPagamentoCloseUp(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ValorDevidoExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CodigoAvalistaExit(Sender: TObject);
    procedure BtnAutorizaClick(Sender: TObject);
    procedure SelecionaVeiculo;
    procedure CriarPedido(chassi: String; Cliente: String);
    procedure BtnImprimirClick(Sender: TObject);
    procedure tblPedidoVeiculosBeforePost(DataSet: TDataSet);
    procedure JvCodigoClienteValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvCodigoVendedorValidate(Sender: TObject;
      ValueToValidate: Variant; var Valid: Boolean);
    procedure JvChassiVeiculoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure CodigoFinanceiraExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure ValorAcessorioExit(Sender: TObject);
    procedure BtnAutoriza1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   idCliente : Integer;
   idAvalista : Integer;
   idPedido : integer;
   idVeiculos : Integer;
   idModeloVeiculo : Integer;
   idVendedor : Integer;
   idFinanceira : Integer;
   idPedidoVeiculos : Integer;
   VendedorYnova : Boolean;
   idAcessorios : Integer;
   Editar : Boolean;
   procedure Gravar;
   procedure EnableDisableButtons (Value: Boolean; ValueAcessorios : Boolean; ValuePagamento : Boolean);
   procedure EnableDisableControls (Value: Boolean);
   procedure AbrirDs; virtual;
   procedure CancelaVenda; virtual;
   procedure Edita; virtual;
   procedure Limpacampos; virtual;
   procedure pendencias;
   function ConfereChassi: boolean;
  end;

var
  Retorno : String;
  DescontoCliente : String;
  BoxVendasVeiculos: TBoxVendasVeiculos;

implementation

uses FDB, Empresas, Biblioteca, Menu;

{$R *.dfm}

procedure TBoxVendasVeiculos.FormaPagamentoCloseUp(Sender: TObject);
begin
    ValorDevido.SetFocus;
end;

procedure TBoxVendasVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FEcharDs;
   Action :=caFree;
   BoxVendasVeiculos := nil;
end;

procedure TBoxVendasVeiculos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  if Pedido.Text <> '' then
  if (DataSourcePedidoVeiculos.State in [DsEdit,dsInsert]) and
     (tblPedidoVeiculos.FieldByName('Id_Modelo_Veiculo').AsString <> '')then
      BtnSalvar.Click;
{   case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        CanClose :=  True; //MessageDlg('Cancela venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
//        CancelaVenda;
       end;
      mrNo :
       begin
        CanClose := False;
       end;
    end;}
end;

procedure TBoxVendasVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxVendasVeiculos.FormShow(Sender: TObject);
begin
   Editar := False;
   Pedido.Enabled := False;
   SpeedButton4.Enabled := False;
   EnableDisableButtons(True, False, False);
   EnableDisableControls(False);
   AbrirDs;
   BtnFormaPagamento.Enabled := False;
   BtnAcessorios.Enabled := False;
   BtnConclui.Enabled := False;
   BtnNovo.SetFocus;
//   tblPedidoVeiculos.SelectSQL.Add(' Where id_pedido_veiculos = :id');
end;

procedure TBoxVendasVeiculos.JvChassiVeiculoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
  valid := ( tblPedidoVeiculos.fieldbyname( 'Chassi' ).AsString <> '' )
end;

procedure TBoxVendasVeiculos.JvCodigoClienteValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
  valid := ( tblPedidoVeiculos.fieldbyname( 'id_Clientes' ).AsString <> '' )
end;

procedure TBoxVendasVeiculos.JvCodigoVendedorValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
  valid := ( tblPedidoVeiculos.fieldbyname( 'id_Vendedor' ).AsString <> '' )
end;

procedure TBoxVendasVeiculos.PedidoExit(Sender: TObject);
begin
if Pedido.Text = '' then
   Pedido.Text := '0';
idPedido := StrToInt(Pedido.Text);
if StrtoInt(pedido.Text) = 0 then
  begin
   SpeedButton4.Click;
   Pedido.SetFocus;
  end
else
  begin
    with tblPedidoVeiculos do
      begin
       if idPedido<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idPedido;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Pedido inexistente.');
             Pedido.SetFocus;
            end
          else
            begin
             if not Editar then
              begin
               with tblPessoas do
                begin
                  Close;
                  ParamByName('id').AsInteger := StrtoInt(CodigoVendedor.Text);
                  Open;
                  NomeVendedor.Text := tblPessoas.FieldByName('Nome').AsString;
                  Close;
                  ParamByName('id').AsInteger := StrtoInt(CodigoCliente.Text);
                  Open;
                  NomeCliente.Text := tblPessoas.FieldByName('Nome').AsString;
                end;
                NomeFinanceira.Text := tblPedidoVeiculos.FieldByName('NomeFinanceira').AsString;
                with tblPedidoVeiculosAcessorios do
                begin
                  Close;
                  ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
                  Open;
                end;
                with tblPedidoVeiculosRecebimento do
                begin
                  Close;
                  ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
                  Open;
                end;
               BtnImprimir.Setfocus;
              end
             else
              if (FDB1.IBDataSetLoginacesso63.AsString <> 'T') and
                 (FDB1.IBDataSetLoginADM.AsString <> 'T') and
                 (tblPedidoveiculos.FieldByName('id_Usuario').AsInteger <>
                  BoxEmpresas.DataSource1.dataset.FieldByName('id_usuarios').AsInteger) then
               begin
                  showmessage('Você não pode editar este pedido.');
                  Close;
               end
              else
               if FieldByName('Status').AsString = 'Faturado' then
                begin
                  showmessage('Este pedido está faturado.');// + #13 +
//                    'Se for editado necessitará de nova autorização.');
               //   case MessageDlg('Confirma Edição ?', mtConfirmation, [mbYes,mbNo], 0) of
               //      mrNo: Pedido.SetFocus;
               //   end
                  tblPedidoVeiculos.Edit;
                  Pedido.SetFocus;
                end
               else
                if FieldByName('Status').AsString = 'Fechado' then
                 begin
                  showmessage('Este pedido está fechado.');
                  Pedido.SetFocus;
                 end
                else
                if FieldByName('Status').AsString = 'Cancelado' then
                 begin
                  showmessage('Este pedido está cancelado.');
                  Pedido.SetFocus;
                 end
                else
                 begin
                  Edita;
                  CodigoCliente.SetFocus;
                 end;
            end;
         end;
      end;
  end;
end;

procedure TBoxVendasVeiculos.Edita;
begin
  case MessageDlg('Confirma edição?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with tblPedidoVeiculos do
           begin
            Edit;
            fieldByName('Status').AsString := 'Em edição';
            idPedidoVeiculos := StrToInt(Pedido.Text);
           end;
          with tblPedidoVeiculosAcessorios do
           begin
             Close;
             Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
             dbGrid1.Refresh;
             Open;
           end;
          with tblPedidoVeiculosRecebimento do
           begin
             Close;
             Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
             DbGrid2.Refresh;
             Open;
           end;
          EnableDisableButtons(True, False, False);
          EnableDisableControls(True);
          CodigoCliente.SetFocus;
       end;
  end;
  Pedido.Enabled := False;
  ChassiVeiculo.Enabled := False;
  SpeedButton4.Enabled := False;
  SpeedButton1.Enabled := False;
end;

procedure TBoxVendasVeiculos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Veículos','Veiculos',
      ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria'],
      ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
      'Descricao','Chassi',Fdb1.SQLConnection1,'Status <>','VENDIDO','');
     with tblVeiculos do
     begin
        Close;
        Parambyname('id').AsString := Retorno;
        Open;
        tblPedidoVeiculos.FieldByName('Chassi').AsString :=
          tblVeiculos.FieldByName('Chassi').AsString;
     end;
     ChassiVeiculo.SetFocus;
end;

procedure TBoxVendasVeiculos.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblPedidoVeiculos.FieldByName('Id_Clientes').AsString :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxVendasVeiculos.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblPedidoVeiculos.FieldByName('Id_Vendedor').AsString :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeVendedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoVendedor.SetFocus;
end;

procedure TBoxVendasVeiculos.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de veículos','Pedido_veiculos',
      ['Id_Pedido_veiculos','Modelo','Chassi','Id_Clientes','Status'],
      ['Sequência:','Modelo:','Chassi:','Cliente:','Status:'],
      'Chassi','Id_pedido_veiculos',Fdb1.SQLConnection1,'','','');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
     end;
     Pedido.SetFocus;
end;

procedure TBoxVendasVeiculos.SpeedButton5Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblPedidoVeiculos.FieldByName('Id_Avalista').AsString :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeAvalista.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoAvalista.SetFocus;
end;

procedure TBoxVendasVeiculos.SpeedButton6Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Financeira = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        tblPedidoVeiculos.FieldByName('Id_Financeira').AsString :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeFinanceira.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFinanceira.SetFocus;
end;

function TBoxVendasVeiculos.ConfereChassi : Boolean;
begin
   result := True;
   if tblveiculos.FieldbyName('Id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
      begin
        Showmessage('Veículo não pertence à esta concessionária');
        Result := False;
        ChassiVeiculo.SetFocus;
      end;
   if tblVeiculos.FieldByName('Status').AsString = 'VENDIDO' then
      Begin
         Showmessage('Veículo vendido.');
         Result := False;
         ChassiVeiculo.SetFocus;
      End;
   if tblVeiculos.FieldByName('Com_avaria').AsBoolean then
      Begin
         Showmessage('Veículo com avaria.');
         Result := False;
         ChassiVeiculo.SetFocus;
      End;
   if tblVeiculos.FieldByName('Status').AsString <> tblVeiculos.FieldByName('Estoque').AsString then
      begin
        Showmessage('Veículo não disponível para venda.'+
          #13+'Retorne ele primeiro');
        Result := False;
        ChassiVeiculo.SetFocus;
      end;
   Fdb1.AtualizaDataAtual;
   if tblVeiculos.FieldByName('Reservada').AsDateTime > DataAtual then
      begin
        if StrToInt(CodigoCliente.Text) <>
         tblveiculos.FieldByName('id_Clientes').AsInteger then
          begin
            Showmessage('Veículo reservado até: '+tblVeiculos.FieldByName('Reservada').AsString+
            #13+ 'para o cliente:'+ tblVeiculos.FieldByName('Id_Clientes').AsString);
            Result := False;
            CodigoCliente.SetFocus;
          end;
      end
   else
      begin
        Showmessage('Faça a reserva do veículo primeiro.');
        ChassiVeiculo.SetFocus;
      end;
end;

procedure TBoxVendasVeiculos.tblPedidoVeiculosBeforeDelete(DataSet: TDataSet);
var
  i : Integer;
begin
  with tblPedidoVeiculosAcessorios do
  begin
    Close;
    Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
    Open;
    Last;
    First;
    for i := 0 to RecordCount -1 do
      begin
        delete;
      end;
  end;
  with tblPedidoVeiculosRecebimento do
  begin
    Close;
    Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
    Open;
    Last;
    First;
    for i := 0 to RecordCount - 1 do
      begin
        delete;
      end;
  end;
end;

procedure TBoxVendasVeiculos.tblPedidoVeiculosBeforePost(DataSet: TDataSet);
var
mensagem:String;
x:Integer;
begin
//showmessage('vai gravar');
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

procedure TBoxVendasVeiculos.tblVeiculosAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxVendasVeiculos.tblVeiculosAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxVendasVeiculos.ValorAcessorioExit(Sender: TObject);
begin
   BtnConfirmaAcessorio.SetFocus;
end;

procedure TBoxVendasVeiculos.ValorDevidoExit(Sender: TObject);
begin
      if MonthsBetween(tblPedidoVeiculosRecebimento.fieldByName('vencimento').AsDateTime,DataAtual) > 2 then
        tblPedidoVeiculosRecebimento.FieldByName('Valor_Original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency /
          (1+(((tblFormasPagamento.FieldByName('Coeficiente').AsCurrency)-1) *
           (MonthsBetween(tblPedidoVeiculosRecebimento.fieldByName('vencimento').AsDateTime,DataAtual))))
       else
         tblPedidoVeiculosrecebimento.FieldByName('Valor_original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency;
end;

procedure TBoxVendasVeiculos.VencimentoExit(Sender: TObject);
begin
      if MonthsBetween(tblPedidoVeiculosRecebimento.fieldByName('vencimento').AsDateTime,DataAtual) > 2 then
        tblPedidoVeiculosRecebimento.FieldByName('Valor_Original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency /
          (1+(((tblFormasPagamento.FieldByName('Coeficiente').AsCurrency)-1) *
           (MonthsBetween(tblPedidoVeiculosRecebimento.fieldByName('vencimento').AsDateTime,DataAtual))))
       else
         tblPedidoVeiculosrecebimento.FieldByName('Valor_original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency;
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxVendasVeiculos.CodigoAvalistaExit(Sender: TObject);
begin
if CodigoAvalista.Text = '' then
   CodigoAvalista.Text := '0';
idAvalista := StrToInt(CodigoAvalista.Text);
if StrtoInt(CodigoAvalista.Text) = 0 then
  begin
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idAvalista<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idAvalista;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoAvalista.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoAvalista.SetFocus;
               end
              else
               begin
                NomeAvalista.Text := FieldbyName('Nome').Text;
                ChassiVeiculo.SetFocus;
               end;
            end;
         end
        else
         ChassiVeiculo.SetFocus;
      end;
  end;
end;

procedure TBoxVendasVeiculos.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end;
             if not ValidaCliente(tblPessoas) then
               CodigoCliente.SetFocus;
             NomeCliente.Text := FieldbyName('Nome').Text;
             DescontoCliente := FieldByName('Desconto').AsString;
//             CodigoAvalista.SetFocus;
            end;
         end;
      end;
  end;
end;

procedure TBoxVendasVeiculos.CodigoFinanceiraExit(Sender: TObject);
begin
if CodigoFinanceira.Text = '' then
   CodigoFinanceira.Text := '0';
idFinanceira := StrToInt(CodigoFinanceira.Text);
if StrtoInt(CodigoFinanceira.Text) = 0 then
  begin
   BtnSalvar.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFinanceira<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idFinanceira;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Financeira inexistente.');
             CodigoFinanceira.SetFocus;
            end
          else
            begin
             if not FieldByName('Financeira').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à uma financeira.');
                CodigoFinanceira.SetFocus;
               end;
            end;
            NomeFinanceira.Text := FieldbyName('Nome').Text;
            if Editar then
             BtnAcessorios.SetFocus
            else
             BtnSalvar.SetFocus; 
         end;
      end;
  end;
end;

procedure TBoxVendasVeiculos.CodigoVendedorExit(Sender: TObject);
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) = 0 then
  begin
   SpeedButton3.Click;
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idVendedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idVendedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoVendedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                Codigovendedor.SetFocus;
               end;
            end;
            NomeVendedor.Text := FieldbyName('Nome').Text;
            if FieldByName('Vendedor_Ynova').AsString = 'T' then
              VendedorYnova := True
            else
              VendedorYnova := False;  
         end;
      end;
  end;
  if Pedido.Text <> '' then  //Gravar Pedido de veiculos
    begin
      with tblPedidoVeiculos do
       begin
         FieldByName('Id_Vendedor').AsInteger := StrToInt(CodigoVendedor.Text);
      //   Post;
      //   Edit;
       end;
    end;
  if editar then
    begin
//     BtnAcessorios.SetFocus;
     EnableDisableControls(False);
     CodigoFinanceira.SetFocus;
    end;
end;

procedure TBoxVendasVeiculos.AcessoriosCloseUp(Sender: TObject);
begin
//   BtnConfirmaAcessorio.SetFocus;
    tblPedidoVeiculosAcessorios.FieldByName('Valor_Acessorio').AsCurrency :=
       tblVeiculosAcessorios.FieldByName('Valor').AsCurrency;
   ValorAcessorio.SetFocus;
end;

procedure TBoxVendasVeiculos.AcessoriosKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
     FecharDs;
     Close;
    end;
          {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    tblPedidoVeiculosAcessorios.FieldByName('Valor_Acessorio').AsCurrency :=
       tblVeiculosAcessorios.FieldByName('Valor').AsCurrency;

   // BtnConfirmaAcessorio.SetFocus;
    ValorAcessorio.SetFocus;
  end;
end;

procedure TBoxVendasVeiculos.BtnAcessoriosClick(Sender: TObject);
begin
  EnableDisableButtons(False, True, False);
  with tblVeiculosAcessorios do
  begin
    Close;
    ParamByName('idDescricaoAcessorio').AsString := Modelo.Text;
    Open;
  end;
   BtnNovoAcessorio.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnAutoriza1Click(Sender: TObject);
begin
  with tblPedidoVeiculos do
   begin
     Open;
     First;

     while not eof do
      begin
  IBQuery3.Close;
  IBQuery3.SQL.Clear;
  IBQuery3.Sql.Add('select sum(Pedido_veiculos_acessorios.valor_acessorio) as Valor');
  IBQuery3.SQL.Add('from Pedido_veiculos_acessorios');
  IBQuery3.SQL.Add('where Pedido_veiculos_acessorios.Id_Pedido_veiculos =');
  IBQuery3.Sql.Add(':idPedidoVeiculos');
  IBQuery3.Parambyname('idPedidoVeiculos').AsString := tblPedidoVeiculos.FieldByName('id_pedido_veiculos').AsString;
  IBQuery3.Open;

        Edit;
        CodigoCliente.Text := tblPedidoVeiculos.FieldByName('ID_Clientes').AsString;
        CodigoVendedor.Text := tblPedidoVeiculos.FieldByName('ID_Vendedor').AsString;
        ChassiVeiculo.Text := tblPedidoVeiculos.FieldByName('Chassi').AsString;

        FieldByName('Base_comissao').AsCurrency := FieldByName('Valor_a_receber').AsCurrency -
         IBQuery3.FieldByName('Valor').AsCurrency;
        Post;
        Next;
      end;
     Showmessage('dados gravados.');
   end;
end;

procedure TBoxVendasVeiculos.BtnAutorizaClick(Sender: TObject);
begin
  if tblPedidoveiculos.FieldByName('Status').AsString <> 'Pendente' then
    Showmessage('Este pedido não está pendente.')
  else
   case MessageDlg('Confirma autorização de faturamento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblPedidoVeiculos do
           begin
            Edit;
            FieldByName('Status').AsString := 'Aprovado';
            Post;
           end;
         with tblAutorizacao do
         begin
           Open;
           Edit;
           FieldByName('Id_venda').AsInteger :=
             tblPedidoVeiculos.FieldByName('id_Pedido_Veiculos').AsInteger;
           FieldByName('Usuario').AsString := DataSource1.DataSet.FieldByName('Login').AsString;
           FieldByName('Data').AsDateTime := DataAtual;
           FieldByName('Origem').AsString := 'Veículos';
           Post;
           Close;
         end;
         Showmessage('Faturamento autorizado');
      end;
   end;
end;

procedure TBoxVendasVeiculos.BtnEditaClick(Sender: TObject);
begin
  Editar := True;
//  EnableDisableButtons(False, False, False);
  Pedido.Enabled := True;
  SpeedButton4.Enabled := True;
//  EnableDisableControls(False);
  tblPedidoVeiculos.Edit;
  BtnConclui.Enabled := False;  
  Pedido.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnExcluiPagamentoClick(Sender: TObject);
begin
  case MessageDlg('Exclui forma de pagamento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblPedidoVeiculosRecebimento do
           begin
            Delete;
            Close;
            ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
            Open;
           end;
      end;
  end;
end;

procedure TBoxVendasVeiculos.BtnFormaPagamentoClick(Sender: TObject);
begin
  EnableDisableButtons(False, False, True);
  BtnNovoPagamento.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnImprimirClick(Sender: TObject);
var
 idPedido : Integer;
begin
  with tblPedidoVeiculos do
   begin
     idPedido := FieldByName('Id_pedido_veiculos').AsInteger;
     Close;
     ParamByName('id').AsInteger := idPedido;
     Open;
   end;
  with tblConcessionaria do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger := tblPedidoveiculos.FieldByName('id_Concessionaria').AsInteger;
     Open;
   end;
  with tblPessoas do
  begin
    Close;
    ParamByName('id').AsInteger := StrToInt(codigocliente.Text);
    Open;
  end;
  FrxReport1.ShowReport;
end;

procedure TBoxVendasVeiculos.BtnCancelarClick(Sender: TObject);
begin
  if (Pedido.Text <> '') then
   if (tblPedidoVeiculos.FieldByName('Status').AsString = 'Fechado') or
      (tblPedidoVeiculos.FieldByName('Status').AsString = 'Faturado')then
      showmessage('Cancelamento não autorizado.'+#13+'A nota fiscal já foi emitida.')
    else
     if tblPedidoVeiculos.FieldByName('Status').AsString = 'Cancelado' then
       showmessage('Pedido já encontra-se cancelado.')
     else
      if (tblPedidoVeiculos.FieldByName('Status').AsString = 'Aprovado') or
         (tblPedidoVeiculos.FieldByName('Status').AsString = 'Pendente') or
         (tblPedidoVeiculos.FieldByName('Status').AsString = 'Em edição') then
       begin
        case MessageDlg('Cancela venda?', mtConfirmation, [mbYes,mbNo], 0) of
         mrYes :  CancelaVenda;
        end;
       end
      else
       showmessage('Cancelamento não efetuado. Status indefinido');
end;

procedure TBoxVendasVeiculos.CancelaVenda;
begin
 try
  with tblVeiculos do
    begin
      Close;
      SelectSql.Clear;
      SelectSql.Add('Select * from veiculos where id_veiculos = :id');
      ParamByName('id').AsInteger := tblPedidoVeiculos.FieldByName('id_veiculos').AsInteger;
      Open;
      Edit;
      FieldByName('Status').AsString := FieldByName('Estoque').AsString;
      Post;
      Close;
      SelectSql.Clear;
      SelectSql.Add('Select * from veiculos where (Chassi = :id) and ');
      SelectSql.Add('(Status <> ' + '''' + 'VENDIDO' + '''' + ')');
      SelectSql.Add('and (Status <> ' + '''' + 'EM TRÂNSITO' + '''' + ')');
      Open;
    end;
  with tblPedidoVeiculos do
   begin
     Edit;
     FieldByName('Status').AsString := 'Cancelado';
     Post;
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

procedure TBoxVendasVeiculos.BtnConcluiPagamentoClick(Sender: TObject);
begin
  tblPedidoVeiculosRecebimento.Close;
  tblPedidoVeiculosRecebimento.ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
  tblPedidoVeiculosRecebimento.Open;
  EnableDisableButtons(True, False, False);
  BtnConclui.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnConfirmaPagamentoClick(Sender: TObject);
begin
if (INT(tblPedidoVeiculosRecebimento.fieldByName('Vencimento').AsDateTime) < INT(DataAtual)) then
  Showmessage('Data de vencimento inválida')
else
if (tblFormasPagamento.FieldByName('id_formas_Pagamento').AsInteger = 1) and
   (tblPedidoVeiculos.FieldByName('Id_Financeira').AsInteger = 0) then
  showmessage('Primeiro você precisa escolher um agente financeiro.')
else
  with tblPedidoVeiculosRecebimento do
    begin
      if MonthsBetween(fieldByName('vencimento').AsDateTime,DataAtual) > 2 then
        tblPedidoVeiculosRecebimento.FieldByName('Valor_Original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency /
          (1+(((tblFormasPagamento.FieldByName('Coeficiente').AsCurrency)-1) *
           (MonthsBetween(fieldByName('vencimento').AsDateTime,DataAtual))))
       else
         tblPedidoVeiculosrecebimento.FieldByName('Valor_original').AsCurrency :=
          tblPedidoVeiculosRecebimento.FieldByName('Valor_Devido').AsCurrency;
      FieldByName('Id_pedido_veiculos').AsInteger := idPedidoVeiculos;
      FieldByName('Id_formas_pagamento').AsInteger :=
         tblFormasPagamento.FieldByName('Id_Formas_Pagamento').AsInteger;
      FieldByName('id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Post;
      Close;
      ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
      Open;
    end;
    BtnNovoPagamento.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnConsultaClick(Sender: TObject);
begin
  Editar := False;
  Pedido.Enabled := True;
  SpeedButton4.Enabled := True;
  BtnConclui.Enabled := False;
  BtnImprimir.Enabled := True;
  Pedido.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnConcluiClick(Sender: TObject);
begin
 if (tblPedidoVeiculos.FieldByName('Status').AsString <> 'Em edição') and
    (tblPedidoVeiculos.FieldByName('Status').AsString <> 'Aprovado') and
    (tblPedidoVeiculos.FieldByName('Status').AsString <> 'Pendente') then
   Showmessage('Não há venda em edição.')
 else
 begin
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('select sum(Pedido_veiculos_recebimento.valor_original) as Valor');
  IBQuery2.SQL.Add('from Pedido_veiculos_recebimento');
  IBQuery2.SQL.Add('where Pedido_veiculos_recebimento.Id_Pedido_veiculos =');
  IBQuery2.Sql.Add(':idPedidoVeiculos');
  IBQuery2.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
  IBQuery2.Open;
  IBQuery3.Close;
  IBQuery3.SQL.Clear;
  IBQuery3.Sql.Add('select sum(Pedido_veiculos_acessorios.valor_acessorio) as Valor');
  IBQuery3.SQL.Add('from Pedido_veiculos_acessorios');
  IBQuery3.SQL.Add('where Pedido_veiculos_acessorios.Id_Pedido_veiculos =');
  IBQuery3.Sql.Add(':idPedidoVeiculos');
  IBQuery3.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
  IBQuery3.Open;
  with tblPedidoVeiculos do
  begin
    tblModelos.Close;
    tblModelos.ParamByName('idModeloVeiculo').AsInteger := FieldByName('id_Modelo_Veiculo').AsInteger;
    tblModelos.Open;
    if (tblveiculos.FieldByName('Origem').AsString = 'N') or
       (tblveiculos.FieldByName('Origem').AsString = 'M') then
        begin
         if VendedorYnova then
           tblPedidoVeiculos.FieldByName('Valor').Text :=
             tblModelos.FieldByName('Preco_exclusivo2').Text
         else
           tblPedidoVeiculos.FieldByName('Valor').Text :=
             tblModelos.FieldByName('Preco_Venda').Text;
        end;
    FieldByName('Valor_vip').AsCurrency := tblModelos.FieldByName('preco_vip').AsCurrency;
    FieldByName('Valor_vip2').AsCurrency := tblModelos.FieldByName('preco_vip2').AsCurrency;
    FieldByName('Valor_normal').AsCurrency := tblModelos.FieldByName('preco_normal').AsCurrency;
    FieldByName('Valor_normal2').AsCurrency := tblModelos.FieldByName('preco_normal2').AsCurrency;
    FieldByName('Valor_exclusivo').AsCurrency := tblModelos.FieldByName('Preco_Venda').AsCurrency;
    FieldByName('Valor_exclusivo2').AsCurrency := tblModelos.FieldByName('preco_exclusivo2').AsCurrency;
    FieldByName('Valor_a_receber').AsCurrency :=
      IBQuery2.FieldByName('Valor').AsCurrency;
    FieldByName('Valor_da_venda').AsCurrency :=
      IBQuery3.FieldByName('Valor').AsCurrency + FieldByName('valor').AsCurrency;
    FieldByName('Base_comissao').AsCurrency := FieldByName('Valor_a_receber').AsCurrency -
       IBQuery3.FieldByName('Valor').AsCurrency;
    if FieldByName('valor_a_receber').AsVariant <
     FieldByName('valor_da_venda').AsVariant then
      begin
       FieldByName('Status').AsString := 'Pendente';
      end
    else
     begin
      with tblPedidoVeiculosAcessorios do
       begin
        tblPedidoVeiculos.fieldByName('Status').AsString := 'Pendente';
        First;
        while not eof do
         begin
          if (FieldByName('Descricao_Acessorio').AsString = 'EMPLACAMENTO') or
             (FieldByName('Descricao_Acessorio').AsString = 'TRANSFERÊNCIA') then
              tblPedidoVeiculos.fieldByName('Status').AsString := 'Aprovado';
          Next;
         end;
       end;
     end;
     if FieldByName('Valor_a_receber').AsFloat = 0 then
       FieldByName('Status').AsString := 'Pendente';
      with tblPedidoVeiculosRecebimento do
       begin
         while not eof do
          begin
            if FieldByName('Vencimento').AsDateTime > DataAtual then
              if FDB1.ClienteComDebito(StrToInt(CodigoCliente.Text)) then
               begin
                Showmessage('Este cliente tem débitos em aberto.');
                tblPedidoVeiculos.FieldByName('Status').AsString := 'Pendente';
               end;
            Next;
          end;
       end;
//       FieldByName('Status').AsString := 'Aprovado';  //-->só deixar essa linha quando for viajar para aprovar direto.
    Post;
  end;
  if tblPedidoVeiculos.FieldByName('Status').AsString = 'Aprovado' then
     Showmessage('Venda aprovada. Emita o faturamento.');
  if tblPedidoVeiculos.FieldByName('Status').AsString = 'Pendente' then
     Showmessage('Faturamento pendente. Solicite autorização.');
  BtnNovo.SetFocus;
  BtnAcessorios.Enabled := False;
  BtnFormaPagamento.Enabled := False;
  Editar := False;
 end;
end;

procedure TBoxVendasVeiculos.LimpaCampos;
begin
  ChassiVeiculo.Text := '';
  CodigoVendedor.Text := '';
  NomeVendedor.Text := '';
  NomeCliente.Text := '';
  CodigoCliente.Text := '';
  Marca.Text := '';
  Modelo.Text := '';
  AnoFabricacao.Text := '';
  AnoModelo.Text := '';
end;

procedure TBoxVendasVeiculos.Pendencias;
begin
  with tblPendencias do
  begin
     Insert;
     FieldByName('id').AsInteger := IdPedidoVeiculos;
     FieldByName('Setor').AsString := 'VEICULOS';
     Post;
  end;
end;

procedure TBoxVendasVeiculos.BtnNovoClick(Sender: TObject);
begin
  FecharDs;
  AbrirDs;
  EnableDisableControls(True);
  tblPedidoVeiculos.Insert;
  tblPedidoveiculos.FieldByName('id_Usuario').AsInteger :=
    BoxEmpresas.DataSource1.dataset.FieldByName('id_usuarios').AsInteger;
  tblPedidoVeiculos.FieldByName('Status').AsString := 'Em edição';
  BtnConclui.Enabled := False;
  CodigoCliente.SetFocus;
end;

procedure TBoxVendasVeiculos.CriarPedido(chassi: String; Cliente: String);
begin
  EnableDisableControls(True);
  tblPedidoVeiculos.Insert;
  tblPedidoVeiculos.FieldByName('Chassi').AsString := Chassi;//ChassiVeiculo.Text := chassi;
  tblPedidoVeiculos.FieldByName('Id_Clientes').AsInteger;//CodigoCliente.Text := Cliente;
  tblPedidoVeiculos.FieldByName('Status').AsString := 'Em edição';
  tblPedidoveiculos.FieldByName('id_Usuario').AsInteger :=
    BoxEmpresas.DataSource1.dataset.FieldByName('id_usuarios').AsInteger;
  CodigoCliente.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnConfirmaAcessorioClick(Sender: TObject);
begin
  with tblPedidoVeiculosAcessorios do
    begin
      FieldByName('Id_pedido_veiculos').AsInteger := idPedidoVeiculos;
      FieldByName('Id_veiculos_acessorios').AsInteger :=
         tblVeiculosAcessorios.FieldByName('Id_veiculos_Acessorios').AsInteger;
      FieldByName('Descricao_Acessorio').AsString :=
         tblVeiculosAcessorios.FieldByName('Descricao_Acessorio').AsString;
//      FieldByName('Valor_Acessorio').AsCurrency :=
//         tblVeiculosAcessorios.FieldByName('Valor').AsCurrency;
      Post;
      Close;
      ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
      Open;
    end;
    BtnNovoAcessorio.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnExcluiAcessorioClick(Sender: TObject);
begin
  case MessageDlg('Exlui acessório?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblPedidoVeiculosAcessorios do
           begin
            Delete;
            Close;
            ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
            Open;
           end;
      end;
  end;
end;

procedure TBoxVendasVeiculos.BtnNovoAcessorioClick(Sender: TObject);
begin
  with tblPedidoVeiculosAcessorios do
    begin
      Close;
      ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
      Open;
      Insert;
    end;
  Acessorios.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnNovoPagamentoClick(Sender: TObject);
begin
  with tblPedidoVeiculosRecebimento do
    begin
      Close;
      ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
      Open;
      Insert;
    end;
  FormaPagamento.SetFocus;
end;

procedure TBoxVendasVeiculos.BtnSalvarClick(Sender: TObject);
begin
  Gravar;
end;

Procedure TBoxVendasVeiculos.Gravar;
begin
 if tblPedidoVeiculos.FieldByName('Status').AsString <> 'Em edição' then
   Showmessage('Não há venda em edição.')
 else
 begin
   if Pedido.Text = '' then  //Gravar Pedido de veiculos
    begin
      IBQuery1.Open;
      IdPedidoVeiculos := IBQuery1.FieldByName('id_Pedido_Veiculos').AsInteger;
      Pedido.Text := IntToStr(IdPedidoVeiculos);
      IBQuery1.Close;
      with tblPedidoVeiculos do
       begin
         FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
         FieldByName('Status').AsString := 'Em edição';
         FieldByName('id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         FieldByName('Id_Pedido_Veiculos').AsInteger := IdPedidoVeiculos;
       end;
    end;
  ChassiVeiculo.Enabled := True;
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.Sql.Add('select sum(Pedido_veiculos_recebimento.valor_original) as Valor');
  IBQuery2.SQL.Add('from Pedido_veiculos_recebimento');
  IBQuery2.SQL.Add('where Pedido_veiculos_recebimento.Id_Pedido_veiculos =');
  IBQuery2.Sql.Add(':idPedidoVeiculos');
  IBQuery2.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
  IBQuery2.Open;
  IBQuery3.Close;
  IBQuery3.SQL.Clear;
  IBQuery3.Sql.Add('select sum(Pedido_veiculos_acessorios.valor_acessorio) as Valor');
  IBQuery3.SQL.Add('from Pedido_veiculos_acessorios');
  IBQuery3.SQL.Add('where Pedido_veiculos_acessorios.Id_Pedido_veiculos =');
  IBQuery3.Sql.Add(':idPedidoVeiculos');
  IBQuery3.Parambyname('idPedidoVeiculos').AsString := IntToStr(IdPedidoVeiculos);
  IBQuery3.Open;
  with tblPedidoVeiculos do
  begin
    FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
    FieldByName('Id_Avalista').AsInteger := StrToInt(CodigoAvalista.Text);
    FieldByName('Id_Vendedor').AsInteger := StrToInt(CodigoVendedor.Text);
    FieldbyName('Chassi').AsString := ChassiVeiculo.Text;
    FieldByName('Usuario').AsString := BoxEmpresas.UsuarioLogado;
    FieldByName('Valor_a_receber').AsCurrency :=
      IBQuery2.FieldByName('Valor').AsCurrency;
    FieldByName('Valor_da_venda').AsCurrency :=
      IBQuery3.FieldByName('Valor').AsCurrency + FieldByName('valor').AsCurrency;
    if FieldByName('valor_a_receber').AsVariant <
     FieldByName('valor_da_venda').AsVariant then
      begin
       FieldByName('Status').AsString := 'Pendente';
      end
    else
       fieldByName('Status').AsString := 'Aprovado';
    Post;
    Edit; //duvida deixar ou tirar 
    idModeloVeiculo := fieldByName('id_modelo_veiculo').AsInteger;
  end;
  if not Editar then
    with tblVeiculos do
      begin
        Edit;
        FieldByName('Status').AsString := 'VENDIDO';
        Post;
      end;
     Showmessage('Dados gravados.');
  BtnAcessorios.Enabled := True;
  BtnFormaPagamento.Enabled := True;
  BtnConclui.Enabled := True;
  BtnNovo.SetFocus;
  Editar := False;
 end;

end;

procedure TBoxVendasVeiculos.BtnConcluiAcessorioClick(Sender: TObject);
begin
  tblPedidoVeiculosAcessorios.Close;
  tblPedidoVeiculosAcessorios.ParamByName('idPedidoVeiculos').AsInteger := StrToInt(pedido.Text);
  tblPedidoVeiculosAcessorios.Open;
  EnableDisableButtons(True, False, False);
  BtnFormaPagamento.SetFocus;
end;

procedure TBoxVendasVeiculos.ChassiVeiculoExit(Sender: TObject);
begin
 if ChassiVeiculo.Text = '' then
  begin
   SpeedButton1.Click;
  end
 else
  begin
    with tblVeiculos do
      begin
       Close;
       parambyname( 'id' ).AsString := ChassiVeiculo.Text;
       Open;
       if recordcount = 0  then
         begin
          SpeedButton1.Click;
         end
       else
        if not ConfereChassi then
          CodigoCliente.SetFocus
        else
          SelecionaVeiculo;
      end;
//    Gravar;
 //   tblPedidoveiculos.Edit;
 //   CodigoFinanceira.SetFocus;
  end;
end;

procedure TBoxVendasVeiculos.SelecionaVeiculo;
begin
 with tblVeiculos do
   begin
    tblPedidoVeiculos.FieldByName('Marca').AsString :=
      FieldbyName('Marca').AsString;
    tblPedidoVeiculos.FieldByName('Modelo').AsString :=
      FieldbyName('Modelo').AsString;
    tblPedidoVeiculos.FieldByName('Ano_Fabricacao').AsString :=
      FieldbyName('Ano_Fabricacao').AsString;
    tblPedidoVeiculos.FieldByName('Ano_Modelo').AsString :=
      FieldbyName('Ano_Modelo').AsString;
    tblPedidoVeiculos.FieldByName('Cor').AsString :=
      FieldbyName('Cor').AsString;
    tblPedidoVeiculos.FieldByName('Chassi').AsString :=
      FieldbyName('Chassi').AsString;
    tblPedidoVeiculos.FieldByName('Valor').Text :=
      tblveiculos.FieldByName('Preco').Text;
    tblPedidoVeiculos.FieldByName('Chassi').AsString :=
      tblVeiculos.FieldByName('Chassi').AsString;
    tblPedidoVeiculos.FieldByName('Motor').AsString :=
      tblVeiculos.FieldByName('Motor').AsString;
    tblPedidoVeiculos.FieldByName('Placa').AsString :=
      tblveiculos.FieldByName('Placa').AsString;
    tblPedidoveiculos.FieldByName('id_modelo_veiculo').AsInteger :=
      tblVeiculos.FieldByName('id_modelo_veiculo').AsInteger;
    tblModelos.Close;
    tblModelos.ParamByName('IdModeloVeiculo').AsInteger :=
      tblVeiculos.FieldByName('id_modelo_veiculo').AsInteger;
    tblModelos.Open;
    idModeloVeiculo := tblVeiculos.FieldByName('id_modelo_veiculo').AsInteger;
    if (tblveiculos.FieldByName('Origem').AsString = 'N') or
       (tblveiculos.FieldByName('Origem').AsString = 'M') then
        begin
         if VendedorYnova then
           tblPedidoVeiculos.FieldByName('Valor').Text :=
             tblModelos.FieldByName('Preco_exclusivo2').Text
         else
           tblPedidoVeiculos.FieldByName('Valor').Text :=
             tblModelos.FieldByName('Preco_Venda').Text;
        end;
    if tblPedidoVeiculos.FieldByName('Valor').AsFloat = 0 then
         tblPedidoVeiculos.FieldByName('Valor').Text :=
           tblveiculos.FieldByName('Preco').Text;
    tblPedidoVeiculos.FieldByName('Valor_vip').AsCurrency := tblModelos.FieldByName('preco_vip').AsCurrency;
    tblPedidoVeiculos.FieldByName('Valor_vip2').AsCurrency := tblModelos.FieldByName('preco_vip2').AsCurrency;
    tblPedidoVeiculos.FieldByName('Valor_normal').AsCurrency := tblModelos.FieldByName('preco_normal').AsCurrency;
    tblPedidoVeiculos.FieldByName('Valor_normal2').AsCurrency := tblModelos.FieldByName('preco_normal2').AsCurrency;
    tblPedidoVeiculos.FieldByName('Valor_exclusivo').AsCurrency := tblModelos.FieldByName('Preco_Venda').AsCurrency;
    tblPedidoVeiculos.FieldByName('Valor_exclusivo2').AsCurrency := tblModelos.FieldByName('preco_exclusivo2').AsCurrency;

    IdVeiculos := FieldByName('Id_Veiculos').AsInteger;

    Edit;
    FieldByName('Status').AsString := 'VENDIDO';
//    Post;
   end;
  tblPedidoVeiculos.FieldByName('id_veiculos').AsInteger := IdVeiculos;
 // tblPedidoVeiculos.Post;
//  tblPedidoveiculos.Edit;
  {Apos completar a pesquisa localizar no grid e preencher o combo box}
  with tblPedidoVeiculosAcessorios do
    begin
      Close;
      ParamByName('idPedidoVeiculos').AsInteger := idPedidoVeiculos;
      Open;
    end;
  with tblVeiculosAcessorios do
    begin
      Close;
      ParamByName('idDescricaoAcessorio').AsString := Modelo.Text;
      Open;
    end;
  EnableDisableControls(False);
//  BtnAcessorios.SetFocus;
end;

procedure TBoxVendasVeiculos.FecharDs;
begin
  DataSourceVeiculos.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
  tblConcessionaria.Close;
  DataSourceClientes.Dataset.Close;
  DataSourcePedidoVeiculos.Dataset.Close;
  DataSourcePedidoVeiculosAcessorios.Dataset.Close;
  DataSourceVeiculosAcessorios.Dataset.Close;
  DataSourcePedidoVeiculosRecebimento.Dataset.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  DataSourceModelosVeiculos.Dataset.Close;
  DataSourcePendencias.Dataset.Close;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery3.Close;
  IBQuery4.Close;
end;

procedure TBoxVendasVeiculos.EnableDisableControls(Value : Boolean);
begin
  CodigoCliente.Enabled := Value;
  ChassiVeiculo.Enabled := Value;
  SpeedButton1.Enabled := Value;
  SpeedButton2.Enabled := Value;
end;

procedure TBoxVendasVeiculos.EnableDisableButtons(Value: Boolean; ValueAcessorios: Boolean; ValuePagamento: Boolean);
begin
  BtnCancelar.Enabled := Value;
  BtnAcessorios.Enabled := Value;
  BtnConclui.Enabled := Value;
  BtnNovo.Enabled := Value;
  BtnFormaPagamento.Enabled := Value;
  BtnEdita.Enabled := Value;
  BtnConfirmaAcessorio.Enabled := ValueAcessorios;
  BtnExcluiAcessorio.Enabled := ValueAcessorios;
  BtnConcluiAcessorio.Enabled := ValueAcessorios;
  BtnNovoAcessorio.Enabled := ValueAcessorios;
  BtnNovoPagamento.Enabled := ValuePagamento;
  BtnConfirmaPagamento.Enabled := ValuePagamento;
  BtnExcluiPagamento.Enabled := ValuePagamento;
  BtnConcluiPagamento.Enabled := ValuePagamento;
  Acessorios.Enabled := ValueAcessorios;
  DbGrid1.Enabled := ValueAcessorios;
  if (FDB1.IBDataSetLoginacesso53.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnAutoriza.Enabled := True
  else
     BtnAutoriza.Enabled := False;
//  if (FDB1.IBDataSetLoginacesso53.AsString = 'T') or
//    (FDB1.IBDataSetLoginADM.AsString = 'T') then
//     BtnAutoriza1.Enabled := True
//  else
//     BtnAutoriza1.Enabled := False;

end;


procedure TBoxVendasVeiculos.AbrirDs;
begin
   DataSourceVeiculos.Dataset.Open;
   DataSourceClientes.Dataset.Open;
   DataSourcePedidoVeiculos.Dataset.Open;
   DataSourcePedidoVeiculosAcessorios.Dataset.Open;
   DataSourceVeiculosAcessorios.Dataset.Open;
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceFormaPagamentos.Dataset.Open;
   DataSourcePendencias.Dataset.Open;
end;

end.
