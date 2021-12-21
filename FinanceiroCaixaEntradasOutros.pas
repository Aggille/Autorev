unit FinanceiroCaixaEntradasOutros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, JvMaskEdit, IBQuery;

type
  TBoxFinanceiroCaixaEntradasOutros = class(TForm)
    StatusBar1: TStatusBar;
    tblCaixa: TIBDataSet;
    DataSourceCaixa: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    LabelData: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    Historico: TDBEdit;
    Dinheiro: TCurrencyEdit;
    BtnConfirma: TBitBtn;
    Origem: TDBLookupComboBox;
    tblSetor: TIBDataSet;
    tblSetorID_SETOR: TIntegerField;
    tblSetorNOME: TIBStringField;
    tblSetorSETOR: TIBStringField;
    DataSourceSetor: TDataSource;
    IBQuery1: TIBQuery;
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
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Inicio;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblCaixaAfterCancel(DataSet: TDataSet);
    procedure tblCaixaAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnImprimirClick(Sender: TObject);

  private
    { Private declarations }
    idCaixa : Integer;
  public
    { Public declarations }
    procedure AbrirDs; virtual;
    procedure FecharDs; virtual;

  end;

var
  BoxFinanceiroCaixaEntradasOutros: TBoxFinanceiroCaixaEntradasOutros;

implementation

uses Empresas, FDB, RelatorioRecibo;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasOutros.BtnConfirmaClick(Sender: TObject);
begin
  with tblCaixa do
  begin
    FieldByName('Natureza').AsString := 'E';
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Forma_Pag').AsString := 'DINHEIRO';
    FieldByName('Data_Lancamento').AsDateTime := DataAtual;
    FieldByName('ID_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Valor').AsCurrency := Dinheiro.Value;
    {Pega um sequence novo para o Caixa}
    IBQuery1.Open;
    IdCaixa := IBQuery1.FieldByName('id_Caixa').AsInteger;
    IBQuery1.Close;
    FieldByName('id_Caixa').AsInteger := idCaixa;
    Post;
    Showmessage('Dados Gravados');
    Insert;
    FieldByName('Data_Recebimento').AsDateTime := DataAtual;
    FieldByName('Historico').AsString := 'PGTO REF.';
  end;
  Documento.SetFocus;  
end;

procedure TBoxFinanceiroCaixaEntradasOutros.BtnImprimirClick(Sender: TObject);
begin
  if BoxRelatorioRecibo.EmitirRecibo(IntToStr(IdCaixa)) then
    BoxRelatorioRecibo.EmiteRecibo;
    showmessage(inttostr(idcaixa));
end;

procedure TBoxFinanceiroCaixaEntradasOutros.DBGrid1Exit(Sender: TObject);
begin
  Dinheiro.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaEntradasOutros := nil;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasOutros.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.Inicio;
begin
  Dinheiro.Value := 0;
  tblCaixa.Insert;
  Fdb1.AtualizaDataAtual;
  tblCaixa.FieldByName('Data_Recebimento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Historico').AsString := 'Rec. ref.';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.tblCaixaAfterCancel(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasOutros.tblCaixaAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasOutros.AbrirDs;
begin
  DataSourceSetor.Dataset.Open;
  DataSourceCaixa.Dataset.Open;
end;

Procedure TBoxFinanceiroCaixaEntradasOutros.FecharDs;
begin
  DataSourceSetor.Dataset.Close;
  DataSourceCaixa.Dataset.Close;
end;

end.
