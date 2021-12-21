unit FinanceiroRenegociacaoEfetuar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, StdCtrls, Mask, Buttons, ExtCtrls, DB,
  IBCustomDataSet, rxToolEdit, rxCurrEdit, IBQuery;

type
  TBoxFinanceiroRenegociacaoEfetuar = class(TForm)
    StatusBar1: TStatusBar;
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
    DataSourceCreceber: TDataSource;
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
    Panel1: TPanel;
    LabelCodigo: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    CodigoCliente: TMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    wwDBGrid2: TwwDBGrid;
    FormaPagamento: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Valor_devido: TCurrencyEdit;
    tblRenegociacao: TIBDataSet;
    DataSourceRenegociacao: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    Parcela: TJvDBMaskEdit;
    Valor: TJvDBMaskEdit;
    Historico: TJvDBMaskEdit;
    Label9: TLabel;
    Label6: TLabel;
    Vezes: TJvDBMaskEdit;
    Label5: TLabel;
    Pagamento: TJvDBDateEdit;
    Label7: TLabel;
    Label16: TLabel;
    Vencimento: TJvDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    BtnConcluir: TBitBtn;
    BtnNovo: TBitBtn;
    Label11: TLabel;
    Documento: TDBEdit;
    tblRenegociacaoID_CRECEBER: TIntegerField;
    tblRenegociacaoID_CONCESSIONARIA: TIntegerField;
    tblRenegociacaoID_CLIENTES: TIntegerField;
    tblRenegociacaoID_AVALISTA: TIntegerField;
    tblRenegociacaoID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblRenegociacaoDOCUMENTO: TIBStringField;
    tblRenegociacaoPARCELA: TIBStringField;
    tblRenegociacaoVEZES: TIBStringField;
    tblRenegociacaoID_FORMA_PAGAMENTO: TIntegerField;
    tblRenegociacaoORIGEM: TIBStringField;
    tblRenegociacaoCONTA: TIBStringField;
    tblRenegociacaoVENCIMENTO: TDateField;
    tblRenegociacaoVALOR: TIBBCDField;
    tblRenegociacaoEMISSAO: TDateField;
    tblRenegociacaoTOTAL: TIBBCDField;
    tblRenegociacaoPAGAMENTO: TDateField;
    tblRenegociacaoVALOR_PAGO: TIBBCDField;
    tblRenegociacaoBANCO: TIBStringField;
    tblRenegociacaoHISTORICO: TIBStringField;
    tblRenegociacaoSTATUS: TIBStringField;
    tblRenegociacaoID_PEDIDO_VEICULOS: TIntegerField;
    tblRenegociacaoBOLETO_EMITIDO: TIBStringField;
    Valor_Original: TCurrencyEdit;
    IBQuery1: TIBQuery;
    BtnSalvar: TBitBtn;
    JvDBNavigator1: TJvDBNavigator;
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
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    procedure tblCReceberAfterCancel(DataSet: TDataSet);
    procedure tblCReceberAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharDs;
    procedure Cancelar;
    procedure AbrirDs;
    procedure PreencheValores;
    procedure Renegociacao;
    procedure CodigoClienteExit(Sender: TObject);
    procedure wwDBGrid2Exit(Sender: TObject);
    procedure wwDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id : Integer;
    idCreceberRenegociado : Integer;
  end;

var
  BoxFinanceiroRenegociacaoEfetuar: TBoxFinanceiroRenegociacaoEfetuar;
  Retorno : String;

implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxFinanceiroRenegociacaoEfetuar.PreencheValores;
begin
  Fdb1.AtualizaDataAtual;
  valor_Original.Value := tblCreceber.FieldByName('Valor').AsCurrency;
  if tblCreceber.FieldByName('Vencimento').AsDateTime = DataAtual then
    begin
      Valor_devido.Value := tblCreceber.FieldByName('Valor').AsCurrency;
    end
  else
//   if (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =4) or
//   (tblCreceber.FieldByName('id_forma_Pagamento').AsInteger =1) then
      begin
       Fdb1.AtualizaDataAtual;
       Valor_devido.Value := CalculaJuros(DataAtual, tblCreceber.FieldByName('Vencimento').AsDateTime,
        tblCreceber.FieldByName('valor').AsCurrency);
      end
//    else
//      Valor_devido.Value := tblCreceber.FieldByName('Valor').AsCurrency;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxFinanceiroRenegociacaoEfetuar := nil;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tblCreceber.FieldByName('Status').AsString = 'Em renegociação' then
    case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
      Cancelar;
      CanClose := True;
     end;
     mrNo : CanClose := False;
    end;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.Cancelar;
begin
  with tblCreceber do
  begin
    Edit;
    FieldByName('Status').AsString := 'Processado';
    Post;
  end;
  with tblRenegociacao do
  begin
    Close;
    ParamByName('idCreceberRenegociado').AsInteger := idCreceberRenegociado;
    Open;
    First;
    while not eof do
     begin
       Delete;
       Next;
     end;
  end;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroRenegociacaoEfetuar.FormShow(Sender: TObject);
begin
  Panel2.Enabled := False;
  AbrirDs;
  CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.SpeedButton1Click(Sender: TObject);
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

procedure TBoxFinanceiroRenegociacaoEfetuar.tblCReceberAfterCancel(
  DataSet: TDataSet);
begin
 FDB1.IBtransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.tblCReceberAfterPost(
  DataSet: TDataSet);
begin
 FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.wwDBGrid1DblClick(Sender: TObject);
begin
   tblrenegociacao.Edit;
   Documento.Setfocus;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.wwDBGrid2DblClick(Sender: TObject);
begin
  PreencheValores;
  Renegociacao;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.wwDBGrid2Exit(Sender: TObject);
begin
  PreencheValores;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.wwDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 PreencheValores;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
   begin
    PreencheValores;
    Renegociacao;
   end;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.Renegociacao;
begin
  case MessageDlg('Renegociar esta dívida?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
        idCreceberRenegociado := tblCreceber.FieldByName('id_Creceber').AsInteger;
        with tblCreceber do
        begin
          Edit;
          FieldByName('Status').AsString := 'Em renegociação';
          Post;
        end;
        with tblRenegociacao do
        begin
          Close;
          ParamByName('IdCReceberRenegociado').AsInteger := idCreceberRenegociado;
          Open;  
        end;
        Panel2.Enabled := True;
        BtnNovo.SetFocus;
//        showmessage(inttostr(idcreceberrenegociado));
      end;
  end;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.BtnNovoClick(Sender: TObject);
begin
 if (DataSourceRenegociacao.Dataset.State in [dsedit,dsInsert]) then
  begin
    tblRenegociacao.Post;
  end;
 with tblRenegociacao do
 begin
   Insert;
   FieldByName('id_Concessionaria').AsInteger :=
     tblCreceber.FieldByName('id_Concessionaria').AsInteger;
   FieldByName('Status').AsString := 'Em renegociação';
   FieldByName('Emissao').AsDateTime := DataAtual;
   FieldByName('Id_clientes').AsInteger := tblCreceber.FieldByName('id_Clientes').AsInteger;
   FieldByName('Id_Avalista').AsInteger := tblCreceber.FieldByName('id_Avalista').AsInteger;   
   FieldByName('Historico').AsString := tblCreceber.FieldByName('historico').AsString;
   FieldByName('vezes').AsString := tblCreceber.FieldByName('vezes').AsString;
   FieldByName('parcela').AsString := tblCreceber.FieldByName('parcela').AsString;
   FieldByName('Id_Creceber_renegociado').AsInteger :=
     tblCreceber.FieldByName('Id_Creceber').AsInteger;
   FieldByName('Origem').AsString := 'R';
   FieldByName('Id_pedido_veiculos').AsInteger :=
     tblCreceber.FieldByName('id_Pedido_veiculos').AsInteger;  
 end;
 Documento.SetFocus;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.BtnSalvarClick(Sender: TObject);
begin
  if (DataSourceRenegociacao.Dataset.State in [dsedit,dsInsert]) then
   begin
    tblRenegociacao.Post;
    showmessage('Dados gravados.');
   end;
with IBQuery1 do
 begin
   Close;
   ParamByName('idCReceberRenegociado').AsInteger := idCreceberRenegociado;
   Open;
 end;
if IBQuery1.FieldByName('valor').Value = Valor_devido.Value then
 begin
   Showmessage('Soma das novas faturas igual ao valor devido.');
   BtnSalvar.SetFocus;
 end
else
 BtnNovo.SetFocus;
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.BtnConcluirClick(Sender: TObject);
begin
{conferir soma entre o valor atual e os novos valores}
with IBQuery1 do
 begin
//   showmessage(ibquery1.fieldbYname('valor').AsString);
   Close;
   ParamByName('idCReceberRenegociado').AsInteger := idCreceberRenegociado;
   Open;
//      showmessage(ibquery1.fieldbYname('valor').AsString);
 end;
if IBQuery1.FieldByName('valor').Value >= Valor_devido.Value then
 begin
  with tblCreceber do
   begin
    Edit;
    FieldByName('Status').AsString := 'Renegociado';
    Post;
   end;
  with tblRenegociacao do
  begin
    Close;
    ParamByName('idCreceberRenegociado').AsInteger := idCreceberRenegociado;
    Open;
    First;
    while not eof do
     begin
       Edit;
       FieldByName('Status').AsString := 'Processado';
       Post;
       Next;
     end;
  end;
  showmessage('Renegociação concluída.');
  tblrenegociacao.close;
  tblcreceber.Close;
  tblCreceber.Open;
  wwDBGRid2.SetFOcus;
 end
else
 Showmessage('A Soma de novos valores é diferente do valor atual.' + #13 +
 'Operação não concluída.'+ #13 +
 'As novas contas somam:' + IBQuery1.FieldByName('valor').AsString + #13 +
 'E o valor devido é:' + valor_devido.Text);

end;

procedure TBoxFinanceiroRenegociacaoEfetuar.CodigoClienteExit(Sender: TObject);
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

procedure TBoxFinanceiroRenegociacaoEfetuar.FecharDs;
begin
  DataSourceCreceber.Dataset.Close;
  DataSourcePessoas.DataSet.Close;
  DataSourceFormaPagamentos.Dataset.Close;
  DataSourceRenegociacao.Dataset.Close;  
end;

procedure TBoxFinanceiroRenegociacaoEfetuar.AbrirDs;
begin
  DataSourceCreceber.Dataset.Open;
  DataSourcePessoas.DataSet.Open;
  DataSourceFormaPagamentos.Dataset.Open;
  DataSourceRenegociacao.Dataset.Open;
end;

end.
