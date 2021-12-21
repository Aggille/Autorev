unit FinanceiroBancoSaidasCPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, JvMaskEdit, IBQuery;

type
  TBoxFinanceiroBancoSaidasCPagar = class(TForm)
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
    DBGrid1: TDBGrid;
    tblCPagar: TIBDataSet;
    DataSourceCpagar: TDataSource;
    tblCPagarID_CPAGAR: TIntegerField;
    tblCPagarID_CONCESSIONARIA: TIntegerField;
    tblCPagarID_CLIENTES: TIntegerField;
    tblCPagarDOCUMENTO: TIBStringField;
    tblCPagarNFISCAL: TIBStringField;
    tblCPagarCONTA: TIBStringField;
    tblCPagarVENCIMENTO: TDateField;
    tblCPagarVALOR: TIBBCDField;
    tblCPagarEMISSAO: TDateField;
    tblCPagarPAGAMENTO: TDateField;
    tblCPagarVALOR_PAGO: TIBBCDField;
    tblCPagarBANCO: TIBStringField;
    tblCPagarSTATUS: TIBStringField;
    DataSourceDespesas: TDataSource;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
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
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    StatusBar1: TStatusBar;
    IBQuery1: TIBQuery;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    tblDespesasHISTORICO: TIBStringField;
    tblCPagarHISTORICO: TIBStringField;
    tblCPagarNOME: TIBStringField;
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
    procedure DBGrid1Exit(Sender: TObject);
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
  BoxFinanceiroBancoSaidasCPagar: TBoxFinanceiroBancoSaidasCPagar;

implementation

uses Biblioteca, FDB, Empresas, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidasCPagar.BtnConfirmaClick(Sender: TObject);
begin
  if Biblioteca.ConfereCamposPreenchidos(DataSourceBanco) and (DataSourceBanco.State in [dsEdit, dsInsert]) then
   begin
    if (Dinheiro.value) = 0 then
      begin
        showmessage('Preencha o valor.');
        Dinheiro.SetFocus;
      end
    else
     if dinheiro.Value <> tblCPagar.FieldByName('Valor').AsCurrency then
      begin
       case MessageDlg('Pagamento com juros/desconto ?', mtConfirmation, [mbYes,mbNo], 0) of
         mrYes: GravaDados;
       end;
      end
     else
      GravaDados;
   end;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.GravaDados;
var
  IdDespesas : Integer;
begin
 try
  {Pegar sequence para despesas}
  IBQuery1.Open;
  IdDespesas := IBQuery1.FieldByName('id_Despesas').AsInteger;
  IBQuery1.Close;
  {Gravar Banco - reg.novo}
   begin
     With tblBanco do
       begin
        FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        FieldByName('Id_Clientes').AsInteger :=
          tblCPagar.FieldByName('Id_CLientes').AsInteger;
        FieldByName('Natureza').AsString := 'S';
        FieldByName('Documento').AsString :=
          TblCPagar.FieldByName('Documento').AsString;
        FieldByName('Valor').AsCurrency := Dinheiro.Value;
        FieldByName('Juros').AsCurrency := dinheiro.Value -
          tblCPagar.FieldByName('Valor').AsCurrency;
        FieldByName('Id_Despesas').AsInteger := idDespesas;
        Post;
       end;
    end;
   {Gravar Contas à Pagar}
   with tblCPagar do
   begin
     Edit;
     FieldByName('Historico').AsString := Substr(tblBanco.FieldByName('Historico').AsString,1,60);
     FieldByName('Pagamento').AsDateTime := tblBanco.FieldByName('Data').AsDateTime;
     FieldByName('Valor_Pago').AsCurrency := Dinheiro.Value;
     FieldByName('Status').AsString := 'Pago';
     Post;
   end;
   with tblDespesas do
   begin
     Insert;
     FieldByName('Id_Despesas').AsInteger := idDespesas;
     FieldByName('Id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Conta').AsString := tblBanco.FieldByName('Conta').AsString;
     FieldByName('Historico').AsString := Substr(tblBanco.FieldByName('Historico').AsString,1,60);
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

procedure TBoxFinanceiroBancoSaidasCPagar.CodigoBancoExit(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasCPagar.CodigoContaExit(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasCPagar.DBGrid1Exit(Sender: TObject);
begin
  tblBanco.FieldByName('Historico').AsString := Substr('Pgto.fat.'+tblCPagar.FieldByName('Documento').AsString+'-'+
      tblCPagar.FieldByName('Nome').AsString,1,60);
   //tblCPagar.FieldByName('Historico').AsString;
  tblBanco.FieldByName('Documento').AsString := tblCPagar.FieldByName('Documento').AsString;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoSaidasCPagar := nil;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoSaidasCPagar.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.Inicio;
begin
  Dinheiro.Value := 0;
  NomeConta.Text := '';
  tblCPagar.Close;
  tblCPagar.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblCPagar.Open;
  tblBanco.Insert;
  Fdb1.AtualizaDataAtual;
  tblBanco.FieldByName('Data').AsDateTime := DataAtual;
  tblBanco.FieldByName('Historico').AsString := 'Pgto ref.';
  DBGrid1.SetFocus;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.SpeedButton1Click(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasCPagar.SpeedButton2Click(Sender: TObject);
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

procedure TBoxFinanceiroBancoSaidasCPagar.tblBancoAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.tblBancoAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.FecharDs;
begin
  DataSourceBanco.DataSet.Close;
  DataSourcePlacon.DataSet.Close;
  DataSourcePlaconBanco.DataSet.Close;  
  DataSourceSetor.DataSet.Close;
  DataSourceCPagar.Dataset.Close;
  DataSourceDespesas.DataSet.Close;
end;

procedure TBoxFinanceiroBancoSaidasCPagar.AbrirDs;
begin
  DataSourceBanco.DataSet.Open;
  DataSourcePlacon.DataSet.Open;
  DataSourcePlaconBanco.DataSet.Open;
  DataSourceSetor.DataSet.Open;
  DataSourceCPagar.Dataset.Open;
  DataSourceDespesas.DataSet.Open;
end;
end.
