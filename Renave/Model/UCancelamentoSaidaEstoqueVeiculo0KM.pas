unit UCancelamentoSaidaEstoqueVeiculo0KM;

interface
type
  TCancelamentoSaidaEstoqueVeiculo0KM = class
    private
      FcpfOperadorResponsavel: string;
      FdataCancelamentoSaidaEstoque: TDateTime;
      FidEstoque: Integer;
    published
      property cpfOperadorResponsavel: string read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property dataCancelamentoSaidaEstoque: TDateTime read FdataCancelamentoSaidaEstoque write FdataCancelamentoSaidaEstoque;
      property idEstoque: Integer read FidEstoque write FidEstoque;
    public


  end;


implementation

end.
