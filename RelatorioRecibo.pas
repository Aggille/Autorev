unit RelatorioRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, frxClass, frxDBSet, StdCtrls, Buttons, ExtCtrls;

type
  TBoxRelatorioRecibo = class(TForm)
    tblClientes: TIBDataSet;
    DataSourceClientes: TDataSource;
    tblRelClientes: TfrxDBDataset;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    tblClientesID_CLIENTES: TIntegerField;
    tblClientesCODIGO: TIBStringField;
    tblClientesNOME: TIBStringField;
    tblClientesID_CONCESSIONARIA: TIntegerField;
    tblClientesIDENTIDADE: TIBStringField;
    tblClientesCPF: TIBStringField;
    tblClientesNUM_CPF: TIBStringField;
    tblClientesNASCIMENTO: TDateField;
    tblClientesPAI: TIBStringField;
    tblClientesMAE: TIBStringField;
    tblClientesENDERECO: TIBStringField;
    tblClientesBAIRRO: TIBStringField;
    tblClientesCIDADE: TIBStringField;
    tblClientesESTADO: TIBStringField;
    tblClientesCEP: TIBStringField;
    tblClientesCADASTRO: TDateField;
    tblClientesDESCONTO: TIBBCDField;
    tblClientesFONE1: TIBStringField;
    tblClientesFONE2: TIBStringField;
    tblClientesFONE3: TIBStringField;
    tblClientesCOENDERECO: TIBStringField;
    tblClientesCOBAIRRO: TIBStringField;
    tblClientesCOCIDADE: TIBStringField;
    tblClientesCOESTADO: TIBStringField;
    tblClientesCOCEP: TIBStringField;
    tblClientesSPC: TIBStringField;
    tblClientesREG_SPC: TIBStringField;
    tblClientesEMAIL: TIBStringField;
    tblClientesCLIENTE: TIBStringField;
    tblClientesFORNECEDOR: TIBStringField;
    tblClientesTRANSPORTADORA: TIBStringField;
    tblClientesFINANCEIRA: TIBStringField;
    tblClientesMECANICO: TIBStringField;
    tblClientesVENDEDOR: TIBStringField;
    tblClientesCONTA: TIBStringField;
    tblClientesCOMISSAO: TIBBCDField;
    tblClientesEMPRESA: TIBStringField;
    tblClientesADMISSAO: TDateField;
    tblClientesSALARIO: TIBBCDField;
    tblClientesEMPR_ENDERECO: TIBStringField;
    tblClientesEMPR_BAIRRO: TIBStringField;
    tblClientesEMPR_CIDADE: TIBStringField;
    tblClientesEMPR_ESTADO: TIBStringField;
    tblClientesEMPR_CEP: TIBStringField;
    tblClientesEMPR_FONE: TIBStringField;
    tblClientesREF_NOME1: TIBStringField;
    tblClientesREF_FONE1: TIBStringField;
    tblClientesREF_NOME2: TIBStringField;
    tblClientesREF_FONE2: TIBStringField;
    tblClientesREF_COML1: TIBStringField;
    tblClientesREF_COML_FONE1: TIBStringField;
    tblClientesREF_COML2: TIBStringField;
    tblClientesREF_COML_FONE2: TIBStringField;
    tblClientesREF_BANC: TIBStringField;
    tblClientesREF_AG_BANC: TIBStringField;
    tblClientesREF_CTA_BANC: TIBStringField;
    tblClientesFOTO: TIBStringField;
    tblClientesFABRICANTE: TIBStringField;
    tblClientesCODIGO_MUNICIPIO: TIBStringField;
    tblCaixa: TIBDataSet;
    tblCaixaID_CAIXA: TIntegerField;
    tblCaixaID_CONCESSIONARIA: TIntegerField;
    tblCaixaID_CLIENTES: TIntegerField;
    tblCaixaDOCUMENTO: TIBStringField;
    tblCaixaORIGEM: TIBStringField;
    tblCaixaNATUREZA: TIBStringField;
    tblCaixaFORMA_PAG: TIBStringField;
    tblCaixaDATA_LANCAMENTO: TDateField;
    tblCaixaDATA_RECEBIMENTO: TDateField;
    tblCaixaVALOR: TIBBCDField;
    tblCaixaCONTA: TIBStringField;
    tblCaixaHISTORICO: TIBStringField;
    tblCaixaSTATUS: TIBStringField;
    tblCaixaJUROS: TIBBCDField;
    DataSourceCaixa: TDataSource;
    tblRelCaixa: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EmiteRecibo;
    function EmitirRecibo(recibo: String): Boolean;    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatorioRecibo: TBoxRelatorioRecibo;

implementation

{$R *.dfm}

procedure TBoxRelatorioRecibo.BtnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TBoxRelatorioRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxRelatorioRecibo := nil;
end;

function TBoxRelatorioRecibo.EmitirRecibo(recibo: String): Boolean;
begin
   with tblCaixa do
   begin
     Close;
     ParamByName('idCaixa').AsInteger := StrToInt(Recibo);
     Open;
    if RecordCount = 0 then
     begin
      showmessage('Recibo não localizado');
      Result := False;
     end
    else
      Result := True;
  end;
end;

procedure TBoxRelatorioRecibo.EmiteRecibo;
begin
  frxReport1.ShowReport;
end;

procedure TBoxRelatorioRecibo.FormShow(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

end.
