unit UMunicipio;

interface
type
  TMunicipio = class
  private
    Fid: String;
    Fnome: string;
    Fuf: string;
  published
    property id: String read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property uf: string read Fuf write Fuf;
  end;
implementation

end.
