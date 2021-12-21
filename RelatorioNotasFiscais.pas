unit RelatorioNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxDesgn, frxClass, frxCtrls, StdCtrls, frxDBSet, ExtCtrls, DB,
  DBClient, IBCustomDataSet, Buttons;

type
  TBoxRelatorioNotasFiscais = class(TForm)
    frxReport1: TfrxReport;
    tblRelNofisa: TfrxDBDataset;
    tblRelNofisaFaturas1: TfrxDBDataset;
    Panel1: TPanel;
    tblRelSada: TfrxDBDataset;
    tblRelPessoas: TfrxDBDataset;
    DataSourceNofisa: TDataSource;
    DataSourceNofisaFaturas1: TDataSource;
    DataSourceSada: TDataSource;
    DataSourcePessoas: TDataSource;
    tblNofisa: TClientDataSet;
    tblNofisaFaturas1: TClientDataSet;
    tblSada: TClientDataSet;
    tblPessoas: TClientDataSet;
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
    tblPessoasFINANCEIRA: TIBStringField;
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
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS: TIBBCDField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
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
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
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
    tblNofisaFaturas1ID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturas1ID_NOFISA: TIntegerField;
    tblNofisaFaturas1FATURA: TIBStringField;
    tblNofisaFaturas1VENCIMENTO: TDateField;
    tblNofisaFaturas1VALOR: TIBBCDField;
    tblNofisaFaturas1ID_FORMAS_PAGAMENTO: TIntegerField;
    BtnOk: TBitBtn;
    tblRelNofisaFaturas2: TfrxDBDataset;
    DataSourceNofisaFaturas2: TDataSource;
    tblNofisaFaturas2: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IntegerField3: TIntegerField;
    tblRelNofisaFaturas3: TfrxDBDataset;
    DataSourceNofisaFaturas3: TDataSource;
    tblNofisaFaturas3: TClientDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField2: TIBStringField;
    DateField2: TDateField;
    IBBCDField2: TIBBCDField;
    IntegerField6: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure MasterDSGetValue(const VarName: string; var Value: Variant);
  private
  //  MasterNo: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
{  Master: array[1..27, 1..2] of ShortString = ( // master Id, master name
    ('1', 'duplicata1'), ('2', 'vencimento1'), ('3', 'valor1'),
    ('1', 'duplicata2'), ('2', 'vencimento2'), ('3', 'valor2'),
    ('1', 'duplicata3'), ('2', 'vencimento3'), ('3', 'valor3'),
    ('1', 'duplicata4'), ('2', 'vencimento4'), ('3', 'valor4'),
    ('1', 'duplicata5'), ('2', 'vencimento5'), ('3', 'valor5'),
    ('1', 'duplicata6'), ('2', 'vencimento6'), ('3', 'valor6'),
    ('1', 'duplicata7'), ('2', 'vencimento7'), ('3', 'valor7'),
    ('1', 'duplicata8'), ('2', 'vencimento8'), ('3', 'valor8'),
    ('1', 'duplicata9'), ('2', 'vencimento9'), ('3', 'valor9'));}
  BoxRelatorioNotasFiscais: TBoxRelatorioNotasFiscais;

implementation

uses FDB, FaturamentoPecas, FaturamentoPosVenda, FaturamentoVeiculos;

{$R *.dfm}

procedure TBoxRelatorioNotasFiscais.BtnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TBoxRelatorioNotasFiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxRelatorioNotasFiscais := nil;
end;

procedure TBoxRelatorioNotasFiscais.FormShow(Sender: TObject);
begin
  tblNofisaFaturas1.First;
  tblNofisaFaturas2.First;
  tblNofisaFaturas3.First;
  frxReport1.ShowReport;
  BoxRelatorioNotasFiscais := nil;
  Close;
end;

procedure TBoxRelatorioNotasFiscais.frxReport1GetValue(const VarName: string;
  var Value: Variant);
{var
 x: Integer;}
begin
{ with tblNofisaFaturas do
  begin
   first;
   x:=1;
   while not eof do
    begin
      Master[1][x] := FieldByName('Fatura').AsString;
      Master[2][x] := FieldByName('Vencimento').AsString;
      Master[3][x] := FieldByName('Valor').AsString;
      showmessage(master[1][x] +' '+ master[2][x] +' '+ master[3][x]);
      Inc(x);
      Next;
{     if CompareText(VarName, 'DUPLICATA[0]') = 0 then
       Value := FieldByName('Fatura').AsString;
     if CompareText(VarName, 'DUPLICATA[1]') = 0 then
       Value := FieldByName('Fatura').AsString;
     Next;}
{    end;
   end;}
end;

procedure TBoxRelatorioNotasFiscais.MasterDSGetValue(const VarName: string;
  var Value: Variant);
begin
//   Value:= Master[1][1];
//   Master[1][x] := FieldByName('Fatura').AsString;
end;

end.
