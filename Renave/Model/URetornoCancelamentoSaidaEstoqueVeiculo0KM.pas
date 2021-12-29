unit URetornoCancelamentoSaidaEstoqueVeiculo0KM;

interface

uses
  URetornoEstoqueVeiculo0KM;
type

  TRetornoCancelamentoSaidaEstoqueVeiculo0KM = class(TRetornoEstoqueVeiculo0KM)
    private
      FdataHoraCancelamentoSaidaEstoque: TDateTime;
      FidEstoqueGeradoNoCancelamentoSaida: Integer;
    published
      property dataHoraCancelamentoSaidaEstoque: TDateTime read FdataHoraCancelamentoSaidaEstoque write FdataHoraCancelamentoSaidaEstoque;
      property idEstoqueGeradoNoCancelamentoSaida: Integer read FidEstoqueGeradoNoCancelamentoSaida write FidEstoqueGeradoNoCancelamentoSaida;
    public
  end;


implementation

end.
