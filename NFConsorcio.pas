unit NFConsorcio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBCustomDataSet, StdCtrls, Buttons, Mask,
  rxToolEdit, rxCurrEdit, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls,
  IBQuery, Vcl.CheckLst;

type
  TBoxNFConsorcio = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblNofisa: TIBDataSet;
    tblNofisaID_NOFISA: TIntegerField;
    tblNofisaID_CONCESSIONARIA: TIntegerField;
    tblNofisaID_CLIENTES: TIntegerField;
    tblNofisaEMISSAO: TDateField;
    tblNofisaORIGEM: TIBStringField;
    tblNofisaENT_SAI: TIBStringField;
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
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField;
    tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField;
    tblNofisaID_MECANICO: TIntegerField;
    tblNofisaID_ATENDENTE: TIntegerField;
    tblNofisaQUANTIDADE_VOLUMES: TIntegerField;
    DataSourceNofisa: TDataSource;
    DataSourceSada: TDataSource;
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
    tblSadaICMS: TIBBCDField;
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
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
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    DataSourceNofisaFaturas: TDataSource;
    Label13: TLabel;
    SerieNF: TComboBox;
    tblCreceber: TIBDataSet;
    tblCreceberID_CRECEBER: TIntegerField;
    tblCreceberID_CONCESSIONARIA: TIntegerField;
    tblCreceberID_CLIENTES: TIntegerField;
    tblCreceberDOCUMENTO: TIBStringField;
    tblCreceberPARCELA: TIBStringField;
    tblCreceberVEZES: TIBStringField;
    tblCreceberORIGEM: TIBStringField;
    tblCreceberCONTA: TIBStringField;
    tblCreceberVALOR: TIBBCDField;
    tblCreceberEMISSAO: TDateField;
    tblCreceberVENCIMENTO: TDateField;
    tblCreceberTOTAL: TIBBCDField;
    tblCreceberPAGAMENTO: TDateField;
    tblCreceberVALOR_PAGO: TIBBCDField;
    tblCreceberBANCO: TIBStringField;
    tblCreceberID_AVALISTA: TIntegerField;
    tblCreceberHISTORICO: TIBStringField;
    tblCreceberSTATUS: TIBStringField;
    tblCreceberID_PEDIDO_VEICULOS: TIntegerField;
    tblCreceberID_FORMA_PAGAMENTO: TIntegerField;
    tblCreceberBOLETO_EMITIDO: TIBStringField;
    DataSourceCreceber: TDataSource;
    Label7: TLabel;
    Valor: TCurrencyEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    NomeCliente: TJvDBMaskEdit;
    BtnConfirma: TBitBtn;
    Label2: TLabel;
    NumeroNF: TJvDBMaskEdit;
    IBQuery1: TIBQuery;
    tblPessoas: TIBDataSet;
    DataSourcePessoas: TDataSource;
    CodigoCliente: TEdit;
    tblSeda: TIBDataSet;
    tblSedaID_SEDA: TIntegerField;
    tblSedaID_CONCESSIONARIA: TIntegerField;
    tblSedaID_NOFI: TIntegerField;
    tblSedaNF: TIBStringField;
    tblSedaID_TMO: TIntegerField;
    tblSedaDESCRICAO_SERVICO: TIBStringField;
    tblSedaTEMPO: TIBBCDField;
    tblSedaPRECO: TIBBCDField;
    DataSourceSeda: TDataSource;
    Label16: TLabel;
    Vencimento: TJvDBDateEdit;
    tblPessoasID_CLIENTES: TIntegerField;
    tblPessoasCODIGO: TIBStringField;
    tblPessoasID_CONCESSIONARIA: TIntegerField;
    tblPessoasVENDEDOR_YNOVA: TIBStringField;
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
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    tblPessoasCODIGOSGS: TIntegerField;
    tblPessoasFATURA_COM_DEBITOS: TIBStringField;
    tblPessoasNUMERO: TIBStringField;
    tblPessoasCOMPLEMENTO: TIBStringField;
    Label3: TLabel;
    DescricaoServico: TEdit;
    RadioGroup1: TRadioGroup;
    tblPessoasNOME: TIBStringField;
    tblPessoasRETENCAO_ISS: TIBStringField;
    tblPessoasCONSUMIDOR: TIBStringField;
    tblPessoasIM: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblSadaVL_PIS: TIBBCDField;
    tblSadaCST_PIS: TIBStringField;
    tblSadaVL_BC_PIS: TIBBCDField;
    tblSadaALIQ_PIS_PERC: TIBBCDField;
    tblSadaVL_COFINS: TIBBCDField;
    tblSadaCST_COFINS: TIBStringField;
    tblSadaVL_BC_COFINS: TIBBCDField;
    tblSadaALIQ_COFINS_PERC: TIBBCDField;
    tblSadaOUTRO_VALOR: TIBBCDField;
    tblSadaVBC_STRET: TIBBCDField;
    tblSadaPST: TIBBCDField;
    tblSadaVICMS_STRET: TIBBCDField;
    tblSadaPRED_BCEFET: TIBBCDField;
    tblSadaVBC_EFET: TIBBCDField;
    tblSadaPICMS_EFET: TIBBCDField;
    tblSadaVICMS_EFET: TIBBCDField;
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodigoClienteExit(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblCreceberAfterPost(DataSet: TDataSet);
    procedure tblCreceberAfterCancel(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NumeroNotaFiscal : Integer;
    Retorno : String;
    idCliente : Integer;
    IdNofisa : Integer;
    procedure AbrirDS;
    procedure FecharDS;
  end;

var
  BoxNFConsorcio: TBoxNFConsorcio;

implementation

uses FDB, Biblioteca, Empresas;

{$R *.dfm}

procedure TBoxNFConsorcio.BtnConfirmaClick(Sender: TObject);
begin
 try
   //Pegar um Sequence para Nofisa
   With IBQuery1 do
     begin
      Open;
      IdNofisa := IBQuery1.FieldByName('id_Nofisa').AsInteger;
      Close;
     end;
   //Acrescer Numero de NF no arquivo SerieNF
      tblSerieNF.Post;
   //Criar NF de serviços
   with tblNofisa do
     begin
       Insert;
       FieldByName('Id_Nofisa').AsInteger := IdNofisa;
       FieldByName('Id_Concessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Id_Clientes').AsInteger := StrToInt(CodigoCliente.Text);
       FieldByName('Numero').AsInteger := NumeroNotaFiscal;
       FieldByName('SerieNF').AsString := SerieNF.Text;
       Fdb1.AtualizaDataAtual;
       FieldByName('Emissao').AsDateTime := DataAtual;
       FieldByName('ENT_SAI').AsString := 'S';
       FieldByName('Origem').AsString := 'C';
       FieldByName('Val_Serv').AsCurrency := Valor.Value;
       FieldByName('ISSQN').AsFloat := StrToFloat(BoxEmpresas.Aliquota_ISS.Text)*100; //aliq.ISSQN
       FieldByName('Val_ISS').AsFloat := FieldByName('Val_Serv').AsFloat *
        (FieldByName('ISSQN').AsFloat/100);//Valor do ISSQN
       FieldByName('Tot_prod').AsCurrency := Valor.Value;
       FieldByName('Tot_Nota').AsCurrency := Valor.Value;
       if tblPessoas.FieldByName('Estado').AsString = 'RS' then
         FieldByName('Codigo_Fiscal').AsString := '5949'
       else
         FieldByName('Codigo_fiscal').AsString := '6949';
       FieldByName('Descricao_codigo_fiscal').AsString := 'Prestação de serviços';
       FieldByName('Dados_Ad05').AsString := 'Sequência do cliente:'+ FieldByName('Id_Clientes').AsString;
       FieldByName('Qtde_prod').AsInteger := 1;
       FieldByName('Status').AsString := 'Processado';
       Post;
     end;
   //Registrar o Contas a receber
   with tblCreceber do
     begin
//       Insert;
       FieldByName('id_Clientes').AsInteger :=  StrToInt(CodigoCliente.Text);
       FieldByName('Id_Concessionaria').AsInteger :=
         StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
       FieldByName('Documento').AsInteger := NumeroNotaFiscal;
       FieldByName('id_forma_PAgamento').AsInteger := 2;
       FieldByName('Parcela').AsInteger := 1;
       FieldByName('Vezes').AsInteger := 1;
       FieldByName('Origem').AsString := 'C';
       FieldByName('Emissao').AsDateTime := DataAtual;
       FieldByName('Total').AsCurrency := Valor.Value;
       FieldByName('Status').AsString := 'Processado';
       FieldByName('Valor').AsCurrency := Valor.Value;
       if RadioGroup1.ItemIndex = 0 then
         FieldByName('Historico').AsString := 'Valor CNY ref.NF.'+FieldByName('Documento').AsString;
       if RadioGroup1.ItemIndex = 1 then
         FieldByName('Historico').AsString := 'Vlr.comissão seguro ref.NF.'+FieldByName('Documento').AsString;
       if RadioGroup1.ItemIndex = 2 then
         FieldByName('Historico').AsString := 'Vlr.reembolso mkt.e publ.ref.NF.'+FieldByName('Documento').AsString;
       if RadioGroup1.ItemIndex = 3 then
         FieldByName('Historico').AsString := 'Vlr.comissão liberacred ref.NF.'+FieldByName('Documento').AsString;

       Post;
     end;
     NumeroNotaFiscal := tblSerieNF.FieldByName('Ultimo_Numero_Emitido').AsInteger + 1;
   //criar registro no seda
    with tblseda do
     begin
      insert;
      Fieldbyname('id_Concessionaria').AsInteger :=
        StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      FieldByName('id_Nofi').Value := idNofisa;
      FieldByName('NF').Value := NumeroNotaFiscal;
      FieldByName('Descricao_Servico').AsString := DescricaoServico.Text;//'Comissão consórcio';
      FieldByName('Tempo').asString := '1';
      FieldByName('ID_TMO').asString := '0';
      FieldByName('Preco').Value := tblCreceber.FieldByName('valor').value;
      post;
     end;
 except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
 end;
  showmessage('Dados gravados');
  tblCreceber.Insert;
  tblCreceber.FieldByName('Vencimento').AsDateTime := DataAtual + 30;
  tblSerieNF.Edit;
  NumeroNotaFiscal := tblSerieNF.FieldByName('Ultimo_Numero_Emitido').AsInteger + 1;
  tblSerieNF.FieldByName('Ultimo_Numero_Emitido').AsInteger := NumeroNotaFiscal;
end;

procedure TBoxNFConsorcio.CodigoClienteExit(Sender: TObject);
begin
if CodigoCliente.Text = '' then
   CodigoCliente.Text := '0';
idCliente := StrToInt(CodigoCliente.Text);
if StrtoInt(CodigoCliente.Text) = 0 then
  begin
   SpeedButton2.Click;
   CodigoCliente.SetFocus;
  end
else
  begin
    with tblPessoas do
      begin
       if idCliente<>0 then
         begin
          Close;
          parambyname( 'id' ).AsInteger := idCliente;
          Open;
          if recordcount = 0  then
            begin
             showmessage('Cliente inexistente.');
             CodigoCliente.SetFocus;
            end
          else
            begin
             if not FieldByName('Cliente').AsBoolean then
               begin
                showmessage('Esta sequência não pertence à um cliente.');
                CodigoCliente.SetFocus;
               end;
  //           if not ValidaCliente(tblPessoas) then
//               CodigoCliente.SetFocus;
             NomeCliente.Text := FieldbyName('Nome').Text;
            end;
         end;
      end;
  end;
end;

procedure TBoxNFConsorcio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
end;

procedure TBoxNFConsorcio.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxNFConsorcio.FormShow(Sender: TObject);
var
  i: Integer;
begin
  AbrirDS;
  i:=1;
  tblCreceber.Insert;
  tblCreceber.FieldByName('Vencimento').AsDateTime := DataAtual + 30;
  DataSourceSerienf.DataSet.first;
  SerieNF.Items.Clear;
repeat
    SerieNF.Items.AddObject(DataSourceSerieNF.DataSet.FieldByName('SerieNF').AsString,
     Pointer(i));
     i:= i+1;
     tblSerienf.next;
until tblSerienf.Eof;
  SerieNF.Enabled := True;
  SerieNF.ItemIndex := 0;
  tblSerieNF.Edit;
  NumeroNotaFiscal := tblSerieNF.FieldByName('Ultimo_Numero_Emitido').AsInteger + 1;
  tblSerieNF.FieldByName('Ultimo_Numero_Emitido').AsInteger := NumeroNotaFiscal;

end;

procedure TBoxNFConsorcio.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
   DescricaoServico.Text := 'Comissao consórcio';
if RadioGroup1.ItemIndex = 1 then
   DescricaoServico.Text := 'Serv.digitação de ficha cadast';
if RadioGroup1.ItemIndex = 2 then
   DescricaoServico.Text := 'Serv.propag.e mkt.ref.         ';
if RadioGroup1.ItemIndex = 3 then
   DescricaoServico.Text := 'Comis.venda liberacred ref.         ';

end;

procedure TBoxNFConsorcio.SpeedButton2Click(Sender: TObject);
begin
     Retorno := Biblioteca.PesquisaGeral('Clientes','Clientes',
      ['Nome','Id_Clientes','Codigo','Id_Concessionaria'],
      ['Nome:','Sequência:','Código:','Concessionária:',''],
      'Descricao','Id_Clientes',Fdb1.SQLConnection1,'Cliente = ','T','');
     with tblPessoas do
     begin
        Close;
        Parambyname('id').AsInteger := StrToInt(Retorno);
        Open;
//        tblNofisa.FieldByName('Id_Clientes').AsString :=
        CodigoCliente.Text := retorno;
//          tblPessoas.FieldByName('Id_Clientes').AsString;
        NomeCliente.Text := tblPessoas.FieldByName('Nome').Text;
     end;
     CodigoCliente.SetFocus;
end;

procedure TBoxNFConsorcio.tblCreceberAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxNFConsorcio.tblCreceberAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxNFConsorcio.AbrirDS;
begin
  DataSourcePessoas.Dataset.Open;
  DataSourceCreceber.Dataset.Open;
  with tblSerieNF do
   begin
     ParamByName('idConcessionaria').AsInteger := StrToINt(
BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
   end;
  DataSourceSada.Dataset.Open;
  DataSourceSeda.Dataset.Open;
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
end;

procedure TBoxNFConsorcio.FecharDS;
begin
  DataSourcePessoas.Dataset.Close;
  DataSourceCreceber.Dataset.Close;
  DataSourceSerieNF.Dataset.Close;
  DataSourceSada.Dataset.Close;
  DataSourceSeda.Dataset.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
end;

end.

