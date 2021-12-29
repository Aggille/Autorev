unit UBoxEntradaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,Rest.Json,
  JvBaseEdits, JvSpin, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls,
  IBX.IBQuery, Data.DB, IBX.IBCustomDataSet;

type
  TBoxEntradaVeiculo0KM = class(TForm)
    EdtChassi: TLabeledEdit;
    edtChaveNFe: TLabeledEdit;
    edtCpfOperador: TLabeledEdit;
    Label1: TLabel;
    edtDataEntrada: TJvDateEdit;
    Label2: TLabel;
    edtDataOdometro: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtQuilometragem: TJvSpinEdit;
    edtValorDaCompra: TJvCalcEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxEntradaVeiculo0KM: TBoxEntradaVeiculo0KM;

implementation

uses
  UEntradaVeiculoEstoque0KM, UEntrarEstoqueVeiculo0KM, UConstsRenave, FDB,
  Biblioteca, UExibeRetornoEstoque;


{$R *.dfm}

procedure TBoxEntradaVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aEntrada:TEntradaEstoqueVeiculo0KM;
aEntrar:TEntrarEstoqueVeiculo0KM;
begin

  edtResultado.Lines.Clear;

  try

    aEntrada := TEntradaEstoqueVeiculo0KM.Create;
    aEntrada.chassi := edtchassi.Text;
    aEntrada.chaveNotaFiscal := edtChaveNFe.Text;
    aEntrada.cpfOperadorResponsavel := edtCpfOperador.Text;
    aEntrada.dataEntradaEstoque := edtDataEntrada.Date;
    aEntrada.valorCompra := edtValorDaCompra.Value;
    aEntrada.dataHoraMedicaoHodometro := edtDataOdometro.Date;
    aEntrada.quilometragemHodometro := edtQuilometragem.asInteger;

    aEntrar := TEntrarEstoqueVeiculo0KM.create;
    aEntrar.Entrada := aEntrada;
    aEntrar.EntraEstoque;

    TExibeRetornoEstoque
      .new
        .Strings(edtResultado.Lines)
        .Erro(aEntrar.Erro)
        .RetornoVeiculo0KM(aEntrar.Retorno)
        .ExibeRetornoVeiculo0KM;

    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;


    if( aEntrar.Retorno <> nil ) then
      begin
        // Grava 0 ID no resultado
        FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET ID_ENTRADA_ESTOQUE='
                                            + aEntrar.Retorno.id.toString
                                            +' WHERE CHASSI = '
                                            + QuotedStr( edtChassi.Text  ) );
      end;

  finally
    aEntrada.Free;
    aEntrar.Free;
  end;
end;

procedure TBoxEntradaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxEntradaVeiculo0KM := nil;
end;

procedure TBoxEntradaVeiculo0KM.FormCreate(Sender: TObject);
begin

  if( DebugHook <> 0 ) then
  begin
    EdtChassi.Text := 'KNAJT814BC7323816';
    edtChaveNFe.Text := '43170290205691000152550010000430171000430172';
    edtCpfOperador.Text := '62947788087';
    edtQuilometragem.Value := 50000;
    edtValorDaCompra.Value := 40000;
  end;

  edtDataEntrada.Date := now;
  edtDataOdometro.Date := now;

end;

procedure TBoxEntradaVeiculo0KM.SpeedButton1Click(Sender: TObject);
begin
 edtChassi.Text:= Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
  'Descricao','Chassi',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

end;

end.
