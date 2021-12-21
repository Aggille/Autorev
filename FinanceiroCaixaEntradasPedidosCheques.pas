unit FinanceiroCaixaEntradasPedidosCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids;

type
  TBoxFinanceiroCaixaEntradasPedidosCheques = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Panel3: TPanel;
    LabelCliente: TLabel;
    Label12: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    Cliente: TDBEdit;
    Valor: TDBEdit;
    Documento: TDBEdit;
    Data: TJvDBDateEdit;
    StatusBar1: TStatusBar;
    tblCreceber: TIBDataSet;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Historico: TDBEdit;
    Label3: TLabel;
    BtnConfirma: TBitBtn;
    Label4: TLabel;
    DataSourceCreceber: TDataSource;
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
    NovoDocumento: TDBEdit;
    DataRecebimento: TJvDateEdit;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDs; virtual;
    procedure FecharDs; virtual;
    procedure CancelaRecebimento; virtual;
    procedure GravaDados; virtual;
  end;

var
  BoxFinanceiroCaixaEntradasPedidosCheques: TBoxFinanceiroCaixaEntradasPedidosCheques;

implementation

uses Empresas, FDB, Biblioteca;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.BtnConfirmaClick(Sender: TObject);
begin
  GravaDados;
  tblCreceber.Close;
  tblCreceber.Open;
  DBGrid1.Refresh;
  Documento.Text := '';
  Historico.Text := '';
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.GravaDados;
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
        FieldByName('Cx_bc').AsString := 'Cheque';
        FieldByName('Data_recebimento').AsDateTime := DataRecebimento.Date;
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

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.DBGrid1Exit(Sender: TObject);
begin
  NovoDocumento.SetFocus;
  Fdb1.AtualizaDataAtual;
  DataRecebimento.Date := DataAtual;
  tblCreceber.Edit;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasPedidosCheques := nil;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
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

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.CancelaRecebimento;
begin
//  with tblCreceber do
//   begin
//    Edit;
//    FieldByName('Pagamento').Value := Null;
//    Post;
//   end;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.FormShow(Sender: TObject);
begin
//  Panel1.Enabled := False;
  DBGrid1.SetFocus;
  tblCreceber.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCheques.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosCheques.AbrirDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosCheques.FecharDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
end;

end.
