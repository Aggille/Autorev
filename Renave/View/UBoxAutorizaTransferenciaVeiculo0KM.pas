unit UBoxAutorizaTransferenciaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,Rest.JSON,
  RxToolEdit, RxCurrEdit, Vcl.Samples.Spin, Vcl.Mask;

type
  TBoxAutorizaTransferenciaVeiculo0KM = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCnpj: TMaskEdit;
    edtCpf: TMaskEdit;
    edtIdEstoque: TSpinEdit;
    edtValorVenda: TRxCalcEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    edtResultado: TMemo;
    SpeedButton1: TSpeedButton;
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
  BoxAutorizaTransferenciaVeiculo0KM: TBoxAutorizaTransferenciaVeiculo0KM;

implementation

{$R *.dfm}

uses UAutorizacaoTransferenciaVeiculo0KM,
  UAutorizarTransferenciaVeiculo0KM, UConstsRenave, Biblioteca, FDB,
  UExibeRetornoEstoque;

procedure TBoxAutorizaTransferenciaVeiculo0KM.BitBtn1Click(
  Sender: TObject);
  var
  aAutorizacao:TAutorizacaoTransferenciaVeiculo0KM;
  aAutorizar:TAutorizarTransferenciaVeiculo0KM;
begin

  try
    aAutorizacao := TAutorizacaoTransferenciaVeiculo0KM.Create;
    aAutorizar := TAutorizarTransferenciaVeiculo0KM.Create;

    aAutorizacao.cnpjEstabelecimentoDestino := edtCnpj.Text;
    aAutorizacao.cpfOperadorResponsavel := edtCpf.Text;
    aAutorizacao.idEstoque := edtIdEstoque.Value;
    aAutorizacao.valorVenda := edtValorVenda.Value;

    aAutorizar.Autorizacao := aAutorizacao;
    aAutorizar.Autoriza;

    TExibeRetornoEstoque
      .new
        .Erro( aAutorizar.Erro )
        .RetornoVeiculo0KM( aAutorizar.Retorno )
        .Strings( edtResultado.Lines )
        .ExibeRetornoVeiculo0KM;


    if( aAutorizar.Retorno <> nil ) then
      begin
        edtResultado.Lines.Add( 'Retorno:' + TJson.ObjectToJsonString(aAutorizar.Retorno) );
        // Grava 0 ID no resultado
        if( AAutorizar.Retorno.ID > 0 ) then
          FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET ID_AUTORIZ_TRANSF='
                                              + aAutorizar.Retorno.id.toString
                                              +' WHERE ID_ESTOQUE = '
                                              + QuotedStr( edtIdEstoque.Text  ) );

      end;

//    if( aAutorizar.Erro = nil ) then
//      begin
//        edtResultado.Lines.Add( 'Consulta' );
//      end
//    else
//      begin
//        edtResultado.Lines.Add( StrErroConsulta );
//        edtResultado.Lines.Add('');
//        edtResultado.Lines.Add(StrTituloErro + aAutorizar.Erro. Titulo);
//        edtResultado.Lines.Add(StrDetalheErro + aAutorizar.Erro.Detalhe );
//        edtResultado.Lines.Add(StrMensagemErro + aAutorizar.Erro.Mensagem );
//      end;
//

  finally
    aAutorizacao.Free;
    aAutorizar.Free;
  end;

end;

procedure TBoxAutorizaTransferenciaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxAutorizaTransferenciaVeiculo0KM := nil;
end;

procedure TBoxAutorizaTransferenciaVeiculo0KM.FormShow(Sender: TObject);
begin
  if( DebugHook <> 0 ) then
  begin
    edtCnpj.Text := '00000000/0000191';
    edtCpf.Text := '62947788087';
    edtIdEstoque.Value := 123456789;
    edtValorVenda.Value := 40000;
  end;

end;

procedure TBoxAutorizaTransferenciaVeiculo0KM.SpeedButton1Click(
  Sender: TObject);
var
aRet:String;
begin
 aRet := Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria', 'coalesce( Id_Estoque,0) as id_estoque'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:', 'ID Estoque:' ],
  'Descricao','ID_Estoque',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

  edtIdEstoque.Value := StrToIntDef( aRet,0 );

end;

end.
