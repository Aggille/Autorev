unit uSpedNFsErradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.Buttons, frxClass, ACBrBase, ACBrDFe, ACBrNFe, Data.DB,
  IBX.IBCustomDataSet, Vcl.Grids, Vcl.DBGrids, IBX.IBQuery, JvMaskEdit,
  JvDBControls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TBoxReemissaoICMS = class(TForm)
    BitBtn3: TBitBtn;
    DataNfs: TJvDateEdit;
    Label1: TLabel;
    NF: TEdit;
    SpeedButton1: TSpeedButton;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    DataSourceNofisaFaturas: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
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
    tblSadaPRECO: TIBBCDField;
    tblSadaCFOP: TIBStringField;
    tblSadaST_COFINS: TIBStringField;
    tblSadaANO_MODELO: TIBStringField;
    tblSadaANO_FABRICACAO: TIBStringField;
    tblSadaRENAVAM: TIBStringField;
    tblSadaCOR: TIBStringField;
    tblSadaCOMBUSTIVEL: TIBStringField;
    tblSadaPLACA: TIBStringField;
    tblSadaCHASSI: TIBStringField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    tblSadaID_PECAS: TIntegerField;
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
    DataSourceSada: TDataSource;
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
    tblPessoasFINANCEIRA: TIBStringField;
    tblPessoasFABRICANTE: TIBStringField;
    tblPessoasCODIGO_MUNICIPIO: TIBStringField;
    tblPessoasNOME_VENDEDOR: TIBStringField;
    DataSourceClientes: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery1: TIBQuery;
    IBQuery3: TIBQuery;
    BtnLocaliza: TBitBtn;
    Label3: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    CodigoCliente: TJvDBMaskEdit;
    JvDBMaskEdit1: TJvDBMaskEdit;
    NomeCliente: TJvDBMaskEdit;
    BtnConfirma: TBitBtn;
    CheckBox5: TCheckBox;
    CheckBox9: TCheckBox;
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
    IntegerField6: TIntegerField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaESTADO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaMOTIVO_CANCELAMENTO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaNOME: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaDADOS_AD05: TIBStringField;
    DataSourceNofisa: TDataSource;
    tblSadaPOTENCIA: TIBStringField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    IBQuery4: TIBQuery;
    procedure BitBtn3Click(Sender: TObject);
    procedure Carregaxml( var nfe:TAcbrNfe );
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLocalizaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure GeraNFReemissao;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblNofisaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idNofisa : Integer;
    idNofisaAntigo : Integer;
    idNumeroNotaFiscal : Integer;
    idSada : Integer;
  end;

var
  BoxReemissaoICMS: TBoxReemissaoICMS;

implementation

{$R *.dfm}

uses Empresas, FDB, Biblioteca;

procedure TBoxReemissaoICMS.BitBtn3Click(Sender: TObject);
begin
  tblNofisa.Close;
  tblNofisa.ParamByName('idStatus').AsString := 'Arquivado';
  tblNofisa.ParamByName('idEmissao').AsDateTime := DataNFs.Date;
  tblNofisa.ParamByName('idConcessionaria').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblNofisa.Open;
  tblNofisa.First;
//  while tblNofisa not eof do
  begin
//     Carregaxml(AcbrNfe1);
     Next;
  end;

end;


procedure TBoxReemissaoICMS.BtnConfirmaClick(Sender: TObject);
begin
  if idNofisaAntigo = 0 then
    showmessage('Selecione uma NF para reemissão.')
  else
    GEraNFReemissao;

end;

procedure TBoxReemissaoICMS.GeraNFReemissao;
var
 i : Integer;
 idDataAntiga : String;
 idNumeroAntigo : String;
 CodigoFiscal : String;
 DescricaoFiscal : String;
 ValorTotalProduto : Extended;
begin
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
 try
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  {Criar dados da nova NF}
  with tblSada do
   begin
    Close;
    ParamByName('IdNofisa').AsInteger := IdNofisaAntigo;
    Open;
    while not eof do
     begin
      begin
       {Pegar Sequence novo para produtos}
        IBQuery2.Open;
        IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
        IBQuery2.Close;
        DuplicaRegistro(tblSada);
        FieldByName('Id_nofisa').AsInteger := IdNofisa;
        FieldByName('NF').AsString := IntToStr(IdNumeroNotaFiscal);//NFDesconto.Text;
        FieldByName('id_Concessionaria').AsInteger :=
          StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
        FieldByName('Id_Sada').AsInteger := idSada;
        //alterar os valores de ICMS corrigindo-os.
                  //acrescido em função ICMS_ST em vigor 01/01/2019
                  //Campos para atacado
        if tblNofisa.FieldByName('Origem').AsString <> 'N' then
           ValorTotalProduto := (FieldByName('Preco').AsCurrency * FieldByName('Qtde').AsCurrency) - FieldByName('Desconto').AsCurrency
        else
          begin
            ValorTotalProduto := FieldByName('Preco').AsCurrency * 0.6667;
            FieldByName('PRed_BCEfet').AsCurrency := 33.33;
          end;
        //Campos para consumidor final
        FieldByName('vBC_Efet').AsCurrency := ValorTotalProduto;//tblSada.FieldByName('Base_Icms').AsCurrency;//tblAtendimento.FieldByName('Valor_Liquido_Venda').AsCurrency;
//                tblSada.fieldByName('pICMS_Efet').AsCurrency := BoxEmpresas.Aliquota_ICMS1.Value;
        if tblNofisa.FieldByName('Origem').AsString <> 'N' then
           FieldByName('vICMS_Efet').AsCurrency := FieldByName('vBC_Efet').AsCurrency *
                                                FieldByName('pICMS_Efet').AsCurrency
        else
           FieldByName('vICMS_Efet').AsCurrency := FieldByName('Preco').AsCurrency * 0.12;
        Post;
      end;
      tblSada.Next;
     end;
   end;
{Pegar codigo Fiscal}
   with tblSada do
     begin
       Close;
       ParamByName('idNofisa').AsInteger := IdNofisa;
       Open;
       first;
       CodigoFiscal := tblSadaCFOP.asString ;
       Next;
       while not eof do
        begin
         if POS(tblSadaCFOP.AsString, CodigoFiscal) = 0 then
          begin
           CodigoFiscal := CodigoFiscal + '/' + tblSadaCFOP.asString ;
          end;
          Next;
        end;
     end;

  {Gravar o Nofisa}
  with tblNofisa do
  begin
     idNofisaAntigo := FieldByName('Id_nofisa').AsInteger;
     idNumeroAntigo := FieldByName('Numero').AsString;
     idDataAntiga := FieldByName('Emissao').AsString;
     DuplicaRegistro(tblNofisa);
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Chave').AsString := '';
     FieldByName('Recibo').AsString := '';
     FieldByName('Protocolo').AsString := '';
//     FieldByName('Codigo_Fiscal').AsString := CodigoFiscal;
//     FieldByName('Descricao_codigo_fiscal').AsString := DescricaoFiscal;
     FieldByName('Arquivo').AsString := '';
     FieldByName('xml').AsString := '';
     FieldByName('Protocolo_Cancelamento').AsString := '';
     Fdb1.AtualizaDataAtual;
     FieldByName('Emissao').AsDateTime := DataAtual;
     Post;
   end;
   with tblNofisaFaturas do
    begin
     Close;
     ParamByName('Id').AsInteger := IdNofisaAntigo;
     Open;
     i := 1;
     while not eof do
       begin
       {Pegar Sequence novo para produtos}
        IBQuery4.Open;
        IdSada := IBQuery4.FieldByName('id_NofisaFaturas').AsInteger;
        IBQuery4.Close;

        DuplicaRegistro(tblNofisaFaturas);
        FieldByName('Id_nofisa_faturas').AsInteger := IdSada;
        FieldByName('Id_nofisa').AsInteger := IDNofisa;
        if FieldByName('vencimento').AsDateTime < DataAtual then
           FieldByName('Vencimento').AsDateTime := DataAtual;
        FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' +
           IntToStr(i);

        tblNofisaFaturas.Post;
        i := i + 1;
        Next;
       end;
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
  idNofisaAntigo := 0;
  NF.Text := '';
  tblNofisa.Close;
end;


procedure TBoxReemissaoICMS.tblNofisaAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxReemissaoICMS.BtnLocalizaClick(Sender: TObject);
begin
  idNofisa := 0;
  if NF.text <> '' then
  begin
    with tblNofisa do
    begin
      Close;
      ParamByName('idNumero').AsInteger := StrToInt(NF.Text);
      PAramByName('idConcessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
      Open;
      if recordCount = 0 then
        begin
          Showmessage('NF não localizada.');
          NF.SetFocus;
        end
      else
        if FieldByName('Status').AsString = 'Cancelada' then
          begin
            Showmessage('Esta NF está cancelada.');
            NF.SetFocus;
          end
        else
          begin
            idNofisaAntigo := tblNofisa.FieldByName('id_nofisa').AsInteger;
            BtnConfirma.SetFocus;
          end;
    end;
  end;
end;

procedure TBoxReemissaoICMS.CarregaXml( var nfe:TAcbrNfe );
var
M: TStringStream;

begin
     // se o xml armazenado no memo não é nulo.. entao usa ele..
     if not ( tblNofisa.fieldbyname( 'xml' ).isnull ) then
     begin
        m := TStringStream.Create( tblNofisa.fieldbyname( 'xml' ).asString );
      //  ACbrnfe1.NotasFiscais.LoadFromStream( m );
//        exit;
     end;
end;

procedure TBoxReemissaoICMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Acbrnfe1.Free;

  Action :=caFree;
  BoxReemissaoICMS := nil;

end;

procedure TBoxReemissaoICMS.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
