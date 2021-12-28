unit URejeicaoEntradaVeiculoEstoque0KM;

interface
type

  TRejeicaoEntradaVeiculoEstoque0KM = class
    private
    FChassi: String;
    FcpfOperadorResponsavel: String;
    FMotivoRejeicao: String;
    published
      property chassi: String read FChassi write FChassi;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property motivoRejeicao: String read FMotivoRejeicao write FmotivoRejeicao;
  end;

implementation

end.
