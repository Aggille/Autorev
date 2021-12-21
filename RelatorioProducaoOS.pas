unit RelatorioProducaoOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, IBCustomDataSet, IBQuery, DB, DBClient, Grids,
  DBGrids, StdCtrls, Buttons, Mask, rxToolEdit;

type
  TBoxProducaoOS = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DadosFiltro: TLabel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    Label3: TLabel;
    DataFinal: TDateEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    tblAux: TClientDataSet;
    tblAuxMESANO: TStringField;
    tblAuxMECANICO: TCurrencyField;
    tblAuxTOTAL_OS: TCurrencyField;
    tblAuxRECEITA_PECAS: TCurrencyField;
    tblAuxRECEITA_MO: TCurrencyField;
    dts1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    DBGrid2: TDBGrid;
    tblOS: TIBDataSet;
    dts2: TDataSource;
    tblOSID_MECANICO: TIntegerField;
    tblOSVALOR: TIntegerField;
    IBQuery4: TIBQuery;
    tblOSID_CLIENTES: TIntegerField;
    tblOSNOME: TIBStringField;
    IBDataSet1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBDataSet2: TIBDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField2: TIBStringField;
    tblOSPECASOS: TIBBCDField;
    IBQuery1VALOR: TIntegerField;
    IBQuery1PECASOS: TIBBCDField;
    tblOSMAOOBRAOS: TIBBCDField;
    IBQuery1MAOOBRAOS: TIBBCDField;
    IBDataSet3: TIBDataSet;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IBStringField3: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxProducaoOS: TBoxProducaoOS;

implementation

{$R *.dfm}

procedure TBoxProducaoOS.BitBtn1Click(Sender: TObject);
begin
  tblOS.Close;
  tblAux.Open;
  With tblAux do
   while (DataInicial.Date < DataFinal.Date) do
    begin
     Insert;
     FieldByName('MesAno').AsString := formatdatetime('mm',strtodatetime(DataInicial.Text)) + '/' +
                                        formatdatetime('yyyy',strtodatetime(DataInicial.text));
     IBQuery1.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     IBQuery1.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     IBQuery1.Open;
     FieldByName('Total_OS').AsCurrency := IBQuery1.FieldbyName('Valor').AsCurrency;
     FieldByName('Receita_Pecas').AsCurrency := IBQuery1.FieldbyName('PecasOS').AsCurrency;
     FieldByName('Receita_MO').AsCurrency := IBQuery1.FieldbyName('MaoObraOS').AsCurrency;

     tblOS.ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     tblOS.ParamByName('DataFinal').AsDateTime := IncMonth(DataInicial.Date)-1;
     tblOS.Open;
  //   FieldByName('Total_OS').AsCurrency := IBQuery2.FieldbyName('Valor').AsCurrency;

     Post;
     IBQuery1.Close;

     DataInicial.Date := IncMonth(DataInicial.Date);
    end;
    
end;

procedure TBoxProducaoOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     tblOS.Close;
end;

procedure TBoxProducaoOS.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
