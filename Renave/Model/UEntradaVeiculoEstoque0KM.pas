unit UEntradaVeiculoEstoque0KM;

interface
type
  TEntradaEstoqueVeiculo0KM = class
    private
      FChassi: String;
      FChaveNotaFiscal: String;
      FcpfOperadorResponsavel: String;
      FdataEntradaEstoque: TDateTime;
      FvalorCompra: double;
      FdataHoraMedicaoHodometro: TDateTime;
      FquilometragemHodometro: Integer;
    published
      property chassi: String read FChassi write FChassi;
      property chaveNotaFiscal: String read FChaveNotaFiscal write FChaveNotaFiscal;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property dataEntradaEstoque: TDateTime read FdataEntradaEstoque write FdataEntradaEstoque;
      property valorCompra: double read FvalorCompra write FvalorCompra;
      property dataHoraMedicaoHodometro: TDateTime read FdataHoraMedicaoHodometro write FdataHoraMedicaoHodometro;
      property quilometragemHodometro: Integer read FquilometragemHodometro write FquilometragemHodometro;
  end;

implementation

end.
