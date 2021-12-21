unit FinanceiroCaixaEntradasPedidosBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvDBControls, JvExMask, JvToolEdit, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet;

type
  TBoxFinanceiroCaixaEntradasPedidosBoleto = class(TForm)
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
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
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    DataSourceCreceber: TDataSource;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    BtnConfirma: TBitBtn;
    NovoDocumento: TDBEdit;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Cliente: TDBEdit;
    Valor: TDBEdit;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    Historico: TDBEdit;
    BtnImprimir: TBitBtn;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    DataSourcePessoas: TDataSource;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tblPedidoVeiculosRecebimentoAfterCancel(DataSet: TDataSet);
    procedure tblPedidoVeiculosRecebimentoAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDs;
    procedure FecharDs;
    procedure CancelaRecebimento;
    procedure GravaDados;
  end;

var
  BoxFinanceiroCaixaEntradasPedidosBoleto: TBoxFinanceiroCaixaEntradasPedidosBoleto;
  Retorno : String;

implementation

uses Empresas, FDB, Biblioteca;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasPedidosBoleto := nil;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.BtnConfirmaClick(
  Sender: TObject);
begin
  GravaDados;
  BtnImprimir.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.BtnImprimirClick(
  Sender: TObject);
begin
  with tblPessoas do
  begin
    Close;
    ParamByName('id').AsInteger := tblCreceber.FieldByName('id_Clientes').AsInteger;
    Open;
  end;
  case MessageDlg('Emitir boleto?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
      Retorno := Biblioteca.ImprimirBoleto(BoxFinanceiroCaixaEntradasPedidosBoleto.tblCreceber, BoxFinanceiroCaixaEntradasPedidosBoleto.tblPessoas);
      with tblCreceber do
      begin
        Edit;
        FieldByName('Documento').AsString := Retorno;
        FieldByName('Boleto_emitido').AsString := 'T';
        Post;
      end;
     end;
    end;
  tblCreceber.Close;
  tblCreceber.Open;
  DBGrid1.Refresh;
  Documento.Text := '';
  Historico.Text := '';
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.GravaDados;
begin
 try

  {Alterar Contas a receber}
    With tblCreceber do
     begin
       FieldByName('Status').AsString := 'Processado';
       Post;
     end;
  {Alterar pedido de veículos}
    With tblPedidoVeiculosRecebimento do
     begin
        Close;
        ParamByName('id').AsInteger :=
          tblCreceber.FieldByName('id_CReceber').AsInteger;
        Open;
        Edit;
        FieldByName('Cx_bc').AsString := 'Boleto';
        FieldByName('Data_recebimento').AsDateTime := DataAtual;
        //  tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor_recebido').AsCurrency :=
          tblCreceber.FieldByName('Valor').AsCurrency;
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
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.CancelaRecebimento;
begin
//  with tblCreceber do
//   begin
//    Edit;
//    FieldByName('Pagamento').Value := Null;
//    Post;
//   end;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.DBGrid1Exit(Sender: TObject);
begin
  NovoDocumento.SetFocus;
  Fdb1.AtualizaDataAtual;
  tblCreceber.Edit;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.FormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
{  if (tblCreceber.FieldByName('Pagamento').AsDateTime <> null)  and
   (tblCreceber.FieldByName('Status').AsString = 'Pendente') then
    case MessageDlg('Cancela recebimento?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        CanClose :=  True;
        CancelaRecebimento;
       end;
      mrNo :
       begin
        CanClose := False;
       end;
    end;}
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.FormShow(Sender: TObject);
begin
//  Panel1.Enabled := False;
  DBGrid1.SetFocus;
  tblCreceber.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.tblPedidoVeiculosRecebimentoAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.tblPedidoVeiculosRecebimentoAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.AbrirDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosBoleto.FecharDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
end;

end.
