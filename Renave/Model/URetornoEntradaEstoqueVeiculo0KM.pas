unit URetornoEntradaEstoqueVeiculo0KM;

interface

uses
  URetornoEstoqueVeiculo0KM;
type
  TRetornoEntradaEstoqueVeiculo0KM = class(TRetornoEstoqueVeiculo0KM)
    private
      FchaveNotaFiscalEntrada: String;
      FdataHora: TDateTime;
      FdataHoraEnvioNotaFiscalEntrada: TDateTime;
      FnumeroDocumentoVendedor: String;
      FnumeroTermoEntradaEstoque: Integer;
      FtipoDocumentoVendedor: String;
    published
      property chaveNotaFiscalEntrada: String read FchaveNotaFiscalEntrada write FchaveNotaFiscalEntrada;
      property dataHora: TDateTime read FdataHora write FdataHora;
      property dataHoraEnvioNotaFiscalEntrada: TDateTime read FdataHoraEnvioNotaFiscalEntrada write FdataHoraEnvioNotaFiscalEntrada;
      property numeroTermoEntradaEstoque: Integer read FnumeroTermoEntradaEstoque write FnumeroTermoEntradaEstoque;
      property numeroDocumentoVendedor: String read FnumeroDocumentoVendedor write FnumeroDocumentoVendedor;
      property tipoDocumentoVendedor: String read FtipoDocumentoVendedor write FtipoDocumentoVendedor;

  end;

implementation

end.
