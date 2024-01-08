unit UBoxEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvSpin;

type
  TBoxEntregas = class(TForm)
    edtResultado: TMemo;
    Panel1: TPanel;
    btnSair: TBitBtn;
    tabMain: TPageControl;
    tabConsulta: TTabSheet;
    tabSolicitação: TTabSheet;
    EdtChassi: TLabeledEdit;
    btnConsultar: TBitBtn;
    edtCpfOperador: TLabeledEdit;
    edtCnpjEntregador: TLabeledEdit;
    edtCnpjVendedor: TLabeledEdit;
    edtCnpjMontadora: TLabeledEdit;
    btnRealizar: TBitBtn;
    Label1: TLabel;
    edtStatus: TComboBox;
    edtId: TJvSpinEdit;
    Label2: TLabel;
    btnCancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxEntregas: TBoxEntregas;

implementation

{$R *.dfm}

uses UConsultarEntregas, URetornoConsultaEntregas, UConstsRenave,
  UCancelarEntrega, UExibeRetornoEstoque, URealizarEntrega;

procedure TBoxEntregas.btnCancelarClick(Sender: TObject);
var
aCancelar:TCancelarEntrega;
aRealizar:TRealizarEntrega;
begin
  try

    aCancelar := TCancelarEntrega.New;
    aRealizar := TRealizarEntrega.New;
    edtResultado.Lines.Clear;

    if( sender = BtnCancelar ) then
      begin

        aCancelar.Cancelamento.cpfOperadorResponsavel := edtCpfOperador.Text;
        aCancelar.Cancelamento.idEntrega := edtId.AsInteger;
        aCancelar.Cancela;


        TExibeRetornoEstoque
          .new
            .Erro( aCancelar.Erro )
            .ExibeRetornoEntregas( aCancelar.Retorno )
            .Strings( edtResultado.Lines )
            .ExibeRetornoVeiculo0KM;

      end;


    if( sender = btnRealizar ) then
    begin

        aRealizar.Realizacao.cpfOperadorResponsavel := edtCpfOperador.Text;
        aRealizar.Realizacao.idEntrega := edtId.AsInteger;
        aRealizar.Realiza;

        TExibeRetornoEstoque
          .new
            .Erro( aRealizar.Erro )
            .ExibeRetornoEntregas( aRealizar.Retorno )
            .Strings( edtResultado.Lines )
            .ExibeRetornoVeiculo0KM;

    end;


    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;

  finally
    FreeAndNil( aCancelar );
    freeAndNil( aRealizar );
  end;
end;

procedure TBoxEntregas.btnConsultarClick(Sender: TObject);
var
aConsulta : TConsultarEntregas;
aRetornoEstoque:TRetornoConsultaEntregas;
aAux:String;

begin

  edtResultado.Lines.Clear;

  try

    try

      aConsulta := TConsultarEntregas.new;
      aConsulta.Chassi := edtChassi.Text;
      aConsulta.cnpjMontadora := edtCnpjMontadora.Text;
      aConsulta.cnpjEstabelecimentoEntregador := edtCnpjEntregador.Text;
      aConsulta.cnpjEstabelecimentoVendedor := edtCnpjVendedor.Text;
      aConsulta.Estado := edtStatus.Text;

      aConsulta.Consulta;

      if( aConsulta.Erro = nil ) then
        begin
          edtResultado.Lines.Add(StrResultadoConsulta);
          edtResultado.Lines.Add('');

          if( aConsulta.ListaChassi.Count = 0 ) then
            edtResultado.Lines.Add(StrNehumRegistro);

          for aAux in aConsulta.ListaChassi do
            edtResultado.Lines.Add( aAux );
        end
      else
        begin
          edtResultado.Lines.Add( StrErroConsulta );
          edtResultado.Lines.Add('');
          edtResultado.Lines.Add(StrTituloErro + aConsulta.Erro. Titulo);
          edtResultado.Lines.Add(StrDetalheErro + aConsulta.Erro.Detalhe );
          edtResultado.Lines.Add(StrMensagemErro + aConsulta.Erro.Mensagem );
        end;

      edtResultado.SelStart:=0;
      edtResultado.SelLength:=1;



    except
      on e:Exception do
        edtResultado.Lines.Add( 'ERRO NA CONSULTA: ' + e.Message );
    end;

  finally
    freeAndNil( aConsulta );
  end;

end;

procedure TBoxEntregas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TBoxEntregas.FormCreate(Sender: TObject);
begin
  edtCnpjMontadora.Text := '04817052000106';
  edtStatus.ItemIndex := 0;
  tabMain.ActivePageIndex := 0;
end;

end.
