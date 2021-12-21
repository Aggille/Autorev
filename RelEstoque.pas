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
    qryEstoqueDESCRICAO: TIBStringField;
    qryEstoqueVENDAS_180: TLargeintField;
    qryEstoqueMEDIA_180: TLargeintField;
    CheckBox1: TCheckBox;
    qryEstoque1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IntegerField5: TIntegerField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    IntegerField6: TIntegerField;
    IBStringField3: TIBStringField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
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
  if CheckBox1.Checked then
    with qryEstoque1 do
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
       frxDBDEstoque.DataSet := qryEstoque1;
       open;

       frxEstoque.ShowReport( true );

     end

  else
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
       frxDBDEstoque.DataSet := qryEstoque;
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
end;

procedure TfrmRelEstoque.FormShow(Sender: TObject);
begin
  qryConcessionarias.Open;
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
  Accept  :=  ( fieldbyname( 'quebra_estoque' ).asInteger < 0 )
end;

end.
