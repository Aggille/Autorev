unit FinanceiroCaixaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ComCtrls;

type
  TBoxFinanceiroCaixaGeral = class(TForm)
    ToolBar1: TToolBar;
    BtnEntradas: TBitBtn;
    BtnSaidas: TBitBtn;
    BtnResumo: TBitBtn;
    procedure BtnEntradasClick(Sender: TObject);
    procedure BtnSaidasClick(Sender: TObject);
    procedure BtnResumoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaGeral: TBoxFinanceiroCaixaGeral;

implementation

uses FinanceiroCaixaGeralResumo, FinanceiroCaixaGeralSaidas, FinanceiroCaixaGeralEntrada;

{$R *.dfm}

procedure TBoxFinanceiroCaixaGeral.BtnEntradasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaGeralEntrada) then
    BoxFinanceiroCaixaGeralEntrada := TBoxFinanceiroCaixaGeralEntrada.Create(Self);
  BoxFinanceiroCaixaGeralEntrada.Show;
end;

procedure TBoxFinanceiroCaixaGeral.BtnResumoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaGeralResumo) then
    BoxFinanceiroCaixaGeralResumo := TBoxFinanceiroCaixaGeralResumo.Create(Self);
  BoxFinanceiroCaixaGeralResumo.Show;
end;

procedure TBoxFinanceiroCaixaGeral.BtnSaidasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaGeralSaidas) then
    BoxFinanceiroCaixaGeralSaidas := TBoxFinanceiroCaixaGeralSaidas.Create(Self);
  BoxFinanceiroCaixaGeralSaidas.Show;
end;

procedure TBoxFinanceiroCaixaGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaGeral := nil;
end;

procedure TBoxFinanceiroCaixaGeral.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFinanceiroCaixaGeral.FormShow(Sender: TObject);
begin
  BtnEntradas.SetFocus;
end;

end.
