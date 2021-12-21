unit PrnDOS;
{
  BY: Paulo César de Carvalho
  Dezembro de 2004.

  Esta unidade foi criada para facilitar a impressão em modo texto.

}

  interface

  uses SysUtils, Printers, Dialogs, eFuncoes;

type
   TPrnDOS = Object
    FPrnDOS : TextFile;
    Port    : String;
    Page,
    pRow,
    pCol    : Integer;

    procedure Print;
    procedure NewPage;
    procedure Compacta;
    procedure NumeroDeLinhas( n:Integer );
    procedure Normal;
    function tiraAcento( palavra:String ):String;
    procedure CharSay(Linha, Coluna: Integer; Texto: String);
    procedure CharValSay(Linha, Coluna: Integer; Valor: Real;
                         Tamanho: Integer; Decimais : Integer = 2);
    procedure CmpSay(Linha, Coluna: Integer; Texto: String);
    procedure CmpValSay(Linha, Coluna: Integer; Valor: Real;
                        Tamanho: Integer; Decimais : Integer = 2);
    procedure EndPage;
    procedure EndPrint;
   end;

implementation

{ A função PortDefaultPrinter retorna a porta de impressão selecionada
  através do componente PrintDialog }
function PortDefaultPrinter: String;
var
  Driver, Port, Device: String;
  DeviceMode: THandle;
begin
  SetLength(Driver,255);
  SetLength(Port,255);
  SetLength(Device,255);
  Printer.GetPrinter(PChar(Device), PChar(Driver), PChar(Port), DeviceMode);
  Printer.Canvas.Font.Name := 'Draft 10cpi';
  Result := Port;
  //result := 'c:\teste.txt';

end;

{ O procedimento Print inicia a impressão }
procedure TPrnDOS.Print;
begin
     Port := PortDefaultPrinter; //Porta selecionada em PrintDialog
//       Port := 'c:\nota.txt';
     AssignFile(FPrnDOS,Port);
     Rewrite(FPrnDOS);
     Page := 0;
     pRow := 0;
     pCol := 0;
end;

function TPrnDOS.tiraAcento(palavra: String): String;
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
  acentos[41] := 'ª';

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

{ O procedimento NewPage incrementa o número de páginas
  e zera as variáveis de controle de linha e coluna }
procedure TPrnDOS.NewPage;
begin
     Inc(Page);
     pRow := 0;
     pCol := 0;
end;

procedure TPrnDOS.Normal;
begin
  Write(FPrnDos,#18);
end;

procedure TPrnDOS.NumeroDeLinhas(n: Integer);
begin
      write(FPrnDOS, #27 + #67 + chr( n ));
end;

{ O procedimento CharSay imprime um texto na linha e coluna informada }
procedure TPrnDOS.CharSay(Linha, Coluna:Integer; Texto:String);
begin
  texto := tiraAcento( texto );

  Linha := Abs(Linha);
  Coluna := Abs(Coluna);
  if Linha > pRow then begin
     pCol := 0;
     while Linha > pRow do begin
       Inc(pRow);
       WriteLn(FPrnDOS,#18);
     end;
  end;
  while Coluna > pCol do begin
     Inc(pCol);
     Write(FPrnDOS,#18+#32);
  end;
  Write(FPrnDOS, Texto);
  pCol := pCol + Length(Texto);
end;

{ O procedimento CharValSay imprime um valor na linha e coluna informada,
  de acordo com o tamanho e número de decimais }
procedure TPrnDOS.CharValSay(Linha, Coluna: Integer; Valor: Real;
                       Tamanho: Integer; Decimais : Integer = 2);
var
  Texto: String;
begin
  Str(Valor:Tamanho:Decimais,Texto);
  Linha := Abs(Linha);
  Coluna := Abs(Coluna);
  if Linha > pRow then begin
     pCol := 0;
     while Linha > pRow do begin
       Inc(pRow);
       WriteLn(FPrnDOS);
     end;
  end;
  while Coluna > pCol do begin
     Inc(pCol);
     Write(FPrnDOS);
  end;
  Write(FPrnDOS, Texto);
  pCol := pCol + Tamanho;
end;

{ O procedimento CmpSay é idêntico a CharSay, simplesmente,
  comprimindo o texto }
Procedure TPrnDOS.CmpSay(Linha, Coluna:Integer; Texto:String);
begin
  texto := tiraAcento( texto );
  Linha  := Abs(Linha);
  Coluna := Abs(Coluna);
  if Linha > pRow then begin
     pCol:= 0;
     while Linha > pRow do begin
       Inc(pRow);
       WriteLn(FPrnDOS);
     end;
  end;
  while Coluna > pCol do begin
     Inc(pCol);
     Write(FPrnDOS,#32);
  end;
  Write(FPrnDos, Texto);
  pCol := pCol + Length(Texto);
end;

{ O procedimento CmpValSay é idêntico a CharValSay, simplesmente
  comprimindo o valor }
procedure TPrnDOS.CmpValSay(Linha, Coluna: Integer; Valor: Real;
                      Tamanho: Integer; Decimais : Integer = 2);
var
  Texto : String;
begin
  //Str(Valor:Tamanho:Decimais,Texto);
// texto := PadL( FloatToStrF( valor , ffNumber, tamanho , decimais ), tamanho + decimais + 1  );
 texto := padL( FloatToStrF( valor , ffNumber, tamanho , decimais ), tamanho + decimais ) ;

  Linha  := Abs(Linha);
  Coluna := Abs(Coluna);
  if Linha > pRow then begin
     pCol:= 0;
     while Linha > pRow do begin
       Inc(pRow);
       WriteLn(FPrnDOS);
     end;
  end;
  while Coluna > pCol do begin
     Inc(pCol);
     Write(FPrnDOS,#32);
  end;
  Write(FPrnDos,Texto);
  pCol := pCol + Tamanho;
end;

procedure TPrnDOS.Compacta;
begin
  Write(FPrnDos,#15);
end;

{ O procedimento EndPage zera as variáveis de Linha e Coluna
  e ejecta a página }
procedure TPrnDOS.EndPage;
begin
  pRow := 0;
  pCol := 0;
  Write(FPrnDOS, #12);   { Eject }
end;

{ O procedimento EndPrint encerra a impressão }
procedure TPrnDOS.EndPrint;
begin
  //Encerra a impressão
  Port := '';
  Page := 0;
  pRow := 0;
  pCol := 0;
  CloseFile(FPrnDOS);
end;

end.
