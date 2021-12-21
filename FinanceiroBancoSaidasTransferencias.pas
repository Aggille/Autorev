unit FinanceiroBancoSaidasTransferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin,
  JvMaskEdit;

type
  TBoxFinanceiroBancoSaidasTransferencias = class(TForm)
    StatusBar1: TStatusBar;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    tblBanco: TIBDataSet;
    DataSourceBanco: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Documento: TDBEdit;
    LabelData: TLabel;
    Data: TJvDBDateEdit;
    CodigoConta: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Historico: TDBEdit;
    SpeedButton1: TSpeedButton;
    NomeConta: TDBEdit;
    Label5: TLabel;
    Dinheiro: TCurrencyEdit;
    BtnConfirma: TBitBtn;
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
    tblBancoORIGEM: TIBStringField;
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
    procedure tblBancoAfterCancel(DataSet: TDataSet);
    procedure tblBancoAfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoBancoExit(Sender: TObject);
  private
    { Private declarations }
  public
    idConta : Integer;
    idBanco : Integer;
    { Public declarations }
  end;

var
  Retorno : String;
  BoxFinanceiroBancoSaidasTransferencias: TBoxFinanceiroBancoSaidasTransferencias;

implementation

uses Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidasTransferencias.BtnConfirmaClick(Sender: TObject);
begin
  if Biblioteca.ConfereCamposPreenchidos(DataSourceBanco) and (DataSourceBanco.State in [dsEdit, dsInsert]) then
   begin
    if (Dinheiro.Value = 0) then
      begin
        showmessage('Preencha o valor.');
        Dinheiro.SetFocus;
      end
    else
      GravaDados;
   end;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.GravaDados;
begin
 try
  {Gravar Banco - reg.novo}
   With tblBanco do
     begin
      FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('Natureza').AsString := 'E';
      FieldByName('Valor').AsCurrency := Dinheiro.Value;
      Post;
     end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Conta').AsString := tblBanco.FieldByName('Conta').AsString;
     FieldByName('Historico').AsString := tblBanco.FieldByName('Historico').AsString;
     FieldByName('Data').AsDateTime :=
       tblBanco.FieldByName('Data').AsDateTime;
     FieldByName('Setor').AsString := tblBanco.FieldByName('Origem').AsString;
     FieldByName('Valor').AsCurrency := Dinheiro.Value;
     Post;
   end;
  {Gravar Banco - reg.novo}
   DuplicaRegistro(tblBanco);
   With tblBanco do
     begin
      Edit;
      FieldByName('Conta').AsString := tblBanco.FieldByName('Banco').AsString;
      FieldByName('Banco').AsString := tblDespesas.FieldByName('Conta').AsString;
      FieldByName('Natureza').AsString := 'S';
      Post;
     end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Conta').AsString := tblBanco.FieldByName('Conta').AsString;
     FieldByName('Historico').AsString := tblBanco.FieldByName('Historico').AsString;
     FieldByName('Data').AsDateTime :=
       tblBanco.FieldByName('Data').AsDateTime;
     FieldByName('Setor').AsString := tblBanco.FieldByName('Origem').AsString;
     FieldByName('Valor').AsCurrency := Dinheiro.Value;
     Post;
   end;
 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;
 Showmessage('Dados gravados');
 Inicio;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.CodigoBancoExit(
  Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasTransferencias.CodigoContaExit(Sender: TObject);
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
             showmessage('Banco inexistente.');
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

procedure TBoxFinanceiroBancoSaidasTransferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdb1.IBTransaction.RollbackRetaining;
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoSaidasTransferencias := nil;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoSaidasTransferencias.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.Inicio;
begin
  Dinheiro.Value := 0;
  NomeConta.Text := '';
  tblBanco.Insert;
  Fdb1.AtualizaDataAtual;
  tblBanco.FieldByName('Data').AsDateTime := DataAtual;
  tblBanco.FieldByName('Historico').AsString := 'Transferência bancária entre contas próprias';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.SpeedButton1Click(Sender: TObject);
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
        tblBanco.FieldByName('Conta').Asstring :=
          tblPlacon.FieldByName('Conta').AsString;
        NomeConta.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoConta.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.SpeedButton2Click(Sender: TObject);
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
        idConta := tblPlacon.FieldByName('conta').AsInteger;
        tblBanco.FieldByName('Banco').Asstring :=
          tblPlacon.FieldByName('Conta').AsString;
        NomeBanco.Text := tblPlacon.FieldByName('Descricao').Text;
     end;
     CodigoBanco.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.tblBancoAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.tblBancoAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.FecharDs;
begin
  DataSourceBanco.DataSet.Close;
  DataSourcePlacon.DataSet.Close;
  DataSourcePlaconBanco.DataSet.Close;  
  DataSourceSetor.DataSet.Close;
  DataSourceDespesas.DataSet.Close;
end;

procedure TBoxFinanceiroBancoSaidasTransferencias.AbrirDs;
begin
  DataSourceBanco.DataSet.Open;
  DataSourcePlacon.DataSet.Open;
  DataSourcePlaconBanco.DataSet.Open;
  DataSourceSetor.DataSet.Open;
  DataSourceDespesas.DataSet.Open;
end;
end.
