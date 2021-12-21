unit VeiculosDemonstracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, Buttons, StdCtrls,
  Mask, ExtCtrls, ComCtrls;

type
  TBoxVeiculosDemonstracao = class(TForm)
    Panel1: TPanel;
    LabelCodigo: TLabel;
    CodigoCliente: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    StatusBar1: TStatusBar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxVeiculosDemonstracao: TBoxVeiculosDemonstracao;

implementation

{$R *.dfm}

procedure TBoxVeiculosDemonstracao.FormKeyPress(Sender: TObject; var Key: Char);
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
