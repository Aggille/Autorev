unit OperacoesComprasNovos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvErrorIndicator, JvValidators, JvComponentBase;

type
  TBoxComprasNovos = class(TForm)
    ImageList1: TImageList;
    PageControl: TPageControl;
    Pagenovos: TTabSheet;
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
    BtnCancelar: TBitBtn;
    BtnFecharLote: TBitBtn;
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
    tblModelosCOMBUSTIVEL: TIBStringField;
    tblModelosRENAVAM: TIBStringField;
    tblModelosCLASSIF_FISCAL: TIBStringField;
    tblModelosPPS: TIBBCDField;
    tblModelosPPS_ABRACY: TIBBCDField;
    tblModelosPRECO_VENDA: TIBBCDField;
    tblConhecimentoID_CONHECIMENTO: TIntegerField;
    tblConhecimentoID_CONCESSIONARIA: TIntegerField;
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
    outros: TJvDBMaskEdit;
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
    tblModelosCST: TIBStringField;
    TotalProdutos: TDBEdit;
    TotalIPI: TDBEdit;
    TotalNota: TJvDBMaskEdit;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblConhecimentoSTATUS: TIBStringField;
    DBValorMercadorias: TDBEdit;
    Label13: TLabel;
    PIS: TJvDBMaskEdit;
    COFINS: TJvDBMaskEdit;
    tblNfDaCST: TIBStringField;
    tblNofiID_NOFI: TIntegerField;
    tblNofiID_CONCESSIONARIA: TIntegerField;
    tblNofiID_CLIENTES: TIntegerField;
    tblNofiID_CONHECIMENTO: TIntegerField;
    tblNofiNUMERO: TIBStringField;
    tblNofiSERIE: TIBStringField;
    tblNofiEMISSAO: TDateField;
    tblNofiCODIGO: TIBStringField;
    tblNofiORIGEM: TIBStringField;
    tblNofiENT_SAI: TIBStringField;
    tblNofiVENDEDOR: TIBStringField;
    tblNofiCOMISSAO: TIBBCDField;
    tblNofiSAIDA: TDateField;
    tblNofiHORA: TIBStringField;
    tblNofiCFOP: TIBStringField;
    tblNofiNAT_OP: TIBStringField;
    tblNofiIE_SUBS: TIBStringField;
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
    tblNofiTOT_NOTA: TIBBCDField;
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
    tblNofiQTDE_PROD: TIntegerField;
    tblNofiSTATUS: TIBStringField;
    tblNofiVAL_PIS: TIBBCDField;
    tblNofiVAL_COFINS: TIBBCDField;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosNOTA_ENT: TIBStringField;
    tblVeiculosDATA_ENT: TDateField;
    tblVeiculosFONE: TIBStringField;
    tblVeiculosCONSIG: TIBStringField;
    tblVeiculosCUSTO: TIBBCDField;
    tblVeiculosCUSTO_ICMS: TIBBCDField;
    tblVeiculosPRECO: TIBBCDField;
    tblVeiculosDATA_SAI: TDateField;
    tblVeiculosNF_SAIDA: TIBStringField;
    tblVeiculosVENDA: TIBStringField;
    tblVeiculosMOTOR: TIBStringField;
    tblVeiculosFINANC_PRO: TIBStringField;
    tblVeiculosSTATUS: TIBStringField;
    tblVeiculosRESERVADA: TDateField;
    tblVeiculosFOTO: TIBStringField;
    tblVeiculosRESERVADA_POR: TIBStringField;
    tblVeiculosESTOQUE: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    DataSourceVeiculos: TDataSource;
    IBQuery1: TIBQuery;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblModelosVEICULO_NOVO: TIBStringField;
    tblModelosHP: TIBStringField;
    validador: TJvValidators;
    JvValidationSummary1: TJvValidationSummary;
    JvErrorIndicator1: TJvErrorIndicator;
    jvOutro: TJvCustomValidator;
    BtnImportar: TBitBtn;
    AnoFabricacao: TDBEdit;
    tblModelosANO_FABRICACAO: TIBStringField;
    tblModelosANO_MODELO: TIBStringField;
    AnoModelo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnUsadosClick(Sender: TObject);
    procedure FecharDs;
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
    procedure BtnFecharLoteClick(Sender: TObject);
    procedure ValorUnitarioExit(Sender: TObject);
    procedure outrosExit(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure TotalProdutosExit(Sender: TObject);
    procedure QtdeProdutosExit(Sender: TObject);
    procedure CFOPExit(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);

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
     TotalProd : Extended;
     TotalMercadorias : Extended;
     procedure EnableDisableButtonsInicio (); {Value: Boolean);}
     procedure EnableDisableButtons (Value: Boolean; Value1: Boolean);
     procedure EnableDisableCampos (Value: Boolean);
     procedure EnableDisableControls(Value: Boolean);
     procedure AbrirDS; virtual;
     procedure GravaLote; virtual;
     procedure EnableDisableUsados (value : Boolean);
    end;

var
  BoxComprasNovos: TBoxComprasNovos;
  Retorno : String;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasUsados, OperacoesComprasPecas,
  OperacoesComprasNovosImportacao;

{$R *.dfm}

procedure TBoxComprasNovos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasNovos := nil;
end;

procedure TBoxComprasNovos.FormKeyPress(Sender: TObject; var Key: Char);
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
  end
end;

procedure TBoxComprasNovos.FormShow(Sender: TObject);
begin
  EnableDisableControls(False);
  EnableDisableButtonsInicio();
  AbrirDs;
  NumeroProdutosDigitados := 0; {quantidade de produtos digitados}
  NumeroNfsDigitadas :=0; {quantidade de notas digitadas}
  QtdeNfsLote :=0;   {quantidade de notas no lote}
  QtdeProdutosLote :=0; {quantidade de produtos na NF}
end;

procedure TBoxComprasNovos.ValorUnitarioExit(Sender: TObject);
begin
   if (NumeroProdutosDigitados = StrToInt(QtdeProdutos.Text)) and
     (TotalProd+tblNfDa.FieldByName('Vlr_Unit').AsCurrency <>
     tblNofi.FieldByName('Tot_Prod').AsCurrency) then
       begin
  //     showmessage(tblnofi.fieldbyname('tot_prod').asstring);
 //      showmessage(     (tblNfDa.FieldByName('Vlr_Unit').Asstring ));
//       showmessage(inttostr(totalprod));
        Showmessage('A soma dos produtos não confere.');
        Chassi.SetFocus;
       end
   else
      begin
        ArqSalvar := 3;
        BtnSalvar.Enabled := True;
        Salvar.Enabled := True;
        BtnSalvar.Setfocus;
      end;
end;

procedure TBoxComprasNovos.NumeroConhecimentoExit(Sender: TObject);
begin
   CodigoTransportadora.SetFocus;
end;

procedure TBoxComprasNovos.outrosExit(Sender: TObject);
begin
    with tblNofi do
     begin
      Total := FieldByName('TOT_PROD').AsCurrency +
        FieldByName('VAL_IPI').AsCurrency +
        FieldByName('VAL_ICMS_S').AsCurrency +
        FieldByName('VAL_ICMS').AsCurrency +
        FieldByName('VAL_FRETE').AsCurrency +
        FieldByName('VAL_PIS').AsCurrency +
        FieldByName('VAL_COFINS').AsCurrency +
        FieldByName('VAL_SEGURO').AsCurrency +
        FieldByName('VAL_OUTROS').AsCurrency;
     end;
  if (NumeroNFsDigitadas = StrToInt(DBQtdeNFs.Text)) and
    (tblNofi.FieldByName('TOT_PROD').AsCurrency +
    tblNofi.FieldByName('VAL_IPI').AsCurrency +
    tblNofi.FieldByName('VAL_ICMS_S').AsCurrency +
    tblNofi.FieldByName('VAL_ICMS').AsCurrency +
    tblNofi.FieldByName('VAL_FRETE').AsCurrency +
    tblNofi.FieldByName('VAL_SEGURO').AsCurrency +
    tblNofi.FieldByName('VAL_COFINS').AsCurrency +
    tblNofi.FieldByName('VAL_OUTROS').AsCurrency +
    tblNofi.FieldByName('VAL_PIS').AsCurrency <>
    tblConhecimento.FieldByName('Valor_Mercadorias').AsCurrency) then
       begin
        Showmessage('A soma das mercadorias não confere.');
        TotalProdutos.SetFocus;
       end
     else
       begin
         tblNofi.FieldByName('TOT_Nota').AsCurrency := Total;
         ArqSalvar := 2 ;
         BtnSalvar.Enabled := True;
         Salvar.Enabled := True;
         BtnSalvar.SetFocus;
       end;
end;

procedure TBoxComprasNovos.QtdeProdutosExit(Sender: TObject);
begin
 if QtdeProdutos.Text = '' then
   QtdeProdutos.Text := '1';
end;

procedure TBoxComprasNovos.NotaFiscalExit(Sender: TObject);
var
 idNotaFiscal : Integer;
 idFornecedor : Integer;
begin
if NotaFiscal.Text = '' then
   NotaFiscal.Text := '0';
if CodigoFornecedor.Text = '' then
   CodigoFornecedor.Text := '0';
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
             CFOP.SetFocus;
            end;
          Close;
         end;
      end;
  end
else
   begin
   SpeedButton3.Click;
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

procedure TBoxComprasNovos.CFOPExit(Sender: TObject);
begin
  QtdeProdutos.SetFocus;
end;

procedure TBoxComprasNovos.CodigoFornecedorExit(Sender: TObject);
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
             NotaFiscal.SetFocus;
            end;
          Close;
         end;
      end;
  end;
end;

procedure TBoxComprasNovos.CodigoTransportadoraExit(Sender: TObject);
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

procedure TBoxComprasNovos.CodigoTransportadoraKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #27 then
  begin
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

procedure TBoxComprasNovos.DBGrid1ColEnter(Sender: TObject);
begin
//     if (DBGrid1.SelectedField = tblGridFDB1.IBDataSetLoteDadosNFEItem) then
     begin
       if ((tblNFda.State <> dsInsert) and
          (tblNfDa.State <> dsEdit)) then
         begin
          tblNfda.Edit;
          tblNfda.Post;
         end;
     end;
end;

procedure TBoxComprasNovos.DBGrid1ColExit(Sender: TObject);
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

procedure TBoxComprasNovos.DBGrid1EditButtonClick(Sender: TObject);
begin
  showmessage('teste');
end;

procedure TBoxComprasNovos.DBQtdeNfsExit(Sender: TObject);
begin
//   QtdeNfsLote := DBQTdeNfs.AsFloat;   {quantidade de notas no lote}
end;


procedure TBoxComprasNovos.BtnUsadosClick(Sender: TObject);
begin
//  Action :=caFree;
//  BoxComprasNovos := nil;
//  if not Assigned(BoxComprasNovos) then
//    BoxComprasUsados := TBoxComprasUsados.Create(Self);
//  BoxComprasUsados.Show;
end;

procedure TBoxComprasNovos.ValorMercadoriasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar := 1;
    BtnSalvar.Enabled := True;
    Salvar.Enabled := True;
    BtnSalvar.Setfocus;
  end;
end;

procedure TBoxComprasNovos.TotalNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
   end;
     {: troca ENTER por TAB}
  if (key = #9) or (key = #13) then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
    ArqSalvar:=2;
    BtnSalvar.Enabled := True;
    Salvar.Enabled := True;
    BtnSalvar.SetFocus;
  end;
end;

procedure TBoxComprasNovos.TotalProdutosExit(Sender: TObject);
var
 Total : Currency;
begin
      {: Soma o total da NF}
    with tblNofi do
     begin
      Total := FieldByName('TOT_PROD').AsCurrency +
        FieldByName('VAL_IPI').AsCurrency +
        FieldByName('VAL_ICMS_S').AsCurrency +
        FieldByName('VAL_ICMS').AsCurrency +
        FieldByName('VAL_FRETE').AsCurrency +
        FieldByName('VAL_PIS').AsCurrency +
        FieldByName('VAL_COFINS').AsCurrency +
        FieldByName('VAL_SEGURO').AsCurrency +
        FieldByName('VAL_OUTROS').AsCurrency;
      FieldByName('TOT_Nota').AsCurrency := Total;
//      TotalNota.Text := FloatToStr(Total);//FloatToStrF(total,ffNumber,15,2);
     end;

end;

procedure TBoxComprasNovos.BtnSalvarClick(Sender: TObject);
begin
  BtnSalvar.Enabled := False;
  Salvar.Enabled := False;
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
        end
      else          //sem conhecimento
        tblConhecimento.FieldByName('Qtde_NFs').AsString := '1';
      Id_conhecimento := DataSourceConhecimento.Dataset.FieldByName('Id_Conhecimento').AsInteger;
      DataSourceConhecimento.DataSet.Post;
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
    end;
  if ArqSalvar = 2 then
    begin
      begin
        {Pega um sequence novo para a NF}
        IBQuery1.Open;
        IdNofi := IBQuery1.FieldByName('id_nofi').AsInteger;
        IBQuery1.Close;
        TotalMercadorias := TotalMercadorias +
          tblNofi.FieldByName('Tot_nota').AsFloat;
        DataSourceNofi.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        DataSourceNofi.Dataset.FieldByName('Id_Clientes').AsInteger :=
          StrToInt(CodigoFornecedor.Text);
        DataSourceNofi.DataSet.FieldByName('Id_Conhecimento').AsInteger := id_conhecimento;
        DataSourceNofi.Dataset.FieldByname('Status').AsString := 'Aberto';
        DataSourceNofi.Dataset.FieldByName('Ent_sai').AsString := 'E';
        DataSourceNofi.Dataset.FieldByName('Origem').AsString := 'V';
        DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger := idNofi;
        DataSourceNofi.Dataset.Post;
        EnableDisableControls(False);
        PageNovos.Enabled := True;
        PageControl.TabIndex := 2;
        tblmodelos.Last;
        tblmodelos.RecNo;
        Modelo.DropDownCount := tblModelos.Recno;
        PageConhecimento.Enabled := False;
        PageNotasFiscais.Enabled := False;
        EnableDisableControls(True);
        QtdeProdutosLote := StrToInt(QtdeProdutos.Text); {quantidade de produtos na NF}
        with tblNfda do //tblGrid
          begin
           Close;
           ParamByName('idNofi').AsInteger := idNofi;
           Open;
//           DataSourceNfda.DataSet.Active := True;
           if recordcount <> 0 then
             begin
               showmessage('Nota fiscal já tem produtos digitados.');
               Edit;
               Modelo.Value := tblNfDa.FieldByName('Modelo').Value;
             end
           else
             begin
               Insert;
             end;
          DataSourceNfDa.Dataset.FieldByName('CFOP').Value :=
            DataSourceNofi.DataSet.FieldByName('CFOP').Value;
          end;
        NumeroProdutosDigitados := 1; {quantidade de produtos digitados}
        ProdutoNumero.Text := '1';
        Modelo.Setfocus;
    end;
   end;
  if ArqSalvar = 3 then
     begin
        TotalProd := TotalProd + tblNfDa.FieldByName('Vlr_Unit').AsFloat;
        ProdutoNumero.Text := IntToStr(NumeroProdutosDigitados);
        DataSourceNfDa.Dataset.FieldByName('Id_Nofi').AsInteger := IdNofi;
        DataSourceNfDa.Dataset.FieldByName('Id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        DataSourceNfda.Dataset.FieldByName('NF').AsString :=
          DataSourceNofi.Dataset.FieldByName('Numero').AsString;
        DataSourceNFDa.Dataset.FieldByName('ANO_MODELO').AsString := AnoModelo.Text;
        DataSourceNFDa.dataset.FieldByName('ANO_FABRICACAO').AsString := AnoFabricacao.Text;
        DataSourceNfda.Dataset.FieldByName('Qtde').AsString := '1';
        DataSourceNfda.Dataset.FieldByName('Id_Conhecimento').AsInteger := Id_conhecimento;
        DataSourceNfDa.Dataset.Post;
        if numeroProdutosDigitados=StrToInt(qtdeprodutos.Text) then
          if NumeroNfsDigitadas = QtdeNfsLote then
              ArqSalvar := 4     {Fechar a nota}
          else
            begin
             NumeroNfsDigitadas := NumeroNfsDigitadas + 1;
             NumeroNotaFiscalLote.Text := IntToStr(NumeroNfsDigitadas);
             TotalProd := 0;
             PageNotasFiscais.Enabled := True;
             PageControl.TabIndex := 1;
             PageNovos.Enabled := False;
             tblNofi.Insert;
             with tblNfda do
               begin
                 Close;
                 ParamByName('idNofi').AsInteger :=
                 DataSourceNofi.Dataset.FieldByName('Id_Nofi').AsInteger;
                 Open;
                 dbgrid1.Refresh;
                 DataSourceNfda.DataSet.Active := True;
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
             with tblNfda do
               begin
                 Close;
                 ParamByName('idNofi').AsInteger := idNofi;
                 Open;
                 dbgrid1.Refresh;
                 DataSourceNfda.DataSet.Active := True;
               end;
        NumeroProdutosDigitados := NumeroProdutosDigitados +1;
        ProdutoNumero.Text := IntToStr(NumeroProdutosDigitados);
      with tblVeiculos do
       begin
       Insert;
       FieldByName('Id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Status').AsString := BoxEmpresas.Cidade;
       FieldByName('Id_Fornecedor').AsInteger := StrToInt(CodigoFornecedor.Text);
       FieldByName('CHASSI').AsString := Chassi.Text;
       FieldByName('MARCA').AsString := Marca.Text;
       FieldByName('MODELO').AsString := Modelo.Text;
       FieldByName('COR').AsString := Cor.Text;
       FieldByName('COMBUSTIVEL').AsString := Combustivel.Text;
       FieldByName('Motor').AsString := Motor.text;
       FieldByName('Id_Modelo_Veiculo').AsInteger :=
         tblModelos.FieldByName('Id_ModVeic').AsInteger;
       FieldByName('ANO_MODELO').AsString := AnoModelo.Text;
       FieldByName('ANO_FABRICACAO').AsString := AnoFabricacao.Text;
       FieldByName('HP').AsString := Potencia.Text;
       FieldByName('RENAVAM').AsString := Renavam.Text;
       FieldByName('VENDA').AsString := 'N';
       FieldByName('CONSIG').AsString := 'N';
       FieldByName('ESTOQUE').AsString := BoxEmpresas.Cidade;
       FieldByName('ORIGEM').AsString := 'N';
       FieldByName('CST').AsString := tblModelos.FieldByName('CST').AsString;
       FieldByName('NOTA_ENT').AsString :=
        tblNofi.FieldByName('Numero').AsString;
       FieldByName('DATA_ENT').AsDateTime :=
        tblNofi.FieldByName('Emissao').AsDateTime;
       FieldByName('CUSTO').AsCurrency := StrToCurr(ValorUnitario.Text);
       FieldByName('CUSTO_ICMS').AsCurrency := StrToCurr(ValorUnitario.Text);
       FieldByName('PRECO').AsCurrency := StrToCurr(PrecoVenda.Text);
       Post;
      end;
     end;
  if ArqSalvar = 4 then
     begin
        FecharLote.Enabled := True;
        BtnFecharLote.Enabled := True;
        BtnFecharLote.SetFocus;
     end;
end;

procedure TBoxComprasNovos.BtnFecharLoteClick(Sender: TObject);
begin
  case MessageDlg('Confirma Fechamento do lote?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes: GravaLote;
    end
end;

procedure TBoxComprasNovos.BtnImportarClick(Sender: TObject);
begin
    if not Assigned(BoxComprasNovosImportacao) then
    BoxComprasNovosImportacao := TBoxComprasNovosImportacao.Create(Self);
  BoxComprasNovosImportacao.Show;

end;

procedure TBoxComprasNovos.GravaLote;
var
  i : integer;
begin
   with tblConhecimento do
     begin
        Open;
        Edit;
        FieldByName('Status').AsString := 'Fechado';
        Post;
     end;
   with tblNofi do
     begin
       Close;
       Open;
       Last;
       First;
       for i := 1 to RecordCount do
         begin
            Edit;
            FieldByName('Status').AsString := 'Fechado';
            Post;
            Next;
         end;
     end;
   BtnFecharLote.Enabled := False;
   FecharLote.Enabled := False;
   EnableDisableButtonsInicio();
   BtnCancelar.Enabled := False;
   Cancelar.Enabled := False;
   PageControl.TabIndex := 0;
   RadioGroup1.Setfocus;
end;

procedure TBoxComprasNovos.RadioGroup1Click(Sender: TObject);
begin
    DBValorMercadorias.Enabled := True;
    SpeedButton1.Enabled := True;
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

procedure TBoxComprasNovos.ModeloChange(Sender: TObject);
begin
   Chassi.SetFocus;
   DataSourceNfDa.Dataset.FieldByName('Combustivel').AsString :=
     DataSourceModelosVeiculos.Dataset.FieldByName('Combustivel').AsString;
   DataSourceNfda.Dataset.FieldByName('CST').AsString :=
     DataSourceModelosVeiculos.Dataset.FieldByName('CST').AsString;
   DataSourceNfDa.Dataset.FieldByName('MARCA').AsString :=
     DataSourceModelosVeiculos.DataSet.FieldByName('MARCA').AsString;
   DataSourceNfDa.Dataset.FieldByName('MODELO').AsString :=
     DataSourceModelosVeiculos.DataSet.FieldByName('MODELO').AsString;
   DataSourceNfDa.Dataset.FieldByName('POTENCIA').AsString :=
     DataSourceModelosVeiculos.DataSet.FieldByName('HP').AsString;
   DataSourceNfDa.Dataset.FieldByName('RENAVAM').AsString :=
     DataSourceModelosVeiculos.DataSet.FieldByName('RENAVAM').AsString;
end;

procedure TBoxComprasNovos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Transportadora','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Transportadora = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoTransportadora.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeTransportadora.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoTransportadora.SetFocus;
end;

procedure TBoxComprasNovos.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Fornecedor','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Razão Social:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Fornecedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoFornecedor.Text := tblPessoas.FieldByName('Id_Clientes').Text;
        NomeFornecedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoFornecedor.SetFocus;
end;

procedure TBoxComprasNovos.SpeedButton3Click(Sender: TObject);
begin
     Nf := STRtoINT(NotaFiscal.text);
     Retorno := Biblioteca.PesquisaGeral('Nota Fiscal','Nofi',
      ['Numero','Id_Nofi','Serie'],
      ['Número da NF:','Sequência:','Série NF:'],
      'Numero','Numero',Fdb1.SQLConnection1,'Status = ','Aberto','Ativo');
     with tblNofi do
     begin
       Close;
       Parambyname('idfornecedor').AsInteger := StrToInt(CodigoFornecedor.Text);
       ParamByName('idNotaFiscal').AsInteger := StrToInt(Retorno);
       Open;
       NotaFiscal.Text := Retorno;
       Edit;
     end;
     CFOP.SetFocus;
end;

procedure TBoxComprasNovos.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasNovos.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasNovos.BtnCancelarClick(Sender: TObject);
begin
  EnableDisableButtonsInicio();
  FDb1.IBTransaction.RollbackRetaining;
  BtnCancelar.Enabled := False;
  Cancelar.Enabled := False;
  Pagenovos.TabVisible := False;
  PageControl.TabIndex := 0;
  RadioGroup1.Setfocus;
end;

procedure TBoxComprasNovos.EnableDisableButtons(Value: Boolean; Value1 : Boolean);
begin
  { Habilita/desabilita os botões }
  BtnCancelar.Enabled := Value1;
  Cancelar.Enabled := Value1;
end;

procedure TBoxComprasNovos.EnableDisableCampos(Value: Boolean);
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

procedure TBoxComprasNovos.EnableDisableUsados(Value : Boolean);
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

procedure TBoxComprasNovos.EnableDisableButtonsInicio();{Value: Boolean);}
begin
  { Habilita/desabilita os botões }
  Pagenovos.Enabled := False;
  PageNotasFiscais.Enabled := False;
  BtnSalvar.Enabled := False;
  Salvar.Enabled := False;
  BtnCancelar.Enabled := False;
  Cancelar.Enabled := False;
  BtnFecharLote.Enabled := False;
  FecharLote.Enabled := False;
  PageControl.Enabled := True;
  PageControl.TabIndex := 0;
  PageConhecimento.Enabled := True;
  RadioGroup1.Enabled := True;
  RadioGroup1.SetFocus;
end;

procedure TBoxComprasNovos.EnableDisableControls(Value: Boolean);
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
end;

procedure TBoxComprasNovos.AbrirDS;
begin
  DataSourceNfda.Dataset.Open;
  DataSourceVeiculos.Dataset.Open;
  DataSourceNofi.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
  DataSourceModelosVeiculos.Dataset.Open;
  DataSourceConhecimento.Dataset.Open;
end;

procedure TBoxComprasNovos.FecharDs;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceNfda.Dataset.Close;
    DataSourceVeiculos.Dataset.Close;    
    DataSourceConhecimento.Dataset.Close;
    DataSourceModelosVeiculos.Dataset.Close;
    DataSourcePessoas.DataSet.Close;
end;

end.
