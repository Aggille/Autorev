unit eFuncoes;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls,   pcnconversao,
   Forms, Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, pnfsConversao,
   ACBrNFSe,ACBrNFSeDANFSeClass, ACBrNFSeDANFSeFR,ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,
   Empresas,AcbrDFessl, ACBrNFeDANFEFR,//acrescido em 19/02/2018 resolver nfe yamavale
   Buttons, ExtCtrls, TabNotBk, Printers, ComCtrls, Menus;
   //   Variants, PrnDOS, Spin;

type
TConsisteInscricaoEstadual  = function (const Insc, UF: String): Integer; stdcall;


Function CHKIEMG(const iemg : string):boolean;
Function CHKCGC(const cgc : string):boolean;
Function CHKCPF(const cpf : string):boolean;
Function ChkInscEstadual(const ie, uf : string) : Boolean;
function cnpj(const cCNPJ: string): boolean;
function Diretorio(Alias: string): string;
procedure CriaFormulario(Formulario: TFormClass;
   var Referencia;
   SubMenu: TMenuItem;
   FormModal, ExpandForm: boolean);
procedure EscondeTaskBar(Visible: boolean);
procedure Inicializa(
   var DDiretorio: string;
   var DDiretorioTmp: string;
   dDatabase: TDatabase;
   ArquivoIni: string; Formulario: TForm);

procedure ChecaCampoVazio(var Campo: TObject);
procedure FechaTabelas(dDatabase: TDatabase);
function Alinha(Texto: string;
   Tamanho: integer;
   Linhas: integer): string;
function Blinha(Texto: string;
   Tamanho: integer;
   Linhas: integer): string;
function Clinha(Texto: string;
   Tamanho: integer;
   Linhas: integer): string;
procedure Controle(Sender: TObject; Form: TForm; DbData: TTable; Data: TDataSource; Matriz1, Matriz2: array of TComponent; Visivel: array of boolean; Tabela: TTabbedNotebook; iTamanhoCodigo, iTipoCodigo: integer; bIncluir, bAlterar, bExcluir: boolean);
function pControle(Sender: TObject; Form: TForm; DbData: TTable; Data: TDataSource; Matriz1, Matriz2: array of TComponent; Visivel: array of boolean; Tabela: TPageControl; TabelaCadastro: TTabSheet; TabelaConsulta: TTabSheet; iTamanhoCodigo, iTipoCodigo: integer; bIncluir, bAlterar, bExcluir: boolean): boolean;
function CriaArquivoIndices(sIndices: string): TIndexOptions;
function CriaArquivo(sDiretorio, sArquivo: string;
   aStruturaDados: array of string;
   aIndices: array of string
   ): boolean;
function ChecaCampo(sTipoCampo: string): TFieldType;
function Left(InString: string; NumChars: integer): string;
function Right(InString: string; NumChars: integer): string;
function Len(InString: string): integer;
function LTrim(Text: string): string;
function Rtrim(Text: string): string;
function Empty(InString: string): boolean;
function Substr(InString: string; Inicio, Quantos: integer): string;
function PutStr(InString, PutString: string; Onde: integer): string;
function Stuff(InString, PutString: string; Onde: integer): string;
function Upper(InString: string): string;
function NoTrailZeros(InString: string): string;
function Spaces(Quantos: integer): string;
function AT(Texto, Padrao: string): integer;
function ASC(InString: string): byte;
function DayOfWeek(Dia: integer): string;
function Fix(Numero: double): double;
function RAD(Numero: double): double;
function DEG(Numero: double): double;
function LOG(Numero: double): double;
function TAN(Numero: double): double;
function Alltrim(stexto: string): string;
function StrZero(Numero: double; Total, Decimal: integer): string;
function StrZero1(Numero: double; Total, Decimal: integer): string;
function Formata(Text: string; nLinhas, nTamanho: integer; cResto: char): string;
function BuscaDireita(Busca, Text: string): integer;
function BuscaTroca(Text, Busca, Troca: string): string;
function Repete(Caractere: char; nCaracteres: integer): string;
{Retorna o mes por extenso}
function MES(Dado: string): string;
{Retorna data por Extenso}
function DATA_EXTENSO(Dado: string): string;
function padl(Text: string; nqtde: integer): string;
function padr(Text: string; nqtde: integer): string;


{Retorna valor descriptografado }
function cripto_d(Dado: string): string;

{Retorna valor criptografado }
function cripto_e(Dado: string): string;

{Valida data no formato ddmmaa ou no formato ddmmaaaa}
function VDATA(Dado: string): boolean;

{Valida valor nulo}
function VNULO(Dado: string): boolean;

{Valida dígito verificador PIS}
function VPIS(Dado: string): boolean;


{Valida se o ano da data ddmmaa ou ddmmaaaa é o mesmo do ano corrente}
function VANO(Dado: string): boolean;

{Valida se o mês da data ddmmaa ou ddmmaaaa é o mesmo do mês corrente}
function VMES(Dado: string): boolean;

{Valida se o mês/ano da data ddmmaa ou ddmmaaaa é o mesmo do mês/ano corrente}
function VMES_ANO1(Dado: string): boolean;

{Valida se o mês/ano da data no formato mmaa ou mmaaaa são válidos}
function VMES_ANO2(Dado: string): boolean;

function Replicate(Caractere: char; nCaracteres: integer): string;

{ Função que pega uma duas horas e devolve a diferença em Número }

function DifHora(Data: TDateTime): real;

{ Função que pega um Float e transforma em Time }

function FloatToTime(Hora: real): TTime;

//função que converte uma data para o formato String "DDMMAAAA" Ex: 03/10/73 para 03101973

function DateToText(Data: TDateTime): string;

// funcao que tira os acentos

function OemToStr(AsciiStr: string): string;
function AnsiToAscii(const AnsiStr: string): string;
function LimpaNumero(AValue: String): String;

const
   Dia_Semana: array[1..7] of string =
      ('Domingo',
      'Segunda',
      'Terça  ',
      'Quarta ',
      'Quinta ',
      'Sexta  ',
      'Sábado ');

   Meses: array[1..12] of string =
      ('Janeiro  ',
      'Fevereiro',
      'Março    ',
      'Abril    ',
      'Maio     ',
      'Junho    ',
      'Jullho   ',
      'Augusto  ',
      'Setembro ',
      'Outubro  ',
      'Novembro ',
      'Dezembro ');

function Extenso(pValor: real): string;
function fExtenso(nValor: real): string;
function ExtensoMil(cVlr: string): string;
function LenNum(Numero: real): integer;
function Padlzero(Texto: string; Tam: integer): string;
procedure config_nfs(nf: TAcbrNfSe; boxEmpresas:TBoxEmpresas );
procedure config_danfe_nfs( danfe: TACBrNFSeDANFSeFR; boxEmpresas:TBoxEmpresas );overload;
function atualiza_nfs( nf:TAcbrNfse; tblNofisa:TDataSet ):boolean;


{  ACENT : ARRAY[1..9] OF STRING =
                       ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos',
                        'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
  ADEZ  : ARRAY[1..9] OF STRING =
                       ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta',
                        'Oitenta', 'Noventa');
  AVINT : ARRAY[1..9] OF STRING =
                       ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete',
                        'Dezoito', 'Dezenove');
  AUNID : ARRAY[1..9] OF STRING =
                       ('Um', 'Dois', 'Três', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');

  ACIFRA : ARRAY[1..12] OF STRING =
                       ('Trilhão','Trilhões','Bilhão','Bilhões','Milhão','Milhões',
                        'Mil','Mil','  ','  ','Centavo','Centavos');

  CR = Chr(13);
  LF = Chr(10);
  FF = Chr(12);
  ESC = Chr(27);
  BS = Chr(08);
  Space = ' ';
  Yes = True;
  No = False;
}

var
   Segment:  word;         { Preset to zero }
   GMT:      boolean;
   Suppress: boolean;


implementation
const
 OrdZero =  Ord('0');



function LimpaNumero(AValue: String): String;
var
  A : Integer ;
begin
  Result := '' ;
  For A := 1 to length(AValue) do
  begin
    {$IFDEF DELPHI12_UP}
    if CharInSet(AValue[A], ['0'..'9']) then
    {$ELSE}
    if (AValue[A] in ['0'..'9']) then
    {$ENDIF}
       Result := Result + AValue[A];
  end ;
end;

 //Uses eSenhae;
 ///////////////////////////////////////////////////////////

function atualiza_nfs( nf:TAcbrNfse; tblNofisa:TDataSet ):boolean;
var
arqRps, arqXml:String;
aux:TStringList;
begin

try

  with tblNofisa do
  begin
    if not (  state in [dsInsert, dsEdit] ) then
      edit;

    arqRps :=   Nf.Configuracoes.Arquivos.GetPathRps( tblNofisa.fieldbyname( 'emissao' ).asDateTime )+'\'+
                tblNofisa.fieldbyname( 'numero' ).asString +
                tblNofisa.fieldbyname( 'serieNf' ).asString + '-Rps.xml';

    arqXml  := Nf.Configuracoes.Arquivos.GetPathNFSe( tblNofisa.fieldbyname( 'emissao' ).asDateTime )+'\'+
                nf.NotasFiscais.Items[0].NFSe.Numero + 'T-nfse.xml';

    fieldbyname( 'numero_nfse' ).asString         := nf.NotasFiscais.Items[0].NFSe.Numero;
    fieldbyname( 'codigo_nfse' ).asString         := nf.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
    fieldbyname( 'arq_xml_rps' ).asString         := ExtractFileName( ArqRps );
    fieldbyname( 'arq_xml_nfse' ).asString        := ExtractFileName( arqXml );

    if fieldbyname( 'codigo_nfse' ).asString <> ''  then
      fieldbyname( 'status' ).asString := 'NF-e Autorizada';

    if( nf.NotasFiscais.Items[0].Nfse.Cancelada = snSim ) then
    begin
      fieldbyname( 'status' ).asString := 'NF-e Cancelada';
    end;

    aux := TStringList.Create();

    if( FileExists( ArqRps ) ) then
      begin
        aux.LoadFromFile( ArqRps );
        fieldbyname( 'xml_rps' ).asString := aux.Text;
      end;

    if( FileExists( ArqXml ) ) then
      begin
        aux.LoadFromFile( ArqXml );
        fieldbyname( 'xml_nfse' ).asString := aux.Text;
      end;

      result := true;

  end;
except
  on e:Exception  do
    begin
      ShowMessage( 'Erro ao atualizar NFs' + #13 + e.Message );
      result := false;
    end;
end;


end;



procedure config_danfe_nfs( danfe: TACBrNFSeDANFSeFR; boxEmpresas:TBoxEmpresas );
begin

      if ( fileExists( BoxEmpresas.Logo_Prefeitura ) ) then
        danfe.Logo := boxEmpresas.Logo_Prefeitura;

      danfe.PrestLogo := BoxEmpresas.Logo;
      danfe.Prefeitura := 'Prefeitura Municipal de ' + boxEmpresas.Cidade;
      danfe.MostraStatus := true;
      danfe.FastFile:=ExtractFilePath( Application.ExeName ) + '\Report\'+'DANFSE.fr3';
//      danfe.FastFile:=ExtractFilePath( Application.ExeName ) + 'DANFSE.fr3'; //'\Report\'+'DANFSE.fr3';
      danfe.Sistema := 'Autorev';
      danfe.MostraPreview := true;
      danfe.PathPDF := 'C:\Autorev-SD\NFs-e\'+boxEmpresas.CNPJ+'\';


end;

procedure config_nfs(nf: TAcbrNfSe; boxEmpresas:TBoxEmpresas );
var
danfep: TACBrNFSeDANFSeFR;
//danfep: TACBrNFSeDANFSeRL;

FProvedor: TnfseProvedor;
ok:boolean;

begin

  with nf do
  begin

    Configuracoes.Webservices.Visualizar := false;
    Configuracoes.Webservices.Salvar := true;

    // AMBIENTE... ONFIGURAR QUANDO COLOCAR EM PRODUCAO
    configuracoes.webservices.Ambiente := taProducao;

    configuracoes.Geral.CodigoMunicipio := StrToInt( boxEmpresas.CodigoMunicipio );
    Configuracoes.Geral.SetConfigMunicipio;//( Configuracoes.Arquivos.PathSchemas);
    Configuracoes.Geral.ConsultaLoteAposEnvio := true;
    Configuracoes.Geral.Emitente.CNPJ := BoxEmpresas.CNPJ;
    Configuracoes.Geral.Emitente.InscMun := BoxEmpresas.IM;
    Configuracoes.Geral.Emitente.RazSocial := Boxempresas.Empresa;
    Configuracoes.Geral.SSLLib := libWinCrypt;//acrescido em 19/02/2018 - problemas nf yamavale
    Configuracoes.Geral.SSLXmlSignLib      := xsMsXml; //acrescido em 01/09/2018 - problemas nf ynova
    if BoxEmpresas.CodigoMunicipio = '4309209' then
      begin
        Configuracoes.Geral.Emitente.WebUser := BoxEmpresas.CNPJ;
        Configuracoes.Geral.Emitente.WebSenha := '503010';

      end;

//    FProvedor := StrToProvedor(ok, CodCidadeToProvedor(StrToIntDef(boxEmpresas.CodigoMunicipio, 0)));
    Configuracoes.Arquivos.PathSchemas := ExtractFilePath( Application.ExeName ) + '\SchemasNFS\'+ProvedorToStr( FProvedor )+'\';
      {
      if tblConfigFat.fieldbyname('tipo_ambiente_nfe').asString = 'H' then
      begin
        configuracoes.webservices.Ambiente := taHomologacao;
        configuracoes.webservices.CodigoMunicipio := 999;//tblEmpresa.fieldbyname('codigo_municipio').asInteger;

      end;
      }

      if( nf.DANFSe = nil ) then
        begin
        danfep := TACBrNFSeDANFSeFR.Create(nil);
        danfep.ACBrNFSe := nf;

        if ( fileExists( BoxEmpresas.Logo_Prefeitura ) ) then
          danfep.Logo := boxEmpresas.Logo_Prefeitura;

        danfep.PrestLogo := BoxEmpresas.Logo;
        danfep.Prefeitura := 'Prefeitura Municipal de ' + boxEmpresas.Cidade;
        danfep.MostraStatus := true;
        danfep.FastFile:=ExtractFilePath( Application.ExeName ) + '\Report\'+'DANFSE.fr3';
        danfep.Sistema := 'Autorev';
        danfep.MostraPreview := true;
        danfep.PathPDF := 'C:\Autorev-SD\NFs-e\'+boxEmpresas.CNPJ+'\';
        danfep.TipoDANFSE := tpIssDSF;
        nf.DANFSe := danfeP;

      end;

    configuracoes.certificados.NumeroSerie := boxEmpresas.Certificado;
    configuracoes.arquivos.PathSalvar := 'C:\Autorev-SD\NFs-e\'+boxEmpresas.CNPJ+'\';

    with Configuracoes.Arquivos do
    begin

        SepararPorMes := true;
        adicionarLiteral := true;
        salvar := true;
        pathNfSe := 'C:\Autorev-SD\NFs-e\'+boxEmpresas.CNPJ+'\';
        PathCan  := PathNfse;
        PathRps  := PathNfse;
        PathGer  := PathNfse;

    end;
  end;
end;


procedure Controle(Sender: TObject; Form: TForm; DbData: TTable; Data: TDataSource; Matriz1, Matriz2: array of TComponent; Visivel: array of boolean; Tabela: TTabbedNotebook; iTamanhoCodigo, iTipoCodigo: integer; bIncluir, bAlterar, bExcluir: boolean);
var
//   a : string;

   Esta_Incluindo: boolean;
   Esta_Alterando: boolean;
   sCodigo: string;
   iCodigo: integer;
   sNome:   string;

begin
   Esta_Incluindo := false;
   Esta_Alterando := false;
   if (DbData).State = dsinsert then
      Esta_Incluindo := true;
   if (DbData).State = dsEdit then
      Esta_Alterando := true;

   if (Sender as Sender.ClassType) = Matriz1[0] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := 'Cadastro';
      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then
         Data.DataSet.Append {Insert};

      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then // Campo 1
         (Matriz2[0] as TDBEdit).Enabled := Visivel[0];
      if (Matriz2[1] <> nil) and (Matriz2[1] is TDBEdit) then // Campo 2
         (Matriz2[1] as TDBEdit).Enabled := Visivel[2];
      if Visivel[0] then // Altera Campo 1
         (Matriz2[0] as TDBEdit).SetFocus
      else if Visivel[2] then // Altera Campo 2
         (Matriz2[1] as TDBEdit).SetFocus;

   end
   else if (Sender as Sender.ClassType) = Matriz1[1] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := 'Cadastro';
      (Matriz1[1] as TBitBtn).SetFocus; // novo
      Data.DataSet.Edit;

      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then // Campo 1
         (Matriz2[0] as TDBEdit).Enabled := Visivel[1];
      if (Matriz2[1] <> nil) and (Matriz2[1] is TDBEdit) then // Campo 2
         (Matriz2[1] as TDBEdit).Enabled := Visivel[3];
      if Visivel[1] then // Altera Campo 1
         (Matriz2[0] as TDBEdit).SetFocus
      else if Visivel[3] then // Altera Campo 2
         (Matriz2[1] as TDBEdit).SetFocus;

   end
   else if (Sender as Sender.ClassType) = Matriz1[2] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := 'Cadastro';
      (Matriz1[2] as TBitBtn).SetFocus;    // novo
      if MessageDlg('Confirma deleção do registro', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
         Data.DataSet.Delete;
      end;
   end
   else if (Sender as Sender.ClassType) = Matriz1[3] then
   begin
      try
         if Tabela <> nil then
            Tabela.ActivePage := 'Cadastro';
         if Data.DataSet.State = dsInsert then
         begin
            (Matriz1[3] as TBitBtn).SetFocus; // novo
            if MessageDlg('Confirma gravação ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               Data.DataSet.Post
            else
               abort;
         end
         else
         begin
            (Matriz1[3] as TBitBtn).SetFocus; // novo
            if MessageDlg('Confirma alteração ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               Data.DataSet.Post
            else
               abort;
         end;
         if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then
            (Matriz2[1] as TDBEdit).SetFocus;
      except
         on E: EDBEngineError do
            if E.Errors[0].ErrorCode = 9729 then  {'Key violation.'}
            begin
               MessageDlg('Código já existe no cadastro', mtInformation, [mbOK], 0);
               (Matriz2[0] as TDBEdit).SetFocus;
            end
            else
               MessageDlg('Erro no sistema. Código do erro ' + IntToStr(E.Errors[0].ErrorCode) + ' = ' + E.Errors[0].Message
                  , mtError, [mbOK], 0);
      end;
   end
   else if (Sender as Sender.ClassType) = Matriz1[4] then
      Data.DataSet.Cancel

     //else if (sender as Sender.ClassType) = Matriz1[5] then
     //   Data.DataSet.Refresh

   else if (Sender as Sender.ClassType) = Matriz1[6] then


      Data.DataSet.First
   else if (Sender as Sender.ClassType) = Matriz1[7] then
      Data.DataSet.Last
   else if (Sender as Sender.ClassType) = Matriz1[8] then
      Data.DataSet.Prior
   else if (Sender as Sender.ClassType) = Matriz1[9] then
      Data.DataSet.Next
   else if (Sender as Sender.ClassType) = Matriz1[10] then // Pesq. Codigo
   begin
      if Tabela <> nil then
         Tabela.ActivePage := 'Consulta';
      sCodigo := inputBox('Pesquisa', 'Digite o Código a ser Pesquisado:', '');
      try
         if sCodigo <> '' then
         begin
            if iTipoCodigo = 1 then
            begin
               iCodigo := StrToInt(sCodigo);
               str(iCodigo: iTamanhoCodigo, sCodigo);
            end
            else if iTipoCodigo = 2 then
            begin
               iCodigo := StrToInt(sCodigo);
               sCodigo := STrzero(iCodigo, iTamanhoCodigo, 0)
            end;

            dbData.IndexName := '';
            if dbData.FindKey([sCodigo]) = false then
               MessageDlg('Código não encontrado', mtWarning, [mbOK], 0);
         end;
      except
      end;
   end
   else if (Sender as Sender.ClassType) = Matriz1[11] then // Pesq. Nome
   begin
      if Tabela <> nil then
         Tabela.ActivePage := 'Consulta';
      sNome := inputBox('Pesquisa', 'Digite o Nome a ser Pesquisado:', '');
      if sNome <> '' then
      begin
         try
            dbData.DisableControls;
            dbData.IndexName := ' Nome';
            dbData.FindNearest([sNome]);
            dbData.EnableControls;
         except
            MessageDlg('Indice não encontrado', mtWarning, [mbOK], 0);
         end;
      end;
   end;


   TControl(Matriz1[0]).Enabled := not (Data.State in [dsInsert, dsEdit]);
   TControl(Matriz1[1]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and (( not Data.DataSet.BOF) or ( not Data.DataSet.EOF));
   TControl(Matriz1[2]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and (( not Data.DataSet.BOF) or ( not Data.DataSet.EOF));
   TControl(Matriz1[3]).Enabled := (Data.State in [dsInsert, dsEdit]);
   TControl(Matriz1[4]).Enabled := (Data.State in [dsInsert, dsEdit]);

//TControl(Matriz1[5]).Enabled  :=  not (Data.State in [dsInsert,dsEdit]);

   TControl(Matriz1[6]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.BOF);
   TControl(Matriz1[7]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.EOF);
   TControl(Matriz1[8]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.BOF);
   TControl(Matriz1[9]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.EOF);
   if (Esta_Incluindo) and ((dbData as Ttable).State = dsBrowse) then
      (Matriz1[0] as TBitBtn).SetFocus; // novo
   if Esta_Alterando and ((dbData as Ttable).State = dsBrowse) then
      (Matriz1[1] as TBitBtn).SetFocus; // novo

   if Data.State = dsBrowse then
   begin
      TControl(Matriz1[0]).Enabled := bIncluir;
      TControl(Matriz1[1]).Enabled := bAlterar;
      TControl(Matriz1[2]).Enabled := bExcluir;
   end;
end;
///////////////////////////////////////////////// TPageControl
function pControle(Sender: TObject; Form: TForm; DbData: TTable; Data: TDataSource; Matriz1, Matriz2: array of TComponent; Visivel: array of boolean; Tabela: TPageControl; TabelaCadastro: TTabSheet; TabelaConsulta: TTabSheet; iTamanhoCodigo, iTipoCodigo: integer; bIncluir, bAlterar, bExcluir: boolean): boolean;
var
   Esta_Incluindo: boolean;
   Esta_Alterando: boolean;
   sCodigo: string;
   iCodigo: integer;
   sNome:   string;

begin
   Result := true;
   Esta_Incluindo := false;
   Esta_Alterando := false;
   if (DbData).State = dsinsert then
      Esta_Incluindo := true;
   if (DbData).State = dsEdit then
      Esta_Alterando := true;

   if (Sender as Sender.ClassType) = Matriz1[0] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := TabelaCadastro;
      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then
         Data.DataSet.Append {Insert};

      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then // Campo 1
         (Matriz2[0] as TDBEdit).Enabled := Visivel[0];
      if (Matriz2[1] <> nil) and (Matriz2[1] is TDBEdit) then // Campo 2
         (Matriz2[1] as TDBEdit).Enabled := Visivel[2];
      if Visivel[0] then // Altera Campo 1
         (Matriz2[0] as TDBEdit).SetFocus
      else if Visivel[2] then // Altera Campo 2
         (Matriz2[1] as TDBEdit).SetFocus;

   end
   else if (Sender as Sender.ClassType) = Matriz1[1] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := TabelaCadastro;
      (Matriz1[1] as TBitBtn).SetFocus; // novo
      Data.DataSet.Edit;

      if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then // Campo 1
         (Matriz2[0] as TDBEdit).Enabled := Visivel[1];
      if (Matriz2[1] <> nil) and (Matriz2[1] is TDBEdit) then // Campo 2
         (Matriz2[1] as TDBEdit).Enabled := Visivel[3];
      if Visivel[1] then // Altera Campo 1
         (Matriz2[0] as TDBEdit).SetFocus
      else if Visivel[3] then // Altera Campo 2
         (Matriz2[1] as TDBEdit).SetFocus;

   end
   else if (Sender as Sender.ClassType) = Matriz1[2] then
   begin
      if Tabela <> nil then
         Tabela.ActivePage := TabelaCadastro;
      (Matriz1[2] as TBitBtn).SetFocus;    // novo
      if MessageDlg('Confirma deleção do registro', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         Data.DataSet.Delete
      else
         Result := false;

   end
   else if (Sender as Sender.ClassType) = Matriz1[3] then
   begin
      try
         if Tabela <> nil then
            Tabela.ActivePage := TabelaCadastro;
         if Data.DataSet.State = dsInsert then
         begin
            (Matriz1[3] as TBitBtn).SetFocus; // novo
            if MessageDlg('Confirma gravação ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               Data.DataSet.Post
            else
            begin
               Result := false;
               abort;
            end;
         end
         else
         begin
            (Matriz1[3] as TBitBtn).SetFocus; // novo
            if MessageDlg('Confirma alteração ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               Data.DataSet.Post
            else
            begin
               Result := false;
               abort;
            end;
         end;
         if (Matriz2[0] <> nil) and (Matriz2[0] is TDBEdit) then
            (Matriz2[1] as TDBEdit).SetFocus;
      except
         on E: EDBEngineError do
            if E.Errors[0].ErrorCode = 9729 then  {'Key violation.'}
            begin
               MessageDlg('Código já existe no cadastro', mtInformation, [mbOK], 0);
               (Matriz2[0] as TDBEdit).SetFocus;
            end
            else
               MessageDlg('Erro no sistema. Código do erro ' + IntToStr(E.Errors[0].ErrorCode) + ' = ' + E.Errors[0].Message
                  , mtError, [mbOK], 0);
      end;
   end
   else if (Sender as Sender.ClassType) = Matriz1[4] then
      Data.DataSet.Cancel

     //else if (sender as Sender.ClassType) = Matriz1[5] then
     //   Data.DataSet.Refresh

   else if (Sender as Sender.ClassType) = Matriz1[6] then
      Data.DataSet.First
   else if (Sender as Sender.ClassType) = Matriz1[7] then
      Data.DataSet.Last
   else if (Sender as Sender.ClassType) = Matriz1[8] then
      Data.DataSet.Prior
   else if (Sender as Sender.ClassType) = Matriz1[9] then
      Data.DataSet.Next
   else if (Sender as Sender.ClassType) = Matriz1[10] then // Pesq. Codigo
   begin
      if Tabela <> nil then
         Tabela.ActivePage := TabelaConsulta;
      sCodigo := inputBox('Pesquisa', 'Digite o Código a ser Pesquisado:', '');
      try
         if sCodigo <> '' then
         begin
            if iTipoCodigo = 1 then
            begin
               iCodigo := StrToInt(sCodigo);
               str(iCodigo: iTamanhoCodigo, sCodigo);
            end
            else if iTipoCodigo = 2 then
            begin
               iCodigo := StrToInt(sCodigo);
               sCodigo := STrzero(iCodigo, iTamanhoCodigo, 0)
            end;

            dbData.IndexName := '';
            if dbData.FindKey([sCodigo]) = false then
               MessageDlg('Código não encontrado', mtWarning, [mbOK], 0);
         end;
      except
      end;
   end
   else if (Sender as Sender.ClassType) = Matriz1[11] then // Pesq. Nome
   begin
      if Tabela <> nil then
         Tabela.ActivePage := TabelaConsulta;
      sNome := inputBox('Pesquisa', 'Digite o Nome a ser Pesquisado:', '');
      if sNome <> '' then
      begin
         try
            dbData.DisableControls;
            dbData.IndexName := ' Nome';
            dbData.FindNearest([sNome]);
            dbData.EnableControls;
         except
            MessageDlg('Indice não encontrado', mtWarning, [mbOK], 0);
         end;
      end;
   end;


   TControl(Matriz1[0]).Enabled := not (Data.State in [dsInsert, dsEdit]);
   TControl(Matriz1[1]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and (( not Data.DataSet.BOF) or ( not Data.DataSet.EOF));
   TControl(Matriz1[2]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and (( not Data.DataSet.BOF) or ( not Data.DataSet.EOF));
   TControl(Matriz1[3]).Enabled := (Data.State in [dsInsert, dsEdit]);
   TControl(Matriz1[4]).Enabled := (Data.State in [dsInsert, dsEdit]);

//TControl(Matriz1[5]).Enabled  :=  not (Data.State in [dsInsert,dsEdit]);

   TControl(Matriz1[6]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.BOF);
   TControl(Matriz1[7]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.EOF);
   TControl(Matriz1[8]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.BOF);
   TControl(Matriz1[9]).Enabled := ( not (Data.State in [dsInsert, dsEdit])) and ( not Data.DataSet.EOF);
/////////////////////
   if Data.State = dsBrowse then
   begin
      TControl(Matriz1[0]).Enabled := bIncluir;
      TControl(Matriz1[1]).Enabled := bAlterar;
      TControl(Matriz1[2]).Enabled := bExcluir;
   end;


   try
      if (Esta_Incluindo) and ((dbData as Ttable).State = dsBrowse) then
         (Matriz1[0] as TBitBtn).SetFocus; // novo
      if Esta_Alterando and ((dbData as Ttable).State = dsBrowse) then
         (Matriz1[1] as TBitBtn).SetFocus; // novo
   finally
   end;
end;
//////////////////////////////////////////////////////////////////////
function Left(InString: string; NumChars: integer): string;
begin
   Left := copy(InString, 1, NumChars);
end;

function Right(InString: string; NumChars: integer): string;
begin
   if NumChars >= length(InString) then
      Right := InString
   else
      Right := copy(InString, succ(length(InString) - NumChars), NumChars);
end;

function Len(InString: string): integer;
begin
   Len := length(InString);
end;


function Empty(InString: string): boolean;
begin
   Empty := RTrim(InString) = '';
end;

function Substr(InString: string; Inicio, Quantos: integer): string;
begin
   Substr := copy(InString, Inicio, Quantos);
end;

function PutStr(InString, PutString: string; Onde: integer): string;
begin
   if Onde > length(InString) then
      InString := InString + PutString
   else
   begin
      Delete(InString, Onde, length(PutString));
      Insert(PutString, InString, Onde);
   end;
   PutStr := InString;
end;

function Stuff(InString, PutString: string; Onde: integer): string;
begin
   Insert(PutString, InString, Onde);
   Stuff := InString;
end;

function Upper(InString: string): string;
begin
   Upper := StrPas(StrUpper(pchar(InString)));
end;

function NoTrailZeros(InString: string): string;
begin
   while InString[length(InString)] = '0' do
      Delete(InString, length(InString), 1);
   NoTrailZeros := InString;
end;

function Spaces(Quantos: integer): string;
var
   TempStr: string;
begin
   TempStr := '';
   while length(TempStr) < Quantos do
      Insert(' ', TempStr, 1);
   Spaces := TempStr;
end;

function AT(Texto, Padrao: string): integer;
begin
   AT := Pos(Padrao, Texto);
end;

function ASC(InString: string): byte;
begin
   if InString = '' then
      ASC := 0
   else
      ASC := Ord(InString[1]);
end;

function DayOfWeek(Dia: integer): string;
begin
   DayOfWeek := FormatSettings.LongDayNames[Dia + 1];
end;

function Fix(Numero: double): double;
begin
   Fix := Numero - Frac(Numero);
end;

function RAD(Numero: double): double;
begin
   RAD := Numero * (PI / 180);
end;

function DEG(Numero: double): double;
begin
   DEG := Numero * (180 / PI);
end;

function LOG(Numero: double): double;
begin
   LOG := LN(Numero);
end;

function TAN(Numero: double): double;
begin
   TAN := Sin(Numero) / Cos(Numero);
end;

 {+-------------------------------------------------------+}
 {: Function :  LTRIM                                     :}
 {+-------------------------------------------------------+}
 {:    Syntax : LTRIM ( <expC1> )                         :}
 {:                                                       :}
 {:     where : <expC1> = character string                :}
 {:                                                       :}
 {:    Action : Returns <expC1> with all leading SPACES   :}
 {:             (blanks) removed.                         :}
 {:                                                       :}
 {: Result Type :  String                                 :}
 {+-------------------------------------------------------+}
function LTrim;
var
   n: integer;
begin
   for n := 1 to length(Text) do
   begin
      if Copy(Text, n, 1) <> ' ' then
         break;
      Delete(Text, n, 1);
   end;
   Result := Text;
end;

function Rtrim(Text: string): string;
var
   n: integer;
begin
   for n := length(Text) downto 1 do
   begin
      if Copy(Text, n, 1) <> ' ' then
         break;
      Delete(Text, n, 1);
   end;
   Result := Text;
end;

function Alltrim(sTexto: string): string;
var
   nPos: integer;
begin
   nPos := 1;
   while Pos(' ', sTexto) > 0 do
   begin
      nPos := Pos(' ', sTexto);
(*Text[nPos] := ''; *)
      Delete(sTexto, nPos, 1);
   end;
   Result := sTexto;
end;

function StrZero(Numero: double; Total, Decimal: integer): string;
var
   TempStr: string;
begin
   Str(Numero: 0: Decimal, TempStr);
   while length(TempStr) < Total do
      Insert('0', TempStr, 1);
   StrZero := TempStr;
end;

function StrZero1(Numero: double; Total, Decimal: integer): string;
var
   TempStr: string;
   Posicao: integer;
begin
   Str(Numero: 0: Decimal, TempStr);
   while length(TempStr) < Total do
      Insert('0', TempStr, 1);
   Posicao  := Pos('.', TempStr);
   TempStr  := Copy(TempStr, 1, Posicao - 1) + ',' +
      Copy(TempStr, Posicao + 1, Length(TempStr));
   Strzero1 := TempStr;
end;

function Formata(Text: string; nLinhas, nTamanho: integer; cResto: char): string;
var
   nTotLin, n1, n2, nInicio, nFalta, nAcha: integer;
   cTextoAux, cLinha: string;
begin
   nTotLin := nLinhas; {length(cTexto) div nTamanho;}
   nInicio := 1;
   if nTotLin > nLinhas then
      nTotLin := nLinhas;
   cTextoAux := '';
   for n1 := 1 to nTotLin do
   begin
      cLinha := Rtrim(Copy(Text, nInicio, nTamanho));
      while true do
      begin
         nFalta := nTamanho - length(cLinha);
         if (nFalta > 20) or (Copy(cLinha, length(cLinha), 1) = '.') then
            break;
         if length(cLinha) < nTamanho then
         begin
            cLinha := BuscaTroca(cLinha, ' ', '|');
            for n2 := 1 to nFalta do
            begin
               nAcha := BuscaDireita('|', cLinha);
               if nAcha = 0 then
                  break;
               Delete(cLinha, nAcha, 1);
               Insert('  ', cLinha, nAcha);
            end;
            cLinha := BuscaTroca(cLinha, '|', ' ');
         end;
         if length(Rtrim(cLinha)) = nTamanho then
            break;
      end;
      cTextoAux := cTextoAux + cLinha;
      nInicio   := nInicio + nTamanho;
   end;
   cTextoAux := Copy(Rtrim(cTextoAux) + ' ' + Repete(cResto, nTamanho * nLinhas), 1, nTamanho * nLInhas);
   Result    := cTextoAux
end;

function BuscaDireita(Busca, Text: string): integer;
var
   n, retorno: integer;
begin
   retorno := 0;
   for n := length(Text) downto 1 do
   begin
      if Copy(Text, n, 1) = Busca then
      begin
         retorno := n;
         break;
      end;
   end;
   Result := retorno;
end;

function BuscaTroca(Text, Busca, Troca: string): string;
var
   n: integer;
begin
   for n := 1 to length(Text) do
   begin
      if Copy(Text, n, 1) = Busca then
      begin
         Delete(Text, n, 1);
         Insert(Troca, Text, n);
      end;
   end;
   Result := Text;
end;

function Repete(Caractere: char; nCaracteres: integer): string;
var
   n: integer;
   CadeiaCar: string;
begin
   CadeiaCar := '';
   for n := 1 to nCaracteres do
      CadeiaCar := CadeiaCar + Caractere;
   Result := CadeiaCar;
end;

{Retorna o mes por extenso}
function MES(Dado: string): string;
begin
   mes := meses[StrToInt(copy(DADO, 4, 2))];
end;

{Retorna data por Extenso}
function DATA_EXTENSO(Dado: string): string;
begin
   data_extenso := COPY(DADO, 1, 2) + ' de ' + mes(dado) + ' de ' + copy(dado, 7, 4);
end;

{Retorna valor descriptografado }
function cripto_d(Dado: string): string;
var
   mensx: string;
   l:     integer;
   i:     integer;
   j:     integer;
const
   ch = 'RarbOcodNenfAgahLiljDkolmSnsoCpcqHrhsMwmxIyizTtzhk';
begin
   j     := 0;
   mensx := '';
   for i := 1 to length(dado) do
   begin
      j := j + 1;
      l := asc(copy(dado, i, 1)) - asc(copy(ch, j, 1));
      if (j = 50) then
         j := 1;
      if (l < 0) then
         l := l + 256;
      mensx := mensx + chr(l);
   end;
   cripto_d := mensx;
end;

{Retorna valor criptografado }
function cripto_e(Dado: string): string;
var
   mensx: string;
   l:     integer;
   i:     integer;
   j:     integer;
const
   ch = 'RarbOcodNenfAgahLiljDkolmSnsoCpcqHrhsMwmxIyizTtzhk';
begin
   j     := 0;
   mensx := '';
   for i := 1 to length(dado) do
   begin
      j := j + 1;
      l := Asc(SubStr(dado, i, 1)) + Asc(SubStr(ch, j, 1));
      if (j = 50) then
         j := 1;
      if (l > 255) then
         l := l - 256;
      mensx := mensx + Chr(l)
   end;
   cripto_e := mensx;

end;

{Valida data no formato ddmmaa ou no formato ddmmaaaa}
function VDATA(Dado: string): boolean;
var
   SalvaFormato, DataExterna: string;
   DataInterna: TDateTime;
   Separador:   string;
begin
   Result    := true;
   Separador := FormatSettings.DateSeparator;
   while Pos(Separador, Dado) > 0 do
      Delete(Dado, Pos(Separador, Dado), 1);
   if Length(Dado) = 6 then
      Dado := Copy(Dado, 1, 2) + Separador +
         Copy(Dado, 3, 2) + Separador + '19' +
         Copy(Dado, 5, 2)
   else if Length(Dado) = 8 then
      Dado   := Copy(Dado, 1, 2) + Separador +
         Copy(Dado, 3, 2) + Separador +
         Copy(Dado, 5, 4)
   else
      Result := false;
   if Result then
   begin
      SalvaFormato := FormatSettings.ShortDateFormat;
      try
         FormatSettings.ShortDateFormat := 'd' + Separador + 'm' + Separador + 'y';
         DataInterna     := StrToDate(Dado);
      except
         on EConvertError do
         begin
            Result := false;
            FormatSettings.ShortDateFormat := SalvaFormato;
         end;
      end;
      if Result then
      begin
         try
            FormatSettings.ShortDateFormat := 'dd' + Separador + 'mm' + Separador + 'yyyy';
            DataExterna     := DateToStr(DataInterna);
         except
            on EConvertError do
            begin
               Result := false;
               FormatSettings.ShortDateFormat := SalvaFormato;
            end;
         end;
         if Result and (DataExterna <> Dado) then
            Result := false;
      end;
      FormatSettings.ShortDateFormat := SalvaFormato;
   end;
end;

{Valida valor nulo}
function VNULO(Dado: string): boolean;
begin
   if (Dado = '') or (Dado = '0') then
      Result := false
   else
      Result := true;
end;

function vpis(Dado: string): boolean;
var
   i:     integer;
   wsoma: integer;
   Wm11:  integer;
   Wdv:   integer;
   wdigito: integer;
begin
   wdv   := StrToInt(copy(Dado, 11, 1));
   wsoma := 0;
   wm11  := 2;
   for i := 1 to 10 do
   begin
      wsoma := wsoma + (wm11 * StrToInt(copy(Dado, 11 - I, 1)));
      if wm11 < 9 then
         wm11 := wm11 + 1
      else
         wm11 := 2;
   end;
   wdigito := 11 - (wsoma mod 11);
   if wdigito > 9 then
      wdigito := 0;

   if wdv = wdigito then
      vpis := true
   else
      vpis := false;
end;

{Valida se o ano da data ddmmaa ou ddmmaaaa é o mesmo do ano corrente}
function VANO(Dado: string): boolean;
var
   SalvaFormato, DataExterna, Hoje: string;
   DataInterna:  TDateTime;
   DataCompleta: boolean;
begin
   Result := true;
   if Length(Dado) = 6 then
   begin
      DataCompleta := false;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/19' +
         Copy(Dado, 5, 2)
   end
   else if Length(Dado) = 8 then
   begin
      DataCompleta := true;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/' +
         Copy(Dado, 5, 4);
   end
   else
      Result := false;
   if Result then
   begin
      SalvaFormato := FormatSettings.ShortDateFormat;
      try
         FormatSettings.ShortDateFormat := 'd/m/y';
         DataInterna     := StrToDate(Dado);
      except
         on EConvertError do
         begin
            Result := false;
            FormatSettings.ShortDateFormat := SalvaFormato;
         end;
      end;
      if Result then
      begin
         try
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            DataExterna     := DateToStr(DataInterna);
         except
            on EConvertError do
            begin
               Result := false;
               FormatSettings.ShortDateFormat := SalvaFormato;
            end;
         end;
         if Result then
         begin
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            Hoje := DateToStr(Date);
            if (DataExterna <> Dado) or
               (Copy(Hoje, 5, 4) <> Copy(Dado, 5, 4)) then
               Result := false;
         end;
      end;
      FormatSettings.ShortDateFormat := SalvaFormato;
   end;
end;

{Valida se o mês da data ddmmaa ou ddmmaaaa é o mesmo do mês corrente}
function VMES(Dado: string): boolean;
var
   SalvaFormato, DataExterna, Hoje: string;
   DataInterna:  TDateTime;
   DataCompleta: boolean;
begin
   Result := true;
   if Length(Dado) = 6 then
   begin
      DataCompleta := false;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/19' +
         Copy(Dado, 5, 2)
   end
   else if Length(Dado) = 8 then
   begin
      DataCompleta := true;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/' +
         Copy(Dado, 5, 4);
   end
   else
      Result := false;
   if Result then
   begin
      SalvaFormato := FormatSettings.ShortDateFormat;
      try
         FormatSettings.ShortDateFormat := 'd/m/y';
         DataInterna     := StrToDate(Dado);
      except
         on EConvertError do
         begin
            Result := false;
            FormatSettings.ShortDateFormat := SalvaFormato;
         end;
      end;
      if Result then
      begin
         try
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            DataExterna     := DateToStr(DataInterna);
         except
            on EConvertError do
            begin
               Result := false;
               FormatSettings.ShortDateFormat := SalvaFormato;
            end;
         end;
         if Result then
         begin
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            Hoje := DateToStr(Date);
            if (DataExterna <> Dado) or
               (Copy(Hoje, 3, 2) <> Copy(Dado, 3, 2)) then
               Result := false;
         end;
      end;
      FormatSettings.ShortDateFormat := SalvaFormato;
   end;
end;

{Valida se o mês/ano da data ddmmaa ou ddmmaaaa é o mesmo do mês/ano corrente}
function VMES_ANO1(Dado: string): boolean;
var
   SalvaFormato, DataExterna, Hoje: string;
   DataInterna:  TDateTime;
   DataCompleta: boolean;
begin
   Result := true;
   if Length(Dado) = 6 then
   begin
      DataCompleta := false;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/19' +
         Copy(Dado, 5, 2)
   end
   else if Length(Dado) = 8 then
   begin
      DataCompleta := true;
      Dado := Copy(Dado, 1, 2) + '/' +
         Copy(Dado, 3, 2) + '/' +
         Copy(Dado, 5, 4);
   end
   else
      Result := false;
   if Result then
   begin
      SalvaFormato := FormatSettings.ShortDateFormat;
      try
         FormatSettings.ShortDateFormat := 'd/m/y';
         DataInterna     := StrToDate(Dado);
      except
         on EConvertError do
         begin
            Result := false;
            FormatSettings.ShortDateFormat := SalvaFormato;
         end;
      end;
      if Result then
      begin
         try
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            DataExterna     := DateToStr(DataInterna);
         except
            on EConvertError do
            begin
               Result := false;
               FormatSettings.ShortDateFormat := SalvaFormato;
            end;
         end;
         if Result then
         begin
            FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
            Hoje := DateToStr(Date);
            if (DataExterna <> Dado) or
               (Copy(Hoje, 3, 7) <> Copy(Dado, 3, 7)) then
               Result := false;
         end;
      end;
      FormatSettings.ShortDateFormat := SalvaFormato;
   end;
end;

{Valida se o mês/ano da data no formato mmaa ou mmaaaa são válidos}
function VMES_ANO2(Dado: string): boolean;
begin
   Result := VDATA('01' + Dado);
end;

{-------------------------------------------------------------------}
function Replicate(Caractere: char; nCaracteres: integer): string;
var
   n: integer;
   CadeiaCar: string;
begin
   CadeiaCar := '';
   for n := 1 to nCaracteres do
      CadeiaCar := CadeiaCar + Caractere;
   Result := CadeiaCar;
end;

(*function IMPRIME(CAM_TXT,COL_INI,TAM_LIN)
   LOCAL ATEXTO,I,LIN:= PROW(),POS_INI:=1
   IF LEN(ALLTRIM(CAM_TXT))=0 ; RETURN NIL
   ENDIF
   CAM_TXT   := ALINHA(CAM_TXT,MLCOUNT(CAM_TXT,TAM_LIN),TAM_LIN)
   FOR I = 1 TO MLCOUNT(CAM_TXT,TAM_LIN)
       ATEXTO := RTRIM(SUBS(CAM_TXT,POS_INI,TAM_LIN))
       IF LEN(ATEXTO) >0
          @ LIN,COL_INI SAY ATEXTO
          LIN ++
       ENDIF
       POS_INI+= TAM_LIN
   NEXT*)
(*
function IMPRIME(Texto:String;Coluna,Tam_Linha:Integer):String;
Var
   ATEXTO:String;
   Contador:Integer;
   tamanho:Integer;
   Pos_Inicial:Integer;
//   LIN:= PROW()
//   POS_INI:=1
Begin
   IF length(ALLTRIM(Texto))<>0 then
   Begin
      Pos_Inicial:=0;
//      CAM_TXT   := ALINHA(CAM_TXT,MLCOUNT(CAM_TXT,TAM_LIN),TAM_LIN)
      tamanho:=Round(length(Texto)/Tam_Linha);
      FOR Contador:=1 TO tamanho do
      Begin
          ATEXTO := RTRIM(copy(Texto,Coluna,Tam_Linha));
          IF length(ATEXTO)>0 then
            Relatorio1.imprime(76,0,alltrim(Lanca));

//             @ LIN,COL_INI SAY ATEXTO
          Pos_Inicial:= Pos_Inicial + Tam_Linha;
      end;
      imprime:=atexto;
   end;
end;*)

function PadL(Text: string; nqtde: integer): string;
begin
   PadL := Repete(' ', nQtde - Len(Text)) + alltrim(Text);
end;

function PadR(Text: string; nqtde: integer): string;
begin
   PadR := rtrim(Text) + Repete(' ', nQtde - Len(Text));
end;

 /////////////////////////////////////////////////////////////////////
 /////////////    Rotina p/ Criação de Arquivos Db
function CriaArquivo(sDiretorio, sArquivo: string;
   aStruturaDados: array of string;
   aIndices: array of string): boolean;

(* Autor.....: Edmar de Oliveira Frazão
   Data......: 01/12/1997
   Modificada: 03/12/1997
   email.....: edmar@netfor.com.br

Exemplo:      CriaArquivo('c:\temp',
                       'Teste.Db',
                      ['Codigo      ','A','05','f' ,
                       'Nome        ','C','40','f' ,
                       'Endereco    ','C','30','f' ,
                       'DTVencimento','D','00','f' ,
                       'Ativo       ','L','00','f' ,
                       'Vendas      ','#','02','f' ,
                       'Observacoes ','M','00','f'],
                       [' Codigo','Codigo','Pu',
                        ' Nome  ','Nome  ','d',
                        'xxNome ','Nome;Endereco','D'])
Ps. Esta rotina podera ser altera ou mudificada , sem qualquer onus p/
     ambas as partes.
   Se alguem a altera-lá p/ uso , se possivel enviar-me uma copia.
      Gratos.
      Edmar Frazo.

   Rotina de criacao de Arquivo no estido Dbcreate do Clipper, foi
   criado uma matriz string onde deve-se informa a estrutura dos
   arquivo na ordem:
      Campo,TipoCampo,Tamanho,Logico
      ou seja p/ cada campo do arquivo dever haver uma sequencia de 04
      strings.
      Tipo de Campos aceitos(podendo ser acrecentado outros), sendo
      aceitos em Letras maiusculas ou minusculas.
      {CNAIDT#GML} ou seja
          {ftstring,ftSmallint,ftString,ftDate,ftTime,ftBCD,
          ftGraphic,ftMemo,ftBoolena}
   p/ os indices a ordem
      NomedoIndice,NomedoCampo,TipodaOrdenacao }
      Tipo de ordenacao dos Indices(podendo ser acrecentado outros), sendo
      aceitos em Letras maiusculas ou minusculas.
      {PUDEC} ou seja
         {ixPrimary,ixUnique,ixDescending,ixExpression,ixCaseInsensiteve}
      Podendo combinar mais de um tipo de ordem ex:
         'PU', [ixPrimary,ixUnique]
*)
var
   iContador, iLimite: integer;
   sChaveIndice, sNomeIndice, sIndice, sNomeCampo: string;
   sTipoCampo: string[1];
   fTipoCampo: TFieldType;
   iTamanhoCampo: integer;
   bRequeridoCampo: boolean;
   tTabela: TTable;
begin
   try
      try
         tTabela := TTable.Create(Application);
         iLimite := (High(aStruturaDados) + 1) div 4;
         if ((iLimite * 4) <> (High(aStruturaDados) + 1)) or
            ((((High(aIndices) + 1) div 3) * 3) <> (High(aIndices) + 1)) then
         begin
            if ((iLimite * 4) <> (High(aStruturaDados) + 1)) then
               ShowMessage('Estrutura dos Dados esta incorreta, '#13 + 'tem que ser Multiplos de 4')
            else
               ShowMessage('Estrutura dos Indices esta incorreta, '#13 + 'tem que ser Multiplos de 3');

         end
         else
         begin
            with tTabela do
            begin
               Active    := false;
               TableType := ttParadox;
               DatabaseName := sDiretorio;
               TableName := sArquivo;
               FieldDefs.Clear;
            end;
            for iContador := 1 to iLimite do
            begin
               sNomeCampo    := aStruturaDados[((iContador * 4) - 4)];
               sTipoCampo    := aStruturaDados[((iContador * 4) - 3)];
               fTipoCampo    := ChecaCampo(sTipoCampo);
               iTamanhoCampo := StrToInt(aStruturaDados[((iContador * 4) - 2)]);
               if (aStruturaDados[((iContador * 4) - 1)] = 't') or
                  (aStruturaDados[((iContador * 4) - 1)] = 'T') then
                  bRequeridoCampo := true
               else
                  bRequeridoCampo := false;

               with tTabela.FieldDefs do
               begin
                  Add(Alltrim(sNomeCampo), fTipoCampo, iTamanhoCampo, bRequeridoCampo);
               end;
            end;
            tTabela.IndexDefs.Clear;
            iLimite := (High(aIndices) + 1) div 3;
            for iContador := 1 to iLimite do
            begin
               sNomeIndice  := aIndices[(iContador * 3) - 3];
               sIndice      := aIndices[(iContador * 3) - 2];
               sChaveIndice := aIndices[(iContador * 3) - 1];

               with tTabela.IndexDefs do
                  Add(Rtrim(sNomeIndice), ALLTRIM(sIndice), CriaArquivoIndices(sChaveIndice));

               tTabela.CreateTable;
            end;
            Result := true;
         end;
      except
         Result := false;
      end;
   finally
      tTabela.Free;
   end;
end;


function ChecaCampo(sTipoCampo: string): TFieldType;
begin
   if (sTipoCampo = 'C') or (sTipoCampo = 'c') then
      Result := ftString
   else if (sTipoCampo = 'N') or (sTipoCampo = 'n') then
      Result := ftSmallint
   else if (sTipoCampo = 'A') or (sTipoCampo = 'a') then
      Result := ftString
   else if (sTipoCampo = 'I') or (sTipoCampo = 'i') then
      Result := ftInteger
   else if (sTipoCampo = 'D') or (sTipoCampo = 'd') then
      Result := ftDate

   else if (sTipoCampo = 'T') or (sTipoCampo = 't') then
      Result := ftTime
   else if (sTipoCampo = '#') or (sTipoCampo = '$') then
      Result := ftBCD
   else if (sTipoCampo = 'G') or (sTipoCampo = 'g') then
      Result := ftGraphic
   else if (sTipoCampo = 'M') or (sTipoCampo = 'm') then
      Result := ftMemo
   else if (sTipoCampo = 'L') or (sTipoCampo = 'l') then
      Result := ftBoolean
   else if (sTipoCampo = 'B') or (sTipoCampo = 'b') then
      Result := ftBoolean
   else if (sTipoCampo = '+') or (sTipoCampo = 'A') then
      Result := ftAutoInc
   else
   begin
      Result := ftBCD;
      ShowMessage('Tipo de Campo informado não valido: ' + sTipoCampo +
         #13 + 'Usado o Campo: ftBCD');
   end;
end;

function CriaArquivoIndices(sIndices: string): TIndexOptions;
var
   iContador, iTamanho: integer;
   sChave: string;
begin
   iTamanho := length(sIndices);
   Result   := [];
   for iContador := 1 to iTamanho do
   begin
      sChave := Copy(sIndices, iContador, 1);
      if (sChave = 'P') or (sChave = 'p') then
         Result := Result + [ixPrimary]
      else if (sChave = 'U') or (sChave = 'u') then
         Result := Result + [ixUnique]
      else if (sChave = 'D') or (sChave = 'd') then
         Result := Result + [ixDescending]
      else if (sChave = 'E') or (sChave = 'e') then
         Result := Result + [ixExpression]
      else if (sChave = 'C') or (sChave = 'c') then
         Result := Result + [ixCaseInsensitive]
      else
      begin
         Result := Result + [ixDescending];
         ShowMessage('Indice Informado não valido: ' + sChave +
            #13 + 'Opção Usada no Indice: ixDescending');
      end;

   end;
end;

procedure ChecaCampoVazio(var Campo: TObject);
begin
end;

procedure Inicializa(
   var DDiretorio: string;
   var DDiretorioTmp: string;
   dDatabase: TDatabase;
   ArquivoIni: string; Formulario: TForm);
var
   mConfig:   TMemo;
   sArquivo:  string;
   sServidor: string;
   sPrivate:  string;
   iContador: integer;
   sTexto, sTexto1, sTexto2: string;
   sDrive, sDiretorioTemp: string;
begin
   try
//    EscondeTaskBar(False);
      mConfig  := TMemo.Create(nil);
      mConfig.Parent := Formulario;
      mconfig.Visible := false;
      mConfig.WordWrap := false;
      sArquivo := 'c:\Se\' + ArquivoIni + '.ini';
      if not FileExists(sArquivo) then
      begin
         mConfig.Lines.Add('Siga este Leiaute.      //SE® Softwares Edmar');
         mConfig.Lines.Add('Utilize sempre maiusculas                    ');
         mConfig.Lines.Add('12345678901234567890xx12345678901234567890');
         mConfig.Lines.Add('[SERVIDOR]            \\SERVIDOR\F        ');
         mConfig.Lines.Add('[DRIVE]               F                   ');
         mConfig.Lines.Add('[TMP]                 C:\TMP              ');
         mConfig.Lines.Add('[TEMP]                C:\TEMP             ');
         mConfig.Lines.SaveToFile(sArquivo);
      end;
      mConfig.Lines.Clear;
      mConfig.Lines.LoadFromFile(sArquivo);
      for iContador := 1 to 20 do
      begin
         sTexto  := mConfig.Lines[iContador];
         sTexto1 := Alltrim(Copy(sTexto, 1, 20));
         sTexto2 := Alltrim(Copy(sTExto, 23, 20));
         if sTexto1 = '[SERVIDOR]' then
            sServidor := sTexto2
         else if sTexto1 = '[DRIVE]' then
            sDrive := sTexto2
         else if sTexto1 = '[TMP]' then
            dDiretorioTmp := sTexto2
         else if sTexto1 = '[TEMP]' then
            sDiretorioTemp := sTexto2
      end;
      dDiretorio := sDrive + ':' + dDiretorio;
      sPrivate   := dDiretorioTmp;
      dDatabase.Connected := false;
      dDatabase.Params.Clear;
      dDatabase.Params.add('PATH=' + dDiretorio);
      dDatabase.Params.add('DEFAULT DRIVER=PARADOX');
      dDatabase.Params.add('PASSWORD=Se');
      Session.AddPassword('Se®');{Senha do DB}
      Session.NetFileDir  := sServidor;
      Session.PrivateDir  := sPrivate;
      dDatabase.Connected := true;
   finally
      mConfig.Free;
   end; // try

end;

procedure FechaTabelas(dDatabase: TDatabase);
var
   Contador: integer;
begin
   with Session do
      for Contador := 0 to DatabaseCount - 1 do
         Databases[Contador].Close;
   Session.Active      := false;
   dDatabase.Connected := false;
//  EscondeTaskBar(True);
end;

////////////////////////////////////////////////////////////
procedure EscondeTaskBar(Visible: boolean);
var
   wndHandle: THandle;
   wndClass:  array[0..50] of char;
begin
   StrPCopy( @wndClass[0], 'Shell_TrayWnd');
   wndHandle := FindWindow( @wndClass[0], nil);
   if Visible = true then
   begin
      ShowWindow(wndHandle, SW_RESTORE); {Mostra a barra de tarefas}
   end
   else
   begin
      ShowWindow(wndHandle, SW_HIDE);     {Esconde a barra de tarefas}
   end;
end;

function Alinha(Texto: string;
   Tamanho: integer;
   Linhas: integer
   ): string;
var
   lTexto:   string;
   lTamanho: integer;
begin
   lTamanho := length(Texto);
   Result   := Texto + Replicate(' ', (Tamanho * Linhas) - lTamanho);
//   Result   := Texto + ' ' + Replicate(' ', (Tamanho * Linhas) - lTamanho);
end;

function Blinha(Texto: string;
   Tamanho: integer;
   Linhas: integer
   ): string;
var
   lTexto:   string;
   lTamanho: integer;
begin
   lTamanho := length(Texto);
   Result   := Replicate(' ', (Tamanho * Linhas) - lTamanho) + Texto;
//   Result   := Texto + ' ' + Replicate(' ', (Tamanho * Linhas) - lTamanho);
end;

function Clinha(Texto: string;
   Tamanho: integer;
   Linhas: integer
   ): string;
var
   lTexto:   string;
   lTamanho: integer;
begin
   lTamanho := length(Texto);
   Result   := Replicate('0', (Tamanho * Linhas) - lTamanho) + Texto;
//   Result   := Texto + ' ' + Replicate(' ', (Tamanho * Linhas) - lTamanho);
end;

procedure CriaFormulario(Formulario: TFormClass;
   var Referencia;
   SubMenu: TMenuItem;
   FormModal, ExpandForm: boolean);
var
   s: string;
begin
   Application.CreateForm(Formulario, Referencia);
   if FormModal then
   begin
      try
         TForm(Referencia).ShowModal;
      finally
         TForm(Referencia).Free;
      end;
   end
   else
   begin
      if SubMenu <> nil then
         SubMenu.Enabled := false;
      TForm(Referencia).Show;
      if ExpandForm then
         TForm(Referencia).WindowState := wsMaximized;
   end;
end;


function DifHora(Data: TDateTime): real;
var
   HoraInt, MinutoInt, SegundoInt, MSegundoInt: word;
   TempoInt: real;

begin

   DecodeTime(Data, HoraInt, MinutoInt, SegundoInt, MSegundoInt);
   TempoInt := HoraInt + (MinutoInt / 60);
   Result   := TempoInt;

end;

function FloatToTime(Hora: real): TTime;
var
   aux: string;

begin

   Result := StrToTime(TimeToStr(Hora));

end;

function DateToText(Data: TDateTime): string;
var
   dia, mes, ano: word;

begin

   DecodeDate(Data, ano, mes, dia);
   Result := StrZero(Dia, 2, 0) + StrZero(mes, 2, 0) + Strzero(Ano, 4, 0);

end;

function Extenso(pValor: real): string;

var
   nParte1, nParte2:      comp;
   xExt1, xExt2, xJuncao: string;

begin
   nParte1 := Int(pValor);
   nParte2 := Round((pValor - nParte1) * 100);
   xExt1   := fExtenso(nParte1);
   xExt2   := fExtenso(nParte2);
   if ((Length(xExt1) = 0) and (Length(xExt2) = 0)) then
      xExt1 := 'zero';

   if xExt1 = 'um' then
      xExt1 := xExt1 + ' real'
   else if xExt1 <> '' then
      xExt1 := xExt1 + ' reais';


   if Length(xExt2) > 0 then
      if xExt2 = 'um' then
         xExt2 := xExt2 + ' centavo'
      else
         xExt2 := xExt2 + ' centavos';

   if ((Length(xExt1) = 0) or (Length(xExt2) = 0)) then
      xJuncao := ''
   else
      xJuncao := ' e ';

   Result := xExt1 + xJuncao + xExt2;

end;


function fExtenso(nValor: real): string;

const
   aExSP: array[1..8] of string = ('', ' mil', ' milhoes', ' bilhoes', ' trilhoes',
      'quadrilhoes', ' quinqualhoes', ' sextalhoes');
   aExSS: array[1..8] of string = ('', ' mil', ' milhao ', ' bilhao ', ' trilhao ',
      ' quadrilhao ', ' quinqualhao ', ' sextalhao');
var

   NumGrupos, n, nn: integer;
   cValor, tExtenso, xExtenso, cGrupo: string;

begin
   NumGrupos := ((LenNum(nValor) + 2) div 3);
   cValor    := PadlZero(FloattoStr(nValor), NumGrupos * 3);
   tExtenso  := '';
   xExtenso  := '';

   for n := 1 to NumGrupos do
   begin
      cGrupo := Copy(cValor, n * 3 - 2, 3);
      xExtenso := ExtensoMil(cGrupo);
      nn := NumGrupos - n + 1;
      if Length(xExtenso) > 0 then
      begin
         if cGrupo = '001' then
            xExtenso := xExtenso + aExSS[nn]
         else
            xExtenso := xExtenso + aExSP[nn];
         if Length(tExtenso) > 0 then
            tExtenso := tExtenso + ' ';
         tExtenso := tExtenso + xExtenso;
      end;

   end;

   Result := tExtenso;
end;

function ExtensoMil(cVlr: string): string;

const
   aExp: array[1..37] of string = (
      'um', 'dois', 'tres', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove', 'dez',
      'onze', 'doze', 'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete',
      'dezoito', 'dezenove', 'vinte', 'trinta', 'quarenta', 'cinquenta', 'sessenta',
      'setenta', 'oitenta', 'noventa', 'cem', 'duzentos', 'trezentos', 'quatrocentos',
      'quinhentos', 'seiscentos', 'setecentos', 'oitocentos', 'novecentos', 'cento');

var
   c1, c2, c3:      string;
   e1, e2, e3, cJuncao1, cJuncao2: string;
   n1, n2, n3, n23: integer;

begin
   c1  := Copy(cVlr, 1, 1);
   c2  := Copy(cVlr, 2, 1);
   c3  := Copy(cVlr, 3, 1);
   n1  := StrToInt(c1);
   n2  := StrToInt(c2);
   n3  := StrToInt(c3);
   e1  := '';
   e2  := '';
   e3  := '';
   n23 := StrToInt(c2 + c3);
   if n1 > 0 then
      if ((n1 = 1) and ((n2 + n3) > 0)) then
         e1 := aExP[37]
      else
         e1 := aExp[27 + n1];
   if n2 > 1 then
   begin
      e2 := aExp[18 + n2];
      if n3 > 0 then
         e3 := aExp[n3];
   end
   else
   begin
      e2 := '';
      if n23 > 0 then
         e3 := aExp[n23];
   end;
   if ((n1 = 0) or (n23 = 0)) then
      cJuncao1 := ''
   else
      cJuncao1 := ' e ';
   if ((Length(e2) = 0) or (Length(e3) = 0)) then
      cJuncao2 := ''
   else
      cJuncao2 := ' e ';

   Result := e1 + cJuncao1 + e2 + cJuncao2 + e3;

end;


function Padlzero(Texto: string; Tam: integer): string;

var
   tamtex, n: integer;
begin
   tamtex := Length(Texto);
   Result := Texto;
   if tamtex > tam then
      Result := Copy(Texto, tamtex - tam + 1, tam);
   if tamtex < tam then
      for n := (tamtex + 1) to tam do
         Result := '0' + Result;
end;

function LenNum(Numero: real): integer;
var
   cNumero: string;
begin
   cNumero := FormatFloat('0.000E+00', Numero);
   Result  := StrToInt(Copy(cNumero, Length(cNumero) - 1, 2)) + 1

{FloatToStrF(Numero; ffExponent; 14,2)}
end;

//*------------------------------------------------------
function Diretorio(Alias: string): string;
//*------------------------------------------------------
var
   BancoDados: TDataBase;
//    pszDir : Pchar;
   NomeDir:    string;
begin
   try
      BancoDados := TDataBase.Create(nil);
      with BancoDados do
      begin
//          pszDir := StrAlloc( 255 );
         AliasName    := Alias;
         DatabaseName := 'Temp';
         Connected    := true;
 //          DBIGetDirectory( Handle, True, pszDir );
 //          Result := pszDir;
         NomeDir      := Directory;
         Connected    := false;
      end;
   finally
      BancoDados.Free;
      Result := NomeDir;
   end;
end;

function OemToStr(AsciiStr: string): string;
var
   AnsiStr: string;
begin
{
   SetLength(AnsiStr, Length(AsciiStr));
   if Length(AsciiStr) > 0 then
      OemToChar(pwidechar(AsciiStr), pwidechar(AnsiStr));
   Result := AnsiStr;
 }
end;

function AnsiToAscii(const AnsiStr: string): string;
var
   AsciiStr: string;
begin
{
   SetLength(AsciiStr, Length(AnsiStr));
   if Length(AnsiStr) > 0 then
      CharToOem(pchar(AnsiStr), pchar(AsciiStr));
   AnsiToAscii := AsciiStr;
   }
end;

function cnpj(const cCNPJ: string): boolean;
var
i, soma, mult: integer;
CGC: string;
begin
result := false;

if cCNPJ = '' then exit;

CGC := cCNPJ;
CGC := stringReplace( cCNPJ, '-','', [rfReplaceAll] );
CGC := stringReplace( cCNPJ, '.','', [rfReplaceAll] );
CGC := stringReplace( cCNPJ, '/','', [rfReplaceAll] );

if Length(CGC) <> 14 then exit;
soma := 0; mult := 2;
for i := 12 downto 1 do
begin
soma := soma + strToInt(CGC[i]) * mult;
mult := mult + 1;
if mult > 9 then mult := 2;
end;
mult := soma mod 11;
if mult <= 1 then mult := 0 else mult := 11 - mult;
if mult <> strToInt(CGC[13]) then exit;
soma := 0;
mult := 2;
for i := 13 downto 1 do
begin
soma := soma + strToInt(CGC[i]) * mult;
mult := mult + 1;
if mult > 9 then mult := 2;
end;
mult := soma mod 11;
if mult <= 1 then mult := 0 else mult := 11 - mult;
result := mult = strToInt(CGC[14]);
end;


Function IsNumero(const s: string) : boolean;
var
 i : byte;
begin
 Result := false;
 for i := 1 to length(s) do
   if not (s[i] in ['0'..'9']) then exit;
 Result := true;
end; { IsNumero }

{ chInt - Converte um caracter numérico para o valor inteiro correspondente. }
function CharToInt( ch: Char ): ShortInt;
begin
 Result := Ord ( ch ) - OrdZero;
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter numérico
 correspondente. }

function IntToChar ( int: ShortInt ): Char;
begin
 Result := Chr ( int + OrdZero);
end;

Function CHKIEMG(const iemg : string):boolean;
var
 npos,i : byte;
 ptotal, psoma : Integer;
 dig1, dig2 : string[1];
 ie, insc : string;
 nresto : SmallInt;
begin

result := true
 //

 {

 Result := true;
 ie := alltrim(iemg);
 if (empty(ie))  then exit;
 if copy(ie,1,2) = 'PR' then exit;
 if copy(ie,1,5) = 'ISENT' then exit;

 Result := false;
 If (Trim(iemg)='.') Then Exit;
 if (length(ie) <> 13) then Exit;
 if not IsNumero(ie) then Exit;

 dig1 := copy(ie,12,1);
 dig2 := copy(ie,13,1);
 insc := copy(ie,1,3) + '0' + copy(ie,4,8);
 //  CALCULA DIGITO 1
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   psoma := CharToInt(insc[npos]) * i;
   IF psoma >= 10 then psoma := psoma - 9;
   inc(ptotal,psoma);
   IF i = 2 then i := 0;
   dec(npos);
 end;
 nResto := ptotal mod 10;
 if NResto = 0 then  nResto := 10;
 nResto := 10 - nResto;
 if nResto <> CharToInt(dig1[1]) then exit;

 // CALCULA DIGITO 2
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   if i = 12 then i := 2;
   inc(ptotal, CharToInt(ie[npos]) * i);
   dec(npos);
 end;
 nResto := ptotal mod 11;
 if (nResto = 0) or (nResto = 1) then nResto := 11;
 nResto := 11 - nResto;
 if nResto <> AnsiCharToInt(dig2[1]) then exit;
 Result := true;

 }
end; // ChkMG

Function CHKCGC(const cgc : string):boolean;
var
 nro : array[1..14] of byte;
 i : byte;
 cal,cal1 : Integer;
 dig : string;
begin
 // 99.999.999/9999-99
 Result := false;
 if (empty(cgc)) or (length(cgc) <> 14) then exit;
 if not IsNumero(cgc) then exit;

 for i := 1 to 12 do nro[i] := CharToInt(cgc[i]);
 cal := 0;
 for i := 1 to 04 do inc(cal,nro[i] * (6-i));
 for i := 5 to 12 do inc(cal,nro[i] * (14-i));
 nro[13] := 11 - (cal mod 11);
 if nro[13] >= 10 then  nro[13] := 0;

 cal1 := 0;
 for i := 1 to 05 do inc(cal1, nro[i] * (7-i));
 for i := 6 to 13 do inc(cal1, nro[i] * (15-i));
 nro[14] := 11-(cal1 mod 11);
 if nro[14] >= 10 then nro[14] := 0;
 dig := IntToChar(nro[13]) + IntToChar(nro[14]);
 if dig <> copy(cgc,13,2) then exit;
 Result := true;
end; // ChkCGC

Function CHKCPF(const cpf : string):boolean;
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 //
 If (Trim(cpf)='.') Then
    Exit;
 //
 if (empty(cpf)) or (length(cpf) <> 11) then exit;
 if not IsNumero(cpf) then exit;
 b := 11;
 soma := 0;
 for i := 1 to 10 do
 begin
   inc(soma,CharToInt(cpf[i]) * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (IntToChar(dig) = cpf[11]);
end; // ChkCPF


// ----------------------------------- Inscrições Estaduais

Function ChkIEAC(const ie : string) : Boolean;  // 99.999.999/999-99
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[13]);
end; // ChkIEAC

Function ChkIEAL(const ie : string) : Boolean; // 24XNNNNND
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := soma - trunc(soma / 11) * 11;
 if dig = 10 then dig := 0;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAL

Function ChkIEAM(const ie : string) : Boolean;  // 99.999.999-9
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 if soma < 11 then dig := 11 - soma else
 begin
   i := (soma mod 11);
   if i <= 1 then dig := 0 else dig := 11 - i;
 end;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAM

Function ChkIEAP(const ie : string) : Boolean; // 999999999
var
 p,d, b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 p := 0;
 d := 0;
 i := StrToInt(copy(ie,1,8));
 if (i >= 03000001) and (i <= 03017000) then
 begin
   p := 5;
   d := 0;
 end else
 if (i >= 03017001) and (i <= 03019022) then
 begin
   p := 9;
   d := 1;
 end;
 b := 9;
 soma := p;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig = 10 then dig := 0 else
 if dig = 11 then dig := d;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAP

Function ChkIEBA(const ie : string) : Boolean; // 999999-99
var
 b, i, soma : Integer;
 nro : array[1..8] of byte;
 NumMod : word;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) <> 8) then exit;
 die := copy(ie,1,8);
 if not IsNumero(die) then exit;
 for i := 1 to 8 do nro[i] := CharToInt(die[i]);
 if nro[1] in [0, 1, 2, 3, 4, 5, 8] then NumMod := 10 else NumMod := 11;
 // calculo segundo
 b := 7;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[8]);
 if not Result then exit;
 // calculo segundo
 b := 8;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 inc(soma, (nro[8] * 2));
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[7]);
end; // ChkIEBA

Function ChkIECE(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) > 9) then exit;
 if not IsNumero(ie) then exit;
 die := ie;
 if length(ie) < 9 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 9;
 end;
 for i := 1 to 9 do nro[i] := CharToInt(die[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[9]);
end; // ChkIECE

Function ChkIEDF(const ie : string) : Boolean;  // 999.99999.999.99
var
 b, i, soma : Integer;
 nro : array[1..13] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 13 do nro[i] := CharToInt(ie[i]);
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[13]);
end; // ChkIEDF

Function ChkIEES(const ie : string) : Boolean;  // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := soma mod 11;
 if i < 2 then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEES

Function ChkIEGO(const ie : string) : Boolean; // 99.999.999.9
var
 n, b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,1,2);
 if (s = '10') or (s = '11') or (s = '15') then
 begin
   for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
   n := trunc(StrToFloat(ie) / 10);
   if n = 11094402 then
   begin
     if (nro[9] = 0) or (nro[9] = 1) then
     begin
       Result := true;
       exit;
     end;
   end;

   b := 9;
   soma := 0;
   for i := 1 to 08 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
   end;
   i := (soma mod 11);
   if i = 0 then dig := 0 else
   if i = 1 then
   begin
     if (n >= 10103105) and (n <= 10119997) then
       dig := 1
     else
       dig := 0;
   end else
   begin
     dig := 11 - i;
   end;
   Result := (dig = nro[9]);
 end;
end; // ChkIEGO

Function ChkIEMA(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEMA

Function ChkIEMT(const ie : string) : Boolean;  // 9999999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) < 9) then exit;
 die := ie;
 if length(die) < 11 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 11;
 end;
 if not IsNumero(die) then exit;
 for i := 1 to 11 do nro[i] := CharToInt(die[i]);
 b := 3;
 soma := 0;
 for i := 1 to 10 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[11]);
end; // ChkIEMT

Function ChkIEMS(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '28' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEMS

Function ChkIEPA(const ie : string) : Boolean; // 99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '15' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPA

Function ChkIEPB(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPB

Function ChkIEPR(const ie : string) : Boolean; //  99999999-99
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
 b := 3;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
 if not result then exit;

 b := 4;
 soma := 0;
 for i := 1 to 09 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[10]);
end; // ChkIEPR

Function ChkIEPE(const ie : string) : Boolean; // 99.9.999.9999999-9
var
 b, i, soma : Integer;
 nro : array[1..14] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 14) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 14 do nro[i] := CharToInt(ie[i]);
 b := 5;
 soma := 0;
 for i := 1 to 13 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 0 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig > 9 then dig := dig - 10;
 Result := (dig = nro[14]);
end; // ChkIEPE

Function ChkIEPI(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPI

Function ChkIERJ(const ie : string) : Boolean; // 99.999.99-9
var
 b, i, soma : Integer;
 nro : array[1..08] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 08) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 08 do nro[i] := CharToInt(ie[i]);
 b := 2;
 soma := 0;
 for i := 1 to 07 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[08]);
end; // ChkIERJ

Function ChkIERN(const ie : string) : Boolean; // 99.999.999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := (soma mod 11);
 if (dig = 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIERN

Function ChkIERS(const ie : string) : Boolean;  // 999.999999-9
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 i := StrToInt(copy(ie,1,3));
 if (i >= 1) and (i <= 467) then
 begin
   for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
   b := 2;
   soma := 0;
   for i := 1 to 09 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
     if b = 1 then b := 9;
   end;
   dig := 11 - (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[10]);
 end;
end; // ChkIERS

// Rondônia - versão antiga
Function ChkIERO(const ie : string) : Boolean; // 999.99999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 6;
 soma := 0;
 for i := 4 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b)
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := dig - 10;
 Result := (dig = nro[09]);
end; // ChkIERO

// Rondônia - versão nova
Function ValidaInscRO(SIE :string): boolean;
var i,x,y,z,j : integer;
  s : string;
begin
  i := 1;
  y := 6;
  x := 0;
  z := 0;
  j := 0;
  for j := 1 to length(trim(sie))do
      if sie[j] in
['0','1','2','3','4','5','6','7','8','9','0'] then
         s := s + sie[j];
  if not length(s)  <> 14 then begin
     for i := 1 to (14 - length(Trim(s))) do
             s := '0' + trim(s)
  end;
  for i := 1 to (length(s) - 1) do begin
      x := strtoint(s[i])* y;
      z := z + x;
      if y  > 2 then
         dec(y)
      else y := 9;
  end;
  x := z mod 11;
  y := 11 - x;
  if inttostr(y) = s[14] then
     Result := true
  else Result := false;
end;


Function ChkIERR(const ie : string) : Boolean; // 99.999999-9
var
 i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * i);
 end;
 dig := (soma mod 09);
 Result := (dig = nro[09]);
end; // ChkIERR

Function ChkIESC(const ie : string) : Boolean;  // 999.999.999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIESC

Function ChkIESP(const ie : string) : Boolean;
var
 i, soma : Integer;
 nro : array[1..12] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if UpperCase(copy(ie,1,1)) = 'P' then
 begin
   s := copy(ie,2,9);
   if not IsNumero(s) then exit;
   for i := 1 to 8 do nro[i] := CharToInt(s[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
 end else
 begin
   if (length(ie) < 12) then exit;
   if not IsNumero(ie) then exit;
   for i := 1 to 12 do nro[i] := CharToInt(ie[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
   soma := (nro[1] * 3) + (nro[2] * 2) + (nro[3] * 10) + (nro[4] * 9) +
           (nro[5] * 8) + (nro[6] * 7) + (nro[7] * 6) + (nro[8] * 5) +
           (nro[9] * 4) + (nro[10] * 3) + (nro[11] * 2);

   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[12]);
 end;
end; // ChkIESP

Function ChkIESE(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIESE

Function ChkIETO(const ie : string) : Boolean; // 99.99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 11) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,3,2);
 if (s = '01') or (s = '02') or (s = '03') or (s = '99')  then
 begin
   for i := 1 to 11 do nro[i] := CharToInt(ie[i]);
   b := 9;
   soma := 0;
   for i := 1 to 10 do
   begin
     if (i <> 3) and (i <> 4) then
     begin
       inc(soma, nro[i] * b);
       dec(b);
     end;
   end;
   i := (soma mod 11);
   if (i <= 1) then dig := 0 else dig := 11 - i;
   Result := (dig = nro[11]);
 end;
end; // ChkIETO

// --------------------------------------------------------------

Function ChkInscEstadual(const ie, uf : string) : Boolean;
var
 duf, die : string;
  IRet, IOk, IErro, IPar    : Integer;
  LibHandle                 : THandle;
  ConsisteInscricaoEstadual : TConsisteInscricaoEstadual;



begin
  try

    //
    Result:=False;
    If (Trim(ie)='.') Then Exit;
    //
    duf := UpperCase(uf);
    die := UpperCase(alltrim(ie));
    die := stringReplace( die, '/', '', [rfReplaceAll] );
    die := stringReplace( die, '-', '', [rfReplaceAll] );
    die := stringReplace( die, '.', '', [rfReplaceAll] );

    LibHandle :=  LoadLibrary (PChar (Trim ('DllInscE32.Dll')));
    if  LibHandle <=  HINSTANCE_ERROR then
      raise Exception.Create ('Dll do Sintegra não carregada');

    @ConsisteInscricaoEstadual  :=  GetProcAddress (LibHandle,
                                                    'ConsisteInscricaoEstadual');
    if  @ConsisteInscricaoEstadual  = nil then
      raise Exception.Create('Entrypoint Download não encontrado na Dll do Sintegra');

    IRet := ConsisteInscricaoEstadual (die, uf );
    result:= ( Iret = 0 );

  finally
    FreeLibrary (LibHandle);
  end;

{
 if (copy(die,1,5) = 'ISENT') or (die = '') then
 begin
   Result := true;
   exit;
 end;
 if duf = 'AC'  then Result := ChkIEAC(die) else
 if duf = 'AL'  then Result := ChkIEAL(die) else
 if duf = 'AP'  then Result := ChkIEAP(die) else
 if duf = 'AM'  then Result := ChkIEAM(die) else
 if duf = 'BA'  then Result := ChkIEBA(die) else
 if duf = 'CE'  then Result := ChkIECE(die) else
 if duf = 'DF'  then Result := ChkIEDF(die) else
 if duf = 'ES'  then Result := ChkIEES(die) else
 if duf = 'GO'  then Result := ChkIEGO(die) else
 if duf = 'MA'  then Result := ChkIEMA(die) else
 if duf = 'MG'  then Result := ChkIEMG(die) else
 if duf = 'MT'  then Result := ChkIEMT(die) else
 if duf = 'MS'  then Result := ChkIEMS(die) else
 if duf = 'PA'  then Result := ChkIEPA(die) else
 if duf = 'PB'  then Result := ChkIEPB(die) else
 if duf = 'PR'  then Result := ChkIEPR(die) else
 if duf = 'PE'  then Result := ChkIEPE(die) else
 if duf = 'PI'  then Result := ChkIEPI(die) else
 if duf = 'RJ'  then Result := ChkIERJ(die) else
 if duf = 'RN'  then Result := ChkIERN(die) else
 if duf = 'RS'  then Result := ChkIERS(die) else
 if duf = 'RO'  then Result := (ChkIERO(die) Or ValidaInscRO(die)) else
 if duf = 'RR'  then Result := ChkIERR(die) else
 if duf = 'SC'  then Result := ChkIESC(die) else
 if duf = 'SP'  then Result := ChkIESP(die) else
 if duf = 'SE'  then Result := ChkIESE(die) else
 if duf = 'TO'  then Result := ChkIETO(die) else
 Result := false;
 }

end; // ChkInscEstadual


{

function gravaFoto( Ibquery : TIBQuery; NomeCaminhoImagem : String; Comando : String; Parametro : String):boolean; 
var 
   F1 : TMemoryStream; 
   jpg : TJPEGImage; 
   Bitmap : TBitmap; 
begin 
   IBquery.Close; 
   Ibquery.SQL.Clear; 
   Ibquery.SQL.Add(comando); 
   F1   := TMemoryStream.Create(); 
   if LowerCase(COPY(NomeCaminhoImagem,LENGTH(NomeCaminhoImagem)-2,3)) = 'jpg' then begin 
      F1.LoadFromFile(NOMECAMINHOIMAGEM); 
   end else if LowerCase(copy(NomeCaminhoImagem,LENGTH(NomeCaminhoImagem)-2,3)) = 'bmp' then begin 
      Jpg := TJpegImage.Create; 
      F1 := TMemoryStream.Create; 
      Bitmap := TBitmap.Create; 
      Bitmap.LoadFromFile(NomeCaminhoImagem); 
      Jpg.Assign(Bitmap); 
      Jpg.Compress; 
      jpg.SaveToFile(GetCurrentDir+'\tmp.jpg'); 
      F1.LoadFromFile(GetCurrentDir+'\tmp.jpg'); 
      DeleteFile(GetCurrentDir+'\tmp.jpg') 
   end else begin 
      Application.MessageBox(Pchar('Imagens '+COPY(NomeCaminhoImagem,LENGTH(NomeCaminhoImagem)-2,3)+' não suportadas'),'',mb_ok); 
      result := false; 
      exit; 
   end; 
   ibquery.ParamByName(parametro).AsBlob := f1.Memory; 
   ibquery.EXECSQL; 
   result := true; 
end; 
 }
end.
