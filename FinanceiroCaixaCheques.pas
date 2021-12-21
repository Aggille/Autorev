unit FinanceiroCaixaCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxCurrEdit, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, ExtCtrls, DB,
  IBCustomDataSet, ComCtrls;

type
  TBoxFinanceiroCaixaCheques = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Depositos: TDateEdit;
    DBGrid1: TDBGrid;
    tblBanco: TIBDataSet;
    tblBancoID_BANCO: TIntegerField;
    tblBancoID_CONCESSIONARIA: TIntegerField;
    tblBancoID_CLIENTES: TIntegerField;
    tblBancoID_AVALISTA: TIntegerField;
    tblBancoDOCUMENTO: TIBStringField;
    tblBancoNATUREZA: TIBStringField;
    tblBancoDATA: TDateField;
    tblBancoVALOR: TIBBCDField;
    tblBancoBANCO: TIBStringField;
    tblBancoCONTA: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    DataSourceBanco: TDataSource;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
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
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    DataSourceCaixa: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblCaixaAfterCancel(DataSet: TDataSet);
    procedure tblCaixaAfterPost(DataSet: TDataSet);
    procedure AbrirDs;
    procedure FecharDs;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaCheques: TBoxFinanceiroCaixaCheques;

implementation

uses FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroCaixaCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaCheques := nil;
end;

procedure TBoxFinanceiroCaixaCheques.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TBoxFinanceiroCaixaCheques.FormShow(Sender: TObject);
begin
  Fdb1.AtualizaDataAtual;
  Depositos.Text := DateToStr(DataAtual);
  Depositos.SetFocus;
  AbrirDs;
end;

procedure TBoxFinanceiroCaixaCheques.tblCaixaAfterCancel(DataSet: TDataSet);
begin
  FDb1.IBtransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaCheques.tblCaixaAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroCaixaCheques.FecharDs;
begin
  DataSourceCaixa.Dataset.Close;
  DataSourceBanco.Dataset.Close;
end;

procedure TBoxFinanceiroCaixaCheques.AbrirDs;
begin
  with tblBanco do
  begin
    Close;
    ParamByName('idConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;   
  end;
  with tblcaixa do
  begin
    Close;
    ParamByName('idDeposito').AsInteger :=
      tblBanco.FieldByName('id_banco').AsInteger;
    ParamByName('idConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
  end;
end;

end.
