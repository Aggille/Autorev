unit FinanceiroCaixaGeralEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin,
  JvMaskEdit;

type
  TBoxFinanceiroCaixaGeralEntrada = class(TForm)
    StatusBar1: TStatusBar;
    tblConcessionaria: TIBDataSet;
    DataSourceConcessionaria: TDataSource;
    tblCaixa: TIBDataSet;
    DataSourceCaixa: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Documento: TDBEdit;
    LabelData: TLabel;
    Data: TJvDBDateEdit;
    idConcessionaria: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Historico: TDBEdit;
    SpeedButton1: TSpeedButton;
    NomeConta: TDBEdit;
    Label5: TLabel;
    Dinheiro: TCurrencyEdit;
    BtnConfirma: TBitBtn;
    Label7: TLabel;
    CodigoBanco: TDBEdit;
    SpeedButton2: TSpeedButton;
    NomeBanco: TJvDBMaskEdit;
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
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure idConcessionariaExit(Sender: TObject);
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
    idBanco : Integer;
    { Public declarations }
  end;

var
  Retorno : String;
  BoxFinanceiroCaixaGeralEntrada: TBoxFinanceiroCaixaGeralEntrada;

implementation

uses Biblioteca, FDB, Empresas, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroCaixaGeralEntrada.BtnConfirmaClick(Sender: TObject);
begin
  if Biblioteca.ConfereCamposPreenchidos(DataSourceCaixa) and (DataSourceCaixa.State in [dsEdit, dsInsert]) then
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

procedure TBoxFinanceiroCaixaGeralEntrada.GravaDados;
begin
 try
  {Gravar Caixa - reg.novo}
   With tblCaixa do
     begin
  //    FieldByName('Id_Concessionaria').AsInteger := BoxEmpresas.idBancoConcessionaria;
//        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('Natureza').AsString := 'S';
      FieldByName('Valor').AsCurrency := Dinheiro.Value;
      Post;
     end;
 {  with tblDespesas do
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
   end;     }
  {Gravar Caixa - reg.novo}
   DuplicaRegistro(tblCaixa);
   With tblCaixa do
     begin
      Edit;
      FieldByName('Historico').AsString := Substr('Transferência do caixa da concessionária:'+idConcessionaria.text+'-'+nomeconta.text,1,60);
      FieldByName('Id_Concessionaria').AsInteger := 999;
      FieldByName('Natureza').AsString := 'E';
      Post;
     end;
{   with tblDespesas do
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
   end;   }
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

procedure TBoxFinanceiroCaixaGeralEntrada.idConcessionariaExit(Sender: TObject);
begin
if idConcessionaria.Text = '' then
   idConcessionaria.Text := '0';
//idConta := StrToInt(CodigoConta.Text);
if StrtoInt(idConcessionaria.Text) = 0 then
  begin
   SpeedButton1.Click;
   idConcessionaria.SetFocus;
  end
else
  begin
    with tblConcessionaria do
      begin
       if StrToInt(idConcessionaria.text)<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := StrToInt(idConcessionaria.text);
          Open;
          if recordcount = 0  then
            begin
             showmessage('Concessionaria inexistente.');
             idConcessionaria.SetFocus;
            end
          else
            begin
              NomeConta.Text := FieldbyName('Empresa').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdb1.IBTransaction.RollbackRetaining;
  FecharDs;
  Action :=caFree;
  BoxFinanceiroCaixaGeralEntrada := nil;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaGeralEntrada.FormShow(Sender: TObject);
begin
  AbrirDs;
  Inicio;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.Inicio;
begin
  Dinheiro.Value := 0;
  NomeConta.Text := '';
  NomeBanco.Text := 'Caixa central';
  CodigoBanco.text := '999';
  tblCaixa.Insert;
  Fdb1.AtualizaDataAtual;
  tblCaixa.FieldByName('Forma_Pag').AsString := 'DINHEIRO';
  tblCaixa.FieldByName('Status').AsString := 'Processado';
  tblCaixa.FieldByName('Data_recebimento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Data_lancamento').AsDateTime := DataAtual;
  tblCaixa.FieldByName('Historico').AsString := 'Transferência para caixa central';
//  tblCaixa.FieldByName('Documento').AsString := '9999';
  Documento.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de concessionárias','Concessionaria',
      ['Empresa','Id_Concessionaria'],
      ['Concessionária:','Código concessionária:'],
      'Empresa','Id_Concessionaria',Fdb1.SQLConnection1,'ATIVA = ','T','');
     with tblConcessionaria do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
  //      idConcessionaria.text := retorno;
       tblCaixa.FieldByName('id_Concessionaria').AsString := retorno;
    //    tblBanco.FieldByName('Conta').Asstring :=
      //    tblConcessionaria.FieldByName('Conta').AsString;
        NomeConta.Text := tblConcessionaria.FieldByName('Empresa').Text;
     end;
     idConcessionaria.SetFocus;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.tblCaixaAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.tblCaixaAfterPost(
  DataSet: TDataSet);
begin
   Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.FecharDs;
begin
  DataSourceCaixa.DataSet.Close;
  DataSourceConcessionaria.DataSet.Close;
end;

procedure TBoxFinanceiroCaixaGeralEntrada.AbrirDs;
begin
  DataSourceCaixa.DataSet.Open;
  DataSourceConcessionaria.DataSet.Open;
end;
end.
