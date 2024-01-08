unit URetornoConsultaEntregas;

interface

type

  TCancelamentoEntrega = class
    private
      FdataHoraRegistro: TDateTime;
      FMotivo: String;
      FcpfResponsavel: String;
    public
      property cpfResponsavel:String read FcpfResponsavel write FcpfResponsavel;
      property dataHoraRegistro:TDateTime read FdataHoraRegistro write FdataHoraRegistro;
      property motivo:String read FMotivo write FMotivo;
  end;

  TRealizacaoEntrega = class
    private
      FdataHoraRegistro: TDateTime;
      FcpfResponsavel: String;
    public

      property cpfResponsavel:String read FcpfResponsavel write FcpfResponsavel;
      property dataHoraRegistro:TDateTime read FdataHoraRegistro write FdataHoraRegistro;
  end;

  TRetornoConsultaEntregas = class
    private
      FChassi: String;
      FcnpjEstabelecimentoEntregador: String;
      FcnpjEstabelecimentoVendedor: String;
      FidAtpv: string;
      FidEntregaGeradaNoCancelamentoEntrega: integer;
      Fid: integer;
      FidEntregaOrigemCancelamentoEntrega: integer;
      Festado: String;
      FrealizacaoEntrega: TRealizacaoEntrega;
      FcancelamentoEntrega: TCancelamentoEntrega;
    public
      constructor create;
      property chassi:String read FChassi write FChassi;
      property cnpjEstabelecimentoEntregador:String read FcnpjEstabelecimentoEntregador write FcnpjEstabelecimentoEntregador;
      property cnpjEstabelecimentoVendedor:String read FcnpjEstabelecimentoVendedor write FcnpjEstabelecimentoVendedor;
      property estado: String read Festado write Festado;
      property id:integer read Fid write Fid;
      property idAtpv:string read FidAtpv write FidAtpv;
      property idEntregaGeradaNoCancelamentoEntrega:integer read FidEntregaGeradaNoCancelamentoEntrega write FidEntregaGeradaNoCancelamentoEntrega;
      property idEntregaOrigemCancelamentoEntrega:integer read FidEntregaOrigemCancelamentoEntrega write FidEntregaOrigemCancelamentoEntrega;
      property cancelamentoEntrega:TCancelamentoEntrega read FcancelamentoEntrega write FcancelamentoEntrega;
      property realizacaoEntrega:TRealizacaoEntrega read FrealizacaoEntrega write FrealizacaoEntrega;

  end;

implementation


{ TRetornoConsultaEntregas }

constructor TRetornoConsultaEntregas.create;
begin
  FrealizacaoEntrega := TRealizacaoEntrega.Create;
  FcancelamentoEntrega := TCancelamentoEntrega.Create;
end;

end.
