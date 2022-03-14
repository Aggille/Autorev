unit Sped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, StdCtrls, Buttons, wwdbdatetimepicker,
  IBCustomDataSet, ActnList, ComCtrls, wwdblook, DBClient,ACBrSpedFiscal, ACBrUtil,
  ACBrEFDBlocos, ACBrTXTClass, Grids, Wwdbigrd, Wwdbgrid;

type
  TBoxSped = class(TForm)
    Label2: TLabel;
    edtDI: TwwDBDateTimePicker;
    Label3: TLabel;
    edtDF: TwwDBDateTimePicker;
    Label4: TLabel;
    edtNomeArq: TEdit;
    Label5: TLabel;
    edtPastaDestino: TEdit;
    Label11: TLabel;
    edtTipoArq: TComboBox;
    Label6: TLabel;
    edtPerfil: TComboBox;
    Label7: TLabel;
    edtTipoAtiv: TComboBox;
    ACBrSpedFiscal1: TACBrSPEDFiscal;
    ActionList1: TActionList;
    actGerar: TAction;
    actBloco_0: TAction;
    actBloco_C: TAction;
    actBloco_1: TAction;
    actBloco_9: TAction;
    actGeraDataNFCompra: TAction;
    qryNf: TIBDataSet;
    trnSped: TIBTransaction;
    qryNfID_NOFISA: TIntegerField;
    qryNfID_CONCESSIONARIA: TIntegerField;
    qryNfID_CLIENTES: TIntegerField;
    qryNfNUMERO: TIntegerField;
    qryNfSERIENF: TIBStringField;
    qryNfEMISSAO: TDateField;
    qryNfORIGEM: TIBStringField;
    qryNfENT_SAI: TIBStringField;
    qryNfVENDEDOR: TIntegerField;
    qryNfSAIDA: TDateField;
    qryNfHORA: TIBStringField;
    qryNfIE_SUBS: TIBStringField;
    qryNfDESC_PEC: TIBBCDField;
    qryNfDESC_OFI: TIBBCDField;
    qryNfBASE_ICMS: TIBBCDField;
    qryNfVAL_ICMS: TIBBCDField;
    qryNfBASE_ICM_S: TIBBCDField;
    qryNfVAL_ICMS_S: TIBBCDField;
    qryNfVAL_FRETE: TIBBCDField;
    qryNfVAL_SEGURO: TIBBCDField;
    qryNfVAL_OUTROS: TIBBCDField;
    qryNfVAL_IPI: TIBBCDField;
    qryNfVAL_SERV: TIBBCDField;
    qryNfISSQN: TIBBCDField;
    qryNfVAL_ISS: TIBBCDField;
    qryNfTOT_PROD: TIBBCDField;
    qryNfTOT_NOTA: TIBBCDField;
    qryNfPIS: TIBBCDField;
    qryNfCOFINS: TIBBCDField;
    qryNfCOD_TRANS: TIBStringField;
    qryNfFRETE_TIPO: TIBStringField;
    qryNfPLACA: TIBStringField;
    qryNfDADOS_AD01: TIBStringField;
    qryNfDADOS_AD02: TIBStringField;
    qryNfDADOS_AD03: TIBStringField;
    qryNfDADOS_AD04: TIBStringField;
    qryNfOBS: TIBStringField;
    qryNfQTDE_PROD: TIntegerField;
    qryNfSTATUS: TIBStringField;
    qryNfCODIGO_FISCAL: TIBStringField;
    qryNfDESCRICAO_CODIGO_FISCAL: TIBStringField;
    qryNfFORMA_PAGAMENTO: TIBStringField;
    qryNfCHAVE: TIBStringField;
    qryNfRECIBO: TIBStringField;
    qryNfPROTOCOLO: TIBStringField;
    qryNfARQUIVO: TIBStringField;
    qryNfXML: TBlobField;
    StatusBar1: TStatusBar;
    qryFilial: TIBDataSet;
    qryFilialID_CONCESSIONARIA: TIntegerField;
    qryFilialEMPRESA: TIBStringField;
    qryFilialENDERECO: TIBStringField;
    qryFilialCIDADE: TIBStringField;
    qryFilialESTADO: TIBStringField;
    qryFilialCNPJ: TIBStringField;
    qryFilialIE: TIBStringField;
    qryFilialCONCESSION: TIBStringField;
    qryFilialTELEFONE: TIBStringField;
    qryFilialCOD_CONCES: TIBStringField;
    qryFilialALIQUOTA_ISS: TIBBCDField;
    qryFilialALIQUOTA_ICMS1: TIBBCDField;
    qryFilialALIQUOTA_ICMS2: TIBBCDField;
    qryFilialCODIGO_EMPRESA_JB: TIBStringField;
    dtsFilial: TDataSource;
    tblClientes: TIBDataSet;
    tblUnidades: TIBDataSet;
    tblUnidadesUNIDADE: TIBStringField;
    tblUnidadesTOTAL: TIntegerField;
    tblPecas: TIBDataSet;
    dtsNf: TDataSource;
    dtsItemNf: TDataSource;
    qryItemNf: TIBDataSet;
    qryItemNfID_SADA: TIntegerField;
    qryItemNfID_NOFISA: TIntegerField;
    qryItemNfID_CONCESSIONARIA: TIntegerField;
    qryItemNfNF: TIBStringField;
    qryItemNfCODIGO: TIBStringField;
    qryItemNfDESCRICAO: TIBStringField;
    qryItemNfQTDE: TSmallintField;
    qryItemNfUNIDADE: TIBStringField;
    qryItemNfCST: TIBStringField;
    qryItemNfSUBST: TIBStringField;
    qryItemNfALIQ_ICMS: TIBBCDField;
    qryItemNfICMS: TIBBCDField;
    qryItemNfCUSTO: TIBBCDField;
    qryItemNfPRECO: TIBBCDField;
    qryItemNfCFOP: TIBStringField;
    qryItemNfNAT_OP: TIBStringField;
    qryItemNfST_COFINS: TIBStringField;
    qryItemNfANO_MODELO: TIBStringField;
    qryItemNfANO_FABRICACAO: TIBStringField;
    qryItemNfRENAVAM: TIBStringField;
    qryItemNfPOTENCIA: TIBStringField;
    qryItemNfCOR: TIBStringField;
    qryItemNfCOMBUSTIVEL: TIBStringField;
    qryItemNfPLACA: TIBStringField;
    qryItemNfMOTOR: TIBStringField;
    qryItemNfCHASSI: TIBStringField;
    qryItemNfMARCA: TIBStringField;
    qryItemNfMODELO: TIBStringField;
    qryItemNfSTATUS: TIBStringField;
    qryDupl: TIBDataSet;
    dtsDupl: TDataSource;
    qryDuplID_NOFISA_FATURAS: TIntegerField;
    qryDuplID_NOFISA: TIntegerField;
    qryDuplFATURA: TIBStringField;
    qryDuplVENCIMENTO: TDateField;
    qryDuplVALOR: TIBBCDField;
    qryDuplID_FORMAS_PAGAMENTO: TIntegerField;
    tblVeiculos: TIBDataSet;
    qryTotItem: TIBDataSet;
    dtsTotItem: TDataSource;
    qryTotItemBASE_ICMS: TIBBCDField;
    qryTotItemICMS: TIBBCDField;
    qryTotItemTOTAL: TIBBCDField;
    qryTotItemALIQ_ICMS: TIBBCDField;
    qryTotItemCST: TIBStringField;
    qryTotItemCFOP: TIBStringField;
    qryServicosNf: TIBDataSet;
    dtsServicosNf: TDataSource;
    qryServicosNfID_SEDA: TIntegerField;
    qryServicosNfID_CONCESSIONARIA: TIntegerField;
    qryServicosNfID_NOFI: TIntegerField;
    qryServicosNfNF: TIBStringField;
    qryServicosNfID_TMO: TIntegerField;
    qryServicosNfDESCRICAO_SERVICO: TIBStringField;
    qryServicosNfTEMPO: TIBBCDField;
    qryServicosNfPRECO: TIBBCDField;
    dtsTotServicosNf: TDataSource;
    qryTotServicosNf: TIBDataSet;
    qryTotServicosNfTOTAL: TIBBCDField;
    tblAux190: TClientDataSet;
    tblAux190CST: TStringField;
    tblAux190CFOP: TStringField;
    tblAux190ALIQ_ICMS: TFloatField;
    tblAux190TOTAL: TCurrencyField;
    tblAux190BASE_ICMS: TCurrencyField;
    tblAux190ICMS: TCurrencyField;
    progresso: TProgressBar;
    tblClientesNOME: TIBStringField;
    tblClientesID_CLIENTES: TIntegerField;
    tblClientesNUM_CPF: TIBStringField;
    tblClientesCODIGO_MUNICIPIO: TIBStringField;
    tblClientesENDERECO: TIBStringField;
    tblClientesBAIRRO: TIBStringField;
    tblClientesESTADO: TIBStringField;
    tblClientesCPF: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasCODIGO: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosNCM: TIBStringField;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    qryNfe: TIBDataSet;
    dtsNfe: TDataSource;
    qryNfeID_NOFI: TIntegerField;
    qryNfeID_CONCESSIONARIA: TIntegerField;
    qryNfeID_CLIENTES: TIntegerField;
    qryNfeID_CONHECIMENTO: TIntegerField;
    qryNfeNUMERO: TIBStringField;
    qryNfeSERIE: TIBStringField;
    qryNfeEMISSAO: TDateField;
    qryNfeCODIGO: TIBStringField;
    qryNfeORIGEM: TIBStringField;
    qryNfeENT_SAI: TIBStringField;
    qryNfeVENDEDOR: TIBStringField;
    qryNfeCOMISSAO: TIBBCDField;
    qryNfeSAIDA: TDateField;
    qryNfeHORA: TIBStringField;
    qryNfeCFOP: TIBStringField;
    qryNfeNAT_OP: TIBStringField;
    qryNfeIE_SUBS: TIBStringField;
    qryNfeDESC_PEC: TIBBCDField;
    qryNfeDESC_OFI: TIBBCDField;
    qryNfeICMS: TIBBCDField;
    qryNfeBASE_ICM_S: TIBBCDField;
    qryNfeVAL_ICMS_S: TIBBCDField;
    qryNfeVAL_FRETE: TIBBCDField;
    qryNfeVAL_SEGURO: TIBBCDField;
    qryNfeVAL_OUTROS: TIBBCDField;
    qryNfeVAL_IPI: TIBBCDField;
    qryNfeVAL_SERV: TIBBCDField;
    qryNfeISSQN: TIBBCDField;
    qryNfeVAL_ISS: TIBBCDField;
    qryNfeTOT_PROD: TIBBCDField;
    qryNfeTOT_NOTA: TIBBCDField;
    qryNfePIS: TIBBCDField;
    qryNfeCOFINS: TIBBCDField;
    qryNfeCOD_TRANS: TIBStringField;
    qryNfeFRETE_TIPO: TIBStringField;
    qryNfePLACA: TIBStringField;
    qryNfeDADOS_AD01: TIBStringField;
    qryNfeDADOS_AD02: TIBStringField;
    qryNfeDADOS_AD03: TIBStringField;
    qryNfeDADOS_AD04: TIBStringField;
    qryNfeOBS: TIBStringField;
    qryNfeQTDE_PROD: TIntegerField;
    qryNfeSTATUS: TIBStringField;
    qryNfeVAL_PIS: TIBBCDField;
    qryNfeVAL_COFINS: TIBBCDField;
    qryNfeCHAVE: TIBStringField;
    qryNfeRECIBO: TIBStringField;
    qryNfePROTOCOLO: TIBStringField;
    qryNfeARQUIVO: TIBStringField;
    qryNfeXML: TBlobField;
    qryNfePROTOCOLO_CONSULTA: TIBStringField;
    qryItemNfe: TIBDataSet;
    dtsiItemNfe: TDataSource;
    qryItemNfeID_DADOS_NFE: TIntegerField;
    qryItemNfeID_CONCESSIONARIA: TIntegerField;
    qryItemNfeNF: TIBStringField;
    qryItemNfeITEM: TIBStringField;
    qryItemNfeQTDE: TIntegerField;
    qryItemNfeCST: TIBStringField;
    qryItemNfeCFOP: TIntegerField;
    qryItemNfeBASE_ICMS: TIBBCDField;
    qryItemNfeALIQ_ICMS: TIBBCDField;
    qryItemNfeVLR_ICMS: TIBBCDField;
    qryItemNfeICMS_SUBST: TIBBCDField;
    qryItemNfeVLR_IPI: TIBBCDField;
    qryItemNfeMODELO: TIBStringField;
    qryItemNfeANO_FABRICACAO: TIBStringField;
    qryItemNfeANO_MODELO: TIBStringField;
    qryItemNfeCOR: TIBStringField;
    qryItemNfeMOTOR: TIBStringField;
    qryItemNfeCOMBUSTIVEL: TIBStringField;
    qryItemNfeMARCA: TIBStringField;
    qryItemNfePOTENCIA: TIBStringField;
    qryItemNfeRENAVAM: TIBStringField;
    qryItemNfePROD_NUMERO: TIntegerField;
    qryItemNfeID_PECA: TIntegerField;
    qryItemNfeID_NOFI: TIntegerField;
    qryItemNfeID_CONHECIMENTO: TIntegerField;
    qryTotItemE: TIBDataSet;
    dtsTotItemE: TDataSource;
    qryTotItemEALIQ_ICMS: TIBBCDField;
    qryTotItemECST: TIBStringField;
    qryTotItemECFOP: TIntegerField;
    tblForne: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    tblVeiculosE: TIBDataSet;
    tblPecasE: TIBDataSet;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    tblVeiculosEMARCA: TIBStringField;
    tblVeiculosEMODELO: TIBStringField;
    tblVeiculosECOR: TIBStringField;
    tblVeiculosECOMBUSTIVEL: TIBStringField;
    tblVeiculosEANO_MODELO: TIBStringField;
    tblVeiculosEANO_FABRICACAO: TIBStringField;
    tblVeiculosECHASSI: TIBStringField;
    tblVeiculosENCM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosECLASSIF_FISCAL: TIBStringField;
    tblAux190BASE_ICMS_ST: TCurrencyField;
    tblAux190ICMS_ST: TCurrencyField;
    btnFechar_p: TBitBtn;
    btnGerar_p: TSpeedButton;
    tblClientesNUMERO: TIBStringField;
    tblClientesCOMPLEMENTO: TIBStringField;
    tblForneNUMERO: TIBStringField;
    tblForneCOMPLEMENTO: TIBStringField;
    qryFilialIM: TIBStringField;
    qryFilialCNAE: TIBStringField;
    qryFilialFANTASIA: TIBStringField;
    qryFilialCEP: TIBStringField;
    qryFilialNUMERO: TIBStringField;
    qryFilialCOMPLEMENTO: TIBStringField;
    qryFilialCODIGO_MUNICIPIO: TIBStringField;
    qryFilialBAIRRO: TIBStringField;
    qryFilialHOST: TIBStringField;
    qryFilialPORT: TIBStringField;
    qryFilialUSUARIO: TIBStringField;
    qryFilialPASS: TIBStringField;
    qryFilialCERTIFICADO: TIBStringField;
    qryFilialLOGO: TIBStringField;
    qryFilialDIVIDIR_NF_GARANTIA: TIBStringField;
    qryFilialID_BANCO_CONCESSIONARIA: TIntegerField;
    tblClientesIDENTIDADE: TIBStringField;
    qryItemNfeCST1: TIBStringField;
    qryItemNfBASE_ICMS: TIBBCDField;
    qryItemNfDESCONTO: TIBBCDField;
    qryItemNfID_PECAS: TIntegerField;
    qryItemNfNCM: TIBStringField;
    qryItemNfCILINDRADAS: TIntegerField;
    qryItemNfCOD_PROC: TIBStringField;
    qryItemNfST_COFINS1: TIBStringField;
    qryItemNfSUBST_TRIB: TIBStringField;
    qryItemNfeST_COFINS: TIBStringField;
    tblCodigoConta: TIBDataSet;
    IBStringField8: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField20: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IntegerField3: TIntegerField;
    tblAux190VLR_IPI: TCurrencyField;
    tblForneIDENTIDADE: TIBStringField;
    qryItemNfeVLR_UNIT: TFMTBCDField;
    qryTotItemEBASE_ICMS: TFMTBCDField;
    qryNfeBASE_ICMS: TFMTBCDField;
    qryNfeVAL_ICMS: TFMTBCDField;
    qryTotItemEICMS: TFMTBCDField;
    qryTotItemETOTAL: TFMTBCDField;
    qryItemNfeVLR_FRETE: TFMTBCDField;
    qryItemNfeVLR_SEGURO: TFMTBCDField;
    procedure btnFechar_PClick(Sender: TObject);
    procedure btnGerar_PClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actBloco_0Execute(Sender: TObject);
    function limpa( c:String ):String;
    procedure actBloco_CExecute(Sender: TObject);
    procedure actBloco_1Execute(Sender: TObject);
    procedure actBloco_9Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDFExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSped: TBoxSped;

implementation

uses FDB, Biblioteca;

{$R *.dfm}

procedure TBoxSped.actBloco_0Execute(Sender: TObject);
var
t:Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.

   BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0000...';

   with ACBrSpedFiscal1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin

         if BoxSPED.edtDI.Date < StrToDate('01/01/2011') then
            COD_VER  := vlVersao102
         else
            COD_VER  := vlVersao103;

         DT_INI      := BoxSPED.edtDI.Date;
         DT_FIN      := BoxSPED.edtDF.Date;

         case BoxSPED.edtTipoArq.ItemIndex of
          0 : COD_FIN := raOriginal;
          1 : COD_FIN := raSubstituto;
         end;

         NOME        := trim( qryFilial.FieldByName('Empresa').asString );
         CNPJ        := Limpa( qryFilial.FieldByName('CNPJ').asString );
         CPF         := '';
         UF          := trim( qryFilial.FieldByName('ESTADO').asString ) ;
         IE          := Limpa( qryFilial.FieldByName('IE').asString );
         COD_MUN     := qryFilial.FieldByName('Codigo_Municipio').AsInteger;//4313409; // SUBSTITUIR PELO CODIGO DO IBGE NO CADASTRO
         IM          := trim( qryFilial.FieldByName('IM').asString );//'12345'; //INSCRICAO MUNICAL . COLOCAR NO CADASTRO
         SUFRAMA     := '';

         case BoxSPED.edtPerfil.ItemIndex of
         0 : IND_PERFIL := pfPerfilA;
         1 : IND_PERFIL := pfPerfilB;
         2 : IND_PERFIL := pfPerfilC;
         end;

         case BoxSPED.edtTipoAtiv.ItemIndex of
         0 : IND_ATIV   := atIndustrial;
         1 : IND_ATIV   := atOutros;
         end;
      end;

      BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0001...';

      with Registro0001New do
      begin
         IND_MOV := imComDados;

         // FILHO - Dados complementares da Empresa

         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0005...';

         with Registro0005New do
         begin
            FANTASIA   := trim( qryFilial.FieldByName('Empresa').asString );
            CEP        := trim( qryFilial.FieldByName('CEP').asString );//'00000000';                                   // COLOCAR O CEP
            ENDERECO   := trim( qryFilial.FieldByName('Endereco').asString );
            NUM        := trim( qryFilial.FieldByName('Numero').asString );//'99999' ;                                     // COLOCAR NUMERO DO LOGRADOURO
            COMPL      := trim( qryFilial.FieldByName('Complemento').asString );//'';                                           // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := trim( qryFilial.FieldByName('Bairro').asString );//'Bairro';                                     // BAIRRO
            FONE       := trim( qryFilial.FieldByName('Telefone').asString );//'';                            // TELEFONE
            FAX        := '';                                           // FAX
            EMAIL      := '';                                           // EMAIL
         end;

         // FILHO - Dados do contador.
         BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0100...';

         with Registro0100New do
         begin
            // DADOS DO CONTADOR A SEREM COLOCADOS NA TABELA DE CONFIGURAÇÃO

            NOME       := '';  // NOME DO CONTADOR
            CPF        := ''; // CPF DO CONTADOR
            CRC        := ''; // CRC DO CONTADOR
            CNPJ       := ''; // CNPJ
            CEP        := ''; // CEP
            ENDERECO   := ''; // ENDEREÇO
            NUM        := ''; // NUMERO DO ENDEREÇO
            COMPL      := ''; // COMPLEMENTO DO ENDEREÇO
            BAIRRO     := ''; // BAIRRO
            FONE       := ''; // TELEFONE
            FAX        := ''; // FAX
            EMAIL      := ''; // EMAIL
            COD_MUN    := 4313409; // CODIGO DO IBGE
         end;

         BoxSPED.StatusBar1.SimpleText := 'Gerando dados registro 0150... (Clientes)';

         tblClientes.Last;
         t := tblClientes.Recno;
         tblClientes.First;
         progresso.Max := t;

         while not tblClientes.eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0150... ' + tblClientes.fieldbyname( 'Nome' ).asString;
            progresso.Position := tblClientes.Recno;
            application.ProcessMessages();

             // Clientes e fornecedores
            with Registro0150New do
            begin
               COD_PART := trim( 'C' + tblClientes.fieldbyname( 'id_clientes' ).asString );
               NOME     := trim( tblClientes.fieldbyname( 'nome' ).asString );
               COD_PAIS := '1058';
               if trim( tblClientes.fieldbyname('cpf').asString ) = 'CNPJ' then
                  CNPJ     := trim( Limpa( tblClientes.fieldbyname( 'num_cpf' ).asString ))
               else
                  CPF      := trim( Limpa( tblClientes.fieldbyname( 'num_cpf' ).asString ));

               if (trim( tblClientes.fieldbyname('cpf').asString ) = 'CNPJ') and
                  (trim( tblClientes.fieldbyname('identidade').asString ) <> '')   then
                   IE       := trim( tblClientes.fieldbyname('identidade').AsString );//'';//'ISENTO';  // INSCRICAO ESTADUAL DO CLIENTE
//               if trim( tblClientes.fieldbyname('identidade').asString ) = 'ISENTO' then
//                   IE       := '';
               if (trim( tblClientes.fieldbyname('cpf').asString ) = 'CPF') then
                   IE       := 'ISENTO';

               if tblClientes.fieldbyname( 'codigo_municipio' ).asString <> '' then
               COD_MUN  := StrToInt( tblClientes.fieldbyname('codigo_municipio' ).asString );

               SUFRAMA  := '';
               ENDERECO := trim( tblClientes.fieldbyname('Endereco' ).asString );
               NUM      := trim( tblClientes.fieldbyname('Numero' ).asString );//'0'; // NUMERO DO ENDERECO
               COMPL    := trim( tblClientes.fieldbyname('Complemento' ).asString );//''; // COMPLEMENTO DO ENDERECO
               BAIRRO   := trim( tblClientes.fieldbyname('bairro').asString );

            end;

            tblClientes.Next;
         end;


         BoxSPED.StatusBar1.SimpleText := 'Gerando dados registro 0150... (Fornecedores)';

         tblForne.Last;
         t := tblForne.Recno;
         tblForne.First;
         progresso.Max := t;

         while not tblForne.eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0150... ' + tblForne.fieldbyname( 'Nome' ).asString;
            progresso.Position := tblForne.Recno;
            application.ProcessMessages();

             // fornecedores
            with Registro0150New do
            begin
               COD_PART := trim( 'F' + tblForne.fieldbyname( 'id_clientes' ).asString );
               if tblForne.FieldByName('Id_Clientes').AsInteger = 22669 then
                  COD_PART    := 'F60013';
               NOME     := trim( tblForne.fieldbyname( 'nome' ).asString );
               COD_PAIS := '1058';
               if trim( tblForne.fieldbyname('cpf').asString ) = 'CNPJ' then
                CNPJ     := trim( Limpa( tblForne.fieldbyname( 'num_cpf' ).asString ))
               else
                CPF      := trim( Limpa( tblForne.fieldbyname( 'num_cpf' ).asString ));

               IE       := 'ISENTO';  // INSCRICAO ESTADUAL DO Fornecedor

               if (trim( tblForne.fieldbyname('cpf').asString ) = 'CNPJ') and (tblForne.FieldByName('Identidade').AsString <> 'ISENTO') then
                  IE    := trim( tblForne.FieldByName('Identidade').AsString);

               if tblForne.fieldbyname( 'codigo_municipio' ).asString <> '' then
               COD_MUN  := StrToInt( tblForne.fieldbyname('codigo_municipio' ).asString );

               SUFRAMA  := '';
               ENDERECO := trim( tblForne.fieldbyname('Endereco' ).asString );
               NUM      := trim( tblForne.fieldbyname('Numero' ).asString );//'0'; // NUMERO DO ENDERECO
               COMPL    := trim( tblForne.fieldbyname('Complemento' ).asString );//''; // COMPLEMENTO DO ENDERECO
               BAIRRO   := trim( tblForne.fieldbyname('bairro').asString );

            end;

            tblForne.Next;
         end;

         //--- 0190 unidades de medida

      //   tblUnidades.First;

      //   while not tblUnidades.Eof do
     //    begin
            with Registro0190.New do
            begin
        //       UNID  := trim( tblUnidades.fieldbyname('Unidade').asString );
        //       DESCR := trim( 'Unidade ' + tblUnidades.fieldbyname( 'Unidade' ).asString );
               UNID := 'PC';
               DESCR := 'PECA';
            end;

   //         tblUnidades.Next;
  //       end;
         //-----------LANCA UM ITEM COM CODIGO DE SERVICOS PARA AS NOTAS SERIE t

         with Registro0200.New do
            Begin
               COD_ITEM    := 'SERVICO';
               DESCR_ITEM  := 'SERVICOS';
               UNID_INV    := 'PC';
               TIPO_ITEM   := tiServicos;    // 00 – Mercadoria para Revenda
               COD_NCM     := '99';
               COD_GEN     := '00';
               ALIQ_ICMS   := 0; // ALIQUOTA DO ICMS
            end;
         //--- 0200 produtos

          tblPecas.Last;
          t := tblPecas.Recno;
          tblPecas.First;

          progresso.Max := t;

         while not tblPecas.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Saidas)' + tblPecas.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecas.Recno;
            application.ProcessMessages();
            with Registro0200.New do
            begin
               COD_ITEM    := trim( tblPecas.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecas.fieldbyname('Descricao').asString );
               UNID_INV    := 'PC';//trim( tblPecas.fieldbyname('Unidade' ).asString );
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecas.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblPecas.Next;
         end;

          tblPecasE.Last;
          t := tblPecasE.Recno;
          tblPecasE.First;

          progresso.Max := t;

         while not tblPecasE.Eof do
         begin
            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200... (Entradas)' + tblPecasE.fieldbyname( 'Descricao' ).asString;
            progresso.Position   := tblPecasE.Recno;
            application.ProcessMessages();


            // SÓ COLOCA A PEÇA SE NAO ESTIVER NA OUTRA TABELA
            if not ( tblPecas.Locate( 'codigo', tblPecasE.fieldbyname( 'codigo' ).asString , [] ) ) then
            with Registro0200.New do
            begin
               COD_ITEM    := trim( tblPecasE.fieldbyname('codigo').asString );
               DESCR_ITEM  := trim( tblPecasE.fieldbyname('Descricao').asString );
               UNID_INV    := trim( tblPecasE.fieldbyname('Unidade' ).asString );
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := StringReplace( tblPecasE.fieldbyname( 'ncm' ).asString, '.' , '' , [rfReplaceAll]);
               COD_GEN     := copy( cod_ncm , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblPecasE.Next;
         end;

          tblVeiculos.Last;
          t := tblVeiculos.Recno;
          tblVeiculos.First;

          progresso.Max := t;

         while not tblVeiculos.Eof do
         begin

            progresso.Position   := tblVeiculos.Recno;
            application.ProcessMessages();

            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200...(Saida)' + tblVeiculos.fieldbyname( 'Chassi' ).asString;
            with Registro0200.New do
            begin
               COD_ITEM    := trim( tblVeiculos.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculos.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculos.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculos.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculos.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculos.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculos.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculos.Next;

         end;

          tblVeiculosE.Last;
          t := tblVeiculosE.Recno;
          tblVeiculosE.First;

          progresso.Max := t;

         while not tblVeiculosE.Eof do
         begin

            progresso.Position   := tblVeiculosE.Recno;
            application.ProcessMessages();

            BoxSPED.StatusBar1.SimpleText := 'Gerando registro 0200...(Entrada)' + tblVeiculosE.fieldbyname( 'Chassi' ).asString;

            // SÓ COLOCA O VEICULO SE ELE NAO ESTA NA OUTRA TABELA

            if not ( tblVeiculos.Locate( 'chassi', tblVeiculosE.fieldbyname( 'chassi' ).asString , [] ) ) then
            with Registro0200.New do
            begin
               COD_ITEM    := trim( tblVeiculosE.fieldbyname('chassi').asString );
               DESCR_ITEM  := trim( tblVeiculosE.fieldbyname('Marca').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Modelo').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Cor').asString ) +' ' +
                              trim( tblVeiculosE.fieldbyname('Combustivel').asString ) + ' ' +
                              trim( tblVeiculosE.fieldbyname('ano_fabricacao').asString ) + '/' +
                              trim( tblVeiculosE.fieldbyname('ano_modelo').asString );

               UNID_INV    := 'PC';
               TIPO_ITEM   := tiMercadoriaRevenda;    // 00 – Mercadoria para Revenda
               COD_NCM     := trim( tblVeiculosE.fieldbyname('classif_fiscal' ).asString );
               COD_GEN     := copy( tblVeiculosE.fieldbyname('classif_fiscal').asString , 1 , 2  );
               ALIQ_ICMS   := 0;; // ALIQUOTA DO ICMS
            end;

            tblVeiculosE.Next;

         end;



      end;
   end;


end;

procedure TBoxSped.actBloco_1Execute(Sender: TObject);
begin
   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco 1... ';
end;

procedure TBoxSped.actBloco_9Execute(Sender: TObject);
begin
   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco 9... ';
   ACBrSPEDFiscal1.WriteBloco_9;
end;

procedure TBoxSped.actBloco_CExecute(Sender: TObject);
var
   INotas, IItens, i, NF_Ini, NF_Fim : Integer;
   AuxCodItem : string;
   AuxVlr : Currency;
   servico:boolean;
   t:Integer;
begin
   //--- abre tabela para registro E510
//   cdsE510.Close;
//   cdsE510.CreateDataSet;
//   cdsE510.EmptyDataSet;

   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco C.

   BoxSPED.StatusBar1.SimpleText := 'Gerando bloco C... ';

   INotas := 0;

   //--- NFs emitidas

   with ACBrSpedFiscal1.Bloco_C do
   begin

      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         qryNf.Last;
         t := qryNf.RecNo;
         qryNF.First;

         progresso.Max := t;


         while not qryNF.Eof do
         begin

           Inc( INotas );

           BoxSPED.StatusBar1.SimpleText := 'Gerando emitidas registro C100... ' + IntToStr( INotas ) + ' de ' + IntToStr( t ) + ' Nº ' + qryNF.FieldByName('Numero').AsString;;
           progresso.Position := iNotas;
           application.ProcessMessages;
           // NOTAS FISCAIS DE SAIDA
           with RegistroC100New do
           begin
             IND_EMIT      := edEmissaoPropria;
             if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
               IND_OPER      := tpEntradaAquisicao
             else
               IND_OPER      := tpSaidaPrestacao;
             COD_MOD       := '55';   //MODELO - 55 = NF-E
             if qrynf.FieldByName('SerieNF').AsString = 'T' then
               COD_MOD     := '01';
             COD_SIT       := sdRegular; //SITUACAO DA NF-E
             if qryNf.fieldbyname( 'SerieNF' ).asString = 'e'  then
               SER := '1'
             else
             SER           := qryNF.FieldByName('SerieNF').AsString;

             NUM_DOC       := qryNF.FieldByName('Numero').AsString;

             CHV_NFE       := qryNF.FieldByName('Chave').AsString;
             DT_DOC        := qryNF.FieldByName('Emissao').AsDateTime;
             DT_E_S        := qryNF.FieldByName('Emissao').AsDateTime;
             VL_DOC        := qryNF.FieldByName('Tot_Nota').AsCurrency;

             COD_PART      := 'C' + qryNF.FieldByName('id_Clientes').AsString;

             if qryNF.FieldByName('Forma_Pagamento').AsString = 'V' then
                IND_PGTO   := tpVista
             else
                IND_PGTO   := tpPrazo;

             VL_DESC       := qryNF.FieldByName('Desc_Pec').AsCurrency + qryNF.FieldByName('Desc_Ofi').AsCurrency;;
             VL_ABAT_NT    := 0;
             VL_MERC       := qryNF.FieldByName('Tot_Nota').AsCurrency + VL_DESC;//qryNF.FieldByName('Tot_Prod').AsCurrency;

             VL_FRT        := qryNF.FieldByName('val_Frete').AsCurrency;

             if qryNF.FieldByName('val_frete').AsCurrency = 0 then
                IND_FRT    := tfSemCobrancaFrete
             else
             begin
                if qryNF.FieldByName('Frete_Tipo').AsInteger = 2 then
                   IND_FRT := tfPorContaDestinatario
                else
                   IND_FRT := tfPorContaEmitente;
             end;

             VL_SEG        := qryNF.FieldByName('Val_Seguro').AsCurrency;
             VL_OUT_DA     := 0;       // DESPESAS ACESSÓRIAS
             VL_BC_ICMS    := qryNF.FieldByName('Base_ICMS').AsCurrency;
             VL_ICMS       := qryNF.FieldByName('Val_ICMS').AsCurrency;
             VL_BC_ICMS_ST := 0;//qryNF.FieldByName('Base_ICM_S').AsCurrency;;
             VL_ICMS_ST    := 0;//qryNF.FieldByName('Val_ICMS_S').AsCurrency;;
             VL_IPI        := qryNF.FieldByName('Val_IPI').AsCurrency;
             VL_PIS        := qryNF.FieldByName('PIS').AsCurrency;
             VL_COFINS     := qryNF.FieldByName('Cofins').AsCurrency;
             VL_PIS_ST     := 0;
             VL_COFINS_ST  := 0;

             // VERIFICA SE TEM SERVIÇO...

             if  pos( '5949' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '6949' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '5933' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             if  pos( '6933' , qryNf.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;

             //--- c140 faturas
             {
             qryDupl.First;
             qryDupl.Last;

             if qryDupl.RecordCount > 0 then
               with RegistroC140New do   //Inicio Adicionar os Itens:
               begin
                  IND_EMIT := edEmissaoPropria;
                  IND_TIT  := tcDuplicata;
                  NUM_TIT  := qryNF.FieldByName('Numero').AsString;
                  QTD_PARC := qryDupl.RecordCount;
                  VL_TIT   := qryNF.FieldByName('Tot_Nota').AsCurrency;

                  qryDupl.First;

                  while not qryDupl.Eof do
                  begin

                     with RegistroC141New do
                     begin
                        NUM_PARC := IntToStr( qryDupl.Recno );
                        DT_VCTO  := qryDupl.FieldByName('Vencimento').AsDateTime;
                        VL_PARC  := qryDupl.FieldByName('Valor').AsCurrency;
                     end;

                     qryDupl.Next;
                  end;

               end;
               }
               tblAux190.Close;
               tblAux190.CreateDataSet;

               //c170 --- itens da NF

                // itens da nota DE SERVIÇO..
                IItens := 0;
                tblClientes.Locate( 'id_clientes' , qryNf.fieldbyname( 'id_clientes' ).asString , [] );
                qryServicosNF.First;
                while not qryServicosNF.Eof do
                begin
                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin

                     Inc( IItens );
                     NUM_ITEM          := FormatFloat( '000' , IItens );
                     COD_ITEM          := 'SERVICO';
                     DESCR_COMPL       := trim( qryServicosNF.FieldByName('descricao_servico').asString );
                     QTD               := qryServicosNF.FieldByName('tempo').AsFloat;//0;
                     UNID              := 'PC';
                     VL_ITEM           := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                     VL_DESC           := 0;    // VALOR DO DESCONTO
                     IND_MOV           := mfNao;
                     CST_ICMS          := '041';// NAO TRIBUTADO

                     if qryNf.fieldbyname( 'serienf' ).asString = 'T' then
                        if tblClientes.fieldbyname( 'estado' ).asString = 'RS' then
                           CFOP := '5949'
                        else
                           CFOP := '6949'
                     else
                        if tblClientes.fieldbyname( 'estado' ).asString = 'RS' then
                           CFOP := '5933'
                        else
                           CFOP := '6933';

                     COD_NAT           := '';
                     ALIQ_ICMS         := 0;
                     VL_BC_ICMS        := 0;
                     VL_ICMS           := 0;
                     VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
                     ALIQ_ST           := 0; // ALIQ. ICMS S.T.
                     VL_ICMS_ST        := 0; // VALOR ICMS S.T.
                     IND_APUR          := iaMensal;
                     CST_IPI           := '52'; //CST DO IPI - 52 = SAIDA ISENTA
                     COD_ENQ           := '';
                     VL_BC_IPI         := 0; // BASE DO IPI
                     ALIQ_IPI          := 0; // ALIQ DO IPI
                     VL_IPI            := 0; // VALOR DO IPI
                     CST_PIS           := '08'; // SEM INCIDENCIA
                     VL_BC_PIS         := 0;
                     ALIQ_PIS_PERC     := 0;
                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;
                     VL_PIS            := 0;
                     CST_COFINS        := '08'; // SEM INCIDÊNCIA
                     VL_BC_COFINS      := 0;
                     ALIQ_COFINS_PERC  := 0;
                     QUANT_BC_COFINS   := 0;
                     ALIQ_COFINS_R     := 0;
                     VL_COFINS         := 0;
                     COD_CTA           := '';
                     if (qryItemNF.FieldByName('CST').AsString = '051') and
                        (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') then
                        COD_CTA           := '2001|4';
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
                        COD_CTA           := '|||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'U') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1102') then
                          COD_CTA           := '|2001|4|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'P') then
                          COD_CTA           := '|1057|1|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1411') then
                          COD_CTA           := '|1057|1|||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1949') then
                          COD_CTA           := '|303||302||||||||||||||01';
                     if (CFOP = '5933') or (CFOP = '6933') or (CFOP = '6949') then //mao de obra
                       begin
                          CST_PIS := '01';
                          VL_BC_PIS       := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    :=qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
                       end;


                     with tblAux190 do
                     begin

                        if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS,CFOP,ALIQ_ICMS]), [] ) then
                           tblAux190.Insert
                        else
                           tblAux190.Edit;
                           fieldbyname( 'cst' ).asString       := cst_icms;
                           fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 ) ;
                           fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                           fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                           fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                           fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                           Post;

                     end;


                  end; //Fim dos Itens;

                  qryServicosNF.Next;

                end;
                // itens da nota..

//                IItens := 0;

                qryItemNF.First;

                while not qryItemNF.Eof do
                begin

                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin

                     Inc( IItens );

                     NUM_ITEM          := FormatFloat( '000' , IItens );

                     if qryItemNf.fieldbyname( 'codigo' ).asString = '' then
                        COD_ITEM          := trim( qryItemNf.fieldbyname( 'chassi' ).asString )
                     else
                        COD_ITEM          := trim( qryItemNf.fieldbyname( 'codigo' ).asString );


                     DESCR_COMPL       := '';
                     QTD               := qryItemNF.FieldByName('qtde').AsFloat;
                     UNID              := 'PC';//Trim( UpperCase( qryItemNF.FieldByName('Unidade').AsString ) );
                     VL_ITEM           := qryItemNF.FieldByName('preco').AsCurrency * qryItemNF.FieldByName('qtde').AsFloat;
                     if qryItemNF.FieldByName('Desconto').IsNull then
                       VL_DESC         := 0
                     else
                       VL_DESC         := qryItemNF.FieldByName('Desconto').AsFloat; // VALOR DO DESCONTO
                     IND_MOV           := mfSim;
                     CST_ICMS          := qryItemNF.FieldByName('CST').asString;
                     CFOP              := StringReplace( qryItemNF.FieldByName('cfop').AsString , '.' , '' , [rfReplaceAll] );
                     COD_NAT           := '';
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       ALIQ_ICMS       := 0
                     else
                       ALIQ_ICMS       := qryItemNF.FieldByName('Aliq_ICMS').AsCurrency * 100;
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       VL_BC_ICMS      := 0
                     else
                       VL_BC_ICMS      := (qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if qryItemNF.FieldByName('Subst').AsString = 'T' then
                       VL_ICMS         := 0
                     else
                       VL_ICMS         := qryItemNF.FieldByName('ICMS').AsCurrency;
                     VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
                     ALIQ_ST           := 0; // ALIQ. ICMS S.T.
                     VL_ICMS_ST        := 0; // VALOR ICMS S.T.
                     IND_APUR          := iaMensal;
                     CST_IPI           := '52'; //CST DO IPI - 52 = SAIDA ISENTA
                     COD_ENQ           := '';
                     VL_BC_IPI         := 0; // BASE DO IPI
                     ALIQ_IPI          := 0; // ALIQ DO IPI
                     VL_IPI            := 0; // VALOR DO IPI
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_PIS         := '04' // tributavel monofasica -aliquota zero
                     else
                       CST_PIS         := '01'; // tributavel
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       VL_BC_PIS       := 0
                     else
                       VL_BC_PIS       := (qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       ALIQ_PIS_PERC   := 0
                     else
                       if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_PIS_PERC     := 0.65;
                           VL_PIS            := ( qryItemNF.FieldByName('Preco').AsCurrency *
                                                  qryItemNF.FieldByName('Qtde').asFloat ) * ( 0.65 / 100 );
                         end
                       else
                         begin
                           ALIQ_PIS_PERC     := 1.65;
                           VL_PIS            := (( qryItemNF.FieldByName('Preco').AsCurrency *
                                                   qryItemNF.FieldByName('Qtde').asFloat ) -
                                                   qryItemNF.FieldByName('Desconto').AsCurrency) * ( 1.65 / 100 );
                         end;
                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;

                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       CST_COFINS      := '04'
                     else
                       CST_COFINS      := '01';
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       VL_BC_COFINS    := 0
                     else
                       VL_BC_COFINS    := (qryItemNF.FieldByName('Preco').AsCurrency *
                                           qryItemNF.FieldByName('Qtde').asFloat) -
                                           qryItemNF.FieldByName('Desconto').AsCurrency;
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       ALIQ_COFINS_PERC   := 0
                     else
                       if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                         begin
                           ALIQ_COFINS_PERC     := 3;
                           VL_COFINS         := ( qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat ) * ( 3 / 100 );
                         end
                       else
                         begin
                           ALIQ_COFINS_PERC  := 7.6;
                           VL_COFINS         := (( qryItemNF.FieldByName('Preco').AsCurrency *
                                                   qryItemNF.FieldByName('Qtde').asFloat ) -
                                                   qryItemNF.FieldByName('Desconto').AsCurrency) * ( 7.6 / 100 );
                         end;
                     if (CFOP = '5933') or (CFOP = '6933') then //mao de obra
                       begin
                          CST_PIS := '01';
                          VL_BC_PIS       := qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    :=qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := (qryServicosNF.FieldByName('preco').AsCurrency * qryServicosNF.FieldByName('tempo').AsFloat) * ( 7.6 / 100 );
{                          CST_PIS := '01';
                          VL_BC_PIS       := qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat;
                          ALIQ_PIS_PERC     := 1.65;
                          VL_PIS            := ( qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat ) * ( 1.65 / 100 );
                          CST_COFINS := '01';
                          VL_BC_COFINS    := qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat;
                          ALIQ_COFINS_PERC  := 7.6;
                          VL_COFINS         := ( qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat ) * ( 7.6 / 100 );
}                       end;
                     if CST_COFINS <> '04' then
                      if (CFOP = '5152') or (CFOP = '5949') then
                       begin
                          CST_PIS := '08';
                          VL_BC_PIS := 0;
                          ALIQ_PIS_PERC :=0;
                          VL_PIS := 0;
                          CST_COFINS := '08';
                          VL_BC_COFINS := 0;
                          ALIQ_COFINS_PERC :=0;
                          VL_COFINS := 0;
                       end;
                     QUANT_BC_COFINS   := 0;
                     ALIQ_COFINS_R     := 0;
                     COD_CTA           := '';
                     if (qryItemNF.FieldByName('CST').AsString = '051') and
                        (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') then
                        COD_CTA           := '2001|4';
                     if QryNF.FieldByName('ENT_SAI').AsString = 'E' then
                        COD_CTA           := '|||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'U') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1102') then
                          COD_CTA           := '2001|4||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'P') then
                          COD_CTA           := '1057|1||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1411') then
                          COD_CTA           := '1057|1||||||||||||||||01';
                     if (QryNF.FieldByName('ENT_SAI').AsString = 'E') and
                        (QryNF.FieldByName('Origem').AsString = 'N') and
                        (QryNF.FieldByName('Codigo_Fiscal').AsString = '1949') then
                          COD_CTA           := '303||302|||||||||||||||01';
                     if (CFOP = '6949') and (qryNF.FieldByName('Origem').AsString = 'G')then
                       begin
                         COD_CTA         := '11463||11463';//conta da remessa
//                         COD_CTA         := '|11463|11463|||||||||||||||01';//conta da remessa

                       end;
                     with tblAux190 do
                     begin

                        if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS , CFOP , ALIQ_ICMS]), [] ) then
                           tblAux190.Insert
                        else
                           tblAux190.Edit;

                           fieldbyname( 'cst' ).asString       := cst_icms;
                           fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 );
                           fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                           fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                           fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                           fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                           Post;
                     end;



                  end; //Fim dos Itens;

                  qryItemNF.Next;

                end;

                   //c190 -- TOTAIS DA NOTA POR CFOP

                   IItens := 0;

                   tblAux190.First;

                   while not tblAux190.Eof do
                   begin
                      Inc( IItens );

                      with RegistroC190New do
                      begin
                         CST_ICMS       := tblAux190.fieldbyname( 'cst' ).asString;
                         CFOP           := tblAux190.fieldbyname( 'cfop' ).asString;
                         ALIQ_ICMS      := tblAux190.fieldbyname( 'aliq_icms' ).asFloat;
                         VL_OPR         := tblAux190.fieldbyname( 'Total' ).asCurrency - qryNF.FieldByName('Desc_PEC').AsCurrency;
                         VL_BC_ICMS     := tblAux190.fieldbyname( 'base_icms' ).asCurrency;
                         VL_ICMS        := tblAux190.fieldbyname( 'icms' ).asCurrency;
                         VL_BC_ICMS_ST  := 0;
                         VL_ICMS_ST     := 0;
                         VL_RED_BC      := 0;
                         VL_IPI         := 0;
                         COD_OBS        := '';
                      end;
                      tblAux190.Next;
                   end;
             end;

           qryNF.Next;

           end;

         end;

       // notas fiscais de entrada

      with RegistroC001New do
      begin
         IND_MOV := imComDados;

         qryNfe.Last;
         t := qryNfe.RecNo;
         qryNFe.First;

         progresso.Max := t;


         while not qryNFe.Eof do
         begin

           Inc( INotas );

           BoxSPED.StatusBar1.SimpleText := 'Gerando entradas registro C100... ' + IntToStr( INotas ) + ' de ' + IntToStr( t ) + ' Nº ' + qryNFe.FieldByName('Numero').AsString;;
           progresso.Position := iNotas;
           application.ProcessMessages;
           // NOTAS FISCAIS DE SAIDA
           with RegistroC100New do
           begin
             IND_EMIT      := edTerceiros;
             IND_OPER      := tpEntradaAquisicao;
             COD_MOD       := '55';      //MODELO - 55 = NF-E
             COD_SIT       := sdRegular; //SITUACAO DA NF-E

             if qryNfe.fieldbyname( 'Serie' ).asString = ''  then
               SER := '1'
             else
               SER           := qryNFe.FieldByName('Serie').AsString;

             NUM_DOC       := qryNFe.FieldByName('Numero').AsString;
             CHV_NFE       := qryNFe.FieldByName('Chave').AsString;
             DT_DOC        := qryNFe.FieldByName('Emissao').AsDateTime;
             DT_E_S        := qryNFe.FieldByName('Emissao').AsDateTime;
             VL_DOC        := qryNFe.FieldByName('Tot_Nota').AsCurrency;
             if qryNFe.FieldByName('Origem').AsString = 'N' then
                VL_OUT_DA  := qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                              qryNFe.FieldByName('Val_PIS').AsCurrency +
                              qryNFe.FieldByName('Val_COFINS').AsCurrency;

             COD_PART      := 'F' + qryNFe.FieldByName('id_Clientes').AsString;
             if qryNFe.FieldByName('Id_Clientes').AsInteger = 22669 then
               COD_PART    := 'F60013';

             //if qryNFe.FieldByName('Forma_Pagamento').AsString = 'V' then
             //   IND_PGTO   := tpVista
             //else

             IND_PGTO   := tpPrazo;

             VL_DESC       := qryNFe.FieldByName('Desc_Pec').AsCurrency + qryNFe.FieldByName('Desc_Ofi').AsCurrency;;
             VL_ABAT_NT    := 0;
             VL_MERC       := qryNFe.FieldByName('Tot_Prod').AsCurrency;

             VL_FRT        := qryNFe.FieldByName('val_Frete').AsCurrency;

             if qryNFe.FieldByName('val_frete').AsCurrency = 0 then
                IND_FRT    := tfSemCobrancaFrete
             else
             begin
                if qryNFe.FieldByName('Frete_Tipo').AsInteger = 2 then
                   IND_FRT := tfPorContaDestinatario
                else
                   IND_FRT := tfPorContaEmitente;
             end;

             VL_SEG        := qryNFe.FieldByName('Val_Seguro').AsCurrency;
             VL_OUT_DA     := 0;       // DESPESAS ACESSÓRIAS
             VL_BC_ICMS    := qryNFe.FieldByName('Base_ICMS').AsCurrency;
             VL_ICMS       := qryNFe.FieldByName('Val_ICMS').AsCurrency;
             VL_BC_ICMS_ST := qryNFe.FieldByName('Base_ICM_S').AsCurrency;;
             VL_ICMS_ST    := qryNFe.FieldByName('Val_ICMS_S').AsCurrency;;
             VL_IPI        := qryNFe.FieldByName('Val_IPI').AsCurrency;
             VL_PIS        := qryNFe.FieldByName('PIS').AsCurrency;
             VL_COFINS     := qryNFe.FieldByName('Cofins').AsCurrency;
             VL_PIS_ST     := 0;
             VL_COFINS_ST  := 0;

             // VERIFICA SE TEM SERVIÇO...
             //if  pos( '5949' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '6949' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '5933' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;
             //if  pos( '6933' , qryNfe.fieldbyname( 'codigo_fiscal' ).asString  ) > 0 then servico := true;

             tblAux190.Close;
             tblAux190.CreateDataSet;

             // itens da nota..

             IItens := 0;

             qryItemNFe.First;

             while not qryItemNFe.Eof do
             begin
               with RegistroC170New do   //Inicio Adicionar os Itens:
               begin


                  Inc( IItens );

                  NUM_ITEM          := FormatFloat( '000' , IItens );

                  if qryItemNfe.fieldbyname( 'item' ).asString = '' then
                     COD_ITEM   := trim( qryItemNfe.fieldbyname( 'chassi' ).asString )
                  else
                     COD_ITEM   := trim( qryItemNfe.fieldbyname( 'item' ).asString );

                  DESCR_COMPL       := '';
                  QTD               := qryItemNFe.FieldByName('qtde').AsFloat;
                  UNID              := 'PC';
                  VL_ITEM           := qryItemNFe.FieldByName('vlr_unit').AsFloat * qryItemNFe.FieldByName('qtde').AsFloat;
                  VL_DESC           := 0;          // VALOR DO DESCONTO
                  if qryNFe.FieldByName('Origem').AsString = 'N' then
                   begin

                     if qryNFe.FieldByName('Qtde_Prod').Asinteger = 1 then
                      VL_OUT_DA  := qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                    qryNFe.FieldByName('Val_PIS').AsCurrency +
                                    qryNFe.FieldByName('Val_COFINS').AsCurrency
                     else
                       begin
                         if StrToInt(NUM_ITEM) = 1 then
                            VL_OUT_DA  := (qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                          qryNFe.FieldByName('Val_PIS').AsCurrency +
                                          qryNFe.FieldByName('Val_COFINS').AsCurrency)/2
                         else
                            VL_OUT_DA  := VL_OUT_DA - (qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                                          qryNFe.FieldByName('Val_PIS').AsCurrency +
                                          qryNFe.FieldByName('Val_COFINS').AsCurrency);
                       end;
                   end;
                  if qryNFe.FieldByName('Origem').AsString = 'P' then
                     VL_OUT_DA := qryNFe.FieldByName('VAL_ICMS_S').AsCurrency;
                  IND_MOV           := mfSim;
                  if qryItemNfe.FieldByName('CST').IsNull then
                    CST_ICMS          := qryItemNFe.FieldByName('CST1').asString
                  else                                      
                    CST_ICMS          := qryItemNFe.FieldByName('CST').asString;
                  CFOP              := StringReplace( qryItemNFe.FieldByName('cfop').AsString , '.' , '' , [rfReplaceAll] );
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.101') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5101') then
                     CFOP := '1102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.102') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5102') then
                     CFOP := '1102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.401') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5401') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.402') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5402') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.403') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5403') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '5.405') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '5405') then
                     CFOP := '1403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.101') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6101') then
                     CFOP := '2102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.102') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6102') then
                     CFOP := '2102';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.401') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6401') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.403') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6403') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '2404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '2.404') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6404') then
                     CFOP := '2403';
                  if (qryItemNFe.FieldByName('CFOP').AsString = '6.655') or
                     (qryItemNFe.FieldByName('CFOP').AsString = '6655') then
                     CFOP := '2652';
                  COD_NAT           := '';
//                  if qryItemNF.FieldByName('Subst').AsString = 'T' then
  //                  ALIQ_ICMS       := 0
    //              else
                  ALIQ_ICMS       := qryItemNFe.FieldByName('Aliq_ICMS').AsCurrency * 100;
      //            if qryItemNF.FieldByName('Subst').AsString = 'T' then
        //            VL_BC_ICMS      := 0
          //        else
                  VL_BC_ICMS      := qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat;
            //      if qryItemNF.FieldByName('Subst').AsString = 'T' then
              //      VL_ICMS         := 0
                //  else
                  VL_ICMS         := qryItemNFe.FieldByName('VLR_ICMS').AsCurrency;
                  if (CST_ICMS = '060') or (CST_ICMS = '260') then
                   begin
                     vl_ICMS := 0;
                     vl_BC_ICMS := 0;
                     ALIQ_ICMS := 0;
                   end;
                  VL_BC_ICMS_ST     := 0; // BASE ICMS S.T.
                  ALIQ_ST           := 0; // ALIQ. ICMS S.T.
                  VL_ICMS_ST        := 0;//qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency;
                  IND_APUR          := iaMensal;
                  CST_IPI           := '02'; //CST DO IPI - 52 = SAIDA ISENTA
                  COD_ENQ           := '';
                  VL_BC_IPI         := 0; // BASE DO IPI
                  ALIQ_IPI          := 0; // ALIQ DO IPI
                  VL_IPI            := qryItemNFe.FieldByName('VLR_IPI').AsCurrency;//vlr_ipi; // VALOR DO IPI
{
                       if qryItemNFe.FieldByName('Modelo').IsNull then   //faltou relacionar as peças que entram como pis substituição
                         CST_PIS         := '01' // tributavel
                       else
                         CST_PIS         := '04'; // tributavel monofasica -aliquota zero

      //               if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       if qryItemNFe.FieldByName('Modelo').IsNull then   //faltou relacionar as peças que entram como pis substituição
                         VL_BC_PIS       := qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat
                       else
                         VL_BC_PIS       := 0;
            //         if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
              //         ALIQ_PIS_PERC   := 0
                //   //  else
                    //   if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                    //      (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                       if qryItemNFe.FieldByName('Modelo').IsNull then
                         ALIQ_PIS_PERC     := 1.65
                       else
                         ALIQ_PIS_PERC     := 0; // motocicleta
                     QUANT_BC_PIS      := 0;
                     ALIQ_PIS_R        := 0;
                     VL_PIS            := ( qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat ) * ( 3 / 100 );
                     if qryItemNFe.FieldByName('Modelo').IsNull then   //faltou relacionar as peças que entram como pis substituição
                       CST_COFINS      := '01'
                     else
                       CST_COFINS      := '04';
                     if qryItemNFe.FieldByName('Modelo').IsNull then   //faltou relacionar as peças que entram como pis substituição
                       VL_BC_COFINS    := qryItemNF.FieldByName('Preco').AsCurrency * qryItemNF.FieldByName('Qtde').asFloat
                     else
                       VL_BC_COFINS    := 0;
                     if qryItemNF.FieldByName('ST_COFINS').AsString = 'T' then
                       ALIQ_COFINS_PERC   := 0
                     else
                       if (qryItemNF.FieldByName('Descricao').AsString = 'Motocicleta') and
                          (qryItemNF.FieldByName('CFOP').AsString = '5102') then
                           ALIQ_COFINS_PERC     := 3
                       else
                     if qryItemNFe.FieldByName('Modelo').IsNull then   //faltou relacionar as peças que entram como pis substituição
                           ALIQ_COFINS_PERC  := 7.6;

                                               }

                  CST_PIS           := '50';
                  VL_BC_PIS         := (qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency);
                  ALIQ_PIS_PERC     := 1.65;
                  QUANT_BC_PIS      := 0;
                  ALIQ_PIS_R        := 0;
                  VL_PIS            := ((qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat ) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency) *
                                       ( 7.6 / 100 ));

                  CST_COFINS        := '50';
                  VL_BC_COFINS      := (qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency);
                  ALIQ_COFINS_PERC  := 7.6;
                  QUANT_BC_COFINS   := 0;
                  ALIQ_COFINS_R     := 0;
                  VL_COFINS         := ((qryItemNFe.FieldByName('vlr_unit').AsCurrency * qryItemNFe.FieldByName('Qtde').asFloat ) +
                                       (qryItemNFe.FieldByName('ICMS_SUBST').AsCurrency + qryItemNFe.FieldByName('VLR_IPI').AsCurrency) *
                                       ( 1.65 / 100 ));

                  COD_CTA           := '2001|1||||||||';//||||||||01';

                  if (qryItemNFe.FieldByName('ST_COFINS').AsString = 'T') or  //entrada de pecas substituicao PIS/COFINS
                     (qryNFe.FieldByName('Origem').AsString = 'N') then
                    begin
                      CST_PIS           := '75';
                      VL_BC_PIS         := 0;
                      ALIQ_PIS_PERC     := 0;
                      VL_PIS            := 0;
                      CST_COFINS        := '75';
                      VL_BC_COFINS      := 0;
                      ALIQ_COFINS_PERC  := 0;
                      VL_COFINS         := 0;
                      VL_PIS_ST         := qryNFe.FieldByName('PIS').AsCurrency;
                      VL_COFINS_ST      := qryNFe.FieldByName('Cofins').AsCurrency;


    //                  COD_CTA           := '2001|2';
                      COD_CTA           := '2001|2||||||||';
//                    end;
                      if qryNFe.FieldByName('Origem').AsString = 'N' then
//                        COD_CTA           := '2001|3';
                        COD_CTA           := '2001|3||||||||';//||||||04';
                    end;
                  if qryNFe.FieldByName('Id_Clientes').AsInteger = 22669 then
                    begin
                     COD_CTA           := '2001|3|60013|||||||';//9||||||04';
                    end;
                  if qryNFe.FieldByName('Origem').AsString = 'N' then
                    COD_CTA :=  COD_CTA + '||||||||04';
                  if qryNFe.FieldByName('Origem').AsString = 'P' then
                    COD_CTA :=  COD_CTA + qryItemNFe.FieldByName('ICMS_SUBST').AsString + '||||||||01'
                  else
                    COD_CTA :=  COD_CTA + '||||||||01';
                  with tblAux190 do
                  begin

                     if not tblAux190.Locate( 'CST;CFOP;ALIQ_ICMS', VarArrayOf([CST_ICMS , CFOP , ALIQ_ICMS]), [] ) then
                        tblAux190.Insert
                     else
                        tblAux190.Edit;

                        fieldbyname( 'cst' ).asString       := cst_icms;
                        fieldbyname( 'cfop' ).asString      := copy( cfop, 0 , 4 );
                        fieldbyname( 'aliq_icms' ).asFloat  := aliq_icms;
                        fieldbyname( 'base_icms' ).asFloat  := fieldbyname( 'base_icms' ).ascurrency + vl_bc_icms;
                        fieldbyname( 'icms' ).asFloat       := fieldbyname( 'icms' ).asCurrency + vl_icms;
                        fieldbyname( 'total' ).asFloat      := fieldbyname( 'total' ).asCurrency + vl_item;
                        fieldbyname( 'icms_st' ).asFloat    := fieldbyname( 'icms_st' ).asFloat + vl_icms_st;
                        fieldByName('VLR_IPI').AsFloat      := FieldByName('VLR_IPI').AsFloat +vl_IPI;
                        Post;
                  end;



               end; //Fim dos Itens;

               qryItemNFe.Next;

             end;

                //c190 -- TOTAIS DA NOTA POR CFOP

                IItens := 0;

                tblAux190.First;

                while not tblAux190.Eof do
                begin
                   Inc( IItens );

                   with RegistroC190New do
                   begin

                      CST_ICMS       := tblAux190.fieldbyname( 'cst' ).asString;
                      CFOP           := tblAux190.fieldbyname( 'cfop' ).asString;
                      ALIQ_ICMS      := tblAux190.fieldbyname( 'aliq_icms' ).asFloat;
                      VL_OPR         := tblAux190.fieldbyname( 'Total' ).asCurrency +
                                          tblAux190.fieldbyname( 'icms_st' ).asCurrency +
                                          tblAux190.FieldBYName('VLR_IPI').AsCurrency;
                     if qryNFe.FieldByName('Origem').AsString = 'N' then
                        VL_OPR  := VL_OPR + qryNFe.FieldByName('VaL_ICMS_S').AsCurrency +
                              qryNFe.FieldByName('Val_FRETE').AsCurrency +
                              qryNFe.FieldByName('Val_SEGURO').AsCurrency +
                              qryNFe.FieldByName('Val_PIS').AsCurrency +
                              qryNFe.FieldByName('Val_COFINS').AsCurrency;
                     if (qryNFe.FieldByName('Origem').AsString = 'P') and
                        (qryNFe.FieldByName('Id_Clientes').AsInteger = 1076) then
                        VL_OPR       := VL_OPR + 
                                        qryNFe.FieldByName('Val_FRETE').AsCurrency +
                                        qryNFe.FieldByName('Val_SEGURO').AsCurrency +
                                        qryNFe.FieldByName('VAL_ICMS_S').AsCurrency;
//                                        tblAux190.fieldbyname( 'icms_st' ).asCurrency;
                      VL_BC_ICMS     := tblAux190.fieldbyname( 'base_icms' ).asCurrency;
                      VL_ICMS        := tblAux190.fieldbyname( 'icms' ).asCurrency;
                      VL_BC_ICMS_ST  := 0;
                      VL_ICMS_ST     := 0;//tblAux190.fieldbyname( 'icms_st' ).asCurrency;
                      VL_RED_BC      := 0;
                      VL_IPI         := tblAux190.FieldByName('VLR_IPI').AsCurrency;
                      COD_OBS        := '';
                   end;
                   tblAux190.Next;
                end;
           end;
            qryNfe.Next;
         end;
      end;
   end;
end;



procedure TBoxSped.btnFechar_PClick(Sender: TObject);
begin
  close;
end;

procedure TBoxSped.btnGerar_PClick(Sender: TObject);
var
t:Integer;
begin
{
tabelas..
NOFISA = NOTAS FISCAIS DE SAIDA E SERVICOS
SADA = ITENS DE NOTA FISCAL DE SAIDA
SEDA = ITENS DE NOTA FISCAL DE SERVICOS

NOFI = NOTA FISCAL DE ENTRADA
DADOS_NFE = ITENS DA NFE DE ENTRADA
}

   // NOTAS FISCAIS DE SAIDA
   with qryNf do
   begin
    close;
    parambyname( 'inicio' ).asDateTime  := edtDi.Date;
    parambyname( 'final' ).asDateTime   := edtDf.Date;
    Open;
   End;

   // NOTAS FISCAIS DE ENTRADA
   with qryNfe do
   begin
    close;
    parambyname( 'inicio' ).asDateTime  := edtDi.Date;
    parambyname( 'final' ).asDateTime   := edtDf.Date;
    Open;
   end;

   qryServicosNf.Open;
   qryItemNf.Open;
   qryTotServicosNf.Open;
   qryTotItem.Open;
   qryDupl.Open;

   qryItemNfe.Open;
   qryTotItemE.Open;


   with tblForne do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblVeiculos do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblVeiculosE do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;


   with tblClientes do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with tblPecasE do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;


   with tblPecas do
   begin
      close;
      parambyname( 'inicio' ).asDateTime := edtDi.Date;
      parambyname( 'final' ).asDateTime  := edtDf.Date;
      Open;
   end;

   with ACBrSpedFiscal1 do
   begin
      Arquivo        := edtNomeArq.Text;
      Path           := edtPastaDestino.Text;
      DT_INI         := edtDI.Date;
      DT_FIN         := edtDF.Date;
      LinhasBuffer   := 100;
      IniciaGeracao;
   end;

   actBloco_0.Execute;
   actBloco_C.Execute;
   actBloco_1.Execute;
   actBloco_9.Execute;

   with ACBrSpedFiscal1 do
   begin
      LinhasBuffer := 100;
      SaveFileTXT;
   end;

  showmessage( 'Arquivo gerado com sucesso' );

  tblClientes.Close;
  tblVeiculos.Close;
  tblVeiculosE.Close;
  tblForne.Close;
  qryNf.Close;
  qryNfe.Close;


end;

procedure TBoxSped.edtDFExit(Sender: TObject);
begin
  EdtNomeArq.Text := 'SPED_FISCAL-' +
                      formatdatetime('mm',strtodatetime(edtDF.text)) +
                      '-' +
                      formatdatetime('dd',strtodatetime(EdtDI.text)) +
                      formatdatetime('dd',strtodatetime(edtDF.text)) +
                      '.TXT';
  EdtNomeArq.SetFocus;
end;

procedure TBoxSped.FormCreate(Sender: TObject);
begin
//  ibDatabase1.Connected := true;
  qryFilial.Open;
  tblUnidades.Open;
end;

procedure TBoxSped.FormKeyPress(Sender: TObject; var Key: Char);
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
  end;
end;

function TBoxSped.limpa(c: String): String;
begin
  c := StringReplace( c , '.', '' , [rfReplaceAll]);
  c := StringReplace( c , '-', '' , [rfReplaceAll]);
  c := StringReplace( c , '/', '' , [rfReplaceAll]);
  c := StringReplace( c , ';', '' , [rfReplaceAll]);
  c := StringReplace( c , '\', '' , [rfReplaceAll]);
  c := StringReplace( c , '=', '' , [rfReplaceAll]);
  c := StringReplace( c , '(', '' , [rfReplaceAll]);
  c := StringReplace( c , ')', '' , [rfReplaceAll]);
  result := trim(c);
end;

end.
