unit OperacoesVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ExtCtrls, ComCtrls, ToolWin, ImgList, ActnList;

type
  TBoxVendas = class(TForm)
    BtnPecas: TBitBtn;
    BtnVeiculos: TBitBtn;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    Novos: TAction;
    Usados: TAction;
    Pecas: TAction;
    ImageList1: TImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPecasClick(Sender: TObject);
    procedure BtnVeiculosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxVendas: TBoxVendas;

implementation

uses OperacoesVendasPecas, OperacoesVendasVeiculos, FDB;

{$R *.dfm}

procedure TBoxVendas.BtnPecasClick(Sender: TObject);
begin
  if not Assigned(BoxVendasPecas) then
    BoxVendasPecas := TBoxVendasPecas.Create(Self);
  BoxVendasPecas.Show;
end;

procedure TBoxVendas.BtnVeiculosClick(Sender: TObject);
begin
  if not Assigned(BoxVendasVeiculos) then
    BoxVendasVeiculos := TBoxVendasVeiculos.Create(Self);
  BoxVendasVeiculos.Show;
end;

procedure TBoxVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxVendas := nil;
end;

procedure TBoxVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
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

procedure TBoxVendas.FormShow(Sender: TObject);
begin
  { Habilita/desabilita os botões }
  BtnPecas.Enabled := False;
  BtnVeiculos.Enabled := False;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso12.AsString = 'T') then {peças}
    begin
      BtnPecas.Enabled := True;
      BtnPecas.SetFocus;
    end;
  if (FDB1.IBDataSetLoginADM.AsString = 'T') Or
   (FDB1.IBDataSetLoginAcesso11.AsString = 'T') then {veículos}
    begin
      BtnVeiculos.Enabled := True;
      BtnVeiculos.SetFocus;
    end;
end;

end.
