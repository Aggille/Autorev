unit UPessoa;

interface
uses UEndereco;

type
  TPessoa = class
    private
    FNome: String;
    FnumeroDocumento: String;
    FtipoDocumento: String;
    FEmail: String;
    FEndereco: TEndereco;
    published
      property nome: String read FNome write FNome;
      property numeroDocumento: String read FnumeroDocumento write FnumeroDocumento;
      property tipoDocumento: String read FtipoDocumento write FtipoDocumento;
      property email:String read FEmail write FEmail;
      property endereco:TEndereco read FEndereco write FEndereco;
    constructor create;
    destructor destroy;override;

  end;

implementation


{ TPessoa }

constructor TPessoa.create;
begin
  FEndereco := TEndereco.Create;
end;

destructor TPessoa.destroy;
begin
  FEndereco.Free;
  inherited;
end;

end.
