unit OperacoesSeguro2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, IBDatabase, IBCustomDataSet, ImgList,
  ActnList, StdCtrls, Buttons, ToolWin, Mask, DBCtrls, JvToolEdit, JvDBControls,
  JvExMask, JvMaskEdit;

type
  TBoxSeguro2 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    BtnProcurar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    ActionList1: TActionList;
    Procurar: TAction;
    Consultar: TAction;
    Novo: TAction;
    Editar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Salvar: TAction;
    ImageList1: TImageList;
    tblSeguros: TIBDataSet;
    dtsSeguros: TDataSource;
    tblSegurosID_SEGURO: TIntegerField;
    tblSegurosID_PEDIDO_VEICULOS: TIntegerField;
    tblSegurosCORRETORA: TIBStringField;
    tblSegurosVALOR_PREMIO: TIBBCDField;
    tblSegurosDATA: TDateField;
    tblSegurosID_CLIENTES: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ValorDevido: TJvDBMaskEdit;
    Vencimento: TJvDBDateEdit;
    Pedido: TJvDBMaskEdit;
    CodigoCliente: TJvDBMaskEdit;
    FormaPagamento: TDBLookupComboBox;
    tblCorretora: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBBCDField1: TIBBCDField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    dtsCorretora: TDataSource;
    tblSegurosID_VENDEDOR: TIntegerField;
    Label7: TLabel;
    CodigoVendedor: TJvDBMaskEdit;
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoxSeguro2: TBoxSeguro2;

implementation

uses FDB;

{$R *.dfm}

procedure TBoxSeguro2.BtnNovoClick(Sender: TObject);
begin
  {: novo registro}
  DtsSeguros.Dataset.Open;
  DtsSeguros.DataSet.Insert;
  EnableDisableControls(True, False, True);
  BtnExcluir.Enabled := False;
  Excluir.Enabled := False;
  BtnEditar.Enabled := False;
  Editar.Enabled  := false;
  EditSequencia.Enabled := False;
  EditSequencia.Text := '';
  JVDBMaskEditCodigo.SetFocus;
  PermissoesForm;
  Restricoes;

end;

end.
