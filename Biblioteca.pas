unit Biblioteca;

interface

uses DbClient, IBCustomDataset, Classes, Forms, Messages, DB, Dialogs, Windows, SqlExpr, IBDatabase,
  Controls, Variants, shellapi;

  type
  TTypeLocalizar = (fsInteger, fsString);
  procedure FilterCDS (aCds: TClientDataSet; aType: TTypeLocalizar; aBusca: string);
  procedure RefreshCDS (aDataSet: TClientDataSet);
  procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
  procedure Mensagem(strTexto: string);
  procedure DuplicaRegistro(Dataset : TIBDataset);
  procedure googleMaps( Logradouro:String;endereco:String; Numero:String; bairro:String; cidade:String; estado:String; cep:String );
  function ConfereVencimento(Tabela : TIBDataset): Boolean;
  function ConfereCV(Tabela : TIBDataset): Boolean;
  function ConfereCamposPreenchidos(DtSrc: TDataSource): Boolean;
  function TiraPontoseBarrasCPF(Text : string): string;
  function ColocaPontosNCM(text : String) : String;
  function ColocaPontoseBarrasCPF(Text : string) : string;
  function ColocaPontoseBarrasCNPJ(Text : string) : string;
  function TiraCFOPServicos(Text : string; QtdeCFOP : Integer): string;
  function IDTransaction: string;
  function AtivaECF : Boolean;
  function TestaECF : Boolean;
  function tiraAcento(palavra: String): String;
  function PapelECF : Boolean;
  function ReducaoZECF : Boolean;
  function CalculaJuros(DataAtual: Extended; Vencimento: Extended; Valor: Extended) : Extended;
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
  function ImprimirBoleto(tabelaCReceber: TIBDataset;tabelaPessoas: TIBDataset): variant;
  function ImprimirNota(tabelaNofisa: TIBDataSet;tabelaNofisaFaturas: TIBDataSet;tabelaSada: TIBDataSet;tabelaPessoas: TIBDataSet;tabelaFormas: TIBDataSet): Variant;
  function ValidaEmailETelefone(Tabela: TIBDataset; Tabela1: TIBDataset; Tabela2 : TIBDataset; CadastroNovo: Boolean): Boolean;
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

uses SysUtils, FDB, PesquisaGeral, Empresas, RelatorioBoletos,
  RelatorioNotasFiscais, Efuncoes;

// Rotina para apresentar uma caixa de mensagem.


procedure googleMaps( Logradouro:String;endereco:String; Numero:String; bairro:String; cidade:String; estado:String; cep:String );

var

e,url:String;

begin

e := logradouro + '+' + endereco + '+' + numero + '+' + cidade + '+' + estado + '+' + cep ;

StringReplace( e , ' ' , '+' , [rfReplaceAll] );

url := 'http://maps.google.com.br/maps?f=q&q='+e;

shellexecute (application.handle, 'open', pchar(url), '', nil, sw_shownormal);

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

function ValidaEmailETelefone(Tabela: TIBDataset; Tabela1 : TIBDataset; Tabela2 : TIBDataset; CadastroNovo : Boolean): Boolean;
var
  ids : String;
begin
   Result := True;
   with tabela1 do
   begin
     close;
     ParamByName('idFone1').AsString := tabela.FieldByName('FONE1').AsString;
     Open;
     first;
      ids := '';
     while not eof do
      begin
        ids := ids + tabela1.FieldByName('id_clientes').AsString;
        ids := ids +' ';
        next;
      end;
     Last;
     if (tabela1.recordCount > 0) and (CadastroNovo) then
      begin
       Showmessage('Telefone duplicado. Clientes: '+ids );
       Result := False;
      end;
     if (tabela1.recordCount > 1) and (not CadastroNovo) then
      begin
       Showmessage('Telefone duplicado. Clientes: '+ids );
       Result := False;
      end;
   end;
   with tabela2 do
   begin
     close;
     ParamByName('idEmail').AsString := tabela.FieldByName('Email').AsString;
     Open;
     first;
      ids := '';
     while not eof do
      begin
        ids := ids + tabela2.FieldByName('id_clientes').AsString;
        ids := ids +' ';
        next;
      end;
     Last;
     if (tabela2.recordCount > 0) and (CadastroNovo) then
      begin
       Showmessage('E-mail duplicado. Clientes: '+ids );
       Result := False;
      end;
     if (tabela2.recordCount > 1) and (not CadastroNovo) then
      begin
       Showmessage('E-mail duplicado. Clientes: '+ids );
       Result := False;
      end;
   end;

   if len(ALLTRIM(Tabela.FieldByName('FONE1').AsString)) <> 11 then
     Result:= False;
   if Substr(tabela.FieldByName('FONE1').AsString,1,1) <> '5' then
     Result:= False;
   if Substr(tabela.FieldByName('FONE1').AsString,3,1) <> '9' then
     Result:= False;
   if (Substr(tabela.FieldByName('FONE1').AsString,4,1) <> '9') then
     if (Substr(tabela.FieldByName('FONE1').AsString,4,1) <> '8') then
       Result:= False;
   if Tabela.FieldByName('CPF').AsString = 'CNPJ' then
     begin
//       Result := True;
       if len(ALLTRIM(Tabela.FieldByName('FONE1').AsString)) < 10 then
         Result:= False;
     end;
   if BuscaDireita('@',tabela.FieldByName('Email').AsString) = 0 then
     Result:= False;
   if BuscaDireita('.',tabela.FieldByName('Email').AsString) = 0 then
     Result:= False;
   if len(alltrim(tabela.FieldByName('Email').AsString)) < 12 then
     Result:= False;
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
i,n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
NonStop : Boolean;
begin
 NonStop := True;
 for i:= 1 to 14 do
  begin
   if ((num[i]='.') or (num[i]='-') or (num[i]='/')) and (i<>4) and (i<>8) and (i<>12) then
    begin
      cpf := false;
      NonStop := false;
    end;
  end;
  if NonStop then
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
end;

function PesquisaGeral(Localizar: String; tabela: string; campos: array of string; titulos: array of string ;ordem: string; retorno: string; banco: TSqlConnection; filtro: string; filtro2: string; filtro3 : string): variant;
var
x: integer;
begin
  application.CreateForm(TBoxPesquisar, BoxPesquisar);
  with BoxPesquisar do
  begin
    BoxPesquisar.Caption := 'Localizar '+Localizar;
    //tblPesquisa.Database := Banco;
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
    Result := PesquisaGeral.Resultado;
    Free;
  end;
end;

function cnpj(num: string): boolean;
var
  i,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
  d1,d2: integer;
  digitado, calculado: string;
  NonStop : Boolean;
begin
 NonStop := True;
 for i:= 1 to 18 do
  begin
   if( (num[i]='.') or (num[i]='-') or (num[i]='/')) and (i<>3) and (i<>7) and (i<>11) and (i<>16) then
    begin
      cnpj := false;
      NonStop := false;
    end;
  end;
  if NonStop then
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
end;

function CalculaJuros(DataAtual: Extended; Vencimento: Extended; Valor: Extended) : Extended;
var
 Resultado : Extended;
begin
 Resultado := 0;
 if DataAtual - Vencimento = 0 then
  Resultado := Valor;
 if DataAtual - Vencimento > 0 then
  Resultado := Valor + (Valor *(DataAtual - Vencimento)* StrToFloat(JurosAtraso)/100);
 if DataAtual - Vencimento < 0 then
  Resultado := Valor - (Valor *(Vencimento - DataAtual)* StrToFloat(DescontoAdiantamento)/100);
 Result := Resultado;
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

function ImprimirBoleto(tabelaCReceber: TIBDataSet;tabelaPessoas: TIBDataSet): Variant;
var
x:Integer;
campo:String;
begin
  application.CreateForm(TBoxRelatorioBoleto, BoxRelatorioBoleto);
  with BoxRelatorioBoleto do
  begin

     tblcReceber.close;
     tblcReceber.CreateDataSet;

     tblPessoas.close;
     tblPessoas.createDataSet;

     with tabelaPessoas do
     begin
  //     first;
 //      while not eof do
       begin
          tblPessoas.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblPessoas.fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblPessoas.Post;
 //         next;
       end;
     end;

     with tabelaCReceber do
     begin
//       first;
//       while not eof do
       begin
          tblcReceber.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblcReceber.fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblcReceber.Post;
//          next;
       end;
     end;
     with tblBoleto do
     begin
       Close;
       ParamByName('idConcessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       Open;
     end;
    ShowModal;
    Result := Resultado;
    Free;
  end;
end;

function ImprimirNota(tabelaNofisa:TIBDataSet; tabelaNofisaFaturas:TIBDataSet; tabelaSada:TIBDataSet; tabelaPessoas:TIBDataSet; tabelaFormas:TIBDataSet): Variant;
var
x:Integer;
i: Integer;
campo:String;
begin
  application.CreateForm(TBoxRelatorioNotasFiscais, BoxRelatorioNotasFiscais);
  with BoxRelatorioNotasFiscais do
  begin

     tblNofisa.close;
     tblNofisa.CreateDataSet;
     tblNofisaFaturas1.close;
     tblNofisaFaturas1.CreateDataSet;
     tblNofisaFaturas2.close;
     tblNofisaFaturas2.CreateDataSet;
     tblNofisaFaturas3.close;
     tblNofisaFaturas3.CreateDataSet;
     tblSada.close;
     tblSada.CreateDataSet;
     tblPessoas.close;
     tblPessoas.createDataSet;
     i := 1;
     with tabelaNofisa do
     begin
       begin
          tblNofisa.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblNofisa.fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblNofisa.Post;
       end;
     end;

     with tabelaNofisaFaturas do
     begin
       first;
       while i < 4 do
       begin
          tblNofisaFaturas1.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblNofisaFaturas1.fieldbyname( campo ).value := fieldbyname( campo ).value;
            showmessage(tblNofisaFaturas1.fieldbyname( campo ).value);
          end;
          tblNofisaFaturas1.Post;
          next;
          showmessage('num'+inttostr(i));
          i := i + 1;
          if eof then
            i := 10;
       end;
       tblNofisaFaturas1.First;
//       showmessage(inttostr(tblNofisaFaturas1.RecordCount));
       while (i >3) and (i < 6) do
       begin
          tblNofisaFaturas2.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblNofisaFaturas2.fieldbyname( campo ).value := fieldbyname( campo ).value;
                        showmessage(tblNofisaFaturas2.fieldbyname( campo ).value);
          end;
          tblNofisaFaturas2.Post;
          next;
          showmessage('Num'+inttostr(i));
          i := i + 1;
          if eof then
            i := 10;
       end;
       tblNofisaFaturas2.First;
//       showmessage(inttostr(tblNofisaFaturas2.RecordCount));
       while (i > 6) and (i < 10) do
       begin
          tblNofisaFaturas3.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblNofisaFaturas3.fieldbyname( campo ).value := fieldbyname( campo ).value;
                        showmessage(tblNofisaFaturas3.fieldbyname( campo ).value);
          end;
          tblNofisaFaturas3.Post;
          next;
          showmessage('num'+inttostr(i));
          i := i + 1;
          if eof then
            i := 10;
       end;
       tblNofisaFaturas3.First;
//       showmessage(inttostr(tblNofisaFaturas3.RecordCount));
     end;

{     with tabelaFormas do
     begin
       first;
       while not eof do
       begin
          tblFormas.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblFormas.Fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblFormas.Post;
          next;
       end;
     end;}

     with tabelaSada do
     begin
       first;
       while not eof do
       begin
          tblSada.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblSada.fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblSada.Post;
          next;
       end;
     end;

     with tabelaPessoas do
     begin
       begin
          tblPessoas.Insert;
          for x := 0 to fields.Count - 1 do
          begin
            campo := fields[x].fieldname;
            tblPessoas.fieldbyname( campo ).value := fieldbyname( campo ).value;
          end;
          tblPessoas.Post;
       end;
     end;
    ShowModal;
    Result := Resultado;
    Free;
  end;
end;

{Valida sigla de estados brasileiros}
function VESTADO(Dado: string): boolean;
const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
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

function ConfereVencimento(Tabela : TIBDataset): Boolean;
begin
//USAR INT PARA COMPARAR DIA
// E FRAC PARA HORAS
 Result := True;
 with tabela do
  begin
   First;
   while not eof do
    begin
      if INT(FieldByName('Vencimento').AsDateTime) < INT(DataAtual) then
        Result := False;
      Next;
    end;
  end;
end;

function ConfereCV(Tabela : TIBDataset): Boolean;
begin
 Result := True;
 with tabela do
  begin
   First;
   while not eof do
    begin
      if(fieldByName('Id_Formas_Pagamento').AsInteger > 4) and (fieldByName('Id_Formas_Pagamento').AsInteger <> 18) then
        if (FieldByName('Numero_CV').AsString = '') then
          Result := False;
      Next;
    end;
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

function AtivaECF : Boolean;
var
  linha : String;
  ArquivoTexto: TextFile; {handle do arquivo texto}
begin
  AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  linha := 'ECF.Ativar';
  Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  AssignFile(ArquivoTexto,'C:\sai.txt');
  Reset(ArquivoTexto); {Abre o arquivo texto}
   linha := '';
   while linha = '' do
    begin
      Reset(ArquivoTexto); {Abre o arquivo texto}
      ReadLn(ArquivoTexto, Linha);
      CloseFile(ArquivoTexto); {Fecha o arquivo texto}      
    end;
  if Substr(linha,1,3) = 'OK:' then
    Result := True
  else
    Result := False;
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
end;

function TestaECF : Boolean;
var
  linha : String;
  ArquivoTexto: TextFile; {handle do arquivo texto}
  Resultado : String;
begin
  Result := False;
  AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  linha := 'ECF.Ativo';
  Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  AssignFile(ArquivoTexto,'C:\sai.txt');
  Reset(ArquivoTexto); {Abre o arquivo texto}
   linha := '';
   while linha = '' do
    begin
     Reset(ArquivoTexto); {Abre o arquivo texto}    
     ReadLn(ArquivoTexto, Linha);
     CloseFile(ArquivoTexto); {Fecha o arquivo texto}
    end;
  showmessage(linha);
  if Substr(linha,1,3) = 'OK:' then
    Resultado := (Substr(linha,5,5));
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  if Resultado = 'False' then
    if AtivaECF then
      Result := True
  else
     Result := True;
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  if PapelECF then
    begin
      Showmessage('Pouco papel, substitua bobina.');
      Result := False;
    end;
  if not ReducaoZECF then
    Result := False;
end;

function PapelECF : Boolean;
var
  linha : String;
  ArquivoTexto: TextFile; {handle do arquivo texto}
begin
  Result := False;
  AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  linha := 'ECF.PoucoPapel';
  Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  AssignFile(ArquivoTexto,'C:\sai.txt');
   linha := '';
   while linha = '' do
    begin
     Reset(ArquivoTexto); {Abre o arquivo texto}
     ReadLn(ArquivoTexto, Linha);
     CloseFile(ArquivoTexto); {Fecha o arquivo texto}     
    end;
  if Substr(linha,1,8) = 'OK: True' then
    Result := True;//StrToBool(Substr(linha,5,5));
  ReWrite(ArquivoTexto); {Recria o arquivo texto}
  CloseFile(ArquivoTexto); {Fecha o arquivo texto}
end;

function ReducaoZECF : Boolean;
  var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
  begin
   Result := False;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.Estado';
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
   linha := '';
   AssignFile(ArquivoTexto,'C:\Sai.txt');
   while linha = '' do
    begin
     Reset(ArquivoTexto); {Abre o arquivo texto}
     ReadLn(ArquivoTexto, Linha);
     CloseFile(ArquivoTexto); {Fecha o arquivo texto}
    end;
   showmessage(linha);
   if Substr(linha,5,10) = 'estRequerZ' then
     begin
       case MessageDlg('Redução Z pendente, emitir agora?', mtConfirmation, [mbYes,mbNo], 0) of
         mrYes:
          begin
            ReWrite(ArquivoTexto); {Recria o arquivo texto}
            CloseFile(ArquivoTexto); {Fecha o arquivo texto}
            AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
            ReWrite(ArquivoTexto); {Recria o arquivo texto}
            linha := 'ECF.ReducaoZ';
            Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
            CloseFile(ArquivoTexto); {Fecha o arquivo texto}
            linha := '';
            AssignFile(ArquivoTexto,'C:\sai.txt');
            while linha = '' do
             begin
              Reset(ArquivoTexto); {Abre o arquivo texto}
              ReadLn(ArquivoTexto, Linha);
              if Substr(linha,1,3) = 'OK:' then
                Result := True
              else
                Result := False;
              CloseFile(ArquivoTexto); {Fecha o arquivo texto}
             end;
          end;
         mrNo:
           result := False;
       end;
     end
   else
    if Substr(linha,1,14) = 'OK: estLivre' then
     Result := True
    else
     Result := False;
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
  end
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

function ColocaPontoseBarrasCPF(Text : string) : string;
begin
   Text := Copy (Text, 1, 3) + '.' + Copy (Text, 4, 3) + '.' +
      Copy(Text, 7, 3) + '-' + Copy (Text, 10, 2);
   Result := Text;
end;

function ColocaPontosNCM(text : String) : String;
begin
   Text :=Copy (Text, 1, 4) + '.' + Copy (Text, 5, 2) + '.' +
      Copy(Text, 7, 2);
   Result := Text;
end;

function ColocaPontoseBarrasCNPJ(Text : string) : string;
begin
   Text := Copy (Text, 1, 2) + '.' + Copy (Text, 3, 3) + '.' +
      Copy(Text, 6, 3) + '/' + Copy (Text, 9, 4) + '-' + Copy (Text, 13, 2);
   Result := Text;
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
    if FieldByName('CPF').AsString = 'CNPJ' then
      begin
        if not (CNPJ(FieldByName('NUM_CPF').AsString)) then
          begin
           Result := False;
           Showmessage('CNPJ inválido.');
          end;
      end
    else
      begin
        if not (CPF(FieldByName('NUM_CPF').AsString)) then
          begin
           Result := False;
           Showmessage('CPF inválido.');
          end;
      end;
    if (FieldByName('Codigo_Municipio').AsVariant = null) or
       (FieldByName('Codigo_Municipio').AsString = '') then
     begin
      Result := False;
      Showmessage('Código do município inválido.');
     end;
    if Not VEstado(FieldByName('Estado').AsString) then
     begin
       Result := False;
       Showmessage('Estado inválido.');
     end;
    if (FieldByName('numero').AsString = '') or (FieldByName('Numero').AsString = null) then
     begin
       result := False;
       Showmessage('Número inválido.');
     end;
  end;
end;

end.
