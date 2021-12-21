unit FinanceiroBancoEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids;

type
  TBoxFinanceiroBancoEntradas = class(TForm)
    ToolBar1: TToolBar;
    BtnOutros: TBitBtn;
    BtnContasaReceber: TBitBtn;
    BtnPedidos: TBitBtn;
    BtnDeposito: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOutrosClick(Sender: TObject);
    procedure BtnContasaReceberClick(Sender: TObject);
    procedure BtnPedidosClick(Sender: TObject);
    procedure BtnDepositoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroBancoEntradas: TBoxFinanceiroBancoEntradas;

implementation

uses Empresas, FinanceiroBancoEntradasCreceber, FinanceiroBancoEntradasOutros,
  FinanceiroBancoEntradasPedidos, FinanceiroBancoEntradasDeposito;

{$R *.dfm}

procedure TBoxFinanceiroBancoEntradas.BtnContasaReceberClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoEntradasCreceber) then
    BoxFinanceiroBancoEntradasCreceber := TBoxFinanceiroBancoEntradasCreceber.Create(Self);
  BoxFinanceiroBancoEntradasCreceber.Show;
end;

procedure TBoxFinanceiroBancoEntradas.BtnDepositoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoEntradasDeposito) then
    BoxFinanceiroBancoEntradasDeposito := TBoxFinanceiroBancoEntradasDeposito.Create(Self);
  BoxFinanceiroBancoEntradasDeposito.Show;
end;

procedure TBoxFinanceiroBancoEntradas.BtnOutrosClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoEntradasOutros) then
    BoxFinanceiroBancoEntradasOutros := TBoxFinanceiroBancoEntradasOutros.Create(Self);
  BoxFinanceiroBancoEntradasOutros.Show;
end;

procedure TBoxFinanceiroBancoEntradas.BtnPedidosClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoEntradasPedidos) then
    BoxFinanceiroBancoEntradasPedidos := TBoxFinanceiroBancoEntradasPedidos.Create(Self);
  BoxFinanceiroBancoEntradasPedidos.Show;
end;

procedure TBoxFinanceiroBancoEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoEntradas := nil;
end;

procedure TBoxFinanceiroBancoEntradas.FormKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TBoxFinanceiroBancoEntradas.FormShow(Sender: TObject);
begin
  BtnPedidos.SetFocus;
end;

end.
