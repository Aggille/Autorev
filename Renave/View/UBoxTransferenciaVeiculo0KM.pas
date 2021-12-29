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
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxTransferenciaVeiculo0KM: TBoxTransferenciaVeiculo0KM;

implementation

uses
  UTransferenciaVeiculo0KM, UTransferirVeiculo0KM, UConstsRenave, FDB,
  Biblioteca, UExibeRetornoEstoque;

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

    TExibeRetornoEstoque
      .new
        .Erro( aTransferir.Erro )
        .RetornoVeiculo0KM( aTransferir.Retorno )
        .Strings( edtResultado.Lines )
        .ExibeRetornoVeiculo0KM;

    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;


      if( aTransferir.Retorno <> nil ) then
        begin
          // Grava 0 ID no resultado
          FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET ID_TRANSF_ESTOQUE ='
                                              + aTransferir.Retorno.id.toString
                                              +' WHERE ID_AUTORIZ_TRANSF  = '
                                              + edtId.Text);
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

procedure TBoxTransferenciaVeiculo0KM.SpeedButton1Click(Sender: TObject);
var
aRet:String;
begin
 aRet := Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria', 'coalesce( ID_AUTORIZ_TRANSF,0) as id_estoque'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:','ID Aut.Transf.:' ],
  'Descricao','ID_Estoque',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

  edtId.Text:= aRet;

end;

end.

