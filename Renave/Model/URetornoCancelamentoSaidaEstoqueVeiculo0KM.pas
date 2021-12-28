unit URetornoCancelamentoSaidaEstoqueVeiculo0KM;

interface
type

  TRetornoCancelamentoSaidaEstoqueVeiculo0KM = class
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
