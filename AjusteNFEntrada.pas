unit AjusteNFEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  StdCtrls, Buttons;

type
  TBoxAjusteNFEntrada = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaICMS_SUBST: TIBBCDField;
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
    tblNfDaCST: TIBStringField;
    tblNfDaID_PECA: TIntegerField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    DataSourceNfda: TDataSource;
    Label1: TLabel;
    NF: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblNfDaAfterPost(DataSet: TDataSet);
    procedure tblNfDaAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxAjusteNFEntrada: TBoxAjusteNFEntrada;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxAjusteNFEntrada.BitBtn1Click(Sender: TObject);
begin
  tblNFDA.Close;
  tblNFDA.ParamByName('IDNF').AsInteger := StrToInt(nf.TExt);
  tblNFDa.Open;
end;

procedure TBoxAjusteNFEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblNFDA.Close;
end;

procedure TBoxAjusteNFEntrada.tblNfDaAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxAjusteNFEntrada.tblNfDaAfterPost(DataSet: TDataSet);
begin
  FDb1.IbTransaction.CommitRetaining;
end;

end.

