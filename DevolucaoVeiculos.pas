unit DevolucaoVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ComCtrls, ExtCtrls, Buttons, StdCtrls, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, DBCtrls, IBQuery;

type
  TBoxDevolucaoVeiculos = class(TForm)
    DataSourcePedidoVeiculos: TDataSource;
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
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    DataSourceVeiculos: TDataSource;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
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
    o: TIntegerField;
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
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
    LabelPedido: TLabel;
    Pedido: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    BtnLocaliza: TBitBtn;
    Label7: TLabel;
    CodigoCliente: TJvDBMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    Label2: TLabel;
    ChassiVeiculo: TJvDBMaskEdit;
    BtnConfirma: TBitBtn;
    NF: TDBEdit;
    Label3: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosCOR: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_USUARIO: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosUSUARIO: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosNOME: TIBStringField;
    IBQuery3: TIBQuery;
    tblPedidoVeiculosESTADO: TIBStringField;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    DataSourceCreceber: TDataSource;
    tblSadaID_PECAS: TIntegerField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblPedidoVeiculosCILINDRADAS: TIntegerField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_MECANICO: TIntegerField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    tblNofisaNFE_REFERENCIADA: TIBStringField;
    tblNofisaNUMERO_NFSE: TIBStringField;
    tblNofisaCODIGO_NFSE: TIBStringField;
    tblNofisaARQ_XML_RPS: TIBStringField;
    tblNofisaARQ_XML_NFSE: TIBStringField;
    tblNofisaXML_NFSE: TWideMemoField;
    tblNofisaXML_RPS: TWideMemoField;
    tblSadaPOTENCIA: TIBStringField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    tblNofisaOBS: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblVeiculosDATA_RECEBIMENTO: TDateField;
    tblVeiculosNCM: TIBStringField;
    tblVeiculosCOM_AVARIA: TIBStringField;
    tblVeiculosCODIGO: TIBStringField;
    tblVeiculosVBC_STRET: TIBBCDField;
    tblVeiculosPST: TIBBCDField;
    tblVeiculosVICMS_STRET: TIBBCDField;
    tblVeiculosPRED_BCST: TIBBCDField;
    tblVeiculosVBC_ST: TIBBCDField;
    tblVeiculosPICMS_ST: TIBBCDField;
    tblVeiculosVICMS_ST: TIBBCDField;
    CheckBox1: TCheckBox;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
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
  BoxDevolucaoVeiculos: TBoxDevolucaoVeiculos;

implementation

uses FDB, Empresas, Biblioteca;

{$R *.dfm}

procedure TBoxDevolucaoVeiculos.BtnConfirmaClick(Sender: TObject);
var
 idDataAntiga : String;
 idNumeroAntigo : String;
 idConcessionaria : Integer;
begin
  idConcessionaria := tblPedidoveiculos.FieldByName('id_Concessionaria').AsInteger;
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger := idConcessionaria;//StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
 try
  IBQuery3.Close;
  IBQuery3.SQL.Clear;
  IBQuery3.Sql.Add('select * from Cfop');
  IBQuery3.SQL.Add('Where devolucao_Veiculo = '+''''+'T'+'''');
  IBQuery3.Open;
  Cfop1 := IBQuery3.FieldByName('CFOP1').AsString;
  Cfop2 := IBQuery3.FieldByName('CFOP2').AsString;
  DescricaoCodigoFiscal := IBQuery3.FieldByName('DESCRICAO').AsString;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  {Alterar o veiculos}
  if CheckBox1.Checked then
   begin

    with tblVeiculos do
    begin
      Close;
      ParamByName('Id').AsInteger := tblPedidoveiculos.FieldByName('id_veiculos').AsInteger;
      Open;
      Edit;
      FieldByName('id_clientes').AsInteger := 0;
      FieldByName('Status').AsString := FieldByName('Estoque').AsString;
      FieldByName('NF_Saida').AsString := '';
      Post;
    end;
   end;
  {Gravar o Nofisa}
  with tblNofisa do
  begin
     Close;
     ParamByName('idNumero').AsString :=
        tblPedidoVeiculos.FieldByName('NF').AsString;
     ParamByName('idConcessionaria').AsInteger := idConcessionaria;
    //    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     idNofisaAntigo := FieldByName('Id_nofisa').AsInteger;
     idNumeroAntigo := FieldByName('Numero').AsString;
     idDataAntiga := FieldByName('Emissao').AsString;
     NFeREFERENCIADA := tblNofisa.FieldByName('CHAVE').AsString;
     DuplicaRegistro(tblNofisa);
     if FieldByName('Base_ICms').AsFloat <> 0 then
      begin
       CFOP1 := '1202';
       CFOP2 := '2202';
      end;
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('id_Concessionaria').AsInteger := idConcessionaria;
//       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('ENT_SAI').AsString := 'E';
     FieldByName('Dados_Ad01').AsString := 'Devolução do veículo ref.';
     FieldByName('Dados_Ad02').AsString := 'a nota fiscal eletrônica nº';
     FieldByName('Dados_Ad03').AsString := IdNumeroAntigo + ' do dia:';
     FieldByName('Dados_Ad04').AsString := idDataAntiga;//FieldByName('Emissao').AsString;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Chave').AsString := '';
     FieldByName('Recibo').AsString := '';
     FieldByName('Protocolo').AsString := '';
     if tblPedidoVeiculos.FieldByName('Estado').AsString = 'RS' then
       FieldByName('Codigo_Fiscal').AsString := CFOP1
     else
       FieldByName('Codigo_Fiscal').AsString := CFOP2;
     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoCodigoFiscal;
     FieldByName('Arquivo').AsString := '';
     FieldByName('xml').AsString := '';
     FieldByName('Protocolo_Cancelamento').AsString := '';
     FieldByName('NFE_referenciada').AsString := NFeReferenciada;
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     Post;
   end;
    with tblSada do
   begin
    Close;
    ParamByName('IdNofisa').AsInteger := IdNofisaAntigo;
    Open;
    while not eof do
      begin
       {Pegar Sequence novo para produtos}
        IBQuery2.Open;
        IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
        IBQuery2.Close;

        DuplicaRegistro(tblSada);
        FieldByName('Id_nofisa').AsInteger := IdNofisa;
        FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
        FieldByName('id_Concessionaria').AsInteger := idConcessionaria;
        FieldByName('Id_Sada').AsInteger := idSada;
        FieldByName('Cilindradas').AsInteger := tblPedidoVeiculos.FieldByName('cilindradas').AsInteger;
        if tblPedidoVeiculos.FieldByName('Estado').AsString = 'RS' then
          FieldByName('CFOP').AsString := CFOP1
        else
          FieldByName('CFOP').AsString := CFOP2;
        FieldByName('NAT_OP').AsString := DescricaoCodigoFiscal;
        Post;
        Next;
      end;
   end;
  {Cancelar o pedido_veiculos}
   if CheckBox1.Checked then
    begin
     with tblPedidoVeiculos do
     begin
       Edit;
       FieldByName('Status').AsString := 'Cancelado';
       FieldByName('NF_Cancelamento').AsString := IntToStr(IdNumeroNotaFiscal);
       FieldByName('Data_NF_Cancelamento').AsDateTime := DataAtual;
       Post;
     end;
    {Cancelar o contas a receber}
     with tblCreceber do
      begin
        Close;
        ParamByName('idPedidoVeiculos').AsInteger := tblPedidoVeiculos.FieldByName('id_Pedido_Veiculos').AsInteger;
        Open;
        while not eof do
         begin
          if (FieldByName('Status').AsString = 'Pendente') or
             (FieldByName('Status').AsString = 'Processado') then
           begin
            Edit;
            FieldByName('Status').AsString := 'Cancelado';
            Post;
           end;
          Next;
         end;
        Close;
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
  showmessage('Dados gravados');
  Pedido.Text := '';
  tblPedidoVeiculos.Close;
//  tblPedidoveiculos.Open;
end;

procedure TBoxDevolucaoVeiculos.BtnLocalizaClick(Sender: TObject);
begin
  if pedido.text <> '' then
  begin
    with tblPedidoVeiculos do
    begin
      Close;
      ParamByName('idPedido').AsInteger := StrToInt(Pedido.Text);
      ParamByName('idConcessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);

      Open;
      if recordCount = 0 then
        begin
          Showmessage('Pedido não localizado.');
          Pedido.SetFocus;
        end
      else
        if FieldByName('Status').AsString = 'Cancelado' then
          begin
            Showmessage('Este pedido está cancelado.');
            Pedido.SetFocus;
          end
        else
          BtnConfirma.SetFocus;
    end;
  end;
end;


procedure TBoxDevolucaoVeiculos.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Pedido de veículos','Pedido_veiculos',
      ['Chassi','Id_Pedido_veiculos','Id_Cliente','Id_Concessionaria'],
      ['Chassi:','Sequência:','Cliente:','Concessionária:',''],
      'Chassi','Id_pedido_veiculos',Fdb1.SQLConnection1,'Status =','Faturado','idconcessionaria');
     with tblPedidoVeiculos do
     begin
        Close;
        Parambyname('idPedido').AsInteger := StrToInt(Retorno);
        Open;
        Pedido.Text := tblPedidoVeiculos.FieldByName('Id_Pedido_veiculos').AsString;
        NF.Text := tblPedidoVeiculos.FieldByName('NF').AsString;
     end;
end;

procedure TBoxDevolucaoVeiculos.tblPedidoVeiculosAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxDevolucaoVeiculos.tblPedidoVeiculosAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxDevolucaoVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FEcharDs;
   Action :=caFree;
   BoxDevolucaoVeiculos := nil;
end;

procedure TBoxDevolucaoVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxDevolucaoVeiculos.FormShow(Sender: TObject);
begin
  AbrirDs;
end;

procedure TBoxDevolucaoVeiculos.FecharDs;
begin
   DataSourceVeiculos.Dataset.Close;
   DataSourceClientes.Dataset.Close;
   DataSourcePedidoVeiculos.Dataset.Close;
   DataSourceNofisa.Dataset.Close;
   DataSourceNofisaFaturas.Dataset.Close;
   DataSourceSada.Dataset.Close;
   DataSourceSerieNF.Dataset.Close;
end;

procedure TBoxDevolucaoVeiculos.AbrirDs;
begin
   DataSourceVeiculos.Dataset.Open;
   DataSourceClientes.Dataset.Open;
   DataSourcePedidoVeiculos.Dataset.Open;
   DataSourceNofisa.Dataset.Open;
   DataSourceNofisaFaturas.Dataset.Open;
   DataSourceSada.Dataset.Open;
   DataSourceSerieNF.Dataset.Open;
end;

end.
