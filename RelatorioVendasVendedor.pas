unit RelatorioVendasVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, Buttons;

type
  TBoxVendasVendedor = class(TForm)
    tblVendas: TIBDataSet;
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
    IBStringField13: TIBStringField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    DataSourceComissoes: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataFinal: TDateEdit;
    Label2: TLabel;
    DadosFiltro: TLabel;
    DataInicial: TDateEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxVendasVendedor: TBoxVendasVendedor;

implementation

{$R *.dfm}

procedure TBoxVendasVendedor.BitBtn1Click(Sender: TObject);
begin
   with tblVendas do
    begin
     Close;
     ParamByName('DataInicial').AsDateTime := DataInicial.Date;
     ParamByName('DataFinal').AsDateTime := DataFinal.Date;
     Open;
    end;
    DBGRID1.Refresh;
end;

end.

