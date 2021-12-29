unit UBoxSaidaVeiculo0KM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseEdits, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBoxSaidaVeiculo0KM = class(TForm)
    edtID: TLabeledEdit;
    edtChaveNFe: TLabeledEdit;
    edtCpfOperador: TLabeledEdit;
    Label2: TLabel;
    edtDataVenda: TJvDateEdit;
    Label4: TLabel;
    edtValorVenda: TJvCalcEdit;
    edtEmail: TLabeledEdit;
    edtNomeComprador: TLabeledEdit;
    edtCpfComprador: TLabeledEdit;
    edtLogradouro: TLabeledEdit;
    edtNumero: TLabeledEdit;
    edtCep: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtComplemento: TLabeledEdit;
    edtCodigoCidade: TLabeledEdit;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    edtResultado: TMemo;
    edtCidade: TLabeledEdit;
    btnConsultaCidade: TSpeedButton;
    edtUF: TLabeledEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    qryCliente: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConsultaCidadeClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSaidaVeiculo0KM: TBoxSaidaVeiculo0KM;

implementation

{$R *.dfm}

uses URetornoSaidaEstoqueVeiculo0KM, USaidaEstoqueVeiculo0KM,USairEstoqueVeiculo0KM,
  REST.Json, UConstsRenave, UConsultarMunicipio, UMunicipio,
  UExibeRetornoEstoque, FDB, Biblioteca, Efuncoes;

procedure TBoxSaidaVeiculo0KM.btnConsultarClick(Sender: TObject);
var
aSaida:TSaidaEstoqueVeiculo0KM;
aSair:TSairEstoqueVeiculo0KM;

begin

  try
    aSaida := TSaidaEstoqueVeiculo0KM.Create;
    aSair := TSairEstoqueVeiculo0KM.Create;

    aSaida.chaveNotaFiscal := edtChaveNFe.text;
    aSaida.cpfOperadorResponsavel := edtCpfOperador.Text;
    aSaida.dataVenda := edtDataVenda.Date;
    aSaida.emailEstabelecimento := edtEmail.Text;
    aSaida.idEstoque := StrToIntDef( edtId.Text , 0 ) ;
    aSaida.valorVenda := edtValorVenda.Value;

    aSaida.comprador.nome := edtNomeComprador.Text;
    aSaida.Comprador.numeroDocumento := edtCpfComprador.Text;
    aSaida.comprador.tipoDocumento := 'CPF';
    aSaida.comprador.email := edtEmail.Text;
    asaida.comprador.endereco.bairro := edtBairro.Text;
    aSaida.comprador.endereco.cep := edtCep.text;
    aSaida.comprador.endereco.codigoMunicipio := StrToIntDef( edtCodigoCidade.Text,0);
    aSaida.comprador.endereco.complemento := edtcomplemento.text;
    aSaida.comprador.endereco.logradouro := edtLogradouro.Text;
    aSaida.comprador.endereco.numero := edtNumero.text;

    aSair.Saida := aSaida;
    aSair.SaiEstoque;

    TExibeRetornoEstoque
      .new
        .Erro( aSair.Erro )
        .RetornoVeiculo0KM( aSair.Retorno )
        .Strings( edtResultado.Lines )
        .ExibeRetornoVeiculo0KM;

    edtResultado.SelStart:=0;
    edtResultado.SelLength:=1;


    if( aSair.Retorno<> nil ) then
      begin
        // Grava 0 ID no resultado
        FDB1.IBDatabase.ExecuteImmediate('UPDATE VEICULOS SET ID_SAIDA_ESTOQUE ='
                                            + aSair.Retorno.id.toString
                                            +' WHERE ID_ESTOQUE = '
                                            + edtId.Text );
      end;


  finally
    aSaida.Free;
    aSair.Free;
  end;

end;

procedure TBoxSaidaVeiculo0KM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  BoxSaidaVeiculo0KM := nil;
end;

procedure TBoxSaidaVeiculo0KM.FormCreate(Sender: TObject);
begin

  if( DebugHook <> 0 ) then
  begin
    edtId.Text := '123456789';
    edtChaveNFe.Text := '43170290205691000152550010000430171000430172';
    edtCpfOperador.Text := '62947788087';
    edtValorVenda.Value := 40000;
    edtEmail.Text := 'aggille@aggille.com.br';
    edtNomeComprador.Text := 'Fulano de tal';
    edtCpfComprador.Text := '00000000191';
    edtLogradouro.text := 'Rua de Teste';
    edtNumero.Text := '123';
    edtCodigoCidade.Text := '999';
    edtCidade.text := 'Novo Hamburgo';
    edtBairro.text := 'Bairro de Teste';
    edtCep.Text := '93300000';
    edtUf.Text := 'RS';
  end;

  edtDataVenda.Date := now;


end;

procedure TBoxSaidaVeiculo0KM.btnConsultaCidadeClick(Sender: TObject);
var
aConsulta:TConsultaMunicipio;
aMunicipio:TMunicipio;
begin

  try

     aConsulta := TConsultaMunicipio.Create;
     aMunicipio := aConsulta.ConsultaPorNome( edtCidade.Text );

     if( aConsulta.Erro <> nil ) then
        ShowMessage( aConsulta.CodigoRetorno.toString
                      +'-'
                      +aConsulta.Erro.Mensagem )
      else
        begin

           if( aMunicipio = nil ) then
            begin
              showMessage( 'Município não encontrado' );
              edtCodigoCidade.Text := '0';
            end
           else
            begin
              edtCodigoCidade.Text := aMunicipio.Id;
              edtUf.Text := aMunicipio.uf;
              edtCidade.Text := aMunicipio.Nome;
            end;

        end;
  finally
      aConsulta.Free;
      if( aMunicipio <> nil ) then aMunicipio.Create;
  end;

end;

procedure TBoxSaidaVeiculo0KM.SpeedButton2Click(Sender: TObject);
var
aRet:String;
begin
 aRet := Biblioteca.PesquisaGeral('Veículos','Veiculos',
  ['Modelo','Id_Veiculos','Chassi','Id_Concessionaria', 'coalesce( Id_Estoque,0) as id_estoque'],
  ['Modelo:','Sequência:','Chassi:','Concessionária:', 'ID Estoque:' ],
  'Descricao','ID_Estoque',Fdb1.SQLConnection1,'Status <>','VENDIDO','');

  edtId.Text:= aRet;

end;

procedure TBoxSaidaVeiculo0KM.SpeedButton3Click(Sender: TObject);
var
aIdCliente:Integer;
begin

  aIdCliente := Biblioteca.PesquisaGeral('Clientes','Clientes',
                ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
                ['Nome:','Sequência:','Código:','Concessionária:',''],
                'Descricao','Id_Clientes',Fdb1.SQLConnection1,'CLIENTE=','T','');

  qryCliente.Close;
  qryCliente.parambyname( 'id_clientes' ).asInteger := aIdcliente;
  qryCliente.Open;

  edtNomeComprador.text := qryCliente.fieldbyname( 'nome' ).asString;
  edtCpfComprador.Text := LimpaNumero( qryCliente.fieldbyname( 'num_cpf' ).asString )  ;
  edtLogradouro.Text := qryCliente.fieldbyname( 'Endereco' ).asString;
  edtBairro.Text := qryCliente.fieldbyname( 'Bairro' ).asString;
  edtNumero.Text := '000';
  edtCidade.Text := qryCliente.fieldbyname( 'Cidade' ).asString;
  edtUf.Text := qryCliente.fieldbyname( 'estado' ).asString;
  edtCep.Text := LimpaNumero( qryCliente.fieldbyname( 'cep' ).asString );

  btnConsultaCidade.Click;



end;

end.
