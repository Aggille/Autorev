unit FinanceiroCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ComCtrls;

type
  TBoxFinanceiroCaixa = class(TForm)
    ToolBar1: TToolBar;
    BtnEntradas: TBitBtn;
    BtnSaidas: TBitBtn;
    BtnResumo: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BtnEntradasClick(Sender: TObject);
    procedure BtnSaidasClick(Sender: TObject);
    procedure BtnResumoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixa: TBoxFinanceiroCaixa;

implementation

uses FinanceiroCaixaEntradas, FinanceiroCaixaResumo, FinanceiroCaixaSaidas,
  FinanceiroCaixaCheques;

{$R *.dfm}

procedure TBoxFinanceiroCaixa.BitBtn1Click(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaCheques) then
    BoxFinanceiroCaixaCheques := TBoxFinanceiroCaixaCheques.Create(Self);
  BoxFinanceiroCaixaCheques.Show;
end;

procedure TBoxFinanceiroCaixa.BtnEntradasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradas) then
    BoxFinanceiroCaixaEntradas := TBoxFinanceiroCaixaEntradas.Create(Self);
  BoxFinanceiroCaixaEntradas.Show;
end;

procedure TBoxFinanceiroCaixa.BtnResumoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaResumo) then
    BoxFinanceiroCaixaResumo := TBoxFinanceiroCaixaResumo.Create(Self);
  BoxFinanceiroCaixaResumo.Show;
end;

procedure TBoxFinanceiroCaixa.BtnSaidasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaSaidas) then
    BoxFinanceiroCaixaSaidas := TBoxFinanceiroCaixaSaidas.Create(Self);
  BoxFinanceiroCaixaSaidas.Show;
end;

procedure TBoxFinanceiroCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixa := nil;
end;

procedure TBoxFinanceiroCaixa.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFinanceiroCaixa.FormShow(Sender: TObject);
begin
  BtnEntradas.SetFocus;
end;

end.
