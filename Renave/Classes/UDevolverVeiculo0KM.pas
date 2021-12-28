{
Sistema: Autorev
Data:12/2021
Rotina:Permitir que estabelecimento devolva veículo que está em estoque para a montadora
Programador: Leandro do Couto
}

unit UDevolverVeiculo0KM;

interface

uses
  UConsultarRenave, UErroConsultaRenave,UDevolucaoVeiculo0KM, UConstsRenave;

type

  TDevolverVeiculo0KM = class
    private
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      FDevolucao:TDevolucaoVeiculo0KM;
    published
    public
      constructor create;
      destructor destroy;override;
      class function new:TDevolverVeiculo0KM;
      property Devolucao: TDevolucaoVeiculo0KM read FDevolucao write FDevolucao;
      property Erro: TErroConsultaRenave read FErro write FErro;
      function Devolve:Boolean;


  end;

implementation

uses
  REST.Json;

{ TDevolverVeiculo0KM }

constructor TDevolverVeiculo0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
  FDevolucao := TDevolucaoVeiculo0KM.Create;
end;

destructor TDevolverVeiculo0KM.destroy;
begin
  FConsulta.Free;
  FDevolucao.Free;
  inherited;
end;

function TDevolverVeiculo0KM.Devolve: Boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'devolucoes-montadora-veiculo-zero-km';

  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FDevolucao);
    Fconsulta.Body := aBody;
    Fconsulta.Consulta;
    aCodigoRetorno := FConsulta.CodigoRetorno;
  finally
    result := aCodigoRetorno = IntHttpCode201;
    FErro := FConsulta.Erro;
  end;

end;

class function TDevolverVeiculo0KM.new: TDevolverVeiculo0KM;
begin
  result := self.Create;
end;

end.
