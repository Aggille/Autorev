unit NFeCredDebEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons,
  DB, IBCustomDataSet, IBQuery, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls;

type
  TBoxNFeCredDebEstoque = class(TForm)
    Panel1: TPanel;
    Parcela: TEdit;
    StatusBar1: TStatusBar;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BaseCalculoICMS: TCurrencyEdit;
    ValorICMS: TCurrencyEdit;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaSAIDA: TDateField;
    tblNofisaHORA: TIBStringField;
    tblNofisaIE_SUBS: TIBStringField;
    tblNofisaDESC_PEC: TIBBCDField;
    tblNofisaDESC_OFI: TIBBCDField;
    tblNofisaBASE_ICMS: TIBBCDField;
    tblNofisaVAL_ICMS: TIBBCDField;
    tblNofisaBASE_ICM_S: TIBBCDField;
    tblNofisaVAL_ICMS_S: TIBBCDField;
    tblNofisaVAL_FRETE: TIBBCDField;
    tblNofisaVAL_SEGURO: TIBBCDField;
    tblNofisaVAL_OUTROS: TIBBCDField;
    tblNofisaVAL_IPI: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaISSQN: TIBBCDField;
    tblNofisaVAL_ISS: TIBBCDField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    tblNofisaPIS: TIBBCDField;
    tblNofisaCOFINS: TIBBCDField;
    tblNofisaCOD_TRANS: TIBStringField;
    tblNofisaFRETE_TIPO: TIBStringField;
    tblNofisaPLACA: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblSada: TIBDataSet;
    tblSadaID_SADA: TIntegerField;
    tblSadaID_NOFISA: TIntegerField;
    tblSadaID_CONCESSIONARIA: TIntegerField;
    tblSadaNF: TIBStringField;
    tblSadaCODIGO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
    tblSadaQTDE: TSmallintField;
    tblSadaUNIDADE: TIBStringField;
    tblSadaCST: TIBStringField;
    tblSadaSUBST: TIBStringField;
    tblSadaICMS: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblSadaPOTENCIA: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    DataSourceSada: TDataSource;
    DataSourceNofisa: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblPessoas: TIBDataSet;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    DataSourcePessoas: TDataSource;
    DataSourceNofisaFaturas: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    BtnConclui: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    CodigoCliente: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    NomeCliente: TJvDBMaskEdit;
    BtnGeraNFEntrada: TBitBtn;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure AbrirDs;
    procedure FecharDs;
    procedure BtnConcluiClick(Sender: TObject);
    procedure tblNofisaAfterCancel(DataSet: TDataSet);
    procedure tblNofisaAfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGeraNFEntradaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdNumeroNotaFiscal : Integer;
    IdSada : Integer;
    IDNofisa : Integer;
    IdCliente : Integer;
  end;

var
  BoxNFeCredDebEstoque: TBoxNFeCredDebEstoque;
  Retorno : String;

implementation

uses FDB, Empresas, Biblioteca;

{$R *.dfm}

procedure TBoxNFeCredDebEstoque.AbrirDs;
begin
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceSada.DataSet.Open;
  DataSourcePessoas.DataSet.Open;
end;

procedure TBoxNFeCredDebEstoque.BtnGeraNFEntradaClick(Sender: TObject);
begin
 {Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerieNF').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  IBQuery2.Open;
  IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
  IBQuery2.Close;
  with tblNofisa do
  begin
    Insert;
    FieldByName('id_Nofisa').AsInteger := IDNofisa;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('SerieNF').AsString := 'e';
    FieldByName('Emissao').AsDateTime := DataAtual;
    FieldByName('Origem').AsString := 'P';
    FieldByName('Ent_Sai').AsString := 'E';
    FieldByName('Base_ICMS').AsCurrency := BaseCalculoICMS.Value;
    FieldByName('Val_ICMS').AsCurrency := ValorICMS.Value;
    FieldByName('TOT_Nota').AsCurrency := BaseCalculoICMS.Value;
    FieldByName('Dados_Ad01').AsString := 'CREDITO FISCAL NOS TERMOS DO';
    FieldBYName('Dados_Ad02').AsString := 'RICMS LIVRO V ARTIGO 22';
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Codigo_Fiscal').AsString := '1949';
    FieldByName('Descricao_Codigo_fiscal').AsString := 'CRED.ICMS.SUBST.TRIB.';
    Post;
  end;
  With tblSada do
   begin
     Insert;
     FieldByName('id_Sada').AsInteger := IDSada;
     FieldByName('id_Nofisa').AsInteger := IDNofisa;
     FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Codigo').AsString := '01';
     FieldBYName('NF').AsInteger := IdNumeroNotaFiscal;
     FieldByName('Descricao').AsString := Parcela.Text +
     'ª PARC.DO CRED.DE IMPOSTO REL.AO ENUNCIADO DO ART.22.LIVRO V RICMS';
     FieldByName('Status').AsString := 'Aberto';
     FieldByName('CFOP').AsString := '1949';
     FieldByName('NAT_OP').AsString := 'CRED.ICMS.SUBST.TRIB.';
     FieldByName('Preco').AsCurrency := BaseCalculoICMS.Value;
     FieldByName('CST').AsString := '000';
     FieldByName('Aliq_ICMS').AsFloat := 0.17;
     FieldByName('ICMS').AsCurrency := ValorICMS.Value;
     FieldByName('Qtde').AsInteger := 1;
     FieldByName('Unidade').AsString := 'UN';
     Post;
   end;
end;

procedure TBoxNFeCredDebEstoque.BtnConcluiClick(Sender: TObject);
begin
 {Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerieNF').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  IBQuery2.Open;
  IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
  IBQuery2.Close;
  with tblNofisa do
  begin
    Insert;
    FieldByName('id_Nofisa').AsInteger := IDNofisa;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('SerieNF').AsString := 'e';
    FieldByName('Emissao').AsDateTime := DataAtual;
    FieldByName('Origem').AsString := 'P';
    FieldByName('Ent_Sai').AsString := 'S';
    FieldByName('Base_ICMS').AsCurrency := BaseCalculoICMS.Value;
    FieldByName('Val_ICMS').AsCurrency := ValorICMS.Value;
    FieldByName('TOT_Nota').AsCurrency := BaseCalculoICMS.Value;
    FieldByName('Dados_Ad01').AsString := 'IMPOSTO RELATIVO ÀS OPERAÇÕES';
    FieldBYName('Dados_Ad02').AsString := 'SUBSEQUENTES NOS TERMOS DO RICMS';
    FieldByName('Dados_Ad03').AsString := 'LIVRO V ARTIGO 17';
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Codigo_Fiscal').AsString := '5949';
    FieldByName('Descricao_Codigo_fiscal').AsString := 'DEB.ICMS.SUBST.TRIB.SOBRE ESTOQUE';
    Post;
  end;
  With tblSada do
   begin
     Insert;
     FieldByName('id_Sada').AsInteger := IDSada;
     FieldByName('id_Nofisa').AsInteger := IDNofisa;
     FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Codigo').AsString := '01';
     FieldBYName('NF').AsInteger := IdNumeroNotaFiscal;
     FieldByName('Descricao').AsString := Parcela.Text +
     'ª PARC.DO IMP.REL.ÀS OPER.SUBSEQ.ICMS SUBST.TRIB.AUTOPEÇAS';
     FieldByName('Status').AsString := 'Aberto';
     FieldByName('CFOP').AsString := '5949';
     FieldByName('NAT_OP').AsString := 'DEB.ICMS.SUBST.TRIB.SOBRE ESTOQUE';
     FieldByName('Preco').AsCurrency := BaseCalculoICMS.Value;
     FieldByName('CST').AsString := '000';
     FieldByName('Aliq_ICMS').AsFloat := 0.17;
     FieldByName('ICMS').AsCurrency := ValorICMS.Value;
     FieldByName('Qtde').AsInteger := 1;
     FieldByName('Unidade').AsString := 'UN';
     Post;
   end;
end;

procedure TBoxNFeCredDebEstoque.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
end;

procedure TBoxNFeCredDebEstoque.FecharDs;
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceSada.DataSet.Close;
  DataSourcePessoas.Dataset.Close;
  IBQuery1.Close;
  IBquery2.Close;
end;

procedure TBoxNFeCredDebEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxNFeCredDebEstoque.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxNFeCredDebEstoque.FormShow(Sender: TObject);
begin
  AbrirDs;
end;

procedure TBoxNFeCredDebEstoque.SpeedButton2Click(Sender: TObject);
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
     CodigoCliente.SetFocus;
end;

procedure TBoxNFeCredDebEstoque.tblNofisaAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxNFeCredDebEstoque.tblNofisaAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

end.
