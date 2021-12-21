unit FinanceiroBancoResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Mask,
  rxToolEdit, DB, IBCustomDataSet, IBQuery, rxCurrEdit, DBCtrls, Buttons,
  frxClass, frxDBSet, JvExMask, JvToolEdit, JvDBControls, JvMaskEdit, DBClient;

type
  TBoxFinanceiroBancoResumo = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Resumo1: TDateEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label2: TLabel;
    DataSourceBanco: TDataSource;
    tblBanco: TIBDataSet;
    IBQuery1: TIBQuery;
    SaldoInicialDinheiro: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    SaldoFinalDinheiro: TCurrencyEdit;
    EntradasDinheiro: TCurrencyEdit;
    SaidasDinheiro: TCurrencyEdit;
    IBQuery2: TIBQuery;
    tblBancoID_BANCO: TIntegerField;
    tblBancoID_CONCESSIONARIA: TIntegerField;
    tblBancoDOCUMENTO: TIBStringField;
    tblBancoNATUREZA: TIBStringField;
    tblBancoDATA: TDateField;
    tblBancoVALOR: TIBBCDField;
    tblBancoBANCO: TIBStringField;
    tblBancoCONTA: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    tblBancoJUROS: TIBBCDField;
    tblBancoID_CLIENTES: TIntegerField;
    tblBancoID_AVALISTA: TIntegerField;
    Banco: TDBLookupComboBox;
    Label4: TLabel;
    tblPlaconBanco: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    DataSourcePlaconBanco: TDataSource;
    tbRelBanco: TfrxDBDataset;
    frxReport1: TfrxReport;
    tblRelPlaconBanco: TfrxDBDataset;
    Resumo2: TDateEdit;
    tblBancoORIGEM: TIBStringField;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    DataSourceDespesas: TDataSource;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnImprimir: TBitBtn;
    tblBancoID_CRECEBER: TIntegerField;
    DataBanco: TJvDBDateEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CodigoBanco: TJvDBMaskEdit;
    Valor: TJvDBMaskEdit;
    tblBancoID_DESPESAS: TIntegerField;
    tblAuxResumo: TClientDataSet;
    dts1: TDataSource;
    tblAuxResumoDOCUMENTO: TStringField;
    tblAuxResumoORIGEM: TStringField;
    tblAuxResumoNATUREZA: TStringField;
    tblAuxResumoFORMA_PGTO: TStringField;
    tblAuxResumoDATA: TDateField;
    tblAuxResumoVALOR: TCurrencyField;
    tblAuxResumoCONTA: TStringField;
    tblAuxResumoHISTORICO: TStringField;
    tblAuxResumoID_BANCO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnImprimirExit(Sender: TObject);
    procedure Resumo2Exit(Sender: TObject);
    procedure Resumo1Exit(Sender: TObject);
    procedure CodigoBancoExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure tblBancoAfterPost(DataSet: TDataSet);
    procedure tblBancoAfterCancel(DataSet: TDataSet);
    procedure BtnEditarClick(Sender: TObject);
    procedure DataBancoExit(Sender: TObject);
    procedure ValorExit(Sender: TObject);
    procedure BtnSalvarExit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
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
  BoxFinanceiroBancoResumo: TBoxFinanceiroBancoResumo;
  fim : Boolean;

implementation

uses FDB, Empresas, Biblioteca, Efuncoes, IniFile;

{$R *.dfm}

procedure TBoxFinanceiroBancoResumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoResumo := nil;
end;

procedure TBoxFinanceiroBancoResumo.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoResumo.FormShow(Sender: TObject);
begin
  AbrirDs;
  Fdb1.AtualizaDataAtual;
  Resumo1.Text := DateToStr(DataAtual);
  Resumo2.Text := DateToStr(DataAtual);
  Banco.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport1.Variables.clear;
 frxReport1.Variables['Resumo'] := Resumo1.Date;
 frxReport1.Variables['Resumo2'] := Resumo2.Date; 
 frxReport1.Variables['Banco'] := tblPlaconBanco.FieldByName('Conta').AsString;
 frxReport1.Variables['SaldoInicialDinheiro'] := SaldoInicialDinheiro.Value;
 frxReport1.Variables['SaldoFinalDinheiro'] := SaldoFinalDinheiro.Value;
 frxReport1.Variables['TotalEntradas'] := EntradasDinheiro.Value;
 frxReport1.Variables['TotalSaidas'] := SaidasDinheiro.Value;
 frxReport1.Variables['PathLogo'] := BoxIniFile.pathlogo;
end;

procedure TBoxFinanceiroBancoResumo.Resumo1Exit(Sender: TObject);
begin
  Resumo2.Text := Resumo1.Text;
end;

procedure TBoxFinanceiroBancoResumo.Resumo2Exit(Sender: TObject);
begin
DBGrid1.SetFocus;
  with tblBanco do
  begin
    Close;
    ParamByName('idData1').AsDateTime := StrToDate(Resumo1.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idBanco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
    Open;
    First;
    tblAuxResumo.Close;
    tblAuxResumo.Open;
    tblAuxResumo.EmptyDataSet;
    while not eof do
     begin
       with tblAuxResumo do
        begin
          insert;
          FieldByName('Id_Banco').AsInteger := tblBanco.FieldByName('Id_Banco').AsInteger;
          FieldByName('Documento').AsString := tblBanco.FieldByName('Documento').AsString;
          FieldByName('Origem').AsString := tblBanco.FieldByName('Origem').AsString;
          FieldByName('Natureza').AsString := tblBanco.FieldByName('Natureza').AsString;
          FieldByName('Data').AsDateTime := tblBanco.FieldByName('Data').AsDateTime;
          FieldByName('Valor').AsCurrency := tblBanco.FieldByName('Valor').AsCurrency;
          FieldByName('conta').AsString := tblBanco.FieldByName('conta').AsString;
          FieldByName('historico').AsString := tblBanco.FieldByName('historico').AsString;
          if (fieldByName('conta').AsString = '2604') and (FDB1.IBDataSetLoginacesso97.AsString = 'T') then
            FieldByName('historico').AsString := 'Pgto de Salário';
          post;
        end;
       tblBanco.Next;
     end;
  end;
  with IBQuery1 do
  begin
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo1.Text);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idBanco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
    Open;
    Entradas := FieldByName('Saldo').AsFloat;
    Close;
    ParamByName('id').AsDateTime := StrToDate(Resumo1.Text);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idBanco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
    Open;
    Saidas := FieldByName('Saldo').AsFloat;
    SaldoInicialDinheiro.Text := FloatToStr(Entradas-Saidas);
  end;
  with IBQuery2 do
  begin
    Close;
    ParamByName('idData1').AsDateTime := StrToDate(Resumo1.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'E';
    ParamByName('idBanco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
    Open;
    EntradasDinheiro.Text := FloatToStr(FieldByName('Saldo').AsFloat);
    Close;
    ParamByName('idData1').AsDateTime := StrToDate(Resumo1.Text);
    ParamByName('idData2').AsDateTime := StrToDate(Resumo2.Text);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('idNatureza').AsString := 'S';
    ParamByName('idBanco').AsString := tblPlaconBanco.FieldByName('Conta').AsString;
    Open;
    SaidasDinheiro.Text := FloatToStr(FieldByName('Saldo').AsFloat);
    SaldoFinalDinheiro.Text := FloatToStr(SaldoInicialDinheiro.Value +
    EntradasDinheiro.Value - SaidasDinheiro.Value);
  end;
end;

procedure TBoxFinanceiroBancoResumo.tblBancoAfterCancel(DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoResumo.tblBancoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoResumo.ValorExit(Sender: TObject);
begin
   BtnSalvar.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.AbrirDs;
begin
  DataSourceBanco.Dataset.Open;
  DataSourcePlaconBanco.DataSet.Open;
end;

procedure TBoxFinanceiroBancoResumo.BtnEditarClick(Sender: TObject);
begin
  Fim := True;
  DataBanco.Enabled := False;
  Valor.Enabled := False;
  if tblBanco.FieldByName('Natureza').AsString = 'E' then
   begin
//    DataBanco.Enabled := True;
    fim := False;
   end;
  tblBanco.Edit;
  CodigoBanco.Setfocus;
end;

procedure TBoxFinanceiroBancoResumo.BtnImprimirClick(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

procedure TBoxFinanceiroBancoResumo.BtnImprimirExit(Sender: TObject);
begin
  Banco.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.BtnSalvarClick(Sender: TObject);
begin
 try
  tblBanco.Post;
 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
  end;
  Showmessage('Dados gravados');
  Banco.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.BtnSalvarExit(Sender: TObject);
begin
  if tblbanco.State in [dsEdit, dsInsert] then
    btnSalvar.Click;
end;

procedure TBoxFinanceiroBancoResumo.CodigoBancoExit(Sender: TObject);
begin
  if fim then
    BtnSalvar.SetFocus
  else
    DataBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.DataBancoExit(Sender: TObject);
begin
//  if tblBanco.FieldByName('Natureza').AsString = 'E' then
//   begin
//    Valor.Enabled := True;
//   end;
//  if fim then
    BtnSalvar.SetFocus
//  else
//    Valor.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.DBGrid1Exit(Sender: TObject);
begin
  BtnImprimir.SetFocus;
end;

procedure TBoxFinanceiroBancoResumo.DBGrid1TitleClick(Column: TColumn);
begin
  tblAuxResumo.IndexFieldNames := Column.FieldName;
  tblAuxResumo.First;
end;

procedure TBoxFinanceiroBancoResumo.FecharDs;
begin
  DataSourceBanco.Dataset.Close;
  DataSourcePlaconBanco.DataSet.Close;
end;

end.
