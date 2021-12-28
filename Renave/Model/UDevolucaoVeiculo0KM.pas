unit UDevolucaoVeiculo0KM;

interface
type
  TDevolucaoVeiculo0KM = class
    private
      FchaveNotaFiscal: String;
      FcpfOperadorResponsavel: String;
      FdataDevolucao: TDateTime;
      FidEstoque: Integer;
      FmotivoDevolucaoMontadora: String;
    published
      property chaveNotaFiscal: String read FchaveNotaFiscal write FchaveNotaFiscal;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property dataDevolucao: TDateTime read FdataDevolucao write FdataDevolucao;
      property idEstoque: Integer read FidEstoque write FidEstoque;
      property motivoDevolucaoMontadora: String read FmotivoDevolucaoMontadora write FmotivoDevolucaoMontadora;

    public
  end;


implementation

end.
