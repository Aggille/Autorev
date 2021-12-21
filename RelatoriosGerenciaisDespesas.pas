unit RelatoriosGerenciaisDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, Mask, rxToolEdit,
  ExtCtrls, frxClass, DB, IBCustomDataSet, frxDBSet;

type
  TBoxRelatoriosGerenciaisDespesas = class(TForm)
    GroupBox2: TGroupBox;
    Shape1: TShape;
    DadosFiltro: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    BtnImprimir: TBitBtn;
    tblRelConcessionaria: TfrxDBDataset;
    tblConcessionaria: TIBDataSet;
    tblConcessionariaID_CONCESSIONARIA: TIntegerField;
    tblConcessionariaEMPRESA: TIBStringField;
    tblConcessionariaENDERECO: TIBStringField;
    tblConcessionariaCIDADE: TIBStringField;
    tblConcessionariaESTADO: TIBStringField;
    tblConcessionariaCNPJ: TIBStringField;
    tblConcessionariaIE: TIBStringField;
    tblConcessionariaCONCESSION: TIBStringField;
    tblConcessionariaTELEFONE: TIBStringField;
    tblConcessionariaCOD_CONCES: TIBStringField;
    tblConcessionariaALIQUOTA_ISS: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    tblConcessionariaCODIGO_EMPRESA_JB: TIBStringField;
    tblConcessionariaIM: TIBStringField;
    tblConcessionariaCNAE: TIBStringField;
    tblConcessionariaFANTASIA: TIBStringField;
    tblConcessionariaCEP: TIBStringField;
    tblConcessionariaNUMERO: TIBStringField;
    tblConcessionariaCOMPLEMENTO: TIBStringField;
    tblConcessionariaCODIGO_MUNICIPIO: TIBStringField;
    tblConcessionariaBAIRRO: TIBStringField;
    tblConcessionariaHOST: TIBStringField;
    tblConcessionariaPORT: TIBStringField;
    tblConcessionariaUSUARIO: TIBStringField;
    tblConcessionariaPASS: TIBStringField;
    DataSourceConcessionaria: TDataSource;
    DataSourceDespesas: TDataSource;
    tblDespesas: TIBDataSet;
    tblDespesasID_DESPESAS: TIntegerField;
    tblDespesasID_CONCESSIONARIA: TIntegerField;
    tblDespesasCONTA: TIBStringField;
    tblDespesasHISTORICO: TIBStringField;
    tblDespesasDATA: TDateField;
    tblDespesasSETOR: TIBStringField;
    tblDespesasVALOR: TIBBCDField;
    tblDespesasDESCRICAO: TIBStringField;
    tblDespesasEMPRESA: TIBStringField;
    tblDespesasCIDADE: TIBStringField;
    tblRelDespesas: TfrxDBDataset;
    frxReport1: TfrxReport;
    tblPlacon: TIBDataSet;
    tblPlaconID_PLACON: TIntegerField;
    tblPlaconCONTA: TIBStringField;
    tblPlaconDESCRICAO: TIBStringField;
    tblPlaconTIPO: TIBStringField;
    tblPlaconNIVEL: TIBStringField;
    tblPlaconCLASSIFICACAO: TIBStringField;
    tblPlaconCONTA_BANCARIA: TIBStringField;
    DataSourcePlacon: TDataSource;
    tblRelPlacon: TfrxDBDataset;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatoriosGerenciaisDespesas: TBoxRelatoriosGerenciaisDespesas;

implementation

{$R *.dfm}

procedure TBoxRelatoriosGerenciaisDespesas.BtnImprimirClick(Sender: TObject);
begin
   with tblDespesas do
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

procedure TBoxRelatoriosGerenciaisDespesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceDespesas.Dataset.Close;
  DataSourcePlacon.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
end;

procedure TBoxRelatoriosGerenciaisDespesas.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TBoxRelatoriosGerenciaisDespesas.FormShow(Sender: TObject);
begin
  DataSourceDespesas.Dataset.Open;
  DataSourcePlacon.Dataset.Open;
  DataSourceConcessionaria.Dataset.Open;
  DataInicial.SetFocus;
end;

end.
