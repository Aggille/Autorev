unit FinanceiroCaixaEntradasPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TBoxFinanceiroCaixaEntradasPedidos = class(TForm)
    BtnCaixa: TBitBtn;
    BtnChequesPos: TBitBtn;
    BtnBoleto: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCaixaClick(Sender: TObject);
    procedure BtnChequesPosClick(Sender: TObject);
    procedure BtnBoletoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxFinanceiroCaixaEntradasPedidos: TBoxFinanceiroCaixaEntradasPedidos;

implementation

uses FinanceiroCaixaEntradasPedidosCaixa, FinanceiroCaixaEntradasPedidosCheques,
  FinanceiroCaixaEntradasPedidosBoleto, FDB;

{$R *.dfm}

procedure TBoxFinanceiroCaixaEntradasPedidos.BtnBoletoClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasPedidosBoleto) then
    BoxFinanceiroCaixaEntradasPedidosBoleto := TBoxFinanceiroCaixaEntradasPedidosBoleto.Create(Self);
  BoxFinanceiroCaixaEntradasPedidosBoleto.Show;
end;

procedure TBoxFinanceiroCaixaEntradasPedidos.BtnCaixaClick(Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasPedidosCaixa) then
    BoxFinanceiroCaixaEntradasPedidosCaixa := TBoxFinanceiroCaixaEntradasPedidosCaixa.Create(Self);
  BoxFinanceiroCaixaEntradasPedidosCaixa.Show;
end;

procedure TBoxFinanceiroCaixaEntradasPedidos.BtnChequesPosClick(
  Sender: TObject);
begin
  if not Assigned(BoxFinanceiroCaixaEntradasPedidosCheques) then
    BoxFinanceiroCaixaEntradasPedidosCheques := TBoxFinanceiroCaixaEntradasPedidosCheques.Create(Self);
  BoxFinanceiroCaixaEntradasPedidosCheques.Show;
end;

procedure TBoxFinanceiroCaixaEntradasPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxFinanceiroCaixaEntradasPedidos := nil;
end;

procedure TBoxFinanceiroCaixaEntradasPedidos.FormShow(Sender: TObject);
begin
 if (FDB1.IBDataSetLoginacesso93.AsString <> 'T') AND      // 91 nf de remessa
    (FDB1.IBDataSetLoginADM.AsString <> 'T') then
   begin
      BtnChequesPos.Enabled := False;
      BtnBoleto.Enabled := False;
   end;
end;

end.
