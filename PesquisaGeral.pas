unit PesquisaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, DBClient, Mask, DBCtrls, Grids, DBGrids,
  Buttons, FuncoesSystem, IBSQL, IBCustomDataSet, FMTBcd, SqlExpr, Provider;
type
  TCustomDBGridCracker = class(TCustomDBGrid);
  TBoxPesquisar = class(TForm)
    Panel1: TPanel;
    DBGrid_Pesq: TDBGrid;
    BtnOK: TBitBtn;
    BtnCancelar: TBitBtn;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    cmbCampos: TComboBox;
    cmbTipo: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EditTexto: TEdit;
    cdsPesquisa: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    tblPesquisa: TIBDataSet;
    StatusBar1: TStatusBar;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EditTextoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_PesqTitleClick(Column: TColumn);
    procedure DBGrid_PesqDblClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_PesqKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbCamposChange(Sender: TObject);
    procedure DBGrid_PesqDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EditTextoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbCamposCloseUp(Sender: TObject);
    procedure cmbCamposKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_PesqDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure EditTextoEnter(Sender: TObject);
  private
    { Private declarations }
      FSQLCode: String;
      FSQLSearch: String;
      FDescrColumn: string;
      SrchFld: TField;
      FDataSet: TClientDataset;
      FAfterSearch: TAfterSearchEvent;
      procedure DoAfterSearch(AModalResult: integer);
      procedure SetDataSet(const Value: TClientDataSet);
      procedure SetDescrColumn(const Value: string);
//      procedure ConfigGrid (DescrColumn : string);
  public
    { Public declarations }
      procedure Buscar;
      property DataSet : TClientDataSet read FDataSet write SetDataSet;
      property AfterSearch: TAfterSearchEvent read FAfterSearch write FAfterSearch;
      property DescrColumn : string read FDescrColumn write SetDescrColumn;
      property SQLCode: string read FSQLCode write FSQLCode;
      property SQLSearch: string read FSQLSearch write FSQLSearch;
  end;

var
  BoxPesquisar: TBoxPesquisar;
  Resultado : String; //Integer;

implementation

uses SystemException, FDB, CadastroCfop, Biblioteca, Empresas;


{$R *.dfm}

procedure TBoxPesquisar.Buscar;
begin
 { FDataSet.Close;
  FDataSet.CommandText := '';
  case CmbCampos.ItemIndex of
    0: begin
       try
         FDataSet.CommandText := FSQLCode;
         FDataSet.Params[0].AsInteger := StrToInt(EditTexto.Text);
       except
         on E : EConvertError do
         begin
           raise Exception.Create('Digite um valor númerico para localizar pelo código!');
           ConfigGrid(FDescrColumn);
         end;
       end;
       end;
    1: begin
       FDataSet.CommandText := FSQLSearch;
       FDataSet.Params[0].AsString := '%'+EditTexto.Text+'%';
       end;
  end;
  FDataSet.Open;
  ConfigGrid(FDescrColumn); }
end;

//procedure TBoxPesquisar.ConfigGrid(DescrColumn: string);
{var
  i : integer;}
{: configura as duas colunas do Grid}
{if Assigned(FDataSet) then
  begin
    DBGrid_Pesq.Columns[0].Title.Caption := 'Código';
    DBGrid_Pesq.Columns[1].Title.Caption := DescrColumn;
    for i := 0 to 1 do
      begin
        DBGrid_Pesq.Columns[i].Title.Font.Name := 'Verdana';
        DBGrid_Pesq.Columns[i].Title.Font.Style := [fsBold];
      end;
    DBGrid_Pesq.Columns[0].Title.Alignment := taCenter;
    DBGrid_Pesq.Columns[0].Alignment := taCenter;
    DBGrid_Pesq.Columns[0].Width := 80;
    DBGrid_Pesq.Columns[1].Width := 340;
  end;}

procedure TBoxPesquisar.SetDescrColumn(const Value: string);
begin
{  if FDescrColumn <> Value then
  begin
    FDescrColumn := Value;
    ConfigGrid(FDescrColumn);
  end;}
end;

procedure TBoxPesquisar.SetDataSet(const Value: TClientDataSet);
begin
{  if FDataSet <> Value then
  begin
    FDataSet := Value;
    DataSource1.DataSet := FDataSet;
  end;}
end;

procedure TBoxPesquisar.BtnCancelarClick(Sender: TObject);
begin
  DoAfterSearch(mrCancel);
  Close;
  ModalResult := mrCancel;
end;

procedure TBoxPesquisar.DataSource1DataChange(Sender: TObject; Field: TField);
begin
{  if Assigned(FDataSet) then
    btnOk.Enabled := FDataSet.RecordCount > 0;}
end;

procedure TBoxPesquisar.DBGrid_PesqDblClick(Sender: TObject);
begin
   DoAfterSearch(mrCancel);
   close;
   Resultado := cdspesquisa.FieldByName(Biblioteca.camporetorno).value;
   
end;

procedure TBoxPesquisar.DBGrid_PesqDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with TCustomDBGridCracker(Sender) do
  begin
   if DataLink.ActiveRecord = Row - 1 then
   begin
     Canvas.Brush.Color := clInfoBk;
     Canvas.Font.Style := [fsBold];
     Canvas.Font.Color := clRed;
     Canvas.Font.Name := 'Tahoma';
     Canvas.Font.Size := 8;
   end
   else
     Canvas.Font.Color := clBlack;
     DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TBoxPesquisar.DBGrid_PesqDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
var
x : integer;
begin
  for x := 0 to Biblioteca.NumTitulos - 1 do
    begin
      DBGrid_Pesq.Columns[x].Title.Caption := Biblioteca.CampoTitulos[x];
      DBGrid_Pesq.Columns[x].Title.Alignment := taCenter;
    end;

end;

procedure TBoxPesquisar.DBGrid_PesqKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
     begin
      DoAfterSearch(mrCancel);
      Resultado := cdspesquisa.FieldByName(Biblioteca.camporetorno).value;
      Close;
     end;
   if Key = #27 then
      DoAfterSearch(mrCancel);
      close;
 {  if Key = #13 then          UTILIZE PARA DELETAR COLUNAS DO GRID
      DBGrid1.Columns[2].Free;}
end;

procedure TBoxPesquisar.DBGrid_PesqTitleClick(Column: TColumn);
begin
   cdsPesquisa.IndexFieldNames := Column.FieldName;
   cdsPesquisa.First;
end;

procedure TBoxPesquisar.DoAfterSearch(AModalResult: integer);
begin
{  if Assigned(FAfterSearch) then
    FAfterSearch(Self, AModalResult);}
end;

procedure TBoxPesquisar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {: se apertar ESC fecha o form}
if Assigned(FDataSet) then
begin
  if Key = VK_Escape then
    begin
      FDataSet.Close;
      Close;
      DoAfterSearch(mrCancel);
    end;
end;
end;

procedure TBoxPesquisar.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {: se apertou ESC, fecha janela}
  if Key = #27 then
   begin
    Close;
    DoAfterSearch(mrCancel);
   end;
end;

procedure TBoxPesquisar.EditTextoEnter(Sender: TObject);
begin
   // limpar o Edit.
   EditTexto.Clear;
end;

procedure TBoxPesquisar.EditTextoExit(Sender: TObject);
begin

  TBitBtn(BtnOk).SetFocus;
end;

procedure TBoxPesquisar.EditTextoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
   begin
    Close;
    DoAfterSearch(mrCancel);
   end;
{: se apertou ENTER, realiza a busca}
  if (Key = #13) then
   begin
    TBitBtn(BtnOK).SetFocus;
//    showmessage('a');

    if Assigned(FDataSet) then
    begin
      Buscar;
      DBGrid_Pesq.SetFocus;

      StatusBar1.SimpleText := Format('%d registro(s) encontrado(s) com "%s"',
        [FDataSet.RecordCount, EditTexto.Text]);

 //     StatusBar1.Panels[0].text := IntToStr(tblPesquisa.Recno) + '/ ' +
 //     IntToStr(tblPesquisa.RecordCount);

      showmessage(inttostr(fdataset.RecordCount));
      Key:=#0;
    end;
   end;

   end;

procedure TBoxPesquisar.EditCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
    DoAfterSearch(mrCancel);
  if Key = VK_RETURN then
   TBitBtn(BtnOK).SetFocus;
end;

procedure TBoxPesquisar.EditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
  begin
    Close;
    DoAfterSearch(mrCancel);
  end;
if Key = #13 then
   TBitBtn(BtnOK).SetFocus;
end;

procedure TBoxPesquisar.BtnOKClick(Sender: TObject);
var
   s, aSql, aWhere, Campo: string;
   x: integer;
begin
  cdsPesquisa.Active := False;
  if EditTexto.Text = '' then
    begin
      with tblPesquisa do
        begin
          Close;
          aSql := 'Select * from ' + Biblioteca.TabelaPesquisa;
          if biblioteca.CampoFiltro <> '' then
            begin
              aSql := aSql + ' Where (' +
               Biblioteca.CampoFiltro+''''+Biblioteca.CampoFiltro2+''''+ ')';
              if biblioteca.CampoFiltro3 <> '' then
                begin
                 aSql := aSql +
                   ' and Id_Concessionaria = '+
                   (BoxEmpresas.ID_ConcessionariaEmUso.Text);
                end;
            end;
          tblPesquisa.selectSql.Text := aSql;
          //cdsPesquisa.CommandText := aSql;
          Open;
        end;

        cdsPesquisa.Active := True;
      end
  else
   begin
    s := '';
    for x := 0 to CmbCampos.Items.Count - 1 do
     begin
      if x = 0 then
         s := CmbCampos.Items[x]
      else
         s := s + ',' + CmbCampos.Items[x];
     end;
    // descobrir o campo.
    Campo := CmbCampos.Text;
    // inicializar variáveis auxiliares
    aSql := '';
    aWhere := '';
    // montar cláusula where.
    if (biblioteca.CampoFiltro <> '') or (biblioteca.CampoFiltro3 <> '') then
      begin
       aWhere := ' Where ';
        if biblioteca.CampoFiltro <> '' then
         begin
          aWhere := aWhere + '(' +
           Biblioteca.CampoFiltro+''''+Biblioteca.CampoFiltro2+''''+')';
         end;
       if (biblioteca.CampoFiltro <> '') or (biblioteca.CampoFiltro3 <> '') then
         aWhere := aWhere +  ' and ';
       if biblioteca.CampoFiltro3 <> '' then
         begin
           aWhere := aWhere +
             'Id_Concessionaria = '+
            BoxEmpresas.ID_ConcessionariaEmUso.Text+' and ';
         end;
      end
    else
      begin
       aWhere := ' Where '
      end;
    case CmbTipo.ItemIndex of
      1: {Iniciais} aWhere := aWhere + Format(' Upper(%s) Like %s ', [Campo,
         QuotedStr(EditTexto.Text + '%')]);
      0: {Qualquer} aWhere := aWhere + Format(' Upper(%s) Like %s ', [Campo,
         QuotedStr('%' + EditTexto.Text + '%')]);
      2: {Exata   } aWhere := aWhere + Format(' Upper(%s) = %s ', [Campo,
         QuotedStr(EditTexto.Text)]);
    end;
    aSql := Format('Select %s From %s %s', [s, Biblioteca.TabelaPesquisa, aWhere]);
//    showmessage(asql);
    with tblPesquisa do
     begin
      Close;
      tblPesquisa.selectSql.Text := aSql;
      Open;
     end;
     cdsPesquisa.Active := True;
   end;
   DataSource1.Dataset.Open;
   StatusBar1.SimpleText := FormatFloat('##,##0',
     DBGrid_Pesq.DataSource.DataSet.RecordCount)+' registro(s) encontrado(s)' ;

//     StatusBar1.SimpleText := inttostr(DataSource1.Dataset.RecordCount)+' registro(s) encontrado(s)';

   if DataSource1.Dataset.RecordCount = 0 then
     Showmessage('Nenhum registro localizado.')
   else
     DBGrid_Pesq.SetFocus;
end;

procedure TBoxPesquisar.CmbCamposChange(Sender: TObject);
begin
  SrchFld := Datasource1.Dataset.FieldByName(CmbCampos.Text);
  EditTexto.Clear;
end;

procedure TBoxPesquisar.cmbCamposCloseUp(Sender: TObject);
begin
   EditTexto.SetFocus;
end;

procedure TBoxPesquisar.cmbCamposKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
  begin
    Close;
    DoAfterSearch(mrCancel);
  end;
if Key = #13 then
   CmbTipo.SetFocus;
end;

procedure TBoxPesquisar.cmbTipoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
  begin
    Close;
    DoAfterSearch(mrCancel);
  end;
if Key = #13 then
   EditTexto.SetFocus;
end;

procedure TBoxPesquisar.FormShow(Sender: TObject);
begin
    CmbTipo.ItemIndex := 0;
    Cmbcampos.SetFocus;
end;

procedure TBoxPesquisar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  BoxPesquisar := nil;
end;

end.
