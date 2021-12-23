unit UBoxEntradaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  JvBaseEdits, JvSpin, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxEntradaVeiculo0KM: TBoxEntradaVeiculo0KM;

implementation

uses
  UEntradaEstoque0KM, UEntrarEstoqueVeiculo0KM;

{$R *.dfm}

procedure TBoxEntradaVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aEntrada:TEntradaEstoque0KM;
aEntrar:TEntrarEstoqueVeiculo0KM;
begin
  try
    aEntrada := TEntradaEstoque0KM.Create;
    aEntrada.chassi := edtchassi.Text;
    aEntrada.chaveNotaFiscal := edtChaveNFe.Text;
    aEntrada.cpfOperadorResponsavel := edtCpfOperador.Text;
    aEntrada.dataEntradaEstoque := edtDataEntrada.Date;
    aEntrada.valorCompra := edtValorDaCompra.Value;
    aEntrada.dataHoraMedicaoHodometro := edtDataOdometro.Date;
    aEntrada.quilometragemHodometro := edtQuilometragem.asInteger;

    aEntrar := TEntrarEstoqueVeiculo0KM.create;
    aEntrar.Entrada := aEntrada;
    aEntrar.Consulta;

      if( aEntrar.Erro = nil ) then
        begin
          edtResultado.Lines.Add( 'Consulta' );

        end
      else
        begin
          edtResultado.Lines.Add( 'ERRO NA CONSULTA' );
          edtResultado.Lines.Add('');
          edtResultado.Lines.Add('T�tulo : ' + aEntrar.Erro. Titulo);
          edtResultado.Lines.Add('Detalhe : ' + aEntrar.Erro.Detalhe );
          edtResultado.Lines.Add('Mensagem : ' + aEntrar.Erro.Mensagem );
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

end.
