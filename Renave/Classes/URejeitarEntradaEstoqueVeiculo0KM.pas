{
Sistema: Autorev
Data:12/2021
Rotina:Permitir que estabelecimento rejeite o veículo pendente de entrada em estoque
Programador: Leandro do Couto
}


unit URejeitarEntradaEstoqueVeiculo0KM;

interface

uses
  URejeicaoEntradaVeiculoEstoque0KM, UErroConsultaRenave, UConsultarRenave;
type

  TRejeitarEntradaEstoqueVeiculo0KM = class
    private
      FRejeicao: TRejeicaoEntradaVeiculoEstoque0KM;
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
    published
      property Rejeicao: TRejeicaoEntradaVeiculoEstoque0KM read FRejeicao write FRejeicao;
      property Erro: TErroConsultaRenave read FErro write FErro;
    public
      constructor create;
      destructor destroy;override;
      class function new:TRejeitarEntradaEstoqueVeiculo0KM;
      function Rejeita:boolean;
  end;

implementation

uses
  UConstsRenave, REST.Json;

{ TRejeitarEntradaEstoqueVeiculo0KM }

constructor TRejeitarEntradaEstoqueVeiculo0KM.create;
begin
  FRejeicao := TRejeicaoEntradaVeiculoEstoque0KM.Create;
  FConsulta := TConsultarRenave.Create;
end;

destructor TRejeitarEntradaEstoqueVeiculo0KM.destroy;
begin
  FRejeicao.Free;
  FConsulta.Free;
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

class function TRejeitarEntradaEstoqueVeiculo0KM.new: TRejeitarEntradaEstoqueVeiculo0KM;
begin
  result := self.Create;
end;

function TRejeitarEntradaEstoqueVeiculo0KM.Rejeita: boolean;
var
aCodigoRetorno:Integer;
aBody,aURL:String;
begin

  aURL := 'rejeicoes-zero-km';

  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpPOST;
    aBody := TJson.ObjectToJsonString(FRejeicao);
    Fconsulta.Body := aBody;
    Fconsulta.Consulta;
    aCodigoRetorno := FConsulta.CodigoRetorno;
  finally
    result := aCodigoRetorno = IntHttpCode201;
    FErro := FConsulta.Erro;
  end;

end;

end.
