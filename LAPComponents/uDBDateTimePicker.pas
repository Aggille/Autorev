{***************************************
 Componentes LAP Components
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit uDBDateTimePicker;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, DBCtrls, DB;

type
  TDBDateTimePicker = class(TDateTimePicker)
  private
    FFieldDataLink: TFieldDataLink;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure DataChange (Sender: TObject);
    procedure UpdateData (Sender: TObject);
  protected
    procedure Change; override;
    procedure CMExit(
      var Message: TCMExit); message CM_EXIT;
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property DataField: string read GetDataField
      write SetDataField;
    property DataSource: TDataSource
      read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('LAPComponents', [TDBDateTimePicker]);
end;

{ TDBDateTimePicker }

constructor TDBDateTimePicker.Create(AOwner: TComponent);
begin
  inherited;
  FFieldDataLink := TFieldDataLink.Create();
  FFieldDataLink.Control := Self;
  FFieldDataLink.OnDataChange := DataChange;
  FFieldDataLink.OnUpdateData := UpdateData;
end;

destructor TDBDateTimePicker.Destroy;
begin
  FFieldDataLink.Free;
  inherited;
end;

function TDBDateTimePicker.GetDataField: string;
begin
  Result := FFieldDataLink.FieldName;
end;

function TDBDateTimePicker.GetDataSource: TDataSource;
begin
  Result := FFieldDataLink.DataSource;
end;

procedure TDBDateTimePicker.SetDataField(
  const Value: string);
begin
  FFieldDataLink.FieldName := Value;
end;

procedure TDBDateTimePicker.SetDataSource(
  const Value: TDataSource);
begin
  FFieldDataLink.DataSource := Value;
end;

procedure TDBDateTimePicker.Change;
begin
  if not FFieldDataLink.Editing then
    FFieldDataLink.Edit;
  FFieldDataLink.Modified;
  inherited;
end;

procedure TDBDateTimePicker.UpdateData(Sender: TObject);
begin
  FFieldDataLink.Field.AsDateTime := Self.DateTime;
end;

procedure TDBDateTimePicker.CMExit(var Message: TCMExit);
begin
  try
    FFieldDataLink.UpdateRecord;
  except
    on E:Exception do Self.SetFocus;
  end;
  inherited;
end;

procedure TDBDateTimePicker.DataChange(Sender: TObject);
begin
  if Assigned(FFieldDataLink.DataSource) and
    Assigned(FFieldDataLink.Field) then
      Self.DateTime := FFieldDataLink.Field.AsDateTime;
end;

end.
