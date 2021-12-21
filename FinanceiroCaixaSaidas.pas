unit FinanceiroCaixaSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin;

type
  TBoxFinanceiroCaixaSaidas = class(TForm)
    ToolBar1: TToolBar;
    BtnDeposito: TBitBtn;
    BtnGerais: TBitBtn;
    BtnCombustivel: TBitBtn;
    BtnCPagar: TBitBtn;
    BtnTaxas: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnGeraisClick(Sender: TObject);
    procedure BtnDepositoClick(Sender: TObject);
    procedure BtnCombustivelClick(Sender: TObject);
    procedure BtnCPagarClick(Sender: TObject);
    procedure BtnTaxasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaSaidas: TBoxFinanceiroCaixaSaidas;

implementation

uses FinanceiroCaixaSaidasGerais, FinanceiroCaixaSaidasDeposito,
  FinanceiroCaixaSaidasCombustivel, FinanceiroCaixaSaidasCPagar,
  FinanceiroCaixaSaidasTaxas, OperacoesTaxasPagamento, FDB;

{$R *.dfm}

procedure TBoxFinanceiroCaixaSaidas.BtnCombustivelClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaSaidasCombustivel) then
    BoxFinanceiroCaixaSaidasCombustivel := TBoxFinanceiroCaixaSaidasCombustivel.Create(Self);
  BoxFinanceiroCaixaSaidasCombustivel.Show;
end;

procedure TBoxFinanceiroCaixaSaidas.BtnCPagarClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaSaidasCPagar) then
    BoxFinanceiroCaixaSaidasCPagar := TBoxFinanceiroCaixaSaidasCPagar.Create(Self);
  BoxFinanceiroCaixaSaidasCPagar.Show;
end;

procedure TBoxFinanceiroCaixaSaidas.BtnDepositoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaSaidasDeposito) then
    BoxFinanceiroCaixaSaidasDeposito := TBoxFinanceiroCaixaSaidasDeposito.Create(Self);
  BoxFinanceiroCaixaSaidasDeposito.Show;
end;

procedure TBoxFinanceiroCaixaSaidas.BtnGeraisClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaSaidasGerais) then
    BoxFinanceiroCaixaSaidasGerais := TBoxFinanceiroCaixaSaidasGerais.Create(Self);
  BoxFinanceiroCaixaSaidasGerais.Show;
end;

procedure TBoxFinanceiroCaixaSaidas.BtnTaxasClick(Sender: TObject);
begin
//  if not Assigned(BoxFinanceiroCaixaSaidasTaxas) then
//    BoxFinanceiroCaixaSaidasTaxas := TBoxFinanceiroCaixaSaidasTaxas.Create(Self);
//  BoxFinanceiroCaixaSaidasTaxas.Show;
  if not Assigned(BoxOperacoesTaxasPagamento) then
    BoxOperacoesTaxasPagamento := TBoxOperacoesTaxasPagamento.Create(Self);
  BoxOperacoesTaxasPagamento.Show;
end;

procedure TBoxFinanceiroCaixaSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaSaidas := nil;
end;

procedure TBoxFinanceiroCaixaSaidas.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaSaidas.FormShow(Sender: TObject);
begin
   if (FDB1.IBDataSetLoginacesso84.AsString = 'T') or      // 84 taxas
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnTaxas.Enabled := True
   else
     BtnTaxas.Enabled := False;
  BtnGerais.SetFocus;
end;

end.
