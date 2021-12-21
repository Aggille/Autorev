unit FinanceiroCaixaEntradasAntecipacaoRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, JvMaskEdit, JvDBControls, Buttons, Mask, DBCtrls,
  JvExMask, JvToolEdit, StdCtrls, rxToolEdit, rxCurrEdit, DB, IBCustomDataSet,
  IBQuery, ACBrBase, ACBrExtenso;

type
  TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
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
    tblCaixaJUROS: TIBBCDField;
    tblCaixaSTATUS_BANCO: TIBStringField;
    tblCaixaID_DEPOSITO: TIntegerField;
    DataSourceCaixa: TDataSource;
    Label1: TLabel;
    LabelData: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Historico: TDBEdit;
    Data: TJvDBDateEdit;
    Label3: TLabel;
    tblSetor: TIBDataSet;
    tblSetorID_SETOR: TIntegerField;
    tblSetorNOME: TIBStringField;
    tblSetorSETOR: TIBStringField;
    DataSourceSetor: TDataSource;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    NomeCliente: TJvDBMaskEdit;
    Documento: TDBEdit;
    BtnConfirma: TBitBtn;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    DataSourcePessoas: TDataSource;
    IBQuery1: TIBQuery;
    Origem: TDBLookupComboBox;
    CodigoCliente: TDBEdit;
    ACBrExtenso1: TACBrExtenso;
    Dinheiro: TCurrencyEdit;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    procedure CodigoClienteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FecharDs;
    procedure AbrirDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
   idCaixa : Integer;
   idCliente : Integer;
  end;

var
  Retorno : String;
  BoxFinanceiroCaixaEntradasAntecipacaoRecebimento: TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento;

implementation

uses FDB, Empresas, Biblioteca, Menu, efuncoes;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.BtnConfirmaClick(
  Sender: TObject);
begin
 try

  with tblCreceber do
   begin
     tblCaixa.FieldByName('Valor').AsCurrency := Dinheiro.Value;
     insert;
     FieldByName('ID_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Id_Clientes').AsInteger :=
       tblcaixa.FieldByName('id_clientes').AsInteger;
     FieldByName('Origem').AsString := 'A';
     FieldByName('Parcela').AsString := '1';
     FieldByName('Vezes').AsString := '1';
     FieldByName('Vencimento').AsDateTime := tblCaixa.FieldByName('Data_Recebimento').AsDateTime;
     FieldByName('Emissao').AsDateTime := DataAtual;
     FieldByName('Pagamento').AsDateTime := tblCaixa.FieldByName('Data_Recebimento').AsDateTime;
     FieldByName('Valor').AsCurrency :=
       tblcaixa.FieldByName('Valor').AsCurrency;
     FieldByName('Valor_Pago').AsCurrency :=
       tblcaixa.FieldByName('Valor').AsCurrency;
     FieldByName('Total').AsCurrency :=
       tblcaixa.FieldByName('Valor').AsCurrency;
     FieldByName('Historico').AsString :=
       tblcaixa.FieldByName('Historico').AsString;
     FieldByName('Status').AsString := 'Antecipado';
     FieldByName('Id_Forma_Pagamento').AsString := '2';
     Post;
   end;
  with tblCaixa do
   begin
    FieldByName('Natureza').AsString := 'E';
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Forma_Pag').AsString := 'DINHEIRO';
    FieldByName('Data_Lancamento').AsDateTime := DataAtual;
    FieldByName('ID_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    {Pega um sequence novo para o Caixa}
    IBQuery1.Open;
    IdCaixa := IBQuery1.FieldByName('id_Caixa').AsInteger;
    IBQuery1.Close;
    FieldByName('id_Caixa').AsInteger := idCaixa;
    Post;
    if MessageDlg('Deseja emitir o recibo para o cliente ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      with boxMenu.frxRecibo do
      begin
        acbrextenso1.valor            := (dinheiro.value);
        variables['valor']            := quotedStr( floatToStrF( dinheiro.value , ffCurrency, 16 , 2 ) );

        variables['data']             := quotedStr( BoxEmpresas.ConcessionariaCidade.Text +
            ', ' + formatDateTime( 'dd ''de'' MMMM ''de'' yyyy' , data.Date ) );
        variables['numero']           := '000';
        variables['nomecliente']      := quotedStr( nomecliente.Text );
        variables['valorextenso']     := quotedStr(acbrextenso1.texto);
        variables['incricao_cliente'] := tblPessoas.fieldbyname( 'num_cpf' ).asString;
        variables['referente']        := quotedStr('Pagamento ' + tblcReceber.fieldbyname( 'historico' ).asString );
        variables['documento']        := quotedStr(documento.Text);
        Variables['Concessionaria']   := quotedStr(BoxEmpresas.ConcessionariaEmUso.Text);
        showReport(true);
      end;
    Insert;
    FieldByName('Data_Recebimento').AsDateTime := DataAtual;
  end;
  Documento.SetFocus;
  except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
  end;
  showmessage('Dados gravados');
  NomeCliente.Text := '';
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.CodigoClienteExit(
  Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end;
             if not ValidaCliente(tblPessoas) then
               CodigoCliente.SetFocus
             else
               Data.SetFocus;
            end;
            NomeCliente.Text := FieldbyName('Nome').Text;
            tblcaixa.FieldByName('Historico').AsString := Substr('Rec.antec.cliente ' + NomeCliente.Text,1,60);
         end;
      end;
  end;

end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
   FecharDs;
   Action :=caFree;
   BoxFinanceiroCaixaEntradasAntecipacaoRecebimento := nil;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.FormKeyPress(
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

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.FormShow(Sender: TObject);
begin
  AbrirDs;
  tblCaixa.Insert;
  tblCaixa.FieldByName('Data_Recebimento').AsDateTime := DataAtual;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.SpeedButton2Click(
  Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoCliente.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     if CodigoCliente.Text <> '' then  //Gravar Orçamento de peças
       tblCaixa.FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
     CodigoCliente.SetFocus;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.tblCreceberAfterCancel(
  DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.tblCreceberAfterPost(
  DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBOXFinanceiroCaixaEntradasAntecipacaoRecebimento.FecharDs;
begin
  tblcaixa.Close;
  tblCreceber.Close;
  tblPessoas.Close;
  tblSetor.Close;
end;
procedure TBOXFinanceiroCaixaEntradasAntecipacaoRecebimento.AbrirDS;
begin
  tblcaixa.Open;
  tblCreceber.Open;
  tblPessoas.Open;
  tblSetor.Open;
end;

end.

