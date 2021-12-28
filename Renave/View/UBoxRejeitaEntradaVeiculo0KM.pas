unit UBoxRejeitaEntradaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TBoxRejeitaEntradaVeiculo0KM = class(TForm)
    EdtChassi: TLabeledEdit;
    edtCpfOperador: TLabeledEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    edtMotivo: TComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxRejeitaEntradaVeiculo0KM: TBoxRejeitaEntradaVeiculo0KM;

implementation

uses
  URejeitarEntradaEstoqueVeiculo0KM, UConstsRenave;

{$R *.dfm}

procedure TBoxRejeitaEntradaVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aRejeitar:TRejeitarEntradaEstoqueVeiculo0KM;
begin

  edtResultado.Lines.Clear;

  try

    aRejeitar := TRejeitarEntradaEstoqueVeiculo0KM.create;
    aRejeitar.Rejeicao.chassi := edtChassi.Text;
    aRejeitar.Rejeicao.cpfOperadorResponsavel := edtCpfOperador.Text;
    aRejeitar.Rejeicao.motivoRejeicao := edtMotivo.Text;

    if( aRejeitar.Rejeita ) then

      begin
        edtResultado.Lines.Add( 'Rejeição efetuada' );
      end;


    if( aRejeitar.Erro = nil ) then
      begin
        edtResultado.Lines.Add( 'Consulta' );

      end
    else
      begin
        edtResultado.Lines.Add( StrErroConsulta );
        edtResultado.Lines.Add('');
        edtResultado.Lines.Add(StrTituloErro + aRejeitar.Erro. Titulo);
        edtResultado.Lines.Add(StrDetalheErro + aRejeitar.Erro.Detalhe );
        edtResultado.Lines.Add(StrMensagemErro + aRejeitar.Erro.Mensagem );
      end;

  finally
    aRejeitar.Free;
  end;

end;

procedure TBoxRejeitaEntradaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxRejeitaEntradaVeiculo0KM := nil;
end;

procedure TBoxRejeitaEntradaVeiculo0KM.FormCreate(Sender: TObject);
begin

  if( DebugHook <> 0 ) then
    begin
      EdtChassi.Text := 'KNAJT814BC7323816';
      edtCpfOperador.Text := '000000000191';
      edtMotivo.Items.Clear;
      edtMotivo.Items.Add( 'DESISTENCIA' );
      edtMotivo.Items.Add( 'ERRO_OPERACIONAL_MONTADORA' );
      edtMotivo.ItemIndex := 0;
    end;

end;

end.
