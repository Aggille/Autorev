unit NFeImobilizado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  IBQuery, DB, IBCustomDataSet;

type
  TBoxNFeImobilizado = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    NFe: TEdit;
    Valor: TCurrencyEdit;
    Label2: TLabel;
    BtnConfirma: TBitBtn;
    tblSeda: TIBDataSet;
    tblSedaID_SEDA: TIntegerField;
    tblSedaID_CONCESSIONARIA: TIntegerField;
    tblSedaID_NOFI: TIntegerField;
    tblSedaNF: TIBStringField;
    tblSedaID_TMO: TIntegerField;
    tblSedaDESCRICAO_SERVICO: TIBStringField;
    tblSedaTEMPO: TIBBCDField;
    tblSedaPRECO: TIBBCDField;
    tblNofisaFaturas: TIBDataSet;
    tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField;
    tblNofisaFaturasID_NOFISA: TIntegerField;
    tblNofisaFaturasFATURA: TIBStringField;
    tblNofisaFaturasVENCIMENTO: TDateField;
    tblNofisaFaturasVALOR: TIBBCDField;
    tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField;
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
    tblNofisaDADOS_AD01: TIBStringField;
    tblNofisaDADOS_AD02: TIBStringField;
    tblNofisaDADOS_AD03: TIBStringField;
    tblNofisaDADOS_AD04: TIBStringField;
    tblNofisaOBS: TIBStringField;
    tblNofisaQTDE_PROD: TIntegerField;
    tblNofisaSTATUS: TIBStringField;
    tblNofisaCODIGO_FISCAL: TIBStringField;
    tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField;
    tblNofisaFORMA_PAGAMENTO: TIBStringField;
    tblNofisaCHAVE: TIBStringField;
    tblNofisaRECIBO: TIBStringField;
    tblNofisaPROTOCOLO: TIBStringField;
    tblNofisaARQUIVO: TIBStringField;
    tblNofisaXML: TBlobField;
    tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField;
    DataSourceNofisa: TDataSource;
    DataSourceSada: TDataSource;
    DataSourceNofisaFaturas: TDataSource;
    DataSourceSeda: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    tblSerieNF: TIBDataSet;
    tblSerieNFID_SERIENF: TIntegerField;
    tblSerieNFID_CONCESSIONARIA: TIntegerField;
    tblSerieNFSERIENF: TIBStringField;
    tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField;
    DataSourceSerieNF: TDataSource;
    tblSadaALIQ_ICMS: TIBBCDField;
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
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GravarNFe;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblNofisaAfterCancel(DataSet: TDataSet);
    procedure tblNofisaAfterPost(DataSet: TDataSet);
  private
    idNofisa: Integer;
    idSada : Integer;
    idNumeroNotaFiscal : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxNFeImobilizado: TBoxNFeImobilizado;

implementation

uses Empresas, Biblioteca, FDB;

{$R *.dfm}

procedure TBoxNFeImobilizado.BtnConfirmaClick(Sender: TObject);
begin
showmessage('em cosntru??o');
{ with tblNofisa do
  begin
    Close;
    ParamByName('IdNumero').AsInteger := StrToInt(Nfe.Text);
    ParamByName('IdConcessionaria').AsInteger :=
      StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    if recordCount = 0 then
      Showmessage('Nf-e n?o localizada')
    else
      GravarNFe;
  end;}
end;

procedure TBoxNFeImobilizado.GravarNFe;
begin
{Pegar o n?mero da NF}
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
     Showmessage('N?mero da nota fiscal gerada: '+IntToStr(IdNumeroNotaFiscal));
   end;
  {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;

  DuplicaRegistro(tblNofisa);
  with tblNofisa do
   begin
     FieldByName('Id_nofisa').AsInteger := IdNofisa;
     FieldByName('Numero').AsInteger := IdNumeroNotaFiscal;
     FieldByName('id_Concessionaria').AsInteger :=
       StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
//     FieldByName('Codigo_FISCAL').AsString := Valor.Value;
     FieldByName('DESCRICAO_CODIGO_FISCAL').AsString := 'Venda de ativo imobilizado';
     FieldByName('Dados_Ad01').AsString := 'Nota fiscal de devolu??o da';
     FieldByName('Dados_Ad02').AsString := 'NF-e ' + Nfe.Text;
     FieldByName('Status').AsString := 'Processado';
     FieldByName('Chave').AsString := '';
     FieldByName('Recibo').AsString := '';
     FieldByName('Protocolo').AsString := '';
     FieldByName('Arquivo').AsString := '';
     FieldByName('xml').AsString := '';
     FieldByName('Protocolo_Cancelamento').AsString := '';
     Post;
   end;
  with tblSada do
   begin
    Close;
    ParamByName('IdNumero').AsInteger := StrToInt(Nfe.Text);
    Open;
    while not eof do
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
//        FieldByName('Preco').Value := Valor.Value;
        if FieldByName('Descricao').AsString = 'Motocicleta' then
         begin
         
         end
        else
         begin
//           with tblPecas do
            begin

            end;
  //         with tblPecasMovimentacao do
            begin

            end;
         end;
        
        Post;
        Next;
      end;
   end;
end;

procedure TBoxNFeImobilizado.tblNofisaAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxNFeImobilizado.tblNofisaAfterPost(DataSet: TDataSet);
begin
  FDb1.IBTransaction.CommitRetaining;
end;

procedure TBoxNFeImobilizado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxNFeImobilizado := nil;
end;

procedure TBoxNFeImobilizado.FormKeyPress(Sender: TObject; var Key: Char);
begin
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

procedure TBoxNFeImobilizado.FecharDs;
begin
  IBQuery2.Close;
  IBQuery1.Close;
  DataSourceNofisa.Dataset.Close;
  DataSourceSada.Dataset.Close;
end;
end.
