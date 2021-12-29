unit URetornoEstoqueVeiculo0KM;

interface
type

  TRetornoEstoqueVeiculo0KM = class
    private
      FcpfOperadorResponsavel: String;
      FID: Integer;
    public
      property id: Integer read FID write FID;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
  end;


implementation

end.
