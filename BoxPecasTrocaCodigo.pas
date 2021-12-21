unit BoxPecasTrocaCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, Buttons;

type
  TForm1 = class(TForm)
    tblPecasMovimentacao: TIBDataSet;
    tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField;
    tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField;
    tblPecasMovimentacaoID_PECAS: TIntegerField;
    tblPecasMovimentacaoMOVIMENTO: TIBStringField;
    tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField;
    tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField;
    tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField;
    tblPecasMovimentacaoDATA: TDateField;
    tblPecasMovimentacaoNF: TIBStringField;
    tblPecasMovimentacaoEMISSAO: TDateField;
    DataSourcePecasMovimentacao: TDataSource;
    DataSourcePecas: TDataSource;
    tblPecas: TIBDataSet;
    tblPecasID_PECAS: TIntegerField;
    tblPecasCODIGO: TIBStringField;
    tblPecasDESCRICAO: TIBStringField;
    tblPecasGRUPO: TIBStringField;
    tblPecasESPECIAL: TIBStringField;
    tblPecasCOD_PROC: TIBStringField;
    tblPecasCOD_TRIB: TIBStringField;
    tblPecasUNIDADE: TIBStringField;
    tblPecasSUBSTITUTO: TIBStringField;
    tblPecasFORA_LINHA: TIBStringField;
    tblPecasMIN_PEDIDO: TIntegerField;
    tblPecasQTD_PEDIDA: TIntegerField;
    tblPecasICMS: TIBBCDField;
    tblPecasPRECO: TIBBCDField;
    tblPecasPRECO_GAR: TIBBCDField;
    tblPecasIPI: TIBBCDField;
    tblPecasLISTA: TIBStringField;
    tblPecasSUBST_TRIB: TIBStringField;
    tblPecasST_COFINS: TIBStringField;
    tblPecasNOVASUBS: TIBStringField;
    tblPecasCFOP1: TIBStringField;
    tblPecasCFOP2: TIBStringField;
    tblPecasNCM: TIBStringField;
    tblPecasPPS: TIBBCDField;
    tblPecasORIGINAL: TIBStringField;
    tblPecasCST: TIBStringField;
    tblPecasEstoque: TIBDataSet;
    tblPecasEstoqueID_PECAS: TIntegerField;
    tblPecasEstoqueID_CONCESSIONARIA: TIntegerField;
    tblPecasEstoqueESTOQUE: TIntegerField;
    tblPecasEstoqueESTOQOS: TIntegerField;
    tblPecasEstoqueLOCAL: TIBStringField;
    DataSourcePecasEstoque: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnConfirma: TBitBtn;
    Sequencia_Velha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Sequencia_nova: TEdit;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure tblPecasEstoqueAfterCancel(DataSet: TDataSet);
    procedure tblPecasEstoqueAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses FDB;

{$R *.dfm}

procedure TForm1.BtnConfirmaClick(Sender: TObject);
begin
  with tblPecasEstoque do
  begin
    Close;
    ParamByName('id').AsInteger := StrToInt(Sequencia_Velha.Text);
    Open;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('id_Pecas').AsInteger := StrToInt(Sequencia_nova.Text);
      Post;
      Next;
    end;
  end;
  with tblPecasMovimentacao do
  begin
    Close;
    ParamByName('id').AsInteger := StrToInt(Sequencia_Velha.Text);
    Open;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('id_Pecas').AsInteger := StrToInt(Sequencia_nova.Text);
      Post;
      Next;
    end;
  end;
  With tblPecas do
  begin
    Close;
    ParamByName('id').AsInteger := StrToInt(Sequencia_Velha.Text);
    Open;
    First;
    Delete;
    Post;
  end;
end;

procedure TForm1.tblPecasEstoqueAfterCancel(DataSet: TDataSet);
begin
  FDB1.IBtransaction.RollbackRetaining;
end;

procedure TForm1.tblPecasEstoqueAfterPost(DataSet: TDataSet);
begin
  FDB1.IBTransaction.CommitRetaining;
end;

end.
