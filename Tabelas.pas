unit Tabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, DB, IBCustomDataSet, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, wwSpeedButton, wwDBNavigator, wwclearpanel, Wwdbigrd,
  Wwdbgrid, ImgList, Buttons, frxClass, frxDBSet, System.ImageList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxCurrEdit;

type
  TBoxTabelas = class(TForm)
    StatusBar1: TStatusBar;
    tblModelosVeiculos: TIBDataSet;
    DataSourceModelosVeiculos: TDataSource;
    tblModelosVeiculosID_MODVEIC: TIntegerField;
    tblModelosVeiculosMARCA: TIBStringField;
    tblModelosVeiculosMODELO: TIBStringField;
    tblModelosVeiculosCILINDROS: TIntegerField;
    tblModelosVeiculosCILINDRADAS: TIntegerField;
    tblModelosVeiculosCOMBUSTIVEL: TIBStringField;
    tblModelosVeiculosRENAVAM: TIBStringField;
    tblModelosVeiculosCLASSIF_FISCAL: TIBStringField;
    tblModelosVeiculosPPS: TIBBCDField;
    tblModelosVeiculosPPS_ABRACY: TIBBCDField;
    tblModelosVeiculosPRECO_VENDA: TIBBCDField;
    tblModelosVeiculosCST: TIBStringField;
    tblModelosVeiculosVEICULO_NOVO: TIBStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    ImageList1: TImageList;
    tblRelModeloVeiculos: TfrxDBDataset;
    frxReport1: TfrxReport;
    tblModelosVeiculosHP: TIBStringField;
    tblModelosVeiculosANO_FABRICACAO: TIBStringField;
    tblModelosVeiculosANO_MODELO: TIBStringField;
    tblModelosVeiculosPRECO_VIP: TIBBCDField;
    tblModelosVeiculosPRECO_NORMAL: TIBBCDField;
    tblModelosVeiculosPRECO_EXCLUSIVO2: TIBBCDField;
    tblModelosVeiculosPRECO_NORMAL2: TIBBCDField;
    tblModelosVeiculosPRECO_VIP2: TIBBCDField;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    ToolBar1: TToolBar;
    wwDBNavigator1Button: TwwNavButton;
    tblAcessoriosVeiculos: TIBDataSet;
    tblAcessoriosVeiculosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblAcessoriosVeiculosDESCRICAO_ACESSORIO: TIBStringField;
    tblAcessoriosVeiculosVALOR: TIBBCDField;
    tblAcessoriosVeiculosMODELO: TIBStringField;
    DataSourceAcessoriosVeiculos: TDataSource;
    wwDBGrid2: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    tblModelosVeiculosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblModelosVeiculosDESCRICAO_ACESSORIO: TIBStringField;
    tblModelosVeiculosVALOR: TIBBCDField;
    tblModelosVeiculosMODELO1: TIBStringField;
    tblModelosVeiculosNEGRITO: TIBStringField;
    capacete: TCurrencyEdit;
    procedure tblModelosVeiculosAfterCancel(DataSet: TDataSet);
    procedure tblModelosVeiculosAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxTabelas: TBoxTabelas;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxTabelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataSourceModelosVeiculos.Dataset.Close;
end;

procedure TBoxTabelas.FormShow(Sender: TObject);
begin
  DataSourceModelosVeiculos.Dataset.Open;
  DataSourceAcessoriosVeiculos.Dataset.Open;
end;

procedure TBoxTabelas.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport1.Variables.clear;
 frxReport1.Variables['capacete'] := capacete.Value;
end;

procedure TBoxTabelas.tblModelosVeiculosAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxTabelas.tblModelosVeiculosAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxTabelas.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  capacete.value := 130;
  frxReport1.ShowReport;
end;

end.
