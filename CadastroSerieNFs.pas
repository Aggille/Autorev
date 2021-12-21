unit CadastroSerieNFs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  TBoxCadastroSerieNFs = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    DBGrid1: TDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure AbrirDs;
    procedure tblSerieNFAfterCancel(DataSet: TDataSet);
    procedure tblSerieNFAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxCadastroSerieNFs: TBoxCadastroSerieNFs;

implementation

uses FDB, Empresas;

{$R *.dfm}

procedure TBoxCadastroSerieNFs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxCadastroSerieNFs := nil;
end;

procedure TBoxCadastroSerieNFs.FormShow(Sender: TObject);
begin
  AbrirDs;
end;

procedure TBoxCadastroSerieNFs.tblSerieNFAfterCancel(DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCadastroSerieNFs.tblSerieNFAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxCadastroSerieNFs.FecharDs;
begin
   DataSourceSerieNF.Dataset.Close;
end;                                

procedure TBoxCadastroSerieNFs.AbrirDs;
begin
   tblSerieNF.ParamByName('Idconcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   DataSourceSerieNF.Dataset.Open;
end;

end.
