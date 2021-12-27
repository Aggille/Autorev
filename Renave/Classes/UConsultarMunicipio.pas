{
Sistema: Autorev
Data:12/2021
Rotina: Permitir que estabelecimento consulte o municipio pelo nome
Programador: Leandro do Couto
}


unit UConsultarMunicipio;

interface

uses
  UErroConsultaRenave, UConsultarRenave, UMunicipio, eFuncoes;
type
  TConsultaMunicipio = class
    private
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    FCodigoRetorno: Integer;
    public
      function ConsultaPorNome( aNome:String ):TMunicipio;
      constructor create;
      destructor destroy;override;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property CodigoRetorno: Integer read FCodigoRetorno write FCodigoRetorno;
  end;

implementation

uses
  UConstsRenave, System.JSON, System.SysUtils;

{ TConsultaMunicipio }

function TConsultaMunicipio.ConsultaPorNome(aNome: String): TMunicipio;
var
aRetorno,aURL:String;
aMunicipio:TMunicipio;
ajArray:TJsonArray;
aJson:TJsonValue;

begin

  try

    aNome := StringReplace( aNome, ' ' , '%20' , [rfReplaceAll] );
    aNome := semAcentos( aNome );

    aURL := 'municipios\?nome='+aNome ;
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpGET;
    Fconsulta.Consulta;
    FCodigoREtorno := FConsulta.CodigoRetorno;

    if( FConsulta.Erro = nil ) then
    begin

      aRetorno := FConsulta.Retorno;
      aJArray :=  TJSONObject.ParseJSONValue(aRetorno) as TJSONArray;

      if( aJArray.Count > 0 ) then
      begin
        aJson := ajArray.Get(0) as TJsonObject;
        aMunicipio := TMunicipio.Create;
        aMunicipio.id := aJson.GetValue<String>('id');
        aMunicipio.nome := aJson.GetValue<String>('nome');
        aMunicipio.uf:= aJson.GetValue<String>('uf');
      end;

    end;


  finally
    FErro := FConsulta.Erro;
    result := aMunicipio;
  end;
end;

constructor TConsultaMunicipio.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TConsultaMunicipio.destroy;
begin
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

end.
