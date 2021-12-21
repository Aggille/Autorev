unit RelatoriosGerenciaisEstoquePecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, wwSpeedButton, wwDBNavigator, wwclearpanel,
  IBCustomDataSet, Grids, Wwdbigrd, Wwdbgrid;

type
  TBoxEstoquePecasZero = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    tblPecas: TIBDataSet;
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
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasPPS: TIBBCDField;
    tblPecasORIGINAL: TIBStringField;
    tblPecasCST: TIBStringField;
    DataSourcePecas: TDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    DataSourcePecasMovimentacao: TDataSource;
    tblestoque: TIBDataSet;
    tblestoqueID_PECAS: TIntegerField;
    tblestoqueID_CONCESSIONARIA: TIntegerField;
    tblestoqueESTOQUE: TIntegerField;
    tblestoqueESTOQOS: TIntegerField;
    tblestoqueLOCAL: TIBStringField;
    tblestoqueID_PECAS_ESTOQUE: TIntegerField;
    tblestoqueCST_MEDIO: TIBBCDField;
    tblestoqueCST_ATUAL: TIBBCDField;
    tblestoqueULT_COMPRA: TDateField;
    tblestoqueULT_VENDA: TDateField;
    tblestoqueULT_PEDIDO: TDateField;
    tblestoqueFORNECEDOR: TIBStringField;
    tblestoquePRATELEIRA: TIBStringField;
    tblestoqueESCANINHO_GAVETA: TIBStringField;
    DataSourceEstoque: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblPecasAfterPost(DataSet: TDataSet);
    procedure tblPecasAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxEstoquePecasZero: TBoxEstoquePecasZero;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxEstoquePecasZero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblPecas.Close;
  tblEstoque.Close;
  tblPecasMovimentacao.Close;
end;

procedure TBoxEstoquePecasZero.FormShow(Sender: TObject);
begin
  tblpecas.Open;
  tblEstoque.Open;
  tblPecasMovimentacao.Open;
end;

procedure TBoxEstoquePecasZero.tblPecasAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxEstoquePecasZero.tblPecasAfterPost(DataSet: TDataSet);
begin
  fdb1.IBTransaction.CommitRetaining;
end;

end.

