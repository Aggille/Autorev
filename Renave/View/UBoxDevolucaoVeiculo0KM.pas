unit UBoxDevolucaoVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TBoxDevolucaoVeiculo0KM = class(TForm)
    edtCpfOperador: TLabeledEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    edtMotivo: TComboBox;
    Label1: TLabel;
    edtChaveNFe: TLabeledEdit;
    edtId: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxDevolucaoVeiculo0KM: TBoxDevolucaoVeiculo0KM;

implementation

uses
  UDevolverVeiculo0KM, UConstsRenave, FDB, System.SysUtils, Biblioteca;

{$R *.dfm}

procedure TBoxDevolucaoVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aDevolver:TDevolverVeiculo0KM;
begin

  edtResultado.Lines.Clear;

  try

    aDevolver := TDevolverVeiculo0KM.create;
    aDevolver.Devolucao.chaveNotaFiscal := edtChaveNFe.text;
    aDevolver.Devolucao.idEstoque := StrToIntDef( edtId.Text,0);
    aDevolver.Devolucao.cpfOperadorResponsavel := edtCpfOperador.Text;
    aDevolver.Devolucao.motivoDevolucaoMontadora := edtMotivo.Text;

    if( aDevolver.Devolve ) then

      begin
        edtResultado.Lines.Add( 'Devolução efetuada' );
        FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET MOTIVO_DEVOLUCAO_MONTADORA ='
                                            + QuotedStr( edtMotivo.Text )
                                            + ','
                                            + 'DATA_DEVOLUCAO_MONTADORA ='
                                            + QuotedStr( FormatDateTime( 'mm-dd-yyyy' , now ) )
                                            +' WHERE ID_ESTOQUE = '
                                            + edtId.Text );

      end;


    if( aDevolver.Erro = nil ) then
      begin
        edtResultado.Lines.Add( 'Consulta' );

      end
    else
      begin
        edtResultado.Lines.Add( StrErroConsulta );
        edtResultado.Lines.Add('');
        edtResultado.Lines.Add(StrTituloErro + aDevolver.Erro. Titulo);
        edtResultado.Lines.Add(StrDetalheErro + aDevolver.Erro.Detalhe );
        edtResultado.Lines.Add(StrMensagemErro + aDevolver.Erro.Mensagem );
      end;

    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;


  finally
    aDevolver.Free;
  end;

end;

procedure TBoxDevolucaoVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxDevolucaoVeiculo0KM := nil;
end;

procedure TBoxDevolucaoVeiculo0KM.FormCreate(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
    begin
      edtChaveNFe.Text := '43170290205691000152550010000430171000430172';
      edtId.Text := '123456';
      edtCpfOperador.Text := '000000000191';
      edtMotivo.Items.Clear;
      edtMotivo.Items.Add( 'DEVOLUCAO_MONTADORA_FINS_DE_TRANSFORMACAO' );
      edtMotivo.items.Add( 'DEVOLUCAO_MONTADORA_CORRECAO_DE_DADOS_CADASTRAIS_FABRIS' );
      edtMotivo.items.Add( 'DEVOLUCAO_MONTADORA_AVARIAS');
      edtMotivo.items.Add( 'DEVOLUCAO_MONTADORA_VENDA_DIRETA' );

      edtMotivo.ItemIndex := 0;
    end;

end;

procedure TBoxDevolucaoVeiculo0KM.SpeedButton1Click(Sender: TObject);
var
aRet:String;
begin
 aRet := Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria', 'coalesce( Id_Estoque,0) as id_estoque'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:', 'ID Estoque:' ],
  'Descricao','ID_Estoque',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

  edtId.Text:= aRet;

end;

end.
