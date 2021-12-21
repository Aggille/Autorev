unit ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, ACBrBase;

type
  TBoxECF = class(TForm)
    BtnLeitura: TBitBtn;
    DataSourceECF: TDataSource;
    tblECF: TIBDataSet;
    tblECFID_ECF: TIntegerField;
    tblECFCOMANDO: TIBStringField;
    tblECFRESPOSTA: TIBStringField;
    BtnReducao: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BtnLeituraClick(Sender: TObject);
    procedure tblECFAfterCancel(DataSet: TDataSet);
    procedure tblECFAfterPost(DataSet: TDataSet);
    procedure BtnReducaoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GravaECF;
    Function Converte( cmd : String) : String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxECF: TBoxECF;

implementation

uses Efuncoes, FDB, Biblioteca, EmiteCupomFiscal;

{$R *.dfm}

procedure TBoxECF.BitBtn1Click(Sender: TObject);
begin
  BoxEmiteCupomFiscal.show;
end;

procedure TBoxECF.BtnLeituraClick(Sender: TObject);
begin
//  ACBrECF1.LeituraX ;

  GravaECF;
  Showmessage('Leitura X ok.');
{var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
{   Resposta : String;
begin
 if TestaECF then
  begin
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
//   ReWrite(ArquivoTexto); {Recria o arquivo texto}
{   linha := 'ECF.LeituraX';
   with tblECF do
    begin
      Open;
      Insert;
      FieldByName('Comando').AsString := linha;
    end;
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
{   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
{   AssignFile(ArquivoTexto,'C:\sai.txt');
   linha := '';
   while linha = '' do
    begin
     Reset(ArquivoTexto); {Abre o arquivo texto}
{     ReadLn(ArquivoTexto, Linha);
     CloseFile(ArquivoTexto); {Fecha o arquivo texto}
{    end;
   if Substr(linha,1,3) = 'OK:' then
     begin
       showmessage('Leitura ok.');
       resposta := Substr(linha,7,10)
     end
   else
     Showmessage('Erro de leitura.');
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
 {  With tblECF do
    begin
      FieldByName('Resposta').AsString := Resposta;
      Post;
    end;
  end
 else
  Showmessage('ECF não está ativo.');}
end;

procedure TBoxECF.BtnReducaoClick(Sender: TObject);
Var Resp : TModalResult ;
begin
//  if ACBrECF1.Estado <> estRequerZ then
  begin
     if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                  'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;

     if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;
  end ;

  Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

  if Resp = mrYes then
//     ACBrECF1.ReducaoZ( now )
  else if Resp = mrNo then
//     ACBrECF1.ReducaoZ( )
  else
     exit ;

  GravaECF;
  Showmessage('Redução Z ok.');
{ if not ReducaoZECF then
  Showmessage('Redução Z pendente')
 else
  Showmessage('Reducao Z ok.');}
end;

procedure TBoxECF.GravaECF;
var
  Comando : String;
  Resposta : String;
begin
//  Comando := Converte( ACBrECF1.ComandoEnviado );
//  Resposta := Converte( ACBrECF1.RespostaComando) ;
   with tblECF do
    begin
      Open;
      Insert;
      FieldByName('Comando').AsString := Comando;
      FieldByName('Resposta').AsString := Resposta;
      Post;
    end;
end;

function TBoxECF.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
end;

procedure TBoxECF.tblECFAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxECF.tblECFAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

end.
