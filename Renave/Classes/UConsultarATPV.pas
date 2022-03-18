{
Sistema: Autorev
Data:12/2021
Rotina:Permitir que o estabelecimento e Detran consultem o ATPV do veículo zero km para disponibilizar para o consumidor final
Programador: Leandro do Couto
}

unit UConsultarATPV;

interface

uses
  UErroConsultaRenave, UConsultarRenave, IdCoderMIME;
type
  TConsultaATPV = class
    private
      FErro: TErroConsultaRenave;
      FConsulta:TConsultarRenave;
      FCodigoRetorno: Integer;
      FDestino:String;
      procedure processaUrl( aUrl:String );
      procedure geraPdf( aValue:String );
    public
      procedure ConsultaPorChassi( aChassi,aDestino:String );
      procedure ConsultaPorPlacaRenavan( aPlaca, aRenavan, aDestino:String );
      constructor create;
      destructor destroy;override;
      property Erro: TErroConsultaRenave read FErro write FErro;
      property CodigoRetorno: Integer read FCodigoRetorno write FCodigoRetorno;


  end;

implementation

uses
  System.SysUtils, System.Classes, UConstsRenave, System.JSON;

{ TConsultaATPV }

procedure TConsultaATPV.ConsultaPorChassi(aChassi, aDestino: String);
var
aURL:String;
begin
  aURL := 'pdf-atpv?chassi=' + aChassi;
  FDestino := aDestino;
  processaURL( aUrl );
end;

procedure TConsultaATPV.ConsultaPorPlacaRenavan(aPlaca, aRenavan,aDestino: String);
var
aUrl:String;
begin
  aURL := Format( 'pdf-atpv/%s/%s', [aPlaca, aRenavan] );
  FDestino := aDestino;
  processaURL( aUrl );
end;

constructor TConsultaATPV.create;
begin
  FConsulta := TConsultarRenave.Create;
end;

destructor TConsultaATPV.destroy;
begin
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

procedure TConsultaATPV.geraPdf(aValue: String);
var
  MStream:TMemoryStream;
  aDecoder:TIdDecoderMIME;

begin
  try
    aDecoder := TIdDecoderMIME.Create(nil);
    MStream := TMemoryStream.Create;
    aDecoder.DecodeStream(aValue,MStream);
    MStream.SaveToFile(FDestino);
  finally
    FreeAndNil(aDecoder);
    FreeAndNil(MStream);
  end;

end;

procedure TConsultaATPV.processaUrl(aUrl: String);
var
aPDF,aRetorno:String;
aJson:TJSonValue;

begin

  try
    FConsulta.URL := aURL;
    Fconsulta.Metodo := StrHttpGET;
    FConsulta.Consulta;
    aRetorno := Fconsulta.Retorno;
    aJson := TJsonObject.ParseJSONValue(aRetorno);
    if( FConsulta <> nil ) then
    begin
      aPDF := TJsonObject( aJson ).getValue<String>( 'pdfAtpvBase64' );
      geraPdf( aPDF );
    end;

  finally
    FErro := FConsulta.Erro;
  end;


end;

end.
