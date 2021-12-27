unit URetornoEntradaEstoque0KM;

interface
type
  TRetornoEntradaEstoque0KM = class
    private
    FchaveNotaFiscalEntrada: String;
    FcpfOperadorResponsavel: String;
    FdataHora: TDateTime;
    FdataHoraEnvioNotaFiscalEntrada: TDateTime;
    FnumeroDocumentoVendedor: String;
    FnumeroTermoEntradaEstoque: Integer;
    FtipoDocumentoVendedor: String;
    published
      property chaveNotaFiscalEntrada: String read FchaveNotaFiscalEntrada write FchaveNotaFiscalEntrada;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property dataHora: TDateTime read FdataHora write FdataHora;
      property dataHoraEnvioNotaFiscalEntrada: TDateTime read FdataHoraEnvioNotaFiscalEntrada write FdataHoraEnvioNotaFiscalEntrada;
      property numeroTermoEntradaEstoque: Integer read FnumeroTermoEntradaEstoque write FnumeroTermoEntradaEstoque;
      property numeroDocumentoVendedor: String read FnumeroDocumentoVendedor write FnumeroDocumentoVendedor;
      property tipoDocumentoVendedor: String read FtipoDocumentoVendedor write FtipoDocumentoVendedor;

  end;

implementation

end.
