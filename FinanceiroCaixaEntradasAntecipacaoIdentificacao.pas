unit FinanceiroCaixaEntradasAntecipacaoIdentificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, IBCustomDataSet,
  StdCtrls, Buttons;

type
  TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    tblAntecipacao: TIBDataSet;
    DataSourceAntecipacao: TDataSource;
    DataSourcePendencias: TDataSource;
    tblAntecipacaoID_CRECEBER: TIntegerField;
    tblAntecipacaoID_CONCESSIONARIA: TIntegerField;
    tblAntecipacaoID_CLIENTES: TIntegerField;
    tblAntecipacaoID_AVALISTA: TIntegerField;
    tblAntecipacaoID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblAntecipacaoDOCUMENTO: TIBStringField;
    tblAntecipacaoPARCELA: TIBStringField;
    tblAntecipacaoVEZES: TIBStringField;
    tblAntecipacaoID_FORMA_PAGAMENTO: TIntegerField;
    tblAntecipacaoORIGEM: TIBStringField;
    tblAntecipacaoCONTA: TIBStringField;
    tblAntecipacaoVENCIMENTO: TDateField;
    tblAntecipacaoVALOR: TIBBCDField;
    tblAntecipacaoEMISSAO: TDateField;
    tblAntecipacaoTOTAL: TIBBCDField;
    tblAntecipacaoPAGAMENTO: TDateField;
    tblAntecipacaoVALOR_PAGO: TIBBCDField;
    tblAntecipacaoBANCO: TIBStringField;
    tblAntecipacaoSTATUS: TIBStringField;
    tblAntecipacaoID_PEDIDO_VEICULOS: TIntegerField;
    tblAntecipacaoBOLETO_EMITIDO: TIBStringField;
    tblAntecipacaoNOME: TIBStringField;
    tblPendencias: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField4: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    DateField2: TDateField;
    IBBCDField2: TIBBCDField;
    DateField3: TDateField;
    IBBCDField3: TIBBCDField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IntegerField7: TIntegerField;
    IBStringField10: TIBStringField;
    BtnConfirma: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    tblPedidoVeiculosRecebimento: TIBDataSet;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField;
    tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField;
    tblPedidoVeiculosRecebimentoCX_BC: TIBStringField;
    tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField;
    tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField;
    tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField;
    DataSourcePedidoVeiculosRecebimento: TDataSource;
    tblPendenciasHISTORICO: TIBStringField;
    tblAntecipacaoHISTORICO: TIBStringField;
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PreencheAntecipacao;
    procedure AbrirDs;
    procedure FecharDs;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblAntecipacaoAfterCancel(DataSet: TDataSet);
    procedure tblAntecipacaoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao: TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao;

implementation

uses FDB, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.wwDBGrid1DblClick(
  Sender: TObject);
begin
  PreencheAntecipacao;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.wwDBGrid1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  PreencheAntecipacao;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.wwDBGrid1KeyPress(
  Sender: TObject; var Key: Char);
begin
  BtnConfirma.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.BtnConfirmaClick(
  Sender: TObject);
begin
  Case MessageDlg('Confirma identificação da antecipação?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
    begin
       if tblPendencias.FieldByName('Valor').AsCurrency <> tblAntecipacao.FieldByName('Valor').AsCurrency then
        Showmessage('Valor da antecipação diferente do valor da pendência.')
       else
         begin
          try
           with tblPendencias do
             begin
               Edit;
               FieldByName('Status').AsString := 'Recebido';
               FieldByName('Pagamento').AsDateTime := tblAntecipacao.FieldByName('Pagamento').AsDateTime;
               FieldByName('Valor_Pago').AsCurrency := tblAntecipacao.FieldByName('Valor_Pago').AsCurrency;
               Post;
             end;
           with tblAntecipacao do
             begin
               Edit;
               FieldByName('Status').AsString := 'AntecipadoProcessado';
               Post;
             end;
            // se o if_pedido_veiculos é diferente de nulo gravar recebimento do pedido.
           if not tblPendencias.FieldByName('id_Pedido_Veiculos').IsNull then
             begin
               with tblPedidoVeiculosRecebimento do
                 begin
                    Close;
                    ParamByName('idCreceber').AsInteger := tblPendencias.FieldByName('id_Creceber').AsInteger;
                    Open;
                    Edit;
                    FieldByName('Cx_BC').AsString := 'Caixa';
                    FieldByName('Data_Recebimento').AsDateTime := tblAntecipacao.FieldByName('Pagamento').AsDateTime;
                    FieldByName('Valor_Recebido').AsCurrency := tblAntecipacao.FieldByName('Valor_Pago').AsCurrency;
                    Post;
                    Close;
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
            Showmessage('Dados gravados');
            FecharDs;
            AbrirDs;
         end;
    end;
  end;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.FormKeyPress(
  Sender: TObject; var Key: Char);
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

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.FormShow(
  Sender: TObject);
begin
  AbrirDS;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.PreencheAntecipacao;
begin
 with tblPendencias do
 begin
   Close;
   ParamByName('IdClientes').AsInteger :=
     tblAntecipacao.FieldByName('Id_Clientes').AsInteger;
   ParamByName('IdConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
   Open;
 end;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.tblAntecipacaoAfterCancel(
  DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.tblAntecipacaoAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.AbrirDS;
begin
  tblAntecipacao.ParamByName('IdConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblAntecipacao.Open;
  PreencheAntecipacao;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.FecharDs;
begin
   tblAntecipacao.Close;
   tblPendencias.Close;
end;

end.

