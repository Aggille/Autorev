unit UEntrarEstoqueVeiculo0KM;

interface

uses
  UEntradaEstoque0KM, UErroConsultaRenave, UConsultarRenave;
type
  TEntrarEstoqueVeiculo0KM = class
    private
    FEntrada: TEntradaEstoque0KM;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    Retorno:TRetornoEntradaEstoque0KM;

    public
      property Entrada: TEntradaEstoque0KM read FEntrada write FEntrada;
      property Erro: TErroConsultaRenave read FErro write FErro;
      function Consulta:boolean;
      constructor create;
      destructor destroy;override;
      class function new:TEntrarEstoqueVeiculo0KM;

  end;


implementation

uses
  Rest.JSON, UConstsRenave;

{ TEntrarEstoqueVeiculo0KM }

function TEntrarEstoqueVeiculo0KM.Consulta: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'entradas-estoque-zero-km';

  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FEntrada);
    Fconsulta.Body := aBody;
    Fconsulta.Consulta;
    aCodigoRetorno := Fconsulta.CodigoRetorno;
  finally
    result := aCodigoRetorno = IntHttpCode201;
    FErro := FConsulta.Erro;
  end;

end;

constructor TEntrarEstoqueVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TEntrarEstoqueVeiculo0KM.destroy;
begin
  FConsulta.Free;
  inherited;
end;

class function TEntrarEstoqueVeiculo0KM.new: TEntrarEstoqueVeiculo0KM;
begin
  result := self.create;
end;

end.
