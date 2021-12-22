unit UBoxRenave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TBoxRenave = class(TForm)
    Panel1: TPanel;
    btnAptidao: TSpeedButton;
    btnAutTransf: TSpeedButton;
    btnConsCRLV: TSpeedButton;
    btnCancTransf: TSpeedButton;
    btnConsultaEstoque: TSpeedButton;
    Panel2: TPanel;
    btnEntrada0km: TSpeedButton;
    btnEntradaUsado: TSpeedButton;
    btnSaida: TSpeedButton;
    btnTransfFilial: TSpeedButton;
    btnTransfEstab: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRenave: TBoxRenave;

implementation

{$R *.dfm}

procedure TBoxRenave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  BoxRenave := nil;
end;

procedure TBoxRenave.FormShow(Sender: TObject);
begin
  top := 85;
  Left := 10;
end;

end.
