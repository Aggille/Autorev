unit FinanceiroCaixaEntradasAntecipacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TBoxFinanceiroCaixaEntradasAntecipacao = class(TForm)
    BtnRecebimento: TBitBtn;
    BtnIdentificacao: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecebimentoClick(Sender: TObject);
    procedure BtnIdentificacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaEntradasAntecipacao: TBoxFinanceiroCaixaEntradasAntecipacao;

implementation

uses FinanceiroCaixaEntradasAntecipacaoIdentificacao,
  FinanceiroCaixaEntradasAntecipacaoRecebimento;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasAntecipacao.BtnIdentificacaoClick(
  Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao) then
    BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao := TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.Create(Self);
  BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao.Show;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacao.BtnRecebimentoClick(
  Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasAntecipacaoRecebimento) then
    BoxFinanceiroCaixaEntradasAntecipacaoRecebimento := TBoxFinanceiroCaixaEntradasAntecipacaoRecebimento.Create(Self);
  BoxFinanceiroCaixaEntradasAntecipacaoRecebimento.Show;
end;

procedure TBoxFinanceiroCaixaEntradasAntecipacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasAntecipacao := nil;
end;

end.

