unit FinanceiroRenegociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TBoxFinanceiroRenegociacao = class(TForm)
    BtnEfetuar: TBitBtn;
    BtnConsulta: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConsultaClick(Sender: TObject);
    procedure BtnEfetuarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroRenegociacao: TBoxFinanceiroRenegociacao;

implementation

uses FinanceiroRenegociacaoEfetuar, FDB, FinanceiroRenegociacaoConsultar;

{$R *.dfm}

procedure TBoxFinanceiroRenegociacao.BtnConsultaClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroRenegociacaoConsultar) then
    BoxFinanceiroRenegociacaoConsultar := TBoxFinanceiroRenegociacaoConsultar.Create(Self);
  BoxFinanceiroRenegociacaoConsultar.Show;
end;

procedure TBoxFinanceiroRenegociacao.BtnEfetuarClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroRenegociacaoEfetuar) then
    BoxFinanceiroRenegociacaoEfetuar := TBoxFinanceiroRenegociacaoEfetuar.Create(Self);
  BoxFinanceiroRenegociacaoEfetuar.Show;
end;

procedure TBoxFinanceiroRenegociacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroRenegociacao := nil;
end;

procedure TBoxFinanceiroRenegociacao.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxFinanceiroRenegociacao.FormShow(Sender: TObject);
begin
 if ((FDB1.IBDataSetLoginacesso47.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T')) then
   begin
     BtnConsulta.Enabled := False;
   end;
  if ((FDB1.IBDataSetLoginacesso48.AsString <> 'T') AND
    (FDB1.IBDataSetLoginADM.AsString <> 'T'))  then
   begin
     BtnEfetuar.Enabled := False;
   end;
end;

end.
