unit UBoxConsultaTransferencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TBoxConsultaTransferencias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtchassi: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtResultado: TMemo;
    Label3: TLabel;
    edtEstado: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxConsultaTransferencias: TBoxConsultaTransferencias;

implementation

uses
  Biblioteca, FDB, UConsultarTransferencias, UConstsRenave;

{$R *.dfm}

procedure TBoxConsultaTransferencias.BitBtn1Click(Sender: TObject);
var
aConsulta : TConsultarTransferencias;
aAux:String;
begin

  edtResultado.Lines.Clear;


  try

    try

      aConsulta := TConsultarTransferencias.new;
      aConsulta.Chassi := edtChassi.Text;
      aConsulta.Estado := edtEstado.Text;

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

procedure TBoxConsultaTransferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TBoxConsultaTransferencias.SpeedButton1Click(Sender: TObject);
begin
 edtChassi.Text:= Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
  'Descricao','Chassi',Fdb1.SQLConnection1,'Status <>','VENDIDO','');
end;

end.
