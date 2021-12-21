unit FinanceiroCaixaEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons,
  StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls, DB, IBCustomDataSet, ToolWin,
  Grids, DBGrids;

type
  TBoxFinanceiroCaixaEntradas = class(TForm)
    ToolBar1: TToolBar;
    BtnPendencias: TBitBtn;
    BtnOutros: TBitBtn;
    BtnContasaReceber: TBitBtn;
    BtnPedidos: TBitBtn;
    BtnAntecipacao: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPendenciasClick(Sender: TObject);
    procedure BtnOutrosClick(Sender: TObject);
    procedure BtnContasaReceberClick(Sender: TObject);
    procedure BtnPedidosClick(Sender: TObject);
    procedure BtnAntecipacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaEntradas: TBoxFinanceiroCaixaEntradas;

implementation

uses Empresas, FinanceiroCaixaEntradasPendencias,
  FinanceiroCaixaEntradasCreceber, FinanceiroCaixaEntradasOutros,
  FinanceiroCaixaEntradasPedidos, FinanceiroCaixaEntradasAntecipacao;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradas.BtnAntecipacaoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasAntecipacao) then
    BoxFinanceiroCaixaEntradasAntecipacao := TBoxFinanceiroCaixaEntradasAntecipacao.Create(Self);
  BoxFinanceiroCaixaEntradasAntecipacao.Show;
end;

procedure TBoxFinanceiroCaixaEntradas.BtnContasaReceberClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasCreceber) then
    BoxFinanceiroCaixaEntradasCreceber := TBoxFinanceiroCaixaEntradasCreceber.Create(Self);
  BoxFinanceiroCaixaEntradasCreceber.Show;
end;

procedure TBoxFinanceiroCaixaEntradas.BtnOutrosClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasOutros) then
    BoxFinanceiroCaixaEntradasOutros := TBoxFinanceiroCaixaEntradasOutros.Create(Self);
  BoxFinanceiroCaixaEntradasOutros.Show;
end;

procedure TBoxFinanceiroCaixaEntradas.BtnPedidosClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasPedidos) then
    BoxFinanceiroCaixaEntradasPedidos := TBoxFinanceiroCaixaEntradasPedidos.Create(Self);
  BoxFinanceiroCaixaEntradasPedidos.Show;
end;

procedure TBoxFinanceiroCaixaEntradas.BtnPendenciasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasPendencias) then
    BoxFinanceiroCaixaEntradasPendencias := TBoxFinanceiroCaixaEntradasPendencias.Create(Self);
  BoxFinanceiroCaixaEntradasPendencias.Show;
end;

procedure TBoxFinanceiroCaixaEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradas := nil;
end;

procedure TBoxFinanceiroCaixaEntradas.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaEntradas.FormShow(Sender: TObject);
begin
  BtnPendencias.SetFocus;
end;

end.
