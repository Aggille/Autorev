unit UBoxConsultaEstoqueVeiculos0Km;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TBoxConsultaEstoqueVeiculo0KM = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtchassi: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtResultado: TMemo;
    edtAtualiza: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxConsultaEstoqueVeiculo0KM: TBoxConsultaEstoqueVeiculo0KM;

implementation

uses
  UConsultarEstoquesVeiculos0KM, UConstsRenave, URetornoEstoqueVeiculo0KM,
  FDB, Biblioteca;

{$R *.dfm}

procedure TBoxConsultaEstoqueVeiculo0KM.BitBtn1Click(Sender: TObject);
var
aConsulta : TConsultarEstoqueVeiculos0KM;
aRetornoEstoque:TRetornoEstoqueVeiculo0KM;
aAux:String;
begin

  edtResultado.Lines.Clear;


  try

    try

      aConsulta := TConsultarEstoqueVeiculos0KM.new;
      aConsulta.Chassi := edtChassi.Text;
      aConsulta.Consulta;

      if( aConsulta.Erro = nil ) then
        begin
          edtResultado.Lines.Add('');
          for aRetornoEstoque In aConsulta.Retorno do
            begin
              edtResultado.Lines.Add( 'Chassi: ' + aRetornoEstoque.chassi
                                    + ' ID: ' + aRetornoEstoque.id.toString
                                    + ' STATUS: ' + aRetornoEstoque.estado );


              if( edtAtualiza.Checked ) and ( aRetornoEstoque.id.toString <> '' ) then
                begin
                  // Grava 0 ID no resultado
                  FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET ID_Estoque ='
                                                      + aRetornoEstoque.id.toString
                                                      +' WHERE CHASSI = '
                                                      + QuotedStr( aRetornoEstoque.chassi ) );
                end;


            end;
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

procedure TBoxConsultaEstoqueVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxConsultaEstoqueVeiculo0KM := nil;

end;

procedure TBoxConsultaEstoqueVeiculo0KM.FormShow(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
  begin
    EdtChassi.Text := '9C6RG3850N0016141';
  end;

end;

procedure TBoxConsultaEstoqueVeiculo0KM.SpeedButton1Click(Sender: TObject);
begin
 edtChassi.Text:= Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:',''],
  'Descricao','Chassi',Fdb1.SQLConnection1,'','','');
end;

end.
