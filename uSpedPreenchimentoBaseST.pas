unit uSpedPreenchimentoBaseST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  IBX.IBQuery, frxClass, frxDBSet, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TBoxSpedPreenchimentoBaseST = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    tblPecas: TIBDataSet;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
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
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
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
    tblNofi3: TIBDataSet;
    tblNofi3ID_NOFI: TIntegerField;
    tblNofi3ID_CONCESSIONARIA: TIntegerField;
    tblNofi3ID_CLIENTES: TIntegerField;
    tblNofi3ID_CONHECIMENTO: TIntegerField;
    tblNofi3NUMERO: TIBStringField;
    tblNofi3SERIE: TIBStringField;
    tblNofi3EMISSAO: TDateField;
    tblNofi3CODIGO: TIBStringField;
    tblNofi3ORIGEM: TIBStringField;
    tblNofi3ENT_SAI: TIBStringField;
    tblNofi3VENDEDOR: TIBStringField;
    tblNofi3COMISSAO: TIBBCDField;
    tblNofi3SAIDA: TDateField;
    tblNofi3HORA: TIBStringField;
    tblNofi3CFOP: TIBStringField;
    tblNofi3NAT_OP: TIBStringField;
    tblNofi3IE_SUBS: TIBStringField;
    tblNofi3DESC_PEC: TIBBCDField;
    tblNofi3DESC_OFI: TIBBCDField;
    tblNofi3ICMS: TIBBCDField;
    tblNofi3BASE_ICMS: TFMTBCDField;
    tblNofi3VAL_ICMS: TFMTBCDField;
    tblNofi3BASE_ICM_S: TIBBCDField;
    tblNofi3VAL_ICMS_S: TIBBCDField;
    tblNofi3VAL_FRETE: TIBBCDField;
    tblNofi3VAL_SEGURO: TIBBCDField;
    tblNofi3VAL_OUTROS: TIBBCDField;
    tblNofi3VAL_IPI: TIBBCDField;
    tblNofi3VAL_SERV: TIBBCDField;
    tblNofi3ISSQN: TIBBCDField;
    tblNofi3VAL_ISS: TIBBCDField;
    tblNofi3TOT_PROD: TIBBCDField;
    tblNofi3TOT_NOTA: TIBBCDField;
    tblNofi3PIS: TIBBCDField;
    tblNofi3COFINS: TIBBCDField;
    tblNofi3COD_TRANS: TIBStringField;
    tblNofi3FRETE_TIPO: TIBStringField;
    tblNofi3PLACA: TIBStringField;
    tblNofi3DADOS_AD01: TIBStringField;
    tblNofi3DADOS_AD02: TIBStringField;
    tblNofi3DADOS_AD03: TIBStringField;
    tblNofi3DADOS_AD04: TIBStringField;
    tblNofi3OBS: TIBStringField;
    tblNofi3QTDE_PROD: TIntegerField;
    tblNofi3STATUS: TIBStringField;
    tblNofi3VAL_PIS: TIBBCDField;
    tblNofi3VAL_COFINS: TIBBCDField;
    tblNofi3CHAVE: TIBStringField;
    tblNofi3RECIBO: TIBStringField;
    tblNofi3PROTOCOLO: TIBStringField;
    tblNofi3ARQUIVO: TIBStringField;
    tblNofi3XML: TBlobField;
    tblNofi3PROTOCOLO_CONSULTA: TIBStringField;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
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
    tblPecasCODIGO_SGS: TIntegerField;
    tblPecasVBC_STRET: TIBBCDField;
    tblPecasPST: TIBBCDField;
    tblPecasVICMS_STRET: TIBBCDField;
    tblPecasPMVAST: TIBBCDField;
    tblPecasPRED_BCST: TIBBCDField;
    tblPecasVBC_ST: TIBBCDField;
    tblPecasPICMS_ST: TIBBCDField;
    tblPecasVICMS_ST: TIBBCDField;
    tblPecasID_PECAS_ESTOQUE: TIntegerField;
    tblPecasID_PECAS1: TIntegerField;
    tblPecasID_CONCESSIONARIA: TIntegerField;
    tblPecasESTOQUE: TIntegerField;
    tblPecasESTOQOS: TIntegerField;
    tblPecasLOCAL: TIBStringField;
    tblPecasCST_MEDIO: TIBBCDField;
    tblPecasCST_ATUAL: TIBBCDField;
    tblPecasULT_COMPRA: TDateField;
    tblPecasULT_VENDA: TDateField;
    tblPecasULT_PEDIDO: TDateField;
    tblPecasFORNECEDOR: TIBStringField;
    tblPecasPRATELEIRA: TIBStringField;
    tblPecasESCANINHO_GAVETA: TIBStringField;
    BitBtn2: TBitBtn;
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
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBBCDField11: TIBBCDField;
    IBBCDField12: TIBBCDField;
    IBBCDField13: TIBBCDField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBStringField19: TIBStringField;
    IBBCDField14: TIBBCDField;
    IBBCDField15: TIBBCDField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    frxReport8: TfrxReport;
    tblRelPecasEstoque: TfrxDBDataset;
    DataSourcePecasEstoque: TDataSource;
    tblPecasEst: TIBDataSet;
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
    tblPecasEstoqueCODIGO: TIBStringField;
    tblPecasEstoqueID_PECAS_LOCALIZACAO: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA1: TIntegerField;
    tblPecasEstoqueID_PECAS1: TIntegerField;
    tblPecasEstoquePRATELEIRA: TIBStringField;
    tblPecasEstoqueESCANINHO_GAVETA: TIBStringField;
    tblPecasEstoqueCORREDOR: TIBStringField;
    tblPecasEstoqueCODIGO_SGS: TIntegerField;
    tblPecasEstoquePRATELEIRA1: TIBStringField;
    tblPecasEstoqueESCANINHO_GAVETA1: TIBStringField;
    tblPecasEstoqueDESCRICAO: TIBStringField;
    IBQuery5: TIBQuery;
    BitBtn1: TBitBtn;
    IBQuery1: TIBQuery;
    Total: TCurrencyEdit;
    Total2: TCurrencyEdit;
    Concessionaria: TEdit;
    Label2: TLabel;
    tblPecasEstVICMS_ST: TIBBCDField;
    tblPecasEstVICMS_STRET: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure frxReport8BeforePrint(Sender: TfrxReportComponent);
    procedure tblPecasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSpedPreenchimentoBaseST: TBoxSpedPreenchimentoBaseST;

implementation

{$R *.dfm}

uses Empresas, FDB;

procedure TBoxSpedPreenchimentoBaseST.BitBtn1Click(Sender: TObject);
begin
     with tblPecasEst do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger := StrToInt(Concessionaria.Text);
        //StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
     With IBQuery1 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Total.value := IBQuery1.FieldByName('Valor').AsVariant;
     end;
     With IBQuery5 do
     begin
       Close;
       ParamByName('IdConcessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
       Total2.value := IBQuery5.FieldByName('Valor').AsVariant;
     end;

    // if CheckBox1.Checked then
  //      frxReport8.LoadFromFile('InventarioLocalizacao.fr3')
   //  else
       // frxReport8.LoadFromFile('InventarioContabil.fr3');
     frxReport8.ShowReport;

end;

procedure TBoxSpedPreenchimentoBaseST.BitBtn2Click(Sender: TObject);
begin
   with tblPecas2 do
    begin
      Open;
      while not eof do
       begin

                     if (tblPecas2.FieldByName('CST').AsString = '060') or
                        (tblPecas2.FieldByName('CST').AsString = '260') or
                        (tblPecas2.FieldByName('CST').AsString = '360') or
                        (tblPecas2.FieldByName('CST').AsString = '560') then
                     begin
                      Edit;
                      if (FieldByName('CST').AsString = '260') or (FieldByName('CST').AsString = '360') then
                        begin
                          fieldByName('pST').Asinteger := 17;
                          fieldByName('pICMS_ST').AsCurrency := 4;
                        end
                      else
                        begin
                          fieldByName('pST').Asinteger := 17;
                          fieldByName('pICMS_ST').AsCurrency := 12;
                        end;
                      fieldByName('vBC_STRet').AsCurrency := fieldByName('Preco').AsCurrency * 0.4;
                      fieldByName('vICMS_STRet').AsCurrency := fieldByName('vBC_STRet').AsCurrency * fieldByName('pST').AsCurrency/100;
                      fieldByName('vBC_ST').AsCurrency := fieldByName('Preco').AsCurrency * 0.24;
                      fieldByName('vICMS_ST').AsCurrency := fieldByName('vBC_ST').AsCurrency * fieldByName('pICMS_ST').AsCurrency/100;

                      Post;
                     end;
         tblPecas2.Next;
       end;
    end;

 Showmessage('Final dos lançamentos.');
end;

procedure TBoxSpedPreenchimentoBaseST.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 tblPecas.Close;
end;

procedure TBoxSpedPreenchimentoBaseST.FormShow(Sender: TObject);
begin
Concessionaria.Text := (BoxEmpresas.ID_ConcessionariaEmUso.Text);
tblPecas.Open;
tblPecas.Last;
Showmessage((IntToStr(tblPecas.RecordCount))+ ' registros');
tblPecas.First;
//      StatusBar1.SimpleText := Format('%d registro(s) encontrado(s) com "%s"',
//          [FDataSet.RecordCount], EditTexto.Text);//

//StatusBar1.Hint := 'Registros:' + IntToStr(tblPecas.RecordCount);
end;

procedure TBoxSpedPreenchimentoBaseST.frxReport8BeforePrint(
  Sender: TfrxReportComponent);
begin
 frxReport8.Variables.clear;
 frxReport8.Variables['Total']  := Total.Value;
 frxReport8.Variables['Total2']  := Total2.Value;
// frxReport8.variables['Pagina'] := Pagina.Text;
//
// frxReport8.variables['Data']   := DataRelatorio.Date;

end;

procedure TBoxSpedPreenchimentoBaseST.tblPecasAfterPost(DataSet: TDataSet);
begin
    FDb1.IBTransaction.CommitRetaining;
end;

end.
