unit OperacoesComprasPecasXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvErrorIndicator, JvValidators, JvComponentBase,
  Wwdbigrd, Wwdbgrid, ACBrNFe;

type
  TBoxComprasPecasXML = class(TForm)
    JvStatusBar1: TJvStatusBar;
    tblNofi: TIBDataSet;
    DataSourceNofi: TDataSource;
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
    Panel1: TPanel;
    Label5: TLabel;
    Chave: TMaskEdit;
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    tblNofiSelecionada: TStringField;
    BtnConfirmaChave: TBitBtn;
    BtnConsulta: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    tblNfDa: TIBDataSet;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaALIQ_ICMS: TIBBCDField;
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
    tblNfDaCST: TIBStringField;
    DataSourceNfda: TDataSource;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
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
    tblPecasDESCRICAO: TIBStringField;
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
    tblPecasCST: TIBStringField;
    DataSourcePecas: TDataSource;
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
    tblConhecimento: TIBDataSet;
    tblConhecimentoID_CONHECIMENTO: TIntegerField;
    tblConhecimentoID_CONCESSIONARIA: TIntegerField;
    tblConhecimentoNUMERO_CONHECIMENTO: TIBStringField;
    tblConhecimentoQTDE_NFS: TIBStringField;
    tblConhecimentoTRANSPORTADORA: TIBStringField;
    tblConhecimentoVALOR_FRETE: TIBBCDField;
    tblConhecimentoVALOR_MERCADORIAS: TIBBCDField;
    tblConhecimentoSTATUS: TIBStringField;
    DataSourceConhecimento: TDataSource;
    tblNfDaICMS_SUBST: TIBBCDField;
    tblNfDaID_PECA: TIntegerField;
    tblPecasCODIGO_SGS: TIntegerField;
    Label3: TLabel;
    Label6: TLabel;
    ValorFrete: TDBEdit;
    ValorMercadorias: TDBEdit;
    RadioGroup1: TRadioGroup;
    DBGrid1: TwwDBGrid;
    IBQuery1: TIBQuery;
    IBQuery1ID_CLIENTES: TIntegerField;
    IBQuery1CODIGO: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1ID_CONCESSIONARIA: TIntegerField;
    IBQuery1VENDEDOR_YNOVA: TIBStringField;
    IBQuery1IDENTIDADE: TIBStringField;
    IBQuery1CPF: TIBStringField;
    IBQuery1NUM_CPF: TIBStringField;
    IBQuery1NASCIMENTO: TDateField;
    IBQuery1PAI: TIBStringField;
    IBQuery1MAE: TIBStringField;
    IBQuery1ENDERECO: TIBStringField;
    IBQuery1BAIRRO: TIBStringField;
    IBQuery1CIDADE: TIBStringField;
    IBQuery1ESTADO: TIBStringField;
    IBQuery1CEP: TIBStringField;
    IBQuery1CADASTRO: TDateField;
    IBQuery1DESCONTO: TIBBCDField;
    IBQuery1FONE1: TIBStringField;
    IBQuery1FONE2: TIBStringField;
    IBQuery1FONE3: TIBStringField;
    IBQuery1COENDERECO: TIBStringField;
    IBQuery1COBAIRRO: TIBStringField;
    IBQuery1COCIDADE: TIBStringField;
    IBQuery1COESTADO: TIBStringField;
    IBQuery1COCEP: TIBStringField;
    IBQuery1SPC: TIBStringField;
    IBQuery1REG_SPC: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1CLIENTE: TIBStringField;
    IBQuery1FORNECEDOR: TIBStringField;
    IBQuery1TRANSPORTADORA: TIBStringField;
    IBQuery1FINANCEIRA: TIBStringField;
    IBQuery1MECANICO: TIBStringField;
    IBQuery1VENDEDOR: TIBStringField;
    IBQuery1CONTA: TIBStringField;
    IBQuery1COMISSAO: TIBBCDField;
    IBQuery1EMPRESA: TIBStringField;
    IBQuery1ADMISSAO: TDateField;
    IBQuery1SALARIO: TIBBCDField;
    IBQuery1EMPR_ENDERECO: TIBStringField;
    IBQuery1EMPR_BAIRRO: TIBStringField;
    IBQuery1EMPR_CIDADE: TIBStringField;
    IBQuery1EMPR_ESTADO: TIBStringField;
    IBQuery1EMPR_CEP: TIBStringField;
    IBQuery1EMPR_FONE: TIBStringField;
    IBQuery1REF_NOME1: TIBStringField;
    IBQuery1REF_FONE1: TIBStringField;
    IBQuery1REF_NOME2: TIBStringField;
    IBQuery1REF_FONE2: TIBStringField;
    IBQuery1REF_COML1: TIBStringField;
    IBQuery1REF_COML_FONE1: TIBStringField;
    IBQuery1REF_COML2: TIBStringField;
    IBQuery1REF_COML_FONE2: TIBStringField;
    IBQuery1REF_BANC: TIBStringField;
    IBQuery1REF_AG_BANC: TIBStringField;
    IBQuery1REF_CTA_BANC: TIBStringField;
    IBQuery1FOTO: TIBStringField;
    IBQuery1FABRICANTE: TIBStringField;
    IBQuery1CODIGO_MUNICIPIO: TIBStringField;
    IBQuery1NOME_VENDEDOR: TIBStringField;
    IBQuery1CODIGOSGS: TIntegerField;
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
    IBBCDField5: TIBBCDField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IntegerField4: TIntegerField;
    DataSourcePecas2: TDataSource;
    DBNavigator1: TJvDBNavigator;
    tblNofiBASE_ICMS: TFMTBCDField;
    tblNofiVAL_ICMS: TFMTBCDField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaVLR_FRETE: TFMTBCDField;
    tblNfDaVLR_SEGURO: TFMTBCDField;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RegistraRecebimento;
    procedure BtnConfirmaChaveClick(Sender: TObject);
    procedure tblNfDaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
     idFornecedor : Integer;
     idNofi : Integer;
    end;

var
  BoxComprasPecasXML: TBoxComprasPecasXML;
  Retorno : String;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasUsados, OperacoesComprasPecas,
  OperacoesComprasNovosImportacao;

{$R *.dfm}

procedure TBoxComprasPecasXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasPecasXML := nil;
end;

procedure TBoxComprasPecasXML.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComprasPecasXML.FormShow(Sender: TObject);
begin
  tblConhecimento.Open;
  Chave.SetFocus;
end;

procedure TBoxComprasPecasXML.BtnImportarClick(Sender: TObject);
begin
    if not Assigned(BoxComprasNovosImportacao) then
    BoxComprasNovosImportacao := TBoxComprasNovosImportacao.Create(Self);
  BoxComprasNovosImportacao.Show;
end;

procedure TBoxComprasPecasXML.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasPecasXML.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasPecasXML.tblNfDaBeforePost(DataSet: TDataSet);
var
  campo : String;
begin
  if not IBQuery1.FieldByName('Fabricante').AsBoolean then
    begin
      campo := DBGrid1.Fields[1].AsString;
//      showmessage(campo);
      with tblPecas2 do
       begin
         Close;
         ParamByName('idCodigo').AsString := Campo;
         Open;
         if RecordCount = 0 then
           begin
             tblNFda.Cancel;
             showmessage('Código de peça inexistente.');
           end
         else
           begin
             tblPecasEstoque.Close;
             tblPecasEstoque.ParamByName('idPecas').AsInteger := tblPecas2.FieldByName('id_pecas').AsInteger;
             tblPecasEstoque.ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             tblPecasEstoque.Open;
             if tblPecasEstoque.RecordCount <> 0 then
               tblNFda.FieldByName('id_peca').AsInteger := tblPecas2.FieldByName('id_pecas').AsInteger
             else
              begin
               Showmessage('Esta peça não existe nesta concessionária.');
               tblNFDa.Cancel;
              end;
         //    tblNFda.Post;
         //    tblNFda.Edit;
           end;

       end;
    end
  else
   begin
    tblNFDa.Cancel;
    Showmessage('Não é possível alterar dados desta NF.');
   end;

end;

procedure TBoxComprasPecasXML.BtnConfirmaChaveClick(Sender: TObject);
begin
 if RadioGroup1.ItemIndex < 0 then
  Showmessage('Escolha uma opção de conhecimento.')
 else
  if (RadioGroup1.ItemIndex = 0) and (tblConhecimento.FieldByName('Valor_Frete').AsInteger = 0) then
    Showmessage('Digite valor do frete.')
  else
  if (RadioGroup1.ItemIndex = 0) and (tblConhecimento.FieldByName('Valor_Mercadorias').AsInteger = 0) then
      Showmessage('Digite valor das mercadorias.')
    else
      RegistraRecebimento;
end;

procedure TBoxComprasPecasXML.BtnConsultaClick(Sender: TObject);
begin
  with tblNofi do
  begin
    Close;
    ParamByName('idChave').AsString := Chave.Text;
    Open;
    if recordCount = 0 then
      Showmessage('Nota fiscal não localizada.'+#13+
       'Importe o XML primeiro.')
    else
     if FieldByName('Status').AsString = 'Fechado' then
       Showmessage('Nota Fiscal já recebida.')
     else
      begin
       idNofi := FieldByName('id_Nofi').AsInteger;
       tblNFda.Close;
       tblNFDa.ParamByName('idNofi').AsInteger := idNofi;
       tblNFDa.Open;
       with IBQuery1 do
        begin
          Close;
          PAramByName('idClientes').AsInteger := tblNofi.FieldByName('ID_Clientes').AsInteger;
          Open;
          if IBQuery1.FieldByName('Fabricante').AsBoolean then
            DBNavigator1.Enabled := False
          else
            DBNavigator1.Enabled := True;
  //         begin
    //        DBGrid1.Fields[1].ReadOnly := False;
      //     end;
        end;
       tblConhecimento.Insert;
       ValorFrete.SetFocus;
      end;
  end;
end;

procedure TBoxComprasPecasXML.RegistraRecebimento;
var
 mEstoque : Extended;
 mICMS : Extended;
 mICMSSubst : Extended;
 mIPI : Extended;
 mFreteUnitario : Extended;
 mOutros : Extended;
 mFreteGeral : Extended;
begin
try
  with tblNofi do
  begin
    Close;
    ParamByName('idChave').AsString := Chave.Text;
    Open;
   if FieldByName('id_Concessionaria').AsInteger <> StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) then
     showmessage('Esta NF não é desta concessionária.')
   else
    if recordCount <> 0 then
     if FieldByName('Status').AsString = 'Fechado' then
      showmessage('Nota fiscal já recebida.')
     else
      begin
       idFornecedor := FieldByName('Id_Clientes').AsInteger;
       idNofi := FieldByName('id_Nofi').AsInteger;
       FDB1.AtualizaDataAtual;
       Edit;
       FieldByName('Status').AsString := 'Fechado';
       FieldByName('Saida').AsDateTime := DataAtual;
       Post;

       //ler os dados de DADOS_NFE, calcular o Custo médio e Gravar quantidades no Estoque
  With tblNFda do //dados da NF - pecas
    begin
      tblNFda.Close;
      tblNFDa.ParamByName('idNofi').AsInteger := idNofi;
      tblNFDa.Open;
      tblNFDa.First;
      while not tblNFDa.eof do
begin
      tblPecas.Close;
      tblPecas.ParamByName('idPecas').AsInteger := tblNFda.FieldByName('id_Peca').AsInteger;
      tblPecas.Open;
  with tblPecasEstoque do
     begin
       tblPecasEstoque.Close;
       tblPecasEstoque.ParamByName('idPecas').AsInteger := tblNFda.FieldByName('id_Peca').AsInteger;
       tblPecasEstoque.ParamByName('idConcessionaria').AsInteger :=
         tblNofi.FieldByName('id_Concessionaria').AsInteger;
       tblPecasEstoque.Open;
       tblPecasEstoque.Edit;
       mICMS := (tblNFda.FieldByName('Vlr_ICMS').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mICMSSubst := (tblNFda.FieldByName('ICMS_Subst').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mIPI := (tblNFda.FieldByName('Vlr_IPI').AsFloat/tblNFda.FieldByName('Qtde').AsFloat);
       mFreteUnitario := (tblNFda.FieldByName('Vlr_unit').AsFloat /
         tblNofi.FieldByName('Tot_Prod').AsFloat);
       mOutros :=  (tblNofi.FieldByName('Val_Frete').AsFloat + tblNofi.FieldByName('Val_Seguro').AsFloat +
         tblNofi.FieldByName('Val_Outros').AsFloat);//+ //valores de cada nota(frete,seguro e outros)
       mEstoque := FieldByName('Estoque').AsFloat;
       if mEstoque < 0 then
          mEstoque := 0;
      if (RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Sem conhecimento') or
         (tblConhecimento.FieldByName('Valor_frete').AsInteger = 0) then
           mFreteGeral := 0
      else
       mFreteGeral := (tblConhecimento.FieldByName('Valor_Frete').AsFloat /
         tblConhecimento.FieldByName('Valor_Mercadorias').AsFloat) *
         tblNFda.FieldByName('Vlr_unit').AsFloat;//Frete do conhecimento)}
       if tblPecasEstoque.RecordCount <> 0 then
         begin
          tblPecasEstoque.FieldByName('Ult_Compra').AsDateTime :=
            tblNofi.FieldByName('Emissao').AsDateTime;
          tblPecasEstoque.FieldByName('Fornecedor').AsInteger :=
            tblNofi.FieldByName('id_Clientes').AsInteger;
          if tblPecas.FieldByName('Subst_Trib').AsBoolean then
            tblPecasEstoque.FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat + mICMSSubst + mIPI +
              (mfreteunitario * mOutros) + mFreteGeral
          else
            tblPecasEstoque.FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat - mICMS + mIPI +
              (mfreteunitario * mOutros) + mFreteGeral;
          if Mestoque =  0 then
            tblPecasEstoque.FieldByName('Cst_medio').AsFloat := FieldBYName('Cst_atual').AsFloat
          else
            tblPecasEstoque.FieldByName('Cst_Medio').AsFloat :=
             ((tblPecasEstoque.FieldByName('Estoque').AsFloat * tblPecasEstoque.FieldByName('Cst_medio').AsFloat) + //valor total do estoque antigo
             (tblPecasEstoque.FieldByName('Cst_atual').AsFloat * tblNFda.FieldByName('Qtde').AsFloat)) / //valor total do estoque adquirido
             (mEstoque + tblNFda.FieldByName('Qtde').AsFloat);
            tblPecasEstoque.FieldByName('Estoque').AsFloat := tblPecasEstoque.FieldByName('Estoque').AsFloat +
            tblNFda.FieldByName('Qtde').AsFloat;
           tblPecasEstoque.Post;
         end
       else
         begin
          tblPecasEstoque.Insert;
          tblPecasEstoque.FieldByName('Id_Pecas').AsInteger :=
            tblNFda.FieldByName('id_peca').AsInteger;
          tblPecasEstoque.FieldByName('Id_Concessionaria').AsInteger :=
            tblNofi.FieldByName('id_Concessionaria').AsInteger;
          tblPecasEstoque.FieldByName('Estoqos').AsInteger := 0;
          tblPecasEstoque.FieldByName('Ult_Compra').AsDateTime :=
            tblNofi.FieldByName('Emissao').AsDateTime;
          tblPecasEstoque.FieldByName('Fornecedor').AsString :=
            tblNofi.FieldByName('id_Clientes').AsString;
          if tblPecas.FieldByName('Subst_Trib').AsBoolean then
            tblPecasEstoque.FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat + mICMSSubst + mIPI +
              (mFreteUnitario * mOutros) + mFreteGeral
          else
            tblPecasEstoque.FieldByName('Cst_Atual').AsFloat :=
              tblNFda.FieldByName('Vlr_unit').AsFloat - mICMS + mIPI +
              (mFreteUnitario * mOutros) + mFreteGeral;
          if mEstoque = 0 then
            tblPecasEstoque.FieldByName('Cst_medio').AsFloat := tblPecasEstoque.FieldByName('Cst_atual').AsFloat
          else
            tblPecasEstoque.FieldByName('Cst_Medio').AsFloat :=
             (tblPecasEstoque.FieldByName('Cst_atual').AsFloat * tblNFda.FieldByName('Qtde').AsFloat) / //valor total do estoque adquirido
             (tblNFda.FieldByName('Qtde').AsFloat);
            tblPecasEstoque.FieldByName('Estoque').AsInteger :=
             tblNFda.FieldByName('Qtde').AsInteger;
            tblPecasEstoque.Post;
         end;
     end;
     begin
       tblPecasMovimentacao.Open;
       tblPecasMovimentacao.Insert;
       tblPecasMovimentacao.FieldByName('Id_Concessionaria').AsInteger :=
         tblNofi.FieldByName('id_Concessionaria').AsInteger;
       tblPecasMovimentacao.FieldByName('Id_pecas').AsInteger :=
         tblNFda.FieldByName('id_peca').AsInteger;
       tblPecasMovimentacao.FieldByName('Movimento').AsString := 'E';
       tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsFloat :=
         tblNFda.FieldByName('Qtde').AsFloat;
       tblPecasMovimentacao.FieldByName('Quantidade_Atual').AsFloat :=
         tblPecasEstoque.FieldByName('Estoque').AsFloat;
       tblPecasMovimentacao.FieldByName('Custo_Medio').AsFloat :=
         tblPecasEstoque.FieldByName('Cst_Medio').AsFloat;
       tblPecasMovimentacao.FieldByName('Data').AsDateTime := DataAtual;
       tblPecasMovimentacao.FieldByName('Emissao').AsDateTime :=
         tblNofi.FieldByName('Emissao').AsDateTime;
       tblPecasMovimentacao.FieldByName('NF').AsString :=
         tblNofi.FieldByName('Numero').AsString;
       tblPecasMovimentacao.Post;
     end;
     if (DataSourceConhecimento.State in [dsEdit,DsInsert]) then
      begin
       tblConhecimento.FieldByName('Id_Concessionaria').AsInteger :=
         tblNofi.FieldByName('id_Concessionaria').AsInteger;
       tblConhecimento.Post;
      end;
     tblPecas.Close;
          tblNFDa.Next;
        end;
end;
       Showmessage('Recebimento com sucesso.');
      end
    else
      Showmessage('Nota fiscal não localizada.'+#13+
       'Importe o XML primeiro.');
  end;
except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
end;
  Chave.SetFocus;
end;

procedure TBoxComprasPecasXML.FecharDs;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceNfda.Dataset.Close;
    DataSourcePecas.Dataset.Close;
    DataSourcePecasEstoque.Dataset.Close;
    DataSourcePecasMovimentacao.Dataset.Close;
    DataSourceConhecimento.Dataset.Close;    
end;

end.
