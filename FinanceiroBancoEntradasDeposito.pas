unit FinanceiroBancoEntradasDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, IBCustomDataSet,
  StdCtrls, DBCtrls, Buttons, Mask, wwdbedit, Wwdotdot, Wwdbcomb, JvExMask,
  JvToolEdit, JvDBControls;

type
  TBoxFinanceiroBancoEntradasDeposito = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
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
    tblBancoJUROS: TIBBCDField;
    DataSourceBanco: TDataSource;
    wwDBGrid2: TwwDBGrid;
    tblCaixaCheques: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField4: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField3: TIBStringField;
    DateField2: TDateField;
    IBStringField5: TIBStringField;
    IBStringField7: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaChequesSTATUS_BANCO: TIBStringField;
    tblCaixaChequesID_DEPOSITO: TIntegerField;
    tblCaixaChequesDEPOSITADO: TIBStringField;
    DataSourceCaixaCheques: TDataSource;
    BtnConfirma: TBitBtn;
    tblCaixaChequesMOTIVO: TIBStringField;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    DataSourceCreceber: TDataSource;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label2: TLabel;
    Label1: TLabel;
    DataDeposito: TJvDateEdit;
    tblBancoORIGEM: TIBStringField;
    tblBancoID_CRECEBER: TIntegerField;
    tblBancoID_DESPESAS: TIntegerField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCaixaChequesHISTORICO: TIBStringField;
    tblBancoHISTORICO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PreencheDeposito;
    procedure FormShow(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroBancoEntradasDeposito: TBoxFinanceiroBancoEntradasDeposito;

implementation

uses FDB, Empresas, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroBancoEntradasDeposito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroBancoEntradasDeposito := nil;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoEntradasDeposito.FormShow(Sender: TObject);
begin
  AbrirDs;
  PreencheDeposito;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.wwDBGrid1DblClick(
  Sender: TObject);
begin
  PreencheDeposito;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  PreencheDeposito;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.PreencheDeposito;
begin
 with tblCaixaCheques do
 begin
   Close;
   ParamByName('IdDeposito').AsInteger :=
     tblBanco.FieldByName('Id_Banco').AsInteger;
   Open;
 end;
 DataDeposito.Date := DataAtual;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
   FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.BtnConfirmaClick(Sender: TObject);
var
 Banco : String;
 Origem : String;
 Motivo : String;
begin
try
 with tblCaixaCheques do
 begin
   First;
   while not eof do
    begin
      if (FieldByName('Depositado').AsString = 'Devolvido ') and
         (FieldByName('Motivo').AsString = '00') then
          begin
           showmessage('Preencha o motivo de devolução dos cheques devolvidos');
           abort;
           exit;
          end;
      if (fieldByName('Depositado').AsString <> 'Compensado') and
         (FieldByName('Depositado').AsString <> 'Devolvido ') then
        begin
         case MessageDlg('Ficaram cheques para compensar posteriormente?', mtConfirmation, [mbYes,mbNo], 0) of
           mrNo:
            begin
             Abort;
             exit;
            end;
         end;
        end;
      Next;
    end;
 end;
 Banco := tblBanco.FieldByName('Banco').AsString;
 Origem := tblBanco.FieldByName('origem').AsString;
 //Inicio da Gravação de dados
{ with tblBanco do
  begin
    Banco := FieldByName('Banco').AsString;
    Edit;
    FieldByName('Natureza').AsString := 'E';
    Post;
  end;}
 with tblCaixaCheques do
  begin
   First;
   while not eof do
    begin
      Motivo := fieldByName('Motivo').AsString;
      Edit;
      FieldByName('Status_Banco').AsString := FieldByName('Depositado').AsString;
      Post;
      if FieldByName('Status_Banco').AsString <> 'Depositado' then
        begin
          with tblBanco do
          begin
            Insert;
            FieldByName('Id_Clientes').AsInteger := tblcaixaCheques.FieldByName('id_Clientes').AsInteger;
            FieldBYName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
          // tblCaixaCheques.FieldByName('Id_Concessionaria').AsInteger;
            FieldByName('Documento').AsString := tblcaixaCheques.FieldByName('Documento').AsString;
            FieldByName('Natureza').AsString := 'E';
            FieldByName('Valor').AsFloat := tblCaixaCheques.FieldByName('Valor').AsFloat;
            FieldByName('Historico').AsString := 'N/Dep.cfe.rec.';//tblCaixaCheques.FieldByName('Historico').AsString;
//              '-Chq.dev.mot.' + tblCaixaCheques.FieldByName('Motivo').AsString;
            FieldByName('data').AsDateTime := DataDeposito.Date;//tblCaixaCheques.FieldByName('Data_Lancamento').AsDateTime;
            FieldByName('Banco').AsString := Banco;
            FieldByName('Origem').AsString := Origem;
            Post;
          end;
        end;
      if FieldByName('Status_Banco').AsString = 'Devolvido ' then
        begin
          with tblCreceber do
           begin
             Insert;
             FieldByName('Id_Clientes').AsInteger := tblcaixaCheques.FieldByName('id_Clientes').AsInteger;
             FieldBYName('Id_Concessionaria').AsInteger := tblCaixaCheques.FieldByName('Id_Concessionaria').AsInteger;
             FieldByName('Documento').AsString := tblcaixaCheques.FieldByName('Documento').AsString;
             FieldByName('Id_forma_pagamento').AsInteger := 6;
             FieldByName('Valor').AsFloat := tblCaixaCheques.FieldByName('Valor').AsFloat;
             FieldByName('Emissao').AsDateTime := DataDeposito.Date;//tblCaixaCheques.FieldByName('Data_Lancamento').AsDateTime;
             FieldByName('Vencimento').AsDateTime := tblCaixaCheques.FieldByName('Data_Lancamento').AsDateTime;
             FieldByName('Historico').AsString :=
               Substr(trim(tblCaixaCheques.FieldByName('Historico').AsString) +
              '-Chq.dev.mot.' + motivo,1,60);//tblCaixaCheques.FieldByName('Motivo').AsString;
             FieldByName('Status').AsString := 'Processado';
             FieldByName('Boleto_emitido').AsString := 'T';
             FieldByName('Origem').AsString := Origem;
             Post;
           end;
          with tblBanco do
           begin
             Insert;
             FieldByName('Id_Clientes').AsInteger := tblcaixaCheques.FieldByName('id_Clientes').AsInteger;
             FieldBYName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;//tblCaixaCheques.FieldByName('Id_Concessionaria').AsInteger;
             FieldByName('Documento').AsString := tblcaixaCheques.FieldByName('Documento').AsString;
             FieldByName('Natureza').AsString := 'S';
             FieldByName('Valor').AsFloat := tblCaixaCheques.FieldByName('Valor').AsFloat;
             FieldByName('Historico').AsString :=
               Substr(trim(tblCaixaCheques.FieldByName('Historico').AsString) +
              '-Chq.dev.mot.' + motivo,1,60);//tblCaixaCheques.FieldByName('Motivo').AsString;
             FieldByName('data').AsDateTime := DataDeposito.Date;//tblCaixaCheques.FieldByName('Data_Lancamento').AsDateTime;
             FieldByName('Banco').AsString := Banco;
             FieldByName('Origem').AsString := Origem;
             Post;
           end;
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
  FecharDs;
  AbrirDs;
  PreencheDeposito;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.FecharDs;
begin
  DataSourceCaixaCheques.DataSet.Close;
  DataSourceBanco.Dataset.Close;
  DataSourceCreceber.DataSet.Close;
end;

procedure TBoxFinanceiroBancoEntradasDeposito.AbrirDs;
begin
  with tblBanco do
  begin
    Close;
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
  end;
  DataSourceCaixaCheques.DataSet.Open;
  DataSourceCreceber.DataSet.Open;
end;

end.
