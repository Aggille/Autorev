unit BMI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  IBX.IBCustomDataSet;

type
  TBoxBMI = class(TForm)
    Gerar: TButton;
    tblAux: TClientDataSet;
    tblAuxNUMERO_CONTA: TStringField;
    tblAuxNOME_CONTA: TStringField;
    tblAuxVALOR_CONTA: TCurrencyField;
    IBDataSet1: TIBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxBMI: TBoxBMI;

implementation

{$R *.dfm}

end.
