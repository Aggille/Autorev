unit ufrLocalizarEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, DB, ComCtrls, StdCtrls,
  Buttons, Grids, DBGrids, DBClient, FuncoesBDSystem,
  FuncoesSystem;

type
  TCustomDBGridCracker = class(TCustomDBGrid);
  TfrLocalizarEx = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    rgBusca: TRadioGroup;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rgBuscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FDataSet: TClientDataSet;
    FDescrColumn: string;
    FAfterSearch: TAfterSearchEvent;
    FSQLCode: String;
    FSQLSearch: String;
    procedure ConfigGrid (DescrColumn : string);
    procedure SetDataSet(const Value: TClientDataSet);
    procedure SetDescrColumn(const Value: string);
    procedure DoAfterSearch(AModalResult: integer);
    procedure DBGridClick(Sender: TObject);
  public
    procedure Buscar;
    function EdtBusca : string;
    function GetCodigo: integer;

    property DataSet : TClientDataSet read FDataSet write SetDataSet;
    property DescrColumn : string read FDescrColumn write SetDescrColumn;
    property SQLCode: string read FSQLCode write FSQLCode;
    property SQLSearch: string read FSQLSearch write FSQLSearch;
    property AfterSearch: TAfterSearchEvent read FAfterSearch write FAfterSearch;
  end;

implementation

{$R *.dfm}
uses
  SystemException;

{ TfrLocalizarEx }
procedure TfrLocalizarEx.btnOkClick(Sender: TObject);
begin
  DoAfterSearch(mrOk);
  Close;
  ModalResult := mrOk;
end;

procedure TfrLocalizarEx.btnCancelClick(Sender: TObject);
begin
  DoAfterSearch(mrCancel);
  Close;
  ModalResult := mrCancel;  
end;

procedure TfrLocalizarEx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
{: se apertou ENTER, realiza a busca}
  if key = #13 then
    if Assigned(FDataSet) then
    begin
      Buscar;
      DBGrid1.SetFocus;
      StatusBar1.SimpleText := Format('%d registro(s) encontrado(s) com "%s"',
        [FDataSet.RecordCount, Edit1.Text]);
      Key:=#0;
    end;
end;

procedure TfrLocalizarEx.DBGrid1TitleClick(Column: TColumn);
begin
  if Assigned(FDataSet) then
    FDataSet.IndexFieldNames := Column.FieldName;
end;

procedure TfrLocalizarEx.Buscar;
begin
  FDataSet.Close;
  FDataSet.CommandText := '';
  case rgBusca.ItemIndex of
    0: begin
       try
         FDataSet.CommandText := FSQLCode;
         FDataSet.Params[0].AsInteger := StrToInt(Edit1.Text);
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
       FDataSet.Params[0].AsString := '%'+Edit1.Text+'%';
       end;
  end;
  FDataSet.Open;
  ConfigGrid(FDescrColumn);
end;

function TfrLocalizarEx.EdtBusca: string;
begin
  Result := Edit1.Text;
end;

procedure TfrLocalizarEx.DBGrid1DblClick(Sender: TObject);
begin
  if Assigned(FDataSet) then
    if FDataSet.RecordCount > 0 then
      begin
        DoAfterSearch(mrOk);
        Close;
        ModalResult := mrOk;
      end;
end;

procedure TfrLocalizarEx.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if Assigned(FDataSet) then
    btnOk.Enabled := FDataSet.RecordCount > 0;
end;

procedure TfrLocalizarEx.ConfigGrid(DescrColumn: string);
var
  i : integer;
begin
{: configura as duas colunas do Grid}
if Assigned(FDataSet) then
  begin
    DBGrid1.Columns[0].Title.Caption := 'Código';
    DBGrid1.Columns[1].Title.Caption := DescrColumn;
    for i := 0 to 1 do
      begin
        DBGrid1.Columns[i].Title.Font.Name := 'Verdana';
        DBGrid1.Columns[i].Title.Font.Style := [fsBold];
      end;
    DBGrid1.Columns[0].Title.Alignment := taCenter;
    DBGrid1.Columns[0].Alignment := taCenter;
    DBGrid1.Columns[0].Width := 80;
    DBGrid1.Columns[1].Width := 340;
  end;
end;

procedure TfrLocalizarEx.FormKeyDown(Sender: TObject; var Key: Word;
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
  {: se apertar F1 limpa a busca}
  if Key = VK_F1 then
    begin
      Edit1.Text := '';
      FDataSet.Close;
    end;
end;
end;

procedure TfrLocalizarEx.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
      if DataSource1.DataSet.RecordCount > 0 then
      begin
        DoAfterSearch(mrOk);
        Close;
        ModalResult := mrOk;
      end
      else
      begin
        DoAfterSearch(mrCancel);
        ModalResult := mrCancel;
      end;
end;

procedure TfrLocalizarEx.FormShow(Sender: TObject);
begin
  if not Assigned(FDataSet) then
    raise EPropriedadeNaoSetada.Create('DataSet');
  if FDataSet.RecordCount > 0 then
  StatusBar1.SimpleText := Format('%d registro(s) encontrado(s)', [FDataSet.RecordCount, Edit1.Text]);
end;

procedure TfrLocalizarEx.SetDataSet(const Value: TClientDataSet);
begin
  if FDataSet <> Value then
  begin
    FDataSet := Value;
    DataSource1.DataSet := FDataSet;
  end;
end;

procedure TfrLocalizarEx.SetDescrColumn(const Value: string);
begin
  if FDescrColumn <> Value then
  begin
    FDescrColumn := Value;
    ConfigGrid(FDescrColumn);
  end;
end;
function TfrLocalizarEx.GetCodigo: integer;
begin
  {: retorna o código escolhido}
  Result := DataSet.Fields[0].AsInteger;
end;

procedure TfrLocalizarEx.DoAfterSearch(AModalResult: integer);
begin
  if Assigned(FAfterSearch) then
    FAfterSearch(Self, AModalResult);
end;

procedure TfrLocalizarEx.rgBuscaClick(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TfrLocalizarEx.DBGridClick(Sender: TObject);
begin
//
end;

procedure TfrLocalizarEx.FormCreate(Sender: TObject);
begin
//  DBGrid1.ControlStyle := DBGrid1.ControlStyle + [csClickEvents];
//  TForm(DBGrid1).OnClick := DBGridClick;
end;

procedure TfrLocalizarEx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with TCustomDBGridCracker(Sender) do
  begin
   if DataLink.ActiveRecord = Row - 1 then
   begin
     Canvas.Brush.Color := clInfoBk;
     Canvas.Font.Style := [fsBold];
     Canvas.Font.Color := clBlack;
     Canvas.Font.Name := 'Verdana';
     Canvas.Font.Size := 8;
   end
   else
     Canvas.Font.Color := clBlack;
   DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
