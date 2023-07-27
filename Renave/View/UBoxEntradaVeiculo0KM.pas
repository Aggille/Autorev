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
    qryNota: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtChassiExit(Sender: TObject);
    procedure carregaVeiculo( aChassi:String );
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
asql:String;
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
        aSQL := 'UPDATE VEICULOS SET ID_ENTRADA_ESTOQUE='
                                            + aEntrar.Retorno.id.toString
                                            + ' , ID_ESTOQUE = '
                                            + aEntrar.Retorno.id.toString
                                            +' WHERE CHASSI = '
                                            + QuotedStr( edtChassi.Text  );
        FDB1.IBDatabase.ExecuteImmediate( asql );
      end;

  finally
    aEntrada.Free;
    aEntrar.Free;
  end;
end;

procedure TBoxEntradaVeiculo0KM.carregaVeiculo(aChassi: String);
begin
  with qryNota do
  begin
    close;
    parambyname( 'chassi' ).asString := achassi;
    open;
    edtchaveNFe.text := fieldbyname( 'chave' ).asString;
    edtValorDaCompra.Value := fieldbyname( 'tot_nota' ).asFloat;
  end;
end;

procedure TBoxEntradaVeiculo0KM.EdtChassiExit(Sender: TObject);
begin
  carregaVeiculo(edtChassi.Text);
end;

procedure TBoxEntradaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxEntradaVeiculo0KM := nil;
end;

procedure TBoxEntradaVeiculo0KM.FormCreate(Sender: TObject);
begin

  edtDataEntrada.Date := now;
  edtDataOdometro.Date := now;

end;

procedure TBoxEntradaVeiculo0KM.SpeedButton1Click(Sender: TObject);
begin
 edtChassi.Text:= Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
  'Descricao','Chassi',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

  carregaVeiculo( edtChassi.text );

end;

end.
