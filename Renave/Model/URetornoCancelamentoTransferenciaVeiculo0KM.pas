unit URetornoCancelamentoTransferenciaVeiculo0KM;

interface

uses
  URetornoEstoqueVeiculo0KM;
type

  TRetornoCancelamentoTransferenciaVeiculo0KM = class(TRetornoEstoqueVeiculo0KM)
    private
      Fchassi: String;
      FcnpjEstabelecimentoAutorizador: String;
      FcnpjEstabelecimentoDestino: String;
      FdataHoraAutorizacao: TDateTime;
      FestadoAutorizacaoTransferencia: String;
      FidEstoque: Integer;
      FplacaVeiculo: String;
      FcpfOperadorResponsavelAutorizacao: String;
    published
      property chassi: String read Fchassi write Fchassi;
      property cnpjEstabelecimentoAutorizador: String read FcnpjEstabelecimentoAutorizador write FcnpjEstabelecimentoAutorizador;
      property cnpjEstabelecimentoDestino: String read FcnpjEstabelecimentoDestino write FcnpjEstabelecimentoDestino;
      property cpfOperadorResponsavelAutorizacao: String read FcpfOperadorResponsavelAutorizacao write FcpfOperadorResponsavelAutorizacao;
      property dataHoraAutorizacao: TDateTime read FdataHoraAutorizacao write FdataHoraAutorizacao;
      property estadoAutorizacaoTransferencia: String read FestadoAutorizacaoTransferencia write FestadoAutorizacaoTransferencia;
      property idEstoque: Integer read FidEstoque write FidEstoque;
      property placaVeiculo: String read FplacaVeiculo write FplacaVeiculo;
    public
  end;

implementation

end.
