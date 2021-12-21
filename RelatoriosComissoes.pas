unit RelatoriosComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Buttons, Mask, rxToolEdit, DB,
  IBCustomDataSet, frxClass, frxDBSet;

type
  TBoxRelatoriosComissoes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    NomeVendedor: TDBEdit;
    CodigoVendedor: TEdit;
    ComboBoxLoja: TComboBox;
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
    tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField;
    tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField;
    tblPedidoVeiculosVALOR_VIP: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField;
    tblPedidoVeiculosVALOR_VIP2: TIBBCDField;
    tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField;
    tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField;
    DataSourcePedidoVeiculos: TDataSource;
    tblComissoes: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBStringField6: TIBStringField;
    DateField1: TDateField;
    IBStringField7: TIBStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IBBCDField3: TIBBCDField;
    IBStringField8: TIBStringField;
    IBBCDField4: TIBBCDField;
    IBStringField9: TIBStringField;
    IntegerField8: TIntegerField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    DateField2: TDateField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    DataSourceComissoes: TDataSource;
    frxReport1: TfrxReport;
    tblRelPedidoVeiculos: TfrxDBDataset;
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
    DataSourcePessoas: TDataSource;
    BtnImprimir: TBitBtn;
    tblRelConcessionaria: TfrxDBDataset;
    tblPessoasNOME: TIBStringField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblComissoesRENAVAM: TIBStringField;
    tblComissoesVALOR_TAXAS: TIBBCDField;
    tblComissoesID_MODELO_VEICULO: TIntegerField;
    tblComissoesFORMA_VISITA: TIBStringField;
    tblComissoesID_VEICULO_USADO: TIntegerField;
    tblComissoesDATA_PEDIDO: TDateField;
    tblComissoesNOME: TIBStringField;
    tblPedidoVeiculosRENAVAM: TIBStringField;
    tblPedidoVeiculosVALOR_TAXAS: TIBBCDField;
    tblPedidoVeiculosID_MODELO_VEICULO: TIntegerField;
    tblPedidoVeiculosFORMA_VISITA: TIBStringField;
    tblPedidoVeiculosID_VEICULO_USADO: TIntegerField;
    tblPedidoVeiculosDATA_PEDIDO: TDateField;
    tblPedidoVeiculosNOME: TIBStringField;
    procedure tblComissoesAfterCancel(DataSet: TDataSet);
    procedure tblComissoesAfterPost(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatoriosComissoes: TBoxRelatoriosComissoes;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxRelatoriosComissoes.BtnImprimirClick(Sender: TObject);
begin
   with tblPedidoVeiculos do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
    end;
   frxReport1.Variables.clear;
   frxReport1.Variables['DataInicial'] := DataInicial.Date;
   frxReport1.Variables['DataFinal'] := DataFinal.Date;
   frxReport1.ShowReport;
end;

procedure TBoxRelatoriosComissoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxRelatoriosComissoes.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
begin
 if ComboBoxLoja.ItemIndex = 0 then
  begin
   frxReport1.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip').AsFloat;
   frxReport1.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal').AsFloat;
   frxReport1.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo').Asfloat;
  end
 else
  begin
   frxReport1.Variables['ValorVip'] := tblPedidoVeiculos.FieldByName('Valor_Vip2').AsCurrency;
   frxReport1.Variables['ValorNormal'] := tblPedidoVeiculos.FieldByName('Valor_Normal2').AsCurrency;
   frxReport1.Variables['ValorExclusivo'] := tblPedidoVeiculos.FieldByName('Valor_Exclusivo2').AsCurrency;
  end;
  if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency > tblPedidoVeiculos.FieldByName('Valor_Exclusivo').AsCurrency then
    frxReport1.variables['perc'] := 0.8;
  if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency > tblPedidoVeiculos.FieldByName('Valor_Normal').AsCurrency then
    frxReport1.variables['perc'] := 1.0;
  if tblPedidoVeiculos.FieldByName('VALOR_DA_VENDA').AsCurrency >  tblPedidoVeiculos.FieldByName('Valor_VIP').AsCurrency then
    frxReport1.variables['perc'] := 1.2;
end;

procedure TBoxRelatoriosComissoes.tblComissoesAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxRelatoriosComissoes.tblComissoesAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

end.
