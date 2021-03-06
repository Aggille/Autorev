unit CEPTeste1 ;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, ExtCtrls, ACBrCEP, ACBrSocket, ACBrIBGE, ACBrBase ;

type

  { TForm1 }

  TBoxCEP = class(TForm)
    ACBrCEP1 : TACBrCEP ;
    ACBrIBGE1 : TACBrIBGE ;
    bBuscarCEP : TButton ;
    bBuscarCEP1 : TButton ;
    bBuscarLogradouro : TButton ;
    bBuscarLogradouro1 : TButton ;
    cbxWS : TComboBox ;
    edCEP : TEdit ;
    edIBGECod : TEdit ;
    edIBGENome : TEdit ;
    edLogradouro : TEdit ;
    edCidade : TEdit ;
    edTipo_Logradouro : TEdit ;
    edUF : TEdit ;
    edBairro : TEdit ;
    edChaveBuscarCEP : TEdit ;
    edProxyHost : TEdit ;
    edProxyPass : TEdit ;
    edProxyPort : TEdit ;
    edProxyUser : TEdit ;
    GroupBox1 : TGroupBox ;
    GroupBox2 : TGroupBox ;
    GroupBox3 : TGroupBox ;
    GroupBox4 : TGroupBox ;
    GroupBox5 : TGroupBox ;
    GroupBox6 : TGroupBox ;
    Label1 : TLabel ;
    Label10 : TLabel ;
    Label2 : TLabel ;
    Label3 : TLabel ;
    Label4 : TLabel ;
    Label5 : TLabel ;
    Label6 : TLabel ;
    Label7 : TLabel ;
    Label8 : TLabel ;
    Label9 : TLabel ;
    Memo1 : TMemo ;
    PageControl1 : TPageControl ;
    TabSheet1 : TTabSheet ;
    TabSheet2 : TTabSheet ;
    tsIBGE : TTabSheet ;
    procedure ACBrCEP1AntesAbrirHTTP(var AURL : String) ;
    procedure ACBrCEP1BuscaEfetuada(Sender : TObject) ;
    procedure ACBrIBGE1AntesAbrirHTTP(var AURL : String) ;
    procedure ACBrIBGE1BuscaEfetuada(Sender : TObject) ;
    procedure bBuscarCEP1Click(Sender : TObject) ;
    procedure bBuscarCEPClick(Sender : TObject) ;
    procedure bBuscarLogradouro1Click(Sender : TObject) ;
    procedure bBuscarLogradouroClick(Sender : TObject) ;
    procedure cbxWSChange(Sender : TObject) ;
  private
    procedure AjustaProxy ;
    { private declarations }
  public
    { public declarations }
  end ; 

var
  BoxCEP : TBoxCEP ;

implementation

{$R *.dfm}

{ TForm1 }

procedure TBoxCEP.cbxWSChange(Sender : TObject) ;
begin
  ACBrCEP1.WebService := TACBrCEPWebService( cbxWS.ItemIndex ) ;
  edChaveBuscarCEP.Enabled := (ACBrCEP1.WebService = wsBuscarCep) ;
end;

procedure TBoxCEP.AjustaProxy ;
begin
  ACBrCEP1.ProxyHost := edProxyHost.Text ;
  ACBrCEP1.ProxyPort := edProxyPort.Text ;
  ACBrCEP1.ProxyUser := edProxyUser.Text ;
  ACBrCEP1.ProxyPass := edProxyPass.Text ;

  ACBrIBGE1.ProxyHost := edProxyHost.Text ;
  ACBrIBGE1.ProxyPort := edProxyPort.Text ;
  ACBrIBGE1.ProxyUser := edProxyUser.Text ;
  ACBrIBGE1.ProxyPass := edProxyPass.Text ;
end ;

procedure TBoxCEP.ACBrCEP1BuscaEfetuada(Sender : TObject) ;
var
  I : Integer ;
begin
  if ACBrCEP1.Enderecos.Count < 1 then
     Memo1.Lines.Add( 'Nenhum Endere?o encontrado' )
  else
   begin
     Memo1.Lines.Add( IntToStr(ACBrCEP1.Enderecos.Count) + ' Endere?o(s) encontrado(s)');
     Memo1.Lines.Add('');

     For I := 0 to ACBrCEP1.Enderecos.Count-1 do
     begin
       with ACBrCEP1.Enderecos[I] do
       begin
          Memo1.Lines.Add('CEP: '+CEP );
          Memo1.Lines.Add('Logradouro: '+Tipo_Logradouro+ ' ' +Logradouro );
          Memo1.Lines.Add('Complemento: '+Complemento );
          Memo1.Lines.Add('Bairro: '+Bairro );
          Memo1.Lines.Add('Municipio: '+Municipio + ' - IBGE: '+IBGE_Municipio);
          Memo1.Lines.Add('UF: '+UF + ' - IBGE: '+IBGE_UF);
          Memo1.Lines.Add( StringOfChar('-',20) );
       end ;
     end ;
   end ;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Resposta HTTP:');
  Memo1.Lines.AddStrings( ACBrCEP1.RespHTTP );
end;

procedure TBoxCEP.ACBrIBGE1AntesAbrirHTTP(var AURL : String) ;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Efetuando consulta HTTP em:' ) ;
  Memo1.Lines.Add( AURL );
  Memo1.Lines.Add( '' );
end;

procedure TBoxCEP.ACBrIBGE1BuscaEfetuada(Sender : TObject) ;
var
  I : Integer ;
begin
  if ACBrIBGE1.Cidades.Count < 1 then
     Memo1.Lines.Add( 'Nenhuma Cidade encontrada' )
  else
   begin
     Memo1.Lines.Add( IntToStr(ACBrIBGE1.Cidades.Count) + ' Cidade(s) encontrada(s)');
     Memo1.Lines.Add('');

     For I := 0 to ACBrIBGE1.Cidades.Count-1 do
     begin
       with ACBrIBGE1.Cidades[I] do
       begin
          Memo1.Lines.Add('Cod UF: '+IntToStr(CodUF) );
          Memo1.Lines.Add('UF: '+UF);
          Memo1.Lines.Add('Cod.Munic?pio: '+IntToStr(CodMunicipio) );
          Memo1.Lines.Add('Munic?pio: '+Municipio );
          Memo1.Lines.Add('?rea: '+FormatFloat('0.00', Area) );
          Memo1.Lines.Add( StringOfChar('-',20) );
       end ;
     end ;
   end ;

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Resposta HTTP:');
  Memo1.Lines.AddStrings( ACBrIBGE1.RespHTTP );
end;

procedure TBoxCEP.bBuscarCEP1Click(Sender : TObject) ;
begin
  AjustaProxy ;

  try
     ACBrIBGE1.BuscarPorCodigo( StrToIntDef(edIBGECod.Text,0) );
  except
     On E : Exception do
     begin
        Memo1.Lines.Add(E.Message);
     end ;
  end ;
end;

procedure TBoxCEP.ACBrCEP1AntesAbrirHTTP(var AURL : String) ;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Efetuando consulta HTTP em:' ) ;

  if (ACBrCEP1.WebService = wsBuscarCep) and (edChaveBuscarCEP.Text <> '') then
  begin
    AURL := AURL + '&chave='+edChaveBuscarCEP.Text;
  end ;

  Memo1.Lines.Add( AURL );
  Memo1.Lines.Add( '' );
end;

procedure TBoxCEP.bBuscarCEPClick(Sender : TObject) ;
begin
  AjustaProxy ;

  try
     ACBrCEP1.BuscarPorCEP(edCEP.Text);
  except
     On E : Exception do
     begin
        Memo1.Lines.Add(E.Message);
     end ;
  end ;
end;

procedure TBoxCEP.bBuscarLogradouro1Click(Sender : TObject) ;
begin
  AjustaProxy ;

  try
     ACBrIBGE1.BuscarPorNome( edIBGENome.Text );
  except
     On E : Exception do
     begin
        Memo1.Lines.Add(E.Message);
     end ;
  end ;
end;

procedure TBoxCEP.bBuscarLogradouroClick(Sender : TObject) ;
begin
  AjustaProxy ;

  try
     ACBrCEP1.BuscarPorLogradouro( edCidade.Text, edTipo_Logradouro.Text,
                                   edLogradouro.Text, edUF.Text, edBairro.Text);
  except
     On E : Exception do
     begin
        Memo1.Lines.Add(E.Message);
     end ;
  end ;
end;

end.

