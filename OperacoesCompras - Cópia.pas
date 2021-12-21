unit OperacoesCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit;

type
  TBoxCompras = class(TForm)
    ImageList1: TImageList;
    PageControl: TPageControl;
    Pagenovos: TTabSheet;
    Pageusados: TTabSheet;
    PagePecas: TTabSheet;
    PageConhecimento: TTabSheet;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageNotasFiscais: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    CodigoTransportadora: TMaskEdit;
    NomeTransportadora: TMaskEdit;
    DBGrid1: TDBGrid;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Modelo: TRxDBLookupCombo;
    PPS: TDBEdit;
    Combustivel: TDBEdit;
    Potencia: TDBEdit;
    Renavam: TDBEdit;
    Marca: TDBEdit;
    PPSAbracy: TDBEdit;
    PrecoVenda: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    MarcaUsados: TDBEdit;
    ModeloUsados: TRxDBLookupCombo;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit2: TDBEdit;
    Label38: TLabel;
    DBEdit3: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Codigo: TMaskEdit;
    MaskEdit11: TMaskEdit;
    Label47: TLabel;
    MaskEdit12: TMaskEdit;
    Label48: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label49: TLabel;
    Label50: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    CodigoFornecedor: TMaskEdit;
    NomeFornecedor: TMaskEdit;
    Bevel1: TBevel;
    Emissao: TJvDBDateEdit;
    JvStatusBar1: TJvStatusBar;
    ActionList1: TActionList;
    Novos: TAction;
    Usados: TAction;
    Pecas: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    ToolBar1: TToolBar;
    BtnNovos: TBitBtn;
    BtnUsados: TBitBtn;
    BtnPecas: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvarLote: TBitBtn;
    FecharLote: TAction;
    BtnSalvar: TBitBtn;
    SpeedButton1: TSpeedButton;
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
    tblConhecimento: TIBDataSet;
    tblNofi: TIBDataSet;
    DataSourceConhecimento: TDataSource;
    DataSourceNofi: TDataSource;
    DataSourceNfda: TDataSource;
    DataSourceModelosVeiculos: TDataSource;
    tblModelos: TIBDataSet;
    tblModelosID_MODVEIC: TIntegerField;
    tblModelosMARCA: TIBStringField;
    tblModelosMODELO: TIBStringField;
    tblModelosCILINDROS: TIntegerField;
    tblModelosCILINDRADAS: TIntegerField;
    tblModelosHP: TIntegerField;
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosRENAVAM: TIBStringField;
    tblModelosCLASSIF_FISCAL: TIBStringField;
    tblModelosPPS: TIBBCDField;
    tblModelosPPS_ABRACY: TIBBCDField;
    tblModelosPRECO_VENDA: TIBBCDField;
    tblConhecimentoID_CONHECIMENTO: TIntegerField;
    tblConhecimentoID_CONCESSIONARIA: TIntegerField;
    tblNofiID_NOFI: TIntegerField;
    tblNofiID_CONCESSIONARIA: TIntegerField;
    tblNofiID_CLIENTES: TIntegerField;
    tblNofiNUMERO: TIBStringField;
    tblNofiSERIE: TIBStringField;
    tblNofiCODIGO: TIBStringField;
    tblNofiORIGEM: TIBStringField;
    tblNofiENT_SAI: TIBStringField;
    tblNofiVENDEDOR: TIBStringField;
    tblNofiCOMISSAO: TIBBCDField;
    tblNofiEMISSAO: TDateField;
    tblNofiSAIDA: TDateField;
    tblNofiHORA: TIBStringField;
    tblNofiCFOP: TIBStringField;
    tblNofiNAT_OP: TIBStringField;
    tblNofiIE_SUBS: TIBStringField;
    tblNofiFAT1: TIBStringField;
    tblNofiVAL1: TIBBCDField;
    tblNofiDAT1: TDateField;
    tblNofiFAT2: TIBStringField;
    tblNofiVAL2: TIBBCDField;
    tblNofiDAT2: TDateField;
    tblNofiFAT3: TIBStringField;
    tblNofiVAL3: TIBBCDField;
    tblNofiDAT3: TDateField;
    tblNofiFAT4: TIBStringField;
    tblNofiVAL4: TIBBCDField;
    tblNofiDAT4: TDateField;
    tblNofiFAT5: TIBStringField;
    tblNofiVAL5: TIBBCDField;
    tblNofiDAT5: TDateField;
    tblNofiFAT6: TIBStringField;
    tblNofiVAL6: TIBBCDField;
    tblNofiDAT6: TDateField;
    tblNofiFAT7: TIBStringField;
    tblNofiVAL7: TIBBCDField;
    tblNofiDAT7: TDateField;
    tblNofiFAT8: TIBStringField;
    tblNofiVAL8: TIBBCDField;
    tblNofiDAT8: TDateField;
    tblNofiFAT9: TIBStringField;
    tblNofiVAL9: TIBBCDField;
    tblNofiDAT9: TDateField;
    tblNofiDESC_PEC: TIBBCDField;
    tblNofiDESC_OFI: TIBBCDField;
    tblNofiICMS: TIBBCDField;
    tblNofiBASE_ICMS: TIBBCDField;
    tblNofiVAL_ICMS: TIBBCDField;
    tblNofiBASE_ICM_S: TIBBCDField;
    tblNofiVAL_ICMS_S: TIBBCDField;
    tblNofiVAL_FRETE: TIBBCDField;
    tblNofiVAL_SEGURO: TIBBCDField;
    tblNofiVAL_OUTROS: TIBBCDField;
    tblNofiVAL_IPI: TIBBCDField;
    tblNofiVAL_SERV: TIBBCDField;
    tblNofiISSQN: TIBBCDField;
    tblNofiVAL_ISS: TIBBCDField;
    tblNofiTOT_PROD: TIBBCDField;
    tblNofiPIS: TIBBCDField;
    tblNofiCOFINS: TIBBCDField;
    tblNofiCOD_TRANS: TIBStringField;
    tblNofiFRETE_TIPO: TIBStringField;
    tblNofiPLACA: TIBStringField;
    tblNofiDADOS_AD01: TIBStringField;
    tblNofiDADOS_AD02: TIBStringField;
    tblNofiDADOS_AD03: TIBStringField;
    tblNofiDADOS_AD04: TIBStringField;
    tblNofiOBS: TIBStringField;
    DBValorFrete: TJvDBMaskEdit;
    tblConhecimentoNUMERO_CONHECIMENTO: TIBStringField;
    tblConhecimentoQTDE_NFS: TIBStringField;
    tblConhecimentoTRANSPORTADORA: TIBStringField;
    tblConhecimentoVALOR_FRETE: TIBBCDField;
    tblConhecimentoVALOR_MERCADORIAS: TIBBCDField;
    NumeroConhecimento: TMaskEdit;
    Label56: TLabel;
    NumeroNotaFiscalLote: TMaskEdit;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    NotaFiscal: TMaskEdit;
    CFOP: TJvDBMaskEdit;
    ICMSSubst: TJvDBMaskEdit;
    CreditoICMS: TJvDBMaskEdit;
    Chegada: TJvDBDateEdit;
    Frete: TJvDBMaskEdit;
    Seguro: TJvDBMaskEdit;
    Outros: TJvDBMaskEdit;
    Label57: TLabel;
    Label58: TLabel;
    SerieNF: TJvDBMaskEdit;
    SpeedButton3: TSpeedButton;
    DBQtdeNfs: TDBEdit;
    Cor: TDBEdit;
    Chassi: TDBEdit;
    Motor: TDBEdit;
    ValorUnitario: TDBEdit;
    ValorICMS: TDBEdit;
    ValorIPI: TDBEdit;
    AnoModelo: TDBEdit;
    AnoFabricacao: TDBEdit;
    tblNofiQTDE_PROD: TIntegerField;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaVLR_UNIT: TIBBCDField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaVLR_IPI: TIBBCDField;
    tblNfDaMODELO: TIBStringField;
    tblNfDaANO_FABRICACAO: TIBStringField;
    tblNfDaANO_MODELO: TIBStringField;
    tblNfDaCOR: TIBStringField;
    tblNfDaMOTOR: TIBStringField;
    tblNfDaCOMBUSTIVEL: TIBStringField;
    tblNfDaMARCA: TIBStringField;
    tblNfDaPOTENCIA: TIBStringField;
    tblNfDaRENAVAM: TIBStringField;
    tblNfDaPROD_NUMERO: TIntegerField;
    ProdutoNumero: TDBEdit;
    QtdeProdutos: TDBEdit;
    Label59: TLabel;
    CFOPNovos: TJvDBMaskEdit;
    DataSourceGrid: TDataSource;
    tblGrid: TIBDataSet;
    tblGridITEM: TIBStringField;
    tblGridVLR_UNIT: TIBBCDField;
    tblGridMODELO: TIBStringField;
    tblGridANO_FABRICACAO: TIBStringField;
    tblGridANO_MODELO: TIBStringField;
    tblGridCOR: TIBStringField;
    tblGridMOTOR: TIBStringField;
    tblGridPROD_NUMERO: TIntegerField;
    tblModelosCST: TIBStringField;
    tblNfDaCST: TIBStringField;
    TotalProdutos: TDBEdit;
    TotalIPI: TDBEdit;
    TotalNota: TJvDBMaskEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNofiID_CONHECIMENTO: TIntegerField;
    tblConhecimentoSTATUS: TIBStringField;
    tblNofiSTATUS: TIBStringField;
    tblNofiTOT_NOTA: TIBBCDField;
    tblGridID_DADOS_NFE: TIntegerField;
    tblGridID_CONCESSIONARIA: TIntegerField;
    tblGridID_NOFI: TIntegerField;
    tblGridID_CONHECIMENTO: TIntegerField;
    tblGridNF: TIBStringField;
    tblGridQTDE: TIntegerField;
    tblGridCST: TIBStringField;
    tblGridCFOP: TIntegerField;
    tblGridBASE_ICMS: TIBBCDField;
    tblGridALIQ_ICMS: TIBBCDField;
    tblGridVLR_ICMS: TIBBCDField;
    tblGridVLR_IPI: TIBBCDField;
    tblGridCOMBUSTIVEL: TIBStringField;
    tblGridMARCA: TIBStringField;
    tblGridPOTENCIA: TIBStringField;
    tblGridRENAVAM: TIBStringField;
    DBValorMercadorias: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnNovosClick(Sender: TObject);
    procedure BtnUsadosClick(Sender: TObject);
    procedure BtnPecasClick(Sender: TObject);
    procedure DoAfterClose;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoTransportadoraKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TotalNotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure NumeroConhecimentoExit(Sender: TObject);
    procedure ModeloChange(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure NotaFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CodigoTransportadoraExit(Sender: TObject);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoFornecedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure NotaFiscalExit(Sender: TObject);
    procedure DBQtdeNfsExit(Sender: TObject);
    procedure TotalProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarLoteClick(Sender: TObject);
    procedure ValorUnitarioExit(Sender: TObject);
    procedure OutrosExit(Sender: TObject);

  private
    { Private declarations }
     NumeroProdutosDigitados : integer; {quantidade de produtos digitados}
     NumeroNfsDigitadas : integer; {quantidade de notas digitadas}
     QtdeNfsLote : integer;   {quantidade de notas no lote}
     QtdeProdutosLote : integer; {quantidade de produtos na NF}
     nf :integer;

  public
     Total : Currency;
     ArqSalvar : integer;
     id_conhecimento : integer; {sequencia do conhecimento}
     idnofi : integer;
     idTransportadora : Integer;
     idConhecimento : Integer; {numero do conhecimento}
     TotalProd : Integer;
     TotalMercadorias : Integer;
     procedure EnableDisableButtonsInicio (); {Value: Boolean);}
     procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
     procedure EnableDisableCampos (Value: Boolean);
     procedure EnableDisableControls(Value: Boolean);
     procedure AbrirDS; virtual;
     procedure GravaLote; virtual;
     procedure EnableDisableUsados (value : Boolean);
    end;

var
  BoxCompras: TBoxCompras;
  TipoEntrada : Integer;
  Retorno : Integer;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException;

{$R *.dfm}

procedure TBoxCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxCompras := nil;
end;

procedure TBoxCompras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxCompras.FormShow(Sender: TObject);
begin
  EnableDisableButtonsInicio();
  EnableDisableControls(False);
  BtnNovos.Setfocus;
  NumeroProdutosDigitados := 0; {quantidade de produtos digitados}
  NumeroNfsDigitadas :=0; {quantidade de notas digitadas}
  QtdeNfsLote :=0;   {quantidade de notas no lote}
  QtdeProdutosLote :=0; {quantidade de produtos na NF}
end;

procedure TBoxCompras.ValorUnitarioExit(Sender: TObject);
begin
   if (NumeroProdutosDigitados = StrToInt(QtdeProdutos.Text)) and
     (TotalProd+tblNfDa.FieldByName('Vlr_Unit').AsCurrency <>
     tblNofi.FieldByName('Tot_Prod').AsCurrency) then
       begin
        Showmessage('A soma dos produtos não confere.');
        Chassi.SetFocus;
       end
   else
      begin
        ArqSalvar := 3;
        BtnSalvar.Enabled := True;
        BtnSalvar.Setfocus;
      end;
end;

procedure TBoxCompras.NotaFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    DoAfterClose;
    Close;
   end;
      {: troca ENTER por TAB}
  if key = #13 then
    begin
    if True then
      Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    end;
end;

procedure TBoxCompras.NumeroConhecimentoExit(Sender: TObject);
begin
   CodigoTransportadora.SetFocus;
end;

procedure TBoxCompras.OutrosExit(Sender: TObject);
begin
  if tipoentrada <> 2 then
   begin
   if (NumeroNFsDigitadas = StrToInt(DBQtdeNFs.Text)) and
    (TotalMercadorias + Total <>
    tblConhecimento.FieldByName('Valor_Mercadorias').AsCurrency) then
       begin
        Showmessage('A soma das mercadorias não confere.');
        TotalProdutos.SetFocus;
       end;
   end;
end;

procedure TBoxCompras.AbrirDS;
begin
  DataSourceNfda.Dataset.Open;
  DataSourceNofi.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
  DataSourceModelosVeiculos.Dataset.Open;
  DataSourceConhecimento.Dataset.Open;
end;
procedure TBoxCompras.BtnNovosClick(Sender: TObject);
begin
  PageControl.Enabled := True;
  PageConhecimento.Enabled := True;
  Pagenovos.TabVisible := True;
  Pageusados.TabVisible := False;
  Pagepecas.TabVisible := False;
  EnableDisableButtons(False,True);
  AbrirDS;
  PageControl.TabIndex := 0;
  EnableDisableControls(True);
  RadioGroup1.Setfocus;
  TipoEntrada := 1
end;

procedure TBoxCompras.NotaFiscalExit(Sender: TObject);
var
 idNotaFiscal : Integer;
 idFornecedor : Integer;
begin
if NotaFiscal.Text = '' then
   NotaFiscal.Text := '0';
if CodigoFornecedor.Text = '' then
   CodigoFornecedor.Text := '0';
//idNotaFiscal := StrToInt(NotaFiscal.Text);
idFornecedor := StrToInt(CodigoFornecedor.Text);
if StrtoInt(NotaFiscal.Text) <> 0 then
  begin
    with tblPessoas do
      begin
       if idFornecedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idFornecedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fornecedor inexistente.');
             CodigoFornecedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Fornecedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um fornecedor.');
                CodigoFornecedor.SetFocus;
               end;
             NomeFornecedor.Text := FieldbyName('Nome').Text;
            end;
          Close;
         end;
      end;
  end
else
   begin
   SpeedButton3.Click;
  // NotaFiscal.SetFocus;
  end;
idnotafiscal := strtoint(notafiscal.text);
with tblNofi do
begin
  Close;
  parambyName ('idNotaFiscal').AsInteger := idNotaFiscal;
  parambyName ('idFornecedor').AsInteger := idFornecedor;
  Open;
  if recordcount <> 0 then
    begin
     if tblnofi.FieldByName('Status').AsString = 'Aberto' then
       begin
         showmessage('Nota fiscal cadastrada. Reabrindo inclusão.');
         DataSourceNofi.DataSet.Edit
       end
     else
       begin
         Showmessage('Nota fiscal cadastrada e encerrada.');
         notafiscal.Setfocus
       end
    end
  else
    DataSourceNofi.Dataset.Insert;
end;
DataSourceNofi.Dataset.FieldByName('Numero').AsString := IntToStr(idnotafiscal);
end;

procedure TBoxCompras.CodigoFornecedorExit(Sender: TObject);
var
 idFornecedor : Integer;
begin
if CodigoFornecedor.Text = '' then
   CodigoFornecedor.Text := '0';
idFornecedor := StrToInt(CodigoFornecedor.Text);
if StrtoInt(CodigoFornecedor.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoFornecedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idFornecedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idFornecedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Fornecedor inexistente.');
             CodigoFornecedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Fornecedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um fornecedor.');
                CodigoFornecedor.SetFocus;
               end;
             NomeFornecedor.Text := FieldbyName('Nome').Text;
            end;
          Close;
         end;
      end;
  end;
end;

procedure TBoxCompras.CodigoTransportadoraExit(Sender: TObject);
begin
if NumeroConhecimento.Text = '' then
   NumeroConhecimento.Text := '0';
if CodigoTransportadora.Text = '' then
   CodigoTransportadora.Text := '0';
idTransportadora := StrToInt(CodigoTransportadora.Text);
idConhecimento := StrToInt(NumeroConhecimento.Text);
if StrtoInt(CodigoTransportadora.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoTransportadora.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idTransportadora<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idTransportadora;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Transportadora inexistente.');
             CodigoTransportadora.SetFocus;
            end
          else
            begin
             if not FieldByName('Transportadora').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à uma transportadora.');
                CodigoTransportadora.SetFocus;
               end;
             NomeTransportadora.Text := FieldbyName('Nome').Text;
            end;
          Close;
         end;
      end;
  end;
with tblConhecimento do
begin
  Close;
  parambyName ('idConhecimento').AsInteger := idConhecimento;
  parambyName ('idTransportadora').AsInteger := idTransportadora;
  Open;
  if recordcount <> 0 then
    begin
     if tblConhecimento.FieldByName('Status').AsString = 'Aberto' then
       begin
         showmessage('Conhecimento cadastrado. Reabrindo inclusão.');
         DataSourceConhecimento.DataSet.Edit
       end
     else
       begin
         Showmessage('Conhecimento cadastrado e encerrado.');
         numeroconhecimento.Setfocus
       end
    end
  else
    DataSourceConhecimento.Dataset.Insert;
end;
end;

procedure TBoxCompras.CodigoTransportadoraKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #27 then
  begin
    DoAfterClose;
    Close;
  end;
      {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    if CodigoTransportadora.Text = '' then
    else
      begin
        MessageDlg('Conhecimento já registrado.', mtInformation, [mbOK], 0);
        BtnCancelar.OnClick(Sender);
      end;
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
end;

procedure TBoxCompras.DBGrid1ColEnter(Sender: TObject);
begin
//     if (DBGrid1.SelectedField = tblGridFDB1.IBDataSetLoteDadosNFEItem) then
     begin
       if ((tblGrid.State <> dsInsert) and
          (tblGrid.State <> dsEdit)) then
         begin
          tblGrid.Edit;
          tblGrid.Post;
         end;
     end;
end;

procedure TBoxCompras.DBGrid1ColExit(Sender: TObject);
begin
{     if (DBGrid1.SelectedField = fdb1.IBDatasetLoteDadosNFEItem) then
     begin
       if (not fdb1.IBDatasetVeiculos.Locate('ITEM',
       fdb1.IBDatasetLoteDadosNFEItem.AsString,
        [loCaseInsensitive, loPartialKey])) then
        begin
          MessageDlg('Código do produto não encontrado !',mtInformation, [mbOK], 0);
          fdb1.IBDatasetLoteDadosNFE.Edit;
          fdb1.IBDatasetLoteDadosNFEItem.AsString := '';
          fdb1.IBDatasetLoteDadosNFE.Post;
        end;
     end;}
end;

procedure TBoxCompras.DBQtdeNfsExit(Sender: TObject);
begin
//   QtdeNfsLote := DBQTdeNfs.AsFloat;   {quantidade de notas no lote}
end;

procedure TBoxCompras.DoAfterClose;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceNfda.Dataset.Close;
    DataSourceConhecimento.Dataset.Close;
    DataSourceModelosVeiculos.Dataset.Close;
    DataSourcePessoas.DataSet.Close;
end;

procedure TBoxCompras.BtnUsadosClick(Sender: TObject);
begin
  PageControl.Enabled := True;
//  PageNotasFiscais.Enabled := True;
  PageConhecimento.Enabled := True;
  Pagenovos.TabVisible := False;
  Pageusados.TabVisible := True;
  Pagepecas.TabVisible := False;
  EnableDisableButtons(False,True);
  AbrirDS;
  PageControl.TabIndex := 0;
  DataSourceConhecimento.Dataset.Insert;
  EnableDisableControls(True);
  EnableDisableUsados(False);
  RadioGroup1.ItemIndex := 1;
  DBValorMercadorias.Setfocus;
  TipoEntrada := 2
end;

procedure TBoxCompras.ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar := 1;
    BtnSalvar.Enabled := True;
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxCompras.TotalNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    DoAfterClose;
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar:=2;
    BtnSalvar.Enabled := True;
    BtnSalvar.SetFocus;
  end;
      {: Soma o total da NF}
    with tblNofi do
     begin
      Total := FieldByName('TOT_PROD').AsCurrency +
        FieldByName('VAL_IPI').AsCurrency +
        FieldByName('VAL_ICMS_S').AsCurrency +
        FieldByName('VAL_ICMS').AsCurrency +
        FieldByName('VAL_FRETE').AsCurrency +
        FieldByName('VAL_SEGURO').AsCurrency +
        FieldByName('VAL_OUTROS').AsCurrency;
      TotalNota.Text := FloatToStr(Total);//FloatToStrF(total,ffNumber,15,2);
     end;
end;

procedure TBoxCompras.TotalProdutosKeyPress(Sender: TObject; var Key: Char);
var
 Total : Currency;
begin
  if Key = #27 then
    begin
      DoAfterClose;
      Close;
    end;
      {: troca ENTER por TAB}
  if key = #13 then
    begin
      Perform (CM_DialogKey, VK_TAB, 0);
      key:=#0;
    end;
    {: Soma o total da NF}
    with tblNofi do
     begin
      Total := FieldByName('TOT_PROD').AsCurrency +
        FieldByName('VAL_IPI').AsCurrency +
        FieldByName('VAL_ICMS_S').AsCurrency +
        FieldByName('VAL_ICMS').AsCurrency +
        FieldByName('VAL_FRETE').AsCurrency +
        FieldByName('VAL_SEGURO').AsCurrency +
        FieldByName('VAL_OUTROS').AsCurrency;
      TotalNota.Text := FloatToStr(total);//FloatToStrF(total,ffNumber,15,2);
     end;
end;

procedure TBoxCompras.BtnPecasClick(Sender: TObject);
begin
  PageControl.Enabled := True;
  PageConhecimento.Enabled := True;
  Pagenovos.TabVisible := False;
  Pageusados.TabVisible := False;
  Pagepecas.TabVisible := True;
  EnableDisableButtons(False,True);
  AbrirDs;
  PageControl.TabIndex := 0;
  TipoEntrada := 3
end;

procedure TBoxCompras.BtnSalvarClick(Sender: TObject);
begin
  BtnSalvar.Enabled := False;
  if ArqSalvar = 1 then
    begin
      DataSourceConhecimento.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      DataSourceConhecimento.DataSet.FieldByName('Status').AsString := 'Aberto';
      if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Com conhecimento' then
        begin
         DataSourceConhecimento.Dataset.FieldByName('Transportadora').AsInteger :=
           StrToInt(CodigoTransportadora.Text);
         DataSourceConhecimento.Dataset.FieldByName('Numero_Conhecimento').AsString :=
           NumeroConhecimento.Text;
        end;
      DataSourceConhecimento.DataSet.Post;
      DataSourceConhecimento.DataSet.Close;
      if tipoentrada =2 then
          begin
            idTransportadora := 1;
            TotalProdutos.Text := DBValorMercadorias.Text;
          end;
      DataSourceConhecimento.DataSet.Open;
      showmessage(inttostr(idTransportadora));
      Id_conhecimento := DataSourceConhecimento.Dataset.FieldByName('Id_Conhecimento').AsInteger;
      showmessage(inttostr(idConhecimento));
      EnableDisableControls(False);
      PageNotasFiscais.Visible :=True;
      PageNotasFiscais.Enabled := True;
      PageControl.TabIndex := 1;
      PageConhecimento.Enabled := False;
      EnableDisableControls(True);
      CodigoFornecedor.Setfocus;
      if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento'  then
        QtdeNfsLote := 1
      else
        QtdeNfsLote := StrToInt(DBQtdeNfs.Text);
      NumeroNotaFiscalLote.Text := IntToStr(1);
      NumeroNfsDigitadas := 1;
      TotalMercadorias := 0;
      if tipoentrada = 2 then
        begin
          EnableDisableUsados(False);
          DataSourceNofi.DataSet.Insert;
        end;
    end;
  if ArqSalvar = 2 then
    begin
      begin
        TotalMercadorias := TotalMercadorias + StrToInt(CurrToStr(total));
        DataSourceNofi.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        DataSourceNofi.Dataset.FieldByName('Id_Clientes').AsInteger :=
          StrToInt(CodigoFornecedor.Text);
        DataSourceNofi.DataSet.FieldByName('Id_Conhecimento').AsInteger := id_conhecimento;
        DataSourceNofi.Dataset.FieldByname('Status').AsString := 'Aberto';
        DataSourceNofi.Dataset.FieldByName('Ent_sai').AsString := 'E';
        if tipoentrada=1 then
          DataSourceNofi.Dataset.FieldByName('Origem').AsString := 'V';
        if tipoentrada=2 then
          DataSourceNofi.DataSet.FieldByName('Origem').AsString := 'U';
        if tipoentrada=3 then
          DataSourceNofi.DataSet.FieldByName('Origem').AsString := 'P';
        DataSourceNofi.Dataset.Post;
        DataSourceNofi.Dataset.Close;
        DataSourceNofi.Dataset.Open;
        IdNofi :=DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger;
        EnableDisableControls(False);
       if tipoentrada=1 then
        begin
         PageNovos.Enabled := True;
         PageControl.TabIndex := 2;
         Modelo.Setfocus;
         tblmodelos.Last;
         tblmodelos.RecNo;
         Modelo.DropDownCount := tblModelos.Recno;
        end;
       if tipoentrada=2 then
        begin
         PageUsados.Enabled := True;
         PageControl.TabIndex := 3;
         ModeloUsados.Setfocus;
        end;
       if tipoentrada=3 then
        begin
         PagePecas.Enabled := True;
         PageControl.TabIndex := 4;
         Codigo.Setfocus;
        end;
       PageConhecimento.Enabled := False;
       PageNotasFiscais.Enabled := False;
       EnableDisableControls(True);
       tblModelos.Open;
       tblNfDa.Open;
       tblNfDa.Insert;
       NumeroProdutosDigitados := 1; {quantidade de produtos digitados}
       ProdutoNumero.Text := '1';
       QtdeProdutosLote := StrToInt(QtdeProdutos.Text); {quantidade de produtos na NF}
       DataSourceNfDa.Dataset.FieldByName('CFOP').Value :=
         DataSourceNofi.DataSet.FieldByName('CFOP').Value;
       with tblGrid do
         begin
           Close;
           ParamByName('idNofi').AsInteger :=
             DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger;
           Open;
           DataSourceGrid.DataSet.Active := True;
         end;
    end;
   end;
  if ArqSalvar = 3 then
     begin
        TotalProd := TotalProd + tblNfDa.FieldByName('Vlr_Unit').AsInteger;
        ProdutoNumero.Text := IntToStr(NumeroProdutosDigitados);
        DataSourceNfDa.Dataset.FieldByName('Id_Nofi').AsInteger := IdNofi;
        DataSourceNfDa.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        DataSourceNfda.Dataset.FieldByName('NF').AsString :=
          DataSourceNofi.Dataset.FieldByName('Numero').AsString;
        if (tipoentrada=1) or (tipoentrada=2) then
          DataSourceNfda.Dataset.FieldByName('Qtde').AsString := '1';
        DataSourceNfda.Dataset.FieldByName('Id_Conhecimento').AsInteger := Id_conhecimento;
        if tipoentrada=1 then
          DataSourceNfda.Dataset.FieldByName('CST').AsString :=
            DataSourceModelosVeiculos.Dataset.FieldByName('CST').AsString;
        DataSourceNfDa.Dataset.Post;
        if numeroProdutosDigitados=StrToInt(qtdeprodutos.Text) then
          if NumeroNfsDigitadas = QtdeNfsLote then
              ArqSalvar :=4     {Fechar a nota}
          else
            begin
             NumeroNfsDigitadas := NumeroNfsDigitadas + 1;
             NumeroNotaFiscalLote.Text := IntToStr(NumeroNfsDigitadas);
             TotalProd := 0;
             PageNotasFiscais.Enabled := True;
             PageControl.TabIndex := 1;
             PageNovos.Enabled := False;
             PageUsados.Enabled := False;
             PagePecas.Enabled := False;
             tblNofi.Insert;
             with tblGrid do
               begin
                 Close;
                 ParamByName('idNofi').AsInteger :=
                 DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger;
                 Open;
                 dbgrid1.Refresh;
                 DataSourceGrid.DataSet.Active := True;
               end;

             NotaFiscal.SetFocus;
            end
        else
          begin
            Modelo.SetFocus;
            DataSourceNfda.DataSet.Insert;
            DataSourceNfDa.Dataset.FieldByName('CFOP').Value :=
              DataSourceNofi.DataSet.FieldByName('CFOP').Value;
          end;
             with tblGrid do
               begin
                 Close;
                 ParamByName('idNofi').AsInteger :=
                 DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger;
                 Open;
                 dbgrid1.Refresh;
                 DataSourceGrid.DataSet.Active := True;
               end;

        NumeroProdutosDigitados := NumeroProdutosDigitados +1;
        ProdutoNumero.Text := IntToStr(NumeroProdutosDigitados);
     end;
  if ArqSalvar = 4 then
     begin
        BtnSalvarLote.Enabled := True;
        BtnSalvarLote.SetFocus;
     end;
//  if TipoEntrada = 2  then
  //  begin
    //  EnableDisableUsados(True);
  //  end;
end;

procedure TBoxCompras.BtnSalvarLoteClick(Sender: TObject);
begin
  case MessageDlg('Confirma Fechamento do lote?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: GravaLote;
    end
end;

procedure TBoxCompras.GravaLote;
var
  i : integer;
begin
   with tblConhecimento do
     begin
        Open;
        Edit;
        FieldByName('Status').AsString := 'Fechado';
        Post;
        Close;
     end;
   with tblNofi do
     begin
       Close;
       Open;
       Edit;
       Prior;
       for i := 0 to RecordCount do
         begin
         edit;
            FieldByName('Status').AsString := 'Fechado';
            Post;
            next;
         end;
     end;
   BtnSalvarLote.Enabled := False;
   EnableDisableButtonsInicio();
   BtnCancelar.Enabled := False;
   Pagenovos.TabVisible := False;
   Pageusados.TabVisible := False;
   Pagepecas.TabVisible := False;
   PageControl.TabIndex := 0;
   BtnNovos.Setfocus;
end;
procedure TBoxCompras.RadioGroup1Click(Sender: TObject);
begin
    DBValorMercadorias.Enabled := True;
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Com conhecimento' then
      begin
        numeroconhecimento.Enabled := True;
        CodigoTransportadora.Enabled := True;
        DBValorFrete.Enabled := True;
        DBQtdeNfs.Enabled := True;
        NumeroConhecimento.Setfocus;
      end;
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento' then
      begin
        numeroconhecimento.Enabled := False;
        CodigoTransportadora.Enabled := False;
        DBValorFrete.Enabled := False;
        DBQtdeNfs.Enabled := False;
        DBValorMercadorias.Setfocus;
        DataSourceConhecimento.Dataset.Open;
        DataSourceConhecimento.Dataset.Insert;
      end;
 end;

procedure TBoxCompras.ModeloChange(Sender: TObject);
begin
   Chassi.SetFocus;
   tblNfDa.FieldByName('Marca').AsString := tblModelos.FieldByName('Marca').AsString;
   tblNfDa.FieldByName('Combustivel').AsString := tblModelos.FieldByName('Combustivel').AsString;
   tblNfDa.FieldByName('Renavam').AsString := tblModelos.FieldByName('Renavam').AsString;
   tblNfDa.FieldByName('Potencia').AsString := tblModelos.FieldByName('HP').AsString;
end;

procedure TBoxCompras.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Transportadora','Clientes',
      ['Id_Clientes','Codigo','Nome','Id_Concessionaria'],
      ['Sequência:','Código:','Nome:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Transportadora = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := Retorno;
        Open;
        CodigoTransportadora.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeTransportadora.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoTransportadora.SetFocus;
end;

procedure TBoxCompras.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Fornecedor','Clientes',
      ['Id_Clientes','Codigo','Nome','Id_Concessionaria'],
      ['Sequência:','Código:','Razão Social:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Fornecedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := Retorno;
        Open;
        CodigoFornecedor.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeFornecedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFornecedor.SetFocus;
end;

procedure TBoxCompras.SpeedButton3Click(Sender: TObject);
begin
     Nf := STRtoINT(NotaFiscal.text);
     Retorno := Biblioteca.PesquisaGeral('Nota Fiscal','Nofi',
      ['Id_Nofi','Numero','Serie','Emissao'],
      ['Sequência:','Número da NF:','Série NF:','Data Emissão:',''],
      'Numero','Numero',Fdb1.SQLConnection1,'Status = ','Aberto','Ativo');
     with tblNofi do
     begin
       Close;
       Parambyname('idfornecedor').AsInteger := StrToInt(CodigoFornecedor.Text);
       ParamByName('idNotaFiscal').AsInteger := Retorno;
       Open;
       NotaFiscal.Text := IntToStr(Retorno);
       Edit;
     end;
     CFOP.SetFocus;
end;

procedure TBoxCompras.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxCompras.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxCompras.EnableDisableButtonsInicio();{Value: Boolean);}
begin
  { Habilita/desabilita os botões }
  Pagenovos.Enabled := False;
  Pageusados.Enabled := False;
  Pagepecas.Enabled := False;
  BtnNovos.Enabled := False;
  BtnUsados.Enabled := False;
  BtnPecas.Enabled := False;
  BtnSalvar.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnSalvarLote.Enabled := False;
  Pagenovos.TabVisible := False;
  Pageusados.TabVisible := False;
  Pagepecas.TabVisible := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso9.AsString = 'T') then {veículos}
    begin
      BtnNovos.Enabled := True;
      BtnUsados.Enabled := True;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso10.AsString = 'T') then {peças}
    begin
      BtnPecas.Enabled := True;
    end;
end;

procedure TBoxCompras.BtnCancelarClick(Sender: TObject);
begin
  EnableDisableButtonsInicio();
  FDb1.IBTransaction.RollbackRetaining;
  BtnCancelar.Enabled := False;
  Pagenovos.TabVisible := False;
  Pageusados.TabVisible := False;
  Pagepecas.TabVisible := False;
  PageControl.TabIndex := 0;
  BtnNovos.Setfocus;
end;

procedure TBoxCompras.EnableDisableButtons(Value: Boolean; Value1 : Boolean);
begin
  { Habilita/desabilita os botões }
  BtnNovos.Enabled := Value;
  BtnUsados.Enabled := Value;
  BtnPecas.Enabled := Value;
  BtnCancelar.Enabled := Value1;
end;

procedure TBoxCompras.EnableDisableCampos(Value: Boolean);
begin
      if ArqSalvar = 1 then
        begin
          RadioGroup1.Enabled := False;
          NumeroConhecimento.Enabled := False;
          DBQtdeNfs.Enabled := False;
          CodigoTransportadora.Enabled := False;
          DBValorFrete.Enabled := False;
          DBValorMercadorias.Enabled := False;
        end;
      if ArqSalvar = 2 then
        begin
          NotaFiscal.Enabled := False;
          QtdeProdutos.Enabled := False;
          CFOP.Enabled := False;
          SerieNF.Enabled := False;
          Emissao.Enabled := False;
          Chegada.Enabled := False;
          CodigoFornecedor.Enabled  := False;
          NomeFornecedor.Enabled := False;
          TotalProdutos.Enabled := False;
          TotalIPI.Enabled := False;
          ICMSSubst.Enabled := False;
          CreditoICMS.Enabled := False;
          Outros.Enabled := False;
          TotalNota.Enabled := False;
        end;

end;

procedure TBoxCompras.EnableDisableUsados(Value : Boolean);
begin
   SerieNf.Enabled := Value;
   QtdeProdutos.Enabled := Value;
   Chegada.Enabled := Value;
   TotalIpi.Enabled := Value;
   ICMSSubst.Enabled := Value;
   NotaFiscal.Enabled := Value;
   SpeedButton3.Enabled := Value;
   RadioGroup1.Enabled := Value;
   SpeedButton1.Enabled := Value;
   CodigoTransportadora.Enabled := Value;
   NumeroConhecimento.Enabled := Value;
   DBValorFrete.Enabled := Value;
   DBQtdeNfs.Enabled := Value;
  // PageConhecimento.Enabled := Value;
end;

procedure TBoxCompras.EnableDisableControls(Value: Boolean);
var
  i : integer;
begin
  {: faz um laço em todos os componentes}
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TSpeedButton) then
       (Components[i] as TSpeedButton).Enabled:= Value;
    if (Components[i] is TMaskEdit) then
       (Components[i] as TMaskEdit).Enabled:= Value;
    if (Components[i] is TJVDBMaskEdit) then
       (Components[i] as TJVDBMaskEdit).Enabled:= Value;
    if (Components[i] is TCustomEdit) then
       (Components[i] as TCustomEdit).Enabled := Value;
    if (Components[i] is TRadioGroup) then
       (Components[i] as TRadioGroup).Enabled := Value;
    if (Components[i] is TDBLookupComboBox) then
       (Components[i] as TDBLookupComboBox).Enabled := Value;
  end;
  NomeTransportadora.Enabled := False;
  NomeFornecedor.Enabled := False;
//  RadioGroup1.ItemIndex := -1;
end;

end.
