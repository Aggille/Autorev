unit CadastroVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, ExtCtrls, StdCtrls, DB, Grids, DBGrids, RxDBComb,
  JvExStdCtrls, JvDBCombobox, IBCustomDataSet, Mask, Buttons, DateUtils,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, IBQuery, Wwdbigrd, Wwdbgrid,
  FMTBcd, SqlExpr, DBClient, Provider, RxLookup, IBDatabase, IBTable,//;
  FuncoesSystem, IBSQL;
type
  TBoxVeiculos = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DataSourceVeiculos: TDataSource;
    DBGrid1: TDBGrid;
    DataSourceStatus: TDataSource;
    tblVeiculos1: TIBDataSet;
    tblStatus: TIBDataSet;
    tblStatusID_STATUS: TIntegerField;
    tblStatusSTATUS: TIBStringField;
    Label2: TLabel;
    Chassi: TDBEdit;
    Label3: TLabel;
    Marca: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Cor: TDBEdit;
    Label7: TLabel;
    AnoFabricacao: TDBEdit;
    Label8: TLabel;
    AnoModelo: TDBEdit;
    Label9: TLabel;
    Placa: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    BtnReserva: TBitBtn;
    Label15: TLabel;
    Por: TDBEdit;
    Label16: TLabel;
    CodigoCliente: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label17: TLabel;
    NomeCliente: TJvDBMaskEdit;
    DataSourcePessoas: TDataSource;
    tblPessoas: TIBDataSet;
    tblVeiculos1ID_VEICULOS: TIntegerField;
    tblVeiculos1ID_CONCESSIONARIA: TIntegerField;
    tblVeiculos1ID_CLIENTES: TIntegerField;
    tblVeiculos1ID_FORNECEDOR: TIntegerField;
    tblVeiculos1CHASSI: TIBStringField;
    tblVeiculos1MARCA: TIBStringField;
    tblVeiculos1MODELO: TIBStringField;
    tblVeiculos1COR: TIBStringField;
    tblVeiculos1COMBUSTIVEL: TIBStringField;
    tblVeiculos1ANO_FABRICACAO: TIBStringField;
    tblVeiculos1ANO_MODELO: TIBStringField;
    tblVeiculos1GRUPO: TIBStringField;
    tblVeiculos1HP: TIBStringField;
    tblVeiculos1PLACA: TIBStringField;
    tblVeiculos1CNY: TIBStringField;
    tblVeiculos1KM: TIntegerField;
    tblVeiculos1CLASSIF_FISCAL: TIBStringField;
    tblVeiculos1NOTA_ENT: TIBStringField;
    tblVeiculos1DATA_ENT: TDateField;
    tblVeiculos1FONE: TIBStringField;
    tblVeiculos1CONSIG: TIBStringField;
    tblVeiculos1CUSTO: TIBBCDField;
    tblVeiculos1CUSTO_ICMS: TIBBCDField;
    tblVeiculos1PRECO: TIBBCDField;
    tblVeiculos1DATA_SAI: TDateField;
    tblVeiculos1NF_SAIDA: TIBStringField;
    tblVeiculos1VENDA: TIBStringField;
    tblVeiculos1MOTOR: TIBStringField;
    tblVeiculos1FINANC_PRO: TIBStringField;
    tblVeiculos1STATUS: TIBStringField;
    tblVeiculos1RESERVADA: TDateField;
    tblVeiculos1FOTO: TIBStringField;
    tblVeiculos1RESERVADA_POR: TIBStringField;
    tblVeiculos1ESTOQUE: TIBStringField;
    tblVeiculos1ORIGEM: TIBStringField;
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
    BtnDemonstracao: TBitBtn;
    BtnRetorno: TBitBtn;
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
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceSada: TDataSource;
    DataSourceSerieNF: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
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
    Panel2: TPanel;
    Label5: TLabel;
    CodigoDemonstracao: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label18: TLabel;
    NomeDemonstracao: TJvDBMaskEdit;
    Label19: TLabel;
    SerieNF: TComboBox;
    BtnImprimir: TBitBtn;
    BtnConfirma: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    Label20: TLabel;
    IBQuery5: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery6: TIBQuery;
    Label21: TLabel;
    TransferirPara: TComboBox;
    tblTransferencia: TIBDataSet;
    DataSourceTransferencia: TDataSource;
    tblTransferenciaID_TRANSFERENCIA: TIntegerField;
    tblTransferenciaID_CLIENTES: TIntegerField;
    tblTransferenciaTRANSFERIR_PARA: TIBStringField;
    tblTransferenciaID_CONCESSIONARIA: TIntegerField;
    tblVeiculos1ID_MODELO_VEICULO: TIntegerField;
    tblVeiculos1ID_COMPRADOR: TIntegerField;
    tblVeiculos1CST: TIBStringField;
    tblModelos: TIBDataSet;
    tblModelosID_MODVEIC: TIntegerField;
    tblModelosMARCA: TIBStringField;
    tblModelosMODELO: TIBStringField;
    tblModelosCILINDROS: TIntegerField;
    tblModelosCILINDRADAS: TIntegerField;
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosCLASSIF_FISCAL: TIBStringField;
    tblModelosPPS: TIBBCDField;
    tblModelosPPS_ABRACY: TIBBCDField;
    tblModelosPRECO_VENDA: TIBBCDField;
    tblModelosCST: TIBStringField;
    tblModelosVEICULO_NOVO: TIBStringField;
    DataSourceModelosVeiculos: TDataSource;
    Modelo: TRxDBLookupCombo;
    tblModelosHP: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    cdsVeiculos: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsVeiculosID_VEICULOS: TIntegerField;
    cdsVeiculosID_CONCESSIONARIA: TIntegerField;
    cdsVeiculosID_CLIENTES: TIntegerField;
    cdsVeiculosID_FORNECEDOR: TIntegerField;
    cdsVeiculosCUSTO: TBCDField;
    cdsVeiculosCUSTO_ICMS: TBCDField;
    cdsVeiculosPRECO: TBCDField;
    cdsVeiculosDATA_SAI: TDateField;
    cdsVeiculosID_MODELO_VEICULO: TIntegerField;
    cdsVeiculosID_COMPRADOR: TIntegerField;
    BtnTransferencia: TBitBtn;
    BtnTerceiro: TBitBtn;
    BtnPedido: TBitBtn;
    tblTransferencia1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField3: TIntegerField;
    DataSourceTransferencia1: TDataSource;
    tblTransferencia1NOVO_ID_CONCESSIONARIA: TIntegerField;
    BtnCancelaReserva: TBitBtn;
    BtnValor: TBitBtn;
    Label1: TLabel;
    Preco: TDBEdit;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblVeiculos1DATA_RECEBIMENTO: TDateField;
    tblVeiculos1NCM: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    cdsVeiculosDATA_RECEBIMENTO: TDateField;
    IBQuery8: TIBQuery;
    tblVeiculos1COM_AVARIA: TIBStringField;
    BtnAvaria: TBitBtn;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    cdsVeiculosCHASSI: TWideStringField;
    cdsVeiculosMODELO: TWideStringField;
    cdsVeiculosMARCA: TWideStringField;
    cdsVeiculosCOR: TWideStringField;
    cdsVeiculosCOMBUSTIVEL: TWideStringField;
    cdsVeiculosANO_FABRICACAO: TWideStringField;
    cdsVeiculosANO_MODELO: TWideStringField;
    cdsVeiculosGRUPO: TWideStringField;
    cdsVeiculosHP: TWideStringField;
    cdsVeiculosPLACA: TWideStringField;
    cdsVeiculosCNY: TWideStringField;
    cdsVeiculosKM: TIntegerField;
    cdsVeiculosRENAVAM: TWideStringField;
    cdsVeiculosCLASSIF_FISCAL: TWideStringField;
    cdsVeiculosNOTA_ENT: TWideStringField;
    cdsVeiculosDATA_ENT: TDateField;
    cdsVeiculosFONE: TWideStringField;
    cdsVeiculosCONSIG: TWideStringField;
    cdsVeiculosNF_SAIDA: TWideStringField;
    cdsVeiculosVENDA: TWideStringField;
    cdsVeiculosMOTOR: TWideStringField;
    cdsVeiculosFINANC_PRO: TWideStringField;
    cdsVeiculosSTATUS: TWideStringField;
    cdsVeiculosRESERVADA: TDateField;
    cdsVeiculosFOTO: TWideStringField;
    cdsVeiculosRESERVADA_POR: TWideStringField;
    cdsVeiculosESTOQUE: TWideStringField;
    cdsVeiculosORIGEM: TWideStringField;
    cdsVeiculosCST: TWideStringField;
    cdsVeiculosNCM: TWideStringField;
    cdsVeiculosCOM_AVARIA: TWideStringField;
    tblVeiculos1CODIGO: TIBStringField;
    tblModelosRENAVAM: TIBStringField;
    tblModelosANO_FABRICACAO: TIBStringField;
    tblModelosANO_MODELO: TIBStringField;
    tblModelosPRECO_VIP: TIBBCDField;
    tblModelosPRECO_NORMAL: TIBBCDField;
    tblModelosPRECO_EXCLUSIVO2: TIBBCDField;
    tblModelosPRECO_NORMAL2: TIBBCDField;
    tblModelosPRECO_VIP2: TIBBCDField;
    tblVeiculos1RENAVAM: TIBStringField;
    cdsVeiculosCODIGO: TWideStringField;
    cdsVeiculosDIASESTOQUE: TStringField;
    BtnEstenderReserva: TBitBtn;
    tblSadaALIQ_ICMS: TIBBCDField;
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
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure BtnReservaClick(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure tblVeiculos1AfterCancel(DataSet: TDataSet);
    procedure tblVeiculos1AfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtnRetornoClick(Sender: TObject);
    procedure BtnDemonstracaoClick(Sender: TObject);
    procedure CodigoDemonstracaoExit(Sender: TObject);
    procedure SerieNFExit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnTransferenciaClick(Sender: TObject);
    procedure BtnTerceiroClick(Sender: TObject);
    procedure TransferirParaExit(Sender: TObject);
    procedure AnoModeloExit(Sender: TObject);
    procedure ModeloChange(Sender: TObject);
    procedure cdsPesquisaAfterPost(DataSet: TDataSet);
    procedure DataSetProvider1UpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnPedidoClick(Sender: TObject);
    procedure Reservar;
    procedure BtnCancelaReservaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnValorClick(Sender: TObject);
    procedure PrecoExit(Sender: TObject);
    procedure BtnAvariaClick(Sender: TObject);
    procedure BtnEstenderReservaClick(Sender: TObject);
    procedure cdsVeiculosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDs;
    procedure PreencheSerie;
    procedure GeraNFRetorno;
    procedure GeraNFDemonstracao;
    procedure EnabledControls (Value : Boolean);
    function PreencheTransferencia : Variant;
  end;

var
  BoxVeiculos: TBoxVeiculos;
  idCliente : integer;
  IdNofisa : Integer;
  IdNumeroNotaFiscal : Integer;
  IdDemonstracao : Integer;
  Demonstracao : Boolean;
  Transferencia : Boolean;
  Terceiro : Boolean;
  DescontoCliente : String;
  Retorno : String; //Integer;
  Dados_ad01 : String;
  Dados_ad02 : String;
  Dados_ad03 : String;
  Dados_ad04 : String;
  CFOP1 : String;
  CFOP2 : String;
  DescricaoCodigoFiscal : String;

  
implementation

uses FDB, Biblioteca, Empresas, ReemiteNFs, OperacoesVendasVeiculos,
  NfeGerenciamento;

{$R *.dfm}

procedure TBoxVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxVeiculos := nil;
end;

procedure TBoxVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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
  if cdsVeiculos.FieldByName('Preco').AsInteger  = 0 then
     BtnPedido.Enabled := False
  else
     BtnPedido.Enabled := True;
end;

procedure TBoxVeiculos.FormShow(Sender: TObject);
//var
// DiasEstoque: Extended;
begin
  TransferirPara.Enabled := False;
  Demonstracao := False;
  Transferencia := False;
  Terceiro := False;
  AbrirDs;
  with CdsVeiculos do
  begin
   First;
   While not eof do
   begin
    edit;
//    DiasEstoque := ;
    FieldByName('DiasEstoque').AsString := '10';//DateToStr(DataAtual - FieldByName('Data_Ent').AsDateTime);
    post;
    next;
   end;
  end;


  Panel2.Enabled := False;
  BtnEstenderReserva.Enabled := False;
  if (FDB1.IBDataSetLoginacesso42.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
     BtnRetorno.Enabled := False;
     BtnDemonstracao.Enabled := False;
     BtnTransferencia.Enabled := False;
     BtnTerceiro.Enabled := False;
     Panel2.Enabled := False;
     BtnConfirma.Enabled := False;
     BtnImprimir.Enabled := False;
     SpeedButton1.Enabled := False;
   end;
  if (FDB1.IBDataSetLoginacesso65.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then     //alterar valor de veiculos usados
     BtnValor.Enabled := True;
  if (FDB1.IBDataSetLoginacesso90.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then     //alterar avaria em veículo
     BtnAvaria.Enabled := True;
   DbGrid1.SetFocus;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') then     //extender reservas
     BtnEstenderReserva.Enabled := True;
end;

procedure TBoxVeiculos.AnoModeloExit(Sender: TObject);
begin
   CodigoDemonstracao.SetFocus;
end;

procedure TBoxVeiculos.BtnReservaClick(Sender: TObject);
begin
  if cdsVeiculos.FieldByName('preco').AsInteger = 0 then
    showmessage('Veículo impossibilitado de ser reservado.'+#13+'Porque o valor de venda está zerado.')
  else
   if CodigoCliente.Text = '' then
    Showmessage('Selecione o cliente para reserva.')
   else
    if cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO' then
      Showmessage('Este veículo está em demonstração.' + #13+ 'Efetue o retorno primeiro.')
    else
      if (cdsVeiculos.FieldByName('Com_avaria').AsBoolean) then
        Showmessage('Este veículo está com avaria.' + #13+ 'Não é possível reservar.')
      else
        Reservar;
end;

procedure TBoxVeiculos.BtnAvariaClick(Sender: TObject);
var mensagem : String;
begin
  if cdsVeiculos.FieldByName('Com_Avaria').AsBoolean then
    mensagem := 'Confirma cancelamento de avaria em veículo?'
  else
    mensagem := 'Confirma registro de avaria em veículo?';
    case MessageDlg(mensagem, mtConfirmation, [mbYes,mbNo], 0) of
      mrYes:
        begin
           with cdsVeiculos do
           begin
             Edit;
             if FieldByName('Com_Avaria').AsBoolean then
                FieldByName('Com_Avaria').AsString := 'False'
             else
                FieldByName('Com_Avaria').AsString := 'True';
             Post;
           end;
        end;
    end
end;

procedure TBoxVeiculos.BtnCancelaReservaClick(Sender: TObject);
begin
  if Por.Text = BoxEmpresas.UsuarioLogado then
    case MessageDlg('Confirma cancelamento de reserva?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes:
        begin
           with cdsVeiculos do
           begin
             Edit;
             FieldByName('Id_Clientes').AsInteger := 0;
             fdb1.AtualizaDataAtual;
             FieldByName('Reservada').AsDateTime := DataAtual - 1;
             FieldByName('Reservada_Por').AsString := '';
             Post;
           end;
        end;
    end
  else
   showmessage('Você não pode cancelar esta reserva.');
end;

procedure TBoxVeiculos.BtnConfirmaClick(Sender: TObject);
begin
if cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
   Showmessage('Este veículo não é desta concessionária.')
else
 begin
  CodigoDemonstracao.Enabled := False;
  TransferirPara.Enabled := False;
  SerieNF.Enabled := False;
  BtnConfirma.Enabled := False;
  SpeedButton1.Enabled := False;
  BtnImprimir.Enabled := True;
  BtnImprimir.SetFocus;
  DBGrid1.Refresh;
  if (Demonstracao) or (Transferencia) or (Terceiro) then
   GeraNFDemonstracao
  else
   {gera NF de retorno}
     GeraNFRetorno;
 end;
end;

procedure TBoxVeiculos.GeraNFDemonstracao;
var
  matriz: array[1..10] of String;
  i : Integer;
  ValorNf : Currency;
begin
 {Gera a NF de demonstracao}
//  ValorNf := IntToCurr(0);
  if Demonstracao then
   begin
    IBQuery2.Open;
    Cfop1 := IBQuery2.FieldByName('CFOP1').AsString;
    Cfop2 := IBQuery2.FieldByName('CFOP2').AsString;
    DescricaoCodigoFiscal := IBQuery2.FieldByName('DESCRICAO').AsString;
    Dados_ad01 := IBQuery2.FieldByName('Dados_ad01').AsString;
    Dados_ad02 := IBQuery2.FieldByName('Dados_ad02').AsString;
    Dados_ad03 := IBQuery2.FieldByName('Dados_ad03').AsString;
    Dados_ad04 := IBQuery2.FieldByName('Dados_ad04').AsString;
    IBQuery2.Close;
    valorNF := cdsVeiculos.FieldByName('Preco').AsCurrency;
   end;
  if Transferencia then
   begin
  {Dados para NF retorno de transferencia}
      IBQuery4.Open;
      Cfop1 := IBQuery4.FieldByName('CFOP1').AsString;
      Cfop2 := IBQuery4.FieldByName('CFOP2').AsString;
      DescricaoCodigoFiscal := IBQuery4.FieldByName('DESCRICAO').AsString;
      Dados_ad01 := IBQuery4.FieldByName('Dados_ad01').AsString;
      Dados_ad02 := IBQuery4.FieldByName('Dados_ad02').AsString;
      Dados_ad03 := IBQuery4.FieldByName('Dados_ad03').AsString;
      Dados_ad04 := IBQuery4.FieldByName('Dados_ad04').AsString;
      IBQuery4.Close;
      valorNF := cdsVeiculos.FieldByName('Custo').AsCurrency;
  end;
 if Terceiro then
   begin
     {Dados para NF retorno de terceiro}
      cdsVeiculos.FieldByName('id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      cdsVeiculos.FieldByName('CST').AsString := '040';
      cdsVeiculos.Post;
      IBQuery6.Open;
      Cfop1 := IBQuery6.FieldByName('CFOP1').AsString;
      Cfop2 := IBQuery6.FieldByName('CFOP2').AsString;
      DescricaoCodigoFiscal := IBQuery6.FieldByName('DESCRICAO').AsString;
      Dados_ad01 := IBQuery6.FieldByName('Dados_ad01').AsString;
      Dados_ad02 := IBQuery6.FieldByName('Dados_ad02').AsString;
      Dados_ad03 := IBQuery6.FieldByName('Dados_ad03').AsString;
      Dados_ad04 := IBQuery6.FieldByName('Dados_ad04').AsString;
      IBQuery6.Close;
      valorNF := cdsVeiculos.FieldByName('Preco').AsCurrency;
   end;
   {Pegar Cliente}
{   with tblPessoas do
     begin
       Close;
       ParamByName('id').AsInteger :=
         tblVeiculos.FieldByName('id_clientes').AsInteger;
       Open;
     end;}
   {Pega um sequence novo para a NF}
     IBQuery1.Open;
     IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
     IBQuery1.Close;
    {Pegar o número da NF}
     with tblSerieNF do
       begin
        idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
        Edit;
        FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
        Post;
        Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
      end;
    with tblNofisa do
      begin
        Insert;
        FieldByName('id_nofisa').AsInteger := IdNofisa;
        FieldByName('Id_Concessionaria').AsInteger :=
          cdsVeiculos.FieldByName('Id_Concessionaria').AsInteger;
        FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoDemonstracao.Text);
        FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
        FieldByName('SerieNF').AsString := SerieNF.Text;
        Fdb1.AtualizaDataAtual;
        FieldByName('Emissao').AsDateTime := DataAtual;
        FieldByName('ENT_SAI').AsString := 'S';
        FieldByName('Origem').AsString := cdsveiculos.FieldByName('Origem').AsString;
        FieldByName('Base_ICMS').AsCurrency := 0.00;
        FieldByName('Val_Icms').AsCurrency := 0;
        FieldByName('Tot_prod').AsCurrency := ValorNF;
        FieldByName('Tot_Nota').AsCurrency := ValorNF;
//          tblVeiculos.FieldByName('Preco').AsCurrency;
        if tblPessoas.FieldByName('Estado').AsString = 'RS' then
          FieldByName('Codigo_Fiscal').AsString := CFOP1
        else
          FieldByName('Codigo_fiscal').AsString := CFOP2;
        FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
        FieldByName('Frete_Tipo').AsString := '2';
        FieldByName('Dados_Ad01').AsString := Dados_ad01;
        FieldByName('Dados_Ad02').AsString := Dados_ad02;
        FieldByName('Dados_Ad03').AsString := Dados_ad03;
        FieldByName('Dados_Ad04').AsString := Dados_ad04;
        FieldByName('Qtde_prod').AsInteger := 1;
        FieldByName('Status').AsString := 'Processado';
        Post;
      end;
    with IBQuery8 do
      begin
        Close;
        ParamByName('idModeloVeiculo').AsInteger := cdsVeiculos.FieldByName('Id_Modelo_Veiculo').AsInteger;
        Open;
      end;
    with tblSada do
      begin
        Insert;
        FieldByName('Id_Concessionaria').AsInteger :=
          cdsVeiculos.FieldByName('Id_Concessionaria').AsInteger;
        FieldByName('Id_Nofisa').AsInteger := IdNofisa;
        if tblPessoas.FieldByName('Estado').AsString = 'RS' then
          FieldByName('CFOP').AsString := CFOP1
        else
          FieldByName('CFOP').AsString := CFOP2;
        FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
        FieldByName('Descricao').AsString := 'Motocicleta';
        FieldByName('Qtde').AsInteger := 1;
        FieldByName('Unidade').AsString := 'UN';
        FieldByName('NAT_OP').AsString := DescricaoCodigoFiscal;
        FieldByName('Cilindradas').AsInteger := IBQuery8.FieldByName('cilindradas').AsInteger;
        matriz[1] := 'Marca';
        matriz[2] := 'Modelo';
        matriz[3] := 'Placa';
        matriz[4] := 'Ano_Modelo';
        matriz[5] := 'Ano_Fabricacao';
        matriz[6] := 'Renavam';
        matriz[7] := 'Cor';
        matriz[8] := 'Combustivel';
        matriz[9] := 'Chassi';
        matriz[10] := 'Motor';
        for I := 1 to 10 do
          begin
            FieldByName(matriz[i]).AsString :=
              cdsVeiculos.FieldByName(matriz[i]).AsString;
          end;
        FieldByName('Potencia').AsString := cdsVeiculos.FieldByName('HP').AsString;
        FieldByName('Custo').AsString := cdsVeiculos.FieldByName('Custo_Icms').AsString;
        FieldByName('Preco').AsCurrency := ValorNF;
        if Terceiro then
          FieldByName('Cst').AsString := '040'
        else
          FieldByName('Cst').AsString := '060';
        if cdsVeiculos.FieldByName('Origem').AsString = 'N' then
          begin
            FieldByName('Subst').AsString := 'T';
            FieldByName('ST_Cofins').AsString := 'T';
          end;
        Post;
      end;
    with cdsveiculos do
      begin
        Edit;
        if demonstracao then
          FieldByName('Status').AsString := 'DEMONSTRAÇÃO';
        if transferencia then
         begin
          with tblTransferencia1 do
           begin
            Close;
            ParamByName('idTransferirPara').AsString :=
              TransferirPara.Text;
            Open;
            if recordCount <> 0 then
             begin
              cdsVeiculos.FieldByName('Id_Concessionaria').AsString :=
                tblTransferencia1.FieldByName('Novo_Id_Concessionaria').AsString;
              cdsVeiculos.FieldByName('Estoque').AsString := TransferirPara.Text;
             end;
            Close;
           end;
          FieldByName('Status').AsString := TransferirPara.Text;
         end;
        if TERCEIRO then
          FieldByName('Status').AsString := 'DEVOLVIDA';
        FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoDemonstracao.Text);
        FieldByName('nf_Saida').AsInteger := IdNumeroNotaFiscal;
        FieldByName('Data_sai').AsDateTime := DataAtual;
        Post;
      end;
 Demonstracao := False;
 Transferencia := False;
 Terceiro := False;
end;

procedure TBoxVeiculos.BtnDemonstracaoClick(Sender: TObject);
begin
if cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
   Showmessage('Este veículo não é desta concessionária.')
else
begin
if cdsVeiculos.FieldByName('Status').AsString <> cdsVeiculos.FieldByName('Estoque').AsString then
 Showmessage('Este veículo foi transferido.' + #13 +
 'Primeiro efetue o retorno.')
else
begin
if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
  Showmessage('Este veículo é de terceiro.' + #13 +
  'Não é possível emitir NF de demonstração.')
else
 begin
  if cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO' then
   begin
     showmessage('Este veículo já está em demonstração' + #13 +
     'Primeiro faça o retorno.')
   end
  else
   begin
    if cdsVeiculos.FieldByName('Origem').AsString = 'N' then
     begin
      case MessageDlg('Confirma emissão de NF de demonstração?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes:
        begin
          PreencheSerie;
          BtnImprimir.Enabled := False;
          Panel2.Enabled := True;
          Demonstracao := True;
          BtnConfirma.Enabled := False;
          CodigoDemonstracao.SetFocus;
        end;
      end;
     end
    else
     showmessage('Não é possível emitir NF de demonstração de veículo usado.');
   end;
 end;
end;
end;
end;

procedure TBoxVeiculos.BtnImprimirClick(Sender: TObject);
begin
  if not Assigned(BoxNFeGerenciamento) then
    BoxNFeGerenciamento := TBoxNFeGerenciamento.Create(Self);
  BoxNFeGerenciamento.Show;
//  if BoxReemiteNFs.EmitirNotaFiscal(IntToStr(IdNumeroNotaFiscal)) then
//    BoxReemiteNFs.EmiteNF;
  CodigoDemonstracao.Enabled := True;
  SerieNF.Enabled := True;
  BtnConfirma.Enabled := True;
  SpeedButton1.Enabled := True;
  Panel2.Enabled := False;
end;

procedure TBoxVeiculos.BtnPedidoClick(Sender: TObject);
begin
if cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
   Showmessage('Este veículo não é desta concessionária.')
else
 begin
 if cdsVeiculos.FieldByName('Status').AsString <> cdsVeiculos.FieldByName('Estoque').AsString then
  Showmessage('Este veículo foi transferido.' + #13 +
  'Primeiro efetue o retorno.')
 else
  begin
   if cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO' then
    begin
     showmessage('Este veículo já está em demonstração' + #13 +
     'Primeiro faça o retorno.')
    end
   else
    //abrir pedido;
    if not Assigned(BoxVendasVeiculos) then
      BoxVendasVeiculos := TBoxVendasVeiculos.Create(Self);
    BoxVendasVeiculos.Show;
//    if BoxVendasVeiculos.EmitirNotaFiscal(IntToStr(IdNumeroNotaFiscal)) then
    if (cdsVeiculos.FieldByName('Reservada_Por').AsString <> '') and
       (cdsveiculos.FieldByName('Reservada').AsDateTime <> null) then
      BoxVendasVeiculos.CriarPedido(cdsVeiculos.FieldByName('Chassi').AsString,
       cdsVeiculos.FieldByName('Id_Clientes').AsString)
    else
      BoxVendasVeiculos.CriarPedido(cdsVeiculos.FieldByName('Chassi').AsString, '0');
  end;
 end;
end;

procedure TBoxVeiculos.PrecoExit(Sender: TObject);
begin
   cdsveiculos.Post;
   Preco.Enabled := False;
   Showmessage('Dados gravados');
end;

procedure TBoxVeiculos.PreencheSerie;
var
 i: Integer;
begin
  i:=1;
  DataSourceSerienf.DataSet.Close;
  with tblserieNF do
   begin
     Close;
     SelectSql.Text := 'Select * From SerieNF where ID_Concessionaria = :id';
     ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     First;
   end;
  SerieNF.Items.Clear;
repeat
    SerieNF.Items.AddObject(DataSourceSerieNF.DataSet.FieldByName('SerieNF').AsString,
     Pointer(i));
     i:= i+1;
     DataSourceSerienf.DataSet.next;
until DataSourceSerienf.DataSet.Eof;
SerieNF.Enabled := True;
SerieNF.ItemIndex := 0;
end;

procedure TBoxVeiculos.BtnRetornoClick(Sender: TObject);
begin
if (cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)) then //or (cdsVeiculos.FieldByName('Origem').AsString = 'U' ) then
   Showmessage('Este veículo não é desta concessionária ou é veículo usado.')
else
begin
if cdsVeiculos.FieldByName('Status').AsString = 'EM TRÂNSITO' then
  showmessage('Veículo em trânsito')
else
if (cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO') or
 (cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO') or
 (cdsVeiculos.FieldByName('Status').AsString <>
 cdsVeiculos.FieldByName('Estoque').AsString) then
 begin
  case MessageDlg('Confirma emissão de NF de retorno?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
        {Preencher Serie}
        PreencheSerie;
        {Pegar Cliente}
        with tblPessoas do
        begin
         Close;
         ParamByName('id').AsInteger :=
           cdsVeiculos.FieldByName('id_clientes').AsInteger;
         Open;
        end;
        Demonstracao := False;
        Transferencia := False;
        Terceiro := False;
        Panel2.Enabled := True;
        BtnConfirma.Enabled := False;
        BtnImprimir.Enabled := False;
        SerieNF.SetFocus;
       end;
  end;
 end
else
 showmessage('Este veículo não necessita NF de retorno.')
end;
end;

procedure TBoxVeiculos.EnabledControls(Value : Boolean);
begin
  Chassi.Enabled := Value;
  Modelo.Enabled := Value;
  Cor.Enabled := Value;
  AnoFabricacao.Enabled := Value;
  AnoModelo.Enabled := Value;
  Placa.Enabled := Value;
end;

procedure TBoxVeiculos.BtnEstenderReservaClick(Sender: TObject);
begin
//  if CodigoCliente.Text = '' then
//     CodigoCliente.SetFocus;
  if (cdsveiculos.FieldByName('Reservada_por').AsString <> '') and
     (cdsVeiculos.FieldByName('Reservada').AsDateTime > DataAtual) then
  case MessageDlg('Confirma extensão?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with cdsveiculos do
           begin
             Edit;
  //           FieldByName('Id_Clientes').AsString := CodigoCliente.Text;
             fdb1.AtualizaDataAtual;
             FieldByName('Reservada').AsDateTime := DataAtual + 30;//18
//             FieldByName('Reservada_por').AsString := BoxEmpresas.UsuarioLogado;
//             showmessage(floattostr(fieldbYname('reservada').asfloat));
  //           showmessage(datetostr(dataatual));
             Post;
           end;
       end;
    end

end;

procedure TBoxVeiculos.BtnTerceiroClick(Sender: TObject);
begin
if cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
   Showmessage('Este veículo não é desta concessionária.')
else
begin
EnabledControls(True);
Panel2.Enabled := True;
CodigoDemonstracao.Enabled := True;
cdsVeiculos.Insert;
PreencheSerie;
Terceiro := True;
Modelo.SetFocus;

case MessageDlg('Confirma emissão de NF de devolução de veículo de terceiro?', mtConfirmation, [mbYes,mbNo], 0) of
   mrYes:
    begin
     if cdsVeiculos.FieldByName('Status').AsString <> 'TERCEIRO' then
      Showmessage('Este veículo não é de terceiro.')
     else
      begin
        PreencheSerie;
        BtnImprimir.Enabled := False;
        Panel2.Enabled := True;
        Terceiro := True;
        BtnConfirma.Enabled := False;
        CodigoDemonstracao.SetFocus;
      end;
   end;
 end;
end;
end;

procedure TBoxVeiculos.BtnTransferenciaClick(Sender: TObject);
begin
if cdsVeiculos.FieldByName('id_Concessionaria').AsInteger <>
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
   Showmessage('Este veículo não é desta concessionária.')
else
begin
if cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO' then
     showmessage('Este veículo está em demonstração' + #13 +
     'Primeiro faça o retorno.')
else
begin
if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
  Showmessage('Este veículo é de terceiro.' + #13 +
  'Não é possível emitir NF de transferência.')
else
 begin
  if cdsVeiculos.FieldByName('Status').AsString <> cdsVeiculos.FieldByName('Estoque').AsString then
   begin
    Showmessage('Este veículo foi transferido.' + #13 +
    'Primeiro efetue o retorno.')
   end
  else
   begin
    if cdsVeiculos.FieldByName('Origem').AsString = 'N' then
     begin
      case MessageDlg('Confirma emissão de NF de transferência?', mtConfirmation, [mbYes,mbNo], 0) of
       mrYes:
        begin
          PreencheSerie;
          TransferirPara.Enabled := True;
          if (not PreencheTransferencia) then
            Showmessage('Esta concessionária não tem para onde transferir veículos.')
          else
            begin
              BtnImprimir.Enabled := False;
              Panel2.Enabled := True;
              Transferencia := True;
              BtnConfirma.Enabled := False;
              SerieNF.SetFocus;
            end;
        end;
      end;
     end
    else
     showmessage('Não é possível emitir NF de demonstração de veículo usado.');
   end;
 end;
end;
end;
end;

procedure TBoxVeiculos.BtnValorClick(Sender: TObject);
begin
  if cdsveiculos.FieldByName('Origem').AsString = 'U' then
   begin
    case MessageDlg('Quer alterar o valor deste veículo?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes:
        begin
           showmessage(cdsVeiculos.FieldByName('Custo_ICMS').AsString);
           Preco.enabled := True;
           cdsVeiculos.Edit;
           Preco.SetFocus;
        end;
    end
   end
  else
  Showmessage('Só é possível alterar valor de veículos usados.'+#13+'Para novos utilize tabela de venda de veículos.');
end;

function TBoxVeiculos.PreencheTransferencia;
var
  i : Integer;
begin
  i := 0;
  with tblTransferencia do
  begin
    Close;
    ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if RecordCount <> 0 then
     begin
       Result := True;
       TransferirPara.Items.Clear;
       repeat
        TransferirPara.Items.AddObject(tblTransferencia.FieldByName('Transferir_Para').AsString,
          Pointer(i));
        i:= i+1;
        tblTransferencia.next;
       until tblTransferencia.Eof;
      TransferirPara.ItemIndex := 0;
     end
    else
      Result := False;
  end;
end;
//criar cfops transferencia e terceiro

procedure TBoxVeiculos.GeraNFRetorno;
var
  matriz: array[1..9] of String;
  i : integer;
  valorNF : Currency;
begin
 ValorNF := 0;
try
 if cdsVeiculos.FieldByName('Status').AsString <> cdsVeiculos.FieldByName('Estoque').AsString then
  begin
     {Dados para NF retorno de transferencia}
      IBQuery5.Open;
      Cfop1 := IBQuery5.FieldByName('CFOP1').AsString;
      Cfop2 := IBQuery5.FieldByName('CFOP2').AsString;
      DescricaoCodigoFiscal := IBQuery5.FieldByName('DESCRICAO').AsString;
      Dados_ad01 := IBQuery5.FieldByName('Dados_ad01').AsString;
      Dados_ad02 := IBQuery5.FieldByName('Dados_ad02').AsString;
      Dados_ad03 := IBQuery5.FieldByName('Dados_ad03').AsString;
      Dados_ad04 := IBQuery5.FieldByName('Dados_ad04').AsString;
      IBQuery5.Close;
      valorNF := cdsVeiculos.FieldByName('Custo').AsCurrency;
  end;
 if cdsVeiculos.FieldByName('Status').AsString = 'DEMONSTRAÇÃO' then
   begin
     {Dados para NF retorno de demonstracao}
      IBQuery3.Open;
      Cfop1 := IBQuery3.FieldByName('CFOP1').AsString;
      Cfop2 := IBQuery3.FieldByName('CFOP2').AsString;
      DescricaoCodigoFiscal := IBQuery3.FieldByName('DESCRICAO').AsString;
      Dados_ad01 := IBQuery3.FieldByName('Dados_ad01').AsString;
      Dados_ad02 := IBQuery3.FieldByName('Dados_ad02').AsString;
      Dados_ad03 := IBQuery3.FieldByName('Dados_ad03').AsString;
      Dados_ad04 := IBQuery3.FieldByName('Dados_ad04').AsString;
      IBQuery3.Close;
      valorNF := cdsVeiculos.FieldByName('Preco').AsCurrency;
   end;
 if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
   begin
     {Dados para NF retorno de terceiro}
      IBQuery7.Open;
      Cfop1 := IBQuery7.FieldByName('CFOP1').AsString;
      Cfop2 := IBQuery7.FieldByName('CFOP2').AsString;
      DescricaoCodigoFiscal := IBQuery7.FieldByName('DESCRICAO').AsString;
      Dados_ad01 := IBQuery7.FieldByName('Dados_ad01').AsString;
      Dados_ad02 := IBQuery7.FieldByName('Dados_ad02').AsString;
      Dados_ad03 := IBQuery7.FieldByName('Dados_ad03').AsString;
      Dados_ad04 := IBQuery7.FieldByName('Dados_ad04').AsString;
      IBQuery7.Close;
      valorNF := cdsVeiculos.FieldByName('Custo').AsCurrency;
   end;
    {Pega um sequence novo para a NF}
    IBQuery1.Open;
    IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
    IBQuery1.Close;
   {Pegar Cliente}
   with tblPessoas do
     begin
       Close;
       if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
         ParamByName('id').AsInteger :=
           cdsVeiculos.FieldByName('id_fornecedor').AsInteger
       else
         ParamByName('id').AsInteger :=
           cdsVeiculos.FieldByName('id_clientes').AsInteger;
       Open;
     end;
   {Pegar o número da NF}
    with tblSerieNF do
       begin
          idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
          Edit;
          FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
          Post;
          Showmessage('Número da nota fiscal gerada: ' + IntToStr(IdNumeroNotaFiscal));
          CodigoDemonstracao.Enabled := False;
          SerieNF.Enabled := False;
          BtnConfirma.Enabled := False;
          SpeedButton1.Enabled := False;
       end;
      with tblNofisa do
       begin
           Insert;
           FieldByName('id_nofisa').AsInteger := IdNofisa;
           FieldByName('Id_Concessionaria').AsInteger :=
             cdsVeiculos.FieldByName('Id_Concessionaria').AsInteger;
           if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
               FieldByName('Id_Clientes').AsInteger :=
                 cdsVeiculos.FieldByName('Id_fornecedor').AsInteger
           else
               FieldByName('Id_Clientes').AsInteger :=
                 cdsVeiculos.FieldByName('Id_clientes').AsInteger;
           FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
           FieldByName('SerieNF').AsString := SerieNF.Text;
           Fdb1.AtualizaDataAtual;
           FieldByName('Emissao').AsDateTime := DataAtual;
           if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
             FieldByName('ENT_SAI').AsString := 'S'
           else
             FieldByName('ENT_SAI').AsString := 'E';
           FieldByName('Origem').AsString := cdsveiculos.FieldByName('Origem').AsString;
           FieldByName('Base_ICMS').AsCurrency := 0;
           FieldByName('Val_Icms').AsCurrency := 0;
           {Dados para NF retorno de demonstracao}
           FieldByName('Tot_prod').AsCurrency := ValorNF;
           FieldByName('Tot_Nota').AsCurrency := ValorNF;
           if tblPessoas.FieldByName('Estado').AsString = 'RS' then
             FieldByName('Codigo_Fiscal').AsString := CFOP1
           else
             FieldByName('Codigo_fiscal').AsString := CFOP2;
           FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
           FieldByName('Frete_Tipo').AsString := '2';
           FieldByName('Dados_Ad01').AsString := Dados_ad01;
           FieldByName('Dados_Ad02').AsString := Dados_ad02;
           if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
             FieldByName('Dados_Ad03').AsString := 'Ref.nf ' +
               cdsVeiculos.FieldByName('nota_ent').AsString +
               'do dia ' +
               cdsVeiculos.FieldByName('Data_Ent').AsString
           else
             FieldByName('Dados_Ad03').AsString := 'Ref.nf ' +
               cdsVeiculos.FieldByName('nf_saida').AsString +
               'do dia ' +
               cdsVeiculos.FieldByName('Data_Sai').AsString;
           FieldByName('Dados_Ad04').AsString := Dados_ad04;
           FieldByName('Qtde_prod').AsInteger := 1;
           FieldByName('Status').AsString := 'Processado';
           Post;
       end;
    with IBQuery8 do
      begin
        Close;
        ParamByName('idModeloVeiculo').AsInteger := cdsVeiculos.FieldByName('Id_Modelo_Veiculo').AsInteger;
        Open;
      end;

      with tblSada do
       begin
           Insert;
           FieldByName('Id_Concessionaria').AsInteger :=
             cdsVeiculos.FieldByName('Id_Concessionaria').AsInteger;
           FieldByName('Id_Nofisa').AsInteger := IdNofisa;
           if tblPessoas.FieldByName('Estado').AsString = 'RS' then
             FieldByName('CFOP').AsString := CFOP1
           else
             FieldByName('CFOP').AsString := CFOP2;
           FieldByName('NF').AsInteger := IdNumeroNotaFiscal;
           FieldByName('Descricao').AsString := 'Motocicleta';
           FieldByName('Qtde').AsInteger := 1;
           FieldByName('Unidade').AsString := 'UN';
           FieldByName('NAT_OP').AsString := DescricaoCodigoFiscal;
           FieldByName('Cilindradas').AsInteger := IBQuery8.FieldByName('cilindradas').AsInteger;
           matriz[1] := 'Marca';
           matriz[2] := 'Modelo';
           matriz[3] := 'Placa';
           matriz[4] := 'Ano_Modelo';
           matriz[5] := 'Ano_Fabricacao';
           matriz[6] := 'Renavam';
           matriz[7] := 'Cor';
           matriz[8] := 'Combustivel';
           matriz[9] := 'Chassi';
           for I := 1 to 9 do
            begin
              FieldByName(matriz[i]).AsString :=
                cdsVeiculos.FieldByName(matriz[i]).AsString;
            end;
           FieldByName('Motor').AsString := cdsveiculos.FieldByName('Motor').AsString;
           FieldByName('Potencia').AsString := cdsVeiculos.FieldByName('HP').AsString;
           FieldByName('Custo').AsString := cdsVeiculos.FieldByName('Custo_Icms').AsString;
           FieldByName('Preco').AsCurrency := ValorNf;
           if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
             FieldByName('Cst').AsString := '040'
           else
             FieldByName('Cst').AsString := '060';
           if cdsVeiculos.FieldByName('Origem').AsString = 'N' then
            begin
             FieldByName('Subst').AsString := 'T';
             FieldByName('ST_Cofins').AsString := 'T';
            end;
           Post;
       end;
       with cdsveiculos do
         begin
             Edit;
             if cdsVeiculos.FieldByName('Status').AsString = 'TERCEIRO' then
               FieldByName('Status').AsString := 'DEVOLVIDO'
             else
               FieldByName('Status').AsString := FieldByName('Estoque').AsString;
             Post;
         end;

  DBGrid1.Refresh;
except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
end;
end;

procedure TBoxVeiculos.ModeloChange(Sender: TObject);
begin
cdsVeiculos.FieldByName('Combustivel').AsString :=
  tblModelos.FieldByName('Combustivel').AsString;
cdsVeiculos.FieldByName('MARCA').AsString :=
  tblModelos.FieldByName('MARCA').AsString;
cdsVeiculos.FieldByName('MODELO').AsString :=
  tblModelos.FieldByName('MODELO').AsString;
cdsVeiculos.FieldByName('HP').AsString :=
  tblModelos.FieldByName('HP').AsString;
end;

procedure TBoxVeiculos.CodigoClienteExit(Sender: TObject);
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
                   end
                 else
                  if not ValidaCliente(tblPessoas) then
                      CodigoCliente.SetFocus
                  else
                   begin
                    NomeCliente.Text := FieldbyName('Nome').Text;
                    DescontoCliente := FieldByName('Desconto').AsString;
                   end;
                end;
              end;
          end;
      end;
end;

procedure TBoxVeiculos.CodigoDemonstracaoExit(Sender: TObject);
begin
    if CodigoDemonstracao.Text = '' then
       CodigoDemonstracao.Text := '0';
    idDemonstracao := StrToInt(CodigoDemonstracao.Text);
    if StrtoInt(CodigoDemonstracao.Text) = 0 then
      begin
       SpeedButton1.Click;
       CodigoDemonstracao.SetFocus;
      end
    else
      begin
        with tblPessoas do
          begin
           if idDemonstracao<>0 then
             begin
              Close;
              parambyname( 'id' ).AsInteger := idDemonstracao;
              Open;
              if recordcount = 0  then
                begin
                 showmessage('Cliente inexistente.');
                 CodigoDemonstracao.SetFocus;
                end
              else
                begin
                 if not FieldByName('Cliente').AsBoolean then
                   begin
                    showmessage('Esta sequência não pertence à um cliente.');
                    CodigoDemonstracao.SetFocus;
                   end
                 else
                 if ValidaCliente(tblPessoas) then
                  begin
                   NomeDemonstracao.Text := FieldbyName('Nome').Text;
                   SerieNF.SetFocus;
                  end
                 else
                  CodigoDemonstracao.SetFocus;
                end;
             end;
          end;
      end;
end;

procedure TBoxVeiculos.Reservar;
begin
  //  Showmessage(FormatDateTime('dd/mm/yy - hh:nn:ss',now));
  //  Showmessage(FormatDateTime('dd/mm/yy - hh:nn:ss',DataAtual));
  //  Showmessage(FormatDateTime('dd/mm/yy - hh:nn:ss',cdsVeiculos.FieldByName('Reservada').AsDateTime));

  if CodigoCliente.Text = '' then
     CodigoCliente.SetFocus;
  if (cdsveiculos.FieldByName('Reservada_por').AsString <> '') and
     (cdsVeiculos.FieldByName('Reservada').AsDateTime > DataAtual) then
    Showmessage('Este veículo está reservado.')
  else
  case MessageDlg('Confirma reserva?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with cdsveiculos do
           begin
             Edit;
             FieldByName('Id_Clientes').AsString := CodigoCliente.Text;
             fdb1.AtualizaDataAtual;
             FieldByName('Reservada').AsDateTime := DataAtual + 1;

//             FieldByName('Reservada').AsDateTime := Now + IncHour(now, 1) ;//IncMinute(Now, 30);
//             Showmessage(FormatDateTime('dd/mm/yy - hh:nn:ss',FieldByName('Reservada').AsDateTime));

             FieldByName('Reservada_por').AsString := BoxEmpresas.UsuarioLogado;
//             showmessage(floattostr(fieldbYname('reservada').asfloat));
  //           showmessage(datetostr(dataatual));
             Post;
           end;
       end;
    end
end;

procedure TBoxVeiculos.SerieNFExit(Sender: TObject);
begin
  if SerieNF.Text = '' then
    SerieNF.SetFocus
  else
   begin
    with tblSerieNF do
     begin
       Close;
       SelectSql.Text := 'Select * From SerieNF where SerieNF = :idSerie and ID_Concessionaria = :id';
       ParamByName('idSerie').AsString := SerieNF.Text;
       ParamByName('id').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
   BtnConfirma.Enabled := True;
   if Transferencia then
     TransferirPara.SetFocus
   else
    BtnConfirma.SetFocus;
   end;
end;

procedure TBoxVeiculos.SpeedButton1Click(Sender: TObject);
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
        CodigoDemonstracao.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeDemonstracao.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoDemonstracao.SetFocus;
end;

procedure TBoxVeiculos.SpeedButton2Click(Sender: TObject);
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
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxVeiculos.tblVeiculos1AfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxVeiculos.tblVeiculos1AfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxVeiculos.TransferirParaExit(Sender: TObject);
begin
  with tblTransferencia1 do
   begin
      Close;
      ParamByName('idTransferirPara').AsString :=
        TransferirPara.Text;
      Open;
   end;
  CodigoDemonstracao.Text := tblTransferencia1.FieldByName('Id_Clientes').AsString;
  with tblPessoas do
   begin
     Close;
     Parambyname('id').AsInteger := tblTransferencia1.FieldByName('Id_Clientes').AsInteger;
     Open;
     NomeDemonstracao.Text := tblPessoas.FieldByName('Nome').Text;
   end;
  if StrToInt(CodigoDemonstracao.Text) = 0 then
   begin
     Showmessage('Preecha para quem quer transferir o veículo?');
     TransferirPara.SetFocus;
   end;
end;

procedure TBoxVeiculos.cdsPesquisaAfterPost(DataSet: TDataSet);
begin
 cdsVeiculos.applyUpdates(0);
 Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxVeiculos.cdsVeiculosCalcFields(DataSet: TDataSet);
//var
// DiasEstoque : Integer;
begin
//   DiasEstoque := Decodate((DataAtual - CdsVeiculos.FieldByName('Data_ent').AsDateTime),nAno,nMes,NDia);
 //  CdsVeiculos.FieldByName('DIASESTOQUE').AsString := IntToStr(DiasEstoque);
//  CdsVeiculos.FieldByName('DiasEstoque').AsInteger := 10;
   CdsVeiculos.FieldByName('DiasEstoque').AsInteger := DaysBetween(DataAtual,CdsVeiculos.FieldByName('Data_ent').AsDateTime);
end;

procedure TBoxVeiculos.ComboBox1Change(Sender: TObject);
begin
{  case ComboBox1.ItemIndex of
   0 : begin
        with cdsveiculos do
         begin
           Close;
           //SelectSql.Clear;
           CommandText := 'Select * from veiculos';//SelectSql.Add('Select * from veiculos');
           Open;
         end;
       end;
   1 : begin
        with cdsveiculos do
         begin
           Close;
//           SelectSql.Clear;
  //         SelectSql.Add('Select * from veiculos where reservada <>'+ '''' +
   //          '01.01.1000' +'''');
           CommandText := ('Select * from veiculos where reservada <>'+ '''' +
             '01.01.1000' +'''');
           Open;
         end;
       end;
  end;
  if ComboBox1.ItemIndex > 1 then
    begin
       with cdsveiculos do
          begin
            close;
//            SelectSql.Clear;      select * from GET_STATUS (:ID)
//            SelectSql.Add('Select * from veiculos where Status = :IdStatus');
            CommandText := 'Select * from veiculos where Status = :IdStatus';
//            Params[0].AsString := ComboBox1.Text;
//            ParamByName('IdStatus').AsString := ComboBox1.Text;
            Open
          end;
     end;
  DbGrid1.Refresh;}
end;

procedure TBoxVeiculos.DataSetProvider1UpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  ShowMessage('Erro de gravação'+ E.Message);
end;

procedure TBoxVeiculos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  begin
    DBGrid1.Canvas.Font.Style := [];
    if   (cdsVeiculos.FieldByName('Reservada').AsDateTime < DataAtual) then
     DBGrid1.Canvas.Font.Color := clBlack;
    if ((DataAtual - (cdsVeiculos.FieldByName('Data_ent').AsDateTime)) > 90)
        and (cdsVeiculos.FieldByName('Origem').AsString = 'N') or
       ((DataAtual - (cdsVeiculos.FieldByName('Data_ent').AsDateTime)) > 180)
        and (cdsVeiculos.FieldByName('Origem').AsString = 'U') then
      begin
         DBGrid1.Canvas.Font.Style := [fsBold];
         DBGrid1.Canvas.Font.Color := clLime;
      end;
    if   (cdsVeiculos.FieldByName('Reservada').AsDateTime > DataAtual) then
     begin
       if   (cdsVeiculos.FieldByName('Reservada').AsDateTime > DataAtual+1) then
        begin
          DBGrid1.Canvas.Font.Color := clRed;
          DBGrid1.Canvas.Font.Style := [fsBold];
        end
       else
        begin
         DBGrid1.Canvas.Font.Color := clRed;
         DBGrid1.Canvas.Font.Style := [];
        end;
     end;
    if   (cdsVeiculos.FieldByName('Com_avaria').AsBoolean) then
     DBGrid1.Canvas.Font.Color := clFuchSia;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if cdsVeiculos.FieldByName('Preco').AsInteger  = 0 then
     BtnPedido.Enabled := False
  else
     BtnPedido.Enabled := True;


end;

procedure TBoxVeiculos.DBGrid1TitleClick(Column: TColumn);
begin
   cdsVeiculos.IndexFieldNames := Column.FieldName;
   cdsVeiculos.First;
end;

procedure TBoxVeiculos.FecharDs;
begin
  DataSourceVeiculos.Dataset.Close;
  DataSourceStatus.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourceSerienf.Dataset.Close;
  DataSourceSada.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceModelosVeiculos.Dataset.Close;
  IBQuery8.Close;
end;

procedure TBoxVeiculos.AbrirDs;
begin
 DataSourceModelosVeiculos.Dataset.Open;
 DataSourceVeiculos.Dataset.Open;
 DataSourcePessoas.Dataset.Open;
 DataSourceSerienf.Dataset.Open;
 DataSourceSada.Dataset.Open;
 DataSourceNofisa.Dataset.Open;
 cdsVeiculos.IndexFieldNames := 'Chassi';
 cdsVeiculos.First;
 end;

end.

