unit CadastroSituacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet,
  Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid, Wwdbigrd, Wwdbgrid;

type
  TBoxSituacoes = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    LabelUsuario: TLabel;
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
    tblSadaCHASSI: TIBStringField;
    tblSadaCUSTO: TIBBCDField;
    tblSadaMARCA: TIBStringField;
    tblSadaMODELO: TIBStringField;
    tblSadaSTATUS: TIBStringField;
    tblSadaNAT_OP: TIBStringField;
    tblSadaMOTOR: TIBStringField;
    tblSadaBASE_ICMS: TIBBCDField;
    tblSadaDESCONTO: TIBBCDField;
    DataSourceSada: TDataSource;
    tblVeiculos: TIBDataSet;
    tblVeiculosID_VEICULOS: TIntegerField;
    tblVeiculosID_CONCESSIONARIA: TIntegerField;
    tblVeiculosID_CLIENTES: TIntegerField;
    tblVeiculosID_FORNECEDOR: TIntegerField;
    tblVeiculosCHASSI: TIBStringField;
    tblVeiculosMARCA: TIBStringField;
    tblVeiculosMODELO: TIBStringField;
    tblVeiculosCOR: TIBStringField;
    tblVeiculosANO_FABRICACAO: TIBStringField;
    tblVeiculosANO_MODELO: TIBStringField;
    tblVeiculosGRUPO: TIBStringField;
    tblVeiculosHP: TIBStringField;
    tblVeiculosPLACA: TIBStringField;
    tblVeiculosCNY: TIBStringField;
    tblVeiculosKM: TIntegerField;
    tblVeiculosRENAVAM: TIBStringField;
    tblVeiculosCLASSIF_FISCAL: TIBStringField;
    tblVeiculosNOTA_ENT: TIBStringField;
    tblVeiculosDATA_ENT: TDateField;
    tblVeiculosFONE: TIBStringField;
    tblVeiculosCONSIG: TIBStringField;
    tblVeiculosCUSTO: TIBBCDField;
    tblVeiculosCUSTO_ICMS: TIBBCDField;
    tblVeiculosPRECO: TIBBCDField;
    tblVeiculosDATA_SAI: TDateField;
    tblVeiculosNF_SAIDA: TIBStringField;
    tblVeiculosVENDA: TIBStringField;
    tblVeiculosMOTOR: TIBStringField;
    tblVeiculosFINANC_PRO: TIBStringField;
    tblVeiculosSTATUS: TIBStringField;
    tblVeiculosRESERVADA: TDateField;
    tblVeiculosFOTO: TIBStringField;
    tblVeiculosRESERVADA_POR: TIBStringField;
    tblVeiculosESTOQUE: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    DataSourceVeiculos: TDataSource;
    tblAtendimento: TIBDataSet;
    tblAtendimentoID_ATENDIMENTO: TIntegerField;
    tblAtendimentoID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoID_CLIENTES: TIntegerField;
    tblAtendimentoID_MECANICO: TIntegerField;
    tblAtendimentoID_CATEGORIA: TIntegerField;
    tblAtendimentoMARCA: TIBStringField;
    tblAtendimentoMODELO: TIBStringField;
    tblAtendimentoANO_FABRICACAO: TIBStringField;
    tblAtendimentoANO_MODELO: TIBStringField;
    tblAtendimentoCHASSI: TIBStringField;
    tblAtendimentoKM: TIntegerField;
    tblAtendimentoDATA_ENTRADA: TDateField;
    tblAtendimentoDATA_SAIDA: TDateField;
    tblAtendimentoORC_OS: TIBStringField;
    tblAtendimentoCOR: TIBStringField;
    tblAtendimentoPLACA: TIBStringField;
    tblAtendimentoSTATUS: TIBStringField;
    tblAtendimentoMEMO: TBlobField;
    tblAtendimentoDESCONTO: TIBBCDField;
    tblAtendimentoTOTAL_PECAS: TIBBCDField;
    tblAtendimentoTOTAL_SERVICOS: TIBBCDField;
    tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField;
    tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField;
    DataSourceAtendimento: TDataSource;
    Chassi: TEdit;
    BtnPesquisa: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
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
    procedure BtnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ChassiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSituacoes: TBoxSituacoes;

implementation

{$R *.dfm}

procedure TBoxSituacoes.BtnPesquisaClick(Sender: TObject);
var
  vazio : Boolean;
begin
  vazio := True;
  with tblVeiculos do
   begin
     Close;
     ParamByName('IdChassi').AsString := Chassi.Text;
     Open;
     if recordCount <> 0 then
       vazio := False;
   end;
  with tblAtendimento do
   begin
     Close;
     ParamByName('IdChassi').AsString := Chassi.Text;
     Open;
     if recordCount <> 0 then
       vazio := False;
   end;
  with tblSada do
   begin
     Close;
     ParamByName('IdChassi').AsString := Chassi.Text;
     Open;
     if recordCount <> 0 then
       vazio := False;
   end;
   if vazio then
     Showmessage('Chassi sem registros.');

end;


procedure TBoxSituacoes.ChassiExit(Sender: TObject);
begin
  btnPesquisa.SetFocus;
end;

procedure TBoxSituacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblVeiculos.Close;
  tblSada.Close;
  tblAtendimento.Close;
   Action :=caFree;
   BoxSituacoes := nil;
end;

procedure TBoxSituacoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoxSituacoes.FormShow(Sender: TObject);
begin
  Chassi.SetFocus;
end;

end.

