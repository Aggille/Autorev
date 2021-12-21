unit NFeConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, IniFiles, ACBrNFe;//, ACBrNFe;

type
  TBoxNFeConfiguracoes = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    cbDanfe: TComboBox;
    cbFormaEmissao: TComboBox;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ckVisualizar: TCheckBox;
    cbAmbiente: TComboBox;
    cbUF: TComboBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    btnSalvarConfig: TBitBtn;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    edtCaminho: TEdit;
    ACBrNFe1: TACBrNFe;
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnCaminhoCertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxNFeConfiguracoes: TBoxNFeConfiguracoes;

implementation

{$R *.dfm}

procedure TBoxNFeConfiguracoes.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure TBOXNFeConfiguracoes.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
//{$IFNDEF ACBrNFeCAPICOM}
      edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
      edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
//      ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
//      ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
      edtNumSerie.Visible := False;
      Label25.Visible := False;
//{$ELSE}
      edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
//      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
      Label1.Caption := 'Informe o número de série do certificado'#13+
                        'Disponível no Internet Explorer no menu'#13+
                        'Ferramentas - Opções da Internet - Conteúdo '#13+
                        'Certificados - Exibir - Detalhes - Número do certificado'#13+
                        'É necessario retirar os espaços em branco '#13+
                        'e as letras para maiúsculo';
      Label2.Visible := False;
      edtCaminho.Visible := False;
      edtSenha.Visible   := False;
//      sbtnCaminhoCert.Visible := False;
//{$ENDIF}

      cbDanfe.Text        := Ini.ReadString( 'Geral','DANFE'       ,'Retrato') ;
      cbFormaEmissao.Text :=Ini.ReadString( 'Geral','FormaEmissao','Normal on-line') ;
      edtLogoMarca.Text   := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
      ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;
//      ACBrNFe1.Configuracoes.Geral.DANFE        := cbDanfe.Text;
//      ACBrNFe1.Configuracoes.Geral.FormaEmissao := cbFormaEmissao.Text;
//      ACBrNFe1.Configuracoes.Geral.LogoMarca    := edtLogoMarca.Text;
//      ACBrNFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
//      ACBrNFe1.Configuracoes.Geral.PathSalvar   := edtPathLogs.Text;

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      cbAmbiente.Text      := Ini.ReadString( 'WebService','Ambiente'  ,'Teste') ;
      ckVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;
    //  ACBrNFe1.Configuracoes.WebServices.UF         := cbUF.Text;
  //    ACBrNFe1.Configuracoes.WebServices.Ambiente   := cbAmbiente.Text;
//      ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

{$IFNDEF ACBrNFeCAPICOM}
      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;
//      ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
//      ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
//      ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
//      ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;
{$ELSE}
      gbProxy.Visible := False;
{$ENDIF}

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;

  finally
     Ini.Free ;
  end;
end;

procedure TBoxNFeConfiguracoes.sbtnCaminhoCertClick(Sender: TObject);
begin
//  par.configuracoes.certificados.SelecionarCertificado;
//  edtNumSerie.Text := par.Configuracoes.Certificados.NumeroSerie;
end;

procedure TBoxNFeConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxNFeConfiguracoes := nil;
end;

procedure TBoxNFeConfiguracoes.FormShow(Sender: TObject);
begin
  LerConfiguracao;
end;

procedure TBOXNFeConfiguracoes.GravarConfiguracao;
  Var IniFile : String ;
    Ini     : TIniFile ;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteString( 'Geral','DANFE'       ,cbDanfe.Text) ;
      Ini.WriteString( 'Geral','FormaEmissao',cbFormaEmissao.Text) ;
      Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteString( 'WebService','Ambiente'  ,cbAmbiente.Text) ;
      Ini.WriteBool(   'WebService','Visualizar',ckVisualizar.Checked) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ;
  finally
     Ini.Free ;
  end;
end;

end.
