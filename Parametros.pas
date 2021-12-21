unit Parametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvStatusBar, ExtCtrls, ImgList, ActnList,
  StdCtrls, Buttons, ToolWin, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls, DB, IBCustomDataSet, IBDatabase, Grids, DBGrids, JvExDBGrids,
  JvDBGrid;

type
  TBoxParametros = class(TForm)
    JvStatusBar1: TJvStatusBar;
    Panel1: TPanel;
    ActionList1: TActionList;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    IBTransaction1: TIBTransaction;
    tblParametros: TIBDataSet;
    JvDBGrid1: TJvDBGrid;
    BtnOK: TBitBtn;
    BtnCancelar: TBitBtn;
    tblParametrosID_PARAMETROS: TIntegerField;
    tblParametrosSOBRE_PRECO_PECAS: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DoAfterClose;
    procedure tblParametrosAfterCancel(DataSet: TDataSet);
    procedure tblParametrosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxParametros: TBoxParametros;

implementation

{$R *.dfm}

procedure TBoxParametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with tblParametros do
    Close;
end;

procedure TBoxParametros.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    DoAfterClose;
    close;
   end;
        {: troca ENTER por TAB}
  if key = #13 then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
    key:=#0;
  end
end;

procedure TBoxParametros.DoAfterClose;
begin
  DataSource1.Dataset.Close;
  Close;
end;

procedure TBoxParametros.FormShow(Sender: TObject);
begin
  with tblParametros do
    Open;
end;

procedure TBoxParametros.tblParametrosAfterCancel(DataSet: TDataSet);
begin
   IBTransaction1.RollbackRetaining;
end;

procedure TBoxParametros.tblParametrosAfterPost(DataSet: TDataSet);
begin
   IBTransaction1.CommitRetaining;
end;

end.
