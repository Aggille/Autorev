unit FinanceiroCaixaGeralResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Mask,
  rxToolEdit, DB, IBCustomDataSet, IBQuery, rxCurrEdit, Buttons, frxClass,
  frxDBSet, Wwdbigrd, Wwdbgrid;

type
  TBoxFinanceiroCaixaGeralResumo = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Resumo: TDateEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label2: TLabel;
    DataSourceCaixa: TDataSource;
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
    tblCaixaSTATUS: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    IBQuery1: TIBQuery;
    SaldoInicialDinheiro: TCurrencyEdit;
    SaldoFinalCheque: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SaldoFinalDinheiro: TCurrencyEdit;
    EntradasDinheiro: TCurrencyEdit;
    SaldoInicialCheque: TCurrencyEdit;
    SaidasDinheiro: TCurrencyEdit;
    EntradasCheque: TCurrencyEdit;
    SaidasCheque: TCurrencyEdit;
    IBQuery2: TIBQuery;
    BtnImprimir: TBitBtn;
    frxReport1: TfrxReport;
    tblRelCaixa: TfrxDBDataset;
    tblRelConcessionaria: TfrxDBDataset;
    tblCReceber: TIBDataSet;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberCONTA: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberHISTORICO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    tblCReceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCReceberBOLETO_EMITIDO: TIBStringField;
    DataSourceCreceber: TDataSource;
    tblCReceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCReceberFORMA_PAGAMENTO: TIBStringField;
    wwDBGrid1: TwwDBGrid;
    tblRelCreceber: TfrxDBDataset;
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCReceberNOME: TIBStringField;
    Resumo2: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ResumoExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure BtnImprimirExit(Sender: TObject);
    procedure Resumo2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Entradas : Extended;
    Saidas : Extended;
    procedure AbrirDs;
    procedure FecharDs;
  end;

var
  BoxFinanceiroCaixaGeralResumo: TBoxFinanceiroCaixaGeralResumo;

implementation

uses FDB, Empresas, Biblioteca, IniFile;

{$R *.dfm}

procedure TBoxFinanceiroCaixaGeralResumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaGeralResumo := nil;
end;

procedure TBoxFinanceiroCaixaGeralResumo.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaGeralResumo.FormShow(Sender: TObject);
begin
  AbrirDs;
  Fdb1.AtualizaDataAtual;
  Resumo.Text := DateToStr(DataAtual);
  Resumo.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralResumo.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport1.Variables.clear;
 frxReport1.Variables['Resumo'] := Resumo.Date;
 frxReport1.Variables['SaldoInicialDinheiro'] := SaldoInicialDinheiro.Value;
 frxReport1.Variables['SaldoFinalDinheiro'] := SaldoFinalDinheiro.Value;
 frxReport1.Variables['SaldoInicialCheque'] := SaldoInicialCheque.Value;
 frxReport1.Variables['SaldoFinalCheque'] := SaldoFinalCheque.Value;
 frxReport1.Variables['PathLogo'] := BoxIniFile.pathlogo;
end;

procedure TBoxFinanceiroCaixaGeralResumo.Resumo2Exit(Sender: TObject);
begin
  Resumo2.Text := Resumo.Text;
end;

procedure TBoxFinanceiroCaixaGeralResumo.ResumoExit(Sender: TObject);
begin
DBGrid1.SetFocus;
  with tblCaixa do
  begin
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
     //  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
  end;
  with tblCreceber do
  begin
    Close;
    ParamByName('idEmissao').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
  end;
  with IBQuery1 do
  begin
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idConcessionaria').AsInteger :=  999;
   //   StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idForma').AsString := 'DINHEIRO';
    Open;
    Entradas := FieldByName('Saldo').AsFloat;
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
   //   StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idForma').AsString := 'DINHEIRO';
    Open;
    Saidas := FieldByName('Saldo').AsFloat;
  SaldoInicialDinheiro.Text := FloatToStr(Entradas-Saidas);
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
     // StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idForma').AsString := 'CHEQUE';
    Open;
    Entradas := FieldByName('Saldo').AsFloat;
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
  //    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idForma').AsString := 'CHEQUE';
    Open;
    Saidas := FieldByName('Saldo').AsFloat;
  SaldoInicialCheque.Text := FloatToStr(Entradas-Saidas);
  end;
  with IBQuery2 do
  begin
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
//      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idForma').AsString := 'DINHEIRO';
    Open;
    EntradasDinheiro.Text := FloatToStr(FieldByName('Saldo').AsFloat);
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
  ///    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idForma').AsString := 'DINHEIRO';
    Open;
    SaidasDinheiro.Text := FloatToStr(FieldByName('Saldo').AsFloat);
  SaldoFinalDinheiro.Text := FloatToStr(SaldoInicialDinheiro.Value +
    EntradasDinheiro.Value - SaidasDinheiro.Value);
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
  //    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idForma').AsString := 'CHEQUE';
    Open;
    EntradasCheque.Text := FloatToStr(FieldByName('Saldo').AsFloat);
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger := 999;
    //  StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idForma').AsString := 'CHEQUE';
    Open;
    SaidasCheque.Text := FloatToStr(FieldByName('Saldo').AsFloat);
  SaldoFinalCheque.Text := FloatToStr(SaldoInicialCheque.Value +
    EntradasCheque.Value - SaidasCheque.Value);
  end;
end;

procedure TBoxFinanceiroCaixaGeralResumo.AbrirDs;
begin
  DataSourceCaixa.Dataset.Open;
end;

procedure TBoxFinanceiroCaixaGeralResumo.BtnImprimirClick(Sender: TObject);
begin

//showmessage(BoxInifile.pathlogo);
  frxReport1.ShowReport;
end;

procedure TBoxFinanceiroCaixaGeralResumo.BtnImprimirExit(Sender: TObject);
begin
  Resumo.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralResumo.DBGrid1Exit(Sender: TObject);
begin
  BtnImprimir.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralResumo.FecharDs;
begin
  DataSourceCaixa.Dataset.Close;
end;

end.
