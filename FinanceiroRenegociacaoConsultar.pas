unit FinanceiroRenegociacaoConsultar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, StdCtrls, Mask, Buttons, ExtCtrls, DB,
  IBCustomDataSet, DBCtrls;

type
  TBoxFinanceiroRenegociacaoConsultar = class(TForm)
    tblCReceber: TIBDataSet;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberHISTORICO: TIBStringField;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    tblCReceberBOLETO_EMITIDO: TIBStringField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCReceberCONTA: TIBStringField;
    DataSourceCreceber: TDataSource;
    DataSourceFormaPagamentos: TDataSource;
    tblFormasPagamento: TIBDataSet;
    tblFormasPagamentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasPagamentoFORMA_PAGAMENTO: TIBStringField;
    tblFormasPagamentoCOEFICIENTE: TFMTBCDField;
    tblFormasPagamentoPRAZO: TIBStringField;
    tblFormasPagamentoVEICULOS: TIBStringField;
    tblFormasPagamentoPECAS: TIBStringField;
    tblFormasPagamentoPOSVENDA: TIBStringField;
    tblFormasPagamentoCRECEBER: TIBStringField;
    tblFormasPagamentoCPAGAR: TIBStringField;
    DataSourcePessoas: TDataSource;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
    tblPessoasCPF: TIBStringField;
    tblPessoasNUM_CPF: TIBStringField;
    tblPessoasNASCIMENTO: TDateField;
    tblPessoasPAI: TIBStringField;
    tblPessoasMAE: TIBStringField;
    tblPessoasENDERECO: TIBStringField;
    tblPessoasBAIRRO: TIBStringField;
    tblPessoasCIDADE: TIBStringField;
    tblPessoasESTADO: TIBStringField;
    tblPessoasCEP: TIBStringField;
    tblPessoasCADASTRO: TDateField;
    tblPessoasDESCONTO: TIBBCDField;
    tblPessoasFONE1: TIBStringField;
    tblPessoasFONE2: TIBStringField;
    tblPessoasFONE3: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMPRESA: TIBStringField;
    tblPessoasADMISSAO: TDateField;
    tblPessoasSALARIO: TIBBCDField;
    tblPessoasEMPR_ENDERECO: TIBStringField;
    tblPessoasEMPR_BAIRRO: TIBStringField;
    tblPessoasEMPR_CIDADE: TIBStringField;
    tblPessoasEMPR_ESTADO: TIBStringField;
    tblPessoasEMPR_CEP: TIBStringField;
    tblPessoasEMPR_FONE: TIBStringField;
    tblPessoasREF_NOME1: TIBStringField;
    tblPessoasREF_FONE1: TIBStringField;
    tblPessoasREF_NOME2: TIBStringField;
    tblPessoasREF_FONE2: TIBStringField;
    tblPessoasREF_COML1: TIBStringField;
    tblPessoasREF_COML_FONE1: TIBStringField;
    tblPessoasREF_COML2: TIBStringField;
    tblPessoasREF_COML_FONE2: TIBStringField;
    tblPessoasREF_BANC: TIBStringField;
    tblPessoasREF_AG_BANC: TIBStringField;
    tblPessoasREF_CTA_BANC: TIBStringField;
    tblPessoasFOTO: TIBStringField;
    Panel1: TPanel;
    LabelCodigo: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    CodigoCliente: TMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    wwDBGrid2: TwwDBGrid;
    StatusBar1: TStatusBar;
    tblRenegociacao: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField3: TIntegerField;
    IBStringField4: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    DateField2: TDateField;
    IBStringField5: TIBStringField;
    IntegerField4: TIntegerField;
    IBBCDField2: TIBBCDField;
    DateField3: TDateField;
    IBBCDField3: TIBBCDField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField9: TIBStringField;
    DataSourceRenegociacao: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    FormaPagamento: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbrirDs;
    procedure FecharDs;
    procedure PreencheRenegociacao;
    procedure wwDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tblPessoasAfterCancel(DataSet: TDataSet);
    procedure tblPessoasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    id : Integer;
  end;

var
  BoxFinanceiroRenegociacaoConsultar: TBoxFinanceiroRenegociacaoConsultar;
  Retorno : String;

implementation

uses Biblioteca, FDB;

{$R *.dfm}

procedure TBoxFinanceiroRenegociacaoConsultar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroRenegociacaoConsultar := nil;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   {: se apertou ESC, fecha janela}
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

procedure TBoxFinanceiroRenegociacaoConsultar.FormShow(Sender: TObject);
begin
  AbrirDs;
  CodigoCliente.SetFocus;
end;
procedure TBoxFinanceiroRenegociacaoConsultar.wwDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 PreencheRenegociacao;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
   CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.PreencheRenegociacao;
begin
 with tblRenegociacao do
 begin
   Close;
   ParamByName('IdCreceberRenegociado').AsInteger :=
     tblCreceber.FieldByName('Id_Creceber').AsInteger;
   Open;
 end;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.SpeedButton1Click(
  Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo'],
      ['Nome:','Sequência:','Código:'],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente =','T','');
     With tblPessoas do
      begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := FieldByName('Id_Clientes').Text;
      end;
     with tblcReceber do
      begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
      end;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.tblPessoasAfterCancel(
  DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.tblPessoasAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.CodigoClienteExit(
  Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
id := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if id<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := id;
          Open;
          if recordcount = 0  then
            Showmessage('Cliente não localizado.')
          else
            begin
             NomeCliente.Text := tblPessoas.FieldByName('Nome').AsString;
             with tblCreceber do
              begin
                Close;
                ParamByName('id').AsInteger := id;
                Open;
                PreencheRenegociacao;
                wwDBGrid2.SetFocus;
              end;
            end;
         end;
      end;
   end;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.FecharDs;
begin
  DataSourceCreceber.Dataset.Close;
  DataSourcePessoas.DataSet.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  DataSourceRenegociacao.Dataset.Close;
end;

procedure TBoxFinanceiroRenegociacaoConsultar.AbrirDs;
begin
  DataSourceCreceber.Dataset.Open;
  DataSourcePessoas.DataSet.Open;
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourceRenegociacao.Dataset.Open;
end;

end.
