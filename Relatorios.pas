unit Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, frxClass,
  frxDBSet, Mask, DBCtrls, Grids, DBGrids, IBQuery, rxToolEdit, rxCurrEdit,
  JvExComCtrls, JvComCtrls, JvExStdCtrls, JvCombobox, ImgList, System.ImageList;

type
  TBoxRelatorios = class(TForm)
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
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    frxReport11: TfrxReport;
    tblSPC: TIBDataSet;
    DataSourceSPC: TDataSource;
    tblRelSPC: TfrxDBDataset;
    tblSPCID_CLIENTES: TIntegerField;
    tblSPCCODIGO: TIBStringField;
    tblSPCNOME: TIBStringField;
    tblSPCID_CONCESSIONARIA: TIntegerField;
    tblSPCVENDEDOR_YNOVA: TIBStringField;
    tblSPCIDENTIDADE: TIBStringField;
    tblSPCCPF: TIBStringField;
    tblSPCNUM_CPF: TIBStringField;
    tblSPCNASCIMENTO: TDateField;
    tblSPCPAI: TIBStringField;
    tblSPCMAE: TIBStringField;
    tblSPCENDERECO: TIBStringField;
    tblSPCBAIRRO: TIBStringField;
    tblSPCCIDADE: TIBStringField;
    tblSPCESTADO: TIBStringField;
    tblSPCCEP: TIBStringField;
    tblSPCCADASTRO: TDateField;
    tblSPCDESCONTO: TIBBCDField;
    tblSPCFONE1: TIBStringField;
    tblSPCFONE2: TIBStringField;
    tblSPCFONE3: TIBStringField;
    tblSPCCOENDERECO: TIBStringField;
    tblSPCCOBAIRRO: TIBStringField;
    tblSPCCOCIDADE: TIBStringField;
    tblSPCCOESTADO: TIBStringField;
    tblSPCCOCEP: TIBStringField;
    tblSPCSPC: TIBStringField;
    tblSPCREG_SPC: TIBStringField;
    tblSPCEMAIL: TIBStringField;
    tblSPCCLIENTE: TIBStringField;
    tblSPCFORNECEDOR: TIBStringField;
    tblSPCTRANSPORTADORA: TIBStringField;
    tblSPCFINANCEIRA: TIBStringField;
    tblSPCMECANICO: TIBStringField;
    tblSPCVENDEDOR: TIBStringField;
    tblSPCCONTA: TIBStringField;
    tblSPCCOMISSAO: TIBBCDField;
    tblSPCEMPRESA: TIBStringField;
    tblSPCADMISSAO: TDateField;
    tblSPCSALARIO: TIBBCDField;
    tblSPCEMPR_ENDERECO: TIBStringField;
    tblSPCEMPR_BAIRRO: TIBStringField;
    tblSPCEMPR_CIDADE: TIBStringField;
    tblSPCEMPR_ESTADO: TIBStringField;
    tblSPCEMPR_CEP: TIBStringField;
    tblSPCEMPR_FONE: TIBStringField;
    tblSPCREF_NOME1: TIBStringField;
    tblSPCREF_FONE1: TIBStringField;
    tblSPCREF_NOME2: TIBStringField;
    tblSPCREF_FONE2: TIBStringField;
    tblSPCREF_COML1: TIBStringField;
    tblSPCREF_COML_FONE1: TIBStringField;
    tblSPCREF_COML2: TIBStringField;
    tblSPCREF_COML_FONE2: TIBStringField;
    tblSPCREF_BANC: TIBStringField;
    tblSPCREF_AG_BANC: TIBStringField;
    tblSPCREF_CTA_BANC: TIBStringField;
    tblSPCFOTO: TIBStringField;
    tblSPCFABRICANTE: TIBStringField;
    tblSPCCODIGO_MUNICIPIO: TIBStringField;
    tblSPCNOME_VENDEDOR: TIBStringField;
    tblSPCCODIGOSGS: TIntegerField;
    tblPessoas2: TIBDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBStringField27: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    DateField4: TDateField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    DateField5: TDateField;
    IBBCDField4: TIBBCDField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    DateField6: TDateField;
    IBBCDField6: TIBBCDField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
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
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    DataSource1: TDataSource;
    tblCreceber2: TIBDataSet;
    DataSource2: TDataSource;
    tblPessoas2VENDEDOR_YNOVA: TIBStringField;
    tblPessoas2CODIGOSGS: TIntegerField;
    tblCreceber2ID_CRECEBER: TIntegerField;
    tblCreceber2ID_CONCESSIONARIA: TIntegerField;
    tblCreceber2ID_CLIENTES: TIntegerField;
    tblCreceber2ID_AVALISTA: TIntegerField;
    tblCreceber2ID_CRECEBER_RENEGOCIADO: TIntegerField;
    tblCreceber2DOCUMENTO: TIBStringField;
    tblCreceber2PARCELA: TIBStringField;
    tblCreceber2VEZES: TIBStringField;
    tblCreceber2ID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceber2ORIGEM: TIBStringField;
    tblCreceber2CONTA: TIBStringField;
    tblCreceber2VENCIMENTO: TDateField;
    tblCreceber2VALOR: TIBBCDField;
    tblCreceber2EMISSAO: TDateField;
    tblCreceber2TOTAL: TIBBCDField;
    tblCreceber2PAGAMENTO: TDateField;
    tblCreceber2VALOR_PAGO: TIBBCDField;
    tblCreceber2BANCO: TIBStringField;
    tblCreceber2HISTORICO: TIBStringField;
    tblCreceber2STATUS: TIBStringField;
    tblCreceber2ID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceber2BOLETO_EMITIDO: TIBStringField;
    ProgressBar1: TProgressBar;
    frxReport12: TfrxReport;
    tblRelPEcasEstoque2: TfrxDBDataset;
    DataSourcePecasEstoque2: TDataSource;
    tblPecasEstoque2: TIBDataSet;
    IntegerField11: TIntegerField;
    IntegerField13: TIntegerField;
    IBStringField79: TIBStringField;
    Panel7: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    tblPecasEstoque2CODIGO: TIBStringField;
    tblPecasEstoque2PRATELEIRA: TIBStringField;
    tblPecasEstoque2ESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoque2CORREDOR: TIBStringField;
    Local: TEdit;
    Label10: TLabel;
    Prateleira: TEdit;
    frxReport13: TfrxReport;
    tblRelNofi: TfrxDBDataset;
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
    tblNofisa2RECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisa2TRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisa2ID_MECANICO: TIntegerField;
    tblNofisa2ID_ATENDENTE: TIntegerField;
    Label12: TLabel;
    Corredor: TEdit;
    SpeedButton3: TSpeedButton;
    CodigoAtendente: TEdit;
    Label13: TLabel;
    NomeAtendente: TDBEdit;
    SpeedButton4: TSpeedButton;
    CodigoMecanico: TEdit;
    Label14: TLabel;
    NomeMecanico: TDBEdit;
    tblPecasEstoqueCODIGO: TIBStringField;
    tblPecasEstoqueID_PECAS_LOCALIZACAO: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA1: TIntegerField;
    tblPecasEstoqueID_PECAS1: TIntegerField;
    tblPecasEstoquePRATELEIRA: TIBStringField;
    tblPecasEstoqueESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoqueCORREDOR: TIBStringField;
    tblPecasEstoqueCODIGO_SGS: TIntegerField;
    IBQuery7: TIBQuery;
    frxReport14: TfrxReport;
    tblRelPecasEstoque3: TfrxDBDataset;
    DataSource3: TDataSource;
    tblPecasestoque3: TIBDataSet;
    tblPecasestoque3ID_PECAS_ESTOQUE: TIntegerField;
    tblPecasestoque3ID_PECAS: TIntegerField;
    tblPecasestoque3ID_CONCESSIONARIA: TIntegerField;
    tblPecasestoque3ESTOQUE: TIntegerField;
    tblPecasestoque3ESTOQOS: TIntegerField;
    tblPecasestoque3LOCAL: TIBStringField;
    tblPecasestoque3CST_MEDIO: TIBBCDField;
    tblPecasestoque3CST_ATUAL: TIBBCDField;
    tblPecasestoque3ULT_COMPRA: TDateField;
    tblPecasestoque3ULT_VENDA: TDateField;
    tblPecasestoque3ULT_PEDIDO: TDateField;
    tblPecasestoque3FORNECEDOR: TIBStringField;
    tblPecasestoque3PRATELEIRA: TIBStringField;
    tblPecasestoque3ESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoquePRATELEIRA1: TIBStringField;
    tblPecasEstoqueESCANINHO_GAVETA1: TIBStringField;
    tblPecasestoque3CODIGO: TIBStringField;
    DataSourceCPagar: TDataSource;
    tblCpagar: TIBDataSet;
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
    tblRelCPagar: TfrxDBDataset;
    frxReport15: TfrxReport;
    Panel8: TPanel;
    Label15: TLabel;
    NumeroNF: TEdit;
    Label16: TLabel;
    DataNF: TDateEdit;
    frxReport16: TfrxReport;
    tblrelNofi2: TfrxDBDataset;
    tblNofi2: TIBDataSet;
    DataSourceNofi2: TDataSource;
    tblNofi2ID_NOFI: TIntegerField;
    tblNofi2ID_CONCESSIONARIA: TIntegerField;
    tblNofi2ID_CLIENTES: TIntegerField;
    tblNofi2ID_CONHECIMENTO: TIntegerField;
    tblNofi2NUMERO: TIBStringField;
    tblNofi2SERIE: TIBStringField;
    tblNofi2EMISSAO: TDateField;
    tblNofi2CODIGO: TIBStringField;
    tblNofi2ORIGEM: TIBStringField;
    tblNofi2ENT_SAI: TIBStringField;
    tblNofi2VENDEDOR: TIBStringField;
    tblNofi2COMISSAO: TIBBCDField;
    tblNofi2SAIDA: TDateField;
    tblNofi2HORA: TIBStringField;
    tblNofi2CFOP: TIBStringField;
    tblNofi2NAT_OP: TIBStringField;
    tblNofi2IE_SUBS: TIBStringField;
    tblNofi2DESC_PEC: TIBBCDField;
    tblNofi2DESC_OFI: TIBBCDField;
    tblNofi2ICMS: TIBBCDField;
    tblNofi2BASE_ICM_S: TIBBCDField;
    tblNofi2VAL_ICMS_S: TIBBCDField;
    tblNofi2VAL_FRETE: TIBBCDField;
    tblNofi2VAL_SEGURO: TIBBCDField;
    tblNofi2VAL_OUTROS: TIBBCDField;
    tblNofi2VAL_IPI: TIBBCDField;
    tblNofi2VAL_SERV: TIBBCDField;
    tblNofi2ISSQN: TIBBCDField;
    tblNofi2VAL_ISS: TIBBCDField;
    tblNofi2TOT_PROD: TIBBCDField;
    tblNofi2TOT_NOTA: TIBBCDField;
    tblNofi2PIS: TIBBCDField;
    tblNofi2COFINS: TIBBCDField;
    tblNofi2COD_TRANS: TIBStringField;
    tblNofi2FRETE_TIPO: TIBStringField;
    tblNofi2PLACA: TIBStringField;
    tblNofi2DADOS_AD01: TIBStringField;
    tblNofi2DADOS_AD02: TIBStringField;
    tblNofi2DADOS_AD03: TIBStringField;
    tblNofi2DADOS_AD04: TIBStringField;
    tblNofi2OBS: TIBStringField;
    tblNofi2QTDE_PROD: TIntegerField;
    tblNofi2STATUS: TIBStringField;
    tblNofi2VAL_PIS: TIBBCDField;
    tblNofi2VAL_COFINS: TIBBCDField;
    tblNofi2CHAVE: TIBStringField;
    tblNofi2RECIBO: TIBStringField;
    tblNofi2PROTOCOLO: TIBStringField;
    tblNofi2ARQUIVO: TIBStringField;
    tblNofi2XML: TBlobField;
    tblNofi2PROTOCOLO_CONSULTA: TIBStringField;
    tblNofi2ID_DADOS_NFE: TIntegerField;
    tblNofi2ID_CONCESSIONARIA1: TIntegerField;
    tblNofi2NF: TIBStringField;
    tblNofi2ITEM: TIBStringField;
    tblNofi2QTDE: TIntegerField;
    tblNofi2CST: TIBStringField;
    tblNofi2CFOP1: TIntegerField;
    tblNofi2BASE_ICMS1: TIBBCDField;
    tblNofi2ALIQ_ICMS: TIBBCDField;
    tblNofi2VLR_ICMS: TIBBCDField;
    tblNofi2ICMS_SUBST: TIBBCDField;
    tblNofi2VLR_IPI: TIBBCDField;
    tblNofi2MODELO: TIBStringField;
    tblNofi2ANO_FABRICACAO: TIBStringField;
    tblNofi2ANO_MODELO: TIBStringField;
    tblNofi2COR: TIBStringField;
    tblNofi2MOTOR: TIBStringField;
    tblNofi2COMBUSTIVEL: TIBStringField;
    tblNofi2MARCA: TIBStringField;
    tblNofi2POTENCIA: TIBStringField;
    tblNofi2RENAVAM: TIBStringField;
    tblNofi2PROD_NUMERO: TIntegerField;
    tblNofi2ID_PECA: TIntegerField;
    tblNofi2ID_NOFI1: TIntegerField;
    tblNofi2ID_CONHECIMENTO1: TIntegerField;
    frxReport17: TfrxReport;
    tblRelDescontoFinanceira: TfrxDBDataset;
    tblDescontoFinanceira: TIBDataSet;
    DataSourceDescontoFinanceira: TDataSource;
    tblDescontoFinanceiraID_DESCONTO_FINANCEIRA: TIntegerField;
    tblDescontoFinanceiraID_CLIENTES: TIntegerField;
    tblDescontoFinanceiraID_PEDIDO: TIntegerField;
    tblDescontoFinanceiraVALOR: TIBBCDField;
    tblDescontoFinanceiraNUMERO_NF: TIntegerField;
    tblDescontoFinanceiraDATA_NF: TDateField;
    tblDescontoFinanceiraID_NOFISA: TIntegerField;
    tblDescontoFinanceiraNOME: TIBStringField;
    tblDescontoFinanceiraID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueSubs: TIBDataSet;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField81: TIBStringField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    DateField10: TDateField;
    DateField11: TDateField;
    DateField12: TDateField;
    IBStringField82: TIBStringField;
    DataSource4: TDataSource;
    tblRelPecasEstoqueSubs: TfrxDBDataset;
    frxReport18: TfrxReport;
    IBQuery8: TIBQuery;
    tblPecasEstoqueNCM: TIBDataSet;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IBStringField90: TIBStringField;
    IBBCDField11: TIBBCDField;
    IBBCDField12: TIBBCDField;
    DateField13: TDateField;
    DateField14: TDateField;
    DateField15: TDateField;
    DataSource5: TDataSource;
    tblRelPecasEstoqueNCM: TfrxDBDataset;
    frxReport19: TfrxReport;
    tblPecasEstoqueNCMFORNECEDOR: TIBStringField;
    tblPecasEstoqueNCMPRATELEIRA: TIBStringField;
    tblPecasEstoqueNCMESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoqueNCMDESCRICAO: TIBStringField;
    tblPecasEstoqueNCMCODIGO: TIBStringField;
    tblPecasEstoqueNCMNCM: TIBStringField;
    tblPecasEstoqueSubsPRATELEIRA: TIBStringField;
    tblPecasEstoqueSubsESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoqueSubsCODIGO: TIBStringField;
    tblPecasEstoqueSubsNOVASUBS: TIBStringField;
    Panel9: TPanel;
    Label17: TLabel;
    DataRelatorio: TDateEdit;
    Label18: TLabel;
    Pagina: TEdit;
    CheckBox1: TCheckBox;
    IBQuery9: TIBQuery;
    frxReport20: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    dtsPecasInventario: TDataSource;
    tblVendasPeriodo: TIBDataSet;
    tblPecasInventario: TIBDataSet;
    tblPecasInventarioCODIGO: TIBStringField;
    tblPecasInventarioUNIDADE: TIBStringField;
    tblEntradas: TIBDataSet;
    tblPecasInventarioID_PECAS: TIntegerField;
    tblPecasInventarioESTOQUE: TIntegerField;
    tblSaidas: TIBDataSet;
    tblEntradasQUANTIDADE: TLargeintField;
    tblSaidasQUANTIDADE: TLargeintField;
    tblPecasInventarioSALDOATUAL: TIntegerField;
    tblEntradasID_PECAS: TIntegerField;
    tblSaidasID_PECAS: TIntegerField;
    tblPecasInventarioENTRADAS: TIntegerField;
    tblPecasInventarioSAIDAS: TIntegerField;
    tblPecasInventarioCST_MEDIO: TIBBCDField;
    tblPecasInventarioCST_MEDIO_TOTAL: TCurrencyField;
    DataSourceVendasPeriodo: TDataSource;
    tblRelVendasPeriodo: TfrxDBDataset;
    frxReport21: TfrxReport;
    tblVendasPeriodoNUMERO: TIntegerField;
    tblVendasPeriodoEMISSAO: TDateField;
    tblVendasPeriodoTOT_NOTA: TIBBCDField;
    tblVendasPeriodoNOME: TIBStringField;
    tblVendasPeriodoID_CLIENTES: TIntegerField;
    tblVendasPeriodoCPF: TIBStringField;
    tblVendasPeriodoCODIGO: TIBStringField;
    tblVendasPeriodoDESCRICAO: TIBStringField;
    tblVendasPeriodoQTDE: TSmallintField;
    tblVendasPeriodoPRECO: TIBBCDField;
    tblVendasPeriodoFONE1: TIBStringField;
    tblVendasPeriodoID_NOFISA: TIntegerField;
    tblVendasPeriodoORIGEM: TIBStringField;
    tblVendasPeriodoCODIGO_FISCAL: TIBStringField;
    tblNofi2VLR_FRETE: TFMTBCDField;
    tblNofi2VLR_SEGURO: TFMTBCDField;
    tblNofi2BASE_ICMS: TFMTBCDField;
    tblNofi2VAL_ICMS: TFMTBCDField;
    tblNofi2VLR_UNIT: TFMTBCDField;
    tblNofiBASE_ICMS: TFMTBCDField;
    tblNofiVAL_ICMS: TFMTBCDField;
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
    tblNofiCHAVE: TIBStringField;
    tblNofiRECIBO: TIBStringField;
    tblNofiPROTOCOLO: TIBStringField;
    tblNofiARQUIVO: TIBStringField;
    tblNofiXML: TBlobField;
    tblNofiPROTOCOLO_CONSULTA: TIBStringField;
    tblCreceberNOME: TIBStringField;
    tblPessoas2NOME: TIBStringField;
    tblPessoas2FATURA_COM_DEBITOS: TIBStringField;
    tblPessoas2NUMERO: TIBStringField;
    tblPessoas2COMPLEMENTO: TIBStringField;
    tblPessoas2RETENCAO_ISS: TIBStringField;
    tblPessoas2CONSUMIDOR: TIBStringField;
    CheckBox2: TCheckBox;
    tblPecasEstoqueDESCRICAO: TIBStringField;
    tblPecasEstoque2DESCRICAO: TIBStringField;
    tblPecasestoque3DESCRICAO: TIBStringField;
    tblPecasEstoqueSubsDESCRICAO: TIBStringField;
    tblPecasInventarioDESCRICAO: TIBStringField;
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
    procedure tblPessoas2AfterPost(DataSet: TDataSet);
    procedure tblPessoas2AfterCancel(DataSet: TDataSet);
    procedure frxReport13BeforePrint(Sender: TfrxReportComponent);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure frxReport14BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport15BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport16BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport17BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport18BeforePrint(Sender: TfrxReportComponent);
    procedure tblPecasInventarioCalcFields(DataSet: TDataSet);
    procedure frxReport20BeforePrint(Sender: TfrxReportComponent);
    procedure tblPecasInventarioFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure frxReport21BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatorios: TBoxRelatorios;
  Retorno : String;
  idConta : Integer;
  idVendedor : Integer;
  i : Integer;

implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxRelatorios.BtnImprimirClick(Sender: TObject);
var
 asql : String;
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
     ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
    end;
  With IBQuery1 do
   begin
     Close;
     ParamByName('IdCodigoConta').AsString := CodigoConta.Text;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
     ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
   end;
  With IBQuery6 do
   begin
    Close;
     ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
     ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
      ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
    end;
   frxReport4.ShowReport;
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
       ParamByName('IdConcessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
    With IBQuery2 do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       ParamByName('IdConcessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
       ParamByName('IdConcessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
          ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
          ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     With IBQuery5 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Total.value := IBQuery5.FieldByName('Valor').AsVariant;
     end;
     if CheckBox1.Checked then
        frxReport8.LoadFromFile('InventarioLocalizacao.fr3')
     else
        frxReport8.LoadFromFile('InventarioContabil.fr3');
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
       if Setor.Text = 'Peças balcão' then
        begin
          SelectSql.Clear;
          SelectSql.Add('select Nofisa.*, Clientes.Nome from Nofisa');
          SelectSql.Add('inner join Clientes on (Nofisa.Id_Clientes = Clientes.Id_clientes)');
          SelectSql.Add('where Nofisa.vendedor = :idVendedor and');
          SelectSql.Add('Nofisa.Emissao >= :DataInicial and Nofisa.Emissao <= :DataFinal and');
          SelectSql.Add('Nofisa.Origem = :Origem and Nofisa.Id_Concessionaria = :idConcessionaria and');
          SelectSql.Add('Nofisa.ENT_SAI = '+''''+'S'+'''');
          SelectSql.Add(' and (Nofisa.Status = '+''''+'NF-e Autorizada'+''''+' or ' + 'Nofisa.Status = ' + ''''+'Processado'+''''+') order by nofisa.numero');
          ParamByName('Origem').AsString := 'P';
          ParamByName('idVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
        end;
       if Setor.Text = 'Peças pós-venda' then
         begin
          SelectSql.Clear;
          SelectSql.Add('select Nofisa.*, Clientes.Nome from Nofisa');
          SelectSql.Add('inner join Clientes on (Nofisa.Id_Clientes = Clientes.Id_clientes)');
          SelectSql.Add('Where ');
          if CodigoAtendente.Text <> '' then
            SelectSql.Add('Nofisa.id_Atendente = :idAtendente and');
          if CodigoMecanico.Text <> '' then
            SelectSql.Add('Nofisa.id_Mecanico = :idMecanico and');
          if CodigoVendedor.Text <> '' then
            SelectSql.Add('Nofisa.id_Vendedor = :idvendedor and');
          SelectSql.Add('Nofisa.Emissao >= :DataInicial and Nofisa.Emissao <= :DataFinal and');
          SelectSql.Add('Nofisa.Origem = :Origem and Nofisa.Id_Concessionaria = :idConcessionaria and');
          SelectSql.Add('Nofisa.ENT_SAI = '+''''+'S'+'''');
          SelectSql.Add(' and (Nofisa.Status = '+''''+'NF-e Autorizada'+''''+' or ' + 'Nofisa.Status = ' + ''''+'Processado'+''''+') order by nofisa.numero');
          ParamByName('Origem').AsString := 'O';
          if CodigoVendedor.Text <> '' then
            ParamByName('idVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
          if CodigoAtendente.Text <> '' then
            ParamByName('idAtendente').AsInteger := StrToInt(CodigoAtendente.Text);
          if CodigoMecanico.Text <> '' then
            ParamByName('idMecanico').AsInteger := StrToInt(CodigoMecanico.Text);
         end;
       if Setor.Text = 'Serviços pós-venda' then
         begin;
          SelectSql.Clear;
          SelectSql.Add('select Nofisa.*, Clientes.Nome from Nofisa');
          SelectSql.Add('inner join Clientes on (Nofisa.Id_Clientes = Clientes.Id_clientes)');
          SelectSql.Add('Where ');
          if CodigoAtendente.Text <> '' then
            SelectSql.Add('Nofisa.id_Atendente = :idAtendente and');
          if CodigoMecanico.Text <> '' then
            SelectSql.Add('Nofisa.id_Mecanico = :idMecanico and');
          if CodigoVendedor.Text <> '' then
            SelectSql.Add('Nofisa.id_Vendedor = :idvendedor and');
          SelectSql.Add('Nofisa.Emissao >= :DataInicial and Nofisa.Emissao <= :DataFinal and');
          SelectSql.Add('Nofisa.Origem = :Origem and Nofisa.Id_Concessionaria = :idConcessionaria and');
          SelectSql.Add('Nofisa.ENT_SAI = '+''''+'S'+'''');
          SelectSql.Add(' and (Nofisa.Status = '+''''+'NF-e Autorizada'+''''+' or '+'Nofisa.Status = ' +
          ''''+'Processado'+''''+') order by nofisa.numero');
          ParamByName('Origem').AsString := 'O';
          if CodigoVendedor.Text <> '' then
            ParamByName('idVendedor').AsInteger := StrToInt(CodigoVendedor.Text);
          if CodigoAtendente.Text <> '' then
            ParamByName('idAtendente').AsInteger := StrToInt(CodigoAtendente.Text);
          if CodigoMecanico.Text <> '' then
            ParamByName('idMecanico').AsInteger := StrToInt(CodigoMecanico.Text);
         end;
         PAramByName('idConcessionaria').AsInteger :=
           StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
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
      with tblPessoas2 do
       begin
        Open;
        Last;
        ProgressBar1.Max := tblPessoas2.RecordCount;
        First;
        case MessageDlg('Deseja atualizar os débitos?', mtConfirmation, [mbYes,mbNo], 0) of
         mrYes:
         begin
          while not tblPessoas2.eof do
           begin
            with tblCreceber2 do
             begin
  //              inc(o);
                ProgressBar1.Position := tblPessoas2.RecNo;
    //            if ProgressBar1.Position = 10000 then
      //            o := 0;
               tblCreceber2.Close;
               tblCreceber2.ParamByName('DataAtual').AsDateTime := DataAtual;
               tblCreceber2.ParamByName('idClientes').AsInteger := tblPessoas2.FieldByName('id_Clientes').AsInteger;
               tblCreceber2.Open;
               if tblCreceber2.recordCount = 0 then
                 begin
                   tblPessoas2.Edit;
                   tblPessoas2.FieldByName('SPC').AsString := 'F';
                   tblPessoas2.Post;
                 end
               else
                 begin
                   tblPessoas2.Edit;
                   tblPessoas2.FieldByName('SPC').AsString := 'T';
                   tblPessoas2.Post;
                 end;
             end;
//              showmessage(inttostr(tblPessoas2.Recno)+'    '+ inttostr(tblPessoas2.Recordcount));
             tblPessoas2.Next;
           end;
           tblCreceber2.Close;
         end;
         end;
       end;
       tblPessoas2.Close;
       tblRelSPC.Open;
       if tblRElSPC.recordCount <> 0 then
         frxReport11.ShowReport
       else
         Showmessage('Não há dados para gerar.');
       tblRelSPC.Close;
     end
    else
     Showmessage('Você não pode visualizar este relatório.');
   if i = 11 then
    if (FDB1.IBDataSetLoginACESSO112.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     begin
       if checkBox2.Checked then
          asql := ' and pe.estoque <> 0)'
       else
          asql :=  ')';
       with tblPecasEstoque2 do
       begin
         Close;
         SelectSql.Clear;
         if local.Text <> '' then
             {
            select
             DISTINCT (p.codigo),
            pe.ID_PECAS, p.descricao,
            PE.ESTOQUE, PL.CORREDOR, PL.ESCANINHO_GAVETA,
            PL.PRATELEIRA, pe.local

            from PECAS_ESTOQUE pe

            inner join Pecas p on (P.Id_pecas = Pe.Id_Pecas and
            pe.id_concessionaria = :idConcessionaria)
            inner join pecas_localizacao pl on (Pl.Id_pecas = Pe.Id_Pecas and
            pl.id_concessionaria = :idConcessionaria)
            where
            SUBSTRING( coalesce( pe.LOCAL,'' ) from 1 for 1) > :IdLocal1
            and
            coalesce( pe.LOCAL,'' ) < :IdLocal2
            and
            pe.Id_Concessionaria = :idConcessionaria
            and
            pl.id_Concessionaria = :IdConcessionaria
            order by pe.local, pl.prateleira
            }
           begin
            SelectSql.Add('select pe.*, p.descricao, p.codigo, pl.*' +
              ' from PECAS_ESTOQUE pe' +
              ' left join Pecas p on (P.Id_pecas = Pe.Id_Pecas AND pe.id_Concessionaria = :idConcessionaria)' +
              ' left join pecas_localizacao pl on (Pl.Id_pecas = Pe.Id_Pecas and pl.id_Concessionaria = :idConcessionaria)' +
              ' where (SUBSTRING(pe.LOCAL from 1 for 2) = :IdLocal' +
              ' and pe.Id_Concessionaria = :idConcessionaria' +  asql +
              ' order by pe.local');
            ParamByName('idLocal').AsString := local.text;
            ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           end
         else
           if prateleira.Text <> '' then
             begin
              SelectSql.Add('select pe.*, p.descricao, p.codigo, pl.*' +
                ' from PECAS_ESTOQUE pe' +
                ' left join Pecas p on (P.Id_pecas = Pe.Id_Pecas AND pe.id_Concessionaria = :idConcessionaria)' +
                ' left join pecas_localizacao pl on (Pl.Id_pecas = Pe.Id_Pecas and pl.id_Concessionaria = :idConcessionaria)' +
             //   ' where pe.Corredor = :idCorredor and pe.Prateleira = :IdPrateleira' +
                ' where (pe.Prateleira = :IdPrateleira' +
                ' and pe.Id_Concessionaria = :idConcessionaria' + asql +
                ' order by pe.escaninho_Gaveta');
//              ParamByName('idCorredor').AsString := corredor.text;
              ParamByName('idPrateleira').AsString := prateleira.text;
              ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             end
           else
             begin
              SelectSql.Add('select pe.*, p.descricao, p.codigo, pl.*' +
                ' from PECAS_ESTOQUE pe' +
                ' left join Pecas p on (P.Id_pecas = Pe.Id_Pecas AND pe.id_Concessionaria = :idConcessionaria)' +
                ' left join pecas_localizacao pl on (Pl.Id_pecas = Pe.Id_Pecas and pl.id_Concessionaria = :idConcessionaria)' +
                ' where (pe.Id_Concessionaria = :idConcessionaria' +  asql +
                ' order by pe.prateleira,pe.escaninho_gaveta');
              ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
             end;
          Open;
       end;
       frxReport12.ShowReport;
     end;
   if i = 12 then
    if (FDB1.IBDataSetLoginACESSO113.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     begin
       with tblNofi do
        begin
         Close;
         ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
         ParamByName('DataInicial').AsDateTime := DataInicial.Date;
         ParamByName('DataFinal').AsDateTime := DataFinal.Date;
         Open;
        end;
       frxReport13.ShowReport;

     end
    else
     Showmessage('Você não pode visualizar este relatório.');
   if i = 13 then
    if (FDB1.IBDataSetLoginACESSO114.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     begin
     with tblPecasEstoque3 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     With IBQuery7 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Total.value := IBQuery7.FieldByName('Valor').AsVariant;
     end;
       frxReport14.ShowReport;
     end
    else
     Showmessage('Você não pode visualizar este relatório.');
  if i = 14 then
   if (FDB1.IBDataSetLoginacesso115.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblCPagar do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     frxReport15.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
  if i = 15 then
   if (FDB1.IBDataSetLoginacesso116.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblNofi2 do
     begin
       Close;
       ParamByName('DataEmissao').AsDateTime := DataNF.Date;
       ParamByName('Numero').AsString := NumeroNF.Text;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     frxReport16.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
  if i = 16 then
   if (FDB1.IBDataSetLoginacesso117.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblDescontoFinanceira do
     begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
     end;
     frxReport17.ShowReport;
   end
   else
    Showmessage('Você não pode visualizar este relatório.');
  if i =17 then
   if (FDB1.IBDataSetLoginacesso118.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblPecasEstoqueSubs do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     With IBQuery8 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Total.value := IBQuery8.FieldByName('Valor').AsVariant;
     end;
     frxReport18.ShowReport;
   end;
  if i =18 then
   if (FDB1.IBDataSetLoginacesso119.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
     with tblPecasEstoqueNCM do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
      Showmessage('19');
     frxReport19.ShowReport;
   end;
  if i =19 then
   if (FDB1.IBDataSetLoginacesso120.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin

     statusbar1.SimpleText := 'Abrindo tabelas';

    with tblEntradas do
    begin
      close;
      parambyname( 'data_ref' ).asDateTime  := dataRelatorio.DAte;
      ParamByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      open;
    end;

    with tblSaidas do
    begin
      close;
      parambyname( 'data_ref' ).asDateTime  := dataRelatorio.DAte;
      ParamByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      open;
    end;
     with tblPecasInventario do
     begin
      Close;
      ParamByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
     end;
     statusbar1.SimpleText := 'Preparando relatório';
     frxReport20.PrepareReport;
     frxReport20.ShowPreparedReport;
     statusbar1.SimpleText := '';
   end;
  if i =20 then
   if (FDB1.IBDataSetLoginacesso121.AsString = 'T') or
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
   begin
    with tblVendasPeriodo do
    begin
      close;
      parambyname( 'Inicio' ).asDateTime  := dataInicial.DAte;
      parambyname( 'Final' ).asDateTime  := dataFinal.DAte;
      open;
    end;
     frxReport21.ShowReport;
   end;
end;


procedure TBoxRelatorios.CodigoContaExit(Sender: TObject);
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

procedure TBoxRelatorios.CodigoVendedorExit(Sender: TObject);
begin
if CodigoVendedor.Text = '' then
   CodigoVendedor.Text := '0';
idVendedor := StrToInt(CodigoVendedor.Text);
if StrtoInt(CodigoVendedor.Text) <> 0 then
{  begin
   SpeedButton2.Click;
   CodigoVendedor.SetFocus;
  end
else}
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

procedure TBoxRelatorios.ComboBox1Change(Sender: TObject);
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
           ' and Creceber.Id_Concessionaria = :idConcessionaria' +
           ' and Creceber.Status =' + '''' + 'Processado' + '''');
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
            ' and Creceber.Id_Concessionaria = :idConcessionaria' +
            ' and Creceber.Status =' + '''' + 'Processado' + '''' +
            ' and Creceber.Id_Forma_Pagamento = ' + IntToStr(ComboBox1.ItemIndex));
          end;
     end;
end;

procedure TBoxRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxRelatorios := nil;
end;

procedure TBoxRelatorios.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxRelatorios.FormShow(Sender: TObject);
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

procedure TBoxRelatorios.frxReport10BeforePrint(Sender: TfrxReportComponent);
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

procedure TBoxRelatorios.frxReport13BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport13.Variables.clear;
 frxReport13.Variables['DataInicial'] := DataInicial.Date;
 frxReport13.Variables['DataFinal'] := DataFinal.Date;
end;

procedure TBoxRelatorios.frxReport14BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport14.Variables.clear;
 frxReport14.Variables['Total'] := Total.Value;

end;

procedure TBoxRelatorios.frxReport15BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport15.Variables.clear;
 frxReport15.Variables['DataInicial'] := DataInicial.Date;
 frxReport15.Variables['DataFinal'] := DataFinal.Date;

end;

procedure TBoxRelatorios.frxReport16BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport16.Variables.clear;
// frxReport16.Variables['DataInicial'] := DataInicial.Date;
// frxReport16.Variables['DataFinal'] := DataFinal.Date;
// frxReport16.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatorios.frxReport17BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport17.Variables.clear;
 frxReport17.Variables['DataInicial'] := DataInicial.Date;
 frxReport17.Variables['DataFinal'] := DataFinal.Date;

end;

procedure TBoxRelatorios.frxReport18BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport18.Variables.clear;
 frxReport18.Variables['Total'] := Total.Value;

end;

procedure TBoxRelatorios.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport1.Variables.clear;
 frxReport1.Variables['DataInicial'] := DataInicial.Date;
 frxReport1.Variables['DataFinal'] := DataFinal.Date;
 frxReport1.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatorios.frxReport20BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport20.Variables.clear;
 frxReport20.Variables['Total']  := Total.Value;
 frxReport20.variables['Pagina'] := Pagina.Text;
 frxReport20.variables['Data']   := DataRelatorio.Date;//quotedStr( BoxEmpresas.ConcessionariaCidade.Text +

end;

procedure TBoxRelatorios.frxReport21BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport21.Variables.clear;
 frxReport21.Variables['Total']  := Total.Value;
 frxReport21.variables['Pagina'] := Pagina.Text;
 frxReport21.variables['Data']   := dateToStr(DataInicial.Date) + ' a ' + DateToSTR(DataFinal.Date);
end;

procedure TBoxRelatorios.frxReport2BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport2.Variables.clear;
 frxReport2.Variables['DataInicial'] := DataInicial.Date;
 frxReport2.Variables['DataFinal'] := DataFinal.Date;
 frxReport2.Variables['Total'] := tblVeiculos.RecordCount;
end;

procedure TBoxRelatorios.frxReport3BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport3.Variables.clear;
 frxReport3.Variables['Total'] := Total.value; //tblVeiculos.RecordCount;
 frxReport3.variables['Pagina'] := Pagina.Text;
 frxReport3.variables['Data']   := DataRelatorio.Date;//quotedStr( BoxEmpresas.ConcessionariaCidade.Text +
end;

procedure TBoxRelatorios.frxReport5BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport5.Variables.clear;
 frxReport5.Variables['DataInicial'] := DataInicial.Date;
 frxReport5.Variables['DataFinal'] := DataFinal.Date;
 frxReport5.Variables['Total'] := Total.Value;
end;

procedure TBoxRelatorios.frxReport7BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport7.Variables.clear;
 frxReport7.Variables['DataInicial'] := DataInicial.Date;
 frxReport7.Variables['DataFinal'] := DataFinal.Date;
end;

procedure TBoxRelatorios.frxReport8BeforePrint(Sender: TfrxReportComponent);
begin
 frxReport8.Variables.clear;
 frxReport8.Variables['Total']  := Total.Value;
 frxReport8.variables['Pagina'] := Pagina.Text;
 frxReport8.variables['Data']   := DataRelatorio.Date;//quotedStr( BoxEmpresas.ConcessionariaCidade.Text +
//            ', ' + formatDateTime( 'dd ''de'' MMMM ''de'' yyyy' , data.Date ) );
end;

procedure TBoxRelatorios.frxReport9BeforePrint(Sender: TfrxReportComponent);
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

procedure TBoxRelatorios.frxReport(Sender: TfrxReportComponent);
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

procedure TBoxRelatorios.JvTreeView1DblClick(Sender: TObject);
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
  if i = 1 then
   begin
    Panel9.Enabled := True;
    DataRelatorio.SetFocus;
   end;
  if (i = 2) or (i=20) then
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
  if i = 7 then
   begin
     Panel9.Enabled := True;
     DataRelatorio.SetFocus;
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
     Panel4.Enabled := True;
     DataInicial.SetFocus;
   end;
 if (i = 10) or (i =17) or (i = 18) then
   begin
     btnImprimir.SetFocus;
   end;
 if i =11 then
   begin
     panel7.Enabled := true;
     Local.SetFocus;
   end;
 if i = 12 then
   begin
     panel2.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 0 then
   begin
    BtnImprimir.SetFocus;
   end;
  if i = 14 then
   begin
     Panel2.Enabled := True;
     Panel5.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 15 then
   begin
     Panel8.Enabled := True;
     NumeroNF.SetFocus;
   end;
  if i = 16 then
   begin
     Panel2.Enabled := True;
     DataInicial.SetFocus;
   end;
  if i = 19 then
   begin
     Panel9.Enabled := True;
     DataRelatorio.SetFocus;
   end;

end
end;

procedure TBoxRelatorios.SpeedButton1Click(Sender: TObject);
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

procedure TBoxRelatorios.SpeedButton2Click(Sender: TObject);
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

procedure TBoxRelatorios.SpeedButton3Click(Sender: TObject);
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
        CodigoAtendente.Text :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeAtendente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoAtendente.SetFocus;
end;

procedure TBoxRelatorios.SpeedButton4Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Mecanico = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
        CodigoMecanico.Text :=
          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeMecanico.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoMecanico.SetFocus;
end;

procedure TBoxRelatorios.tblPecasInventarioCalcFields(DataSet: TDataSet);
begin
    with tblPecasInventario do
    begin
        fieldbyname( 'saldoatual' ).asInteger :=    fieldbyname( 'estoque' ).asInteger -
                                                  ( fieldbyname( 'entradas' ).asInteger -
                                                    fieldbyname( 'saidas' ).asInteger );
        fieldbyname( 'cst_medio_total' ).asCurrency := fieldbyname( 'estoque' ).asInteger *
                                                       fieldbyname( 'cst_medio' ).asCurrency;
    end;
end;

procedure TBoxRelatorios.tblPecasInventarioFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   accept := tblPecasInventario.fieldbyname( 'saldoAtual' ).asInteger > 0;
end;

procedure TBoxRelatorios.tblPessoas2AfterCancel(DataSet: TDataSet);
begin
  FDb1.IBtransaction.RollbackRetaining;
end;

procedure TBoxRelatorios.tblPessoas2AfterPost(DataSet: TDataSet);
begin
   FDB1.IBTransaction.CommitRetaining;
end;

procedure TBOXrelatorios.DisablePanels;
begin
  Panel2.Enabled := False;
  Panel3.Enabled := False;
  i := 0;
end;

procedure TBoxRelatorios.FecharDs;
begin
  DataSourceDespesas.DataSet.Close;
  DataSourcePlacon.Dataset.Close;
  DataSourceVeiculos.DataSet.Close;
  DataSourceVeiculos1.DataSet.Close;
  DataSourceAtendimento.Dataset.Close;
  IBQuery1.Close;
end;

end.
