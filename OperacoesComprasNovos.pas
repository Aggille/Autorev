unit OperacoesComprasNovos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, ExtDlgs, ufraImage, ExtActns, StdActns, Grids, DBGrids, DBTables,
  rxToolEdit, rxCurrEdit, rxMemTable, RxLookup, RXDBCtrl, JvMaskEdit,
  JvDBControls, JvDataSource, JvExMask, JvToolEdit, JvExComCtrls, JvStatusBar,
  JvBaseDlg, JvCalc, IBDatabase, IBCustomDataSet, ToolWin, JvBaseEdits,
  JvExStdCtrls, JvEdit, IBQuery, JvErrorIndicator, JvValidators, JvComponentBase,
  Wwdbigrd, Wwdbgrid;

type
  TBoxComprasNovos = class(TForm)
    JvStatusBar1: TJvStatusBar;
    tblNofi: TIBDataSet;
    DataSourceNofi: TDataSource;
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
    tblVeiculosCOMBUSTIVEL: TIBStringField;
    tblVeiculosORIGEM: TIBStringField;
    DataSourceVeiculos: TDataSource;
    tblVeiculosID_COMPRADOR: TIntegerField;
    tblVeiculosCST: TIBStringField;
    tblVeiculosID_MODELO_VEICULO: TIntegerField;
    Panel1: TPanel;
    Label5: TLabel;
    Chave: TMaskEdit;
    BtnConfirmaChave: TBitBtn;
    BtnConsulta: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    edtChassi: TEdit;
    BtnRENAVE: TBitBtn;
    procedure FecharDs;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblConhecimentoAfterPost(DataSet: TDataSet);
    procedure tblConhecimentoAfterCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnConfirmaChaveClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRENAVEClick(Sender: TObject);

  private
    { Private declarations }
     NumeroProdutosDigitados : integer; {quantidade de produtos digitados}
     NumeroNfsDigitadas : integer; {quantidade de notas digitadas}
     QtdeNfsLote : integer;   {quantidade de notas no lote}
     QtdeProdutosLote : integer; {quantidade de produtos na NF}
     nf :integer;

  public
     idFornecedor : Integer;
     idNota : String;
    end;

var
  BoxComprasNovos: TBoxComprasNovos;
  Retorno : String;

implementation

uses FDB, Empresas, PesquisaGeral, Biblioteca, SystemException,
  OperacoesComprasUsados, OperacoesComprasPecas,
  OperacoesComprasNovosImportacao, UBoxEntradaVeiculo0KM;

{$R *.dfm}

procedure TBoxComprasNovos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharDs;
  Action :=caFree;
  BoxComprasNovos := nil;
end;

procedure TBoxComprasNovos.FormKeyPress(Sender: TObject; var Key: Char);
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
  end
end;

procedure TBoxComprasNovos.FormShow(Sender: TObject);
begin
  Chave.SetFocus;
end;

procedure TBoxComprasNovos.BtnImportarClick(Sender: TObject);
begin
    if not Assigned(BoxComprasNovosImportacao) then
    BoxComprasNovosImportacao := TBoxComprasNovosImportacao.Create(Self);
  BoxComprasNovosImportacao.Show;
end;

procedure TBoxComprasNovos.BtnRENAVEClick(Sender: TObject);
begin
  Application.CreateForm( TBoxEntradaVeiculo0KM, BoxEntradaVeiculo0KM );
  BoxEntradaVeiculo0KM.carregaVeiculo(edtChassi.Text);
  BoxEntradaVeiculo0km.edtCpfOperador.Text := BoxEmpresas.CPF_RENAVE;
  BoxEntradaVeiculo0KM.EdtChassi.Text := edtChassi.Text;
  BoxEntradaVeiculo0KM.ShowModal;
  Chave.SetFocus;
end;

procedure TBoxComprasNovos.tblConhecimentoAfterCancel(DataSet: TDataSet);
begin
   FDB1.IBTransaction.RollbackRetaining;
end;

procedure TBoxComprasNovos.tblConhecimentoAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

procedure TBoxComprasNovos.BtnConsultaClick(Sender: TObject);
begin
  with tblNofi do
  begin
    Close;
    ParamByName('idChave').AsString := Chave.Text;
    Open;
    if recordCount = 0 then
      Showmessage('Nota fiscal não localizada.'+#13+
       'Importe o XML primeiro.')
    else
     if FieldByName('Status').AsString = 'Fechado' then
       Showmessage('Nota Fiscal já recebida.');
      BtnConfirmaChave.SetFocus;
  end;
end;

procedure TBoxComprasNovos.BtnConfirmaChaveClick(Sender: TObject);
begin
try
  with tblNofi do
  begin
    Close;
    ParamByName('idChave').AsString := Chave.Text;
    Open;
    if recordCount <> 0 then
     if FieldByName('Status').AsString = 'Fechado' then
      showmessage('Nota fiscal já recebida.')
     else
       if FieldByName('id_Concessionaria').AsString <> BoxEmpresas.ID_ConcessionariaEmUso.Text then
         Showmessage('NF pertence à outra concessionária.')
       else
        begin
         idFornecedor := FieldByName('Id_Clientes').AsInteger;
         idNota := FieldByName('Numero').AsString;
         Edit;
         FieldByName('Status').AsString := 'Fechado';
         FieldByName('Saida').AsDateTime := DataAtual;
         Post;
         with tblveiculos do
         begin
          Close;
          ParamByName('idFornecedor').AsInteger := IdFornecedor;
          PAramByName('idNota').AsString := IdNota;
          Open;
          while not eof do
          begin
            Edit;
            FieldByName('Status').AsString := FieldByName('Estoque').AsString;
            edtChassi.Text := FieldByName('Chassi').AsString;
            Post;
            Next;
          end;
         end;
         Showmessage('Recebimento com sucesso.');
        end
    else
      Showmessage('Nota fiscal não localizada.'+#13+
       'Importe o XML primeiro.');
  end;
except
   on e:Exception do
   begin
     showmessage( 'Erro de gravação:' + e.message );
     abort;
     exit;
   end;
end;
  BtnRENAVE.SetFocus; //chave.setfocus;
end;

procedure TBoxComprasNovos.FecharDs;
begin
    DataSourceNofi.Dataset.Close;
    DataSourceVeiculos.Dataset.Close;    
end;

end.
