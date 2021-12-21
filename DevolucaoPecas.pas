unit Devolucaopecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ComCtrls, ExtCtrls, Buttons, StdCtrls, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, DBCtrls, IBQuery;

type
  TBoxDevolucaoPecas = class(TForm)
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
    tblPessoasNOME_VENDEDOR: TIBStringField;
    DataSourceClientes: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
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
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
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
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceSada: TDataSource;
    DataSourceSerieNF: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    DataSourceNofisaFaturas: TDataSource;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    BtnLocaliza: TBitBtn;
    Label7: TLabel;
    CodigoCliente: TJvDBMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    BtnConfirma: TBitBtn;
    Label3: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    tblPecas: TIBDataSet;
    DataSourcePecas: TDataSource;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    tblSadaID_PECAS: TIntegerField;
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
    NF: TEdit;
    tblNofisaESTADO: TIBStringField;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Label2: TLabel;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaNOME: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
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
    CheckBox1: TCheckBox;
    tblSadaPOTENCIA: TIBStringField;
    tblNofisaNFE_REFERENCIADA: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnLocalizaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
    procedure tblPedidoVeiculosAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure AbrirDs;
    procedure FecharDs;
    procedure GEraNFDevolucao;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    idNofisa : Integer;
    idNofisaAntigo : Integer;
    idNumeroNotaFiscal : Integer;
    idSada : Integer;
    CFOP1 : String;
    CFOP2 : String;
    DescricaoCodigoFiscal : String;
    NFeREFERENCIADA : String;
  end;

var
  Retorno : String;
  BoxDevolucaoPecas: TBoxDevolucaoPecas;

implementation

uses FDB, Empresas, Biblioteca;

{$R *.dfm}

procedure TBoxDevolucaoPecas.BtnConfirmaClick(Sender: TObject);
begin
  if idNofisaAntigo = 0 then
    showmessage('Selecione uma NF para fazer devolução.')
  else
    GEraNFDevolucao;
end;

procedure TBoxDevolucaoPecas.GeraNFDevolucao;
var
 idDataAntiga : String;
 idNumeroAntigo : String;
 CodigoFiscal : String;
 DescricaoFiscal : String;
begin
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
 try
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  {Criar dados da nova NF}
  with tblSada do
   begin
    Close;
    ParamByName('IdNofisa').AsInteger := IdNofisaAntigo;
    Open;
    while not eof do
     begin
     {Acrescer Estoque de peças}
      if CheckBox1.Checked then
      begin
      with tblPecasEstoque do
        begin
          tblPecasEstoque.Close;
          tblPecasEstoque.ParamByName('IdPecas').AsInteger := tblSada.FieldByName('id_pecas').AsInteger;
          tblPecasEstoque.ParamByName('idConcessionaria').AsInteger := tblSada.FieldByName('id_Concessionaria').AsInteger;
          tblPecasEstoque.Open;
          tblPecasEstoque.Edit;
          tblPecasEstoque.FieldByName('Estoque').AsInteger := tblPecasEstoque.FieldByName('Estoque').AsInteger +
            tblSada.FieldByName('Qtde').AsInteger;
          tblPecasEstoque.Post;
        end;
      with tblPecasMovimentacao do
        begin
          tblPecasMovimentacao.Insert;
          tblPecasMovimentacao.FieldByName('id_Concessionaria').AsInteger :=
             tblSada.FieldByName('id_Concessionaria').AsInteger;
          tblPecasMovimentacao.FieldByName('id_Pecas').AsInteger :=
             tblSada.FieldByName('id_Pecas').AsInteger;
          tblPecasMovimentacao.FieldByName('Movimento').AsString := 'E';
          tblPecasMovimentacao.FieldByName('Quantidade_Movimentada').AsInteger :=
             tblSada.FieldByName('qtde').AsInteger;
          tblPecasMovimentacao.FieldByName('Quantidade_Atual').AsInteger :=
             tblPecasEstoque.FieldByName('estoque').AsInteger;
          tblPecasMovimentacao.FieldByName('Data').AsDateTime := DataAtual;
          tblPecasMovimentacao.Post;
        end;
      end;
      begin
       {Pegar Sequence novo para produtos}
        IBQuery2.Open;
        IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
        IBQuery2.Close;
        DuplicaRegistro(tblSada);
        FieldByName('Id_nofisa').AsInteger := IdNofisa;
        FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
        FieldByName('id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        FieldByName('Id_Sada').AsInteger := idSada;
        if FieldByName('CFOP').AsString = '5102' then
          FieldByName('CFOP').AsString := '1202';
        if FieldByName('CFOP').AsString = '6102' then
          FieldByName('CFOP').AsString := '2202';
        if FieldByName('CFOP').AsString = '5405' then
          FieldByName('CFOP').AsString := '1411';
        if FieldByName('CFOP').AsString = '6404' then
          FieldByName('CFOP').AsString := '2411';
        if FieldByName('CFOP').AsString = '5656' then
          FieldByName('CFOP').AsString := '1662';
        if FieldByName('CFOP').AsString = '6656' then
          FieldByName('CFOP').AsString := '2662';

        FieldByName('NAT_OP').AsString := 'Devolução de mercadorias';
        DescricaoFiscal := 'Devolução de mercadorias';
        Post;
      end;
      tblSada.Next;
     end;
   end;
{Pegar codigo Fiscal}
   with tblSada do
     begin
       Close;
       ParamByName('idNofisa').AsInteger := IdNofisa;
       Open;
       first;
       CodigoFiscal := tblSadaCFOP.asString ;
       Next;
       while not eof do
        begin
         if POS(tblSadaCFOP.AsString, CodigoFiscal) = 0 then
          begin
           CodigoFiscal := CodigoFiscal + '/' + tblSadaCFOP.asString ;
          end;
          Next;
        end;
     end;

  {Gravar o Nofisa}
  with tblNofisa do
  begin
     idNofisaAntigo := FieldByName('Id_nofisa').AsInteger;
     idNumeroAntigo := FieldByName('Numero').AsString;
     idDataAntiga := FieldByName('Emissao').AsString;
     DuplicaRegistro(tblNofisa);
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('ENT_SAI').AsString := 'E';
     FieldByName('Dados_Ad01').AsString := 'Devolução de mercadorias ref.';
     FieldByName('Dados_Ad02').AsString := 'a nota fiscal eletrônica nº';
     FieldByName('Dados_Ad03').AsString := IdNumeroAntigo + ' do dia:';
     FieldByName('Dados_Ad04').AsString := idDataAntiga;//FieldByName('Emissao').AsString;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Chave').AsString := '';
     FieldByName('Recibo').AsString := '';
     FieldByName('Protocolo').AsString := '';
     FieldByName('Codigo_Fiscal').AsString := CodigoFiscal;
     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoFiscal;
     FieldByName('Arquivo').AsString := '';
     FieldByName('xml').AsString := '';
     FieldByName('Protocolo_Cancelamento').AsString := '';
     FieldByName('NFE_referenciada').AsString := NFeReferenciada;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     Post;
   end;

 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;
  showmessage('Dados gravados');
  idNofisaAntigo := 0;
  NF.Text := '';
  tblNofisa.Close;
end;

procedure TBoxDevolucaoPecas.BtnLocalizaClick(Sender: TObject);
begin
  idNofisa := 0;
  if NF.text <> '' then
  begin
    with tblNofisa do
    begin
      Close;
      ParamByName('idNumero').AsInteger := StrToInt(NF.Text);
      PAramByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
      if recordCount = 0 then
        begin
          Showmessage('NF não localizada.');
          NF.SetFocus;
        end
      else
        if FieldByName('Status').AsString = 'Cancelada' then
          begin
            Showmessage('Esta NF está cancelada.');
            NF.SetFocus;
          end
        else
          begin
            idNofisaAntigo := tblNofisa.FieldByName('id_nofisa').AsInteger;
            NFeREFERENCIADA := tblNofisa.FieldByName('CHAVE').AsString;
            BtnConfirma.SetFocus;
          end;
    end;
  end;
end;


procedure TBoxDevolucaoPecas.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Nota fiscal de peças','Nofisa',
      ['Numero','Id_Nofisa','Id_Clientes','Id_Concessionaria'],
      ['NF:','Sequência:','Cliente:','Concessionária:',''],
      'NF','Numero',Fdb1.SQLConnection1,'Status =','NF-e Autorizada','idconcessionaria');
     with tblNofisa do
     begin
        Close;
        Parambyname('idNumero').AsInteger := StrToInt(Retorno);
        ParamByName('idConcessionaria').asInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        Open;
        //Pedido.Text := tblPedidoVeiculos.FieldByName('Id_Nofisa').AsString;
        NF.Text := tblNofisa.FieldByName('NF').AsString;
     end;
end;

procedure TBoxDevolucaoPecas.tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxDevolucaoPecas.tblPedidoVeiculosAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxDevolucaoPecas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FEcharDs;
   Action :=caFree;
   BoxDevolucaoPecas := nil;
end;

procedure TBoxDevolucaoPecas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxDevolucaoPecas.FormShow(Sender: TObject);
begin
  AbrirDs;
end;

procedure TBoxDevolucaoPecas.FecharDs;
begin
   DataSourceClientes.Dataset.Close;
   DataSourcePecas.Dataset.Close;
   DataSourcePecasMovimentacao.Dataset.Close;
   DataSourcePecasEstoque.Dataset.Close;      
   DataSourceNofisa.Dataset.Close;
   DataSourceNofisaFaturas.Dataset.Close;
   DataSourceSada.Dataset.Close;
   DataSourceSerieNF.Dataset.Close;
end;

procedure TBoxDevolucaoPecas.AbrirDs;
begin
   DataSourceClientes.Dataset.Open;
   DataSourcePecas.Dataset.Open;
   DataSourcePecasMovimentacao.Dataset.Open;
   DataSourcePecasestoque.Dataset.Open;
   DataSourceNofisa.Dataset.Open;
   DataSourceNofisaFaturas.Dataset.Open;
   DataSourceSada.Dataset.Open;
   DataSourceSerieNF.Dataset.Open;
end;

end.
