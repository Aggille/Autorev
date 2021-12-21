unit DescontoFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, DB, IBCustomDataSet,
  IBQuery, rxToolEdit, rxCurrEdit;

type
  TBoxDescontoFinanceira = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label5: TLabel;
    NFDesconto: TMaskEdit;
    BtnConfirma: TBitBtn;
    BtnImprimir: TBitBtn;
    Label1: TLabel;
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaNUMERO: TIntegerField;
    tblNofisaVENDEDOR: TIntegerField;
    tblNofisaOBS: TIBStringField;
    tblNofisaSERIENF: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    DataSourceNofisa: TDataSource;
    IBQuery1: TIBQuery;
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
    DataSourceSada: TDataSource;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
    DataSourceNofisaFaturas: TDataSource;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    ValorDesconto: TCurrencyEdit;
    IBQuery2: TIBQuery;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    tblSadaALIQ_ICMS: TIBBCDField;
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
    tblSadaICMS_SUBSTITUTO: TIBBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblNofisaAfterCancel(DataSet: TDataSet);
    procedure tblNofisaAfterPost(DataSet: TDataSet);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure CriarNFDesconto;//(NFDesconto: String; ValorDesconto : Extended);
    procedure FecharDs;
    procedure AbrirDs;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idNofisa : Integer;
    idSada : Integer;
    idNotaVelha : Integer;
    idNumeroNotaFiscal : Integer;
    NFGerada : Boolean;
    DataVelha : Variant;
  end;

var
  BoxDescontoFinanceira: TBoxDescontoFinanceira;

implementation

uses FDB, Biblioteca, ReemiteNFs, Empresas;

{$R *.dfm}

procedure TBoxDescontoFinanceira.BtnConfirmaClick(Sender: TObject);
begin
  With tblNofisa do
  begin
    Close;
    ParamByName('idNumero').AsInteger := StrToInt(NFDesconto.Text);
    ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    ParamByName('IdSerieNF').AsString := 'e';
    Open;
    if RecordCount <> 0 then
      begin
        idNotaVelha := FieldByName('Id_nofisa').AsInteger;
        DataVelha := FieldByName('Emissao').AsDateTime;
        NFGerada := True;
        BtnImprimir.Enabled := True;
        BtnConfirma.Enabled := False;
        CriarNFDesconto;//(NFDesconto.Text, ValorDesconto.Value);
      end
    else
      Showmessage('Nota fiscal não localizada.');
  end;
end;

procedure TBoxDescontoFinanceira.BtnImprimirClick(Sender: TObject);
begin
if NFGerada then
 begin
  if BoxReemiteNFs.EmitirNotaFiscal(IntToStr(IdNumeroNotaFiscal)) then
    BoxReemiteNFs.EmiteNF;
  NFGerada := False;
  BtnImprimir.Enabled := False;
  BtnConfirma.Enabled := True;
 end
else
 showmessage('Primeiro gere a NF');
end;

procedure TBoxDescontoFinanceira.CriarNFDesconto;//(NFDesconto: String; ValorDesconto : Extended);
begin
{Pegar o número da NF}
   with tblSerieNF do
   begin
     Close;
     ParamByName('idConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
     ParamByName('IdSerieNF').AsString := 'e';
     Open;
     idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
     Edit;
     FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
     Post;
     Showmessage('Número da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  IBQuery2.Open;
  IdSada := IBQuery2.FieldByName('id_Sada').AsInteger;
  IBQuery2.Close;
  // Duplica Registros
  with tblNofisa do
   begin
    DuplicaRegistro(tblNofisa);
    FieldByName('Emissao').AsDateTime := DataAtual;
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
    FieldByName('id_Concessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('CODIGO_FISCAL').AsString := '1411';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'DEV.VED.MEC.ADQ.TERC.SUJ.S.TRIB.';
    FieldByName('Dados_Ad01').AsString := 'DEVOLUCAO REF NF. ' + NFDesconto.Text;
    FieldByName('Dados_Ad02').AsString := 'DO DIA ' + DateToStr(DataVelha);
    FieldByName('Tot_Prod').Value := ValorDesconto.Value;
    FieldByName('Tot_Nota').Value := ValorDesconto.Value;
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Chave').AsString := '';
    FieldByName('Recibo').AsString := '';
    FieldByName('Protocolo').AsString := '';
    FieldByName('Arquivo').AsString := '';
    FieldByName('xml').AsString := '';
    FieldByName('Protocolo_Cancelamento').AsString := '';
    FieldByName('Ent_sai').AsString := 'E';
    Post;
   end;
  with tblNofisaFaturas do
   begin
     Insert;
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Fatura').AsString := IntToStr(IdNumeroNotaFiscal) + '-' + '1';
     FieldByName('Vencimento').AsDateTime := DataAtual;
     FieldByName('Valor').AsCurrency :=  ValorDesconto.Value;
     FieldByName('Id_Formas_Pagamento').AsInteger := 2;
     Post;
   end;
  with tblSada do
  begin
    Close;
    ParamByName('idNofisa').AsInteger := idNotaVelha;
    Open;
    DuplicaRegistro(tblSada);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('NF').AsString := NFDesconto.Text;
    FieldByName('id_Concessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Id_Sada').AsInteger := idSada;
    FieldByName('Preco').Value := ValorDesconto.Value;
    FieldByName('CFOP').AsString := '1411';
    Post;
  end;
end;

procedure TBoxDescontoFinanceira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxDescontoFinanceira := nil;
end;

procedure TBoxDescontoFinanceira.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxDescontoFinanceira.FormShow(Sender: TObject);
begin
  NFGErada := False;
  BtnImprimir.Enabled := False;
  AbrirDs;
end;

procedure TBoxDescontoFinanceira.tblNofisaAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxDescontoFinanceira.tblNofisaAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxDescontoFinanceira.FecharDs;
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceNofisaFaturas.Dataset.Close;
  DataSourceSerieNF.Dataset.Close;
  DataSourceSada.Dataset.Close;
end;

procedure TBoxDescontoFinanceira.AbrirDs;
begin
  DataSourceNofisa.Dataset.Open;
  DataSourceNofisaFaturas.Dataset.Open;
  DataSourceSerieNF.Dataset.Open;
  DataSourceSada.Dataset.Open;
end;

end.
