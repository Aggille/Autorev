unit NotaFiscalRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, Wwdbigrd, Wwdbgrid;

type
  TBoxNotaFiscalRemessa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CodigoCliente: TDBEdit;
    NF: TDBEdit;
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
    DataSourceSada: TDataSource;
    BtnNovo: TBitBtn;
    IBQuery1: TIBQuery;
    BtnSalvar: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ValorDevido: TJvDBMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    JvDBNavigator1: TJvDBNavigator;
    wwDBGrid1: TwwDBGrid;
    tblSadaNCM: TIBStringField;
    tblSadaCILINDRADAS: TIntegerField;
    tblSadaALIQ_ICMS: TIBBCDField;
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
    procedure BtnNovoClick(Sender: TObject);
    procedure tblSerieNFAfterPost(DataSet: TDataSet);
    procedure tblSerieNFAfterCancel(DataSet: TDataSet);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   IdNofisa : Integer;
   IdNumeroNotaFiscal : Integer;
  end;

var
  BoxNotaFiscalRemessa: TBoxNotaFiscalRemessa;

implementation

uses Empresas, FDB;

{$R *.dfm}

procedure TBoxNotaFiscalRemessa.BtnNovoClick(Sender: TObject);
begin
 {Pega um sequence novo para a NF}
  IBQuery1.Open;
  IdNofisa := IBQuery1.FieldByName('id_nofisa').AsInteger;
  IBQuery1.Close;
  With tblSerieNF do
  begin
    Close;
    ParamByName('IdConcessionaria').AsInteger :=
     StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    Open;
    idNumeroNotaFiscal := FieldByName('Ultimo_numero_emitido').AsInteger + 1;
    Edit;
    FieldByName('Ultimo_numero_emitido').AsInteger := IdNumeroNotaFiscal;
    Post;
  end;
  With tblNofisa do
  begin
    Open;
    Insert;
    FieldByName('Id_Clientes').AsInteger := 1296;
    FieldByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Numero').AsInteger := idNumeroNotaFiscal;
    FieldByName('SerieNF').AsString := 'e';
    Fdb1.AtualizaDataAtual;
    FieldByName('Emissao').AsDateTime := DataAtual;
    FieldByName('Origem').AsString := 'G';
    FieldByName('Ent_sai').AsString := 'S';
    FieldByName('Desc_pec').AsInteger := 0;
    FieldByName('Base_ICMS').AsInteger := 0;
    FieldByName('Val_ICMS').AsInteger := 0;
    FieldByName('Val_Serv').AsInteger := 0;
    FieldByName('ISSQN').AsInteger := 0;
    FieldByName('Val_ISS').AsInteger := 0;
    FieldByName('TOT_PROD').AsInteger := 0;
    FieldByName('TOT_NOTA').AsInteger := 0;
    FieldByName('COD_TRANS').AsInteger := 27617;
    FieldByName('Frete_Tipo').AsInteger := 2;
    FieldByName('Dados_AD01').AsString := 'Remessa de peças defeituosas em virtude';
    FieldByName('Dados_AD02').AsString := 'de garantia, sem débito para o destinatário';
    FieldByName('QTDE_PROD').AsInteger := 0;
    FieldByName('Status').AsString := 'Processado';
    FieldByName('Codigo_Fiscal').AsString := '6949';
    FieldByName('Descricao_Codigo_Fiscal').AsString := 'REMESSA DE MERC.P/GARANTIA';
    FieldByName('Dados_AD05').AsString := 'Sequência do cliente: 1296';
    FieldByName('Quantidade_VOLUMES').AsInteger := 0;
    Post;
    Edit;
    CodigoCliente.SetFocus;
  end;
  with tblSada do
  begin
    ParamByName('idNofisa').AsInteger := IdNofisa;
    Open;
  End;
  BtnNovo.Enabled := False;
end;

procedure TBoxNotaFiscalRemessa.BtnSalvarClick(Sender: TObject);
begin
  With tblNofisa do
    begin
      FieldByName('TOT_PROD').AsString := FieldByName('TOT_NOTA').AsString;
      Post;
      Edit;
    end;
end;

procedure TBoxNotaFiscalRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSourceNofisa.Dataset.Close;
  DataSourceSada.Dataset.Close;
end;

procedure TBoxNotaFiscalRemessa.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxNotaFiscalRemessa.FormShow(Sender: TObject);
begin
  BtnNovo.SetFocus;
end;

procedure TBoxNotaFiscalRemessa.tblSerieNFAfterCancel(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxNotaFiscalRemessa.tblSerieNFAfterPost(DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxNotaFiscalRemessa.wwDBGrid1RowChanged(Sender: TObject);
begin
 with tblSada do
   begin
    FieldByName('Id_nofisa').AsInteger := IdNofisa;
    FieldByName('Id_Concessionaria').AsInteger := StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
    FieldByName('NF').AsInteger := idNumeroNotaFiscal;
    FieldByName('Unidade').AsString := 'PC';
    FieldByName('Subst').AsString := 'N';
    FieldByName('Aliq_ICMS').AsString := '0,12';
    FieldByName('CFOP').AsString := '6949';
    FieldByName('ST_COFINS').AsString := 'N';
   end;

end;

end.

