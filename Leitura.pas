unit Leitura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  JvExComCtrls, JvProgressBar, JvDBProgressBar, JvComponentBase;

type
  TBoxLeitura = class(TForm)
    StatusBar: TStatusBar;
    Panel1: TPanel;
    BtnConfirma: TBitBtn;
    tblPecyam: TIBDataSet;
    DataSourcePecyam: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IBQuery2: TIBQuery;
    tblPecyamID_PECYAM: TIntegerField;
    IBQuery1: TIBQuery;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    BtnAtualiza: TBitBtn;
    Reajuste: TEdit;
    DataSourcePecas: TDataSource;
    tblPecas: TIBDataSet;
    tblPecasID_PECAS: TIntegerField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasICMS: TIBBCDField;
    tblPecasPRECO: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasPPS: TIBBCDField;
    tblPecasORIGINAL: TIBStringField;
    tblPecasCST: TIBStringField;
    tblPecyam1: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBStringField7: TIBStringField;
    DataSourcePecyam1: TDataSource;
    DataSourceCidade: TDataSource;
    tblCidade: TIBDataSet;
    tblCidadeID_CODIGO_CIDADE: TIntegerField;
    tblCidadeCODIGO: TIBStringField;
    tblCidadeCIDADE: TIBStringField;
    tblCidadeESTADO: TIBStringField;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    tblPessoas: TIBDataSet;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasNOME: TIBStringField;
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
    tblPessoasCLIENTE: TIBStringField;
    tblPessoasFORNECEDOR: TIBStringField;
    tblPessoasTRANSPORTADORA: TIBStringField;
    tblPessoasMECANICO: TIBStringField;
    tblPessoasVENDEDOR: TIBStringField;
    tblPessoasCONTA: TIBStringField;
    tblPessoasCOMISSAO: TIBBCDField;
    tblPessoasEMAIL: TIBStringField;
    tblPessoasCOENDERECO: TIBStringField;
    tblPessoasCOBAIRRO: TIBStringField;
    tblPessoasCOCIDADE: TIBStringField;
    tblPessoasCOESTADO: TIBStringField;
    tblPessoasCOCEP: TIBStringField;
    tblPessoasSPC: TIBStringField;
    tblPessoasREG_SPC: TIBStringField;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    DataSourcePessoas: TDataSource;
    BtnOrc: TBitBtn;
    Edit2: TEdit;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueCST_MEDIO: TIBBCDField;
    tblPecasEstoqueCST_ATUAL: TIBBCDField;
    tblPecasEstoqueULT_COMPRA: TDateField;
    tblPecasEstoqueULT_VENDA: TDateField;
    tblPecasEstoqueULT_PEDIDO: TDateField;
    tblPecasEstoqueFORNECEDOR: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    DataSourcePecasMovimentacao: TDataSource;
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    tblAtendimentoPecas: TIBDataSet;
    tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField;
    tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoPecasID_ATENDIMENTO: TIntegerField;
    tblAtendimentoPecasID_PECAS: TIntegerField;
    tblAtendimentoPecasQUANTIDADE: TIntegerField;
    tblAtendimentoPecasPRECO: TIBBCDField;
    tblAtendimentoPecasSTATUS: TIBStringField;
    tblAtendimentoPecasPRECO_TABELA: TIBBCDField;
    DataSourceAtendimentoPecas: TDataSource;
    tblPecyam1NCM: TIBStringField;
    BtnICMS: TBitBtn;
    tblPecasCODIGO_SGS: TIntegerField;
    BtnCST: TBitBtn;
    tblPecasCODIGO: TIBStringField;
    tblPecyamCODIGO: TIBStringField;
    tblPecyamDESCRICAO: TIBStringField;
    tblPecyamCODIGO_NOVO: TIBStringField;
    tblPecyamORIGEM: TIBStringField;
    tblPecyamCUSTO: TIBBCDField;
    tblPecyamPESO: TIBStringField;
    tblPecyamQTDE_EMBAL: TIBStringField;
    tblPecyamIPI: TIBBCDField;
    tblPecyamREAJUSTE: TIBBCDField;
    tblPecyamPRECO_GARAN: TIBBCDField;
    tblPecyamPPS: TIBBCDField;
    tblPecyamRESERVADO: TIBStringField;
    tblPecyamNCM: TIBStringField;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure percorreArquivoTexto ( nomeDoArquivo: String );
    procedure tblPecyamAfterCancel(DataSet: TDataSet);
    procedure tblPecyamAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FecharDs;
    procedure AbrirDs;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnAtualizaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure tblPessoasAfterPost(DataSet: TDataSet);
    procedure BtnOrcClick(Sender: TObject);
    procedure BtnICMSClick(Sender: TObject);
    procedure BtnCSTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxLeitura: TBoxLeitura;

implementation

uses FDB, efuncoes, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxLeitura.BtnAtualizaClick(Sender: TObject);
var
i : integer;
begin
//ss
with tblPecas do
begin
  i := 0;
  Open;
  First;
  while not eof do
   begin
    if FieldByName('Original').AsBoolean then
      begin
        tblPecYam1.Close;
        tblPecyam1.ParamByName('idCodigo').AsString :=
          FieldByName('Codigo').AsString;
        tblPecyam1.Open;
        if tblPecyam1.RecordCount <> 0 then
         begin
           Edit;
           FieldByName('PPS').AsFloat:= tblPecyam1.FieldByName('PPS').AsFloat;
           FieldByName('Preco_Gar').AsFloat :=
             tblPecyam1.FieldByName('Preco_Garan').AsFloat;
           FieldByName('Preco').AsFloat := tblPecyam1.FieldByName('PPS').AsFloat *
             StrToFloat(Reajuste.Text);
           FieldByName('NCM').AsString := Copy(tblPecyam1.FieldByName('NCM').AsString,1,4)+'.'+
             Copy(tblPecyam1.FieldByName('NCM').AsString,5,2)+'.'+Copy(tblPecyam1.FieldByName('NCM').AsString,7,2);
//showmessage(fieldByName('ncm').AsString);
           Post;
         end;
      end;
    Next;
   ProgressBar1.Position := I;
   if ProgressBar1.Position = 71254 then
     i := 0;
   inc(i);
   end;
end;
Showmessage('Atualização concluída');
end;

procedure TBoxLeitura.BtnConfirmaClick(Sender: TObject);
begin
  PErcorreArquivoTexto(Edit1.Text);
end;

procedure TBoxLeitura.BtnCSTClick(Sender: TObject);
var
  CodProc : Boolean;
begin
  CodProc := False;
  case MessageDlg('Existem peças de importação direta?', mtConfirmation, [mbYes,mbNo], 0) of
     mrNo :
       begin
          case messagedlg('Todas as peças de importação serão consideradas como de importação indireta.Confirma?', mtConfirmation, [mbYes,mbNo], 0) of
            MrYes:
              begin
                CodProc := True;
              end;
          end;
       end;
  end;
  with tblPecas do
  begin
    Open;
    First;
    while not eof do
     begin
      edit;
      if CodProc then
        if FieldByName('Cod_Proc').AsInteger = 1 then
           FieldByName('Cod_Proc').AsInteger := 2;
      if (FieldByName('Cod_Proc').AsInteger = 0) and (FieldByName('SUBST_TRIB').AsBoolean = False) then
         tblPecas.FieldByName('CST').AsString := '000';
       //Item nacional ICMS subst CST 060
      if (FieldByName('Cod_Proc').AsInteger = 0) and (FieldByName('SUBST_TRIB').AsBoolean = True) then
         tblPecas.FieldByName('CST').AsString := '060';
      //Item importado com ICMS CST 200
      if (FieldByName('Cod_Proc').AsInteger <> 0) and (FieldByName('SUBST_TRIB').AsBoolean = False) then
         tblPecas.FieldByName('CST').AsString := '200';
       //Item importado ICMS subst CST 260
      if (FieldByName('Cod_Proc').AsInteger <> 0) and (FieldByName('SUBST_TRIB').AsBoolean = True) then
         tblPecas.FieldByName('CST').AsString := '260';
      if (FieldByName('Cod_Proc').AsInteger <> 0) and (FieldByName('SUBST_TRIB').AsBoolean = True) then
         tblPecas.FieldByName('CST').AsString := '260';
      Post;
      next;
     end;
   Close;
  end;
  Showmessage('Gravação concluída.');
end;

procedure TBoxLeitura.BtnICMSClick(Sender: TObject);
begin
//zerar itens nova subs mudando bolean para false
with tblpecas do
  begin
    Open;
    First;
    while not eof do
     begin
       Edit;
       FieldByName('NovaSubs').AsString := 'F';
       Post;
       next;
     end;
     Close;
  end;
//ajustar erros de codigo que são subs e não estão marcados como sendo.
with tblpecas do
  begin
    Open;
    First;
    while not eof do
     begin
       Edit;
       FieldByName('NCM').AsString := TiraPontoseBarrasCPF(FieldByName('NCM').AsString);
       FieldByName('NCM').AsString := ColocaPontosNCM(FieldByName('NCM').AsString);
       if (fieldByName('NCM').AsString = '0087.14.19') or
          (fieldByName('NCM').AsString = '2710.19.32') or
          (fieldByName('NCM').AsString = '3405.30.00') or
          (fieldByName('NCM').AsString = '3819.00.00') or
//          (fieldByName('NCM').AsString = '3919.90.00') or
          (fieldByName('NCM').AsString = '3926.20.00') or
          (fieldByName('NCM').AsString = '3926.30.00') or
          (fieldByName('NCM').AsString = '3926.90.90') or
          (fieldByName('NCM').AsString = '4009.11.00') or
          (fieldByName('NCM').AsString = '4009.12.90') or
          (fieldByName('NCM').AsString = '4009.22.90') or
          (fieldByName('NCM').AsString = '4011.40.00') or
          (fieldByName('NCM').AsString = '4012.90.90') or
          (fieldByName('NCM').AsString = '4013.90.00') or
          (fieldByName('NCM').AsString = '4016.10.10') or
          (fieldByName('NCM').AsString = '4016.93.00') or
          (fieldByName('NCM').AsString = '4016.99.90') or
          (fieldByName('NCM').AsString = '4823.90.90') or
          (fieldByName('NCM').AsString = '4823.90.99') or
          (fieldByName('NCM').AsString = '4908.10.00') or
//          (fieldByName('NCM').AsString = '4908.90.00') or
          (fieldByName('NCM').AsString = '4911.10.90') or
          (fieldByName('NCM').AsString = '5604.10.00') or
          (fieldByName('NCM').AsString = '5910.00.00') or
          (fieldByName('NCM').AsString = '6101.30.00') or
          (fieldByName('NCM').AsString = '6109.10.00') or
          (fieldByName('NCM').AsString = '6306.19.90') or
          (fieldByName('NCM').AsString = '6506.10.00') or
          (fieldByName('NCM').AsString = '6813.10.10') or
          (fieldByName('NCM').AsString = '7009.10.00') or
          (fieldByName('NCM').AsString = '7014.00.00') or
          (fieldByName('NCM').AsString = '7311.00.00') or
          (fieldByName('NCM').AsString = '7315.12.10') or
          (fieldByName('NCM').AsString = '7318.15.00') or
          (fieldByName('NCM').AsString = '7318.16.00') or
          (fieldByName('NCM').AsString = '7318.22.00') or
          (fieldByName('NCM').AsString = '7318.29.00') or
          (fieldByName('NCM').AsString = '7320.20.10') or
          (fieldByName('NCM').AsString = '7320.20.90') or
          (fieldByName('NCM').AsString = '7320.90.00') or
          (fieldByName('NCM').AsString = '7326.90.90') or
          (fieldByName('NCM').AsString = '8203.20.90') or
          (fieldByName('NCM').AsString = '8301.40.00') or
          (fieldByName('NCM').AsString = '8301.70.00') or
          (fieldByName('NCM').AsString = '8302.10.00') or
          (fieldByName('NCM').AsString = '8409.91.11') or
          (fieldByName('NCM').AsString = '8409.91.12') or
          (fieldByName('NCM').AsString = '8409.91.13') or
          (fieldByName('NCM').AsString = '8409.91.14') or
          (fieldByName('NCM').AsString = '8409.91.16') or
          (fieldByName('NCM').AsString = '8409.91.17') or
          (fieldByName('NCM').AsString = '8409.91.20') or
          (fieldByName('NCM').AsString = '8409.91.40') or
          (fieldByName('NCM').AsString = '8409.91.90') or
          (fieldByName('NCM').AsString = '8413.30.10') or
          (fieldByName('NCM').AsString = '8413.30.30') or
          (fieldByName('NCM').AsString = '8413.91.90') or
          (fieldByName('NCM').AsString = '8421.23.00') or
          (fieldByName('NCM').AsString = '8421.29.90') or
          (fieldByName('NCM').AsString = '8421.31.00') or
          (fieldByName('NCM').AsString = '8421.99.99') or
          (fieldByName('NCM').AsString = '8481.30.00') or
          (fieldByName('NCM').AsString = '8481.80.92') or
          (fieldByName('NCM').AsString = '8481.90.90') or
          (fieldByName('NCM').AsString = '8482.10.10') or
          (fieldByName('NCM').AsString = '8482.10.90') or
          (fieldByName('NCM').AsString = '8482.40.00') or
          (fieldByName('NCM').AsString = '8482.50.10') or
          (fieldByName('NCM').AsString = '8482.80.00') or
          (fieldByName('NCM').AsString = '8482.91.19') or
          (fieldByName('NCM').AsString = '8483.10.10') or
          (fieldByName('NCM').AsString = '8483.10.19') or
          (fieldByName('NCM').AsString = '8483.10.20') or
          (fieldByName('NCM').AsString = '8483.10.30') or
          (fieldByName('NCM').AsString = '8483.30.29') or
          (fieldByName('NCM').AsString = '8483.40.90') or
          (fieldByName('NCM').AsString = '8483.50.10') or
          (fieldByName('NCM').AsString = '8483.60.11') or
          (fieldByName('NCM').AsString = '8483.60.19') or
          (fieldByName('NCM').AsString = '8483.60.90') or
          (fieldByName('NCM').AsString = '8483.90.00') or
          (fieldByName('NCM').AsString = '8484.10.00') or
          (fieldByName('NCM').AsString = '8484.90.00') or
          (fieldByName('NCM').AsString = '8507.10.00') or
          (fieldByName('NCM').AsString = '8507.10.10') or
          (fieldByName('NCM').AsString = '8511.10.00') or
          (fieldByName('NCM').AsString = '8511.20.10') or
          (fieldByName('NCM').AsString = '8511.20.90') or
          (fieldByName('NCM').AsString = '8511.30.20') or
          (fieldByName('NCM').AsString = '8511.40.00') or
          (fieldByName('NCM').AsString = '8511.80.20') or
          (fieldByName('NCM').AsString = '8511.80.90') or
          (fieldByName('NCM').AsString = '8511.90.00') or
          (fieldByName('NCM').AsString = '8512.20.11') or
          (fieldByName('NCM').AsString = '8512.20.22') or
          (fieldByName('NCM').AsString = '8512.20.29') or
          (fieldByName('NCM').AsString = '8512.30.00') or
          (fieldByName('NCM').AsString = '8512.90.00') or
          (fieldByName('NCM').AsString = '8527.21.90') or
          (fieldByName('NCM').AsString = '8531.10.90') or
          (fieldByName('NCM').AsString = '8536.10.00') or
          (fieldByName('NCM').AsString = '8536.49.00') or
          (fieldByName('NCM').AsString = '8536.50.90') or
          (fieldByName('NCM').AsString = '8539.10.10') or
          (fieldByName('NCM').AsString = '8544.30.00') or
          (fieldByName('NCM').AsString = '8714.11.00') or
          (fieldByName('NCM').AsString = '8714.19.00') or
          (fieldByName('NCM').AsString = '8714.19.99') or
          (fieldByName('NCM').AsString = '8801.00.00') or
          (fieldByName('NCM').AsString = '9026.10.19') or
          (fieldByName('NCM').AsString = '9029.20.10') or
          (fieldByName('NCM').AsString = '9029.90.10')

       then
         begin
          FieldByName('SUBST_TRIB').AsString := 'T';
          FieldByName('CFOP1').AsString := '5405';
          FieldByName('CFOP2').AsString := '6404';

         end;
       Post;
       next;
     end;
     Close;
  end;
//criar tabela com codigos ncm que passaram a ser subst.
//passar esses codigos para subst. e marcar como novasubs
with tblpecas do
  begin
    Open;
    First;
    while not eof do
     begin
       Edit;
       if(fieldByName('SUBST_trib').AsString = 'F') then

       if (fieldByName('NCM').AsString = '3403.99.00') or//codigos NCM que passam a ter substituição
          (fieldByName('NCM').AsString = '3919.90.00') or
          (fieldByName('NCM').AsString = '3923.10.90') or
          (fieldByName('NCM').AsString = '4010.19.90') or
//          (fieldByName('NCM').AsString = '4202.22.10') or pastas
  //        (fieldByName('NCM').AsString = '4202.22.20') or
//          (fieldByName('NCM').AsString = '4202.31.00') or
  //        (fieldByName('NCM').AsString = '4203.29.00') or
//          (fieldByName('NCM').AsString = '4203.30.00') or
          (fieldByName('NCM').AsString = '4823.90.99') or
          (fieldByName('NCM').AsString = '4908.90.00') or
          (fieldByName('NCM').AsString = '5604.90.90') or
//          (fieldByName('NCM').AsString = '5804.42.90') or cracha
//          (fieldByName('NCM').AsString = '6101.13.00') or       roupa
//          (fieldByName('NCM').AsString = '6103.34.00') or            roupa
//          (fieldByName('NCM').AsString = '6104.46.00') or                 roupa
//          (fieldByName('NCM').AsString = '6105.52.00') or                      roupa
//          (fieldByName('NCM').AsString = '6109.91.00') or  camisetas
//          (fieldByName('NCM').AsString = '6114.42.00') or agasalhos
          (fieldByName('NCM').AsString = '7317.00.90') or
          (fieldByName('NCM').AsString = '7318.21.00') or
          (fieldByName('NCM').AsString = '7318.23.00') or
          (fieldByName('NCM').AsString = '7318.24.00') or
          (fieldByName('NCM').AsString = '7415.21.00') or
          (fieldByName('NCM').AsString = '7415.29.00') or
          (fieldByName('NCM').AsString = '8206.00.00') or
          (fieldByName('NCM').AsString = '8301.10.00') or
          (fieldByName('NCM').AsString = '8414.59.90') or
          (fieldByName('NCM').AsString = '8425.39.10') or//capa de moto
          (fieldByName('NCM').AsString = '8471.70.29') or
          (fieldByName('NCM').AsString = '8481.80.99') or
          (fieldByName('NCM').AsString = '8481.80.29') or
          (fieldByName('NCM').AsString = '8504.40.29') or
          (fieldByName('NCM').AsString = '8506.10.30') or
          (fieldByName('NCM').AsString = '8532.23.90') or
          (fieldByName('NCM').AsString = '8536.61.00') or
          (fieldByName('NCM').AsString = '8543.20.00') or
          (fieldByName('NCM').AsString = '8544.42.00') or
          (fieldByName('NCM').AsString = '8545.20.00') or
          (fieldByName('NCM').AsString = '9026.10.29') or
          (fieldByName('NCM').AsString = '9032.10.10')

       then
         begin
          FieldByName('SUBST_TRIB').AsString := 'T';
          FieldByName('NOVASUBS').AsString := 'T';
          FieldByName('CFOP1').AsString := '5405';
          FieldByName('CFOP2').AsString := '6404';

         end;
       Post;
       next;
     end;
     Close;
  end;     
//emitir relatorio do estoque com nova subst


//emitir relatorio das peças que não são subst.--não precisa
//emitir relatorio de pecas sem NCM que tem em estoque--> ajustar
Showmessage('Dados gravados.');
end;

procedure TBoxLeitura.BtnOrcClick(Sender: TObject);
var
i : Integer;
idPeca: Integer;
begin
     {Diminuir pecas ao estoque}
  with tblAtendimentoPecas do
    begin
      Close;
      ParamByName('idAtendimento').AsInteger := StrToInt(Edit2.Text);
       Open;
       Last;
       First;
       for i := 0 to tblAtendimentoPecas.RecordCount - 1 do
        begin
         idPeca := FieldByName('id_pecas').AsInteger;
         with tblPecasEstoque do
          begin
           Close;
           ParamByName('IdPecas').AsInteger := IdPeca;
           ParamByName('IdConcessionaria').AsInteger :=
            StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           Open;
           Edit;
           FieldByName('Estoque').AsInteger := FieldByName('Estoque').AsInteger +
            tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
           FieldByName('EstoqOs').AsInteger := FieldByName('EstoqOs').AsInteger -
            tblAtendimentoPecas.FieldByName('Quantidade').AsInteger;
           Post;
          end;
         with tblPecasMovimentacao do
          begin
           Close;
           Open;
           Insert;
           FieldByName('Id_concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
           FieldByName('Id_Pecas').AsInteger :=  idPeca;
           FieldByName('Movimento').AsString := 'E';
           FieldByName('Quantidade_Movimentada').AsString :=
             tblAtendimentoPecas.FieldByName('Quantidade').AsString;
           FieldByName('Quantidade_Atual').AsInteger := tblPecasEstoque.FieldByName('Estoque').AsInteger;
           FieldByName('Custo_Medio').AsCurrency :=
            tblPecasEstoque.FieldByName('CST_Medio').AsCurrency;
           FieldByName('Data').AsDateTime := DataAtual;
           Post;
           Close;
          end;
         tblAtendimentoPecas.Next;
        end;

   end;
 sHOWMESSAGE('Gravado');


end;

procedure TBoxLeitura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxLeitura.FormShow(Sender: TObject);
begin
 if (FDB1.IBDataSetLoginADM.AsString = 'T') then
  begin
   BitBtn2.Enabled := true;
   btnOrc.enabled := true;
   BtnICms.enabled := True;
   BtnCST.enabled := true;
  end;
  AbrirDs;
  Reajuste.Text := FloatToStr(((StrToFloat(SobrePreco)/100)+1));
end;

procedure TBoxLeitura.BitBtn1Click(Sender: TObject);
//var arq: TextFile;
//    linha: String;
//    matriz: array[1..27] of String;
//    e : Integer;
begin
 with tblPecas DO
  begin
   Open;
   First;
   while not eof do
    begin
     if (alltrim(fieldByName('Unidade').AsString) = '') or
        (alltrim(fieldByName('Unidade').AsString) = 'P€') then
       begin
        Edit;
        FieldByName('Unidade').AsString := 'PC';
        Post;
       end;
     Next;
    end;
  END;               
 // showmessage('Fim');
{  with tblCidade do
  begin
    First;
    while not eof do
     begin
       Edit;
       FieldByName('Cidade').AsString :=
         tiraAcento(FieldByName('Cidade').AsString);
       Post;
       Next;
     end;
  end;}
{matriz[1] := 'MunIBGE-UF11.txt';
matriz[2] := 'MunIBGE-UF12.txt';
matriz[3] := 'MunIBGE-UF13.txt';
matriz[4] := 'MunIBGE-UF14.txt';
matriz[5] := 'MunIBGE-UF15.txt';
matriz[6] := 'MunIBGE-UF16.txt';
matriz[7] := 'MunIBGE-UF17.txt';
matriz[8] := 'MunIBGE-UF21.txt';
matriz[9] := 'MunIBGE-UF22.txt';
matriz[10] := 'MunIBGE-UF23.txt';
matriz[11] := 'MunIBGE-UF24.txt';
matriz[12] := 'MunIBGE-UF25.txt';
matriz[13] := 'MunIBGE-UF26.txt';
matriz[14] := 'MunIBGE-UF27.txt';
matriz[15] := 'MunIBGE-UF28.txt';
matriz[16] := 'MunIBGE-UF29.txt';
matriz[17] := 'MunIBGE-UF31.txt';
matriz[18] := 'MunIBGE-UF32.txt';
matriz[19] := 'MunIBGE-UF33.txt';
matriz[20] := 'MunIBGE-UF35.txt';
matriz[21] := 'MunIBGE-UF41.txt';
matriz[22] := 'MunIBGE-UF42.txt';
matriz[23] := 'MunIBGE-UF43.txt';
matriz[24] := 'MunIBGE-UF50.txt';
matriz[25] := 'MunIBGE-UF51.txt';
matriz[26] := 'MunIBGE-UF52.txt';
matriz[27] := 'MunIBGE-UF53.txt';

//e := 0;
//for e := 1 to 27 do
begin
AssignFile ( arq, 'MunIBGE-UF53.txt' );
Reset ( arq );
ReadLn ( arq, linha );
while not Eof ( arq ) do
 begin
   with tblCidade do
    begin
      Insert;
      FieldByName('Codigo').AsString := copy(linha,1,7);
      FieldByName('Cidade').AsString := copy(linha,9,50);
      if copy(linha,1,2) = '11' then
        fieldByName('Estado').AsString := 'RO';
      if copy(linha,1,2) = '12' then
        fieldByName('Estado').AsString := 'AC';
      if copy(linha,1,2) = '13' then
        fieldByName('Estado').AsString := 'AM';
      if copy(linha,1,2) = '14' then
        fieldByName('Estado').AsString := 'RR';
      if copy(linha,1,2) = '15' then       //PARA
        fieldByName('Estado').AsString := 'PA';
      if copy(linha,1,2) = '16' then
        fieldByName('Estado').AsString := 'AP';  //AMAPA
      if copy(linha,1,2) = '17' then
        fieldByName('Estado').AsString := 'TO';
      if copy(linha,1,2) = '21' then
        fieldByName('Estado').AsString := 'MA';
      if copy(linha,1,2) = '22' then
        fieldByName('Estado').AsString := 'PI';
      if copy(linha,1,2) = '23' then
        fieldByName('Estado').AsString := 'CE';
      if copy(linha,1,2) = '24' then
        fieldByName('Estado').AsString := 'RN';
      if copy(linha,1,2) = '25' then
        fieldByName('Estado').AsString := 'PB';
      if copy(linha,1,2) = '26' then
        fieldByName('Estado').AsString := 'PE';
      if copy(linha,1,2) = '27' then
        fieldByName('Estado').AsString := 'AL';
      if copy(linha,1,2) = '28' then
        fieldByName('Estado').AsString := 'SE';
      if copy(linha,1,2) = '29' then
        fieldByName('Estado').AsString := 'BA';
      if copy(linha,1,2) = '31' then
        fieldByName('Estado').AsString := 'MG';
      if copy(linha,1,2) = '32' then
        fieldByName('Estado').AsString := 'ES';
      if copy(linha,1,2) = '33' then
        fieldByName('Estado').AsString := 'RJ';
      if copy(linha,1,2) = '35' then
        fieldByName('Estado').AsString := 'SP';
      if copy(linha,1,2) = '41' then
        fieldByName('Estado').AsString := 'PR';
      if copy(linha,1,2) = '42' then
        fieldByName('Estado').AsString := 'SC';
      if copy(linha,1,2) = '43' then
        fieldByName('Estado').AsString := 'RS';
      if copy(linha,1,2) = '50' then
        fieldByName('Estado').AsString := 'MS';
      if copy(linha,1,2) = '51' then
        fieldByName('Estado').AsString := 'MT';
      if copy(linha,1,2) = '52' then
        fieldByName('Estado').AsString := 'GO';
      if copy(linha,1,2) = '53' then
        fieldByName('Estado').AsString := 'DF';
      Post;
    end;
  ReadLn ( arq, linha );
end;
CloseFile ( arq );
end;}
end;


procedure TBoxLeitura.BitBtn2Click(Sender: TObject);
begin
  with tblPessoas do
  begin
    Open;
    First;
    while not tblPessoas.eof do
     begin
       tblCidade.Close;
       tblCidade.ParamByName('Estado').AsString := tblPessoas.FieldByName('Estado').AsString;
       tblCidade.ParamByName('Cidade').AsString := tblPessoas.FieldByName('Cidade').AsString;
       tblCidade.Open;
       if tblCidade.RecordCount <> 0 then
        begin
          tblPessoas.Edit;
          tblPessoas.FieldByName('Codigo_Municipio').AsString :=
             tblCidade.FieldByName('Codigo').AsString;
          tblPessoas.Post;
        end;
       tblPessoas.Next;
       label3.Caption := IntToStr(recno);
       label2.Caption := tblPessoas.FieldByName('Cidade').AsString;
     end;
     Close;
  end;
  showmessage('fim');
end;

procedure TBoxLeitura.percorreArquivoTexto ( nomeDoArquivo: String );
var arq: TextFile;
    linha: String;
    I: integer;
begin
Label2.Caption := 'Apagando registros anteriores.Aguarde...';
IBQuery1.Open;
IBQuery1.Close;
IBQuery2.Open;
IBQuery2.Close;
AssignFile ( arq, nomedoArquivo );
Reset ( arq );
ReadLn ( arq, linha );
Label2.Caption := 'Gravando Registros. Aguarde...';
I:=0;
while not Eof ( arq ) do
 begin
 inc(i);
// for I := ProgressBar1.Min to ProgressBar1.Max do
//  begin
   ProgressBar1.Position := I;
   if ProgressBar1.Position = 10000 then
     i := 0;
//   Sleep(30);
//  end;
{ Processe a linha lida aqui. }
  Label3.Caption := Copy(linha,1,12);
  Label4.Caption := IntToStr(tblPecyam.Recno);
  with tblPecYam do
    begin
      Insert;
      FieldByName('Codigo').AsString := Copy(Linha,1,12);
      if LEN(RTrim(FieldByName('Codigo').AsString))<12 then
        FieldByName('Codigo').AsString :=
         Substr(RTrim(FieldByName('Codigo').AsString)+ '000000000000',1,12);
      FieldByName('Descricao').AsString := Copy(Linha,13,30);
      FieldByName('Codigo_Novo').AsString := Copy(Linha,43,12);
      if LEN(RTrim(FieldByName('Codigo_Novo').AsString))<12 then
        FieldByName('Codigo_Novo').AsString :=
         Substr(RTrim(FieldByName('Codigo_Novo').AsString)+ '000000000000',1,12);
      FieldByName('Origem').AsString := Copy(Linha,55,1);
      FieldByName('Custo').AsString := Copy(Linha,56,11);
      FieldByName('Custo').AsVariant := FieldByName('Custo').AsVariant/100;
      FieldByName('Peso').AsString :=Copy(Linha,67,7);
      FieldByName('Qtde_Embal').AsString := Copy(Linha,74,5);
      FieldByName('IPI').AsString := Copy(Linha,79,4);   // acrescer uma posicao ao ipi e todos
      FieldByName('Reajuste').AsString := Copy(Linha,83,5);      //os campos seguintes
      FieldByName('Preco_Garan').AsString := Copy(Linha,88,12);      //até o final
      FieldByName('Preco_Garan').AsVariant := FieldByName('Preco_Garan').AsVariant/100;
      FieldByName('PPS').AsString := Copy(Linha,100,12);
      FieldByName('PPS').AsVariant := FieldByName('PPS').AsVariant/100;
      FieldByName('Reservado').AsString := Copy(Linha,112,1);
      FieldByName('NCM').AsString := Copy(linha,113,8);
      Post;
    end;
 { Para particionar a linha lida em pedaços, use a função Copy. }
  ReadLn ( arq, linha );
 end;
 {acrescido em 13/11/2020
  with tblPecYam do
    begin
      Insert;
      FieldByName('Codigo').AsString := '304-000304';//Copy(Linha,1,12);
      FieldByName('Descricao').AsString := 'FLUIDO DE FREIO DOT4';//Copy(Linha,13,30);
      FieldByName('Custo').AsString := Copy(Linha,56,11);
      FieldByName('Custo').AsVariant := FieldByName('Custo').AsVariant/100;
      FieldByName('Preco_Garan').AsString := Copy(Linha,87,12);
      FieldByName('Preco_Garan').AsVariant := FieldByName('Preco_Garan').AsVariant/100;
      FieldByName('PPS').AsString := Copy(Linha,99,12);
      FieldByName('PPS').AsVariant := FieldByName('PPS').AsVariant/100;
      Post;
    end;
 {fim do acrescimo de 13/11/2020}
 CloseFile ( arq );
Showmessage('Dados gravados.');
end;

procedure TBoxLeitura.tblPecyamAfterCancel(DataSet: TDataSet);
begin
  FDb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxLeitura.tblPecyamAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxLeitura.tblPessoasAfterPost(DataSet: TDataSet);
begin
  FdB1.IBTransaction.CommitRetaining;
end;

procedure TBoxLeitura.Timer1Timer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Label4.Caption;
end;

{
E também uma rotina quase completa para gravação de um arquivo texto. Esta
rotina recebe como parâmetro o nome do arquivo que será gravado e uma tabela
(TTable) de onde os dados serão lidos:
    {
procedure gravaArquivoTexto ( nomeDoArquivo: String; tabela: TTable );
var arq: TextFile;
linha: String;
begin
AssignFile ( arq, nomeDoArquivo );
Rewrite ( arq );
tabela.First;
while not tabela.Eof do
begin
Write ( arq, AjustaStr ( tabela.FieldByName ( 'Nome' ).AsString, 30 ) );
Write ( arq, FormatFloat ( '00000000.00', tabela.FieldByName ( 'Salario'
).AsFloat ) );
WriteLn ( arq );
tabela.Next;
end;
CloseFile ( arq );
end;
end;
     }
procedure TBoxLeitura.AbrirDs;
begin
  DataSourcePecyam.Dataset.Open;
  DataSourceCidade.Dataset.Open;
  DataSourcePessoas.Dataset.Open;
end;

procedure TBoxLeitura.FecharDs;
begin
  DataSourcePecyam.Dataset.Close;
  DataSourceCidade.Dataset.Close;
  DataSourcePessoas.Dataset.Close;  
end;

end.
