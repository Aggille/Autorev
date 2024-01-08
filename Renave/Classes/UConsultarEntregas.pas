{
Sistema: Autorev
Data:01/2024
Rotina: Permitir que estabelecimento consulte as entregas no renave
Programador: Leandro do Couto
}

unit UConsultarEntregas;

interface

uses
  System.Classes,UErroConsultaRenave, UConsultarRenave,URetornoConsultaEntregas,
  System.Generics.Collections;
type

  TConsultarEntregas = class
  private
    FChassi: String;
    FListaChassi: TStringList;
    FErro: TErroConsultaRenave;
    FConsulta:TConsultarRenave;
    FRetorno: TObjectList<TRetornoConsultaEntregas>;
    FcnpjEstabelecimentoVendedor: String;
    FcnpjMontadora: String;
    FcnpjEstabelecimentoEntregador: String;
    FEstado: String;
  published
    property Chassi: String read FChassi write FChassi;
    property cnpjMontadora:String read FcnpjMontadora write FcnpjMontadora;
    property cnpjEstabelecimentoVendedor:String read FcnpjEstabelecimentoVendedor write FcnpjEstabelecimentoVendedor;
    property cnpjEstabelecimentoEntregador:String read FcnpjEstabelecimentoEntregador write FcnpjEstabelecimentoEntregador;
    property ListaChassi: TStringList read FListaChassi write FListaChassi;
    property Erro: TErroConsultaRenave read FErro write FErro;
    property Retorno: TObjectList<TRetornoConsultaEntregas> read FRetorno write FRetorno;
    property Estado :String read FEstado write FEstado;
    function Consulta:boolean;
    constructor create;
    destructor destroy;override;
    class function new:TConsultarEntregas;
  end;
{ TConsultarEntregas }

implementation

uses
  System.JSON, System.SysUtils, UConstsRenave;


function TConsultarEntregas.Consulta: boolean;
var
aRetorno,aURL:String;
aCodigoRetorno:Integer;
jArray:TJsonArray;
jObject:TJsonObject;
i:Integer;

begin
  try

    aURL := 'entregas-veiculo-zero-km/';

    if( FcnpjMontadora <> '' ) then
      aURL := aURL + '?cnpjMontadora=' + FcnpjMontadora;

    if( FcnpjEstabelecimentoVendedor <> '' ) then
      aURL := aURL + '&cnpjEstabelecimentoVendedor=' + FcnpjEstabelecimentoVendedor;

    if( FcnpjEstabelecimentoEntregador <> '' ) then
      aURL := aURL + '&cnpjEstabelecimentoEntregador=' + FcnpjEstabelecimentoEntregador;

    if( FChassi <> '' ) then
      aURL := aURL + '&chassi=' + FChassi;

    if( FEstado <> '' ) then
      aURL := aURL + '&estado=' + FEstado;


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
      FListachassi.Add( 'Chassi: '
                        + jObject.GetValue('chassi').Value
                        + ' - ID: '
                        + jObject.GetValue('id').Value
                        + ' - Estado: '
                        + jObject.GetValue('estado').Value
                        + ' - ID ATPV: '
                        + jObject.GetValue('idAtpv').Value
                        + ' - CNPJ Entregador: '
                        + jObject.GetValue('cnpjEstabelecimentoEntregador').Value
                        + ' - CNPJ Vendedor: '
                        + jObject.GetValue('cnpjEstabelecimentoVendedor').Value
                          );
     end;

    end;


  finally
   FErro := FConsulta.Erro;
   result := aCodigoREtorno = 200;
  end;

end;

constructor TConsultarEntregas.create;
begin
  FConsulta := TConsultarRenave.Create;
  FListaChassi := TStringList.Create;
  FRetorno := TObjectList<TRetornoConsultaEntregas>.Create;
end;

destructor TConsultarEntregas.destroy;
begin
  FListaChassi.Free;
  FConsulta := nil;
  freeAndNil( Fconsulta );
  if( FErro <> nil ) then FErro.Free;
  inherited;
end;

class function TConsultarEntregas.new: TConsultarEntregas;
begin
  result := self.Create;
end;

end.
