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
  UConstsRenave, System.JSON, System.SysUtils, ACBrUtil;

{ TConsultaMunicipio }

function TConsultaMunicipio.ConsultaPorNome(aNome: String): TMunicipio;
var
aNomeJson,aRetorno,aURL:String;
aMunicipio:TMunicipio;
ajArray:TJsonArray;
aJson:TJsonValue;
i:Integer;

begin

  try

    aNome := StringReplace( aNome, ' ' , '%20' , [rfReplaceAll] );
    aNome := semAcentos( aNome );
    aNome := Upper( aNome );
    aURL := 'municipios?nome='+aNome ;
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpGET;
    Fconsulta.Consulta;
    FCodigoREtorno := FConsulta.CodigoRetorno;

    if( FConsulta.Erro = nil ) then
    begin

      aRetorno := FConsulta.Retorno;
      aJArray :=  TJSONObject.ParseJSONValue(aRetorno) as TJSONArray;
      aNome := StringReplace( aNome , '%20' , ' ' , [rfReplaceAll] );
      for i := 0 to aJArray.Size - 1 do
      begin

          aJson := aJArray.Get(i) as TJsonObject;
          aNomeJson := aJson.GetValue<String>('nome');
          aNomeJson := semAcentos( aNomeJson );

          if( Upper( aNome ) = Upper( aNomeJson ) ) then
          begin
            aMunicipio := TMunicipio.Create;
            aMunicipio.id := aJson.GetValue<String>('id');
            aMunicipio.nome := aJson.GetValue<String>('nome');
            aMunicipio.uf:= aJson.GetValue<String>('uf');
            break
          end;


      end;
//
//      if( aJArray.Count > 0 ) then
//      begin
//        aJson := ajArray.Get(0) as TJsonObject;
//        aMunicipio := TMunicipio.Create;
//        aMunicipio.id := aJson.GetValue<String>('id');
//        aMunicipio.nome := aJson.GetValue<String>('nome');
//        aMunicipio.uf:= aJson.GetValue<String>('uf');
//      end;

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
