unit ufrmAguardaNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, JvExStdCtrls, JvMemo;

type
  TfrmAguardaNFe = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    BtnOk: TBitBtn;
    Mensagens: TJvMemo;
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAguardaNFe: TfrmAguardaNFe;

implementation

{$R *.dfm}

procedure TfrmAguardaNFe.BtnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAguardaNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  frmAguardaNFE := nil;
end;

procedure TfrmAguardaNFe.FormShow(Sender: TObject);
begin
  Btnok.Enabled := False;
end;

end.
