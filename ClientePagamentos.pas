unit ClientePagamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, DBClient, FMTBcd, SqlExpr, Provider, Grids, DBGrids;

type
  TBoxClientePagamentos = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    LabelCodigo: TLabel;
    JvStatusBar1: TJvStatusBar;
    CodigoCliente: TMaskEdit;
    tblCReceber: TIBDataSet;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberCONTA: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
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
    DataSourceFormaPagamentos: TDataSource;
    DBGrid1: TDBGrid;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
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
    tblCReceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCReceberBOLETO_EMITIDO: TIBStringField;
    tblCReceberForma_Pagamento: TStringField;
    tblCReceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCReceberHISTORICO: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure AbrirDs;
    procedure CodigoClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblCReceberAfterPost(DataSet: TDataSet);
    procedure tblCReceberAfterCancel(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    id: Integer;
    { Public declarations }
  end;

var
  BoxClientePagamentos: TBoxClientePagamentos;
  Retorno : String;

implementation

uses

   BIBLIOTECA, FDB, PesquisaGeral;

{$R *.dfm}

procedure TBoxClientePagamentos.CodigoClienteExit(Sender: TObject);
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
              end;
            end;
         end;
      end;
   end;
end;

procedure TBoxClientePagamentos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    CodigoCliente.SetFocus;
end;

procedure TBoxClientePagamentos.tblCReceberAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxClientePagamentos.tblCReceberAfterPost(DataSet: TDataSet);
begin
    FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxClientePagamentos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo'],
      ['Nome:','Sequência:','Código'],
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

procedure TBoxClientePagamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxClientePagamentos := nil;
end;

procedure TBoxClientePagamentos.FormShow(Sender: TObject);
begin
  AbrirDs;
  CodigoCliente.SetFocus;
end;

procedure TBoxClientePagamentos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxClientePagamentos.FecharDs;
begin
  DataSource1.Dataset.Close;
  DataSourcePessoas.DataSet.Close;
  DataSourceFormaPagamentos.Dataset.Close;
end;

procedure TBoxClientePagamentos.AbrirDs;
begin
  DataSource1.Dataset.Open;
  DataSourcePessoas.DataSet.Open;
  DataSourceFormaPagamentos.Dataset.Open;
end;

end.
