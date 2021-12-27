unit UAutorizacaoTransferenciaVeiculo0KM;

interface
type
  TAutorizacaoTransferenciaVeiculo0KM = class
    private
    FcnpjEstabelecimentoDestino: String;
    FcpfOperadorResponsavel: String;
    FidEstoque: Integer;
    FvalorVenda: Double;
    published
      property cnpjEstabelecimentoDestino: String read FcnpjEstabelecimentoDestino write FcnpjEstabelecimentoDestino;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property idEstoque: Integer read FidEstoque write FidEstoque;
      property valorVenda: Double read FvalorVenda write FvalorVenda;

  end;


implementation

end.
