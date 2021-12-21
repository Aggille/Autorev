unit FinanceiroBancoSaidasSaque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExMask, JvToolEdit, JvDBControls, Mask, DBCtrls,
  ExtCtrls, DB, IBCustomDataSet;

type
  TBoxFinanceiroBancoSaidasSaque = class(TForm)
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
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    LabelData: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    CodigoBanco: TDBEdit;
    Historico: TDBEdit;
    NomeBanco: TDBEdit;
    BtnConfirma: TBitBtn;
    Dinheiro: TDBEdit;
    tblBancoORIGEM: TIBStringField;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure Inicio;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblBancoAfterCancel(DataSet: TDataSet);
    procedure tblBancoAfterPost(DataSet: TDataSet);
    procedure CodigoBancoExit(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroBancoSaidasSaque: TBoxFinanceiroBancoSaidasSaque;
  Retorno : String;
  idBanco : Integer;

implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidasSaque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoSaidasSaque := nil;
end;

procedure TBoxFinanceiroBancoSaidasSaque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoSaidasSaque.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoSaidasSaque.FormShow(Sender: TObject);
begin
 AbrirDs;
 Inicio;
end;

procedure TBoxFinanceiroBancoSaidasSaque.Inicio;
begin
  tblCaixa.Insert;
  Fdb1.AtualizaDataAtual;
  tblCaixa.FieldByName('Data_Recebimento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Historico').AsString := 'SAQUE PARA SUPRIMENTO DE CAIXA';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasSaque.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas bancárias','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        idBanco := tblPlacon.FieldByName('conta').AsInteger;
        tblCaixa.FieldByName('Conta').Asstring :=
          tblPlacon.FieldByName('Conta').AsString;
        NomeBanco.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasSaque.tblBancoAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoSaidasSaque.tblBancoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoSaidasSaque.AbrirDs;
begin
  DataSourceBanco.Dataset.Open;
  DataSourceCaixa.Dataset.Open;
  DataSourcePlacon.Dataset.Open;
end;

procedure TBoxFinanceiroBancoSaidasSaque.BtnConfirmaClick(Sender: TObject);
begin
  with tblBanco do
  begin
    Insert;
    FieldByName('ID_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Documento').AsString := tblCaixa.FieldByName('Documento').AsString;
    FieldByName('Natureza').AsString := 'S';
    FieldByName('Data').AsString := tblCaixa.FieldByName('Data_Recebimento').AsString;
    FieldByName('Valor').AsString := tblcaixa.FieldByName('Valor').AsString;
    FieldByName('Banco').AsString := tblcaixa.FieldByName('Conta').AsString;
    FieldByName('Historico').AsString := tblcaixa.FieldByName('Historico').AsString;
    Post;
  end;
  with tblCaixa do
  begin
    FieldByName('Natureza').AsString := 'E';
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Forma_Pag').AsString := 'DINHEIRO';
    FieldByName('Data_Lancamento').AsDateTime := DataAtual;
    FieldByName('ID_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Post;
    Showmessage('Dados Gravados');
    Insert;
    FieldByName('Data_Recebimento').AsDateTime := DataAtual;
    FieldByName('Historico').AsString := 'SAQUE PARA SUPRIMENTO DE CAIXA';
  end;
  Documento.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasSaque.CodigoBancoExit(Sender: TObject);
begin
if CodigoBanco.Text = '' then
   CodigoBanco.Text := '0';
idBanco := StrToInt(CodigoBanco.Text);
if StrtoInt(CodigoBanco.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoBanco.SetFocus;
  end
else
  begin
    with tblPlacon do
      begin
       if idBanco<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idBanco;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Banco inexistente.');
             CodigoBanco.SetFocus;
            end
          else
            begin
              NomeBanco.Text := FieldbyName('Descricao').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxFinanceiroBancoSaidasSaque.DinheiroExit(Sender: TObject);
begin
 BtnConfirma.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasSaque.FecharDs;
begin
  DataSourceBanco.Dataset.Open;
  DataSourceCaixa.Dataset.Open;
  DataSourcePlacon.Dataset.Open;
end;

end.
