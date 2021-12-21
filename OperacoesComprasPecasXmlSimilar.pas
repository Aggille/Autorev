unit OperacoesComprasPecasXmlSimilar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvErrorIndicator, JvValidators, JvComponentBase,
  Wwdbigrd, Wwdbgrid, ACBrNFe, ACBrBase, ACBrDFe, Datasnap.Provider, pcnConversao, pcnConversaoNFe,
  Datasnap.DBClient, vcl.wwspeedbutton, vcl.wwdbnavigator, vcl.wwclearpanel,
  JvExDBGrids, JvDBGrid;

type
  TBoxComprasPecasXMLSimilar = class(TForm)
    JvStatusBar1: TJvStatusBar;
    tblNofi: TIBDataSet;
    DataSourceNofi: TDataSource;
    Panel1: TPanel;
    BtnConfirmaChave: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    tblNfDa: TIBDataSet;
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
    tblPecasCODIGO_SGS: TIntegerField;
    Label3: TLabel;
    Label6: TLabel;
    ValorFrete: TDBEdit;
    ValorMercadorias: TDBEdit;
    RadioGroup1: TRadioGroup;
    wwDBGrid1: TwwDBGrid;
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    BtnImporta: TBitBtn;
    IBQuery4: TIBQuery;
    Memo: TMemo;
    Label5: TLabel;
    IBQuery1: TIBQuery;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    DataSourcePessoas: TDataSource;
    IBQuery2: TIBQuery;
    DataSourceCPagar: TDataSource;
    tblCPagar: TIBDataSet;
    tblCPagarID_CPAGAR: TIntegerField;
    tblCPagarID_CONCESSIONARIA: TIntegerField;
    tblCPagarID_CLIENTES: TIntegerField;
    tblCPagarDOCUMENTO: TIBStringField;
    tblCPagarNFISCAL: TIBStringField;
    tblCPagarCONTA: TIBStringField;
    tblCPagarVENCIMENTO: TDateField;
    tblCPagarVALOR: TIBBCDField;
    tblCPagarEMISSAO: TDateField;
    tblCPagarPAGAMENTO: TDateField;
    tblCPagarVALOR_PAGO: TIBBCDField;
    tblCPagarBANCO: TIBStringField;
    tblCPagarSTATUS: TIBStringField;
    tblCPagarID_FORMA_PAGAMENTO: TIntegerField;
    tblCPagarHISTORICO: TIBStringField;
    tblNfDaID_DADOS_NFE: TIntegerField;
    tblNfDaID_CONCESSIONARIA: TIntegerField;
    tblNfDaNF: TIBStringField;
    tblNfDaITEM: TIBStringField;
    tblNfDaQTDE: TIntegerField;
    tblNfDaCST: TIBStringField;
    tblNfDaCFOP: TIntegerField;
    tblNfDaVLR_UNIT: TFMTBCDField;
    tblNfDaBASE_ICMS: TIBBCDField;
    tblNfDaALIQ_ICMS: TIBBCDField;
    tblNfDaVLR_ICMS: TIBBCDField;
    tblNfDaICMS_SUBST: TIBBCDField;
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
    tblNfDaID_PECA: TIntegerField;
    tblNfDaID_NOFI: TIntegerField;
    tblNfDaID_CONHECIMENTO: TIntegerField;
    tblNfDaVLR_FRETE: TFMTBCDField;
    tblNfDaVLR_SEGURO: TFMTBCDField;
    tblNfDaVBC_STRET: TIBBCDField;
    tblNfDaPST: TIBBCDField;
    tblNfDaVICMS_STRET: TIBBCDField;
    tblNfDaPMVAST: TIBBCDField;
    tblNfDaPRED_BCST: TIBBCDField;
    tblNfDaVBC_ST: TIBBCDField;
    tblNfDaPICMS_ST: TIBBCDField;
    tblNfDaVICMS_ST: TIBBCDField;
    tblNfDaCOD_ITEM_FORNEC: TIBStringField;
    DBEdit4: TDBEdit;
    tblNofi3: TIBDataSet;
    JvDBGrid1: TJvDBGrid;
    tblNofiFaturas: TIBDataSet;
    tblNofiFaturasID_NOFI_FATURAS: TIntegerField;
    tblNofiFaturasID_NOFI: TIntegerField;
    tblNofiFaturasFATURA: TIBStringField;
    tblNofiFaturasVENCIMENTO: TDateField;
    tblNofiFaturasVALOR: TIBBCDField;
    DataSourceNofiFaturas: TDataSource;
    IBQueryNofiFaturas: TIBQuery;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RegistraRecebimento;
    procedure BtnConfirmaChaveClick(Sender: TObject);
    procedure BtnImportaClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure tblNofiFaturasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
     idFornecedor : Integer;
     idNofi : Integer;
     idConcessionaria : Integer;

    end;

var
  BoxComprasPecasXMLSimilar: TBoxComprasPecasXMLSimilar;
  Retorno : String;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasUsados, OperacoesComprasPecas, eFuncoes,
  OperacoesComprasNovosImportacao;

{$R *.dfm}

procedure TBoxComprasPecasXMLSimilar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasPecasXMLSimilar := nil;
end;

procedure TBoxComprasPecasXMLSimilar.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxComprasPecasXMLSimilar.FormShow(Sender: TObject);
begin
  tblConhecimento.Open;
  BtnImporta.SetFocus;
end;

procedure TBoxComprasPecasXMLSimilar.BtnImportaClick(Sender: TObject);
var
  CNPJ : String;
  i : integer;
begin
  ACbrNfe1.NotasFiscais.Clear;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
  if OpenDialog1.Execute then
    ACbrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   with acbrnfe1 do
   begin
     memo.lines.clear;
     memo.lines.add( 'consultando...' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
     memo.lines.add( 'Estado de origem: ' + notasfiscais.items[0].nfe.Emit.EnderEmit.UF );
     memo.lines.add( 'Status: ' + InttoStr(acbrnfe1.notasfiscais.items[0].nfe.procNFe.cStat));//inttostr( webservices.consulta.cStat ));
     memo.lines.add( 'Situação: ' + acbrnfe1.notasfiscais.items[0].nfe.procNFe.xMotivo);
     memo.lines.add( 'Protocolo do xml ' + notasfiscais.Items[0].NFe.procNFe.nProt );
//Verificar se o destinatario do XML é a concessionaria logada. se não for localiza qual é fornece idconcessionaria
     if BoxEmpresas.CNPJ = NotasFiscais.Items[0].nfe.dest.CNPJCPF then
       idConcessionaria := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text)
     else
       begin
         IBQuery4.Close;
         IBQuery4.PAramByName('IdCNPJ').AsString := NotasFiscais.Items[0].nfe.dest.CNPJCPF;
         IBQuery4.Open;
         if IBQuery4.RecordCount = 0 then
           begin
            Showmessage('Concessionaria inexistente.');
            idConcessionaria := 0;
            abort;
           end
         else
           idConcessionaria := IBQuery4.FieldByName('Id_Concessionaria').AsInteger;
       end;


   end;
   try
   //   verificar nf dupla
   begin
      with tblNofi do
      begin
        Close;
        ParambyName('idChave').AsString := acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
        Open;
        if (RecordCount <> 0) and (FieldByName('Status').AsString = 'Fechado') then
         begin
          Showmessage('NF já lançada.');
          exit;
         end;
      end;
   end;

   case MessageDlg('Confirma NF para editar?', mtConfirmation, [mbYes,mbNo], 0) of
      mrYes :
       begin
        with AcbrNfe1 do
        begin
         //Procurar id do fornecedor e cadastrar ele se não existir.
         CNPJ := NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
         with tblPessoas do
         begin
           Close;
           ParamByName('idCNPJ').AsString := ColocaPontoseBarrasCNPJ(CNPJ);
           Open;
           if RecordCount = 0 then
            begin
               Showmessage('Fornecedor não cadastrado.'+#13+'Efetuando cadastro.');
               {Pega um sequence novo para o fornecedore}
               IBQuery2.Open;
               IdFornecedor := IBQuery2.FieldByName('id_Clientes').AsInteger;
               IBQuery2.Close;
               Insert;
               FieldByName('Id_Clientes').AsInteger := IdFornecedor;
               FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
               FieldByName('Nome').AsString :=
                 NotasFiscais.Items[0].NFe.Emit.xNome;
               FieldByName('CPF').AsString := 'CNPJ';
               FieldByName('Num_CPF').AsString := CNPJ;
               FieldByName('Endereco').AsString :=
                 NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr + NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;;
               FieldByName('bairro').AsString :=
                 NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
               FieldByName('Cidade').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
               FieldByName('Codigo_Municipio').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
               FieldByName('Estado').AsString := NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
               FieldByName('CEP').AsInteger := NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
               FieldByName('Fornecedor').AsString := 'T';
               FieldByName('Identidade').AsString := NotasFiscais.Items[0].NFe.Emit.IE;
               FieldByName('Pai').AsString := 'Não declarado';
               FieldByName('Mae').AsString := 'Não declarado';
               FieldByName('CoEndereco').AsString := FieldByName('Endereco').AsString;
               FieldByName('CoBairro').AsString := FieldByName('Bairro').AsString;
               FieldByName('CoCidade').AsString := FieldByName('Cidade').AsString;
               FieldByName('CoCEP').AsString := FieldByName('CEP').AsString;
               FieldByName('CoEstado').AsString := FieldByName('Estado').AsString;
               FDB1.AtualizaDataAtual;
               FieldByName('Cadastro').AsDateTime := DataAtual;
//               FieldByName('xml'
               Post;
            end
           else
             idFornecedor := FieldByName('Id_Clientes').AsInteger;
         end;
        with tblNofi do
         begin
           Open;
           Insert;
           {Pega um sequence novo para a NF}
           IBQuery1.Open;
           IdNofi := IBQuery1.FieldByName('id_nofi').AsInteger;
           IBQuery1.Close;
           FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
           FieldByName('id_Nofi').AsInteger := IdNofi;
           FieldByName('id_Clientes').AsInteger := IdFornecedor;
           FieldByName('id_conhecimento').AsInteger := 1;
           FieldByName('Numero').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
           FieldByName('Emissao').AsDateTime := NotasFiscais.Items[0].NFe.Ide.dEmi;
           FieldByName('Serie').AsInteger := NotasFiscais.Items[0].NFe.Ide.serie;
//           FieldByName('CFOP').AsString := NotasFiscais.Items[0].Nfe.Ide.
           FieldByName('Nat_Op').AsString := Substr(NotasFiscais.Items[0].NFe.Ide.natOp,1,40);
           FieldByName('Ent_Sai').AsString := 'E';
           FieldByName('Protocolo_Consulta').AsString := webservices.consulta.Protocolo;
           FieldByName('Protocolo').AsString := notasfiscais.Items[0].NFe.procNFe.nProt;
           FieldByName('XML').AsString := NotasFiscais.Items[0].xml;
           FieldByName('Chave').AsString := NotasFiscais.Items[0].NFe.procNFe.chNFe;
           FieldByName('Origem').AsString := 'P';
           FieldByName('Status').ASString := 'Aberto';
//           FieldByName('ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vICMS;
           FieldByName('BASE_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBC;
           FieldByName('VAL_ICMS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vICMS;
           FieldByName('BASE_ICM_S').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vBCST;
           FieldByName('VAL_ICMS_S').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vST;
           FieldByName('Frete_tipo').AsString := modFreteToStr(NotasFiscais.Items[0].Nfe.Transp.modFrete);
           FieldByName('VAL_FRETE').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vFrete;
           FieldByName('VAL_SEGURO').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vSeg;
           FieldByName('VAL_OUTROS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vOutro;
           FieldByName('VAL_IPI').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vIPI;
           FieldByName('TOT_PROD').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vProd;
           FieldByName('VAL_PIS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vPIS;
           FieldByName('VAL_COFINS').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vCOFINS;
           FieldByName('TOT_NOTA').AsCurrency := NotasFiscais.Items[0].Nfe.Total.ICMSTot.vNF;
           Post;
         end;
         with tblNofiFaturas do
         begin
           Open;
           for i := 0 to (NotasFiscais.Items[0].Nfe.Cobr.Dup.Count) -1 do
           begin
             //gravando Duplicatas da NFE
             Insert;
             FieldByName('Id_Nofi').AsInteger := IdNofi;
             FieldByName('Fatura').AsString := TRIM(tblNofi.FieldByName('Numero').AsString) + //IntToStr(StrToInt(NotasFiscais.Items[0].Nfe.Cobr.Fat.nFat)) +
                                               '-' + IntToStr(strToInt(NotasFiscais.Items[0].Nfe.Cobr.dup.Items[i].nDup));
             FieldByName('Vencimento').AsDateTime := NotasFiscais.Items[0].Nfe.Cobr.dup.Items[i].dVenc;
             FieldByName('valor').AsCurrency := NotasFiscais.Items[0].Nfe.Cobr.dup.Items[i].vDup;
             Post;
           end;
         end;
         with tblNFda do
         begin
          Open;
          for i := 0 to (NotasFiscais.Items[0].NFe.Det.Count)-1 do
            begin
             //Gravando dados na NFE
             Insert;
             FieldByName('Id_Concessionaria').AsInteger := idConcessionaria;
             FieldByName('Id_Conhecimento').AsInteger := 1;
             FieldByName('Id_Nofi').AsInteger := IdNofi;
//             FieldByName('id_peca').AsInteger := IdPecas;
             FieldByName('NF').AsInteger := NotasFiscais.Items[0].NFe.Ide.nNF;
             if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst10) or
                (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst30) or
                (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst60) then
                if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacional) then
                  FieldByName('CST').AsString := '060'
                else
                  FieldByName('CST').AsString := '260';
             if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST = cst00) then
                if (NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.orig = oeNacional) then
                  FieldByName('CST').AsString := '000'
                else
                  FieldByName('CST').AsString := '200';         ;
             FieldByName('vlr_frete').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vFrete;
             FieldByName('vlr_seguro').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.vSeg;
             FieldByName('COD_ITEM_FORNEC').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
             FieldByName('QTDE').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Prod.qCom;
             FieldByName('CFOP').AsString := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
             FieldByName('VLR_ICMS').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
             FieldByName('VLR_IPI').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
             FieldByName('VLR_UNIT').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
             FieldByName('Prod_numero').AsInteger := i + 1;
             FieldByName('ICMS_SUBST').AsCurrency := NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
                 //acrescido em função ICMS_ST em vigor 01/01/2019
                //Campos para atacado
            fieldByName('vBC_STRet').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vBCST;
            fieldByName('pST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pICMSST;
            fieldByName('vICMS_STRet').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.vICMSST;
              //Campos para consumidor final
            fieldByName('pRed_BCST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.pRedBCST;// este percentual deverá ser revisto cfe fiscalização definir
            FieldByName('pMVAST').AsCurrency := NotasFiscais.Items[0].Nfe.Det.Items[i].imposto.ICMS.pMVAST;

               Post;
            end;
            close;
            parambyname('idnofi').AsInteger := idNofi;
            Open;
         end;
        end;
        tblConhecimento.Insert;
        ValorFrete.SetFocus;
       end;
      mrNo :
       begin
        BtnImporta.SetFocus;
       end;
   end;
   finally
     //
   end;

end;

procedure TBoxComprasPecasXMLSimilar.BtnImportarClick(Sender: TObject);
begin
    if not Assigned(BoxComprasNovosImportacao) then
    BoxComprasNovosImportacao := TBoxComprasNovosImportacao.Create(Self);
  BoxComprasNovosImportacao.Show;
end;

procedure TBoxComprasPecasXMLSimilar.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasPecasXMLSimilar.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasPecasXMLSimilar.tblNofiFaturasAfterInsert(
  DataSet: TDataSet);
begin
    tblNofifaturas.FieldByName('Id_Nofi').AsInteger := IdNofi;
end;

procedure TBoxComprasPecasXMLSimilar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DataSourceNfDa.State = dsEdit then
     begin
       if wwDBGrid1.SelectedIndex = 1 then
        begin
         with tblPecas do
         begin
            SelectSQL.Text := 'select * from Pecas where codigo = :idCodigo';
            Close;
            ParamByName('idCodigo').AsString := tblNFDa.FieldByName('Item').AsString;
            Open;
            if recordCount = 0 then
              Showmessage('Este código não existe no cadastro.');
         end;
         tblNfDa.FieldByName('Id_peca').AsInteger := tblPecas.FieldByName('id_pecas').AsInteger;
        end;
       if wwDBGrid1.SelectedIndex = 6 then
        begin
         with tblPecas do
         begin
            SelectSQL.Text := 'select * from Pecas where id_pecas = :idPecas';
            Close;
            ParamByName('idPecas').AsString := tblNFDa.FieldByName('Id_Peca').AsString;
            Open;
            if recordCount = 0 then
              Showmessage('Este id não existe no cadastro.');
         end;
         tblNfDa.FieldByName('Item').AsString := tblPecas.FieldByName('Codigo').AsString;
        end;

       tblNFDa.Post;
     end
    else
      tblNFDa.Edit;
  end;
end;

procedure TBoxComprasPecasXMLSimilar.BtnConfirmaChaveClick(Sender: TObject);
var
 Registra : Boolean;
begin
 Registra := True;
 if RadioGroup1.ItemIndex < 0 then
  Showmessage('Escolha uma opção de conhecimento.')
 else
  if (RadioGroup1.ItemIndex = 0) and (tblConhecimento.FieldByName('Valor_Frete').AsInteger = 0) then
    Showmessage('Digite valor do frete.')
  else
  if (RadioGroup1.ItemIndex = 0) and (tblConhecimento.FieldByName('Valor_Mercadorias').AsInteger = 0) then
      Showmessage('Digite valor das mercadorias.')
    else
     begin
      with tblNFDa do
       begin
         First;
         while not eof do
         begin
           if fieldByName('id_peca').AsInteger > 0 then
             Next
           else
            begin
             Registra := False;
             Showmessage('Falta preencher código do produto.');
             Exit;
            end;
         end;
       end;
       with IBQueryNofiFaturas do
         begin
           Close;
           ParamByName('idNofi').AsInteger := IdNofi;
           Open;
           if FieldByName('Valor').AsCurrency <> tblNofi.FieldByName('Tot_Nota').AsCurrency then
             begin
              showmessage('O total das faturas não confere');
              abort;
             end
           else //gravar o CPAGAR
             begin
               with tblNofiFaturas do
                 begin
                  Close;
                  ParamByName('idNofi').AsInteger := IdNofi;
                  Open;
                  First;
                  while not tblNofiFaturas.eof do
                    begin
                       tblCPagar.Open;
                       tblCPagar.Insert;
                       tblCPagar.FieldByName('Id_Concessionaria').AsInteger :=
                         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
                       tblCPagar.FieldByName('Id_Clientes').AsInteger := tblNofi.FieldByName('Id_Clientes').AsInteger;
                       tblCPagar.FieldByName('Documento').AsString := FieldByName('Fatura').AsString;
                       tblCPagar.FieldByName('NFiscal').AsString := tblNofi.FieldByName('Numero').AsString;
                       tblCPagar.FieldByName('Id_Forma_Pagamento').AsInteger := 2;
                       tblCPagar.FieldByName('Vencimento').AsDateTime := FieldByName('Vencimento').AsDateTime;
                       tblCPagar.FieldByName('Valor').AsCurrency := FieldByName('Valor').AsCurrency;
                       tblCPagar.FieldByName('Emissao').AsDateTime := tblNofi.FieldByName('Emissao').AsDateTime;
                       tblCPagar.FieldByName('Historico').AsString := 'Compra peças ref.NF.' +
                         tblNofi.FieldByName('Numero').AsString;
                       tblCPagar.FieldByName('Status').AsString := 'Processado';
                       tblCPagar.Post;
                       tblNofiFaturas.Next;
                    end;
                 end;
             end;
         end;
       if Registra then
          RegistraRecebimento;
     end;
end;

procedure TBoxComprasPecasXMLSimilar.RegistraRecebimento;
var
 mEstoque : Extended;
 mICMS : Extended;
 mICMSSubst : Extended;
 mIPI : Extended;
 mFreteUnitario : Extended;
 mOutros : Extended;
 mFreteGeral : Extended;
 i : Integer;
begin
try
  with tblNofi do
  begin
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
      i := 0;
      while not tblNFDa.eof do
    begin
      tblPecas.SelectSQL.Text := 'select * from Pecas where id_pecas = :idPecas';
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
          i := i + 1;
          tblNFDa.Next;
    end;
   end;
       tblNofi.Edit;
       tblnofi.FieldByName('QTDE_PROD').Asinteger := i;
       tblNofi.Post;
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
  BtnImporta.SetFocus;
end;

procedure TBoxComprasPecasXMLSimilar.FecharDs;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceNfda.Dataset.Close;
    DataSourcePecas.Dataset.Close;
    DataSourcePecasEstoque.Dataset.Close;
    DataSourcePecasMovimentacao.Dataset.Close;
    DataSourceConhecimento.Dataset.Close;    
end;

end.
