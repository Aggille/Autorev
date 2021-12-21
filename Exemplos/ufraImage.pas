{***************************************
 Componentes LAP Components
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit ufraImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,Dialogs, DBCtrls, StdCtrls, Buttons,
  FuncoesSystem, DB, ExtDlgs;

type
  TfraImage = class(TFrame)
    imgImagem: TDBImage;
    btnDelete: TBitBtn;
    btnInsert: TBitBtn;
    OpenPictureDialog: TOpenPictureDialog;
    lblCaption: TLabel;
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    FButtonInsertEnabled: Boolean;
    FButtonDeleteEnabled: Boolean;
    FDataField: string;
    FDataSource: TDataSource;
    FButtonDeleteClick: TNotifyEvent;
    FButtonInsertClick: TNotifyEvent;
    FFileName: string;
    FCaptionImagem: string;
    procedure DoButtonInsertClick(Sender: TObject);
    procedure DoButtonDeleteClick(Sender: TObject);
    procedure SetButtonDeleteEnabled(const Value: Boolean);
    procedure SetButtonInsertEnabled(const Value: Boolean);
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetCaptionImagem(const Value: string);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create (AOwner: TComponent); override;
    function Execute: Boolean;
    property FileName: string read FFileName write FFileName;
  published
    property OnButtonInsertClick: TNotifyEvent read FButtonInsertClick write FButtonInsertClick;
    property OnButtonDeleteClick: TNotifyEvent read FButtonDeleteClick write FButtonDeleteClick;
    property ButtonInsertEnabled: Boolean read FButtonInsertEnabled write SetButtonInsertEnabled default True;
    property ButtonDeleteEnabled: Boolean read FButtonDeleteEnabled write SetButtonDeleteEnabled default True;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property DataField: string read FDataField write SetDataField;
    property CaptionImagem: string read FCaptionImagem write SetCaptionImagem;    
  end;

procedure Register;

implementation


{$R *.dfm}

{ TfraImage }

procedure Register;
begin
  RegisterComponents('LAPComponents', [TfraImage]);
end;

procedure TfraImage.btnInsertClick(Sender: TObject);
begin
  DoButtonInsertClick(Self);
end;

procedure TfraImage.SetButtonDeleteEnabled(const Value: Boolean);
begin
  if FButtonDeleteEnabled <> Value then
  begin
    FButtonDeleteEnabled := Value;
    btnDelete.Enabled := Value;
  end;
end;

procedure TfraImage.SetButtonInsertEnabled(const Value: Boolean);
begin
  if FButtonInsertEnabled <> Value then
  begin
    FButtonInsertEnabled := Value;
    btnInsert.Enabled := Value;
  end;
end;

procedure TfraImage.SetDataField(const Value: string);
begin
  if FDataField <> Value then
  begin
    FDataField := Value;
    imgImagem.DataField := Value;
  end;
end;

procedure TfraImage.SetDataSource(const Value: TDataSource);
begin
  if FDataSource <> Value then
  begin
    FDataSource := Value;
    imgImagem.DataSource := Value;
  end;
end;

procedure TfraImage.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Operation = opRemove then
    if AComponent = FDataSource then
      FDataSource := nil;
end;

constructor TfraImage.Create(AOwner: TComponent);
begin
  inherited;
  btnInsert.OnClick := DoButtonInsertClick;
  btnDelete.OnClick := DoButtonDeleteClick;
  ButtonInsertEnabled := True;
  ButtonDeleteEnabled := True;
  CaptionImagem := 'CaptionImagem';
end;

procedure TfraImage.DoButtonDeleteClick(Sender: TObject);
begin
  if Assigned(FButtonDeleteClick) then
    FButtonDeleteClick(Self);
end;

procedure TfraImage.DoButtonInsertClick(Sender: TObject);
begin
  if Assigned(FButtonInsertClick) then
    FButtonInsertClick(Self);
end;

procedure TfraImage.btnDeleteClick(Sender: TObject);
begin
  DoButtonDeleteClick(Self);
end;

function TfraImage.Execute: Boolean;
begin
  Result := OpenPictureDialog.Execute;
  if Result then
    FFileName := OpenPictureDialog.FileName;
end;

procedure TfraImage.SetCaptionImagem(const Value: string);
begin
  if FCaptionImagem <> Value then
  begin
    FCaptionImagem := Value;
    lblCaption.Caption := Value;
    if lblCaption.Caption <> 'CaptionImagem' then
    begin
      btnDelete.Hint := 'Excluir '+ Value;
      btnInsert.Hint := 'Inserir '+ Value;
    end;
  end;
end;

end.
