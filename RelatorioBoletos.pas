unit RelatorioBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, ExtCtrls, DB, IBCustomDataSet, DBClient,
  StdCtrls, Buttons, ToolWin, ComCtrls, uFreeBoleto, uFreeBoletoImage, Mask,
  DBCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls;

type
  TBoxRelatorioBoleto = class(TForm)
    Panel1: TPanel;
    frxReport1: TfrxReport;
    tblRelPessoas: TfrxDBDataset;
    tblRelCreceber: TfrxDBDataset;
    dtsPessoas: TDataSource;
    dtsCReceber: TDataSource;
    tblCReceber: TClientDataSet;
    tblPessoas: TClientDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasIDENTIDADE: TIBStringField;
    tblPessoasCPF: TIBStringField;
    tblPessoasNUM_CPF: TIBStringField;
    tblPessoasNASCIMENTO: TDateField;
    tblPessoasPAI: TIBStringField;
    tblPessoasMAE: TIBStringField;
    tblPessoasENDERECO: TIBStringField;
    tblPessoasBAIRRO: TIBStringField;
    tblPessoasCIDADE: TIBStringField;
    tblPessoasESTADO: TIBStringField;
    tblPessoasCEP: TIBStringField;
    tblPessoasCADASTRO: TDateField;
    tblPessoasDESCONTO: TIBBCDField;
    tblPessoasFONE1: TIBStringField;
    tblPessoasFONE2: TIBStringField;
    tblPessoasFONE3: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMPRESA: TIBStringField;
    tblPessoasADMISSAO: TDateField;
    tblPessoasSALARIO: TIBBCDField;
    tblPessoasEMPR_ENDERECO: TIBStringField;
    tblPessoasEMPR_BAIRRO: TIBStringField;
    tblPessoasEMPR_CIDADE: TIBStringField;
    tblPessoasEMPR_ESTADO: TIBStringField;
    tblPessoasEMPR_CEP: TIBStringField;
    tblPessoasEMPR_FONE: TIBStringField;
    tblPessoasREF_NOME1: TIBStringField;
    tblPessoasREF_FONE1: TIBStringField;
    tblPessoasREF_NOME2: TIBStringField;
    tblPessoasREF_FONE2: TIBStringField;
    tblPessoasREF_COML1: TIBStringField;
    tblPessoasREF_COML_FONE1: TIBStringField;
    tblPessoasREF_COML2: TIBStringField;
    tblPessoasREF_COML_FONE2: TIBStringField;
    tblPessoasREF_BANC: TIBStringField;
    tblPessoasREF_AG_BANC: TIBStringField;
    tblPessoasREF_CTA_BANC: TIBStringField;
    tblPessoasFOTO: TIBStringField;
    tblCReceberID_CRECEBER: TIntegerField;
    tblCReceberID_CONCESSIONARIA: TIntegerField;
    tblCReceberID_CLIENTES: TIntegerField;
    tblCReceberID_AVALISTA: TIntegerField;
    tblCReceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCReceberDOCUMENTO: TIBStringField;
    tblCReceberPARCELA: TIBStringField;
    tblCReceberVEZES: TIBStringField;
    tblCReceberORIGEM: TIBStringField;
    tblCReceberCONTA: TIBStringField;
    tblCReceberVENCIMENTO: TDateField;
    tblCReceberVALOR: TIBBCDField;
    tblCReceberEMISSAO: TDateField;
    tblCReceberTOTAL: TIBBCDField;
    tblCReceberPAGAMENTO: TDateField;
    tblCReceberVALOR_PAGO: TIBBCDField;
    tblCReceberBANCO: TIBStringField;
    tblCReceberHISTORICO: TIBStringField;
    tblCReceberSTATUS: TIBStringField;
    ToolBar1: TToolBar;
    BtnPreImpresso: TBitBtn;
    BtnCompleto: TBitBtn;
    tblRelBoleto: TfrxDBDataset;
    tblBoleto: TIBDataSet;
    tblBoletoID_MODELO_BOLETO: TIntegerField;
    tblBoletoVALOR_LAMINA: TIBBCDField;
    tblBoletoTEXTO1: TIBStringField;
    tblBoletoTEXTO2: TIBStringField;
    tblBoletoTEXTO3: TIBStringField;
    tblBoletoCODIGO_BANCO: TIBStringField;
    tblBoletoCONVENIO: TIBStringField;
    tblBoletoAGENCIA: TIBStringField;
    Label1: TLabel;
    Banco: TDBEdit;
    DataSourceBoleto: TDataSource;
    Label2: TLabel;
    Convenio: TDBEdit;
    Label3: TLabel;
    Carteira: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Agencia: TDBEdit;
    Label6: TLabel;
    Conta: TDBEdit;
    StatusBar1: TStatusBar;
    tblBoletoID_CONCESSIONARIA: TIntegerField;
    BtnSalvar: TBitBtn;
    tblBoletoDIGITO_CONTA: TIBStringField;
    tblBoletoULTIMO_BOLETO: TIBStringField;
    tblBoletoCARTEIRA: TIBStringField;
    tblBoletoCONTA: TIBStringField;
    FreeBoleto1: TFreeBoleto;
    FreeBoletoImagem1: TFreeBoletoImagem;
    tblCReceberID_FORMA_PAGAMENTO: TIntegerField;
    tblConcessionaria: TIBDataSet;
    tblConcessionariaID_CONCESSIONARIA: TIntegerField;
    tblConcessionariaEMPRESA: TIBStringField;
    tblConcessionariaENDERECO: TIBStringField;
    tblConcessionariaCIDADE: TIBStringField;
    tblConcessionariaESTADO: TIBStringField;
    tblConcessionariaCNPJ: TIBStringField;
    tblConcessionariaIE: TIBStringField;
    tblConcessionariaCONCESSION: TIBStringField;
    tblConcessionariaTELEFONE: TIBStringField;
    tblConcessionariaCOD_CONCES: TIBStringField;
    tblConcessionariaALIQUOTA_ISS: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS1: TIBBCDField;
    tblConcessionariaALIQUOTA_ICMS2: TIBBCDField;
    tblCReceberBOLETO_EMITIDO: TIBStringField;
    NossoNumero: TEdit;
    DigitoConta: TJvDBMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPreImpressoClick(Sender: TObject);
    procedure BtnCompletoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblBoletoAfterCancel(DataSet: TDataSet);
    procedure tblBoletoAfterPost(DataSet: TDataSet);
    procedure NossoNumeroExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoletoEmitido : Boolean;
  BoxRelatorioBoleto: TBoxRelatorioBoleto;
  Img: TFreeBoletoImagem;
  Resultado : String;
  NomedaConcessionaria : String;
  B: TFreeBoleto;

implementation

uses ClienteDebito, FDB, Empresas, TypInfo;

{$R *.dfm}

procedure TBoxRelatorioBoleto.BtnSalvarClick(Sender: TObject);
begin
  BtnCompleto.Enabled := True;
  BtnPreImpresso.Enabled := True;
  NossoNumero.Enabled := False;
  Resultado := nossonumero.text;//tblBoleto.FieldByName('Ultimo_Boleto').Value;
  BtnPreImpresso.SetFocus;
//  B.LimparTudo;
  with tblBoleto do
  begin
    Post;
    FreeBoleto1.LocalPagamento := 'QUALQUER BANCO ATÉ O VENCIMENTO';
    FreeBoleto1.Cedente.Nome :=  NomedaConcessionaria;
    //BoxEmpresas.ConcessionariaEmUso.Text;
    FreeBoleto1.DataDocumento := tblCreceber.FieldByName('Emissao').AsDateTime;

    FreeBoleto1.Vencimento := tblCreceber.FieldByName('Vencimento').AsDateTime;
    FreeBoleto1.Cedente.CodigoCedente := Conta.Text;
    FreeBoleto1.Valor := tblCreceber.FieldByName('Valor').AsCurrency +
      FieldByName('Valor_Lamina').AsCurrency;
    FreeBoleto1.Documento := NossoNumero.Text;
    if BoletoEmitido then
      FreeBoleto1.NossoNumero := NossoNumero.Text //.FieldByName('Documento').AsString
    else
      FreeBoleto1.NossoNumero := NossoNumero.Text;//FieldByName('Ultimo_Boleto').AsString;
    FreeBoleto1.Cedente.Agencia := Agencia.Text;
    FreeBoleto1.Cedente.ContaCorrente := Conta.Text;
//    FreeBoleto1.Cedente.DigitoContaCorrente :=  DigitoConta.DataField;
//      tblBoleto.FieldByName('Digito_Conta').AsVariant;
    FreeBoleto1.EspecieDoc := 'DM';
//    FreeBoleto1.Cedente.DigitoContaCorrente := '1';
//      FieldByName('Digito_Conta').Text;
    FreeBoleto1.carteira := Carteira.text;
    FreeBoleto1.Cedente.Banco001.Convenio := Convenio.text;
    FreeBoleto1.Instrucoes.Text := (FieldByName('Texto1').AsString) + #13 +
     FieldByName('Texto2').AsString + #13 +
//     'Valor:' + tblCreceber.FieldByName('Valor').AsString + #13 +
     FieldByName('Texto3').AsString;
  with FreeBoleto1.sacado do
  begin
    Nome := tblPessoas.FieldByName('Id_Clientes').AsString +
      ' - ' + tblPessoas.FieldByName('Nome').AsString;
    Endereco := tblPessoas.FieldByName('Endereco').AsString;
    Bairro := tblPessoas.FieldByName('Bairro').AsString;
    Cep := tblPessoas.FieldByName('CEP').AsString;
    Estado := tblPessoas.FieldByName('Estado').AsString;
    Cidade := tblPessoas.FieldByName('Cidade').AsString;
//    CNPJ_CPF := tblPessoas.FieldByName('Num_CPF').AsString;
  end;
  FreeBoleto1.preparar;
  Img.ListaBoletos.Add(FreeBoleto1);
  end;
  if not BoletoEmitido then
   begin
    with tblBoleto do
     begin
      Edit;
      FieldByName('Ultimo_Boleto').AsString := NossoNumero.Text;
      Post;
     end;
    with tblCreceber do
     begin
      Edit;
      FieldByName('Documento').AsString := NossoNumero.Text;
//        tblBoleto.FieldByName('Ultimo_Boleto').AsString;
      FieldByName('Boleto_emitido').AsString := 'T';
      Post;
//      showmessage(fieldByName('boleto_emitido').AsString);
     end;
   end;
end;

procedure TBoxRelatorioBoleto.BtnCompletoClick(Sender: TObject);
begin
//  if StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text) = 1 then
     img.ShowPreview
//  else
 //    showmessage('Não implementado nesta concessionária.');
end;

procedure TBoxRelatorioBoleto.BtnPreImpressoClick(Sender: TObject);
begin
  frxReport1.ShowReport;
  Resultado := nossonumero.Text;//tblBoleto.FieldByName('Ultimo_Boleto').Value;
end;

procedure TBoxRelatorioBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  B.free;
  Img.free;
  Action :=caFree;
  BoxRelatorioBoleto := nil;
end;

procedure TBoxRelatorioBoleto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSourceBoleto.State in [dsEdit, DsInsert] then
  case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxRelatorioBoleto.FormCreate(Sender: TObject);
begin
  B := TFreeBoleto.create(application);
  Img := TFreeBoletoImagem.create(self);
end;

procedure TBoxRelatorioBoleto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
    begin
     Close;
    end;
          {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end;
end;

procedure TBoxRelatorioBoleto.FormShow(Sender: TObject);
begin
  BtnCompleto.Enabled := False;
  BtnPreImpresso.Enabled := False;
  with tblConcessionaria do
  begin
    ParamByName('idConcessionaria').AsInteger :=
      tblCreceber.FieldByName('id_Concessionaria').AsInteger;
    Open;
    NomedaConcessionaria := FieldByName('Empresa').AsString;
    Close;
  end;
  if tblCreceber.FieldByName('Boleto_emitido').AsBoolean then
    BoletoEmitido := True
  else
    BoletoEmitido := False;
  with tblBoleto do
  begin
     Close;
     ParamByName('idConcessionaria').AsInteger :=
       tblCreceber.FieldByName('id_Concessionaria').AsInteger;
       //StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     Edit;
     if not BoletoEmitido then
      begin
//      showmessage('a');
       NossoNumero.Text := IntToStr(FieldByName('Ultimo_Boleto').AsInteger + 1);
       FieldByName('Ultimo_Boleto').AsString := NossoNumero.Text;
//        FieldByName('Ultimo_Boleto').AsInteger + 1;
//       NossoNumero.SetFocus;
        NossoNumero.Enabled := False;
        BtnSalvar.SetFocus;
      end
     else
      begin
       NossoNumero.Text := tblCreceber.FieldByName('Documento').AsString;
       NossoNumero.Enabled := False;
       BtnSalvar.SetFocus;
      end;
  end;
//  NossoNumero.SetFocus;
//  frxReport1.ShowReport;
//  boxRelatorioBoleto.Close;
end;

procedure TBoxRelatorioBoleto.NossoNumeroExit(Sender: TObject);
begin
  BtnSalvar.SetFocus;
end;

procedure TBoxRelatorioBoleto.tblBoletoAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxRelatorioBoleto.tblBoletoAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

end.
