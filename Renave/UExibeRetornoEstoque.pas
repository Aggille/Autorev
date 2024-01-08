unit UExibeRetornoEstoque;

interface

uses
  System.Classes, UErroConsultaRenave, URetornoEstoqueVeiculo0KM,
  URetornoAutorizacaoTransferenciaVeiculo0KM, URetornoEntradaEstoqueVeiculo0KM,
  URetornoSaidaEstoqueVeiculo0KM, URetornoCancelamentoSaidaEstoqueVeiculo0KM,
  URetornoCancelamentoTransferenciaVeiculo0KM, URetornoConsultaEntregas;

type
  IExibeRetornoEstoque = interface
    ['{1A87A298-E651-4DBA-ADC9-94B7969AEEE1}']
    function Strings( aValue:TStrings ):IExibeRetornoEstoque;
    function Erro( aValue:TErroConsultaRenave ):IExibeRetornoEstoque;
    function RetornoVeiculo0KM( aValue:TRetornoEstoqueVeiculo0KM ):IExibeRetornoEstoque;
    function ExibeRetornoEntregas( aValue:TRetornoConsultaEntregas ):IExibeRetornoEstoque;
    function ExibeRetornoVeiculo0KM:IExibeRetornoEstoque;
  end;

  TExibeRetornoEstoque = class( TInterfacedObject, IExibeRetornoEstoque )
    private
      FStrings:TStrings;
      FErro:TErroConsultaRenave;
      FRetorno0KM:TRetornoEstoqueVeiculo0KM;
      procedure ExibeErro;
      procedure ExibeRetorno( aValue:TRetornoAutorizacaoTransferenciaVeiculo0KM );overload;
      procedure ExibeRetorno( aValue:TRetornoEntradaEstoqueVeiculo0KM );overload;
      procedure ExibeRetorno( aValue:TRetornoSaidaEstoqueVeiculo0KM );overload;
      procedure ExibeRetorno( aValue:TRetornoCancelamentoSaidaEstoqueVeiculo0KM );overload;
      procedure ExibeRetorno( aValue:TRetornoCancelamentoTransferenciaVeiculo0KM );overload;
      procedure ExibeRetorno( aValue:TRetornoEstoqueVeiculo0KM );overload;
    public
      constructor create;
      destructor destroy;override;
      class function new:IExibeRetornoEstoque;
      function Strings( aValue:TStrings ):IExibeRetornoEstoque;
      function Erro( aValue:TErroConsultaRenave ):IExibeRetornoEstoque;
      function RetornoVeiculo0KM( aValue:TRetornoEstoqueVeiculo0KM ):IExibeRetornoEstoque;
      function ExibeRetornoVeiculo0KM:IExibeRetornoEstoque;
      function ExibeRetornoEntregas( aValue:TRetornoConsultaEntregas ):IExibeRetornoEstoque;

  end;

implementation

uses
  UConstsRenave, System.SysUtils;

{ TExibeRetornoEstoque }

constructor TExibeRetornoEstoque.create;
begin
end;

destructor TExibeRetornoEstoque.destroy;
begin

  inherited;
end;

function TExibeRetornoEstoque.Erro(aValue: TErroConsultaRenave): IExibeRetornoEstoque;
begin
  result := self;
  FErro := aValue;
end;

procedure TExibeRetornoEstoque.ExibeErro;
begin

  if( FErro<>nil ) and (FStrings <> nil) then
  begin
    FStrings.Add( StrErroConsulta );
    FStrings.Add('');
    FStrings.Add(StrTituloErro + FErro. Titulo);
    FStrings.Add(StrDetalheErro + FErro.Detalhe );
    FStrings.Add(StrMensagemErro + FErro.Mensagem );
    FStrings.Add('');
  end;

end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoAutorizacaoTransferenciaVeiculo0KM);
begin
  if( FRetorno0KM <> nil ) then
  begin
    FStrings.Add( 'Chassi :' +   aValue.chassi );
    FStrings.Add( 'CNPJ Estab.Autorizador: ' + aValue.cnpjEstabelecimentoAutorizador );
    FStrings.Add( 'CNPJ Estab.Destino: ' + aValue.cnpjEstabelecimentoDestino );
    fStrings.Add( 'CPF Respons.Autorização: ' +  aValue.cpfOperadorResponsavelAutorizacao );
    FStrings.Add( 'Data / Hora da Autorização: ' +  FormatDateTime( 'dd/mm/yyyy hh:mm:ss',aValue.dataHoraAutorizacao  ));
    FStrings.Add( 'Estado da Autorização: ' + aValue.estadoAutorizacaoTransferencia );
    FStrings.Add( 'ID do Estoque: ' + IntToStr( aValue.idEstoque ) );
    FStrings.Add( 'Placa do veículo: ' + aValue.placaVeiculo );
  end;
end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoEntradaEstoqueVeiculo0KM);
begin
  if( FREtorno0KM <> nil ) then
  begin
    FStrings.Add( 'Chave NFe Entrada: ' + aValue.chaveNotaFiscalEntrada );
    FStrings.Add( 'Data/Hora da NFe: ' + FormatDateTime( 'dd/mm/yyyy' , aValue.dataHoraEnvioNotaFiscalEntrada ) ) ;
    FStrings.Add( 'Nº Termo de Entrada: ' + aValue.numeroTermoEntradaEstoque.ToString );
  //  FStrings.Add( 'Nº Documento do Vendedor: ' + aValue.numeroDocumentoVendedor );           alterado pelo Eduardo-comentado
  //  FStrings.Add( 'Tipo Documento do Vendedor: ' + aValue.tipoDocumentoVendedor );
  end;
end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoSaidaEstoqueVeiculo0KM);
begin
  if( FRetorno0KM <> nil ) then
  begin
    FStrings.Add( 'Chave NFe Saída: ' + aValue.chaveNotaFiscalSaida );
    FStrings.Add( 'Data da NFe: ' + FormatDateTime( 'dd/mm/yyyy' , aValue.dataHoraEnvioNotaFiscalSaida ) );
    FStrings.Add( 'Nome do Comprador: ' + aValue.comprador.nome );
    FStrings.Add( 'Nº Documento do Comprador: ' + aValue.Comprador.numeroDocumento );
    FStrings.Add( 'Tipo Documento do Comprador: ' + aValue.Comprador.tipoDocumento );
    FStrings.Add( 'Cidade do Comprador: ' + aValue.Comprador.Endereco.municipio.nome );
    FStrings.Add( 'Motivo Saida Estoque: ' + aValue.motivo );
    Fstrings.Add( 'Nº do Termo de Saída do Estoque: ' + aValue.numeroTermoSaidaEstoque.toString );
  end;
end;

function TExibeRetornoEstoque.ExibeRetornoVeiculo0KM: IExibeRetornoEstoque;
begin
  result := self;

  ExibeErro;

  if( FRetorno0KM<>nil) then
  begin
    FStrings.Add( StrResultadoConsulta );
    FStrings.Add( '' );
    FStrings.Add( 'ID :' + IntToStr( FRetorno0KM.id ) );
    FStrings.Add( 'CPF do Responsável: ' + FRetorno0KM.cpfOperadorResponsavel );
  end;

  if( FRetorno0KM is TRetornoAutorizacaoTransferenciaVeiculo0KM ) then ExibeRetorno( TRetornoAutorizacaoTransferenciaVeiculo0KM( FRetorno0KM ) );
  if( FRetorno0KM is TRetornoEntradaEstoqueVeiculo0KM ) then ExibeRetorno( TRetornoEntradaEstoqueVeiculo0KM( FRetorno0KM ) );
  if( FRetorno0KM is TRetornoSaidaEstoqueVeiculo0KM ) then ExibeRetorno( TRetornoSaidaEstoqueVeiculo0KM( FRetorno0KM ) );
  if( FRetorno0KM is TRetornoCancelamentoSaidaEstoqueVeiculo0KM ) then ExibeRetorno( TRetornoCancelamentoSaidaEstoqueVeiculo0KM( FRetorno0KM ) ) ;
  if( FRetorno0KM is TRetornoCancelamentoTransferenciaVeiculo0KM ) then ExibeRetorno( TRetornoCancelamentoTransferenciaVeiculo0KM( FRetorno0KM ) );
  if( FRetorno0KM is TRetornoEstoqueVeiculo0KM ) then ExibeRetorno( TRetornoEstoqueVeiculo0KM( FRetorno0KM ) ) ;
end;

class function TExibeRetornoEstoque.new: IExibeRetornoEstoque;
begin
  result := self.Create;
end;

function TExibeRetornoEstoque.RetornoVeiculo0KM(aValue: TRetornoEstoqueVeiculo0KM): IExibeRetornoEstoque;
begin
  result := self;
  FRetorno0KM := aValue;
end;

function TExibeRetornoEstoque.Strings(aValue: TStrings): IExibeRetornoEstoque;
begin
  result := self;
  FStrings := aValue;
end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoCancelamentoSaidaEstoqueVeiculo0KM);
begin
  if( FRetorno0KM <> nil ) then
  begin
    FStrings.Add( 'Data / hora do Cancelemento: ' + FormatDateTime( 'dd/mm/yyyy hh:mm:ss ' , aValue.dataHoraCancelamentoSaidaEstoque ) );
    FStrings.Add( 'ID Gerado no cancelamento : ' +  aValue.idEstoqueGeradoNoCancelamentoSaida.toString );
  end;
end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoCancelamentoTransferenciaVeiculo0KM);
begin
  if( FRetorno0KM <> nil ) then
  begin
    FStrings.Add( 'Chassi :' +   aValue.chassi );
    FStrings.Add( 'CNPJ Estab.Autorizador: ' + aValue.cnpjEstabelecimentoAutorizador );
    FStrings.Add( 'CNPJ Estab.Destino: ' + aValue.cnpjEstabelecimentoDestino );
    fStrings.Add( 'CPF Respons.Autorização: ' +  aValue.cpfOperadorResponsavelAutorizacao );
    FStrings.Add( 'Data / Hora da Autorização: ' +  FormatDateTime( 'dd/mm/yyyy hh:mm:ss',aValue.dataHoraAutorizacao  ));
    FStrings.Add( 'Estado da Autorização: ' + aValue.estadoAutorizacaoTransferencia );
    FStrings.Add( 'ID do Estoque: ' + IntToStr( aValue.idEstoque ) );
    FStrings.Add( 'Placa do veículo: ' + aValue.placaVeiculo );
  end;
end;

procedure TExibeRetornoEstoque.ExibeRetorno(aValue: TRetornoEstoqueVeiculo0KM);
begin
  if( FRetorno0KM <> nil ) then
  begin
    FStrings.Add( 'Chassi :' +   aValue.chassi );
    FStrings.Add( 'ID do Estoque: ' + IntToStr( aValue.idEntradaEstoque ) );
  end;
end;

function TExibeRetornoEstoque.ExibeRetornoEntregas( aValue:TRetornoConsultaEntregas ):IExibeRetornoEstoque;
begin
  result := self;
  if( aValue <> nil ) then
  begin
    FStrings.Add( 'Chassi :' +   aValue.chassi );
    FStrings.Add( 'CNPJ Estab.Entregador: ' + aValue.cnpjEstabelecimentoEntregador );
    FStrings.Add( 'CNPJ Estab.Vendedor: ' + aValue.cnpjEstabelecimentoVendedor );
    FStrings.Add( 'Status: ' + aValue.estado);
    FStrings.Add( 'ID Entrega: ' + IntToStr( aValue.id ) );
    FStrings.Add( 'ID ATPV: ' + aValue.idAtpv);
    FStrings.Add( 'CPF Respons.Entrega : ' +  aValue.realizacaoEntrega.cpfResponsavel );
    FStrings.Add( 'Data / Hora da Entrega : ' +  FormatDateTime( 'dd/mm/yyyy hh:mm:ss',aValue.realizacaoEntrega.dataHoraRegistro));
    FStrings.Add( 'CPF Respons.Cancelamento: ' +  aValue.cancelamentoEntrega .cpfResponsavel );
    FStrings.Add( 'Motivo Cancelamento: ' +  aValue.cancelamentoEntrega.Motivo);
    FStrings.Add( 'Data / Hora da Cancelamento: ' +  FormatDateTime( 'dd/mm/yyyy hh:mm:ss',aValue.cancelamentoEntrega.dataHoraRegistro));

  end;
end;

end.
