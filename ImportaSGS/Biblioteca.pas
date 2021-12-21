unit Biblioteca;

interface

uses DbClient, IBCustomDataset, Classes, Forms, Messages, DB, Dialogs, Windows, SqlExpr, IBDatabase,
  Controls, Variants;

  type
  TTypeLocalizar = (fsInteger, fsString);
  procedure FilterCDS (aCds: TClientDataSet; aType: TTypeLocalizar; aBusca: string);
  procedure RefreshCDS (aDataSet: TClientDataSet);
  procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
  procedure Mensagem(strTexto: string);
  procedure DuplicaRegistro(Dataset : TIBDataset);
  function ConfereCamposPreenchidos(DtSrc: TDataSource): Boolean;
  function TiraPontoseBarrasCPF(Text : string): string;
  function ColocaPontoseBarrasCPF(Text : string) : string;
  function ColocaPontoseBarrasCNPJ(Text : string) : string;
  function StrZero(Numero: string; Total: integer): string;
  function TiraCFOPServicos(Text : string; QtdeCFOP : Integer): string;    
  function IDTransaction: string;
  function tiraAcento(palavra: String): String;
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
    {: Criptografia }
  function Decrypt(const S: ShortString; Key: Word): string;
  function Encrypt(const S: string; Key: Word): string;

  function Crypto (Texto: string): string;
  function Decrypto (Texto: string): string;
  {Valida sigla de estados brasileiros}
  function VESTADO(Dado: string): boolean;
  function ValidaCliente(Dataset : TIBDataset) : Boolean;


  var
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

uses SysUtils, FDBNovo;

// Rotina para apresentar uma caixa de mensagem.

function StrZero(Numero: String; Total: integer): string;
var
   TempStr: string;
begin
//   Str(Numero: 0: Decimal, TempStr);
   TempStr := Numero;
   while length(TempStr) < Total do
      Insert('0', TempStr, 1);
   StrZero := TempStr;
end;
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

function Crypto (Texto: string): string;
begin
  Result := Encrypt(Texto, 3001);
end;

function Decrypto (Texto: string): string;
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
   if num = '000.000.000-00' then
   begin
      cpf := False;
   end
   else
   if num = '111.111.111-11' then
   begin
      cpf := False;
   end
   else
   if num = '222.222.222-22' then
   begin
      cpf := False;
   end
   else
   if num = '333.333.333-33' then
   begin
      cpf := False;
   end
   else
   if num = '444.444.444-44' then
   begin
      cpf := False;
   end
   else
   if num = '555.555.555-55' then
   begin
      cpf := False;
   end
   else
   if num = '666.666.666-66' then
   begin
      cpf := False;
   end
   else
   if num = '777.777.777-77' then
   begin
      cpf := False;
   end
   else
   if num = '888.888.888-88' then
   begin
      cpf := False;
   end
   else
   if num = '999.999.999-99' then
   begin
      cpf := False;
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


function ColocaPontoseBarrasCPF(Text : string) : string;
begin
   Text := Copy (Text, 1, 3) + '.' + Copy (Text, 4, 3) + '.' +
      Copy(Text, 7, 3) + '-' + Copy (Text, 10, 2);
   Result := Text;
end;

function ColocaPontoseBarrasCNPJ(Text : string) : string;
begin
   Text := Copy (Text, 1, 2) + '.' + Copy (Text, 3, 3) + '.' +
      Copy(Text, 6, 3) + '/' + Copy (Text, 9, 4) + '-' + Copy (Text, 13, 2);
   Result := Text;
end;

function ConfereCamposPreenchidos(DtSrc: TDataSource): Boolean;
var
  i : integer;
{: verifica quais os campos que estão em branco no cadastro}
begin
  Result := True; {: assume que estão todos preenchidos}
  for i := 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[i].Required then
      if (DtSrc.DataSet.Fields[i].IsNull) Or (DtSrc.DataSet.Fields[i].AsString = '') then
      begin
        MessageDlg('Preencha o campo " '+ DtSrc.DataSet.Fields[i].DisplayLabel + '"', mtWarning,[mbOk], 0);
        Result := False;
        DtSrc.DataSet.Fields[i].FocusControl; {: coloca o foco no controle}
        Break;
      end;
end;


{Valida sigla de estados brasileiros}
function VESTADO(Dado: string): boolean;
const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
   Posicao: integer;
begin
   Result := true;
   if Dado <> '' then
   begin
      Posicao := Pos(UpperCase(Dado), Estados);
      if (Posicao = 0) or ((Posicao mod 2) = 0) then
         Result := false
   end;
end;

procedure DuplicaRegistro(Dataset : TIBDataset);
var
  valores : variant;
  i : Integer;
begin
  // Duplica Registros
  with Dataset do
   begin
    valores := VarArrayCreate([0, dataSet.FieldCount - 1],
                                            VarVariant);
    for i := 0 to (dataSet.FieldCount - 1) do
     begin
      valores[i] := dataSet.Fields[i].Value;
     end;
    Insert;
    for i := 0 to (dataSet.FieldCount - 1) do
     begin
      dataSet.Fields[i].Value := valores[i];
     end;
   end;
end;

function tiraAcento(palavra: String): String;
var
acentos, sacentos: array[ 1..42] of String;
x:Integer;
begin


  acentos[01] := 'á';
  acentos[02] := 'é';
  acentos[03] := 'í';
  acentos[04] := 'ó';
  acentos[05] := 'ú';
  acentos[06] := 'Á';
  acentos[07] := 'É';
  acentos[08] := 'Í';
  acentos[09] := 'Ó';
  acentos[10] := 'Ú';
  acentos[11] := 'â';
  acentos[12] := 'ê';
  acentos[13] := 'î';
  acentos[14] := 'ô';
  acentos[15] := 'ô';
  acentos[16] := 'Â';
  acentos[17] := 'Ê';
  acentos[18] := 'Î';
  acentos[19] := 'Ô';
  acentos[20] := 'Û';
  acentos[21] := 'ã';
  acentos[22] := 'õ' ;
  acentos[23] := 'Ã';
  acentos[24] := 'Õ';
  acentos[25] := 'à';
  acentos[26] := 'è';
  acentos[27] := 'ì';
  acentos[28] := 'ò';
  acentos[29] := 'ù';
  acentos[30] := 'À';
  acentos[31] := 'È';
  acentos[32] := 'Ì';
  acentos[33] := 'Ò';
  acentos[34] := 'Ù';
  acentos[35] := 'ç';
  acentos[36] := 'Ç';
  acentos[37] := 'ä';
  acentos[38] := 'ü';
  acentos[39] := 'Ä';
  acentos[40] := 'Ü';
  acentos[41] := 'º';
  acentos[42] := 'ª';

  sacentos[01] := 'a';
  sacentos[02] := 'e';
  sacentos[03] := 'i';
  sacentos[04] := 'o';
  sacentos[05] := 'u';
  sacentos[06] := 'A';
  sacentos[07] := 'E';
  sacentos[08] := 'I';
  sacentos[09] := 'O';
  sacentos[10] := 'U';
  sacentos[11] := 'a';
  sacentos[12] := 'e';
  sacentos[13] := 'i';
  sacentos[14] := 'o';
  sacentos[15] := 'u';
  sacentos[16] := 'A';
  sacentos[17] := 'E';
  sacentos[18] := 'I';
  sacentos[19] := 'O';
  sacentos[20] := 'U';
  sacentos[21] := 'a';
  sacentos[22] := 'o';
  sacentos[23] := 'A';
  sacentos[24] := 'O';
  sacentos[25] := 'a';
  sacentos[26] := 'e';
  sacentos[27] := 'i';
  sacentos[28] := 'o';
  sacentos[29] := 'u';
  sacentos[30] := 'A';
  sacentos[31] := 'E';
  sacentos[32] := 'I';
  sacentos[33] := 'O';
  sacentos[34] := 'U';
  sacentos[35] := 'c';
  sacentos[36] := 'C';
  sacentos[37] := 'a';
  sacentos[38] := 'u';
  sacentos[39] := 'A';
  sacentos[40] := 'U';
  sacentos[41] := 'o';
  sacentos[42] := 'a';

  for x := 1 to 42 do
    palavra := StringReplace( palavra,acentos[x], sacentos[x], [rfReplaceAll] );

  result := palavra;

end;

function TiraPontoseBarrasCPF(Text : string): string;
var
   n: integer;
begin
   for n := 1 to length(Text) do
   begin
      if (Copy(Text, n, 1) = '.') or
         (Copy(Text, n, 1) = '-') or
         (Copy(Text, n, 1) = '/') then
      begin
         Delete(Text, n, 1);
      end;
   end;
   Result := Text;
end;

function TiraCFOPServicos(Text : string; QtdeCFOP : Integer): string;
var
   n: integer;
begin
   for n := 1 to length(Text) do
   begin
     if (Copy(Text, n, 1) = '/') then
       if QtdeCFOP = 1 then
         begin
           Delete(Text, n, length(Text) - n + 1);
         end
       else
         QtdeCFOP := QtdeCFOP - 1;
   end;
   Result := Text;
end;

function ValidaCliente(Dataset : TIBDataset) : Boolean;
begin
  Result := True;
  with Dataset do
  begin
    if FieldByName('Codigo_Municipio').AsVariant = null then
     begin
      Result := False;
      Showmessage('Código do município inválido.');
     end;
    if Not VEstado(FieldByName('Estado').AsString) then
     begin
       Result := False;
       Showmessage('Estado inválido.');
     end;
  end;
end;
end.
