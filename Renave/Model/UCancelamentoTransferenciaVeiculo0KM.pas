unit UCancelamentoTransferenciaVeiculo0KM;

interface
type

  TCancelamentoTransferenciaVeiculo0KM = class
    private
      FcpfOperadorResponsavel: String;
      FidAutorizacao: Integer;
    published
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property idAutorizacao: Integer read FidAutorizacao write FidAutorizacao;
  end;

implementation

end.
