unit OperacoesPosVendaPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ComCtrls, ExtCtrls, StdCtrls, Buttons, ToolWin,
  Grids, DBGrids, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, Mask, DBCtrls,
  rxToolEdit, rxCurrEdit, Wwdbigrd, Wwdbgrid;

type
  TBoxPosVendaPecas = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    tblPecas: TIBDataSet;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasPRECO: TIBBCDField;
    tblPecasICMS: TIBBCDField;
    tblPecasPPS: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasORIGINAL: TIBStringField;
    DataSourcePecas: TDataSource;
    tblAtendimentoPecas: TIBDataSet;
    tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField;
    tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoPecasID_ATENDIMENTO: TIntegerField;
    tblAtendimentoPecasID_PECAS: TIntegerField;
    tblAtendimentoPecasQUANTIDADE: TIntegerField;
    tblAtendimentoPecasPRECO: TIBBCDField;
    DataSourceAtendimentoPecas: TDataSource;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnConfirma: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConclui: TBitBtn;
    Label1: TLabel;
    CodigoPeca: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Descricao: TLabel;
    DescricaoPeca: TJvDBMaskEdit;
    DbGrid1: TDBGrid;
    Label3: TLabel;
    Quantidade: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    PrecoProduto: TJvDBMaskEdit;
    tblAtendimentoPecasSTATUS: TIBStringField;
    tblPecas2: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    DataSourcePecas2: TDataSource;
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    DataSourcePecasMovimentacao: TDataSource;
    SpeedButton2: TSpeedButton;
    tblPecasFabrica: TIBDataSet;
    DataSourcePecasFabrica: TDataSource;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaCODIGO_NOVO: TIBStringField;
    tblPecasFabricaORIGEM: TIBStringField;
    tblPecasFabricaCUSTO: TIBBCDField;
    tblPecasFabricaPESO: TIBStringField;
    tblPecasFabricaQTDE_EMBAL: TIBStringField;
    tblPecasFabricaIPI: TIBBCDField;
    tblPecasFabricaREAJUSTE: TIBBCDField;
    tblPecasFabricaPRECO_GARAN: TIBBCDField;
    tblPecasFabricaPPS: TIBBCDField;
    tblPecasFabricaRESERVADO: TIBStringField;
    tblPecasFabricaNCM: TIBStringField;
    PrecoVenda: TCurrencyEdit;
    tblAtendimentoPecasPRECO_TABELA: TIBBCDField;
    tblAtendimentoPecasCODIGO: TIBStringField;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCST: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecasFabricaDESCRICAO: TIBStringField;
    tblPecas2DESCRICAO: TIBStringField;
    tblPecas2CST: TIBStringField;
    tblPecas2CODIGO_SGS: TIntegerField;
    tblAtendimentoPecasDESCRICAO: TIBStringField;
    procedure tblAtendimentoPecasAfterCancel(DataSet: TDataSet);
    procedure tblAtendimentoPecasAfterPost(DataSet: TDataSet);
    procedure BtnNovoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoPecaExit(Sender: TObject);
    procedure QuantidadeExit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure PrecoVendaExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CodigoPecaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tblAtendimentoPecasCODIGO1GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    idPeca : Integer;
    estoque : Integer;
    procedure FecharDs;
    procedure AbrirDs;
    procedure GravaProduto;
    procedure LimpaCampos;
  end;

var
  mStatus : String;
  Retorno : String;
  BoxPosVendaPecas: TBoxPosVendaPecas;

implementation

uses FDB, Biblioteca, Empresas, OperacoesPosVenda;

{$R *.dfm}

procedure TBoxPosVendaPecas.BtnConcluiClick(Sender: TObject);
begin
 BoxPosVenda.CalculaTotais;
 Close;
end;

procedure TBoxPosVendaPecas.BtnConfirmaClick(Sender: TObject);
begin
  GravaProduto;
  BtnExclui.Enabled := False;
  BtnNovo.SetFocus;
end;

procedure TBoxPosVendaPecas.BtnExcluiClick(Sender: TObject);
begin
 case MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes:
    begin
     if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger <> 1 then //Orçamento
     begin
      {Acrescer pecas ao estoque}
      IdPeca := tblAtendimentoPecas.FieldByName('Id_pecas').AsInteger;
      with tblPecasEstoque do
       begin
        Close;
        ParamByName('IdPecas').AsInteger := IdPeca;
        ParamByName('IdConcessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        Edit;
        FieldByName('Estoque').AsInteger := FieldByName('Estoque').AsInteger +
          tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
        FieldByName('EstoqOs').AsInteger := FieldByName('EstoqOs').AsInteger -
          tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
        Post;
       end;
      with tblPecasMovimentacao do
       begin
        Insert;
        FieldByName('Id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        FieldByName('Id_Pecas').AsInteger :=  idPeca;
        FieldByName('Movimento').AsString := 'E';
        FieldByName('Quantidade_Movimentada').AsString := tblAtendimentoPecas.FieldByName('Quantidade').AsString;
        Quantidade.Text;
        FieldByName('Quantidade_Atual').AsInteger := tblPecasEstoque.FieldByName('Estoque').AsInteger;
        FieldByName('Custo_Medio').AsCurrency :=
         tblPecasEstoque.FieldByName('CST_Medio').AsCurrency;
        FieldByName('Data').AsDateTime := DataAtual;
        FieldByName('NF').AsString := IntToStr(BoxPosVenda.idAtendimento);//BoxPosVenda.Atendimento.Text;
        Post;
       end;
     end;
     tblAtendimentoPecas.Delete;
 //  CodigoPeca.SetFocus;
//    end;
    end;
 end;
end;

procedure TBoxPosVendaPecas.BtnNovoClick(Sender: TObject);
begin
  tblAtendimentoPecas.Insert;
  CodigoPeca.SetFocus;
end;

procedure TBoxPosVendaPecas.CodigoPecaExit(Sender: TObject);
begin
//if (BoxPosVenda.tblAtendimento.FielByName('Orc_os').AsInteger = 1) and CodigoPeca.Text <> '' then
//  begin
//   SpeedButton1.Click;

//  end
if (mstatus <> 'PecasFabrica') and (BoxPosVenda.tblAtendimento.FieldByName('Orc_os').AsInteger <> 1) then
  begin
    with tblPecas do
      begin
       if CodigoPeca.Text<>'' then
         begin
          Close;
          parambyname( 'id' ).AsString := CodigoPeca.Text;
          Open;
          if recordcount = 0  then
            begin
             SpeedButton1.Click;
            end;
          if (FieldByName('NCM').AsString = '') or (FieldByName('NCM').AsString = null) then
            begin
             Showmessage('Produto sem NCM válida.');
             Speedbutton1.Click;
            end;

          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger = 3 then //Os-Garantia
            PrecoVenda.Text := FieldByName('Preco_Gar').Text
          else  // Os-Normal - Orçamento - Os-Cortesia
            PrecoVenda.Text := FieldByName('Preco').Text;
          IdPeca := FieldByName('Id_Pecas').AsInteger;
          tblAtendimentoPecas.FieldByName('Preco_Tabela').AsFloat :=
            StrToFloat(PrecoVenda.Text);
         end;
      end;
     with tblPecasEstoque do
     begin
       Close;
       ParamByName('Idconcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       PAramByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if RecordCount = 0 then
        begin
        showmessage('Essa peça não existe no estoque desta concessionária.');
        SpeedButton1.Click;
        end;
     end;
  end;
end;

procedure TBoxPosVendaPecas.CodigoPecaKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
{  EnableDisableButtons(True);      }
  if Key = #27 then
    begin
     Close;
    end;
          {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    if CodigoPeca.Text = '' then
     begin
      SpeedButton1.Click;
     end
  end;
end;

procedure TBoxPosVendaPecas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BoxPosVenda.CalculaTotais;
  FecharDs;
end;

procedure TBoxPosVendaPecas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSourceAtendimentoPecas.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;

end;

procedure TBoxPosVendaPecas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
{  EnableDisableButtons(True);      }
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

procedure TBoxPosVendaPecas.FormShow(Sender: TObject);
begin
  BtnExclui.Enabled := True;
  tblAtendimentoPecas.ParamByName('idAtendimento').AsInteger :=
    BoxPosVenda.idAtendimento;
  AbrirDs;
  if (not BoxPosVenda.Editar) then
   begin
    ToolBar1.Enabled := False;
    CodigoPeca.Enabled := False;
    SpeedButton1.Enabled := False;
    Quantidade.Enabled := False;
    PrecoVenda.Enabled := False;
   end
  else
   BtnNovo.SetFocus;
end;

procedure TBoxPosVendaPecas.PrecoVendaExit(Sender: TObject);
begin
mStatus := 'Pendente';
if CodigoPeca.Text = '' then
  CodigoPeca.SetFocus;
if (StrToInt(Quantidade.Text) < 1) or (Quantidade.Text = '') then
  Quantidade.SetFocus;
if (StrToFloat(PrecoVenda.Text) < StrToFloat(PrecoProduto.Text)*
     (1-(StrToFloat(DescontoPadraoPecas)/100))) and //desconto padrão
   (StrToFloat(PrecoVenda.Text) < StrToFloat(PrecoProduto.Text)*
     (1-(StrToFloat(DescontoCliente)/100)))then //desconto de cada cliente
   begin
    case MessageDlg('Esta venda ficará pendente. Confirma desconto?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes : BtnConfirma.SetFocus; //GravaProduto;
      mrNo : PrecoVenda.SetFocus;
    end;
   end
else
   begin
     mStatus := 'Aprovado';
     BtnConfirma.SetFocus; //GravaProduto;
   end;
end;

procedure TBoxPosVendaPecas.GravaProduto;
begin
 With tblAtendimentoPecas do
  begin
    FieldByName('Id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Id_Atendimento').AsInteger := BoxPosVenda.idAtendimento;
    FieldByName('Id_Pecas').AsInteger :=  idPeca;
    FieldByName('Quantidade').AsString := Quantidade.Text;
    FieldByName('Preco').AsCurrency := StrToCurr(PrecoVenda.Text);
    FieldByName('Status').AsString := mStatus;
//    FieldByName('Codigo1').AsString := CodigoPeca.txt;
//    FieldByName('Descricao1').AsString := DescricaoPeca.text;
    Post;
  end;
  if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger <> 1 then //Orçamento
   begin
    with tblPecasEstoque do
     begin
     Close;
     ParamByName('IdPecas').AsInteger := IdPeca;
     ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     Edit;
     FieldByName('Estoque').AsInteger :=
       FieldByName('Estoque').AsInteger - StrToInt(Quantidade.Text);
     FieldByName('EstoqOs').AsInteger :=
       FieldByName('EstoqOs').AsInteger + StrToInt(Quantidade.Text);
     Post;
     end;
    with tblPecasMovimentacao do
     begin
      Insert;
      FieldByName('Id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('Id_Pecas').AsInteger :=  idPeca;
      FieldByName('Movimento').AsString := 'S';
      FieldByName('Quantidade_Movimentada').AsString := Quantidade.Text;
      FieldByName('Quantidade_Atual').AsInteger := tblPecasEstoque.FieldByName('Estoque').AsInteger;
      FieldByName('Custo_Medio').AsCurrency :=
        tblPecasEstoque.FieldByName('CST_Medio').AsCurrency;
      FieldByName('Data').AsDateTime := DataAtual;
      FieldByName('NF').AsString := IntToStr(BoxPosVenda.idAtendimento);//BoxPosVenda.Atendimento.Text;ID
      Post;
     end;
   end;
  LimpaCampos;
  DBGrid1.Refresh;
  BtnConfirma.SetFocus;
end;

procedure TBoxPosVendaPecas.LimpaCampos;
begin
   DescricaoPeca.Text := '';
   PrecoProduto.Text := '';
   CodigoPeca.Text := '';
   Quantidade.Text := '0';
   PrecoVenda.Text := '';
end;

procedure TBoxPosVendaPecas.QuantidadeExit(Sender: TObject);
begin
if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger <> 1 then //Orcamento
 begin
  if (StrToInt(Quantidade.Text) < 1) or (Quantidade.Text = '') then
   Quantidade.SetFocus;
  with tblPecasEstoque do
   begin
     Close;
     ParamByName('IdPecas').AsInteger := IdPeca;
     ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     if RecordCount = 0 then
       Estoque := 0
     else
       Estoque := FieldByName('Estoque').AsInteger - FieldByName('EstoqOs').AsInteger;
   end;
  if Estoque < StrToInt(Quantidade.Text) then
   begin
    Showmessage('Quantidade não disponível.');
//    CodigoPeca.SetFocus;
   end;
 end;
end;

procedure TBoxPosVendaPecas.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Peças','Pecas',
      ['Codigo','Descricao','Id_Pecas'],
      ['Código:','Descrição:','Sequência:'],
      'Descricao','Codigo',Fdb1.SQLConnection1,'','','');
     with tblPecas do
     begin
        Close;
        Parambyname('id').AsString := Retorno;
        Open;
        if (FieldByName('NCM').AsString = '') or (FieldByName('NCM').AsString = null) then
          begin
           Showmessage('Produto sem NCM válida.');
           Speedbutton1.Click;
          end;
        CodigoPeca.Text := tblPecas.FieldByName('Codigo').Text;
        DescricaoPeca.Text := tblPecas.FieldByName('Descricao').Text;
        PrecoVenda.Text := FieldByName('Preco').Text;
        IdPeca := FieldByName('Id_Pecas').AsInteger;
     end;
     if CodigoPeca.Text = '' then
     begin
       CodigoPeca.SetFocus;
     end
     else
     with tblPecasEstoque do
      begin
       Close;
       ParamByName('Idconcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       PAramByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if RecordCount = 0 then
        begin
        showmessage('Essa peça não existe no estoque desta concessionária.');
        SpeedButton1.Click;
        end;
      end;
end;

procedure TBoxPosVendaPecas.SpeedButton2Click(Sender: TObject);
begin
  if BoxPosVenda.tblAtendimento.FieldByName('Orc_os').AsInteger = 1 then
   begin
     Retorno := Biblioteca.PesquisaGeral('Peças fábrica','Pecyam',
      ['Codigo','Descricao','Id_Pecyam'],
      ['Código:','Descrição:','Sequência:'],
      'Descricao','Codigo',Fdb1.SQLConnection1,'','','');
     with tblPecasFabrica do
     begin
        Close;
        Parambyname('id').AsString := Retorno;
        Open;
        CodigoPeca.Text := tblPecasFabrica.FieldByName('Codigo').Text;
        DescricaoPeca.Text := tblPecasFabrica.FieldByName('Descricao').Text;
        PrecoVenda.Text := FloatToStr(FieldByName('PPS').AsFloat * 1.36);
        IdPeca := FieldByName('Id_PecYAM').AsInteger;
        mStatus := 'PecasFabrica';
     end;
     Quantidade.SetFocus;
   end
  else
   Showmessage('Só é possível procurar peças no arquivo da fábrica para Orçamentos.');
end;

procedure TBoxPosVendaPecas.tblAtendimentoPecasAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPosVendaPecas.tblAtendimentoPecasAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxPosVendaPecas.tblAtendimentoPecasCODIGO1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//   if mStatus = 'PecasFabrica' then
//     tblAtendimentoPecas.FieldByName('Codigo1').AsString := CodigoPeca.text;
end;

procedure TBoxPosVendaPecas.FecharDs;
begin
  DataSourceAtendimentoPecas.Dataset.Close;
  DataSourcePecas.DataSet.Close;
  DataSourcePecas2.DataSet.Close;  
  DataSourcePecasEstoque.DataSet.Close;
  DataSourcePecasMovimentacao.DataSet.Close;  
end;

procedure TBoxPosVendaPecas.AbrirDs;
begin
  DataSourceAtendimentoPecas.Dataset.Open;
  DataSourcePecas2.Dataset.Open;
  DataSourcePecas.DataSet.Open;
  DataSourcePecasEstoque.DataSet.Open;
  DataSourcePecasMovimentacao.DataSet.Open;
end;

end.
