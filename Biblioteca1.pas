unit Biblioteca;

interface

uses
  DbClient, SqlExpr, IBDatabase,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery;

type
  TTypeLocalizar = (fsInteger, fsString);
    procedure FilterCDS (aCds: TClientDataSet; aType: TTypeLocalizar; aBusca: string);
    procedure RefreshCDS (aDataSet: TClientDataSet);
    procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
    procedure Mensagem(strTexto: string);
    function IDTransaction: string;
    function DataHora_Servidor() : TDateTime;
     {validação de cpf / cnpj}
    function cpf(num: string): boolean;
    function cnpj(num: string): boolean;

    {função de Pesquisa}
    {Dados inseridos:
                    Localizar: Complemento do título do Form
                    Tabela: Tabela que formará o Grid
                    Campos: Campos do comboBox
                    Titulos: Títulos do ComboBox
                    Ordem: Indíce de ordem dos dados
                    Retorno: String de retorno da função
                    Banco: Objeto de conexão ao banco
                    Filtro:
                    Filtro2:
                    Filtro3:}
    function PesquisaGeral(Localizar: String; tabela: string; campos: array of string ;titulos: array of string ;ordem: string; retorno: string; banco: TSqlConnection; filtro: string; filtro2: string; filtro3: string) : variant;

    {: Criptografia }
    function Decrypt(const S: ShortString; Key: Word): string;
    function Encrypt(const S: string; Key: Word): string;

    function Crypto (Texto: string): string;
    function Decrypto (Texto: string): string;
  TBoxBiblioteca = class(TForm);
    IBQuery1: TIBQuery;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxBiblioteca: TBoxBiblioteca;
    CampoTitulos : TStringList;
    NumTitulos : Integer;
    CampoRetorno : String;
    CampoFiltro : String;
    CampoFiltro2 : String;
    CampoFiltro3 : String;
    TabelaPesquisa : String;

  const
    MSG_OK = 'Informação cadastrada com sucesso!';
    MSG_PERMISSOES = 'Você não tem permissão para executar essa ação';
    MSG_CAMPO_OBR = 'Campo obrigatório';
    MSG_ERRO = 'Ocorreu um erro!';
    Msg_Zero = 'Foi informado um valor igual a zero.';
    C1 = 52845;
    C2 = 22719;

implementation

uses FDB, PesquisaGeral;

{$R *.dfm}
// Rotina para apresentar uma caixa de mensagem.

procedure Mensagem(strTexto: string);
begin
    MessageDlg(MSG_OK, mtInformation, [mbOK], 0);
{     Application.MessageBox(PChar(strTexto),'Mensagem',MSG_OK + mb_IconInformation);}
end;

procedure FilterCDS (aCds: TClientDataSet; aType: TTypeLocalizar; aBusca: string);
begin
  aCds.Close;
  case aType of
    fsInteger: aCds.Params[0].AsInteger := StrToInt(aBusca);
    fsString: aCds.Params[0].AsString := UpperCase('%' + aBusca + '%');
  end;
  aCds.Open;
end;

procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
  Application.CreateForm(aClasseForm, aForm);
  try
    aForm.ShowModal;
  finally
    aForm.Free;
  end;
end;

function IDTransaction: string;
var
  i: integer;
const
  str = '0123456789';
begin
  for i := 1 to 2 do
  begin
    Randomize;
    Result := Result + str[Random(Length(str))+1];
  end;
end;

procedure RefreshCDS (aDataSet: TClientDataSet);
begin
  aDataSet.Close;
  aDataSet.Open;
end;

function TBoxBiblioteca.Crypto (Texto: string): string;
begin
  Result := Encrypt(Texto, 3001);
end;

function TBoxBiblioteca.Decrypto (Texto: string): string;
begin
  Result := Decrypt(Texto, 3001);
end;

function Encrypt(const S: string; Key: Word): string;
var
  I: byte;
begin
  SetLength(Result, length(s));
  for I := 1 to Length(S) do
  begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;
  end;
end;

function Decrypt(const S: ShortString; Key: Word): string;
var
  I: byte;
begin
  SetLength(Result, length(s));
  for I := 1 to Length(S) do
  begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(S[I]) + Key) * C1 + C2;
  end;
end;

function cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[5]);
  n5:=StrToInt(num[6]);
  n6:=StrToInt(num[7]);
  n7:=StrToInt(num[9]);
  n8:=StrToInt(num[10]);
  n9:=StrToInt(num[11]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
    d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
    d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
    calculado:=inttostr(d1)+inttostr(d2);
    digitado:=num[13]+num[14];
  if calculado=digitado then
    cpf:=true
  else
    cpf:=false;
end;

function PesquisaGeral(Localizar: String; tabela: string; campos: array of string; titulos: array of string ;ordem: string; retorno: string; banco: TSqlConnection; filtro: string; filtro2: string; filtro3 : string): variant;
var
x: integer;
begin
  application.CreateForm(TBoxPesquisar, BoxPesquisar);
  with BoxPesquisar do
  begin
    BoxPesquisar.Caption := 'Localizar '+Localizar;
    tblPesquisa.SqlConnection := Banco;
    TabelaPesquisa := tabela;
    CampoTitulos := TStringList.Create;
    CampoRetorno := retorno;
    CampoFiltro := filtro;
    CampoFiltro2 := filtro2;
    CampoFiltro3 := filtro3;
    NumTitulos := 0;
    for x := 0 to high(Titulos) - 1 do
      begin
        CampoTitulos.Add(Titulos[x]);
        NumTitulos := NumTitulos + 1;
      end;
    for x := 0 to high(Campos) do
      cmbCampos.items.Add(Campos[x]);
    cmbCampos.ItemIndex := 0;
    cmbTipo.ItemIndex := 1;
    ShowModal;
    Result := Resultado;
    Free;
  end;
end;

function cnpj(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[4]);
  n4:=StrToInt(num[5]);
  n5:=StrToInt(num[6]);
  n6:=StrToInt(num[8]);
  n7:=StrToInt(num[9]);
  n8:=StrToInt(num[10]);
  n9:=StrToInt(num[12]);
  n10:=StrToInt(num[13]);
  n11:=StrToInt(num[14]);
  n12:=StrToInt(num[15]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[17]+num[18];
  if calculado=digitado then
    cnpj:=true
  else
    cnpj:=false;
end;

function DataHora_Servidor() : TDateTime;
var
  QryAux : TIBQuery;
begin
   QryAux := TIbQuery.Create(nil);
  try
    QryAux.SQl.Clear;
    QryAux.SQL.Add('Select getdate() as Data_hora');
    QryAux.Open;
    Result := QryAux.FieldByName('Data_hora').AsDateTime;
  finally
   QryAux.Close;
   QryAux.Free;
  end;
end;

end.
