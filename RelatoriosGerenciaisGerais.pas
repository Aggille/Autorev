unit RelatoriosGerenciaisGerais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, frxClass,
  frxDBSet, Mask, DBCtrls, Grids, DBGrids, IBQuery, rxToolEdit, rxCurrEdit,
  JvExComCtrls, JvComCtrls, JvExStdCtrls, JvCombobox, ImgList, System.ImageList;

type
  TBoxRelatoriosGerenciaisGerais = class(TForm)
    StatusBar1: TStatusBar;
    BtnImprimir: TBitBtn;
    DataSourceDespesas: TDataSource;
    tblDespesas: TIBDataSet;
    frxReport1: TfrxReport;
    tblRelDespesas: TfrxDBDataset;
    Panel1: TPanel;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    DataSourcePlacon: TDataSource;
    tblRelConcessionaria: TfrxDBDataset;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    IBQuery1: TIBQuery;
    Total: TCurrencyEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
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
    tblVeiculosORIGEM: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    DataSourceVeiculos: TDataSource;
    JvTreeView1: TJvTreeView;
    Panel2: TPanel;
    Label1: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    Label2: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    NomeConta: TDBEdit;
    CodigoConta: TEdit;
    Label11: TLabel;
    tblVeiculos1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    DateField1: TDateField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    DateField2: TDateField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    DateField3: TDateField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IBStringField26: TIBStringField;
    DataSourceVeiculos1: TDataSource;
    tblRelVeiculos1: TfrxDBDataset;
    frxReport3: TfrxReport;
    tblAtendimento: TIBDataSet;
    tblAtendimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoID_CLIENTES: TIntegerField;
    tblAtendimentoID_MECANICO: TIntegerField;
    tblAtendimentoID_CATEGORIA: TIntegerField;
    tblAtendimentoMARCA: TIBStringField;
    tblAtendimentoMODELO: TIBStringField;
    tblAtendimentoANO_FABRICACAO: TIBStringField;
    tblAtendimentoANO_MODELO: TIBStringField;
    tblAtendimentoCHASSI: TIBStringField;
    tblAtendimentoKM: TIntegerField;
    tblAtendimentoDATA_ENTRADA: TDateField;
    tblAtendimentoDATA_SAIDA: TDateField;
    tblAtendimentoORC_OS: TIBStringField;
    tblAtendimentoCOR: TIBStringField;
    tblAtendimentoPLACA: TIBStringField;
    tblAtendimentoSTATUS: TIBStringField;
    tblAtendimentoMEMO: TBlobField;
    tblAtendimentoDESCONTO: TIBBCDField;
    tblAtendimentoTOTAL_PECAS: TIBBCDField;
    tblAtendimentoTOTAL_SERVICOS: TIBBCDField;
    tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField;
    tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField;
    DataSourceAtendimento: TDataSource;
    frxReport4: TfrxReport;
    tblRelAtendimento: TfrxDBDataset;
    Label3: TLabel;
    Label4: TLabel;
    tblNofisa: TIBDataSet;
    DataSourceNofisa: TDataSource;
    frxReport5: TfrxReport;
    tblrelNofisa: TfrxDBDataset;
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
    tblNofisaID_SADA: TIntegerField;
    tblNofisaID_NOFISA1: TIntegerField;
    tblNofisaID_CONCESSIONARIA1: TIntegerField;
    tblNofisaNF: TIBStringField;
    tblNofisaCODIGO: TIBStringField;
    tblNofisaDESCRICAO: TIBStringField;
    tblNofisaQTDE: TSmallintField;
    tblNofisaUNIDADE: TIBStringField;
    tblNofisaCST: TIBStringField;
    tblNofisaSUBST: TIBStringField;
    tblNofisaALIQ_ICMS: TIBBCDField;
    tblNofisaICMS: TIBBCDField;
    tblNofisaCUSTO: TIBBCDField;
    tblNofisaPRECO: TIBBCDField;
    tblNofisaCFOP: TIBStringField;
    tblNofisaNAT_OP: TIBStringField;
    tblNofisaST_COFINS: TIBStringField;
    tblNofisaANO_MODELO: TIBStringField;
    tblNofisaANO_FABRICACAO: TIBStringField;
    tblNofisaRENAVAM: TIBStringField;
    tblNofisaPOTENCIA: TIBStringField;
    tblNofisaCOR: TIBStringField;
    tblNofisaCOMBUSTIVEL: TIBStringField;
    tblNofisaPLACA1: TIBStringField;
    tblNofisaMOTOR: TIBStringField;
    tblNofisaCHASSI: TIBStringField;
    tblNofisaMARCA: TIBStringField;
    tblNofisaMODELO: TIBStringField;
    tblNofisaSTATUS1: TIBStringField;
    IBQuery2: TIBQuery;
    tblReceitas: TIBDataSet;
    DataSourceReceitas: TDataSource;
    tblRelReceitas: TfrxDBDataset;
    frxReport6: TfrxReport;
    IBQuery3: TIBQuery;
    Panel4: TPanel;
    Label5: TLabel;
    Setor: TJvComboBox;
    tblReceitasID_NOFISA: TIntegerField;
    tblReceitasID_CONCESSIONARIA: TIntegerField;
    tblReceitasID_CLIENTES: TIntegerField;
    tblReceitasNUMERO: TIntegerField;
    tblReceitasSERIENF: TIBStringField;
    tblReceitasEMISSAO: TDateField;
    tblReceitasORIGEM: TIBStringField;
    tblReceitasENT_SAI: TIBStringField;
    tblReceitasVENDEDOR: TIntegerField;
    tblReceitasSAIDA: TDateField;
    tblReceitasHORA: TIBStringField;
    tblReceitasIE_SUBS: TIBStringField;
    tblReceitasDESC_PEC: TIBBCDField;
    tblReceitasDESC_OFI: TIBBCDField;
    tblReceitasBASE_ICMS: TIBBCDField;
    tblReceitasVAL_ICMS: TIBBCDField;
    tblReceitasBASE_ICM_S: TIBBCDField;
    tblReceitasVAL_ICMS_S: TIBBCDField;
    tblReceitasVAL_FRETE: TIBBCDField;
    tblReceitasVAL_SEGURO: TIBBCDField;
    tblReceitasVAL_OUTROS: TIBBCDField;
    tblReceitasVAL_IPI: TIBBCDField;
    tblReceitasVAL_SERV: TIBBCDField;
    tblReceitasISSQN: TIBBCDField;
    tblReceitasVAL_ISS: TIBBCDField;
    tblReceitasTOT_PROD: TIBBCDField;
    tblReceitasTOT_NOTA: TIBBCDField;
    tblReceitasPIS: TIBBCDField;
    tblReceitasCOFINS: TIBBCDField;
    tblReceitasCOD_TRANS: TIBStringField;
    tblReceitasFRETE_TIPO: TIBStringField;
    tblReceitasPLACA: TIBStringField;
    tblReceitasDADOS_AD01: TIBStringField;
    tblReceitasDADOS_AD02: TIBStringField;
    tblReceitasDADOS_AD03: TIBStringField;
    tblReceitasDADOS_AD04: TIBStringField;
    tblReceitasOBS: TIBStringField;
    tblReceitasQTDE_PROD: TIntegerField;
    tblReceitasSTATUS: TIBStringField;
    tblReceitasCODIGO_FISCAL: TIBStringField;
    tblReceitasDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblReceitasFORMA_PAGAMENTO: TIBStringField;
    tblReceitasCHAVE: TIBStringField;
    tblReceitasRECIBO: TIBStringField;
    tblReceitasPROTOCOLO: TIBStringField;
    tblReceitasARQUIVO: TIBStringField;
    tblReceitasXML: TBlobField;
    ImageList1: TImageList;
    IBQuery4: TIBQuery;
    frxReport7: TfrxReport;
    tblRelCreceber: TfrxDBDataset;
    tblCreceber: TIBDataSet;
    DataSourceCreceber: TDataSource;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    tblCreceberNOME: TIBStringField;
    tblPecasEstoque: TIBDataSet;
    DataSourcePecasEstoque: TDataSource;
    tblRelPecasEstoque: TfrxDBDataset;
    frxReport8: TfrxReport;
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
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    Panel5: TPanel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    tblFormas: TIBDataSet;
    DataSourceFormas: TDataSource;
    tblFormasID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasFORMA_PAGAMENTO: TIBStringField;
    tblFormasCOEFICIENTE: TFMTBCDField;
    tblFormasPRAZO: TIBStringField;
    tblFormasVEICULOS: TIBStringField;
    tblFormasPECAS: TIBStringField;
    tblFormasPOSVENDA: TIBStringField;
    tblFormasCRECEBER: TIBStringField;
    tblFormasCPAGAR: TIBStringField;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    NomeVendedor: TDBEdit;
    CodigoVendedor: TEdit;
    tblPedidoVeiculos: TIBDataSet;
    tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField;
    tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField;
    tblPedidoVeiculosID_CLIENTES: TIntegerField;
    tblPedidoVeiculosID_AVALISTA: TIntegerField;
    tblPedidoVeiculosID_VEICULOS: TIntegerField;
    tblPedidoVeiculosCHASSI: TIBStringField;
    tblPedidoVeiculosMARCA: TIBStringField;
    tblPedidoVeiculosANO_MODELO: TIBStringField;
    tblPedidoVeiculosANO_FABRICACAO: TIBStringField;
    tblPedidoVeiculosPLACA: TIBStringField;
    tblPedidoVeiculosVALOR: TIBBCDField;
    tblPedidoVeiculosBASE_COMISSAO: TIBBCDField;
    tblPedidoVeiculosNF: TIBStringField;
    tblPedidoVeiculosDATA_NF: TDateField;
    tblPedidoVeiculosSTATUS: TIBStringField;
    tblPedidoVeiculosID_VENDEDOR: TIntegerField;
    tblPedidoVeiculosID_FINANCEIRA: TIntegerField;
    tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField;
    tblPedidoVeiculosMODELO: TIBStringField;
    tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField;
    tblPedidoVeiculosMOTOR: TIBStringField;
    tblPedidoVeiculosID_USUARIO: TIntegerField;
    tblPedidoVeiculosUSUARIO: TIBStringField;
    tblPedidoVeiculosCOR: TIBStringField;
    DataSourcePedidoVeiculos: TDataSource;
    tblRelPedidoVeiculos: TfrxDBDataset;
    frxReport9: TfrxReport;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    n: TIBStringField;
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
    DataSourcePessoas: TDataSource;
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosNOME: TIBStringField;
    tblPedidoVeiculosVALOR_VIP: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField;
    tblPedidoVeiculosVALOR_VIP2: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField;
    ComboBoxLoja: TComboBox;
    tblNofisa2: TIBDataSet;
    DataSourceNofisa2: TDataSource;
    tblRelNofisa2: TfrxDBDataset;
    tblNofisa2ID_NOFISA: TIntegerField;
    tblNofisa2ID_CONCESSIONARIA: TIntegerField;
    tblNofisa2ID_CLIENTES: TIntegerField;
    tblNofisa2NUMERO: TIntegerField;
    tblNofisa2SERIENF: TIBStringField;
    tblNofisa2EMISSAO: TDateField;
    tblNofisa2ORIGEM: TIBStringField;
    tblNofisa2ENT_SAI: TIBStringField;
    tblNofisa2VENDEDOR: TIntegerField;
    tblNofisa2SAIDA: TDateField;
    tblNofisa2HORA: TIBStringField;
    tblNofisa2IE_SUBS: TIBStringField;
    tblNofisa2DESC_PEC: TIBBCDField;
    tblNofisa2DESC_OFI: TIBBCDField;
    tblNofisa2BASE_ICMS: TIBBCDField;
    tblNofisa2VAL_ICMS: TIBBCDField;
    tblNofisa2BASE_ICM_S: TIBBCDField;
    tblNofisa2VAL_ICMS_S: TIBBCDField;
    tblNofisa2VAL_FRETE: TIBBCDField;
    tblNofisa2VAL_SEGURO: TIBBCDField;
    tblNofisa2VAL_OUTROS: TIBBCDField;
    tblNofisa2VAL_IPI: TIBBCDField;
    tblNofisa2VAL_SERV: TIBBCDField;
    tblNofisa2ISSQN: TIBBCDField;
    tblNofisa2VAL_ISS: TIBBCDField;
    tblNofisa2TOT_PROD: TIBBCDField;
    tblNofisa2TOT_NOTA: TIBBCDField;
    tblNofisa2PIS: TIBBCDField;
    tblNofisa2COFINS: TIBBCDField;
    tblNofisa2COD_TRANS: TIBStringField;
    tblNofisa2FRETE_TIPO: TIBStringField;
    tblNofisa2PLACA: TIBStringField;
    tblNofisa2DADOS_AD01: TIBStringField;
    tblNofisa2DADOS_AD02: TIBStringField;
    tblNofisa2DADOS_AD03: TIBStringField;
    tblNofisa2DADOS_AD04: TIBStringField;
    tblNofisa2OBS: TIBStringField;
    tblNofisa2QTDE_PROD: TIntegerField;
    tblNofisa2STATUS: TIBStringField;
    tblNofisa2CODIGO_FISCAL: TIBStringField;
    tblNofisa2DESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisa2FORMA_PAGAMENTO: TIBStringField;
    tblNofisa2CHAVE: TIBStringField;
    tblNofisa2RECIBO: TIBStringField;
    tblNofisa2PROTOCOLO: TIBStringField;
    tblNofisa2ARQUIVO: TIBStringField;
    tblNofisa2XML: TBlobField;
    tblNofisa2PROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisa2MOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisa2DADOS_AD05: TIBStringField;
    tblNofisa2NOME: TIBStringField;
    frxReport10: TfrxReport;
    tblRelPessoas: TfrxDBDataset;
    tblRelCPagar: TfrxDBDataset;
    tblCpagar: TIBDataSet;
    DataSourceCPagar: TDataSource;
    frxReport11: TfrxReport;
    tblCpagarID_CPAGAR: TIntegerField;
    tblCpagarID_CONCESSIONARIA: TIntegerField;
    tblCpagarID_CLIENTES: TIntegerField;
    tblCpagarDOCUMENTO: TIBStringField;
    tblCpagarNFISCAL: TIBStringField;
    tblCpagarCONTA: TIBStringField;
    tblCpagarID_FORMA_PAGAMENTO: TIntegerField;
    tblCpagarVENCIMENTO: TDateField;
    tblCpagarVALOR: TIBBCDField;
    tblCpagarEMISSAO: TDateField;
    tblCpagarPAGAMENTO: TDateField;
    tblCpagarVALOR_PAGO: TIBBCDField;
    tblCpagarBANCO: TIBStringField;
    tblCpagarHISTORICO: TIBStringField;
    tblCpagarSTATUS: TIBStringField;
    frxReport12: TfrxReport;
    tblRelCrecebid: TfrxDBDataset;
    tblCrecebid: TIBDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IntegerField13: TIntegerField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    DateField4: TDateField;
    IBBCDField4: TIBBCDField;
    DateField5: TDateField;
    IBBCDField5: TIBBCDField;
    DateField6: TDateField;
    IBBCDField6: TIBBCDField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IntegerField14: TIntegerField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    DataSourceCrecebid: TDataSource;
    frxReport13: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    tblVeiculos3: TIBDataSet;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IntegerField19: TIntegerField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    DateField7: TDateField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    DateField8: TDateField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    DateField9: TDateField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    IBStringField61: TIBStringField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IBStringField62: TIBStringField;
    DataSource1: TDataSource;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    frxReport14: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    tblveiculos4: TIBDataSet;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    IBStringField73: TIBStringField;
    IntegerField26: TIntegerField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    DateField10: TDateField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBBCDField10: TIBBCDField;
    IBBCDField11: TIBBCDField;
    IBBCDField12: TIBBCDField;
    DateField11: TDateField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    DateField12: TDateField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    IBStringField87: TIBStringField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IBStringField88: TIBStringField;
    DataSource2: TDataSource;
    tblveiculos4ID_VENDEDOR: TIntegerField;
    tblveiculos4NOME: TIBStringField;
    tblveiculos4NOME1: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    tblveiculos4DATA_PEDIDO: TDateField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure CodigoContaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FecharDs;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport2BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure DisablePanels;
    procedure frxReport3BeforePrint(Sender: TfrxReportComponent);
    procedure JvTreeView1DblClick(Sender: TObject);
    procedure frxReport5BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport(Sender: TfrxReportComponent);
    procedure frxReport7BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport8BeforePrint(Sender: TfrxReportComponent);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CodigoVendedorExit(Sender: TObject);
    procedure frxReport9BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport10BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport11BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport12BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport13BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport14BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatoriosGerenciaisGerais: TBoxRelatoriosGerenciaisGerais;
  Retorno : String;
  idConta : Integer;
  idVendedor : Integer;
  i : Integer;

implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxRelatoriosGerenciaisGerais.BtnImprimirClick(Sender: TObject);
begin
if i = 0 then
 if (FDB1.IBDataSetLoginacesso101.AsString = 'T') or
 (FDB1.IBDataSetLoginADM.AsString = 'T') then
 begin
  with tblDespesas do
    begin
     Close;
     ParamByName('IdConta').AsString := CodigoConta.Text;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
    end;
  With IBQuery1 do
   begin
     Close;
     ParamByName('IdCodigoConta').AsString := CodigoConta.Text;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
     Total.Value := IBQuery1.FieldByName('Valor').AsVariant;
   end;
  frxReport1.ShowReport;
 end
 else
  Showmessage('Você não pode visualizar este relatório.');
if i = 1 then
 if (FDB1.IBDataSetLoginacesso102.AsString = 'T') or
  (FDB1.IBDataSetLoginADM.AsString = 'T') then
 begin
  with tblVeiculos1 do
   begin
    Close;
    Open;
   end;
  With IBQuery6 do
   begin
    Close;
    Open;
    Total.value := IBQuery6.FieldByName('Valor').AsVariant;
   end;
   frxReport3.ShowReport;
 end
 else
  Showmessage('Você não pode visualizar este relatório.');
if i = 2 then
 if (FDB1.IBDataSetLoginacesso103.AsString = 'T') or
  (FDB1.IBDataSetLoginADM.AsString = 'T') then
 begin
  with tblVeiculos do
   begin
    Close;
    ParamByName('DataInicial').AsDateTime := DataInicial.Date;
    ParamByName('DataFinal').AsDateTime := DataFinal.Date;
    Open;
   end;
   frxReport2.ShowReport;
 end
  else
   Showmessage('Você não pode visualizar este relatório.');
 if i = 3 then
  if (FDB1.IBDataSetLoginacesso104.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
  begin
    with tblAtendimento do
    begin
      Close;
      Open;
    end;
   frxReport3.ShowReport;
  end
  else
   Showmessage('Você não pode visualizar este relatório.');
 if i = 4 then
  if (FDB1.IBDataSetLoginacesso105.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
  begin
    with tblNofisa do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
     end;
    With IBQuery2 do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
       Total.Value := IBQuery2.FieldByName('Valor').AsVariant;
     end;
   frxReport5.ShowReport;
  end
  else
   Showmessage('Você não pode visualizar este relatório.');
 if i = 5 then
  if (FDB1.IBDataSetLoginacesso106.AsString = 'T') or
   (FDB1.IBDataSetLoginADM.AsString = 'T') then
  begin
    with tblReceitas do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       if Setor.Text = 'Peças balcão' then
          ParamByName('Origem').AsString := 'P';
       if Setor.Text = 'Peças pós-venda' then
          ParamByName('Origem').AsString := 'O';
       if Setor.Text = 'Serviços pós-venda' then
          ParamByName('Origem').AsString := 'O';
       if Setor.Text = 'Serviços garantia' then
          ParamByName('Origem').AsString := 'G';
       Open;
     end;
    With IBQuery3 do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       if Setor.Text = 'Peças balcão' then
          ParamByName('Origem').AsString := 'P';
       if Setor.Text = 'Peças pós-venda' then
          ParamByName('Origem').AsString := 'O';
       if Setor.Text = 'Serviços pós-venda' then
          ParamByName('Origem').AsString := 'O';
       if Setor.Text = 'Serviços garantia' then
          ParamByName('Origem').AsString := 'G';
       Open;
       Total.Value := IBQuery3.FieldByName('Valor').AsVariant;
     end;
     if Setor.Text = 'Serviços pós-venda' then
      begin
       with ibQuery4 do
        begin
          Close;
          ParamByName('DataInicial').AsDateTime := DataInicial.Date;
          ParamByName('DataFinal').AsDateTime := DataFinal.Date;
          ParamByName('Origem').AsString := 'O';
          Open;
          Total.Value := IBQuery4.FieldByName('Valor').AsVariant;
        end;
      end;
     if Setor.Text = 'Serviços garantia' then
      begin
       with ibQuery4 do
        begin
          Close;
          ParamByName('DataInicial').AsDateTime := DataInicial.Date;
          ParamByName('DataFinal').AsDateTime := DataFinal.Date;
          ParamByName('Origem').AsString := 'G';
          Open;
          Total.Value := IBQuery4.FieldByName('Valor').AsVariant;
        end;
      end;
     frxReport6.ShowReport;
  end
   else
     Showmessage('Você não pode visualizar este relatório.');
  if i = 6 then
   if (FDB1.IBDataSetLoginacesso107.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblCreceber do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
     end;
     frxReport7.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
  if i =7 then
   if (FDB1.IBDataSetLoginacesso108.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblPecasEstoque do
     begin
       Close;
       Open;
     end;
     With IBQuery5 do
     begin
       Close;
       Open;
       Total.value := IBQuery5.FieldByName('Valor').AsVariant;
     end;
     frxReport8.ShowReport;
   end;
   if i = 8 then
    if (FDB1.IBDataSetLoginacesso109.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     begin
       with tblPedidoVeiculos do
       begin
         Close;
         ParamByName('idVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
         ParamByName('DataInicial').AsDateTime := DataInicial.Date;
         ParamByName('DataFinal').AsDateTime := DataFinal.Date;
         Open;
       end;
       frxReport9.ShowReport;
     end;
   if i = 9 then
    if (FDB1.IBDataSetLoginacesso110.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     begin
       with tblNofisa2 do
       begin
         Close;
         ParamByName('idVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
         ParamByName('DataInicial').AsDateTime := DataInicial.Date;
         ParamByName('DataFinal').AsDateTime := DataFinal.Date;
         Open;
       end;
       frxReport10.ShowReport;
     end
   else
     Showmessage('Você não pode visualizar este relatório.');
  if i = 10 then
   if (FDB1.IBDataSetLoginacesso111.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblCPagar do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
     end;
     frxReport11.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
  if i = 11 then
   if (FDB1.IBDataSetLoginacesso112.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblCrecebid do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
     end;
     frxReport12.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
if i = 12 then
 if (FDB1.IBDataSetLoginacesso112.AsString = 'T') or
  (FDB1.IBDataSetLoginADM.AsString = 'T') then
 begin
  with tblVeiculos3 do
   begin
    Close;
    Open;
   end;
  With IBQuery7 do
   begin
    Close;
    Open;
    Total.value := IBQuery7.FieldByName('Valor').AsVariant;
   end;
   frxReport13.ShowReport;
 end
 else
  Showmessage('Você não pode visualizar este relatório.');
if i = 13 then
 if //(FDB1.IBDataSetLoginacesso112.AsString = 'T') or
  (FDB1.IBDataSetLoginADM.AsString = 'T') then
 begin
  with tblVeiculos4 do
   begin
    Close;
    Open;
   end;
  With IBQuery8 do
   begin
    Close;
    Open;
    Total.value := IBQuery8.FieldByName('Valor').AsVariant;
   end;
   frxReport14.ShowReport;
 end
 else
  Showmessage('Você não pode visualizar este relatório.');

end;

procedure TBoxRelatoriosGerenciaisGerais.CodigoContaExit(Sender: TObject);
begin
if CodigoConta.Text = '' then
   CodigoConta.Text := '0';
idConta := StrToInt(CodigoConta.Text);
if StrtoInt(CodigoConta.Text) = 0 then
  begin
   SpeedButton1.Click;
   CodigoConta.SetFocus;
  end
else
  begin
    with tblPlacon do
      begin
       if idConta<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idConta;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Conta inexistente.');
             CodigoConta.SetFocus;
            end
          else
            begin
              NomeConta.Text := FieldbyName('Descricao').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxRelatoriosGerenciaisGerais.CodigoVendedorExit(Sender: TObject);
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoVendedor.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idVendedor<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idVendedor;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Vendedor inexistente.');
             CodigoVendedor.SetFocus;
            end
          else
            begin
             if not FieldByName('Vendedor').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um vendedor.');
                Codigovendedor.SetFocus;
               end;
            end;
            NomeVendedor.Text := FieldbyName('Nome').Text;
         end;
      end;
  end;
end;

procedure TBoxRelatoriosGerenciaisGerais.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
   0 : begin
        with tblCreceber do
         begin
           Close;
           SelectSql.Clear;
           SelectSql.Add('select Creceber.*, Clientes.Nome from Creceber' +
           ' inner join Clientes on (Clientes.Id_Clientes = Creceber.Id_Clientes)' +
           ' where Creceber.Vencimento >= :DataInicial and Creceber.Vencimento <= :DataFinal' +
           ' and Creceber.Status =' + '''' + 'Processado' + '''');
         end;
        with tblCrecebid do
         begin
           Close;
           SelectSql.Clear;
           SelectSql.Add('select Creceber.*, Clientes.Nome from Creceber' +
           ' inner join Clientes on (Clientes.Id_Clientes = Creceber.Id_Clientes)' +
           ' where Creceber.Vencimento >= :DataInicial and Creceber.Vencimento <= :DataFinal' +
           ' and Creceber.Status =' + '''' + 'Recebido' + '''');
         end;
       end;
  end;
  if ComboBox1.ItemIndex > 0 then
    begin
       with tblCreceber do
          begin
            close;
            SelectSql.Clear;
            SelectSql.Add('select Creceber.*, Clientes.Nome from Creceber' +
            ' inner join Clientes on (Clientes.Id_Clientes = Creceber.Id_Clientes)' +
            ' where Creceber.Vencimento >= :DataInicial and Creceber.Vencimento <= :DataFinal' +
            ' and Creceber.Status =' + '''' + 'Processado' + '''' +
            ' and Creceber.Id_Forma_Pagamento = ' + IntToStr(ComboBox1.ItemIndex));
          end;
       with tblCrecebid do
          begin
            close;
            SelectSql.Clear;
            SelectSql.Add('select Creceber.*, Clientes.Nome from Creceber' +
            ' inner join Clientes on (Clientes.Id_Clientes = Creceber.Id_Clientes)' +
            ' where Creceber.Vencimento >= :DataInicial and Creceber.Vencimento <= :DataFinal' +
            ' and Creceber.Status =' + '''' + 'Recebido' + '''' +
            ' and Creceber.Id_Forma_Pagamento = ' + IntToStr(ComboBox1.ItemIndex));
          end;
     end;
end;

procedure TBoxRelatoriosGerenciaisGerais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxRelatoriosGerenciaisGerais := nil;
end;

procedure TBoxRelatoriosGerenciaisGerais.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxRelatoriosGerenciaisGerais.FormShow(Sender: TObject);
begin
  DataSourceFormas.Dataset.Open;
  DataSourceFormas.Dataset.First;
  i := 2;
  ComboBox1.Items.AddObject('TODOS',Pointer(1));
  Repeat
    ComboBox1.Items.AddObject(DataSourceFormas.DataSet.FieldByName('FORMA_PAGAMENTO').AsString,
     Pointer(DataSourceFormas.DataSet.FieldByName('ID_FORMAS_PAGAMENTO').AsInteger+1 ) );
    DataSourceFormas.Dataset.Next;
    i := i+1;
  Until DataSourceFormas.Dataset.Eof;
  ComboBox1.ItemIndex := 0;
  ComboBox1.DropDownCount := i;
  DisablePanels;
  JvTreeView1.SetFocus;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport10BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport10.Variables.clear;
 frxReport10.Variables['DataInicial'] := DataInicial.Date;
 frxReport10.Variables['DataFinal'] := DataFinal.Date;
 frxReport10.Variables['Total'] := Total.Value;
 frxReport10.Variables['Loja'] := ComboBoxLoja.Text;
 with tblPessoas do
 begin
   Close;
   ParamByName('Id').AsInteger := tblPedidoVeiculos.FieldByName('id_vendedor').AsInteger;
   Open;
 end;
// frxreport10.Variables['Vendedor'] := tblPessoas.FieldByName('Nome').AsString;

end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport11BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport11.Variables.clear;
 frxReport11.Variables['DataInicial'] := DataInicial.Date;
 frxReport11.Variables['DataFinal'] := DataFinal.Date;

end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport12BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport12.Variables.clear;
 frxReport12.Variables['DataInicial'] := DataInicial.Date;
 frxReport12.Variables['DataFinal'] := DataFinal.Date;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport13BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport13.Variables.clear;
 frxReport13.Variables['Total'] := Total.value; //tblVeiculos.RecordCount;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport14BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport14.Variables.clear;
 frxReport14.Variables['Total'] := Total.value; //tblVeiculos.RecordCount;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport1.Variables.clear;
 frxReport1.Variables['DataInicial'] := DataInicial.Date;
 frxReport1.Variables['DataFinal'] := DataFinal.Date;
 frxReport1.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport2BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport2.Variables.clear;
 frxReport2.Variables['DataInicial'] := DataInicial.Date;
 frxReport2.Variables['DataFinal'] := DataFinal.Date;
 frxReport2.Variables['Total'] := tblVeiculos.RecordCount;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport3BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport3.Variables.clear;
 frxReport3.Variables['Total'] := Total.value; //tblVeiculos.RecordCount;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport5BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport5.Variables.clear;
 frxReport5.Variables['DataInicial'] := DataInicial.Date;
 frxReport5.Variables['DataFinal'] := DataFinal.Date;
 frxReport5.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport7BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport7.Variables.clear;
 frxReport7.Variables['DataInicial'] := DataInicial.Date;
 frxReport7.Variables['DataFinal'] := DataFinal.Date;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport8BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport8.Variables.clear;
 frxReport8.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport9BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport9.Variables.clear;
 frxReport9.Variables['DataInicial'] := DataInicial.Date;
 frxReport9.Variables['DataFinal'] := DataFinal.Date;
 frxReport9.Variables['Total'] := Total.Value;
 if ComboBoxLoja.ItemIndex = 0 then
  begin
   frxReport9.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip').AsCurrency;
   frxReport9.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal').AsCurrency;
   frxReport9.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo').AsCurrency;
  end
 else
  begin
   frxReport9.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip2').AsCurrency;
   frxReport9.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal2').AsCurrency;
   frxReport9.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo2').AsCurrency;
  end;
 frxReport9.Variables['Loja'] := ComboBoxLoja.Text;
 with tblPessoas do
 begin
   Close;
   ParamByName('Id').AsInteger := tblPedidoVeiculos.FieldByName('id_vendedor').AsInteger;
   Open;
 end;
 frxreport9.Variables['Vendedor'] := tblPessoas.FieldByName('Nome').AsString;
end;

procedure TBoxRelatoriosGerenciaisGerais.frxReport(Sender: TfrxReportComponent);
begin
 frxReport6.Variables.clear;
 frxReport6.Variables['DataInicial'] := DataInicial.Date;
 frxReport6.Variables['DataFinal'] := DataFinal.Date;
 frxReport6.Variables['TotalProdutos'] := Total.Value;
 if Setor.Text = 'Peças balcão' then
   frxReport6.Variables['Setor'] := 'Peças balcão';
 if Setor.Text = 'Peças pós-venda' then
   frxReport6.Variables['Setor'] := 'Peças pós-venda';
 if Setor.Text = 'Serviços pós-venda' then
   frxReport6.Variables['Setor'] := 'Serviços pós-venda';
end;

procedure TBoxRelatoriosGerenciaisGerais.JvTreeView1DblClick(Sender: TObject);
begin
//if autorizado then
begin
  i := JvTreeView1.ItemIndex;
  Label3.Caption := JvTreeView1.Items.Item[i].Text;
  BtnImprimir.SetFocus;
  if i = 0 then
   begin
    Panel3.Enabled := True;
    Panel2.Enabled := True;
    CodigoConta.SetFocus;
   end;
  if i = 2 then
   begin
    Panel2.Enabled := True;
    DataInicial.SetFocus;
   end;
  if i = 3 then
   begin
    BtnImprimir.SetFocus;
   end;
  if i = 4 then
   begin
     Panel2.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 5 then
   begin
     Panel2.Enabled := True;
     Panel4.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 6 then
   begin
     Panel2.Enabled := True;
     Panel5.Enabled := True;
     DataInicial.SetFocus;
   end;
 if i = 8 then
   begin
     panel2.Enabled := True;
     Panel6.Enabled := True;
     DataInicial.SetFocus;
   end;
 if i = 9 then
   begin
     panel2.Enabled := True;
     Panel6.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 10 then
   begin
     Panel2.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 11 then
   begin
     Panel2.Enabled := True;
     Panel5.Enabled := True;
     DataInicial.SetFocus;
   end;

end
//else
//  Showmessage('Você não pode visualizar este relatório.');
end;

procedure TBoxRelatoriosGerenciaisGerais.SpeedButton1Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Código de contas','Placon',
      ['Descricao','Id_Placon','Conta'],
      ['Nome da conta:','Sequência:','Código da conta:'],
      'Descricao','Conta',Fdb1.SQLConnection1,'','','');
     with tblPlacon do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        idConta := tblPlacon.FieldByName('conta').AsInteger;
        NomeConta.Text := tblPlacon.FieldByName('Descricao').Text;
        CodigoConta.Text := tblPlacon.FieldByName('conta').AsString;
     end;
     CodigoConta.SetFocus;
end;

procedure TBoxRelatoriosGerenciaisGerais.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Vendedor = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoVendedor.Text :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeVendedor.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoVendedor.SetFocus;
end;

procedure TBoxRelatoriosGerenciaisGerais.DisablePanels;
begin
  Panel2.Enabled := False;
  Panel3.Enabled := False;
  i := 0;
end;

procedure TBoxRelatoriosGerenciaisGerais.FecharDs;
begin
  DataSourceDespesas.DataSet.Close;
  DataSourcePlacon.Dataset.Close;
  DataSourceVeiculos.DataSet.Close;
  DataSourceVeiculos1.DataSet.Close;
  DataSourceAtendimento.Dataset.Close;
  IBQuery1.Close;
end;

end.
