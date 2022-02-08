unit URetornoEstoqueVeiculo0KM;

interface

uses
  System.Generics.Collections,URestricaoVeiculo0KM;

type

  TRetornoEstoqueVeiculo0KM = class
    private
      FcpfOperadorResponsavel: String;
      FID: Integer;
      FEstado: String;
      FIdEntradaEstoque: integer;
      FPlaca: string;
      FQuilometragemOdometro: integer;
      FRenavam: String;
//      FEntradaEstoque: TRetornoEntradaEstoqueVeiculo0KM;
      FRestricoesVeiculo: TObjectList<TRestricaoVeiculo0KM>;
      FChassi: String;
      FCodigoSegurancaCRV: string;
      FdataHoraOdometro: TDateTime;
    FNumeroCRV: string;
    FTipoCRV: string;
    public
      property id: Integer read FID write FID;
      property cpfOperadorResponsavel: String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property estado: String read FEstado write FEstado;
      property idEntradaEstoque: integer read FIdEntradaEstoque write FIdEntradaEstoque;
      property placa: string read FPlaca write FPlaca;
      property quilometragemOdometro: integer read FQuilometragemOdometro write FQuilometragemOdometro;
      property renavam: String read FRenavam write FRenavam;
  //    property entradaEstoque: TRetornoEntradaEstoqueVeiculo0KM read FEntradaEstoque write FEntradaEstoque;
      property restricoesVeiculo:TObjectList<TREstricaoVeiculo0KM> read FRestricoesVeiculo write FRestricoesVeiculo;
      property chassi: String read FChassi write FChassi;
      property codigosegurancaCRV: string read FCodigoSegurancaCRV write FCodigoSegurancaCRV;
      property numeroCRV: string read FNumeroCRV write FNumeroCRV;
      property tipoCRV: string read FTipoCRV write FTipoCRV;
      property dataHoraOdometro: TDateTime read FdataHoraOdometro write FdataHoraOdometro;
      constructor create;
      destructor destroy;
  end;


implementation

{ TRetornoEstoqueVeiculo0KM }



constructor TRetornoEstoqueVeiculo0KM.create;
begin
  //FEntradaEstoque := TRetornoEntradaEstoqueVeiculo0KM.Create;
  FRestricoesVeiculo := TObjectList<TREstricaoVeiculo0KM>.Create;

end;

destructor TRetornoEstoqueVeiculo0KM.destroy;
begin
  //FEntradaEstoque.Free;
  FRestricoesVeiculo.Free;
end;

end.
