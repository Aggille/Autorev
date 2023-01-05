{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento consulte as transferências
Programador: Leandro do Couto
}


unit UConsultarTransferencias;

interface

uses
  System.Classes,UErroConsultaRenave, UConsultarRenave;
type
  TConsultarTransferencias = class
  private
    FChassi: String;
    FEstado: String;
    FListaChassi: TStringList;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
//    FIdEstoqueGerado: Integer;
//    FCnpjEstabelecimentoDEstino: String;
//    FIdEstoque: Integer;
//    FCnpjEstabelecimentoAutorizador: String;
//    FnomeEstabelecimentoAutorizador: String;
//    FparaCancelamentoDeTransferencia: String;
//    FEstadoAutorizacao: String;
  published
    property Chassi: String read FChassi write FChassi;
    property Estado: String read FEstado write FEstado;
    property ListaChassi: TStringList read FListaChassi write FListaChassi;
    property Erro: TErroConsultaRenave read FErro write FErro;
//    property IdEstoque: Integer read FIdEstoque write FIdEstoque;
//    property IdEstoqueGerado:Integer read FIdEstoqueGerado write FIdEstoqueGerado;
//    property CnpjEstabelecimentoAutorizador:String read FCnpjEstabelecimentoAutorizador write FCnpjEstabelecimentoAutorizador;
//    property CnpjEstabelecimentoDestino:String read FCnpjEstabelecimentoDEstino write FCnpjEstabelecimentoDEstino;
//    property EstadoAutorizacao:String read FEstadoAutorizacao write FEstadoAutorizacao;
//    property NomeEstabelecimentoAutorizador:String read FnomeEstabelecimentoAutorizador write FnomeEstabelecimentoAutorizador;
//    property ParaCancelamentoDeTransferencia:String read FparaCancelamentoDeTransferencia write FparaCancelamentoDeTransferencia;

    function Consulta:boolean;
    constructor create;
    destructor destroy;override;
    class function new:TConsultarTransferencias;
  end;


implementation

uses
  System.JSON, UConstsRenave, System.SysUtils;

{ TConsultarTransferencias }

function TConsultarTransferencias.Consulta: boolean;
var
aRetorno,aURL:String;
aCodigoRetorno:Integer;
jArray:TJsonArray;
jObject:TJsonObject;
i:Integer;

begin



  try

    aURL := 'autorizacoes-transferencias';

    if FChassi <> ''  then
      aURL := aURL + '\?chassi='+FChassi
    else
      begin
        if( FEstado <> '' ) then
            aURL := aURL + '\?estadoAutorizacao='+FEstado
      end;

    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpGET;
    Fconsulta.Consulta;
    aCodigoREtorno := FConsulta.CodigoRetorno;

    if( FConsulta.Erro = nil ) then
    begin

      aRetorno := FConsulta.Retorno;
      jArray :=  TJSONObject.ParseJSONValue(aRetorno) as TJSONArray;

     for i := 0 to jArray.Size - 1 do
     begin
      jObject := jArray.Get(i) as TJsonObject;
      FListachassi.Add( 'Chassi:' + jObject.GetValue('chassi').Value );
      FListaChassi.Add( 'Estado:' + jObject.GetValue('estadoAutorizacaoTransferencia').Value );
      FListaChassi.Add( 'Autorizador:' + jObject.GetValue('nomeEstabelecimentoAutorizador').Value );
      FListaChassi.Add( 'CPF Resp.Autorizacao:' + jObject.GetValue('cpfOperadorResponsavelAutorizacao').Value );
      FListaChassi.Add( 'CPF Resp.Cancelamento:' + jObject.GetValue('cpfOperadorResponsavelCancelamento').Value );
      FListaChassi.Add( 'CPF Resp.Transferência:' + jObject.GetValue('cpfOperadorResponsavelTransferencia').Value );
      FListaChassi.Add( 'Placa:' + jObject.GetValue('placaVeiculo').Value );
      FListaChassi.Add( 'ID:' + jObject.GetValue('id').Value );
      FListaChassi.Add( 'ID Estoque:' + jObject.GetValue('idEstoque').Value );
      FListaChassi.Add( 'ID Estoque Gerado:' + jObject.GetValue('idEstoqueGerado').Value );
      FListaChassi.Add(  '------------------------------------------------' );
     end;

    end;


  finally
   FErro := FConsulta.Erro;
   result := aCodigoREtorno = 200;
  end;

end;

constructor TConsultarTransferencias.create;
begin
  FConsulta := TConsultarRenave.Create;
  FListaChassi := TStringList.Create;
end;

destructor TConsultarTransferencias.destroy;
begin
  FListaChassi.Free;
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;

  inherited;
end;

class function TConsultarTransferencias.new: TConsultarTransferencias;
begin
  result := self.create;
end;

end.
