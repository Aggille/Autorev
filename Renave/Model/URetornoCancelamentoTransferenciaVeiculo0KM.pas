unit URetornoCancelamentoTransferenciaVeiculo0KM;

interface
type

  TRetornoCancelamentoTransferenciaVeiculo0KM = class
    private
      Fchassi: String;
      FcnpjEstabelecimentoAutorizador: String;
      FcnpjEstabelecimentoDestino: String;
      FcpfOperadorResponsavelAutorizacao: String;
      FdataHoraAutorizacao: TDateTime;
      FestadoAutorizacaoTransferencia: String;
      Fid: Integer;
      FidEstoque: Integer;
      FplacaVeiculo: String;
    published
      property chassi: String read Fchassi write Fchassi;
      property cnpjEstabelecimentoAutorizador: String read FcnpjEstabelecimentoAutorizador write FcnpjEstabelecimentoAutorizador;
      property cnpjEstabelecimentoDestino: String read FcnpjEstabelecimentoDestino write FcnpjEstabelecimentoDestino;
      property cpfOperadorResponsavelAutorizacao: String read FcpfOperadorResponsavelAutorizacao write FcpfOperadorResponsavelAutorizacao;
      property dataHoraAutorizacao: TDateTime read FdataHoraAutorizacao write FdataHoraAutorizacao;
      property estadoAutorizacaoTransferencia: String read FestadoAutorizacaoTransferencia write FestadoAutorizacaoTransferencia;
      property id: Integer read Fid write Fid;
      property idEstoque: Integer read FidEstoque write FidEstoque;
      property placaVeiculo: String read FplacaVeiculo write FplacaVeiculo;
    public
  end;

implementation

end.
