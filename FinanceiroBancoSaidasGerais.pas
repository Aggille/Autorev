unit FinanceiroBancoSaidasGerais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin,
  JvMaskEdit, IBQuery, JvExControls, JvDBLookup;

type
  TBoxFinanceiroBancoSaidasGerais = class(TForm)
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
    tblBancoID_CRECEBER: TIntegerField;
    IBQuery1: TIBQuery;
    tblBancoID_DESPESAS: TIntegerField;
    Label10: TLabel;
    tblConcessionaria: TIBDataSet;
    tblConcessionariaID_CONCESSIONARIA: TIntegerField;
    tblConcessionariaEMPRESA: TIBStringField;
    tblConcessionariaENDERECO: TIBStringField;
    tblConcessionariaCIDADE: TIBStringField;
    tblConcessionariaESTADO: TIBStringField;
    tblConcessionariaCNPJ: TIBStringField;
    tblConcessionariaIE: TIBStringField;
    tblConcessionariaCONCESSION: TIBStringField;
    tblConcessionariaTELEFONE: TIBStringField;
    tblConcessionariaCOD_CONCES: TIBStringField;
    tblConcessionariaALIQUOTA_ISS: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    tblConcessionariaCODIGO_EMPRESA_JB: TIBStringField;
    tblConcessionariaIM: TIBStringField;
    tblConcessionariaCNAE: TIBStringField;
    tblConcessionariaFANTASIA: TIBStringField;
    tblConcessionariaCEP: TIBStringField;
    tblConcessionariaNUMERO: TIBStringField;
    tblConcessionariaCOMPLEMENTO: TIBStringField;
    tblConcessionariaCODIGO_MUNICIPIO: TIBStringField;
    tblConcessionariaBAIRRO: TIBStringField;
    tblConcessionariaHOST: TIBStringField;
    tblConcessionariaPORT: TIBStringField;
    tblConcessionariaUSUARIO: TIBStringField;
    tblConcessionariaPASS: TIBStringField;
    DataSourceConcessionaria: TDataSource;
    Concessionaria: TJvDBLookupCombo;
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
    procedure ConcessionariaChange(Sender: TObject);
  private
    { Private declarations }
  public
    idConta : Integer;
    idBanco : Integer;
    idConcessionariaGravar : Integer;
    { Public declarations }
  end;

var
  Retorno : String;
  BoxFinanceiroBancoSaidasGerais: TBoxFinanceiroBancoSaidasGerais;

implementation

uses Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidasGerais.BtnConfirmaClick(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasGerais.GravaDados;
var
 idDespesas : integer;
begin
 try
  {Pegar sequence para despesas}
  IBQuery1.Open;
  IdDespesas := IBQuery1.FieldByName('id_Despesas').AsInteger;
  IBQuery1.Close;
  {Gravar Banco - reg.novo}
   With tblBanco do
     begin
      FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('Natureza').AsString := 'S';
      FieldByName('Valor').AsCurrency := Dinheiro.Value;
      FieldByName('Id_Despesas').AsInteger := idDespesas;
      Post;
     end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Despesas').AsInteger := idDespesas;
     FieldByName('Id_Concessionaria').AsInteger := idConcessionariaGravar;
     //tblConcessionaria.FieldByName('id_Concessionaria').AsInteger;
//       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
  showmessage('Dados gravados');
  Inicio;
end;

procedure TBoxFinanceiroBancoSaidasGerais.CodigoBancoExit(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasGerais.CodigoContaExit(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasGerais.ConcessionariaChange(Sender: TObject);
begin
  idConcessionariaGravar := tblConcessionaria.FieldByName('id_Concessionaria').AsInteger;
end;

procedure TBoxFinanceiroBancoSaidasGerais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdb1.IBTransaction.RollbackRetaining;
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoSaidasGerais := nil;
end;

procedure TBoxFinanceiroBancoSaidasGerais.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoSaidasGerais.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroBancoSaidasGerais.Inicio;
begin
  Dinheiro.Value := 0;
  NomeConta.Text := '';
  tblBanco.Insert;
  Fdb1.AtualizaDataAtual;
  tblBanco.FieldByName('Data').AsDateTime := DataAtual;
  tblBanco.FieldByName('Historico').AsString := 'Pgto ref.';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasGerais.SpeedButton1Click(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasGerais.SpeedButton2Click(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasGerais.tblBancoAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoSaidasGerais.tblBancoAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoSaidasGerais.FecharDs;
begin
  DataSourceBanco.DataSet.Close;
  DataSourcePlacon.DataSet.Close;
  DataSourcePlaconBanco.DataSet.Close;  
  DataSourceSetor.DataSet.Close;
  DataSourceDespesas.DataSet.Close;
  DataSourceConcessionaria.Dataset.Close;
end;

procedure TBoxFinanceiroBancoSaidasGerais.AbrirDs;
begin
  DataSourceConcessionaria.Dataset.Open;
   with tblConcessionaria do
   begin
     first;
     while not eof do
     begin
       if StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)= fieldByName('Id_Concessionaria').AsInteger then
         break;
       next;
     end;
   end;
  Concessionaria.DisplayEmpty := tblConcessionaria.FieldByName('Empresa').AsString;
  idConcessionariaGravar := tblConcessionaria.FieldByName('Id_Concessionaria').AsInteger;
  DataSourceBanco.DataSet.Open;
  DataSourcePlacon.DataSet.Open;
  DataSourcePlaconBanco.DataSet.Open;
  DataSourceSetor.DataSet.Open;
  DataSourceDespesas.DataSet.Open;
end;
end.
