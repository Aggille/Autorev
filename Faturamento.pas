unit Faturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TBoxFaturamento = class(TForm)
    ToolBar1: TToolBar;
    BtnPosVenda: TBitBtn;
    BtnVeiculos: TBitBtn;
    BtnAcessorios: TBitBtn;
    BtnGarantia: TBitBtn;
    BtnBrindes: TBitBtn;
    procedure BtnVeiculosClick(Sender: TObject);
    procedure BtnAcessoriosClick(Sender: TObject);
    procedure BtnPosVendaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGarantiaClick(Sender: TObject);
    procedure BtnBrindesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFaturamento: TBoxFaturamento;

implementation

uses FaturamentoPosVenda, FaturamentoPecas, FaturamentoVeiculos,
  FaturamentoGarantia, FaturamentoBrinde;

{$R *.dfm}

procedure TBoxFaturamento.BtnVeiculosClick(Sender: TObject);
begin
  if not Assigned(BoxFaturamentoVeiculos) then
    BoxFaturamentoVeiculos := TBoxFaturamentoVeiculos.Create(Self);
  BoxFaturamentoVeiculos.Show;
end;

procedure TBoxFaturamento.BtnBrindesClick(Sender: TObject);
begin
  if not Assigned(BoxFaturamentoBrinde) then
    BoxFaturamentoBrinde := TBoxFaturamentoBrinde.Create(Self);
  BoxFaturamentoBrinde.Show;
end;

procedure TBoxFaturamento.BtnGarantiaClick(Sender: TObject);
begin
  if not Assigned(BoxFaturamentoGarantia) then
    BoxFaturamentoGarantia := TBoxFaturamentoGarantia.Create(Self);
  BoxFaturamentoGarantia.Show;
end;

procedure TBoxFaturamento.BtnPosVendaClick(Sender: TObject);
begin
  if not Assigned(BoxFaturamentoPosVenda) then
    BoxFaturamentoPosVenda := TBoxFaturamentoPosVenda.Create(Self);
  BoxFaturamentoPosVenda.Show;
end;

procedure TBoxFaturamento.BtnAcessoriosClick(Sender: TObject);
begin
  if not Assigned(BoxFaturamentoPecas) then
    BoxFaturamentoPecas := TBoxFaturamentoPecas.Create(Self);
  BoxFaturamentoPecas.Show;
end;

procedure TBoxFaturamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
   BoxFaturamento := nil;
end;

end.
