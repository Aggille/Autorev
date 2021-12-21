unit FinanceiroBancoSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin;

type
  TBoxFinanceiroBancoSaidas = class(TForm)
    ToolBar1: TToolBar;
    BtnGerais: TBitBtn;
    BtnCombustivel: TBitBtn;
    BtnCPagar: TBitBtn;
    BtnSaque: TBitBtn;
    BtnTaxas: TBitBtn;
    BtnTransferencia: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnGeraisClick(Sender: TObject);
    procedure BtnCombustivelClick(Sender: TObject);
    procedure BtnCPagarClick(Sender: TObject);
    procedure BtnSaqueClick(Sender: TObject);
    procedure BtnTaxasClick(Sender: TObject);
    procedure BtnTransferenciaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroBancoSaidas: TBoxFinanceiroBancoSaidas;

implementation

uses FinanceiroBancoSaidasGerais, FinanceiroBancoSaidasCombustivel,
  FinanceiroBancoSaidasCPagar, FinanceiroBancoSaidasSaque,
  OperacoesTaxasPagamento, FDB, FinanceiroBancoSaidasTransferencias;

{$R *.dfm}

procedure TBoxFinanceiroBancoSaidas.BtnCombustivelClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidasCombustivel) then
    BoxFinanceiroBancoSaidasCombustivel := TBoxFinanceiroBancoSaidasCombustivel.Create(Self);
  BoxFinanceiroBancoSaidasCombustivel.Show;
end;

procedure TBoxFinanceiroBancoSaidas.BtnCPagarClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidasCPagar) then
    BoxFinanceiroBancoSaidasCPagar := TBoxFinanceiroBancoSaidasCPagar.Create(Self);
  BoxFinanceiroBancoSaidasCPagar.Show;
end;

procedure TBoxFinanceiroBancoSaidas.BtnGeraisClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidasGerais) then
    BoxFinanceiroBancoSaidasGerais := TBoxFinanceiroBancoSaidasGerais.Create(Self);
  BoxFinanceiroBancoSaidasGerais.Show;
end;

procedure TBoxFinanceiroBancoSaidas.BtnSaqueClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidasSaque) then
    BoxFinanceiroBancoSaidasSaque := TBoxFinanceiroBancoSaidasSaque.Create(Self);
  BoxFinanceiroBancoSaidasSaque.Show;
end;

procedure TBoxFinanceiroBancoSaidas.BtnTaxasClick(Sender: TObject);
begin
//  if not Assigned(BoxFinanceiroCaixaSaidasTaxas) then
//    BoxFinanceiroCaixaSaidasTaxas := TBoxFinanceiroCaixaSaidasTaxas.Create(Self);
//  BoxFinanceiroCaixaSaidasTaxas.Show;
  if not Assigned(BoxOperacoesTaxasPagamento) then
    BoxOperacoesTaxasPagamento := TBoxOperacoesTaxasPagamento.Create(Self);
  BoxOperacoesTaxasPagamento.Show;
end;

procedure TBoxFinanceiroBancoSaidas.BtnTransferenciaClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidasTransferencias) then
    BoxFinanceiroBancoSaidasTransferencias := TBoxFinanceiroBancoSaidasTransferencias.Create(Self);
  BoxFinanceiroBancoSaidasTransferencias.Show;
end;

procedure TBoxFinanceiroBancoSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBancoSaidas := nil;
end;

procedure TBoxFinanceiroBancoSaidas.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroBancoSaidas.FormShow(Sender: TObject);
begin
   if (FDB1.IBDataSetLoginacesso84.AsString = 'T') or      // 84 taxas
    (FDB1.IBDataSetLoginADM.AsString = 'T') then
     BtnTaxas.Enabled := True
   else
     BtnTaxas.Enabled := False;
  BtnGerais.SetFocus;
end;

end.
