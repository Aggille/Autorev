unit RelatorioMalaDireta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, frxClass, DB,
  IBCustomDataSet, frxDBSet;

type
  TBoxMalaDireta = class(TForm)
    tblRelClientes: TfrxDBDataset;
    tblClientes: TIBDataSet;
    DataSourceClientes: TDataSource;
    frxReport1: TfrxReport;
    GroupBox2: TGroupBox;
    Shape1: TShape;
    DadosFiltro: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    BtnImprimir: TBitBtn;
    tblClientesID_CLIENTES: TIntegerField;
    tblClientesCODIGO: TIBStringField;
    tblClientesNOME: TIBStringField;
    tblClientesID_CONCESSIONARIA: TIntegerField;
    tblClientesVENDEDOR_YNOVA: TIBStringField;
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
    tblClientesNOME_VENDEDOR: TIBStringField;
    tblClientesCODIGOSGS: TIntegerField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxMalaDireta: TBoxMalaDireta;

implementation

{$R *.dfm}

procedure TBoxMalaDireta.BtnImprimirClick(Sender: TObject);
var
 anoinicial, mesinicial,diainicial : word;
 anoFinal, mesFinal, diaFinal : word;
begin
   DecodeDate(DataInicial.Date, AnoInicial, MesInicial, DiaInicial);
   DecodeDate(DataFinal.Date, AnoFinal, MesFinal, DiaFinal);
   with tblClientes do
    begin
     Close;
     ParamByName('MesInicial').Value := MesInicial;//StrToInt(Mes.Text);
     ParamByName('DiaInicial').AsInteger := DiaInicial;//StrToInt(Mes.Text);
     ParamByName('MesFinal').Value := MesFinal;//StrToInt(Mes.Text);
     ParamByName('DiaFinal').AsInteger := DiaFinal;//StrToInt(Mes.Text);
     Open;
    end;
   frxReport1.Variables.clear;
   frxReport1.Variables['DataInicial'] := DataInicial.Date;
   frxReport1.Variables['DataFinal'] := DataFinal.Date;
   frxReport1.ShowReport;
end;

procedure TBoxMalaDireta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
{  EnableDisableButtons(True);      }
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

end.

