unit NFeEmissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, OleCtrls, SHDocVw, ACBrNFe,
  ACBrBase, ACBrDFe;

type
  TBoxNFeEmissao = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    btnCriarEnviar: TButton;
    btnInutilizar: TButton;
    btnGerarXMLNFe: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancNFClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxNFeEmissao: TBoxNFeEmissao;

implementation

{$R *.dfm}

uses pcnNFe, ufrmStatus, ACBrNFeNotasFiscais, DateUtils;

procedure TBoxNFeEmissao.btnCancNFClick(Sender: TObject);
var
  vAux : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
       exit;
     ACBrNFe1.Cancelamento(vAux);
 //    MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS);
//     LoadXML(MemoResp, WBResposta);
 //    ShowMessage(IntToStr(ACBrNFe1.WebServices.Cancelamento.cStat));
  //   ShowMessage(ACBrNFe1.WebServices.Cancelamento.xMotivo);
  end;
end;

procedure TBoxNFeEmissao.btnImprimirClick(Sender: TObject);
begin
  ACBrNFe1.ssl.SelecionarCertificado;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
//  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
//    ACBrNFe1.NotasFiscais.Clear;
///    ACBrNFe1.NotasFiscais.Add.XML.LoadFromFile(OpenDialog1.FileName);
//    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TBoxNFeEmissao.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
//  ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
//  LoadXML(MemoResp, WBResposta);
end;

procedure TBoxNFeEmissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  BoxNFeEmissao := nil;
end;

end.
