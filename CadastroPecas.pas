unit CadastroPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, DBCtrls, ExtCtrls, ActnList, Buttons, DBActns,
  ImgList, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, JvExComCtrls,
  JvStatusBar, ToolWin, JvToolBar, IBCustomDataSet, IBDatabase, JvExControls,
  JvXPCore, JvXPButtons, ButtonGroup, JvExStdCtrls, JvButton, JvCtrls,
  JvExButtons, JvButtons, JvExExtCtrls, JvExtComponent, JvSpeedbar, ActnMan,
  ActnCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDateTimePicker, JvDBDateTimePicker,
  rxToolEdit, rxCurrEdit, DBClient, IBQuery, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwclearpanel, wwdblook, System.Actions, System.ImageList;

type
  TBoxPecas = class(TForm)
    ImageList1: TImageList;
    DataSourcePecas: TDataSource;
    JvStatusBar1: TJvStatusBar;
    tblPecas: TIBDataSet;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    PageControl: TPageControl;
    TabSheetDadosGerais: TTabSheet;
    PrecoVendaLabel: TLabel;
    UnidadeLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Descricao: TJvDBMaskEdit;
    PrecoVenda: TJvDBMaskEdit;
    RadioGroup1: TRadioGroup;
    TabSheetDadosEspecificos: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PPS: TJvDBMaskEdit;
    PrecoGarantia: TJvDBMaskEdit;
    JvDBMaskEdit5: TJvDBMaskEdit;
    JvDBMaskEdit10: TJvDBMaskEdit;
    TabSheetTributacao: TTabSheet;
    IPILabel: TLabel;
    ICMSLabel: TLabel;
    Label11: TLabel;
    ICMS: TJvDBMaskEdit;
    NBM: TJvDBMaskEdit;
    TabSheetMovimentacao: TTabSheet;
    EditSequencia: TMaskEdit;
    RadioGroup3: TRadioGroup;
    IPI: TJvDBMaskEdit;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
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
    tblPecasMovimentacao: TIBDataSet;
    DataSourcePecasMovimentacao: TDataSource;
    DBGrid1: TDBGrid;
    tblPecasPPS: TIBBCDField;
    DBRadioGroup1: TDBRadioGroup;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Label12: TLabel;
    Grupo: TJvDBMaskEdit;
    DataSourcePecasEstoque: TDataSource;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    DBGrid2: TDBGrid;
    DataSourceEstoque: TDataSource;
    tblestoque: TIBDataSet;
    tblestoqueID_PECAS: TIntegerField;
    tblestoqueID_CONCESSIONARIA: TIntegerField;
    tblestoqueESTOQUE: TIntegerField;
    tblestoqueESTOQOS: TIntegerField;
    tblestoqueLOCAL: TIBStringField;
    tblPecasORIGINAL: TIBStringField;
    DBGrid3: TDBGrid;
    tblestoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasCST: TIBStringField;
    tblestoqueCST_MEDIO: TIBBCDField;
    tblestoqueCST_ATUAL: TIBBCDField;
    tblestoqueULT_COMPRA: TDateField;
    tblestoqueULT_VENDA: TDateField;
    tblestoqueULT_PEDIDO: TDateField;
    tblestoqueFORNECEDOR: TIBStringField;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    DBRadioGroup2: TDBRadioGroup;
    IBQuery1: TIBQuery;
    Unidade: TDBComboBox;
    tblPecasFabrica: TIBDataSet;
    tblPecasFabricaID_PECYAM: TIntegerField;
    tblPecasFabricaCODIGO: TIBStringField;
    tblPecasFabricaDESCRICAO: TIBStringField;
    tblPecasFabricaCODIGO_NOVO: TIBStringField;
    tblPecasFabricaORIGEM: TIBStringField;
    tblPecasFabricaCUSTO: TIBBCDField;
    tblPecasFabricaQTDE_EMBAL: TIBStringField;
    tblPecasFabricaPESO: TIBStringField;
    tblPecasFabricaIPI: TIBBCDField;
    tblPecasFabricaREAJUSTE: TIBBCDField;
    tblPecasFabricaPRECO_GARAN: TIBBCDField;
    tblPecasFabricaPPS: TIBBCDField;
    tblPecasFabricaRESERVADO: TIBStringField;
    DataSourcePecasFabrica: TDataSource;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    DataSourcePecas2: TDataSource;
    tblPecas2: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
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
    Codigo: TJvMaskEdit;
    tblPecasLocalizacao: TIBDataSet;
    DataSourcePecasLocalizacao: TDataSource;
    tblPecasLocalizacaoID_PECAS_LOCALIZACAO: TIntegerField;
    tblPecasLocalizacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasLocalizacaoID_PECAS: TIntegerField;
    tblPecasLocalizacaoPRATELEIRA: TIBStringField;
    tblPecasLocalizacaoESCANINHO_GAVETA: TIBStringField;
    tblPecasLocalizacaoCORREDOR: TIBStringField;
    tblPecasLocalizacaoCODIGO_SGS: TIntegerField;
    DBGrid4: TDBGrid;
    Panel1: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    EstoqueOSLabel: TLabel;
    EstoqueLabel: TLabel;
    JvDBMaskEditEstoque: TJvDBMaskEdit;
    JvDBMaskEditEstoqOS: TJvDBMaskEdit;
    escaninho: TJvDBMaskEdit;
    Corredor: TJvDBMaskEdit;
    Label14: TLabel;
    Prateleira: TJvDBMaskEdit;
    JvDBMaskEdit8: TJvDBMaskEdit;
    LocalizacaoLabel: TLabel;
    DBGrid5: TDBGrid;
    tblPecasLocalizacao2: TIBDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IntegerField7: TIntegerField;
    DataSourcePecasLocalizacao2: TDataSource;
    tblestoquePRATELEIRA: TIBStringField;
    tblestoqueESCANINHO_GAVETA: TIBStringField;
    Label16: TLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecasEstoqueEMPRESA: TIBStringField;
    tblConcessionarias: TIBDataSet;
    dtsConcessionarias: TDataSource;
    tblConcessionariasID_CONCESSIONARIA: TIntegerField;
    tblConcessionariasEMPRESA: TIBStringField;
    dtsEstMinimo: TDataSource;
    tblEstMinimo: TIBDataSet;
    tblEstMinimoID_PECAS_ESTOQUE: TIntegerField;
    tblEstMinimoID_PECA: TIntegerField;
    tblEstMinimoID_CONCESSIONARIA: TIntegerField;
    tblEstMinimoQUANTIDADE: TIntegerField;
    Label18: TLabel;
    tblEstMinimoNOME: TStringField;
    wwDBGrid1: TwwDBGrid;
    edtConcessionaria: TwwDBLookupCombo;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    tblOrcamentoPecas: TIBDataSet;
    DataSource1: TDataSource;
    tblOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField;
    tblOrcamentoPecasID_CLIENTES: TIntegerField;
    tblOrcamentoPecasID_CONCESSIONARIA: TIntegerField;
    tblOrcamentoPecasTOTAL_VENDA: TIBBCDField;
    tblOrcamentoPecasTOTAL_NESTA_VENDA: TIBBCDField;
    tblOrcamentoPecasSTATUS: TIBStringField;
    tblOrcamentoPecasDESCONTO: TIBBCDField;
    tblOrcamentoPecasVALOR_LIQUIDO_VENDA: TIBBCDField;
    tblOrcamentoPecasID_VENDEDOR: TIntegerField;
    tblOrcamentoPecasNUMERO_NOTA_FISCAL: TIntegerField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    function FieldsWrithe (DtSrc: TDataSource): Boolean;
    procedure EditarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ProcurarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure PreencheTributacao;
    procedure AbrirDs;
    procedure ConsultarExecute(Sender: TObject);
    procedure EditSequenciaExit(Sender: TObject);
    procedure EditSequenciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblPecasAfterCancel(DataSet: TDataSet);
    procedure tblPecasAfterPost(DataSet: TDataSet);
    procedure DBGrid3Exit(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure UnidadeExit(Sender: TObject);
    procedure ICMSExit(Sender: TObject);
    procedure RadioGroup1Exit(Sender: TObject);
    procedure CodigoExit(Sender: TObject);
    procedure escaninhoExit(Sender: TObject);
    procedure tblEstMinimoBeforePost(DataSet: TDataSet);
    procedure tblPecasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idPecas : Integer;
    procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
    procedure EnableDisableControls (Value: Boolean; Value1: Boolean;
              Value2: Boolean);
    procedure PermissoesForm;
    procedure Restricoes ;
    procedure LimpaTela;
    procedure CriarRegistroNovo;
  end;

var
  BoxPecas: TBoxPecas;
  Id_concessionaria: Integer;
  Id_pecas_estoque: Integer;
  Retorno : String;
  RegistroNovo : Boolean;
  
implementation

uses

   BIBLIOTECA, PESQUISAGeral, FDB, efuncoes, Empresas;

{$R *.dfm}

function TBoxPecas.FieldsWrithe(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
  Result := True; {: assume que estão todos preenchidos}
  if RadioGroup1.itemIndex<0 then
     begin
        MessageDlg('Preencha o campo peça original/similar', mtWarning,[mbOk], 0);
        Result := False;
        PageControl.TabIndex := 0;
        RadioGroup1.SetFocus;
     end;
  for i := 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[i].Required then
      if (DtSrc.DataSet.Fields[i].IsNull) Or (DtSrc.DataSet.Fields[i].AsString = '') then
      begin
        MessageDlg('Preencha o campo " '+ DtSrc.DataSet.Fields[i].DisplayLabel + '"', mtWarning,[mbOk], 0);
        Result := False;
        DtSrc.DataSet.Fields[i].FocusControl; {: coloca o foco no controle}
        Break;
      end;
end;

procedure TBoxPecas.FecharDs;
begin
  DataSourcePecas.Dataset.Close;
  DataSourcePecasLocalizacao.Dataset.Close;
  DataSourcePecasMovimentacao.Dataset.Close;
  DataSourcePecasEstoque.Dataset.Close;
  DataSourceEstoque.Dataset.Close;
end;

procedure TBoxPecas.AbrirDs;
begin
  DataSourcePecas.Dataset.Open;
  DataSourcePecasMovimentacao.Dataset.Open;
  DataSourcePEcasEstoque.Dataset.Open;
  DataSourceEstoque.Dataset.Open;
end;

procedure TBoxPecas.NovoExecute(Sender: TObject);
begin
   RegistroNovo := True;
 if (FDB1.IBDataSetLoginacesso43.AsString = 'T') then
   begin
     BtnExcluir.Enabled := False;
    Excluir.Enabled := False;
   end;
 if (FDB1.IBDataSetLoginacesso43.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
    EnableDisableControls(True, False, True);
    TabSheetDadosEspecificos.Tabvisible := True;
    BtnEditar.Enabled := False;
    Editar.Enabled := False;
    EditSequencia.Enabled := False;
    EditSequencia.Text := '';
    Codigo.SetFocus;
   end
 else
   showmessage('Acesso não permitido.');
end;

procedure TBoxPecas.CriarRegistroNovo;
begin
  RegistroNovo := False;
  {: novo registro}
    DataSourcePecas.DataSet.Open;
    DataSourcePecas.DataSet.Insert;
    DataSourcePecas.Dataset.FieldByName('Codigo').AsString := Codigo.Text;
    {Pega um sequence novo para o produto}
    IBQuery1.Open;
    IdPecas := IBQuery1.FieldByName('id_Pecas').AsInteger;
    IBQuery1.Close;
    tblPecas.FieldByName('id_pecas').AsInteger := idPecas;
    {fim sequence}
    DataSourceEstoque.Dataset.Open;
    tblEstoque.Insert;
    tblEstoque.FieldByName('Estoque').AsInteger := 0;
    tblEstoque.FieldByName('Cst_medio').AsInteger := 0;
    tblEstoque.FieldByName('Cst_Atual').AsInteger := 0;
    tblEstoque.FieldByName('EstoqOS').AsInteger := 0;
    tblPecas.FieldByName('St_Cofins').AsBoolean := False;
//    tblPecas.FieldByName('Cod_Proc').AsString := '0';
end;


procedure TBoxPecas.RadioGroup1Exit(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
  begin
   DataSourcePecas.Dataset.FieldByName('Original').AsBoolean := True;
  end;
if RadioGroup1.ItemIndex = 1 then
  begin
   DataSourcePecas.Dataset.FieldByName('Original').AsBoolean := False;
  end;
if (DataSourcePecas.DataSet.State in [dsInsert,dsEdit]) then
 if (DataSourcePecas.Dataset.FieldByName('Original').AsBoolean = True) then
  begin
   with tblPecasFabrica do
    begin
     Close;
     ParamByName('idCodigo').AsString := Codigo.Text;
     Open;
     tblPecas.FieldByName('PPS').AsCurrency := FieldByName('PPS').AsCurrency;
     tblPecas.FieldByName('Preco_Gar').AsCurrency := FieldByName('Preco_Garan').AsCurrency;
     tblPecas.FieldByName('IPI').AsCurrency := FieldByName('IPI').AsCurrency;
     tblPecas.FieldByName('Preco').AsFloat :=
      (tblPecasFabrica.FieldByName('PPS').AsFloat) *
      ((StrToFloat(SobrePreco)/100)+1);
    end;
  end
 else
  if DataSourcePecas.Dataset.State in [dsInsert] then
    tblPecas.FieldByName('Preco').AsInteger := 0;
Descricao.SetFocus;    
end;

procedure TBoxPecas.CodigoExit(Sender: TObject);
begin
  if RegistroNovo then
    begin
      with tblPecas2 do
        begin
          Close;
          ParamByName('IdCodigo').AsString := Codigo.Text;
          Open;
          if RecordCount <> 0 then
            begin
              Showmessage('Código já cadastrado');
              Codigo.SetFocus;
            end
          else
           if RegistroNovo then
             CriarRegistroNovo;
        end;
    end;
end;

procedure TBoxPecas.ConsultarExecute(Sender: TObject);
begin
   EnableDisableControls(False, False, True);
   EditSequencia.Enabled := True;
   EditSequencia.Setfocus;
end;

procedure TBoxPecas.EditarExecute(Sender: TObject);
begin
    {: habilita/desabilita os componentes e verifica permissões/restrições }
  if not DataSourcePecas.DataSet.IsEmpty then
   begin
    tblPecas.Edit;
    idPecas := tblpecas.FieldByName('id_pecas').AsInteger;
    tblEstoque.Edit;
    tblPecasLocalizacao2.Edit;
    PrecoVenda.Enabled := False;
    EnableDisableControls(True, False, True);
    PreencheTributacao;
    Codigo.SetFocus;
   end;
end;

procedure TBoxPecas.EditSequenciaClick(Sender: TObject);
begin
 BtnConsultar.Click;
end;

procedure TBoxPecas.EditSequenciaExit(Sender: TObject);
var
   id : Integer;
//   id_Concessionaria : Integer;
begin
    id := StrToInt(EditSequencia.Text);
//    id_concessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    if (FDB1.IBDataSetLoginacesso4.AsString = 'T') OR
       (FDB1.IBDataSetLoginacesso5.AsString = 'T') OR
       (FDB1.IBDataSetLoginacesso43.AsString = 'T') OR
       (FDB1.IBDataSetLoginacesso78.AsString = 'T') OR
       (FDB1.IBDataSetLoginADM.AsString = 'T') then
       begin
        EnableDisableControls(False, False, True);
        BtnSalvar.Enabled := False;
        Salvar.Enabled := False;
        BtnEditar.SetFocus;
       end
    else
       begin
         BtnCancelar.Enabled := True;
         Cancelar.Enabled := True;
         BtnProcurar.Enabled := True;
         Procurar.Enabled := True;
         BtnConsultar.Enabled := True;
         Consultar.Enabled := True;
         BtnCancelar.SetFocus;
       end;
    begin
      with tblPecas do
      begin
       if id<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := id;
          Open;
          if recordcount = 0  then
            begin
              case MessageDlg('Registro não localizado. Deseja cadastrar um novo?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
                mrYes:
                begin
                  BtnNovo.Click;
                end;
                mrNo:
                begin
                  EnableDisableControls(False, True, False);
                  BtnSalvar.Enabled := False;
                  Salvar.Enabled := false;
                  BtnConsultar.SetFocus;
                  DataSourcePecas.DataSet.Cancel;
                  tblEstoque.Cancel;
                  Close;
                end;
              end;
            end;
          if DataSourcePecas.Dataset.FieldByName('Original').AsBoolean = True then
            begin
              RadioGroup1.ItemIndex := 0;
            end;
          if DataSourcePecas.Dataset.FieldByName('Original').AsBoolean = False then
            begin
              RadioGroup1.ItemIndex := 1;
            end;
          with tblPecasLocalizacao do
           begin
             Close;
             ParamByName('idPecas').AsInteger := Id;
             Open;
           end;
         end;
      end;
      with tblPecasLocalizacao2 do
        begin
         if id<>0 then
          begin
           Close;
           parambyname( 'idPecas' ).AsInteger := id;
           ParamByName('idConcessionaria').AsInteger := StrToInt(Boxempresas.ID_ConcessionariaEmUso.Text);
           Open;
          end;
        end;
      with tblPecasMovimentacao do
        begin
         if id<>0 then
          begin
           Close;
           parambyname( 'id' ).AsInteger := id;
           PAramByName('idConcessionaria').AsInteger := StrToInt(Boxempresas.ID_ConcessionariaEmUso.Text);
           Open;
          end;
        end;
      with tblPecasEstoque do
        begin
         if id<>0 then
          begin
           Close;
           parambyname( 'id' ).AsInteger := id;
           Open;
          end;
        end;
      with tblestoque do
        begin
         if id<>0 then
           begin
            tblestoque.SelectSQL.Text := 'select * from PECAS_ESTOQUE Where (id_pecas = :id) and (ID_Concessionaria = :id_concessionaria)';
            parambyname( 'id' ).AsInteger := id;
            parambyname('id_concessionaria').AsInteger := id_Concessionaria;
            Open;
            id_pecas_estoque := DataSourceEstoque.Dataset.FieldByName('Id_pecas_estoque').AsInteger;
            Close;
            tblestoque.SelectSQL.Text := 'select * from PECAS_ESTOQUE Where (id_pecas_estoque = :id_pecas_estoque)';
            parambyname( 'id_pecas_estoque' ).AsInteger := id_pecas_estoque;
            Open;
           end;
        end;
    end;
    PreencheTributacao;
end;

procedure TBoxPecas.PreencheTributacao;
begin
 { Codigo.Text := tblPecas.FieldByName('Codigo').AsString;
  DBRadioGroup1.ItemIndex := tblPecas.FieldByName('Cod_Proc').AsInteger;
  SHOWMESSAGE(tblPecas.FieldByName('ST_COFINS').AsString);
  if tblPecas.FieldByName('ST_COFINS').AsString = 'F' then
    DBRadioGroup2.ItemIndex := 1
  else
    DBRadioGroup2.ItemIndex := 0;
  if tblPecas.FieldByName('SUBST_TRIB').AsString = 'T' then
    if tblPecas.FieldByName('CFOP1').AsString = '5656' then
      RadioGroup3.ItemIndex := 2
    else
      RadioGroup3.ItemIndex := 1
  else
    RadioGroup3.ItemIndex := 0;     }
  Codigo.Text := tblPecas.FieldByName('Codigo').AsString;
  DBRadioGroup1.ItemIndex := tblPecas.FieldByName('Cod_Proc').AsInteger;
  if tblPecas.FieldByName('ST_COFINS').AsBoolean then
    DBRadioGroup2.ItemIndex := 0
  else
    DBRadioGroup2.ItemIndex := 1;
  if tblPecas.FieldByName('SUBST_TRIB').AsBoolean then
    if tblPecas.FieldByName('CFOP1').AsString = '5656' then
      RadioGroup3.ItemIndex := 2
    else
      RadioGroup3.ItemIndex := 1
  else
    RadioGroup3.ItemIndex := 0;

end;

procedure TBoxPecas.SalvarExecute(Sender: TObject);
begin
  tblPecasEstoque.Close;
  tblPecasMovimentacao.Close;
 {: salvo os dados se os campos estiverem preenchidos}
  if FieldsWrithe(DataSourcePecas) and (DataSourcePecas.State in [dsEdit, dsInsert]) then
  begin
   try
    if RadioGroup1.ItemIndex = 0 then
     begin
       DataSourcePecas.Dataset.FieldByName('Original').AsBoolean := True;
     end;
    if RadioGroup1.ItemIndex = 1 then
     begin
       DataSourcePecas.Dataset.FieldByName('Original').AsBoolean := False;
     end;
    if RadioGroup3.ItemIndex = 0 then
     begin
       DataSourcePecas.Dataset.FieldByName('Subst_trib').AsBoolean := False;
       tblPecas.FieldByName('CFOP1').AsString := '5102';
       tblPecas.FieldByName('CFOP2').AsString := '6102';
     end;
    if RadioGroup3.ItemIndex = 1 then
     begin
       DataSourcePecas.Dataset.FieldByName('Subst_trib').AsBoolean := True;
       tblPecas.FieldByName('CFOP1').AsString := '5405';
       tblPecas.FieldByName('CFOP2').AsString := '6404';
     end;
    if RadioGroup3.ItemIndex = 2 then
     begin
       DataSourcePecas.Dataset.FieldByName('Subst_trib').AsBoolean := True;
       tblPecas.FieldByName('CFOP1').AsString := '5656';
       tblPecas.FieldByName('CFOP2').AsString := '6656';
     end;
    if tblPecas.FieldByName('NCM').AsString = '' then
      begin
       Showmessage('Preencha a NCM');
       abort;
      end;
    tblPecas.FieldByName('Lista').AsBoolean := False;
    //Item nacional com ICMS CST 000
    if (DBRadioGroup1.ItemIndex = 0) and (RadioGroup3.ItemIndex = 0) then
       tblPecas.FieldByName('CST').AsString := '000';
     //Item nacional ICMS subst CST 060
    if (DBRadioGroup1.ItemIndex = 0) and (RadioGroup3.ItemIndex = 1) then
       tblPecas.FieldByName('CST').AsString := '060';
    if (DBRadioGroup1.ItemIndex = 0) and (RadioGroup3.ItemIndex = 2) then
       tblPecas.FieldByName('CST').AsString := '060';
    //Item importado com ICMS CST 200
    if (DBRadioGroup1.ItemIndex <> 0) and (RadioGroup3.ItemIndex = 0) then
       tblPecas.FieldByName('CST').AsString := '200';
     //Item importado ICMS subst CST 260
    if (DBRadioGroup1.ItemIndex <> 0) and (RadioGroup3.ItemIndex = 1) then
       tblPecas.FieldByName('CST').AsString := '260';
    if (DBRadioGroup1.ItemIndex <> 0) and (RadioGroup3.ItemIndex = 2) then
       tblPecas.FieldByName('CST').AsString := '260';
    if Codigo.Text <> tblPecas.FieldByName('Codigo').AsString then
      if (FDB1.IBDataSetLoginacesso65.AsString = 'T') or
         (FDB1.IBDataSetLoginADM.AsString = 'T') then
         tblPecas.FieldByName('Codigo').AsString := Codigo.Text
      else
        Showmessage('Você não pode alterar o código do produto.');
    tblpecas.fieldbyName('especial').AsString := Substr(tblpecas.fieldbyName('especial').AsString,1,1);
    tblpecas.fieldbyName('cod_proc').AsString := Substr(tblpecas.fieldbyName('cod_proc').AsString,1,1);
    tblpecas.fieldbyName('fora_linha').AsString := Substr(tblpecas.fieldbyName('fora_linha').AsString,1,1);


    tblPecas.Post;
//    if (DataSourceEstoque.State in [dsEdit, dsInsert]) then
//      begin
    tblEstoque.FieldByName('id_pecas').AsInteger := idPecas;
    tblEstoque.FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    tblEstoque.Post;
    tblPecasLocalizacao2.FieldByName('id_pecas').AsInteger := idPecas;
    tblPecasLocalizacao2.FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    tblPecasLocalizacao2.Post;
//      end;
    EnableDisableControls(False, True, False);
    Limpatela;
    BtnConsultar.Setfocus;
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
    Codigo.Text := '';
   except
     on e:Exception do
       begin
         showmessage( 'Erro de gravação:' + e.message );
         abort;
         exit;
       end;
   end;
  end;
end;

procedure TBoxPecas.DBGrid3Exit(Sender: TObject);
begin
  if (DataSourcePecasEstoque.State in [dsEdit, dsInsert]) then
    tblPecasEstoque.Post;
end;

procedure TBoxPecas.tblEstMinimoBeforePost(DataSet: TDataSet);
begin
   dataset.fieldbyname( 'id_peca' ).asInteger := tblPecas.fieldbyname( 'id_pecas' ).asInteger;
end;

procedure TBoxPecas.tblPecasAfterCancel(DataSet: TDataSet);
begin
    fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPecas.tblPecasAfterOpen(DataSet: TDataSet);
begin
  tblEstMinimo.Close;
  tblEstMinimo.ParamByName( 'id_peca' ).asInteger := tblPecas.fieldbyname( 'id_pecas' ).asInteger;
  tblEstMinimo.Open;
end;

procedure TBoxPecas.tblPecasAfterPost(DataSet: TDataSet);
begin
    FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxPecas.ToolButton1Click(Sender: TObject);
begin
 tblEstoque.Post;
end;

procedure TBoxPecas.ExcluirExecute(Sender: TObject);
begin
  {: deleta se houver dados no DataSet }
  if (DataSourcePecas.DataSet.Active) and (DataSourcePecas.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Tem certeza que deseja excluir o registro ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      DataSourcePecas.DataSet.Delete;
      EnableDisableControls(False, True, False);
      LimpaTela;
     end;
  end;
end;

procedure TBoxPecas.ProcurarExecute(Sender: TObject);
begin
  {: verifica se esta em modo de edição ou inserção}
  if DataSourcePecas.State in [dsEdit, dsInsert] then
    case MessageDlg('Deseja salvar as alterações realizados no Cadastro?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
     mrYes: BtnSalvar.Click;
     mrNo: DataSourcePecas.DataSet.Cancel;
    end
  else
   begin
     Retorno := Biblioteca.PesquisaGeral('Peças','Pecas',
      ['Codigo','Descricao','Preco','Id_Pecas'],
      ['Código:','Descrição:','Preço:','Sequência:'],
      'Descricao','Id_Pecas',Fdb1.SQLConnection1,'','','');
     with tblPecas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        EditSequencia.Text := tblPecas.FieldByName('Id_Pecas').Text;
     end;
     Consultar.Execute;
//     EditSequencia.SetFocus;
 //    EnableDisableControls(False, False, True);
 //    BtnSalvar.Enabled := False;
 //    Salvar.Enabled := false;
  //   EditSequencia.Enabled := False;
 //    BtnEditar.SetFocus;
   end;
end;

procedure TBoxPecas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxPecas := nil;
end;

procedure TBoxPecas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataSourcePecas.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxPecas.FormShow(Sender: TObject);
begin
  AbrirDs;
  EnableDisableButtons(True, False);
  PageControl.Enabled := False;
  TabSheetTributacao.TabVisible := False;
  TabSheetDadosEspecificos.Tabvisible := False;
  PrecoVenda.Enabled := False;
  Id_concessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  RegistroNovo := False;
  BtnProcurar.SetFocus;
  tblConcessionarias.Open;
  tblEstMinimo.Open;
end;

procedure TBoxPecas.ICMSExit(Sender: TObject);
begin
  BtnSalvar.SetFocus;
end;

procedure TBoxPecas.UnidadeExit(Sender: TObject);
begin
  Corredor.SetFocus;
end;

procedure TBoxPecas.CancelarExecute(Sender: TObject);
begin
  {: cancela e desabilita os componentes }
  LimpaTela();
  EnableDisableControls(False, True, False);
end;

procedure TBoxPecas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxPecas.PermissoesForm;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxPecas.Restricoes;
begin
  {: implementado nos forms descendentes }
end;

procedure TBoxPecas.LimpaTela;
begin
  EditSequencia.Clear;
  DataSourcePecas.Dataset.Close;
end;

procedure TBoxPecas.EnableDisableControls(Value: Boolean; Value1: Boolean;
            Value2: Boolean);
begin
  PageControl.Enabled := Value2;
  TabSheetDadosEspecificos.Tabvisible := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso4.AsString = 'T') then
    begin
      BtnNovo.Enabled := Value1;
      BtnEditar.Enabled := Value2;
      BtnSalvar.Enabled := Value2;
      BtnCancelar.Enabled := Value2;
      Novo.Enabled := Value1;
      Editar.Enabled := Value2;
      Salvar.Enabled := Value2;
      Cancelar.Enabled := Value2;
      TabSheetTributacao.TabVisible := Value2;
      TabSheetDadosEspecificos.Tabvisible := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') then
    begin
      BtnExcluir.Enabled := Value2;
      Excluir.Enabled := Value2;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso5.AsString = 'T') then
    begin
      JvDBMaskEditEstoque.ReadOnly := False;
      JvDBMaskEditEstoqOS.ReadOnly := False;
      PrecoVenda.ReadOnly := False;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso78.AsString = 'T') then
    begin
      Codigo.ReadOnly := False;
      Descricao.ReadOnly := False;
      Grupo.ReadOnly := False;
      Unidade.ReadOnly := False;
      TabSheetDadosEspecificos.Enabled := True;
      TabSheetDadosEspecificos.TabVisible := True;
      TabSheetTributacao.Enabled := True;
      TabSheetTributacao.TabVisible := True;
    end
  else
    begin
      Codigo.ReadOnly := True;
      Descricao.ReadOnly := True;
      Grupo.ReadOnly := True;
      Unidade.ReadOnly := True;
      TabSheetDadosEspecificos.Enabled := False;
      TabSheetDadosEspecificos.TabVisible := False;
      TabSheetTributacao.Enabled := False;
      TabSheetTributacao.TabVisible := False;
    end;                            
  PrecoVenda.Enabled := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso5.AsString = 'T') then
    begin
      PrecoVenda.Enabled := Value2;
    end;
  PageControl.TabIndex := 0;
  BtnProcurar.Enabled := Value1;
  BtnConsultar.Enabled := Value1;
  Procurar.Enabled := Value1;
  Consultar.Enabled := Value1;
  EditSequencia.Enabled := True;
  PageControl.Enabled := Value2;
  if value1 then
    BtnConsultar.Setfocus;
  if (value2) and ((FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso4.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso5.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso78.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso43.AsString = 'T')) then
     BtnSalvar.Setfocus;
end;

procedure TBoxPecas.escaninhoExit(Sender: TObject);
begin
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
     (FDB1.IBDataSetLoginAcesso78.AsString = 'T') then
   begin
    PageControl.TabIndex := 2;
    NBM.Setfocus;
   end
  else
   BtnSalvar.SetFocus;
end;

procedure TBoxPecas.EnableDisableButtons(Value: Boolean; Value1: Boolean);
begin
 { Habilita/desabilita os botões }
  BtnNovo.Enabled := Value;
  BtnEditar.Enabled := Value1;
  BtnExcluir.Enabled := Value1;
  BtnCancelar.Enabled := Value1;
  BtnSalvar.Enabled := Value1;
  Novo.Enabled := Value;
  Editar.Enabled := Value1;
  Excluir.Enabled := Value1;
  Cancelar.Enabled := Value1;
  Salvar.Enabled := Value1;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') And
   (FDB1.IBDataSetLoginAcesso4.AsString <> 'T') then
    begin
      BtnNovo.Enabled := False;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := False;
      BtnSalvar.Enabled := False;
      Novo.Enabled := False;
      Editar.Enabled := False;
      Cancelar.Enabled := False;
      Salvar.Enabled := False;
    end;
  if (FDB1.IBDataSetLoginADM.AsString <> 'T') then
    begin
      Excluir.Enabled := False;
      BtnExcluir.Enabled := False;
    end;
  BtnProcurar.Enabled := Value;
  BtnConsultar.Enabled := Value;
  Procurar.Enabled := Value;
  Consultar.Enabled := Value;
end;

end.
