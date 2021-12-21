unit OperacoesPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, DB, Buttons, ToolWin,
  IBCustomDataSet, Mask, JvExMask, JvToolEdit, JvDBControls, Grids, DBGrids,
  JvMaskEdit, IBQuery, JvExControls, JvDBLookup, frxClass, frxDBSet, frxRich,
  frxCross;

type
  TBoxPosVenda = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DataSourceAtendimento: TDataSource;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnDesconto: TBitBtn;
    BtnForma: TBitBtn;
    BtnConclui: TBitBtn;
    tblAtendimento: TIBDataSet;
    Panel2: TPanel;
    Label1: TLabel;
    Marca: TDBEdit;
    Label2: TLabel;
    Modelo: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Chassi: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Cor: TDBEdit;
    Label14: TLabel;
    Status: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DataSaida: TJvDBDateEdit;
    DataEntrada: TJvDBDateEdit;
    BtnEdita: TBitBtn;
    Bevel2: TBevel;
    Panel3: TPanel;
    Label9: TLabel;
    FormaPagamento: TDBLookupComboBox;
    ValorDevido: TJvDBMaskEdit;
    Label17: TLabel;
    DBGrid2: TDBGrid;
    Vencimento: TJvDBDateEdit;
    BtnNovoPagamento: TBitBtn;
    BtnConfirmaPagamento: TBitBtn;
    BtnExcluiPagamento: TBitBtn;
    BtnConcluiPagamento: TBitBtn;
    Label18: TLabel;
    tblAtendimentoRecebimento: TIBDataSet;
    DataSourceAtendimentoRecebimento: TDataSource;
    tblFormasPagamento: TIBDataSet;
    tblFormasPagamentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasPagamentoFORMA_PAGAMENTO: TIBStringField;
    tblFormasPagamentoCOEFICIENTE: TFMTBCDField;
    tblFormasPagamentoPRAZO: TIBStringField;
    tblFormasPagamentoVEICULOS: TIBStringField;
    tblFormasPagamentoPECAS: TIBStringField;
    tblFormasPagamentoPOSVENDA: TIBStringField;
    tblFormasPagamentoCRECEBER: TIBStringField;
    tblFormasPagamentoCPAGAR: TIBStringField;
    DataSourceFormaPagamentos: TDataSource;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
    IBQuery1: TIBQuery;
    Atendimento: TEdit;
    CodigoCliente: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label19: TLabel;
    NomeCliente: TJvDBMaskEdit;
    CodigoMecanico: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label20: TLabel;
    NomeMecanico: TJvDBMaskEdit;
    Bevel1: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    TotalServicos: TDBEdit;
    Desconto: TDBEdit;
    BtnSalvar: TBitBtn;
    tblAtendimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoID_CLIENTES: TIntegerField;
    tblAtendimentoMARCA: TIBStringField;
    tblAtendimentoMODELO: TIBStringField;
    tblAtendimentoANO_FABRICACAO: TIBStringField;
    tblAtendimentoANO_MODELO: TIBStringField;
    tblAtendimentoCHASSI: TIBStringField;
    tblAtendimentoKM: TIntegerField;
    tblAtendimentoDATA_ENTRADA: TDateField;
    tblAtendimentoDATA_SAIDA: TDateField;
    tblAtendimentoORC_OS: TIBStringField;
    tblAtendimentoID_MECANICO: TIntegerField;
    tblAtendimentoCOR: TIBStringField;
    tblAtendimentoPLACA: TIBStringField;
    tblAtendimentoSTATUS: TIBStringField;
    tblAtendimentoMEMO: TBlobField;
    tblAtendimentoDESCONTO: TIBBCDField;
    tblAtendimentoRecebimentoID_ATENDIMENTO_RECEBIMENTO: TIntegerField;
    tblAtendimentoRecebimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblAtendimentoRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblAtendimentoRecebimentoVENCIMENTO: TDateField;
    tblCategoria: TIBDataSet;
    DataSourceCategoria: TDataSource;
    tblCategoriaID_CATEGORIA: TIntegerField;
    tblCategoriaDESCRICAO: TIBStringField;
    tblCategoriaPRECO: TIBBCDField;
    tblCategoriaPRECO_GAR: TIBBCDField;
    tblAtendimentoID_CATEGORIA: TIntegerField;
    IBQuery1ID_ATENDIMENTO: TLargeintField;
    SpeedButton3: TSpeedButton;
    BtnImprimir: TBitBtn;
    AnoModelo: TJvDBMaskEdit;
    tblAtendimentoTipo: TIBDataSet;
    DataSourceAtendimentoTipo: TDataSource;
    Label24: TLabel;
    tblAtendimentoTipoID_ATENDIMENTO_TIPO: TIntegerField;
    tblAtendimentoTipoDESCRICAO: TIBStringField;
    Orc_Os: TJvDBLookupCombo;
    tblAtendimentoPecas: TIBDataSet;
    tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField;
    tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoPecasID_ATENDIMENTO: TIntegerField;
    tblAtendimentoPecasID_PECAS: TIntegerField;
    tblAtendimentoPecasQUANTIDADE: TIntegerField;
    tblAtendimentoPecasPRECO: TIBBCDField;
    tblAtendimentoPecasSTATUS: TIBStringField;
    DataSourceAtendimentoPecas: TDataSource;
    tblAtendimentoServicos: TIBDataSet;
    tblAtendimentoServicosID_ATENDIMENTO_SERVICOS: TIntegerField;
    tblAtendimentoServicosID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoServicosID_ATENDIMENTO: TIntegerField;
    tblAtendimentoServicosID_TMO: TIntegerField;
    tblAtendimentoServicosTEMPO: TIBBCDField;
    tblAtendimentoServicosPRECO: TIBBCDField;
    DataSourceAtendimentoServicos: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    Categoria: TJvDBLookupCombo;
    IBQuery2ID_PECAS: TIntegerField;
    IBQuery4ID_TMO: TIntegerField;
    IBQuery3ID_CATEGORIA: TIntegerField;
    IBQuery4ID_CATEGORIA: TIntegerField;
    IBQuery4CODIGO: TIBStringField;
    IBQuery4DESCRICAO: TIBStringField;
    IBQuery4TEMPO: TIBBCDField;
    IBQuery4TEMPO_GAR: TIBBCDField;
    IBQuery4REV_GRAT: TIBStringField;
    IBQuery3DESCRICAO: TIBStringField;
    IBQuery3PRECO: TIBBCDField;
    IBQuery3PRECO_GAR: TIBBCDField;
    IBQuery2CODIGO: TIBStringField;
    IBQuery2DESCRICAO: TIBStringField;
    IBQuery2GRUPO: TIBStringField;
    IBQuery2ESPECIAL: TIBStringField;
    IBQuery2COD_PROC: TIBStringField;
    IBQuery2COD_TRIB: TIBStringField;
    IBQuery2UNIDADE: TIBStringField;
    IBQuery2SUBSTITUTO: TIBStringField;
    IBQuery2FORA_LINHA: TIBStringField;
    IBQuery2MIN_PEDIDO: TIntegerField;
    IBQuery2QTD_PEDIDA: TIntegerField;
    IBQuery2ICMS: TIBBCDField;
    IBQuery2PRECO: TIBBCDField;
    IBQuery2PPS: TIBBCDField;
    IBQuery2PRECO_GAR: TIBBCDField;
    IBQuery2IPI: TIBBCDField;
    IBQuery2LISTA: TIBStringField;
    IBQuery2SUBST_TRIB: TIBStringField;
    IBQuery2ST_COFINS: TIBStringField;
    IBQuery2NOVASUBS: TIBStringField;
    IBQuery2CFOP1: TIBStringField;
    IBQuery2CFOP2: TIBStringField;
    IBQuery2NCM: TIBStringField;
    IBQuery2ORIGINAL: TIBStringField;
    IBQuery2CST: TIBStringField;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    IBQuery5: TIBQuery;
    tblAtendimentoTOTAL_PECAS: TIBBCDField;
    tblAtendimentoTOTAL_SERVICOS: TIBBCDField;
    TotalPecas: TDBEdit;
    Label25: TLabel;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery5VALOR: TIBBCDField;
    IBQuery6VALOR: TIBBCDField;
    tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField;
    IBQuery7VALOR: TIBBCDField;
    tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField;
    Quilometragem: TJvDBMaskEdit;
    BtnConsulta: TBitBtn;
    ReportOS: TfrxReport;
    tblRelAtendimento: TfrxDBDataset;
    tblRelConcessionaria: TfrxDBDataset;
    tblRelPessoas: TfrxDBDataset;
    Observacoes: TDBMemo;
    ReportOrcamento: TfrxReport;
    tblRelAtendimentoPecas: TfrxDBDataset;
    tblRelAtendimentoServicos: TfrxDBDataset;
    tblRelAtendimentoRecebimento: TfrxDBDataset;
    TotalLiquido: TDBEdit;
    Label26: TLabel;
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
    DataSourcePecas2: TDataSource;
    tblTMO2: TIBDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBStringField20: TIBStringField;
    DataSourceTMO2: TDataSource;
    tblAtendimentoServicosSERVICO: TStringField;
    Label27: TLabel;
    DBText2: TDBText;
    Label28: TLabel;
    DBText1: TDBText;
    Label29: TLabel;
    DBText3: TDBText;
    BtnAutoriza: TBitBtn;
    tblAutorizacao: TIBDataSet;
    tblAutorizacaoID_AUTORIZACAO: TIntegerField;
    tblAutorizacaoID_VENDA: TIntegerField;
    tblAutorizacaoUSUARIO: TIBStringField;
    tblAutorizacaoDATA: TDateField;
    tblAutorizacaoORIGEM: TIBStringField;
    DataSourceAutorizacao: TDataSource;
    DataSource1: TDataSource;
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
    Panel4: TPanel;
    BtnPecas: TBitBtn;
    BtnServicos: TBitBtn;
    BtnConclui2: TBitBtn;
    CodigoAtendente: TMaskEdit;
    Label23: TLabel;
    SpeedButton4: TSpeedButton;
    Label30: TLabel;
    NomeAtendente: TJvDBMaskEdit;
    tblAtendimentoID_ATENDENTE: TIntegerField;
    Label3: TLabel;
    AnoFabricacao: TJvDBMaskEdit;
    Label13: TLabel;
    Placa: TJvDBMaskEdit;
    tblPecasFabrica: TIBDataSet;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaDESCRICAO: TIBStringField;
    tblPecasFabricaCODIGO_NOVO: TIBStringField;
    tblPecasFabricaORIGEM: TIBStringField;
    tblPecasFabricaCUSTO: TIBBCDField;
    tblPecasFabricaPESO: TIBStringField;
    tblPecasFabricaQTDE_EMBAL: TIBStringField;
    tblPecasFabricaIPI: TIBBCDField;
    tblPecasFabricaREAJUSTE: TIBBCDField;
    tblPecasFabricaPRECO_GARAN: TIBBCDField;
    tblPecasFabricaPPS: TIBBCDField;
    tblPecasFabricaRESERVADO: TIBStringField;
    tblPecasFabricaNCM: TIBStringField;
    DataSourcePecasFabrica: TDataSource;
    tblPecas2CST: TIBStringField;
    tblPecas2CODIGO_SGS: TIntegerField;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
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
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblAtendimentoPecasPRECO_TABELA: TIBBCDField;
    tblAtendimentoPecasDESCRICAO: TIBStringField;
    tblAtendimentoPecasCODIGO: TIBStringField;
    procedure AbrirDs;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ObservacoesKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPecasClick(Sender: TObject);
    procedure BtnServicosClick(Sender: TObject);
    procedure tblAtendimentoAfterCancel(DataSet: TDataSet);
    procedure tblAtendimentoAfterPost(DataSet: TDataSet);
    procedure BtnDescontoClick(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure BtnConcluiPagamentoClick(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure CodigoMecanicoExit(Sender: TObject);
    procedure BtnEditaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AtendimentoExit(Sender: TObject);
    procedure EnableDisableButtons(Value: Boolean; Value1: Boolean; value2: Boolean);
    procedure BtnConclui2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Orc_OsChange(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnNovoPagamentoClick(Sender: TObject);
    procedure EnableDisableControls(Value: Boolean; Value1: Boolean);
    procedure BtnConfirmaPagamentoClick(Sender: TObject);
    procedure BtnExcluiPagamentoClick(Sender: TObject);
    procedure VencimentoExit(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure BuscaNomeCliente;
    procedure BuscaNomeMecanico;
    procedure BuscaNomeAtendente;
    procedure ShowDuplicatas;
    procedure BtnAutorizaClick(Sender: TObject);
    procedure CodigoAtendenteExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    idCliente : Integer;
    idPeca : Integer;
    idAtendente : Integer;
    idMecanico : Integer;
    idAtendimento : Integer;
//    Fabricante : Boolean;
    newOrc_os : Boolean;
    Orcamento : Integer;
    Editar : Boolean;
    procedure Edita;
    procedure AtualizaServicos;
    procedure AtualizaPecas;
    procedure Atualizar;
    procedure CalculaTotais;
    { Public declarations }
  end;

var
  Retorno : String;
  mStatus : String;
  DescontoCliente : String;
  BoxPosVenda: TBoxPosVenda;

implementation

uses FDB, OperacoesPosVendaPecas, OperacoesPosVendaServicos, Biblioteca,
  Empresas, BoxDesconto;

{$R *.dfm}

procedure TBoxPosVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxPosVenda := nil;
  BoxPosVendaPecas := nil;
  BoxPosVendaServicos := nil;
end;

procedure TBoxPosVenda.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourceAtendimento.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxPosVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
{  EnableDisableButtons(True);      }
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

procedure TBoxPosVenda.FormShow(Sender: TObject);
begin
  EnableDisableButtons(True,False, False);
  Panel2.Enabled := False;
  BtnServicos.Enabled := False;
  BtnPecas.Enabled := False;
  Panel3.Enabled := False;
  AbrirDs;
end;

procedure TBoxPosVenda.ObservacoesKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TBoxPosVenda.Orc_OsChange(Sender: TObject);
var
  i: Integer;
begin
 {se ocorrer troca de orcamento para OS debitar quantidade de pecas;}
 if (orcamento = 1) and (tblAtendimento.FieldByName('Orc_os').AsInteger <> 1) and
  ( (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso16.AsString = 'T') ) then
   begin
     Showmessage('Não é possível alterar de Orçamento para OS.Abra outro atendimento.');
     tblAtendimento.FieldByName('Orc_os').AsInteger := 1;
     Orc_Os.SetFocus;
//    case MessageDlg('Alterar de Orçamento para OS?', mtConfirmation, [mbYes,mbNo], 0) of
{     mrYes:
     begin
     {Diminuir pecas ao estoque}
{      with tblAtendimentoPecas do
      begin
       ParamByName('idAtendimento').AsInteger := idAtendimento;
       Open;
       Last;
       First;
       for i := 0 to tblAtendimentoPecas.RecordCount - 1 do
        begin
         idPeca := FieldByName('id_pecas').AsInteger;
         with tblPecasEstoque do
          begin
           Close;
           ParamByName('IdPecas').AsInteger := IdPeca;
           ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           Open;
           Edit;
           FieldByName('Estoque').AsInteger := FieldByName('Estoque').AsInteger -
            tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
           FieldByName('EstoqOs').AsInteger := FieldByName('EstoqOs').AsInteger +
            tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
           Post;
          end;
         with tblPecasMovimentacao do
          begin
           Open;
           Insert;
           FieldByName('Id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Id_Pecas').AsInteger :=  idPeca;
           FieldByName('Movimento').AsString := 'S';
           FieldByName('Quantidade_Movimentada').AsString :=
             tblAtendimentoPecas.FieldByName('Quantidade').AsString;
           FieldByName('Quantidade_Atual').AsInteger := tblPecasEstoque.FieldByName('Estoque').AsInteger;
           FieldByName('Custo_Medio').AsCurrency :=
            tblPecasEstoque.FieldByName('CST_Medio').AsCurrency;
           FieldByName('Data').AsDateTime := DataAtual;
           Post;
           Close;
          end;
         tblAtendimentoPecas.Next;
        end;
        Atualizar;
      end;
     end;
     mrNo:
     begin
       tblAtendimento.FieldByName('Orc_os').AsInteger := 1;
       Orc_Os.SetFocus;
     end; 
    end;}
   end
 else
 begin
 {se ocorrer troca de Os para Orcamento não permitir}
  if (not newOrc_os) and (tblAtendimento.FieldByName('Orc_os').AsInteger = 1) then
   begin
    Showmessage('Não é possível alterar uma OS para orçamento.');
    tblAtendimento.FieldByName('Orc_os').AsInteger := 2;
    Orc_os.SetFocus;
   end
  else
    Atualizar;
 end;
end;

procedure TBoxPosVenda.Atualizar;
begin
  if DataSourceAtendimento.State in [dsEdit] then
    begin
      {SE TIVER REGISTRO DE PECAS OU MO AVISAR DA TROCA E RODAR ROTINA DE ATUALIZACAO}
      With tblAtendimentoPecas do
      begin
        ParamByName('idAtendimento').AsInteger := idAtendimento;
        Open;
        if RecordCount <> 0 then
         begin
          AtualizaPecas;
          tblAtendimento.Post;
          tblAtendimento.Edit;
          showmessage('Os valores de peças'+#13+'foram atualizados');
         end;
        Close;
      end;
      With tblAtendimentoServicos do
      begin
        ParamByName('idAtendimento').ASInteger := idAtendimento;
        Open;
        if RecordCount <> 0 then
         begin
          AtualizaServicos;
          tblAtendimento.Post;
          tblAtendimento.Edit;
          showmessage('Os valores de servico'+#13+'foram atualizados');
         end;
        Close;
      end;
    end;
end;

procedure TBoxPosVenda.AtualizaPecas;
var
  i: Integer;
begin
 with tblAtendimentoPecas do
  begin
   Last;
   First;
   for i := 0 to tblAtendimentoPecas.RecordCount -1 do
   begin
    Edit;
    IbQuery2.ParamByName('idPecas').AsInteger := FieldByName('id_pecas').AsInteger; //tblPecas
    IbQuery2.Open;
    if tblAtendimento.FieldByName('Orc_OS').AsInteger = 3 then //Os-Garantia
     FieldByName('Preco').AsFloat := IbQuery2.FieldByName('Preco_Gar').AsFloat
    else  // Os-Normal - Orçamento - Os-Cortesia
     FieldByName('Preco').AsFloat := IbQuery2.FieldByName('Preco').AsFloat;
    IbQuery2.Close;
    Post;
    Next;
   end;
  end;
end;

procedure TBoxPosVenda.AtualizaServicos;
var
  i: Integer;
begin
  tblAtendimentoServicos.Last;
  with tblAtendimentoServicos do
  begin
   Last;
   First;
   for i := 0 to tblAtendimentoServicos.RecordCount -1 do
    begin
     Edit;
     IbQuery3.ParamByName('idCategoria').AsInteger :=
      tblAtendimento.FieldByName('id_Categoria').AsInteger; //tblCategoria
     IbQuery4.ParamByName('idTMO').AsInteger :=
      FieldByName('id_TMO').AsInteger; //tblTMO
     IbQuery4.Open; //tblTMO
     IbQuery3.Open; //tblCategoria
     if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger = 3 then //Os-Garantia
      begin
        tblAtendimentoServicos.FieldByName('Tempo').AsFloat :=
           IbQuery4.FieldByName('Tempo_Gar').AsFloat;
        tblAtendimentoServicos.FieldByName('Preco').AsFloat :=
           IbQuery3.FieldByName('Preco_Gar').AsFloat;
      end
     else  // Os-Normal - Orçamento - Os-Cortesia
      begin
        tblAtendimentoServicos.FieldByName('Tempo').AsFloat :=
           IbQuery4.FieldByName('Tempo').AsFloat;
        tblAtendimentoServicos.FieldByName('Preco').AsFloat :=
           IbQuery3.FieldByName('Preco').AsFloat;
      end;
     IbQuery4.Close;
     IbQuery3.Close;
     Post;
     Next;
    end;
  end;
end;

procedure TBoxPosVenda.SpeedButton1Click(Sender: TObject);
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

procedure TBoxPosVenda.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Mecânicos','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Mecanico = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoMecanico.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeMecanico.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoMecanico.SetFocus;
end;

procedure TBoxPosVenda.SpeedButton3Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Atendimento','Atendimento',
      ['Id_Clientes','Id_Atendimento','Modelo','Id_Concessionaria','Placa','Chassi'],
      ['Cliente:','Sequência:','Modelo:','Concessionária:','Placa:','Chassi:'],
      'Id_Atendimento','Id_Atendimento',Fdb1.SQLConnection1,'status <>','a','idconcessionaria');
     with tblAtendimento do
     begin
        Close;
        Parambyname('idAtendimento').AsInteger := StrToInt(Retorno);
        PAramByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        Atendimento.Text := tblAtendimento.FieldByName('Id_Atendimento').Text;
     end;
     Atendimento.SetFocus;
end;

procedure TBoxPosVenda.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Atendentes/Vendedores','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoAtendente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeAtendente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoAtendente.SetFocus;
end;

procedure TBoxPosVenda.tblAtendimentoAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPosVenda.tblAtendimentoAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxPosVenda.VencimentoExit(Sender: TObject);
begin
  BtnConfirmaPagamento.SetFocus;
end;

procedure TBoxPosVenda.BtnAutorizaClick(Sender: TObject);
begin
  case MessageDlg('Confirma autorização de faturamento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblAtendimento do
           begin
            Edit;
            FieldByName('Status').AsString := 'Autorizado';
            Post;
           end;
         with tblAutorizacao do
         begin
           Open;
           Edit;
           FieldByName('Id_venda').AsInteger :=
             tblAtendimento.FieldByName('id_Atendimento').AsInteger;
           FieldByName('Usuario').AsString := DataSource1.DataSet.FieldByName('Login').AsString;
           FieldByName('Data').AsDateTime := DataAtual;
           FieldByName('Origem').AsString := 'Pós-venda';
           Post;
           Close;
         end;  
         Showmessage('Faturamento autorizado');
      end;
  end;
end;

procedure TBoxPosVenda.BtnConclui2Click(Sender: TObject);
begin
  BtnServicos.Enabled := False;
  BtnPecas.Enabled := False;
  BtnConclui2.Enabled := False;
  EnableDisableButtons(True,False, False);
  Panel2.Enabled := False;
  BtnNovo.SetFocus;
end;

procedure TBoxPosVenda.BtnConcluiClick(Sender: TObject);
var
  i: Integer;
begin
if tblAtendimento.FieldByName('Orc_os').AsString = '1' then
  Showmessage('Isso não é uma OS, encerramento cancelado.')
else
 if tblAtendimento.FieldByName('Status').AsString <> 'Em edição' then
   Showmessage('Não há venda em edição.')
 else
   case MessageDlg('Depois de encerrado e aprovado,' +#13+'o atendimento não poderá mais ser reaberto.'
     +#13+'Confirma encerramento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
  begin
  if Atendimento.Text <> '' then
    begin
     mStatus := 'Aprovado';
     with tblAtendimentoPecas do
      begin
      Open;
      Last;
      First;
      for i := 0 to RecordCount - 1 do
       begin
        if FieldByName('Status').AsString = 'Pendente' then
          mStatus := 'Pendente';
       end;
       tblAtendimentoPecas.Next;
      end;
     CalculaTotais;
     with tblAtendimentoRecebimento do
       begin
         while not eof do
          begin
            if FieldByName('Vencimento').AsDateTime > DataAtual then
              if //(not FaturaComDebitobricante) and //(not tblPessoas.FieldByName('Fabricante').AsBoolean ) and
                 FDB1.ClienteComDebito(StrToInt(CodigoCliente.Text)) then
               begin
                Showmessage('Este cliente tem débitos em aberto.');
                mStatus := 'Pendente';
               end;
            Next;
          end;
       end;

     with tblAtendimento do
     begin
       if (FieldByName('Valor_Liquido_Venda').AsFloat = 0) then //or
       //   (FieldByName('Orc_os').AsInteger = 4) then
            mStatus := 'Fechado';
       Edit;
       FieldByName('Status').AsString := mStatus;
       Post;
       if mStatus = 'Aprovado' then
         Showmessage('Atendimento finalizado e aprovado' +
           #13 + 'Emita o faturamento')
       else
        if mStatus = 'Fechado' then
         Showmessage('Atendimento fechado.' + #13 + 'Sem valor à cobrar.')
        else
         Showmessage('Atendimento finalizado e pendente' +
           #13 +'Solicite autorização.');
     end;
      BtnNovo.SetFocus;
    end
  else
    begin
     Showmessage('Edite ou inclua um atendimento.');
     btnNovo.SetFocus;
    end;
  end;
end;
end;

procedure TBoxPosVenda.CalculaTotais;
begin
    {Somando total_pecas}{preco}
    IBQuery5.Close;
    IBQuery5.Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
    IBQuery5.Open;
    With tblAtendimento do
    begin
     Edit;
     FieldByName('Total_Pecas').AsCurrency := IBQuery5.FieldByName('Valor').AsCurrency;
     Post;
    end;
    {Somando total_pecas_tabela}{preco_tabela}
    IBQuery6.Close;
    IBQuery6.Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
    IBQuery6.Open;
    With tblAtendimento do
    begin
     Edit;
     FieldByName('Total_Pecas_Tabela').AsCurrency := IBQuery6.FieldByName('Valor').AsCurrency;
     if (StrToFloat(FieldByName('Total_Pecas').AsString) -
        StrToFloat(FieldByName('Desconto').AsString)
         < StrToFloat(FieldByName('Total_Pecas_Tabela').AsString)*
         (1-(StrToFloat(DescontoPadraoPecas)/100))) and //desconto padrão
         (StrToFloat(FieldByName('Total_Pecas').AsString) -
        StrToFloat(FieldByName('Desconto').AsString)
          < StrToFloat(FieldByName('Total_Pecas_Tabela').AsString)*
         (1-(StrToFloat(DescontoCliente)/100)))then //desconto de cada cliente
           begin
             mStatus := 'Pendente';
           end;
    Post;
    {somando servicos}
    IBQuery7.Close;
    IBQuery7.Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
    IBQuery7.Open;
    With tblAtendimento do
    begin
     Edit;
     FieldByName('Total_Servicos').AsCurrency := IBQuery7.FieldByName('Valor').AsCurrency;
     FieldByName('Valor_Liquido_Venda').AsCurrency :=
        FieldByName('Total_Pecas').AsCurrency +
        FieldByName('Total_Servicos').AsCurrency -
        FieldByName('Desconto').AsCurrency;
     Post;
    end;
    end;
end;

procedure TBoxPosVenda.BtnConcluiPagamentoClick(Sender: TObject);
begin
  EnableDisableButtons(True,False, False);
  Panel3.Enabled := False;
  ToolBar1.Enabled := True;
  BtnConclui.SetFocus;
end;

procedure TBoxPosVenda.BtnConfirmaPagamentoClick(Sender: TObject);
begin
if (INT(tblAtendimentoRecebimento.fieldByName('Vencimento').AsDateTime) < INT(DataAtual)) then
  Showmessage('Data de vencimento inválida')
else
  with tblAtendimentoRecebimento do
    begin
      FieldByName('Id_Atendimento').AsInteger := idAtendimento;
      FieldByName('Id_formas_pagamento').AsInteger :=
         tblFormasPagamento.FieldByName('Id_Formas_Pagamento').AsInteger;
      Post;
    end;
    BtnNovoPagamento.SetFocus;
end;

procedure TBoxPosVenda.BtnConsultaClick(Sender: TObject);
begin
  NewOrc_Os := False;
  EnableDisableButtons(False,False, True);
  Editar := False;
  BtnSalvar.Enabled := False;
  Panel2.Enabled := True;
  BtnServicos.Enabled := True;
  BtnConsulta.Enabled := True;
  BtnNovo.Enabled := True;
  BtnEdita.Enabled := True;
  BtnPecas.Enabled := True;
  BtnConclui2.Enabled := False;
  Atendimento.Enabled := True;
  SpeedButton3.Enabled := True;
  Atendimento.SetFocus;
end;

procedure TBoxPosVenda.BtnDescontoClick(Sender: TObject);
begin

//    if not ( tblAtendimento.State in [dsInsert, dsEdit] ) then tblAtendimento.Edit;

    Application.CreateForm( TBoxPedeDesconto, BoxPedeDesconto );

    with BoxPedeDesconto do
    begin
         showModal;
         if modalREsult = mrOK then
         begin
          tblAtendimento.Edit;
          tblAtendimento.fieldbyname( 'desconto' ).asFloat := 0 ;
          calculaTotais();
          tblAtendimento.Edit;
          if edtDesconto.Value > 0 then
            tblAtendimento.fieldbyname( 'desconto' ).asFloat := tblAtendimento.fieldbyname( 'TOTAL_PECAS' ).asCurrency *  ( edtDesconto.Value / 100 )
          else
            tblAtendimento.fieldbyname( 'desconto' ).asFloat := edtValorDesconto.Value;          


          calculaTotais();
         end;
    end;

{  EnableDisableButtons(False,False, False);
  if Atendimento.Text <> '' then
   begin
    Panel2.Enabled := True;
    CalculaTotais;
    tblAtendimento.Edit;
//    Desconto.Enabled := True;
//    Desconto.SetFocus;
   end
  else
   begin
   showmessage('Edite ou inclua um atendimento.');
   Panel2.Enabled := False;
   EnableDisableButtons(True,False, False);
   BtnNovo.SetFocus;
   end;}



end;

procedure TBoxPosVenda.BtnEditaClick(Sender: TObject);
begin
  NewOrc_Os := False;
  EnableDisableButtons(False,False, True);
  Editar := True;
  BtnSalvar.Enabled := True;
  Panel2.Enabled := True;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso17.AsString = 'T') then
   BtnServicos.Enabled := True;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso16.AsString = 'T') then
   BtnPecas.Enabled := True;
  BtnConclui2.Enabled := True;
  Atendimento.Enabled := True;
  SpeedButton3.Enabled := True;
  Atendimento.SetFocus;
  CodigoAtendente.Enabled := False;
  SpeedButton4.Enabled := False;
end;

procedure TBoxPosVenda.BtnExcluiPagamentoClick(Sender: TObject);
begin
  case MessageDlg('Exclui forma de pagamento?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
      begin
         with tblAtendimentoRecebimento do
           begin
            Delete;
           end;
      end;
  end;
end;

procedure TBoxPosVenda.BtnFormaClick(Sender: TObject);
begin
  EnableDisableButtons(False,True, False);
  if Atendimento.Text <> '' then
    begin
      CalculaTotais;
      Panel3.Enabled := True;
      BtnNovoPagamento.SetFocus;
    end
  else
   begin
     showmessage('Edite ou inclua um atendimento.');
     EnableDisableButtons(True,False, False);
     Panel3.Enabled := False;
     BtnNovo.SetFocus;
   end;
end;

procedure TBoxPosVenda.ShowDuplicatas;
begin
  tblAtendimentoRecebimento.Close;
  tblAtendimentoRecebimento.ParamByName('idAtendimento').AsInteger :=
     idAtendimento;
  tblAtendimentoRecebimento.Open;
  DbGrid2.Refresh;
end;

procedure TBoxPosVenda.BtnImprimirClick(Sender: TObject);
begin
//  BoxPosVendaServicos.tblTMO.ParamByName('idCategoria').AsInteger :=
 //   BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
//  BoxPosVendaServicos.tblCategoria.ParamByName('idCategoria').AsInteger :=
//    BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
//  BoxPosVendaServicos.tblAtendimentoServicos.ParamByName('idAtendimento').AsInteger :=
//    BoxPosVenda.idAtendimento;
//  BoxPosVendaPecas.tblAtendimentoPecas.ParamByName('idAtendimento').AsInteger :=
//    BoxPosVenda.idAtendimento;
//  BoxPosVendaPecas.DataSourceAtendimentoPecas.Dataset.Open;
//    BoxPosVendaPecas.DataSourceAtendimentoPecas.Dataset.Last;
//  BoxPosVendaPecas.DataSourcePecas2.Dataset.Open;
//    BoxPosVendaPecas.DataSourcePecas2.Dataset.LAst;
//  BoxPosVendaPecas.DataSourcePecas.DataSet.Open;
//    BoxPosVendaPecas.DataSourcePecas.DataSet.Last;
//  BoxPosVendaPecas.DataSourcePecasEstoque.DataSet.Open;
//    BoxPosVendaPecas.DataSourcePecasEstoque.DataSet.Last;

 //   tblTMO.ParamByName('idCategoria').AsInteger :=
 //   BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
//  BoxPosVendaServicos.tblCategoria.ParamByName('idCategoria').AsInteger :=
//    BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
//  BoxPosVendaServicos.tblAtendimentoServicos.ParamByName('idAtendimento').AsInteger :=
//    BoxPosVenda.idAtendimento;
    with tblPessoas do
    begin
      Close;
      ParamByName('id').AsInteger := StrToInt(CodigoCliente.Text);
      Open;
    end;
    with tblAtendimentoServicos do
     begin
      Close;
      ParamByName('idAtendimento').AsInteger := idAtendimento;
      Open;
     end;
    with tblAtendimentoPecas do
     begin
      Close;
      ParamByName('idAtendimento').AsInteger := idAtendimento;
      Open;
     end;
    tblPecas2.Open;
  if tblAtendimento.FieldByName('Orc_os').AsInteger = 1 then
    ReportOrcamento.ShowReport
  else
    ReportOS.ShowReport;
  tblPecas2.Close;  
//  BoxPosVendaPecas.DataSourceAtendimentoPecas.Dataset.Close;
//  BoxPosVendaPecas.DataSourcePecas2.Dataset.Close;
//  BoxPosVendaPecas.DataSourcePecas.DataSet.Close;
//  BoxPosVendaPecas.DataSourcePecasEstoque.DataSet.Close;
end;

procedure TBoxPosVenda.BtnNovoClick(Sender: TObject);
begin
  Editar := True;
  Orcamento := 2;
  NewOrc_Os := True;
  EnableDisableButtons(False,False, False);
  Panel2.Enabled := True;
  CodigoCliente.SetFocus;
  CodigoAtendente.Enabled := True;
  SpeedButton4.Enabled := True;
end;

procedure TBoxPosVenda.BtnNovoPagamentoClick(Sender: TObject);
begin
  EnableDisableControls(True, False);
  with tblAtendimentoRecebimento do
    begin
      Insert;
    end;
  FormaPagamento.SetFocus;
end;

procedure TBoxPosVenda.BtnSalvarClick(Sender: TObject);
begin
 newOrc_Os := False;
 if Atendimento.Text <> '' then
  if Biblioteca.ConfereCamposPreenchidos(DataSourceAtendimento) and
   (DataSourceAtendimento.State in [dsEdit, dsInsert]) then
  begin
   if tblAtendimento.FieldByName('Orc_os').AsInteger = 0 then
    begin
     showmessage('É preciso selecionar o tipo de atendimento.');
     Orc_os.SetFocus;
    end
   else
    begin
     with tblAtendimento do
      begin
       FieldByName('id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
       FieldByName('id_Mecanico').AsInteger := StrToInt(CodigoMecanico.Text);
       FieldByName('id_Atendente').AsInteger := StrToInt(CodigoAtendente.Text);
       Post;
      end;
     EnableDisableButtons(True, False, True);
     showmessage('Dados gravados com sucesso.');
     BtnSalvar.Enabled := False;
     BtnServicos.SetFocus;
    end;
  end
 else
    showmessage('Edite ou inclua um atendimento.')
end;

procedure TBoxPosVenda.CodigoAtendenteExit(Sender: TObject);
begin
if CodigoAtendente.Text = '' then
   CodigoAtendente.Text := '0';
idAtendente := StrToInt(CodigoAtendente.Text);
if StrtoInt(CodigoAtendente.Text) = 0 then
  begin
   SpeedButton4.Click;
   CodigoAtendente.SetFocus;
  end
else
  BuscaNomeAtendente;
end;

Procedure TBoxPosVenda.BuscaNomeAtendente;
begin
    with tblPessoas do
      begin
       if idAtendente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idAtendente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Atendente inexistente.');
             CodigoAtendente.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um atendente/vendedor.');
                CodigoAtendente.SetFocus;
               end;
            end;
            NomeAtendente.Text := FieldbyName('Nome').Text;
         end;
      end;
end;

procedure TBoxPosVenda.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoCliente.SetFocus;
  end
else
  BuscaNomeCliente;
  if Atendimento.Text = '' then  //Gravar Orçamento de peças
    begin
      IBQuery1.Open;
      IdAtendimento := IBQuery1.FieldByName('id_Atendimento').AsInteger;
      Atendimento.Text := IntToStr(IdAtendimento);
      IBQuery1.Close;
      with tblAtendimento do
       begin
         Open;
         Insert;
         FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
         FIeldByName('Id_Mecanico').AsInteger := 0;
         FieldByName('Id_categoria').AsInteger := 1;
         FieldByName('Orc_Os').AsInteger := 2;
         FieldByName('Marca').AsString := 'YAMAHA';
         FieldByName('Status').AsString := 'Em edição';
         FieldByName('Desconto').AsInteger := 0;
         FieldByName('Id_Atendimento').AsInteger := IdAtendimento;
         FieldByName('Id_Concessionaria').AsInteger :=
           StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       end;
    end
end;

Procedure TBoxPosVenda.BuscaNomeCliente;
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
             if not ValidaCliente(BoxPosVenda.tblPessoas) then
               CodigoCliente.SetFocus;
            end;
            NomeCliente.Text := FieldbyName('Nome').Text;
            DescontoCliente := FieldByName('Desconto').AsString;
//            Fabricante := FieldByName('Fabricante').AsBoolean;
         end;
      end;
end;

procedure TBoxPosVenda.CodigoMecanicoExit(Sender: TObject);
begin
if CodigoMecanico.Text = '' then
   CodigoMecanico.Text := '0';
idMecanico := StrToInt(CodigoMecanico.Text);
if StrtoInt(CodigoMecanico.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoMecanico.SetFocus;
  end
else
  BuscaNomeMecanico;
end;

procedure TBoxPosVenda.BuscaNomeMecanico;
begin
    with tblPessoas do
      begin
       if idMecanico<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idMecanico;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Mecânico inexistente.');
             CodigoMecanico.SetFocus;
            end
          else
            begin
             if not FieldByName('Mecanico').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um mecânico.');
                CodigoMecanico.SetFocus;
               end;
            end;
            NomeMecanico.Text := FieldbyName('Nome').Text;
         end;
      end;
end;

procedure TBoxPosVenda.DescontoExit(Sender: TObject);
begin
  tblAtendimento.Post;
  CalculaTotais;
  Desconto.Enabled := False;
  Panel2.Enabled := False;
  EnableDisableButtons(True,False, False);
  BtnNovo.SetFocus;
end;

procedure TBoxPosVenda.AtendimentoExit(Sender: TObject);
begin
if Atendimento.Text = '' then
   Atendimento.Text := '0';
idAtendimento := StrToInt(Atendimento.Text);
ShowDuplicatas;
if StrtoInt(Atendimento.Text) = 0 then
  begin
   SpeedButton3.Click;
   Atendimento.SetFocus;
  end
else
  begin
    with tblAtendimento do
      begin
       if idAtendimento<>0 then
         begin
          Close;
          parambyname( 'idAtendimento' ).AsInteger := idAtendimento;
          PAramByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
          Open;
          if recordcount = 0  then
            begin
             showmessage('Atendimento inexistente.');
             Atendimento.SetFocus;
            end
          else
           if Editar then
            begin
             if FieldByName('Status').AsString = 'Aprovado' then
                begin
                  showmessage('Este atendimento está encerrado e aprovado.' + #13 +
                    'Não pode mais ser editado.');
                  Atendimento.SetFocus;
             //     case MessageDlg('Confirma Edição ?', mtConfirmation, [mbYes,mbNo], 0) of
             //        mrNo: Atendimento.SetFocus;
              //    end
                end;
             if FieldByName('Status').AsString = 'Fechado' then
                begin
                  showmessage('Este atendimento está fechado.'+#13+'Utilize a consulta.');
                  Atendimento.SetFocus;
                end;
             Edita;
             CodigoCliente.SetFocus
            end
           else
            begin
//              BtnDesconto.Enabled := False;
              BtnForma.Enabled := False;
              BtnConclui.Enabled := False;
              CodigoCliente.Text := tblAtendimento.FieldByName('Id_Clientes').AsString;
              CodigoMecanico.Text := tblAtendimento.FieldByName('Id_Mecanico').AsString;
              CodigoAtendente.Text := tblAtendimento.FieldByName('id_Atendente').AsString;
              idCliente := StrToInt(CodigoCliente.Text);
              idMecanico := StrToInt(CodigoMecanico.Text);
              idAtendente := StrToInt(CodigoAtendente.Text);
              BuscaNomeCliente;
              BuscaNomeMecanico;
              BuscaNomeAtendente;
              BtnServicos.SetFocus;
            end;
         end;
      end;
  end;
end;

procedure TBoxPosVenda.Edita;
begin
If tblAtendimento.FieldByName('Status').AsString <> 'Fechado' then
  begin
   case MessageDlg('Confirma edição?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
       begin
         with tblAtendimento do
           begin
            CodigoCliente.Text := FieldByName('id_clientes').AsString;
            CodigoMecanico.Text := FieldByName('id_mecanico').AsString;
            CodigoAtendente.Text := FieldByName('id_Atendente').AsString;
            Edit;
            idCliente := StrToInt(CodigoCliente.Text);
            idMecanico := StrToInt(CodigoMecanico.Text);
            idAtendente := StrToInt(CodigoAtendente.Text);
            BuscaNomeCliente;
            BuscaNomeMecanico;
            BuscaNomeAtendente;
            FieldByName('Status').AsString := 'Em edição';
//            Post;
  //          Edit;
            idAtendimento := StrToInt(Atendimento.Text);
            Orcamento := FieldByName('Orc_os').AsInteger;
           end;
          with tblAtendimentoRecebimento do
           begin
             Close;
             Parambyname('idAtendimento').AsString := IntToStr(IdAtendimento);
             DbGrid2.Refresh;
             Open;
           end;
          CodigoCliente.SetFocus;
       end;
  end;
  Atendimento.Enabled := False;
  SpeedButton3.Enabled := False;
  end;
end;

procedure TBoxPosVenda.BtnServicosClick(Sender: TObject);
begin
 if tblAtendimento.FieldByName('id_categoria').AsInteger <> 0 then
   begin
     if not Assigned(BoxPosVendaServicos) then
       BoxPosVendaServicos := TBoxPosVendaServicos.Create(Self);
     BoxPosVendaServicos.Show;
   end
 else
   begin
     showmessage('Para cadastrar serviços é preciso escolher uma categoria.');
     Categoria.SetFocus;
   end;
end;

procedure TBoxPosVenda.BtnPecasClick(Sender: TObject);
begin
  if not Assigned(BoxPosVendaPecas) then
    BoxPosVendaPecas := TBoxPosVendaPecas.Create(Self);
  BoxPosVendaPecas.Show;
end;

procedure TBoxPosVenda.FecharDs;
begin
  DataSourceAtendimento.Dataset.Close;
  DataSourceAtendimentoPecas.Dataset.Close;
  DataSourceAtendimentoServicos.Dataset.Close;
  DataSourceAtendimentoRecebimento.Dataset.Close;
  DataSourceAtendimentoTipo.Dataset.Close;
  DataSourceCategoria.DataSet.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery3.Close;
  IBQuery4.Close;
  IBQuery5.Close;
  IBQuery6.Close;
  IBQuery7.Close;
end;

procedure TBoxPosVenda.AbrirDs;
begin
  DataSourceAtendimento.Dataset.Open;
  DataSourceAtendimentoRecebimento.Dataset.Open;
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourceAtendimentoTipo.Dataset.Open;
  DataSourceCategoria.DataSet.Open;
end;

procedure TBoxPosVenda.EnableDisableControls(Value: Boolean; Value1: Boolean);
begin
  FormaPagamento.Enabled := Value;
  ValorDevido.Enabled := Value;
  Vencimento.Enabled := Value;
  Panel2.Enabled := Value1;
  ToolBar1.Enabled := Value1;
end;

procedure TBoxPosVenda.EnableDisableButtons(Value: Boolean; Value1: Boolean; Value2: Boolean);
begin
  BtnPecas.Enabled := False;
  BtnServicos.Enabled := False;
  BtnNovo.Enabled := Value;
  BtnEdita.Enabled := Value;
//  BtnDesconto.Enabled := Value;
  BtnForma.Enabled := Value;
  BtnConclui.Enabled := Value;
  BtnConsulta.Enabled := Value;
  BtnNovoPagamento.Enabled := Value1;
  BtnConcluipagamento.Enabled := Value1;
  BtnConfirmaPagamento.Enabled := Value1;
  BtnExcluiPagamento.Enabled := Value1;
  BtnConclui2.Enabled := Value2;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso16.AsString = 'T') Or
   (orc_os.Text = 'Orçamento') then
   BtnPecas.Enabled := Value2;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso17.AsString = 'T') then
   BtnServicos.Enabled := Value2;
  if (FDB1.IBDataSetLoginacesso56.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnAutoriza.Enabled := True
  else
     BtnAutoriza.Enabled := False;
end;

end.
