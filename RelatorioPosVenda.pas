unit RelatorioPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxDesgn, frxClass, frxCtrls, StdCtrls;

type
  TBoxRelatorioPosVenda = class(TForm)
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRelatorioPosVenda: TBoxRelatorioPosVenda;

implementation

uses FDB;

{$R *.dfm}

end.
