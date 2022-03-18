unit UBoxConsultaATPV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TBoxConsultaATPV = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtTipo: TComboBox;
    edtChassi: TEdit;
    edtPlaca: TEdit;
    edtRenavan: TEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxConsultaATPV: TBoxConsultaATPV;

implementation

{$R *.dfm}

uses UConsultarATPV, System.AnsiStrings, Winapi.ShellAPI;

procedure TBoxConsultaATPV.btnConsultarClick(Sender: TObject);
var
aConsulta:TConsultaATPV;
aArq:String;
begin
  try
    aConsulta := TConsultaATPV.Create;

    if( edtTipo.ItemIndex = 0 ) then
      begin
        aArq := String.Format( 'atpv_%s.pdf' , [edtChassi.Text] );
        aArq := ExtractFilePath( Application.ExeName ) + '\' + aArq;
        aConsulta.ConsultaPorChassi(edtChassi.text, aArq );
      end
    else
      begin
        aArq := String.Format( 'atpv_%s_%s.pdf' , [edtPlaca.Text, edtRenavan.Text] );
        aArq := ExtractFilePath( Application.ExeName ) + '\' + aArq;
        aConsulta.ConsultaPorPlacaRenavan(edtPlaca.Text, edtRenavan.Text, aArq );
      end;

    if( aConsulta.Erro = nil ) then
      begin
        ShellExecute(0, nil, Pchar(aArq), nil, PChar( ExtractFilePath( Application.ExeName ) ) , SW_SHOWMAXIMIZED );
        showMessage( 'ATPV salvo em ' + #13 + aArq );
      end
    else
      ShowMessage( 'Erro :' + aConsulta.Erro.Mensagem
                    +#13
                    + 'Detalhe :' + aConsulta.Erro.Detalhe );

  finally
    aConsulta.Free;
  end;
end;

procedure TBoxConsultaATPV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxConsultaATPV := nil;
end;

procedure TBoxConsultaATPV.FormCreate(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
  begin
    edtPlaca.Text := 'ISC9F39';
    edtChassi.Text := 'KNAJT814BC7323816';
    edtRenavan.Text := '00338185674';
  end;
end;

end.
