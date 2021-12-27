unit UBoxConsultaVeiculos0Km;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TBoxConsultaVeiculos0KM = class(TForm)
    Label1: TLabel;
    edtchassi: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    edtResultado: TMemo;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxConsultaVeiculos0KM: TBoxConsultaVeiculos0KM;

implementation

uses
  UConsultarVeiculos0KM, UConstsRenave;


{$R *.dfm}

procedure TBoxConsultaVeiculos0KM.BitBtn1Click(Sender: TObject);
var
aConsulta : TConsultarVeiculos0KM;
aAux:String;
begin

  edtResultado.Lines.Clear;


  try

    try

      aConsulta := TConsultarVeiculos0KM.new;
      aConsulta.Chassi := edtChassi.Text;
      aConsulta.Consulta;

      if( aConsulta.Erro = nil ) then
        begin
          edtResultado.Lines.Add( StrVeiculosDisponiveis );
          edtResultado.Lines.Add('');
          for aAux In aConsulta.ListaChassi do
            edtResultado.Lines.Add( aAux )
        end
      else
        begin

          edtResultado.Lines.Add( StrErroConsulta );
          edtResultado.Lines.Add('');
          edtResultado.Lines.Add(StrTituloErro + aConsulta.Erro. Titulo);
          edtResultado.Lines.Add(StrDetalheErro + aConsulta.Erro.Detalhe );
          edtResultado.Lines.Add(StrMensagemErro + aConsulta.Erro.Mensagem );


        end;

    except

      on e:Exception do
        edtResultado.Lines.Add( 'ERRO NA CONSULTA: ' + e.Message );

    end;


  finally
    freeAndNil( aConsulta );
  end;
end;

end.