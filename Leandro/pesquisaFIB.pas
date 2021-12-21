{
 fmPesquisa... Pesquisa Genérica.
 Alessandro Ferreira
 The Club, o maior clube de programadores do Brasil, 2003.
}
unit pesquisaFIB;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DB, Buttons, FIBDataSet, pFIBDataSet, Wwdbigrd, Wwdbgrid;

type
   TfrmPesquisa = class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      cmbCampos: TComboBox;
      Label2: TLabel;
      EdTexto: TEdit;
      dsPesq: TDataSource;
      Label3: TLabel;
      cmbTipo: TComboBox;
      BitBtn2: TBitBtn;
    tblPesquisa: TpFIBDataSet;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
      procedure cmbCamposCloseUp(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure EdTextoEnter(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
      Campos: TStringList;

   public
      { Public declarations }
      Tablename: string;
      //    constructor Create(AOwner: TComponent; DataSet: TSimpleDataSet; TableName: string); reintroduce;
   end;

var
   frmPesquisa: TfrmPesquisa;

implementation


{$R *.dfm}

{ TfmPesquisa }

{constructor TfrmPesquisa.Create(AOwner: TComponent; DataSet: TSimpleDataSet; TableName: string);
var
  i: integer;
begin
  inherited Create(AOwner);
  Tabela := TableName;
  // liga DataSource
  dsPesq.DataSet := DataSet;
  // guardar nome dos campos.
  Campos := TStringList.Create;
  // Preenche campos no combobox
  for i := 0 to DataSet.FieldCount-1 do
    if DataSet.Fields[i].DataType in [ftString, ftInteger] then
    begin
      cmbCampos.Items.Add(DataSet.Fields[i].DisplayLabel);
      Campos.Add(DataSet.Fields[i].FieldName);
    end;
  // Posiciona no primeiro item
  if cmbCampos.Items.Count>0 then
    cmbCampos.ItemIndex := 0;
end;
 }

procedure TfrmPesquisa.cmbCamposCloseUp(Sender: TObject);
begin
   EdTexto.SetFocus;
end;

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
   cmbTipo.ItemIndex := 0;
end;

procedure TfrmPesquisa.EdTextoEnter(Sender: TObject);
begin
   // limpar o Edit.
   EdTexto.Clear;
end;

procedure TfrmPesquisa.BitBtn1Click(Sender: TObject);
var
   s, aSql, aWhere, Campo: string;
   x: integer;

begin
   x := 0;
   s := '';

   for x := 0 to cmbCampos.items.Count - 1 do
   begin
      if x = 0 then
         s := cmbcampos.Items[x]
      else
         s := s + ',' + cmbcampos.Items[x];
   end;

   // descobrir o campo.
   Campo := cmbCampos.Text;
   // inicializar variáveis auxiliares
   aSql := '';
   aWhere := '';
   // montar cláusula where.
   case cmbTipo.ItemIndex of
      0: {Iniciais} aWhere := Format(' Where Upper(%s) Like %s ', [Campo,
         QuotedStr(EdTexto.Text + '%')]);
      1: {Qualquer} aWhere := Format(' Where Upper(%s) Like %s ', [Campo,
         QuotedStr('%' + EdTexto.Text + '%')]);
      2: {Exata   } aWhere := Format(' Where Upper(%s) = %s ', [Campo,
         QuotedStr(EdTexto.Text)]);
   end;

   aSql := Format('Select %s From %s %s', [s, Tablename, aWhere]);
   aSql := aSql + ' order by ' + cmbcampos.Items[0];
   with tFIbDataset(dsPesq.DataSet) do
   begin
      Close;
      sqls.selectsql.clear;
      sqls.selectsql.add(aSql);
      Open;
   end;
end;

end.

