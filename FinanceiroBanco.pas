unit FinanceiroBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ComCtrls;

type
  TBoxFinanceiroBanco = class(TForm)
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
  BoxFinanceiroBanco: TBoxFinanceiroBanco;

implementation

uses FinanceiroBancoEntradas, FinanceiroBancoResumo, FinanceiroBancoSaidas;

{$R *.dfm}

procedure TBoxFinanceiroBanco.BtnEntradasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoEntradas) then
    BoxFinanceiroBancoEntradas := TBoxFinanceiroBancoEntradas.Create(Self);
  BoxFinanceiroBancoEntradas.Show;
end;

procedure TBoxFinanceiroBanco.BtnResumoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoResumo) then
    BoxFinanceiroBancoResumo := TBoxFinanceiroBancoResumo.Create(Self);
  BoxFinanceiroBancoResumo.Show;
end;

procedure TBoxFinanceiroBanco.BtnSaidasClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroBancoSaidas) then
    BoxFinanceirobancoSaidas := TBoxFinanceiroBancoSaidas.Create(Self);
  BoxFinanceiroBancoSaidas.Show;
end;

procedure TBoxFinanceiroBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroBanco := nil;
end;

procedure TBoxFinanceiroBanco.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFinanceiroBanco.FormShow(Sender: TObject);
begin
  BtnEntradas.SetFocus;
end;

end.
