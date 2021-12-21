{***************************************
 Componentes LAP Components
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit uLocalizarEx;

interface

uses
  Classes, Forms, DB, Dialogs, ufrLocalizarEx, Graphics, Controls,
  DBClient, FuncoesSystem;

  type
   TLocalizarEx = class(TComponent)
   private
    FTitle: string;
    FDataSet: TClientDataSet;
    FFormLocalizar : TfrLocalizarEx;
    FDescrColumn: string;
    FAfterSearch: TAfterSearchEvent;
    FSQLCode: String;
    FSQLClient: string;
    procedure SetDataSet(const Value: TClientDataSet);
    procedure SetTitle(const Value: string);
    procedure SetDescrColumn(const Value: string);
    procedure DoAfterSearch(Sender: TObject; AModalResult: integer);
    procedure SetSQLCode(const Value: String);
   protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
   public
     function Execute: Boolean;
     function EdtBusca: string;
     function ReturnValue: integer;
   published
    property DataSet: TClientDataSet read FDataSet write SetDataSet;
    property Title : string read FTitle write SetTitle;
    property DescrColumn : string read FDescrColumn write SetDescrColumn;
    property AfterSearch: TAfterSearchEvent read FAfterSearch write FAfterSearch;
    property SQLCode: String read FSQLCode write SetSQLCode;
  end;

procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('LAPComponents',[TLocalizarEx]);
end;

{ TLocalizarEx }

procedure TLocalizarEx.DoAfterSearch(Sender: TObject;
  AModalResult: integer);
begin
 if Assigned(FAfterSearch) then
    FAfterSearch(self, AModalResult);
end;

function TLocalizarEx.EdtBusca: string;
begin
  Result := FFormLocalizar.EdtBusca;
end;

function TLocalizarEx.Execute : Boolean;
begin
  if not FDataSet.Active then
    FDataSet.Active := True;
  FSQLClient := FDataSet.CommandText;
  FFormLocalizar := TfrLocalizarEx.Create(nil);
  try
    FFormLocalizar.DataSet := FDataSet;
    FFormLocalizar.DescrColumn := FDescrColumn;
    FFormLocalizar.Caption := FTitle;
    FFormLocalizar.SQLCode := FSQLCode;
    FFormLocalizar.SQLSearch := FSQLClient;
    FFormLocalizar.AfterSearch := DoAfterSearch;
    FFormLocalizar.ShowModal;
    Result := (FFormLocalizar.ModalResult = mrOk);
  finally
    FFormLocalizar.Free;
  end;
end;

procedure TLocalizarEx.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Operation = opRemove then
    if AComponent = FDataSet then
      FDataSet := nil;
end;

function TLocalizarEx.ReturnValue: integer;
begin
  {: retorna o código escolhido no Grid}
  Result := FFormLocalizar.GetCodigo;
end;

procedure TLocalizarEx.SetDataSet(const Value: TClientDataSet);
begin
  if FDataSet <> Value then
    begin
    FDataSet := Value;
    if Assigned(FFormLocalizar) then
      FFormLocalizar.DataSource1.DataSet := FDataSet;
    end;
end;

procedure TLocalizarEx.SetDescrColumn(const Value: string);
begin
  if FDescrColumn <> Value then
    FDescrColumn := Value;
end;

procedure TLocalizarEx.SetSQLCode(const Value: String);
begin
  if FSQLCode <>  Value then
    FSQLCode := Value;
end;

procedure TLocalizarEx.SetTitle(const Value: string);
begin
  if FTitle <> Value then
   FTitle := Value;
end;

end.
