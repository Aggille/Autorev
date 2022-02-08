unit URetornoSaidaEstoqueVeiculo0KM;

interface
uses UPessoa, URetornoEstoqueVeiculo0KM;

type

  TRetornoSaidaEstoqueVeiculo0KM = class(TRetornoEstoqueVeiculo0KM)
    private
      FchaveNotaFiscalSaida: String;
      Fcomprador: TPessoa;
      FdataHora: TDateTime;
      FdataHoraEnvioNotaFiscalSaida: TDateTime;
      Fmotivo: String;
      FnumeroTermoSaidaEstoque: Integer;
    published
      property chaveNotaFiscalSaida: String read FchaveNotaFiscalSaida write FchaveNotaFiscalSaida;
      property comprador: TPessoa read Fcomprador write Fcomprador;
      property dataHora: TDateTime read FdataHora write FdataHora;
      property dataHoraEnvioNotaFiscalSaida: TDateTime read FdataHoraEnvioNotaFiscalSaida write FdataHoraEnvioNotaFiscalSaida;
      property motivo: String read Fmotivo write Fmotivo;
      property numeroTermoSaidaEstoque: Integer read FnumeroTermoSaidaEstoque write FnumeroTermoSaidaEstoque;
    public
      constructor create;
      destructor destroy;
  end;

implementation

{ TRetornoSaidaEstoqueVeiculo0KM }

constructor TRetornoSaidaEstoqueVeiculo0KM.create;
begin
  FComprador := TPessoa.Create;
end;

destructor TRetornoSaidaEstoqueVeiculo0KM.destroy;
begin
  FComprador.Free;
  inherited;
end;

end.
