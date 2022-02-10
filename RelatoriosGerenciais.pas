unit RelatoriosGerenciais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ImgList, frxClass, Buttons,
  JvExStdCtrls, JvCombobox, Mask, rxToolEdit, frxADOComponents,
  DB, IBCustomDataSet, frxDBSet, frxChart, frxCross, System.ImageList;

type
  TBoxRelatoriosGerenciais = class(TForm)
    GroupBox1: TGroupBox;
    Tree: TTreeView;
    Image1: TImage;
    Label1: TLabel;
    ImageList1: TImageList;
    tblRelCreceber: TfrxDBDataset;
    tblCreceber: TIBDataSet;
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
    DataSourceCreceber: TDataSource;
    tblRelReceitas: TfrxDBDataset;
    tblrelNofisa: TfrxDBDataset;
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
    tblReceitas: TIBDataSet;
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
    DataSourceReceitas: TDataSource;
    DataSourceNofisa: TDataSource;
    DataSourceAtendimento: TDataSource;
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
    tblRelAtendimento: TfrxDBDataset;
    tblRelVeiculos1: TfrxDBDataset;
    tblRelVeiculos: TfrxDBDataset;
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
    DataSourceVeiculos: TDataSource;
    Label4: TLabel;
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
    procedure TreeCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    WPath : String;
    Relatorio : Integer;
  public
    { Public declarations }
  end;

var
  BoxRelatoriosGerenciais: TBoxRelatoriosGerenciais;

implementation

uses RelatoriosGerenciaisDespesas;


{$R *.dfm}

procedure TBoxRelatoriosGerenciais.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxRelatoriosGerenciais.FormShow(Sender: TObject);
begin
  WPath := ExtractFilePath(Application.ExeName);
  Tree.Items[0].Item[0].Selected := True;
end;

procedure TBoxRelatoriosGerenciais.TreeChange(Sender: TObject; Node: TTreeNode);
begin
  Relatorio := Node.StateIndex;
  if Node.StateIndex = -1 then
  begin
    Tree.FullCollapse;
    Node[0].Selected := True;
  end
  else
  begin
   if Node.StateIndex = 51 then //Gerencial de despesas
    begin
     if not Assigned(BoxRelatoriosGerenciaisDespesas) then
      BoxRelatoriosGerenciaisDespesas := TBoxRelatoriosGerenciaisDespesas.Create(Self);
      BoxRelatoriosGerenciaisDespesas.Show;
    end;
//    BtnImprimir.Enabled := True;
//    DataInicial.SetFocus;
//    frxReport1.LoadFromFile(WPath + IntToStr(Node.StateIndex) + '.fr3');
//    DadosFiltro.Caption := 'Dados para filtro do relatório: ' + IntToStr(Node.StateIndex) + '.fr3';
//    Memo.Lines := frxReport1.ReportOptions.Description;
  end;
end;

procedure TBoxRelatoriosGerenciais.TreeCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Node.Count <> 0 then
    Tree.Canvas.Font.Style := [fsBold];
end;

end.
