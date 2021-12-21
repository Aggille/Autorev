unit EmiteCupomFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, IBCustomDataSet, StdCtrls, Buttons, ExtCtrls, ACBrBase;

type
  TBoxEmiteCupomFiscal = class(TForm)
    tblSada: TIBDataSet;
    tblSadaID_SADA: TIntegerField;
    tblSadaID_NOFISA: TIntegerField;
    tblSadaID_CONCESSIONARIA: TIntegerField;
    tblSadaNF: TIBStringField;
    tblSadaCODIGO: TIBStringField;
    tblSadaDESCRICAO: TIBStringField;
    tblSadaQTDE: TSmallintField;
    tblSadaUNIDADE: TIBStringField;
    tblSadaCST: TIBStringField;
    tblSadaSUBST: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaICMS: TIBBCDField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblSadaPOTENCIA: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaSAIDA: TDateField;
    tblNofisaHORA: TIBStringField;
    tblNofisaIE_SUBS: TIBStringField;
    tblNofisaDESC_PEC: TIBBCDField;
    tblNofisaDESC_OFI: TIBBCDField;
    tblNofisaBASE_ICMS: TIBBCDField;
    tblNofisaVAL_ICMS: TIBBCDField;
    tblNofisaBASE_ICM_S: TIBBCDField;
    tblNofisaVAL_ICMS_S: TIBBCDField;
    tblNofisaVAL_FRETE: TIBBCDField;
    tblNofisaVAL_SEGURO: TIBBCDField;
    tblNofisaVAL_OUTROS: TIBBCDField;
    tblNofisaVAL_IPI: TIBBCDField;
    tblNofisaVAL_SERV: TIBBCDField;
    tblNofisaISSQN: TIBBCDField;
    tblNofisaVAL_ISS: TIBBCDField;
    tblNofisaTOT_PROD: TIBBCDField;
    tblNofisaTOT_NOTA: TIBBCDField;
    tblNofisaPIS: TIBBCDField;
    tblNofisaCOFINS: TIBBCDField;
    tblNofisaCOD_TRANS: TIBStringField;
    tblNofisaFRETE_TIPO: TIBStringField;
    tblNofisaPLACA: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblPessoas: TIBDataSet;
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
    tblSeda: TIBDataSet;
    tblSedaID_SEDA: TIntegerField;
    tblSedaID_CONCESSIONARIA: TIntegerField;
    tblSedaID_NOFI: TIntegerField;
    tblSedaNF: TIBStringField;
    tblSedaID_TMO: TIntegerField;
    tblSedaDESCRICAO_SERVICO: TIBStringField;
    tblSedaTEMPO: TIBBCDField;
    tblSedaPRECO: TIBBCDField;
    tblFormas: TIBDataSet;
    tblFormasID_FORMAS_PAGAMENTO: TIntegerField;
    tblFormasFORMA_PAGAMENTO: TIBStringField;
    tblFormasCOEFICIENTE: TFMTBCDField;
    tblFormasPRAZO: TIBStringField;
    tblFormasVEICULOS: TIBStringField;
    tblFormasPECAS: TIBStringField;
    tblFormasPOSVENDA: TIBStringField;
    tblFormasCRECEBER: TIBStringField;
    tblFormasCPAGAR: TIBStringField;
    DataSourceECF: TDataSource;
    tblECF: TIBDataSet;
    tblECFID_ECF: TIntegerField;
    tblECFCOMANDO: TIBStringField;
    tblECFRESPOSTA: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceNofisaFAturas: TDataSource;
    DataSourceSada: TDataSource;
    DataSourceSeda: TDataSource;
    DataSourcePessoas: TDataSource;
    DataSourceFormas: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    ECF: TEdit;
    BtnOk: TBitBtn;
    procedure tblECFAfterCancel(DataSet: TDataSet);
    procedure tblECFAfterPost(DataSet: TDataSet);
    procedure AbrirDs;
    procedure FecharDs;
    procedure EmiteECF;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function EmitirCupomFiscal(nf: String): Boolean;
    function AbreCupom: Boolean;
    function VendeItem: Boolean;
    function SubtotalizaCupom: Boolean;
    function EfetuaPagamento: Boolean;
    function FechaCupom: Boolean;
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxEmiteCupomFiscal: TBoxEmiteCupomFiscal;

implementation

uses FDB, Empresas, Efuncoes;

{$R *.dfm}

procedure TBoxEmiteCupomFiscal.tblECFAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxEmiteCupomFiscal.tblECFAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

Procedure TBoxEmiteCupomFiscal.FecharDS;
begin
  DataSourceSada.Dataset.Close;
  DataSourceSeda.Dataset.Close;
  DataSourcePessoas.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceECF.Dataset.Close;
  DataSourceFormas.Dataset.Close;
end;

procedure TBoxEmiteCupomFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FecharDs;
  Action :=caFree;
  BoxEmiteCupomFiscal := nil;
end;

function TBoxEmiteCupomFiscal.EmitirCupomFiscal(nf: String): Boolean;
begin
  with tblNofisa do
  begin
    Close;
    ParamByName('idNumero').AsInteger := StrToInt(Nf);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if RecordCount = 0 then
     begin
      showmessage('Cupom fiscal não localizado');
      Result := False;
     end
    else
//     if FieldByName('id_ECF').AsString is null then
      Result := True;
//     else
      begin
        Showmessage('Cupom fiscal já emitido.');
        Result := False;
      end;
  end;
end;

function TBoxEmiteCupomFiscal.AbreCupom : Boolean;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
   Cpf : String;
begin
   Result := True;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   if tblNofisa.FieldByName('id_Clientes').AsInteger = 1 then
     linha := 'ECF.AbreCupom'
   else
    begin
     if tblPessoas.FieldByName('CPF').AsString = 'CPF' then
        Cpf := Substr(tblPessoas.FieldByName('NUM_CPF').AsString,1,3) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,5,3) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,9,3) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,13,2)
     else
        Cpf := Substr(tblPessoas.FieldByName('NUM_CPF').AsString,1,2) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,4,3) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,8,3) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,12,4) +
          Substr(tblPessoas.FieldByName('NUM_CPF').AsString,17,2);
     linha := 'ECF.Abrecupom("' + cpf + '","' +
       tblPessoas.FieldByName('Nome').AsString + '","'+
       tblPessoas.FieldByName('Endereco').AsString + '-' +
       tblPessoas.FieldByName('Cidade').AsString + '")';
    end;
//   ACBrECf1.AbreCupom(cpf,       tblPessoas.FieldByName('Nome').AsString,       tblPessoas.FieldByName('Endereco').AsString + '-' +
  //     tblPessoas.FieldByName('Cidade').AsString + '")';

   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
   showmessage(linha);
//   AssignFile(ArquivoTexto,'C:\Sai.txt');
 { Reset(ArquivoTexto); {Abre o arquivo texto}
{   ReadLn(ArquivoTexto, Linha);
   if Substr(linha,1,3) <> 'OK:' then
     begin
       showmessage('Erro na abertura de cupom.');
       Result := False;
     end;
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
end;

function TBoxEmiteCupomFiscal.VendeItem : Boolean;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   Result := True;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.VendeItem("'+ tblSada.FieldByName('Codigo').AsString + '","' +
    tblSada.FieldByName('Descricao').AsString + '","';
   if tblSada.FieldByName('Subst').AsBoolean then
    linha := linha + 'FF",' //Substituição tributária
   else
    linha := linha + FloatToStr((tblSada.FieldByName('Aliq_ICMS').AsFloat)*100);
   linha := linha + tblSada.FieldByName('Qtde').AsString + ','; //qtde
  //Blinha(  StringReplace( FloatToStrF( (FieldByName('Val_Serv').AsFloat), ffNumber, 16 , 2 ) , ',' , '.' , [rfReplaceAll]),13,1) //VLR_CONT
   linha := linha + Blinha(StringReplace(FloatToStrF((tblSada.FieldByName('Preco').AsFloat),ffNumber,16,2), ',' , '.' , [rfReplaceAll]),13,1);//valor unitario
   linha := linha + ',,"'+ tblSada.FieldByName('Unidade').AsString +'")';
   showmessage(linha);
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
 {  AssignFile(ArquivoTexto,'C:\sai.txt');
   Reset(ArquivoTexto); {Abre o arquivo texto}
//   ReadLn(ArquivoTexto, Linha);
//   if Substr(linha,1,3) <> 'OK:' then
//     begin
//       showmessage('Erro na inclusão de item.');
//       Result := False;
//     end;
//   ReWrite(ArquivoTexto); {Recria o arquivo texto}
end;

function TBoxEmiteCupomFiscal.SubtotalizaCupom: Boolean;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   Result := True;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.SubtotalizaCupom(' +
    FloatToStr((tblNofisa.FieldByName('Desc_Pec').AsFloat*-1)) + ')';
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   showmessage(linha);
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
{   AssignFile(ArquivoTexto,'C:\sai.txt');
   Reset(ArquivoTexto); {Abre o arquivo texto}
//   ReadLn(ArquivoTexto, Linha);
   if Substr(linha,1,3) <> 'OK:' then
     begin
       showmessage('Erro na totalização de cupom.');
       Result := False;
     end;
//   ReWrite(ArquivoTexto); {Recria o arquivo texto}
end;

function TBoxEmiteCupomFiscal.EfetuaPagamento: Boolean;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
begin
   Result := True;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.EfetuaPagamento("01,'+ FloatToStr(tblNofisa.FieldByName('Tot_nota').AsFloat) + ')';
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
{   AssignFile(ArquivoTexto,'C:\sai.txt');
   Reset(ArquivoTexto); {Abre o arquivo texto}
//   ReadLn(ArquivoTexto, Linha);
   if Substr(linha,1,3) <> 'OK:' then
     begin
       showmessage('Erro na totalização de cupom.');
       Result := False;
     end;
//   ReWrite(ArquivoTexto); {Recria o arquivo texto}
end;

function TBoxEmiteCupomFiscal.FechaCupom: Boolean;
var
   Linha: String;
   ArquivoTexto: TextFile; {handle do arquivo texto}
//   NumCupom : String;
begin
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.NumCupom';
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   showmessage(linha);
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
   AssignFile(ArquivoTexto,'C:\sai.txt');
   Reset(ArquivoTexto); {Abre o arquivo texto}
   ReadLn(ArquivoTexto, Linha);
   with tblNofisa do
     begin
       Edit;
       FieldByName('Numero').AsString := Substr(linha,4,6);
       Post;
     end;
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   Result := True;
   AssignFile(ArquivoTexto,'C:\Ent.txt'); {Associa o arquivo a uma variável do tipo textfile}
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
   linha := 'ECF.FechaCupom';
   Writeln(ArquivoTexto, Linha); {Grava a string Texto no arquivo texto}
   CloseFile(ArquivoTexto); {Fecha o arquivo texto}
   AssignFile(ArquivoTexto,'C:\sai.txt');
   Reset(ArquivoTexto); {Abre o arquivo texto}
   ReadLn(ArquivoTexto, Linha);
   if Substr(linha,1,3) <> 'OK:' then
     begin
       showmessage('Erro no fechamento do cupom.');
       Result := False;
     end;
   ReWrite(ArquivoTexto); {Recria o arquivo texto}
end;

procedure TBoxEmiteCupomFiscal.EmiteECF;
begin
  with tblNofisafaturas do
  begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
  end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
  end;
  with tblPessoas do
  begin
    Close;
    ParamByName('idCliente').AsInteger :=
      tblNofisa.FieldByName('id_Clientes').AsInteger;
    Open;
  end;
  with tblSeda do
   begin
    Close;
    ParamByName('idNofisa').AsInteger :=
      tblNofisa.FieldByName('id_Nofisa').AsInteger;
    Open;
   end;
  case MessageDlg('Emitir Cupom fiscal?', mtConfirmation, [mbYes,mbNo], 0) of
     mrYes:
     begin
        AbreCupom;
        with tblSada do
         begin
          First;
          while not eof do
           begin
            VendeItem;
            Next;
           end;
         end;
        SubtotalizaCupom;
        EfetuaPagamento;
        FechaCupom;
     end
  end;
end;

procedure TBoxEmiteCupomFiscal.BtnOkClick(Sender: TObject);
begin
 if EmitirCupomFiscal(ecf.text) then
   EmiteECF
 else
   ECF.SetFocus;
end;

procedure TBoxEmiteCupomFiscal.FormShow(Sender: TObject);
begin
 AbrirDs;
end;

Procedure TBoxEmiteCupomFiscal.AbrirDS;
begin
  DataSourceSada.Dataset.Open;
  DataSourceSeda.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceECF.Dataset.Open;
  DataSourceFormas.Dataset.Open;
end;

end.
