{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento consulte veículos pendentes de entrada em seu estoque
Programador: Leandro do Couto
}


unit UConsultarVeiculos0KM;

interface

uses
  System.Classes,UErroConsultaRenave, UConsultarRenave;
type
  TConsultaRVeiculos0KM = class
  private
    FChassi: String;
    FListaChassi: TStringList;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
  published
    property Chassi: String read FChassi write FChassi;
    property ListaChassi: TStringList read FListaChassi write FListaChassi;
    property Erro: TErroConsultaRenave read FErro write FErro;
    function Consulta:boolean;
    constructor create;
    destructor destroy;override;
    class function new:TConsultaRVeiculos0KM;
  end;
implementation

uses
  System.JSON, System.SysUtils, UConstsRenave;



{ TConsultaVeiculos0KM }

function TConsultaRVeiculos0KM.Consulta: boolean;
var
aRetorno,aURL:String;
aCodigoRetorno:Integer;
jArray:TJsonArray;
jObject:TJsonObject;
i:Integer;

begin
  try

    aURL := 'veiculos-zero-km-pendentes-entrada-estoque';

    if FChassi <> ''  then
      aURL := aURL + '\?chassi='+FChassi;

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
      FListachassi.Add( jObject.GetValue('chassi').Value );
     end;

    end;


  finally
   FErro := FConsulta.Erro;
   result := aCodigoREtorno = 200;
  end;

end;

constructor TConsultaRVeiculos0KM.create;
begin
  FConsulta := TConsultarRenave.Create;
  FListaChassi := TStringList.Create;
end;

destructor TConsultaRVeiculos0KM.destroy;
begin
  FListaChassi.Free;
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;

  inherited;
end;

class function TConsultaRVeiculos0KM.new: TConsultaRVeiculos0KM;
begin
  result := self.create;
end;

end.
