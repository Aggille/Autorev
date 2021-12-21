unit FinanceiroCaixaEntradasPedidosCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids;

type
  TBoxFinanceiroCaixaEntradasPedidosCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    LabelForma: TLabel;
    Dinheiro: TCurrencyEdit;
    Cheque: TCurrencyEdit;
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
    DataRecebimento: TJvDBDateEdit;
    DataSourceCaixa: TDataSource;
    DataSourceCreceber: TDataSource;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblCaixa: TIBDataSet;
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
    tblCaixaSTATUS: TIBStringField;
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
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    tblCaixaHISTORICO: TIBStringField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
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
  BoxFinanceiroCaixaEntradasPedidosCaixa: TBoxFinanceiroCaixaEntradasPedidosCaixa;

implementation

uses Empresas, FDB, Biblioteca;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.BtnConfirmaClick(Sender: TObject);
begin
  if Dinheiro.Value + Cheque.Value <>
    tblCreceber.FieldByName('Valor').AsCurrency then
     begin
      case MessageDlg('O valor recebido é inferior ao valor total. Confirma recebimento?', mtConfirmation, [mbYes,mbNo], 0) of
        mrYes: GravaDados;
        mrNo : Dinheiro.SetFocus;
      end
     end
  else
   if dinheiro.value + cheque.value > 0 then
    begin
      GravaDados;
    end
   else
    Showmessage('Recebimento não efetuado. Valor muito baixo.');
  tblCreceber.Close;
  tblCreceber.Open;
  DBGrid1.Refresh;
  Dinheiro.AsInteger := 0;
  Cheque.Asinteger := 0;
  Documento.Text := '';
  Historico.Text := '';
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.GravaDados;
var
  matriz: array[1..5] of String;
  i: integer;
  n: integer;
begin
 try

  {Alterar Contas a receber}
    With tblCreceber do
     begin
       Edit;
       FieldByName('Status').AsString := 'Recebido';
       FieldByName('Valor_Pago').AsCurrency := Cheque.Value + Dinheiro.Value;
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
        FieldByName('Cx_bc').AsString := 'Caixa';
        FieldByName('Data_recebimento').AsDateTime :=
          tblCreceber.FieldByName('Pagamento').AsDateTime;
        FieldByName('Valor_recebido').AsCurrency :=
          tblCreceber.FieldByName('Valor_Pago').AsCurrency;
        Post;
     end;
  {Gravar caixa - reg.novo}
     matriz[1] := 'Documento';
     matriz[2] := 'Historico';
     matriz[3] := 'Id_concessionaria';
     matriz[4] := 'Id_clientes';
     matriz[5] := 'Origem';
     if (dinheiro.value = 0) or (cheque.value = 0) then
      begin
        With tblCaixa do
          begin
           Insert;
           FieldByName('Natureza').AsString := 'E';
           Fdb1.AtualizaDataAtual;
           FieldByName('Data_lancamento').AsDateTime := DataAtual;
           FieldByName('Data_recebimento').AsDateTime :=
             tblCreceber.FieldByName('Pagamento').AsDateTime; ;
           for I := 1 to 5 do
             begin
              FieldByName(matriz[i]).AsString :=
                tblCreceber.FieldByName(matriz[i]).AsString;
             end;
           FieldByName('Valor').AsCurrency :=
             tblCreceber.FieldByName('Valor_Pago').AsCurrency;
           FieldByName('Status').AsString := 'Processado';
           if dinheiro.value=0 then
             begin
              FieldByName('Forma_Pag').AsString := 'CHEQUE';
              FieldByName('Status_Banco').AsString :='Receb.Cx.';
             end
           else
             FieldByName('Forma_Pag').AsString := 'DINHEIRO';
           Post;
          end;
      end
    else
      begin
        With tblCaixa do
          begin
           for n := 1 to 2 do
             begin
              Insert;
              if n = 1 then
                begin
                  FieldByName('Valor').AsCurrency := Dinheiro.Value;
                  FieldByName('Forma_Pag').AsString := 'DINHEIRO'
                end
              else
                begin
                  FieldByName('Valor').AsCurrency := Cheque.Value;
                  FieldByName('Forma_Pag').AsString := 'CHEQUE';
                end;
              FieldByName('Status').AsString := 'Processado';
              FieldByName('Natureza').AsString := 'E';
              Fdb1.AtualizaDataAtual;
              FieldByName('Data_lancamento').AsDateTime := DataAtual;
              FieldByName('Data_recebimento').AsDateTime :=
                tblCreceber.FieldByName('Pagamento').AsDateTime; ;
              for I := 1 to 5 do
               begin
                 FieldByName(matriz[i]).AsString :=
                   tblCreceber.FieldByName(matriz[i]).AsString;
               end;
              Post;
             end;
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
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.DBGrid1Exit(Sender: TObject);
begin
  Dinheiro.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.DinheiroExit(Sender: TObject);
begin
  tblCreceber.Edit;
  Fdb1.AtualizaDataAtual;
  tblCreceber.FieldByName('Pagamento').AsDateTime := DataAtual;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasPedidosCaixa := nil;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{  if (tblCreceber.FieldByName('Pagamento').AsDateTime <> null)  and
   (tblCreceber.FieldByName('Status').AsString = 'Pendente') then
    case MessageDlg('depois Cancela recebimento?', mtConfirmation, [mbYes,mbNo], 0) of
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

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.CancelaRecebimento;
begin
//  with tblCreceber do
//   begin
//    Edit;
//    FieldByName('Pagamento').Value := Null;
//    Post;
//   end;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.FormShow(Sender: TObject);
begin
//  Panel1.Enabled := False;
  DBGrid1.SetFocus;
  tblCreceber.ParamByName('id').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  AbrirDs;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.AbrirDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Open;
   DataSourceCreceber.Dataset.Open;
   DataSourceCaixa.Dataset.Open;
end;

Procedure TBoxFinanceiroCaixaEntradasPedidosCaixa.FecharDs;
begin
   DataSourcePedidoVeiculosRecebimento.Dataset.Close;
   DataSourceCreceber.Dataset.Close;
   DataSourceCaixa.Dataset.Close;
end;

end.
