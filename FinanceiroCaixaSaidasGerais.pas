unit FinanceiroCaixaSaidasGerais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin;

type
  TBoxFinanceiroCaixaSaidasGerais = class(TForm)
    StatusBar1: TStatusBar;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    tblCaixa: TIBDataSet;
    DataSourceCaixa: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Documento: TDBEdit;
    LabelData: TLabel;
    Data: TJvDBDateEdit;
    CodigoConta: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Historico: TDBEdit;
    SpeedButton1: TSpeedButton;
    NomeConta: TDBEdit;
    Label5: TLabel;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
    Label6: TLabel;
    BtnConfirma: TBitBtn;
    Bevel1: TBevel;
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
    Label3: TLabel;
    Origem: TDBLookupComboBox;
    DataSourceSetor: TDataSource;
    tblSetor: TIBDataSet;
    tblSetorID_SETOR: TIntegerField;
    tblSetorNOME: TIBStringField;
    tblSetorSETOR: TIBStringField;
    DataSourceDespesas: TDataSource;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CodigoContaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AbrirDs; virtual;
    procedure FecharDs; virtual;
    procedure GravaDados;
    procedure Inicio;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblCaixaAfterCancel(DataSet: TDataSet);
    procedure tblCaixaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    idConta : Integer;
    { Public declarations }
  end;

var
  Retorno : String;
  BoxFinanceiroCaixaSaidasGerais: TBoxFinanceiroCaixaSaidasGerais;

implementation

uses Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroCaixaSaidasGerais.BtnConfirmaClick(Sender: TObject);
begin
  if Biblioteca.ConfereCamposPreenchidos(DataSourceCaixa) and (DataSourceCaixa.State in [dsEdit, dsInsert]) then
   begin
    if (Dinheiro.Value = 0) and (Cheque.Value =0) then
      begin
        showmessage('Preencha o valor.');
        Dinheiro.SetFocus;
      end
    else
      GravaDados;
   end;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.GravaDados;
var
   mDocumento : String;
   mData : TDateTime;
   mConta : String;
   mHistorico : String;
   mSetor : String;
   n : integer;
begin
  Showmessage('Dados gravados');
  {Gravar caixa - reg.novo}
   mData := tblCaixa.FieldByName('Data_Recebimento').AsDateTime;
   mDocumento := tblCaixa.FieldByName('Documento').AsString;
   mHistorico := tblCaixa.FieldByName('Historico').AsString;
   mConta := tblCaixa.FieldByName('Conta').AsString;
   mSetor := tblCaixa.FieldByName('Origem').AsString;
   if (dinheiro.value = 0) or (cheque.value = 0) then
    begin
      With tblCaixa do
        begin
         FieldByName('Id_Concessionaria').AsInteger :=
           StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         FieldByName('Natureza').AsString := 'S';
         if dinheiro.Value = 0 then
            FieldByName('Forma_Pag').AsString := 'CHEQUE'
         else
            FieldByName('Forma_Pag').AsString := 'DINHEIRO';
         Fdb1.AtualizaDataAtual;
         FieldByName('Data_lancamento').AsDateTime := DataAtual;
         FieldByName('Valor').AsCurrency := Dinheiro.Value + Cheque.Value;
         FieldByName('Status').AsString := 'Processado';
         Post;
        end;
    end
   else
      begin
        With tblCaixa do
          begin
           for n := 1 to 2 do
             begin
              if n = 1 then
                begin
                  FieldByName('Valor').AsCurrency := Dinheiro.Value;
                  FieldByName('Forma_Pag').AsString := 'DINHEIRO';
                end
              else
                begin
                  Insert;
                  FieldByName('Valor').AsCurrency := Cheque.Value;
                  FieldByName('Forma_Pag').AsString := 'CHEQUE';
                  FieldByName('Documento').AsString := mDocumento;
                  FieldByName('Data_Recebimento').AsDateTime := mData;
                  FieldByName('Historico').AsString := mHistorico;
                  FieldByName('Conta').AsString := mConta;
                end;
              FieldByName('Id_Concessionaria').AsInteger :=
                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
              FieldByName('Origem').AsString := mSetor;
              FieldByName('Natureza').AsString := 'S';
              Fdb1.AtualizaDataAtual;
              FieldByName('Data_lancamento').AsDateTime := DataAtual;
              FieldByName('Status').AsString := 'Processado';
              Post;
             end;
          end;
      end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Conta').AsString := mConta;
     FieldByName('Historico').AsString := tblCaixa.FieldByName('Historico').AsString;
     FieldByName('Data').AsDateTime := mData;
     FieldByName('Setor').AsString := mSetor;
     FieldByName('Valor').AsCurrency := Dinheiro.Value + Cheque.Value;
     Post;
   end;
  Inicio;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.CodigoContaExit(Sender: TObject);
begin
if CodigoConta.Text = '' then
   CodigoConta.Text := '0';
idConta := StrToInt(CodigoConta.Text);
if StrtoInt(CodigoConta.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoConta.SetFocus;
  end
else
  begin
    with tblPlacon do
      begin
       if idConta<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idConta;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Conta inexistente.');
             CodigoConta.SetFocus;
            end
          else
            begin
              NomeConta.Text := FieldbyName('Descricao').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdb1.IBTransaction.RollbackRetaining;
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaSaidasGerais := nil;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaSaidasGerais.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.Inicio;
begin
  Dinheiro.Value := 0;
  Cheque.Value := 0;
  NomeConta.Text := '';
  tblCaixa.Insert;
  Fdb1.AtualizaDataAtual;
  tblCaixa.FieldByName('Data_Recebimento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Historico').AsString := 'Pgto ref.';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        idConta := tblPlacon.FieldByName('conta').AsInteger;
        tblCaixa.FieldByName('Conta').Asstring :=
          tblPlacon.FieldByName('Conta').AsString;
        NomeConta.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoConta.SetFocus;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.tblCaixaAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.tblCaixaAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroCaixaSaidasGerais.FecharDs;
begin
  DataSourceCaixa.DataSet.Close;
  DataSourcePlacon.DataSet.Close;
  DataSourceSetor.DataSet.Close;
  DataSourceDespesas.DataSet.Close;  
end;

procedure TBoxFinanceiroCaixaSaidasGerais.AbrirDs;
begin
  DataSourceCaixa.DataSet.Open;
  DataSourcePlacon.DataSet.Open;
  DataSourceSetor.DataSet.Open;
  DataSourceDespesas.DataSet.Open;
end;
end.
