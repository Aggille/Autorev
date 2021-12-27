unit UErroConsultaRenave;

interface


type
  TErroConsultaRenave = class
  private
    FData: TDateTime;
    FDetalhe: String;
    FMensagem: String;
    FTitulo: String;
    FlogIdRastreabilidade: String;
  published
    property Data: TDateTime read FData write FData;
    property Detalhe: String read FDetalhe write FDetalhe;
    property Mensagem: String read FMensagem write FMensagem;
    property Titulo: String read FTitulo write FTitulo;
    property LogIdRastreabilidade: String read FlogIdRastreabilidade write FlogIdRastreabilidade;
  end;

implementation

end.
