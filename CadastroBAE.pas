unit CadastroBAE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, StdCtrls, Buttons, ToolWin,
  Grids, DBGrids, DBCtrls, Mask, JvExMask, JvToolEdit, JvDBControls, IBQuery,
  JvMaskEdit, Wwdbigrd, Wwdbgrid, wwrcdpnl, frxClass, frxDBSet, rxToolEdit,
  rxCurrEdit;

type
  TBoxCadastroBAE = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblBAE: TIBDataSet;
    DataSourceBAE: TDataSource;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnFechar: TBitBtn;
    BtnImprimir: TBitBtn;
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
    tblPecasICMS: TIBBCDField;
    tblPecasPRECO: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasPPS: TIBBCDField;
    tblPecasORIGINAL: TIBStringField;
    tblPecasCST: TIBStringField;
    DataSourcePecas: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Sequencia: TDBEdit;
    DBEdit2: TDBEdit;
    DataSourceBAEDados: TDataSource;
    tblBAEDados: TIBDataSet;
    Label3: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    IBQuery1: TIBQuery;
    tblBAEDadosID_BAE_DADOS: TIntegerField;
    tblBAEDadosID_BAE: TIntegerField;
    tblBAEDadosID_PECAS: TIntegerField;
    tblBAEDadosQUANTIDADE: TIntegerField;
    tblBAEID_BAE: TIntegerField;
    tblBAESTATUS: TIBStringField;
    tblBAEDATA: TDateField;
    tblBAEDadosCODIGO: TIBStringField;
    BtnNovoItem: TBitBtn;
    BtnExcluiItem: TBitBtn;
    BtnConfirmaItem: TBitBtn;
    Label4: TLabel;
    CodigoPeca: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Descricao: TLabel;
    DescricaoPeca: TJvDBMaskEdit;
    Quantidade: TMaskEdit;
    Label5: TLabel;
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
    wwDBGrid1: TwwDBGrid;
    BtnConsultar: TBitBtn;
    tblBAEID_CONCESSIONARIA: TIntegerField;
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
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    DataSource1: TDataSource;
    Label6: TLabel;
    Observacao: TJvDBMaskEdit;
    tblBAEOBSERVACAO: TIBStringField;
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    DataSourcePecasMovimentacao: TDataSource;
    tblBAEDadosCUSTO: TIBBCDField;
    frxReport1: TfrxReport;
    tblRelBAEDados: TfrxDBDataset;
    tblRelBAE: TfrxDBDataset;
    tblRelConcessionaria: TfrxDBDataset;
    IBQuery2: TIBQuery;
    tblBAEEMPRESA: TIBStringField;
    tblBAECIDADE: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecas2DESCRICAO: TIBStringField;
    tblPecas2CODIGO_SGS: TIntegerField;
    tblBAEDadosDESCRICAO: TIBStringField;
    procedure BtnNovoClick(Sender: TObject);
    procedure tblBAEDadosAfterCancel(DataSet: TDataSet);
    procedure tblBAEDadosAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoPecaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnNovoItemClick(Sender: TObject);
    procedure BtnConfirmaItemClick(Sender: TObject);
    procedure BtnExcluiItemClick(Sender: TObject);
    procedure QuantidadeExit(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure SequenciaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FecharDs;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure ObservacaoClick(Sender: TObject);
    procedure ObservacaoExit(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   IdBAE : Integer;
   IdPEca : Integer;
  end;

var
  BoxCadastroBAE: TBoxCadastroBAE;
  Retorno : String;

implementation

uses FDB, Empresas, Biblioteca;

{$R *.dfm}

procedure TBoxCadastroBAE.BtnConfirmaItemClick(Sender: TObject);
begin
  with tblBAEDados do
   begin
     Insert;
     FieldByName('id_BAE').AsInteger := idBAE;
     FieldByName('Quantidade').AsInteger := StrToInt(Quantidade.Text);
     FieldByName('id_Pecas').AsInteger := idPeca;
     FieldByName('Custo').AsCurrency := tblPecasEstoque.FieldByName('CST_MEDIO').AsCurrency;
     Post;
   end;
  BtnNovoItem.SetFocus;
end;

procedure TBoxCadastroBAE.BtnConsultarClick(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Cadastro de BAE','BAE',
      ['Data','Id_BAE','Status','Id_Concessionaria'],
      ['Data:','Sequência:','Status:','Concessionária:',''],
      'Id_BAE','Id_BAE',Fdb1.SQLConnection1,'','','');
     with tblBAE do
     begin
        Close;
        Parambyname('idBAE').AsInteger := StrToInt(Retorno);
        ParamByName('IdConcessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        if recordCount = 0 then
          showmessage('BAE inexistente nesta concessionária.')
        else
          begin
            tblBAEDados.Close;
            tblBAEDados.ParamByName('idBAE').ASInteger := tblBAE.FieldByName('id_BAE').AsInteger;
            tblBAEDados.Open;
          end;
     end;
     BtnImprimir.SetFocus;
end;

procedure TBoxCadastroBAE.BtnEditarClick(Sender: TObject);
begin
  tblBAE.Open;
  tblBAE.Edit;
  Sequencia.SetFocus;
end;

procedure TBoxCadastroBAE.BtnExcluiItemClick(Sender: TObject);
begin
  case MessageDlg('Exclui item?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes :
     begin
     with tblBAEDados do
      begin
        if not DataSourceBAEDados.DataSet.IsEmpty then
         begin
          delete;
          showmessage('Item excluído.');
         end;
      end;
     end;
  end;
end;

procedure TBoxCadastroBAE.BtnFecharClick(Sender: TObject);
begin
 if tblBAE.FieldByName('Observacao').AsString <> '' then
  case MessageDlg('Confirma fechamento do BAE?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
   begin
    try
     tblBAE.Edit;
     tblBAE.FieldByName('Status').AsString := 'Fechado';
     tblBAE.Post;
     with tblBAEDados do
      begin
        First;
        while not eof do
         begin
           tblPecasEstoque.Close;
           tblPecasEstoque.ParamByName('IdConcessionaria').AsInteger :=
             StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           tblPecasEstoque.ParamByName('IdPecas').AsInteger :=
             tblBAEDados.FieldByName('Id_Pecas').AsInteger;
           tblPecasEstoque.Open;
           if tblPecasEstoque.recordCount = 0 then
             Showmessage('Ocorreu um erro na gravação das quantidades do estoque.'+#13+
                'Avise o suporte para corrigir o problema.');
           tblPecasEstoque.Edit;
           tblPecasEstoque.FieldByName('Estoque').AsInteger :=
             tblPecasEstoque.FieldByName('Estoque').AsInteger +
             tblBAEDados.FieldByName('Quantidade').AsInteger;
           tblPecasEstoque.Post;
           tblPecasMovimentacao.Insert;
           tblPecasMovimentacao.FieldByName('Id_Concessionaria').AsInteger :=
             StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           tblPecasMovimentacao.FieldByName('Id_Pecas').AsInteger :=
             tblBAEDados.FieldByName('Id_Pecas').AsInteger;
           if tblBAEDados.FieldByName('Quantidade').AsInteger > 0 then
            begin
             tblPecasMovimentacao.FieldByName('Movimento').AsString := 'E';
             tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsInteger  :=
               tblBAEDados.FieldByName('Quantidade').AsInteger;
            end
           else
            begin
             tblPecasMovimentacao.FieldByName('Movimento').AsString := 'S';
             tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsInteger  :=
               tblBAEDados.FieldByName('Quantidade').AsInteger * -1;
            end;
           tblPecasMovimentacao.FieldByName('Quantidade_Atual').AsInteger :=
             tblPecasEstoque.FieldByName('Estoque').AsInteger;
           tblPecasMovimentacao.FieldByName('Custo_Medio').AsFloat :=
             tblPecasEstoque.FieldByName('Cst_medio').AsFloat;
           tblPecasMovimentacao.FieldByName('Data').AsDateTime := DataAtual;
           tblPecasMovimentacao.FieldByName('NF').AsString := 'Bae' +
             tblBAEDados.FieldByName('Id_BAE').AsString;
           tblPecasMovimentacao.FieldByName('Emissao').AsDateTime :=
             tblBAE.FieldByName('Data').AsDateTime;
           tblPecasMovimentacao.Post;
           Next;
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
    Showmessage('Dados gravados.');
   end;
  end
 else
  Showmessage('Preencha o campo observação, antes de fechar o BAE');
end;

procedure TBoxCadastroBAE.BtnImprimirClick(Sender: TObject);
begin
   with IBQuery2 do
    begin
      Close;
      ParamByName('IdBAE').AsInteger :=
        StrToInt(Sequencia.Text);
      Open;
      frxReport1.Variables.clear;
      frxReport1.Variables['Total'] := FieldByName('Valor').AsCurrency;
    end;
   frxReport1.ShowReport;
end;

procedure TBoxCadastroBAE.BtnNovoClick(Sender: TObject);
begin
  tblBAE.Open;
  tblBAE.Insert;
      {Pega um sequence novo para o BAE}
       IBQuery1.Open;
       IdBAE := IBQuery1.FieldByName('id_BAE').AsInteger;
       IBQuery1.Close;
  tblBAE.FieldByName('Id_BAE').AsInteger := IdBAE;
  tblBAE.FieldByName('Data').AsDateTime := DataAtual;
  tblBAE.FieldByName('Status').AsString := 'Em edição';
  tblBAE.FieldByName('id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblBAE.Post;
  tblBAEDados.Close;
  tblBAEDAdos.ParamByName('idBAE').ASInteger := idBAE;
  tblBAEDados.Open;
  BtnNovoItem.SetFocus;
end;

procedure TBoxCadastroBAE.BtnNovoItemClick(Sender: TObject);
begin
  Quantidade.Text := '1';
  CodigoPeca.SetFocus;
end;

procedure TBoxCadastroBAE.CodigoPecaExit(Sender: TObject);
begin
if CodigoPeca.Text = '' then
  begin
   SpeedButton1.Click;
  end
else
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
          DescricaoPeca.Text := FieldbyName('Descricao').Text;
          CodigoPeca.Text :=FieldbyName('Codigo').Text;
          IdPeca := FieldByName('Id_Pecas').AsInteger;
         end;
      end;
    with tblPecasEstoque do
      begin
       Close;
       ParamByName('Idconcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       ParamByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if tblPecasEstoque.RecordCount = 0 then
        begin
         showmessage('Essa peça não existe no estoque desta concessionária.');
         SpeedButton1.Click;
        end
       else
         Quantidade.SetFocus;
      end;
  end;
end;

procedure TBoxCadastroBAE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxCadastroBAE.FormKeyPress(Sender: TObject; var Key: Char);
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
  end;
end;

procedure TBoxCadastroBAE.ObservacaoClick(Sender: TObject);
begin
  tblBAE.Edit;
end;

procedure TBoxCadastroBAE.ObservacaoExit(Sender: TObject);
begin
  tblBAE.Post;
end;

procedure TBoxCadastroBAE.QuantidadeExit(Sender: TObject);
begin
  BtnConfirmaItem.SetFocus;
end;

procedure TBoxCadastroBAE.SequenciaExit(Sender: TObject);
begin
  idBAE := StrToInt(Sequencia.Text);
  tblBAE.Close;
  tblBAE.ParamByName('idBAE').ASInteger := idBAE;
  tblBAE.ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblBAE.Open;
  if tblBAE.RecordCount = 0 then
     Showmessage('Este BAE não existe nesta concessionária.')
  else
   begin
      tblBAEDados.Close;
      tblBAEDados.ParamByName('idBAE').ASInteger := idBAE;
      tblBAEDados.Open;
      if tblBAE.FieldByName('Status').AsString <> 'Em edição' then
        begin
          Showmessage('Este BAE não pode mais ser editado.');
          Sequencia.SetFocus;
        end
      else
        BtnNovoItem.SetFocus;
   end;
end;

procedure TBoxCadastroBAE.SpeedButton1Click(Sender: TObject);
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
        CodigoPeca.Text := tblPecas.FieldByName('Codigo').Text;
        DescricaoPeca.Text := tblPecas.FieldByName('Descricao').Text;
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
       ParamByName('IdPecas').AsInteger :=  idPeca;
       Open;
       if tblPecasEstoque.RecordCount = 0 then
        begin
         showmessage('Essa peça não existe no estoque desta concessionária.');
         SpeedButton1.Click;
        end;
      end;
end;

procedure TBoxCadastroBAE.tblBAEDadosAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCadastroBAE.tblBAEDadosAfterPost(DataSet: TDataSet);
begin
  Fdb1.Ibtransaction.CommitRetaining;
end;

procedure TBoxCadastroBAE.FecharDs;
begin
  tblBAE.Close;
  tblPecas2.Close;
  tblBAEDados.Close;
  tblPecas.Close;
  tblPecasEstoque.Close;
  tblPecasMovimentacao.Close;
end;

procedure TBoxCadastroBAE.FormShow(Sender: TObject);
begin
  tblPecas2.Open;
  tblPecasMovimentacao.Open;
end;

end.

