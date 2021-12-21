unit OperacoesPosVendaServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, IBCustomDataSet, Grids,
  DBGrids, StdCtrls, Buttons, ToolWin, Mask, DBCtrls, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls;

type
  TBoxPosVendaServicos = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tblAtendimentoServicos: TIBDataSet;
    tblAtendimentoServicosID_ATENDIMENTO_SERVICOS: TIntegerField;
    tblAtendimentoServicosID_CONCESSIONARIA: TIntegerField;
    tblAtendimentoServicosID_ATENDIMENTO: TIntegerField;
    tblAtendimentoServicosID_TMO: TIntegerField;
    tblAtendimentoServicosTEMPO: TIBBCDField;
    tblAtendimentoServicosPRECO: TIBBCDField;
    DataSourceAtendimentoServicos: TDataSource;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    BtnNovo: TBitBtn;
    BtnConfirma: TBitBtn;
    BtnExclui: TBitBtn;
    BtnConclui: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Preco: TDBEdit;
    Servico: TDBLookupComboBox;
    Label4: TLabel;
    tblTMO: TIBDataSet;
    DataSourceTMO: TDataSource;
    tblTMOID_TMO: TIntegerField;
    tblTMOCODIGO: TIBStringField;
    tblTMODESCRICAO: TIBStringField;
    tblTMOTEMPO: TIBBCDField;
    tblTMOTEMPO_GAR: TIBBCDField;
    tblTMOREV_GRAT: TIBStringField;
    tblTMOID_CATEGORIA: TIntegerField;
    Tempo: TJvDBMaskEdit;
    tblcategoria: TIBDataSet;
    DataSourceCategoria: TDataSource;
    tblcategoriaID_CATEGORIA: TIntegerField;
    tblcategoriaDESCRICAO: TIBStringField;
    tblcategoriaPRECO: TIBBCDField;
    tblcategoriaPRECO_GAR: TIBBCDField;
    tblAtendimentoServicosSERVICO: TStringField;
    tblTMO2: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBStringField3: TIBStringField;
    DataSourceTMO2: TDataSource;
    procedure tblAtendimentoServicosAfterCancel(DataSet: TDataSet);
    procedure tblAtendimentoServicosAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure PrecoExit(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnConcluiClick(Sender: TObject);
    procedure ServicoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDs;
    procedure FecharDs;
  end;

var
  BoxPosVendaServicos: TBoxPosVendaServicos;

implementation

uses FDB, OperacoesPosVenda, Empresas;

{$R *.dfm}

procedure TBoxPosVendaServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BoxPosVenda.CalculaTotais;
  FecharDs;
end;

procedure TBoxPosVendaServicos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSourceAtendimentoServicos.State in [dsEdit, DsInsert] then
 case MessageDlg('Sair sem salvar?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes: CanClose := True;
    mrNo : CanClose := False;
 end;
end;

procedure TBoxPosVendaServicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
{  EnableDisableButtons(True);      }
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

procedure TBoxPosVendaServicos.FormShow(Sender: TObject);
begin
  tblTMO.ParamByName('idCategoria').AsInteger :=
    BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
  tblCategoria.ParamByName('idCategoria').AsInteger :=
    BoxPosVenda.tblAtendimento.FieldByName('Id_Categoria').AsInteger;
  tblAtendimentoServicos.ParamByName('idAtendimento').AsInteger :=
    BoxPosVenda.idAtendimento;
  AbrirDs;
  if (not BoxPosVenda.Editar) then
   begin
    ToolBar1.Enabled := False;
    Servico.Enabled := False;
    Tempo.Enabled := False;
    Preco.Enabled := False;
   end
  else
   BtnNovo.SetFocus;
end;

procedure TBoxPosVendaServicos.PrecoExit(Sender: TObject);
begin
  BtnConfirma.SetFocus;
end;

procedure TBoxPosVendaServicos.ServicoExit(Sender: TObject);
begin
  if BoxPosVenda.tblAtendimento.FieldByName('Orc_OS').AsInteger = 3 then //Os-Garantia
    begin
      tblAtendimentoServicos.FieldByName('Tempo').AsFloat :=
         tblTmo.FieldByName('Tempo_Gar').AsFloat;
      tblAtendimentoServicos.FieldByName('Preco').AsFloat :=
         tblCategoria.FieldByName('Preco_Gar').AsFloat;
    end
  else  // Os-Normal - Orçamento - Os-Cortesia
    begin
      tblAtendimentoServicos.FieldByName('Tempo').AsFloat :=
         tblTmo.FieldByName('Tempo').AsFloat;
      tblAtendimentoServicos.FieldByName('Preco').AsFloat :=
         tblCategoria.FieldByName('Preco').AsFloat;
    end;
end;

procedure TBoxPosVendaServicos.tblAtendimentoServicosAfterCancel(
  DataSet: TDataSet);
begin
 Fdb1.IBTransaction.RollbackRetaining;
end;

procedure TBoxPosVendaServicos.tblAtendimentoServicosAfterPost(
  DataSet: TDataSet);
begin
  Fdb1.IBTransaction.CommitRetaining;
end;

procedure TBoxPosVendaServicos.BtnConcluiClick(Sender: TObject);
begin
  BoxPosVenda.CalculaTotais;
  Close;
end;

procedure TBoxPosVendaServicos.BtnConfirmaClick(Sender: TObject);
begin
  tblAtendimentoServicos.FieldByName('Id_Concessionaria').AsInteger :=
    StrToInt(BoxEmpresas.ID_ConcessionariaEmUso.Text);
  tblAtendimentoServicos.FieldByName('id_Atendimento').AsInteger :=
    BoxPosVenda.tblAtendimento.FieldByName('Id_Atendimento').AsInteger;
  tblAtendimentoServicos.Post;
  BtnNovo.SetFocus;
  tempo.Text := '0';
end;

procedure TBoxPosVendaServicos.BtnExcluiClick(Sender: TObject);
begin
 case MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes,mbNo], 0) of
    mrYes:
    begin
      tblAtendimentoServicos.Delete;
      BtnNovo.SetFocus;
    end;
 end;
end;

procedure TBoxPosVendaServicos.BtnNovoClick(Sender: TObject);
begin
  tblAtendimentoServicos.Insert;
  Servico.SetFocus;
end;

procedure TBoxPosVendaServicos.FecharDs;
begin
  DataSourceAtendimentoServicos.Dataset.Close;
  DataSourceTMO.DataSet.Close;
  DataSourceCategoria.Dataset.Close;
end;

procedure TBoxPosVendaServicos.AbrirDs;
begin
  DataSourceAtendimentoServicos.Dataset.Open;
  DataSourceTMO.DataSet.Open;
    DataSourceTMO2.DataSet.Open;
  DataSourceCategoria.Dataset.Open;
end;

end.
