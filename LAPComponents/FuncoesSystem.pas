{***************************************
 Funcıes comuns a todos os sistema criados
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit FuncoesSystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls,
  Dialogs, Forms, ShellApi, DBGrids, DB, Grids;

type
  TAfterSearchEvent = procedure (Sender: TObject; AModalResult: integer) of object;
  TTypeError = (teError, teWarning);

  const
  MSG_OK : string = 'Save sucess!';
  MSG_IMCOMPLETE : string = 'Fields imcomplete!';
  C1 = 52845;
  C2 = 22719;

  procedure AbreForm (aClasseForm : TComponentClass; aForm: TForm);
  function RemoveChar(const Ch: Char; const S: string): string;
  function RemoveAcento(Str: string): string;
  function GeraSenha (aQuant: integer): string;
  function Decrypt(const S: ShortString; Key: Word): string;
  function Encrypt(const S: string; Key: Word): string;

  function Crypto (aText: string): string;
  function Decrypto (aText: string): string;


implementation

uses UrlMon, Graphics;

function Busca (Busca, Text: string): Boolean;
{Pesquisa um caractere na string, retornando se achou}
begin
  Result := (Pos(Busca, Text) > 0);
end;

procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
  {: metodo para abrir form}
  Application.CreateForm(aClasseForm, aForm);
  try
    aForm.ShowModal;
  finally
    aForm.Free;
  end;
end;

function RemoveChar (const Ch: Char; const S: string): string;
var
  Posicao: integer;
begin
  Result := S;
  Posicao := Pos(Ch, Result);
  while Posicao > 0 do
  begin
    Delete(Result, Posicao, 1);
    Posicao := Pos(Ch, Result);
  end;
end;

function RemoveAcento(Str: string): string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: Integer;
begin
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento)<>0 Then
  Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  Result := Str;
end;

function GeraSenha (aQuant: integer): string;
var
  i: integer;
const
  str = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
begin
  for i:= 1 to aQuant do
  begin
    Randomize;
    Result := Result + str[Random(Length(str))+1];
  end;
end;

function Crypto (aText: string): string;
begin
  Result := Encrypt(aText, 1085);
end;

function Decrypto (aText: string): string;
begin
  Result := Decrypt(aText, 1085);
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

end.


