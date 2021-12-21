unit FinanceiroCaixaGeralSaidasDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids, Wwdbigrd, Wwdbgrid, JvErrorIndicator, JvValidators,
  JvComponentBase, IBQuery;

type
  TBoxFinanceiroCaixaGeralSaidasDeposito = class(TForm)
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
    DataSourceBanco: TDataSource;
    tblBanco: TIBDataSet;
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
    tblCaixaCheques: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    IBBCDField1: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    DataSourceCaixaCheques: TDataSource;
    tblCaixaChequesSTATUS_BANCO: TIBStringField;
    tblCaixaChequesID_DEPOSITO: TIntegerField;
    tblCaixaChequesDEPOSITADO: TIBStringField;
    Validador: TJvValidators;
    jvDocumento: TJvCustomValidator;
    Sumario: TJvValidationSummary;
    JvErrorIndicator1: TJvErrorIndicator;
    JvData: TJvCustomValidator;
    Label1: TLabel;
    Documento: TDBEdit;
    LabelData: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Historico: TDBEdit;
    CodigoConta: TDBEdit;
    SpeedButton1: TSpeedButton;
    NomeConta: TDBEdit;
    Data: TJvDBDateEdit;
    JvConta: TJvCustomValidator;
    JvHistorico: TJvCustomValidator;
    Label6: TLabel;
    Cheque: TCurrencyEdit;
    Dinheiro: TCurrencyEdit;
    Label5: TLabel;
    BtnConfirma: TBitBtn;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    IBQuery2: TIBQuery;
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
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tblBancoBeforePost(DataSet: TDataSet);
    procedure jvDocumentoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvDataValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvContaValidate(Sender: TObject;
      ValueToValidate: Variant; var Valid: Boolean);
    procedure JvHistoricoValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvValorDinheiroValidate(Sender: TObject; ValueToValidate: Variant;
      var Valid: Boolean);
    procedure JvChequeValidate(Sender: TObject;
      ValueToValidate: Variant; var Valid: Boolean);
  private
    { Private declarations }
  public
    idConta : Integer;
    idBanco : Integer;
    { Public declarations }
  end;

var
  Retorno : String;
  BoxFinanceiroCaixaGeralSaidasDeposito: TBoxFinanceiroCaixaGeralSaidasDeposito;

implementation

uses Biblioteca, FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.BitBtn1Click(Sender: TObject);
begin
   with tblCaixacheques do
   begin
     first;
     while not eof  do
     begin
       wwDBGrid1DblClick( wwdbGrid1 );
       next;
       application.ProcessMessages;
     end;
   end;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.BtnConfirmaClick(Sender: TObject);
begin
  if dinheiro.value + cheque.value > 0 then
     GravaDados
  else
    Showmessage('É preciso informar um valor.');
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.GravaDados;
var
   mDocumento : String;
   mData : TDateTime;
   mConta : String;
   mHistorico : String;
   matriz: array[1..5] of String;
   i : integer;
   n : integer;
begin
 try
  {Gravar caixa - reg.novo}
   mData := tblCaixa.FieldByName('Data_Recebimento').AsDateTime;
   mDocumento := tblCaixa.FieldByName('Documento').AsString;
   mHistorico := tblCaixa.FieldByName('Historico').AsString;
   mConta := tblCaixa.FieldByName('Conta').AsString;
   if (dinheiro.value = 0) or (cheque.value = 0) then
    begin
      With tblCaixa do
        begin
         FieldByName('Id_Concessionaria').AsInteger := 999;
//           StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         FieldByName('Origem').AsString := 'B';
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
              FieldByName('Id_Concessionaria').AsInteger := 999;
//                StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
              FieldByName('Origem').AsString := 'B';
              FieldByName('Natureza').AsString := 'S';
              Fdb1.AtualizaDataAtual;
              FieldByName('Data_lancamento').AsDateTime := DataAtual;
              FieldByName('Status').AsString := 'Processado';
              Post;
             end;
          end;
      end;
  matriz[1] := 'Id_concessionaria';
  matriz[2] := 'Id_clientes';
  matriz[3] := 'Documento';
  matriz[4] := 'Conta';
  matriz[5] := 'Historico';
  with tblBanco do
  begin
   if (Dinheiro.Value = 0) or (Cheque.Value = 0) then
     begin
       Insert;
       {Pegar Sequence novo para produtos}
       IBQuery2.Open;
       IdBanco := IBQuery2.FieldByName('id_Banco').AsInteger;
       IBQuery2.Close;
       FieldByName('Id_Banco').AsInteger := IdBanco;
       FieldByName('Valor').AsCurrency := Dinheiro.Value + Cheque.Value;
       FieldByName('Data').AsDateTime := mData;
       FieldByName('Banco').AsString := mConta;
       for i := 1 to 5 do
         begin
           FieldByName(matriz[i]).AsString :=
             tblCaixa.FieldByName(matriz[i]).AsString;
         end;
       FieldByName('Natureza').AsString := 'E';
       if Dinheiro.Value = 0 then
         FieldByName('Natureza').AsString := 'P';
       FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
       Post;
     end
   else
      begin
        With tblBanco do
          begin
           for n := 1 to 2 do
             begin
              Insert;
              FieldByName('Natureza').AsString := 'E';
              if n = 1 then
                begin
                  FieldByName('Valor').AsCurrency := Dinheiro.Value;
                end
              else
                begin
                  {Pegar Sequence novo para produtos}
                  IBQuery2.Open;
                  IdBanco := IBQuery2.FieldByName('id_Banco').AsInteger;
                  IBQuery2.Close;
                  FieldByName('Id_Banco').AsInteger := IdBanco;
                  FieldByName('Valor').AsCurrency := Cheque.Value;
                  FieldByName('Natureza').AsString := 'P';                  
                end;
               FieldByName('Data').AsDateTime := mData;
               FieldByName('Banco').AsString := mConta;
               for i := 1 to 5 do
                begin
                 FieldByName(matriz[i]).AsString :=
                  tblCaixa.FieldByName(matriz[i]).AsString;
                end;
                FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
                Post;
             end;
          end;
      end;
  end;
  With tblCaixaCheques do
  begin
    First;
    while not eof do
    begin
      if FieldByName('depositado').AsString = 'S' then
       begin
       Edit;
       FieldByName('Id_Deposito').AsInteger := IdBanco;
       FieldByName('Status_Banco').AsString := 'Depositado';
       Post;
       end;
      Next;
    end;
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

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.CodigoContaExit(Sender: TObject);
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

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaGeralSaidasDeposito := nil;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.FormShow(Sender: TObject);
begin
//  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.Inicio;
begin
  FecharDs;
  AbrirDs;
  Dinheiro.Value := 0;
  Cheque.Value := 0;
  NomeConta.Text := '';
  tblCaixa.Insert;
  Fdb1.AtualizaDataAtual;
  tblCaixa.FieldByName('Data_Recebimento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Historico').AsString := 'N/Depósito cfe recibo';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.JvContaValidate(
  Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblCaixa.fieldbyname( 'Conta' ).asString <> '' )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.JvChequeValidate(
  Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( Cheque.value <> 0 )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.JvDataValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblCaixa.fieldbyname( 'Data_Recebimento' ).asString <> '' )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.jvDocumentoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblCaixa.fieldbyname( 'documento' ).asString <> '' )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.JvHistoricoValidate(Sender: TObject;
  ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( tblCaixa.fieldbyname( 'Historico' ).asString <> '' )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.JvValorDinheiroValidate(
  Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
    valid := ( dinheiro.value <> 0 )
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'Conta_Bancaria =','T','');
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

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.tblBancoBeforePost(
  DataSet: TDataSet);
var
mensagem:String;
x:Integer;
begin
   sumario.Summaries.Clear;
   validador.Validate;

   mensagem:= '';

   for x := 0 to sumario.summaries.count  - 1 do
     mensagem := sumario.summaries[x] + #13;

   if sumario.summaries.count > 0 then
   begin
     showmessage( mensagem );
     abort;
   end;
   
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.tblCaixaAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.tblCaixaAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.wwDBGrid1DblClick(Sender: TObject);
begin
   with tblcaixaCheques do
   begin

     edit;
     if fieldbyname( 'depositado' ).asString = 'S' then
        fieldbyname( 'depositado' ).asString := 'N'
     else
        fieldbyname( 'depositado' ).asString := 'S';
     post;

     if fieldbyname( 'depositado' ).asString = 'S' then
        if fieldbyname( 'forma_pag' ).asString = 'DINHEIRO' then
           dinheiro.value := dinheiro.value + fieldbyname( 'valor' ).asCurrency
        else
           cheque.value := cheque.value + fieldbyname( 'valor' ).asCurrency;


     if fieldbyname( 'depositado' ).asString = 'N' then
        if fieldbyname( 'forma_pag' ).asString = 'DINHEIRO' then
           dinheiro.value := dinheiro.value - fieldbyname( 'valor' ).asCurrency
        else
           cheque.value := cheque.value - fieldbyname( 'valor' ).asCurrency;




   end;


end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.FecharDs;
begin
  DataSourceCaixaCheques.DataSet.Close;
  DataSourceCaixa.DataSet.Close;
  DataSourcePlacon.DataSet.Close;
  DataSourceBanco.Dataset.Close;
end;

procedure TBoxFinanceiroCaixaGeralSaidasDeposito.AbrirDs;
begin
  tblcaixacheques.close;
  tblCaixaCheques.ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblcaixaCheques.Open;
//  DataSourceCaixaCheques.DataSet.Open;
  DataSourceCaixa.DataSet.Open;
  DataSourcePlacon.DataSet.Open;
  DataSourceBanco.Dataset.Open;
end;
end.
