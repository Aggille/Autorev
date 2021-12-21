unit RelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, StdCtrls, wwdblook, DB, IBCustomDataSet, Buttons,
  frxClass, frxDBSet;

type
  TfrmRelEstoque = class(TForm)
    IBTransaction1: TIBTransaction;
    Label1: TLabel;
    IBDataSet1: TIBDataSet;
    qryEstoque: TIBDataSet;
    qryConcessionarias: TIBDataSet;
    qryConcessionariasEMPRESA: TIBStringField;
    qryConcessionariasID_CONCESSIONARIA: TIntegerField;
    dtsConcessionarias: TDataSource;
    edtConcessionaria: TwwDBLookupCombo;
    qryEstoqueID_PECAS_ESTOQUE: TIntegerField;
    qryEstoqueID_PECA: TIntegerField;
    qryEstoqueID_CONCESSIONARIA: TIntegerField;
    qryEstoqueQUANTIDADE: TIntegerField;
    qryEstoqueCODIGO: TIBStringField;
    qryEstoqueDESCRICAO: TIBStringField;
    qryEstoqueEMPRESA: TIBStringField;
    qryEstoqueESTOQUE: TIntegerField;
    qryEstoqueVENDAS_30: TLargeintField;
    qryEstoqueVENDAS_60: TLargeintField;
    qryEstoqueVENDAS_90: TLargeintField;
    dtsEstoque: TDataSource;
    edtSomenteMinimo: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frxDBDEstoque: TfrxDBDataset;
    frxEstoque: TfrxReport;
    qryEstoqueQUEBRA_ESTOQUE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryEstoqueCalcFields(DataSet: TDataSet);
    procedure qryEstoqueFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstoque: TfrmRelEstoque;

implementation

uses Menu, FDB;

{$R *.dfm}

procedure TfrmRelEstoque.BitBtn1Click(Sender: TObject);
begin
  with qryEstoque do
  begin
    Filtered := edtSomenteMinimo.Checked;
    close;

    if edtConcessionaria.Text = '' then
      begin
        parambyname( 'cinicial' ).asInteger := 0;
        parambyname( 'cfinal' ).asInteger   := 99999;
      end
    else
      begin
        parambyname( 'cinicial' ).asString := edtConcessionaria.LookupValue;
        parambyname( 'cfinal' ).asString   := edtConcessionaria.LookupValue;
      end;

      open;

      frxEstoque.ShowReport( true );

  end;
end;

procedure TfrmRelEstoque.BitBtn2Click(Sender: TObject);
begin
  close();
end;

procedure TfrmRelEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  QryConcessionarias.Close;
end;

procedure TfrmRelEstoque.FormShow(Sender: TObject);
begin
  QryConcessionarias.Open;
end;

procedure TfrmRelEstoque.qryEstoqueCalcFields(DataSet: TDataSet);
begin
  with dataset do
  begin
    fieldbyname( 'quebra_estoque' ).asInteger := fieldbyname( 'estoque' ).asInteger -
                                                  fieldbyname( 'quantidade' ).asInteger;
  end;
end;


procedure TfrmRelEstoque.qryEstoqueFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  with DataSet do
  Accept  :=  ( fieldbyname( 'quebra_estoque' ).asInteger <= 0 )
end;

end.
