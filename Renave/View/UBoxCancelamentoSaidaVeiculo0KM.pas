unit UBoxCancelamentoSaidaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, JvSpin,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls;

type
  TBoxCancelamentoSaidaVeiculo0KM = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtData: TJvDateEdit;
    edtId: TJvSpinEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    edtCpfOperador: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxCancelamentoSaidaVeiculo0KM: TBoxCancelamentoSaidaVeiculo0KM;

implementation

uses
  UCancelarSaidaEstoqueVeiculo0KM, REST.Json, UConstsRenave,
  UExibeRetornoEstoque;

{$R *.dfm}

procedure TBoxCancelamentoSaidaVeiculo0KM.btnConsultarClick(
  Sender: TObject);
var
aCancelar:TCancelarSaidaEstoqueVeiculo0KM;

begin

  try

    aCancelar := TCancelarSaidaEstoqueVeiculo0KM.Create;

    aCancelar.Cancelamento.cpfOperadorResponsavel := edtCpfOperador.Text;
    aCancelar.Cancelamento.dataCancelamentoSaidaEstoque := edtData.Date;
    aCancelar.Cancelamento.idEstoque := edtId.AsInteger;
    aCancelar.CancelaSaida;

    TExibeRetornoEstoque
      .new
        .Strings(edtResultado.Lines)
        .Erro(aCancelar.Erro)
        .RetornoVeiculo0KM(aCancelar.Retorno)
        .ExibeRetornoVeiculo0KM;

  finally
    aCancelar.Free;
  end;

end;

procedure TBoxCancelamentoSaidaVeiculo0KM.FormCreate(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
    begin
      edtId.Value := 123456;
      edtCpfOperador.Text := '00000000191';
    end;

    edtData.Date := Now;
end;

end.
