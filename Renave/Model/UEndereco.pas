unit UEndereco;

interface
uses UMunicipio;

type
  TEndereco = class
    private
    FBairro: String;
    FCep: String;
    FcodigoMunicipio: Integer;
    Fcomplemento: String;
    Flogradouro: String;
    Fnumero: String;
    Fmunicipio: TMunicipio;
    published
      property bairro: String read FBairro write FBairro;
      property cep: String read FCep write FCep;
      property codigoMunicipio: Integer read FcodigoMunicipio write FcodigoMunicipio;
      property complemento: String read Fcomplemento write Fcomplemento;
      property logradouro: String read Flogradouro write Flogradouro;
      property numero : String read Fnumero write Fnumero;
      property municipio: TMunicipio read Fmunicipio write Fmunicipio;
    public
      constructor create;
      destructor destroy;override;


  end;

implementation

{ TEndereco }

constructor TEndereco.create;
begin
  FMunicipio := TMunicipio.Create;
end;

destructor TEndereco.destroy;
begin
  FMunicipio.Free;
  inherited;
end;

end.
