unit FinanceiroCaixaEntradasPendencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, IBQuery, JvMaskEdit;

type
  TBoxFinanceiroCaixaEntradasPendencias = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    LabelForma: TLabel;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    Cliente: TDBEdit;
    Valor: TDBEdit;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    tblCaixa: TIBDataSet;
    DataSourceCaixa: TDataSource;
    DBGrid1: TDBGrid;
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
    tblCaixaSTATUS: TIBStringField;
    Label2: TLabel;
    Historico: TDBEdit;
    Label3: TLabel;
    BtnConfirma: TBitBtn;
    IBQuery1: TIBQuery;
    DataRecebimento: TJvDBDateEdit;
    Label4: TLabel;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaNOME: TIBStringField;
    StatusBar1: TStatusBar;
    DBEdit1: TDBEdit;
    tblCaixaHISTORICO: TIBStringField;
    Valor2: TJvDBMaskEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblCaixaAfterCancel(DataSet: TDataSet);
    procedure tblCaixaAfterPost(DataSet: TDataSet);
    procedure DinheiroExit(Sender: TObject);
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
  BoxFinanceiroCaixaEntradasPendencias: TBoxFinanceiroCaixaEntradasPendencias;

implementation

uses Empresas, FDB, Biblioteca, RelatorioRecibo;

{$R *.dfm}


procedure TBoxFinanceiroCaixaEntradasPendencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasPendencias := nil;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasPendencias.FormShow(Sender: TObject);
begin
//  Panel1.Enabled := False;
//  Showmessage(Fdb1.);
  DBGrid1.SetFocus;
  tblCaixa.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.tblCaixaAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.tblCaixaAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasPendencias.AbrirDs;
begin
   DataSourceCaixa.Dataset.Open;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.BtnConfirmaClick(
  Sender: TObject);
var
  id : integer;
begin
  Fdb1.AtualizaDataAtual;
  Showmessage('Dados gravados');
  if tblCaixa.FieldByName('Data_recebimento').AsDateTime <> DataAtual then
    begin
      showmessage('Lançamento em data diferente da atual');
    end;

  if FloatToCurr(Dinheiro.Value) + FloatToCurr(Cheque.Value) <>
    StrToCurr(tblCaixa.FieldByName('Valor').AsString) then
    begin
      showmessage('A soma de dinheiro e cheque é diferente do valor total');
      Dinheiro.SetFocus;
    end
  else
    if (dinheiro.value = 0) or (cheque.value = 0) then
      begin
        With tblCaixa do
          begin
           Edit;
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Status').AsString := 'Processado';
           if dinheiro.value=0 then
            begin
             FieldByName('Forma_Pag').AsString := 'CHEQUE';
             FieldByName('Status_Banco').AsString := 'Receb.Cx.';
            end
           else
             FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
          end;
      end
    else
      begin
        With tblCaixa do
          begin
            Edit;
            Fdb1.AtualizaDataAtual;
            FieldByName('Data_lancamento').AsDateTime := DataAtual;
            FieldByName('Status').AsString := 'Processado';
            FieldByName('Valor').AsCurrency := Dinheiro.Value;
            FieldByName('Forma_Pag').AsString := 'DINHEIRO';
            Post;
            id := FieldByName('Id_caixa').AsInteger;
            with IBQuery1 do
              begin
                ParamByName('id').AsInteger := id;
                Open;
                Close;
              end;
            Edit;
            FieldByName('Valor').AsCurrency := Cheque.Value;
            FieldByName('Forma_Pag').AsString := 'CHEQUE';
            FieldByName('Status_Banco').AsString := 'Receb.Cx.';
            Post;
          end;
      end;
    tblCaixa.Close;
    tblCaixa.Open;
    DBGrid1.Refresh;
    Dinheiro.AsInteger := 0;
    Cheque.Asinteger := 0;
    Documento.Text := '';
    Historico.Text := '';
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.BtnImprimirClick(
  Sender: TObject);
begin
  if BoxRelatorioRecibo.EmitirRecibo(IntToStr(IdCaixa)) then
    BoxRelatorioRecibo.EmiteRecibo;
    showmessage(inttostr(idcaixa));
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.DBGrid1Exit(Sender: TObject);
begin
 Dinheiro.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    Dinheiro.SetFocus;
  end;
end;

procedure TBoxFinanceiroCaixaEntradasPendencias.DinheiroExit(Sender: TObject);
begin
  tblcaixa.Edit;
  tblCaixa.FieldByName('Data_recebimento').AsDateTime :=
    tblCaixa.FieldByName('Data_lancamento').AsDateTime;
  tblCaixa.Post;
end;

Procedure TBoxFinanceiroCaixaEntradasPendencias.FecharDs;
begin
   DataSourceCaixa.Dataset.Close;
end;

end.
