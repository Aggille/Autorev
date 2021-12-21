unit RelatoriosGerenciaisReceitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, Mask, rxToolEdit,
  ExtCtrls, frxClass, DB, IBCustomDataSet, frxDBSet;

type
  TBoxRelatoriosGerenciaisReceitas = class(TForm)
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
    DataSourceNofisa: TDataSource;
    tblNofisa: TIBDataSet;
    tblRelNofisa: TfrxDBDataset;
    frxReport1: TfrxReport;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaVALOR: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaEMPRESA: TIBStringField;
    tblNofisaCIDADE: TIBStringField;
    tblNofisaDESC_ORIGEM: TStringField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    Resumido: TCheckBox;
    frxReport2: TfrxReport;
    Garantia: TCheckBox;
    tblNofisa2: TIBDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    StringField1: TStringField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    DataSourceNofisa2: TDataSource;
    tblNofisa3: TIBDataSet;
    IntegerField3: TIntegerField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    IBStringField4: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    StringField2: TStringField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    DataSourceNofisa3: TDataSource;
    devolucoes: TCheckBox;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblNofisaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatoriosGerenciaisReceitas: TBoxRelatoriosGerenciaisReceitas;

implementation

{$R *.dfm}

procedure TBoxRelatoriosGerenciaisReceitas.BtnImprimirClick(Sender: TObject);
begin
  if devolucoes.checked then
   begin
     with tblNofisa3 do
      begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
      end;
     tblRelNofisa.OpenDataSource := False;
     tblRelNofisa.DataSource := DataSourceNofisa3;
     tblRelNofisa.OpenDataSource := True;
    if resumido.Checked then
     begin
       frxReport2.Variables.clear;
       frxReport2.Variables['DataInicial'] := DataInicial.Date;
       frxReport2.Variables['DataFinal'] := DataFinal.Date;
       frxReport2.ShowReport;
     end
    else
     begin
       frxReport1.Variables.clear;
       frxReport1.Variables['DataInicial'] := DataInicial.Date;
       frxReport1.Variables['DataFinal'] := DataFinal.Date;
       frxReport1.ShowReport;
     end;
   end
  else

  if garantia.checked then
   begin
     with tblNofisa2 do
      begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
      end;
     tblRelNofisa.OpenDataSource := False;
     tblRelNofisa.DataSource := DataSourceNofisa2;
     tblRelNofisa.OpenDataSource := True;
    if resumido.Checked then
     begin
       frxReport2.Variables.clear;
       frxReport2.Variables['DataInicial'] := DataInicial.Date;
       frxReport2.Variables['DataFinal'] := DataFinal.Date;
       frxReport2.ShowReport;
     end
    else
     begin
       frxReport1.Variables.clear;
       frxReport1.Variables['DataInicial'] := DataInicial.Date;
       frxReport1.Variables['DataFinal'] := DataFinal.Date;
       frxReport1.ShowReport;
     end;
   end
  else
   begin
     with tblNofisa do
      begin
       Close;
       ParamByName('DataInicial').AsDateTime := DataInicial.Date;
       ParamByName('DataFinal').AsDateTime := DataFinal.Date;
       Open;
      end;
     tblRelNofisa.OpenDataSource := False;
     tblRelNofisa.DataSource := DataSourceNofisa;
     tblRelNofisa.OpenDataSource := True;
    if resumido.Checked then
     begin
       frxReport2.Variables.clear;
       frxReport2.Variables['DataInicial'] := DataInicial.Date;
       frxReport2.Variables['DataFinal'] := DataFinal.Date;
       frxReport2.ShowReport;
     end
    else
     begin
       frxReport1.Variables.clear;
       frxReport1.Variables['DataInicial'] := DataInicial.Date;
       frxReport1.Variables['DataFinal'] := DataFinal.Date;
       frxReport1.ShowReport;
     end;
  end;
end;

procedure TBoxRelatoriosGerenciaisReceitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceConcessionaria.Dataset.Close;
  Action :=caFree;
  BoxRelatoriosGerenciaisReceitas := nil;
end;

procedure TBoxRelatoriosGerenciaisReceitas.FormKeyPress(Sender: TObject;
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

procedure TBoxRelatoriosGerenciaisReceitas.FormShow(Sender: TObject);
begin
  DataSourceNofisa.Dataset.Open;
  DataSourceConcessionaria.Dataset.Open;
  DataInicial.SetFocus;
end;

procedure TBoxRelatoriosGerenciaisReceitas.tblNofisaCalcFields(
  DataSet: TDataSet);
begin
   with tblNofisa do
   begin
     if ( fieldbyname( 'origem' ).asString = 'O' ) then // and ( fieldbyname( 'val_serv' ).asFloat <> 0 ) then
        fieldbyname( 'desc_origem' ).asString := 'Pós-venda';

//     if ( fieldbyname( 'origem' ).asString = 'O' ) and ( fieldbyname( 'TOT_PROD' ).asFloat <> 0 )then
//        fieldbyname( 'desc_origem' ).asString := 'Pós-venda';

     if ( fieldbyname( 'origem' ).asString = 'P' ) then
        fieldbyname( 'desc_origem' ).asString := 'Venda peças';


   end;
end;

end.
