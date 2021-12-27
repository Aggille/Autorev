unit UTransferenciaVeiculo0KM;

interface
type

  TTransferenciaVeiculo0KM = class
  private
    FchaveNotaFiscal: string;
    FcpfOperadorResponsavel: String;
    FdataHoraMedicaoHodometro: TDateTime;
    FdataTransferenciaEstoque: TDAteTime;
    FidAutorizacao: Integer;
    FquilometragemHodometro: Integer;
    FvalorCompra: Double;
  published
    property chaveNotaFiscal: string read FchaveNotaFiscal write FchaveNotaFiscal;
    property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
    property dataHoraMedicaoHodometro: TDateTime read FdataHoraMedicaoHodometro write FdataHoraMedicaoHodometro;
    property dataTransferenciaEstoque: TDAteTime read FdataTransferenciaEstoque write FdataTransferenciaEstoque;
    property idAutorizacao: Integer read FidAutorizacao write FidAutorizacao;
    property quilometragemHodometro: Integer read FquilometragemHodometro write FquilometragemHodometro;
    property valorCompra: Double read FvalorCompra write FvalorCompra;
  end;



implementation

end.
