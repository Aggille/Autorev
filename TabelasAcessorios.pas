unit TabelasAcessorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, ToolWin,
  ComCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, DB, IBCustomDataSet;

type
  TBoxTabelasAcessorios = class(TForm)
    tblAcessoriosVeiculos: TIBDataSet;
    DataSourceAcessoriosVeiculos: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    ToolBar1: TToolBar;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    tblAcessoriosVeiculosID_VEICULOS_ACESSORIOS: TIntegerField;
    tblAcessoriosVeiculosDESCRICAO_ACESSORIO: TIBStringField;
    tblAcessoriosVeiculosVALOR: TIBBCDField;
    tblAcessoriosVeiculosMODELO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblAcessoriosVeiculosAfterCancel(DataSet: TDataSet);
    procedure tblAcessoriosVeiculosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxTabelasAcessorios: TBoxTabelasAcessorios;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxTabelasAcessorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceAcessoriosVeiculos.Dataset.Close;
end;

procedure TBoxTabelasAcessorios.FormShow(Sender: TObject);
begin
  DataSourceAcessoriosVeiculos.Dataset.Open;
end;

procedure TBoxTabelasAcessorios.tblAcessoriosVeiculosAfterCancel(
  DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxTabelasAcessorios.tblAcessoriosVeiculosAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

end.
