unit UBoxTransferenciaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,Rest.Json,
  JvBaseEdits, JvSpin, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls;

type
  TBoxTransferenciaVeiculo0KM = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtChaveNFe: TLabeledEdit;
    edtCpfOperador: TLabeledEdit;
    edtDataOdometro: TJvDateEdit;
    edtQuilometragem: TJvSpinEdit;
    edtValorDaCompra: TJvCalcEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    edtID: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxTransferenciaVeiculo0KM: TBoxTransferenciaVeiculo0KM;

implementation

uses
  UTransferenciaVeiculo0KM, UTransferirVeiculo0KM, UConstsRenave;

{$R *.dfm}

procedure TBoxTransferenciaVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aTransferencia:TTransferenciaVeiculo0KM;
aTransferir:TTransferirVeiculo0KM;
begin

  edtResultado.Lines.Clear;

  try

    aTransferencia := TTransferenciaVeiculo0KM.Create;
    aTransferencia.idAutorizacao := StrToIntDef( edtId.Text,0);
    aTransferencia.chaveNotaFiscal := edtChaveNFe.Text;
    aTransferencia.cpfOperadorResponsavel := edtCpfOperador.Text;
    aTransferencia.valorCompra := edtValorDaCompra.Value;
    aTransferencia.dataHoraMedicaoHodometro := edtDataOdometro.Date;
    aTransferencia.quilometragemHodometro := edtQuilometragem.asInteger;

    aTransferir := TTransferirVeiculo0KM.create;
    aTransferir.Transferencia := aTransferencia;
    aTransferir.TRansfere;

      if( aTransferir.Retorno <> nil ) then
        begin
          edtResultado.Lines.Add( 'Retorno:' + TJson.ObjectToJsonString(aTransferir.Retorno) );
        end;


      if( aTransferir.Erro = nil ) then
        begin
          edtResultado.Lines.Add( 'Consulta' );

        end
      else
        begin
          edtResultado.Lines.Add( StrErroConsulta );
          edtResultado.Lines.Add('');
          edtResultado.Lines.Add(StrTituloErro + aTransferir.Erro. Titulo);
          edtResultado.Lines.Add(StrDetalheErro + aTransferir.Erro.Detalhe );
          edtResultado.Lines.Add(StrMensagemErro + aTransferir.Erro.Mensagem );
        end;

  finally
    aTransferencia.Free;
    aTransferir.Free;
  end;

end;

procedure TBoxTransferenciaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxTransferenciaVeiculo0KM := nil;
end;

procedure TBoxTransferenciaVeiculo0KM.FormCreate(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
  begin
    edtId.Text := '123456789';
    edtChaveNFe.Text := '43170290205691000152550010000430171000430172';
    edtCpfOperador.Text := '62947788087';
    edtQuilometragem.Value := 50000;
    edtValorDaCompra.Value := 40000;
  end;

  edtDataOdometro.Date := now;

end;

end.

