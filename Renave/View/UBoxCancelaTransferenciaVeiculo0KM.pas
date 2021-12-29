unit UBoxCancelaTransferenciaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvSpin;

type
  TBoxCancelaTransferenciaVeiculo0KM = class(TForm)
    edtId: TJvSpinEdit;
    Label2: TLabel;
    edtCpfOperador: TLabeledEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    SpeedButton1: TSpeedButton;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxCancelaTransferenciaVeiculo0KM: TBoxCancelaTransferenciaVeiculo0KM;

implementation

uses
  UCancelarTransferenciaVeiculo0KM, REST.Json, UConstsRenave,
  UExibeRetornoEstoque;

{$R *.dfm}

procedure TBoxCancelaTransferenciaVeiculo0KM.btnConsultarClick(
  Sender: TObject);
var
aCancelar:TCancelarTransferenciaVeiculo0KM;

begin

  try

    aCancelar := TCancelarTransferenciaVeiculo0KM.Create;

    aCancelar.Cancelamento.cpfOperadorResponsavel := edtCpfOperador.Text;
    aCancelar.Cancelamento.idAutorizacao := edtId.AsInteger;
    aCancelar.Cancela;

    TExibeRetornoEstoque
      .new
        .Erro( aCancelar.Erro )
        .RetornoVeiculo0KM( aCancelar.Retorno )
        .Strings( edtResultado.Lines )
        .ExibeRetornoVeiculo0KM;

    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;

  finally
    aCancelar.Free;
  end;

end;

procedure TBoxCancelaTransferenciaVeiculo0KM.FormCreate(Sender: TObject);
begin

  if( DebugHook <> 0 ) then
    begin
      edtId.Value := 123456;
      edtCpfOperador.Text := '00000000191';
    end;

end;

end.
