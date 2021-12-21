unit FinanceiroBancoEntradasOutros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, Grids, DBGrids, Mask, DBCtrls,
  Buttons, rxCurrEdit, rxToolEdit, IBCustomDataSet, JvExMask, JvToolEdit,
  JvDBControls, JvMaskEdit;

type
  TBoxFinanceiroBancoEntradasOutros = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    LabelData: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    Historico: TDBEdit;
    BtnConfirma: TBitBtn;
    Origem: TDBLookupComboBox;
    DataSourceSetor: TDataSource;
    tblSetor: TIBDataSet;
    tblSetorID_SETOR: TIntegerField;
    tblSetorNOME: TIBStringField;
    tblSetorSETOR: TIBStringField;
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
    Dinheiro: TDBEdit;
    tblBancoORIGEM: TIBStringField;
    Label7: TLabel;
    CodigoBanco: TDBEdit;
    SpeedButton2: TSpeedButton;
    NomeBanco: TJvDBMaskEdit;
    tblPlaconBanco: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    DataSourcePlaconBanco: TDataSource;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Inicio;
    procedure AbrirDs;
    procedure FecharDs;
    procedure tblBancoAfterCancel(DataSet: TDataSet);
    procedure tblBancoAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DinheiroExit(Sender: TObject);
    procedure CodigoBancoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    idBanco : Integer;
    { Public declarations }
  end;

var
  BoxFinanceiroBancoEntradasOutros: TBoxFinanceiroBancoEntradasOutros;
  i : integer;
  Retorno : String;

implementation

uses FDB, PesquisaGeral, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroBancoEntradasOutros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoEntradasOutros := nil;
end;

procedure TBoxFinanceiroBancoEntradasOutros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoEntradasOutros.FormKeyPress(Sender: TObject; var Key: Char);
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
  end
end;

procedure TBoxFinanceiroBancoEntradasOutros.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroBancoEntradasOutros.Inicio;
begin
  tblBanco.Insert;
  Fdb1.AtualizaDataAtual;
  tblBanco.FieldByName('Data').AsDateTime := DataAtual;
  tblBanco.FieldByName('Historico').AsString := 'Rec. ref.';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasOutros.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas bancárias','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'','','');
     with tblPlaconBanco do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        idBanco := tblPlaconBanco.FieldByName('conta').AsInteger;
        tblBanco.FieldByName('Banco').Asstring :=
          tblPlaconBanco.FieldByName('Conta').AsString;
        NomeBanco.Text := tblPlaconBanco.FieldByName('Descricao').Text;
     end;
     CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasOutros.BtnConfirmaClick(Sender: TObject);
begin
  with tblBanco do
  begin
    FieldByName('Natureza').AsString := 'E';
    FieldByName('ID_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Post;
    Showmessage('Dados Gravados');
    Insert;
    FieldByName('Data').AsDateTime := DataAtual;
    FieldByName('Historico').AsString := 'REC.REF.';
  end;
  Documento.SetFocus;  

end;

procedure TBoxFinanceiroBancoEntradasOutros.CodigoBancoExit(Sender: TObject);
begin
if CodigoBanco.Text = '' then
   CodigoBanco.Text := '0';
idBanco := StrToInt(CodigoBanco.Text);
if StrtoInt(CodigoBanco.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoBanco.SetFocus;
  end
else
  begin
    with tblPlaconBanco do
      begin
       if idBanco<> 0 then
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

procedure TBoxFinanceiroBancoEntradasOutros.DinheiroExit(Sender: TObject);
begin
  BtnConfirma.SetFocus;
end;

procedure TBoxFinanceiroBancoEntradasOutros.tblBancoAfterCancel(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoEntradasOutros.tblBancoAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroBancoEntradasOutros.AbrirDs;
begin
  DataSourceSetor.Dataset.Open;
  DataSourceBanco.Dataset.Open;
end;

Procedure TBoxFinanceiroBancoEntradasOutros.FecharDs;
begin
  DataSourceSetor.Dataset.Close;
  DataSourceBanco.Dataset.Close;
end;

end.
