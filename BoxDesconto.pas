unit BoxDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvBaseEdits;


type
  TBoxPedeDesconto = class(TForm)
    Label1: TLabel;
    edtDesconto: TJvCalcEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    edtValorDesconto: TJvCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxPedeDesconto: TBoxPedeDesconto;

implementation

{$R *.dfm}

end.
