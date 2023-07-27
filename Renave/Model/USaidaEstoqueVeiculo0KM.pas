unit USaidaEstoqueVeiculo0KM;

interface

uses
  UPessoa, UMunicipio;

type
  TSaidaEstoqueVeiculo0KM = class
    private
      FchaveNotaFiscal: String;
      Fcomprador: TPessoa;
      FdataVenda: TDateTime;
      FvalorVenda: double;
      FcpfOperadorResponsavel: String;
      FidEstoque: Integer;
      FemailEstabelecimento: String;
    FMotivo: String;
    FTermoSaida: Integer;
    published
      property chaveNotaFiscal: String read FchaveNotaFiscal write FchaveNotaFiscal;
      property comprador: TPessoa read Fcomprador write FComprador;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property dataVenda: TDateTime read FdataVenda write FdataVenda;
      property emailEstabelecimento: String read FemailEstabelecimento write FemailEstabelecimento;
      property idEstoque: Integer read FidEstoque write FidEstoque;
      property termoSaida: Integer read FTermoSaida write FTermoSaida;
      property valorVenda: double read FvalorVenda write FvalorVenda;
      property Motivo: String read FMotivo write FMotivo;
    public
      constructor create;
      destructor destroy;override;

  end;
implementation

{ TSaidaEstoqueVeiculo0KM }

constructor TSaidaEstoqueVeiculo0KM.create;
begin
  FComprador := TPessoa.Create;
end;

destructor TSaidaEstoqueVeiculo0KM.destroy;
begin
  FComprador.Free;
  inherited;
end;

end.
