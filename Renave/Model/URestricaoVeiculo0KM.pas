unit URestricaoVeiculo0KM;

interface

type
  TRestricaoVeiculo0KM = class
  private
    FcodigoTipoRestricao: String;
    FtipoRestricao: String;
  published
    property codigoTipoRestricao: String read FcodigoTipoRestricao write FcodigoTipoRestricao;
    property tipoRestricao: String read FtipoRestricao write FtipoRestricao;
  end;

implementation

end.
