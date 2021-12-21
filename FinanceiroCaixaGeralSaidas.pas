unit FinanceiroCaixaGeralSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, DBCtrls, Buttons, StdCtrls, Mask,
  rxToolEdit, rxCurrEdit, ExtCtrls, ComCtrls, DB, IBCustomDataSet, ToolWin;

type
  TBoxFinanceiroCaixaGeralSaidas = class(TForm)
    ToolBar1: TToolBar;
    BtnDeposito: TBitBtn;
    BtnGerais: TBitBtn;
    BtnCPagar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnGeraisClick(Sender: TObject);
    procedure BtnDepositoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaGeralSaidas: TBoxFinanceiroCaixaGeralSaidas;

implementation

uses FinanceiroCaixaGeralSaidasGerais, FinanceiroCaixaGeralSaidasDeposito, FDB;

{$R *.dfm}

procedure TBoxFinanceiroCaixaGeralSaidas.BtnDepositoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaGeralSaidasDeposito) then
    BoxFinanceiroCaixaGeralSaidasDeposito := TBoxFinanceiroCaixaGeralSaidasDeposito.Create(Self);
  BoxFinanceiroCaixaGeralSaidasDeposito.Show;
end;

procedure TBoxFinanceiroCaixaGeralSaidas.BtnGeraisClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaGeralSaidasGerais) then
    BoxFinanceiroCaixaGeralSaidasGerais := TBoxFinanceiroCaixaGeralSaidasGerais.Create(Self);
  BoxFinanceiroCaixaGeralSaidasGerais.Show;
end;

procedure TBoxFinanceiroCaixaGeralSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaGeralSaidas := nil;
end;

procedure TBoxFinanceiroCaixaGeralSaidas.FormKeyPress(Sender: TObject;
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

procedure TBoxFinanceiroCaixaGeralSaidas.FormShow(Sender: TObject);
begin
  BtnGerais.SetFocus;
end;

end.
