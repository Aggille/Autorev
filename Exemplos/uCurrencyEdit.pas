{***************************************
 Componentes LAP Components
 Luciano Almeida Pimenta
 lucianopimenta@clubedelphi.net
******************************************}
unit uCurrencyEdit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Menus, Forms, Dialogs, StdCtrls;

type
  TCurrencyEditEx = class(TCustomMemo)
  private
    DispFormat: string;
    FieldValue: Extended;
    FDecimalPlaces : Word;
    FPosColor : TColor;
    FNegColor : TColor;
    procedure SetFormat(A: string);
    procedure SetFieldValue(A: Extended);
    procedure SetDecimalPlaces(A: Word);
    procedure SetPosColor(A: TColor);
    procedure SetNegColor(A: TColor);
    procedure CMEnter(var Message: TCMEnter);  message CM_ENTER;
    procedure CMExit(var Message: TCMExit);    message CM_EXIT;
    procedure FormatText;
    procedure UnFormatText;
  protected
    procedure KeyPress(var Key: Char); override;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Alignment default taRightJustify;
    property AutoSize default True;
    property BorderStyle;
    property Color;
    property Ctl3D;
    property DecimalPlaces: Word read FDecimalPlaces write SetDecimalPlaces default 2;
    property DisplayFormat: string read DispFormat write SetFormat;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property MaxLength;
    property NegColor: TColor read FNegColor write SetNegColor default clRed;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property PosColor: TColor read FPosColor write SetPosColor default clBlack;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property Value: Extended read FieldValue write SetFieldValue;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('LAPComponents', [TCurrencyEditEx]);
end;

constructor TCurrencyEditEx.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  AutoSize := False;
  Alignment := taRightJustify;
  Width := 121;
  Height := 21;
  DispFormat := 'R$ ,0.00;(R$ ,0.00)';
  FieldValue := 0.0;
  FDecimalPlaces := 2;
  FPosColor := Font.Color;
  FNegColor := clRed;
  AutoSelect := False;
  WordWrap := False;
  FormatText;
end;

procedure TCurrencyEditEx.SetFormat(A: String);
begin
  if DispFormat <> A then
    begin
      DispFormat:= A;
      FormatText;
    end;
end;

procedure TCurrencyEditEx.SetFieldValue(A: Extended);
begin
  if FieldValue <> A then
    begin
      FieldValue := A;
      FormatText;
    end;
end;

procedure TCurrencyEditEx.SetDecimalPlaces(A: Word);
begin
  if FDecimalPlaces <> A then
    begin
      FDecimalPlaces := A;
      FormatText;
    end;
end;

procedure TCurrencyEditEx.SetPosColor(A: TColor);
begin
  if FPosColor <> A then
    begin
      FPosColor := A;
      FormatText;
    end;
end;

procedure TCurrencyEditEx.SetNegColor(A: TColor);
begin
  if FNegColor <> A then
    begin
      FNegColor := A;
      FormatText;
    end;
end;

procedure TCurrencyEditEx.UnFormatText;
var
  TmpText : String;
  Tmp     : Byte;
  IsNeg   : Boolean;
begin
  IsNeg := (Pos('-',Text) > 0) or (Pos('(',Text) > 0);
  TmpText := '';
  For Tmp := 1 to Length(Text) do
    if Text[Tmp] in ['0'..'9', DecimalSeparator] then
      TmpText := TmpText + Text[Tmp];
  try
    If TmpText='' Then TmpText := '0.00';
    FieldValue := StrToFloat(TmpText);
    if IsNeg then FieldValue := -FieldValue;
  except
    MessageBeep(mb_IconAsterisk);
  end;
end;

procedure TCurrencyEditEx.FormatText;
begin
  Text := FormatFloat(DispFormat, FieldValue);
  if FieldValue < 0 then
    Font.Color := NegColor
  else
    Font.Color := PosColor;
end;

procedure TCurrencyEditEx.CMEnter(var Message: TCMEnter);
begin
  SelectAll;
  inherited;
end;

procedure TCurrencyEditEx.CMExit(var Message: TCMExit);
begin
  UnformatText;
  FormatText;
  Inherited;
end;

procedure TCurrencyEditEx.KeyPress(var Key: Char);
Var
  S : String;
//frmParent : TCustomForm;
//btnDefault : TButton;
//i : integer;
begin
  {#8 is for Del and Backspace keys.}
  if Not (Key in ['0'..'9','.','-', #8, #13, ',']) then
    Key := #0;
  case Key of
//  #13 : begin
//          frmParent := GetParentForm(Self);
//          UnformatText;
//          {find default button on the parent form if any}
//          btnDefault := nil;
//          for i := 0 to frmParent.ControlCount -1 do
//            if frmParent.Controls[i] is TButton then
//              if (frmParent.Controls[i] as TButton).Default then
//                btnDefault := (frmParent.Controls[i] as TButton);
//          Key := #0;
//        end;
          { allow only one dot in the number }
    '.' : if ( Pos('.',Text) >0 ) then Key := #0;
          { allow only one '-' in the number and only in the first position: }
    '-' : if ( Pos('-',Text) >0 ) or ( SelStart > 0 ) then Key := #0;
  else
    { make sure no other character appears before the '-' }
    if ( Pos('-',Text) >0 ) and ( SelStart = 0 ) and (SelLength=0) then Key := #0;
  end;

  if Key <> Char(vk_Back) then
    begin
     {S is a model of Text if we accept the keystroke.  Use SelStart and
     SelLength to find the cursor (insert) position.}
      S := Copy(Text,1,SelStart)+Key+Copy(Text,SelStart+SelLength+1,Length(Text));
      if ((Pos(DecimalSeparator, S) > 0) and
         (Length(S) - Pos(DecimalSeparator, S) > FDecimalPlaces))  {too many decimal places}
           or ((Key = '-') and (Pos('-', Text) <> 0))     {only one minus...}
           or (Pos('-', S) > 1)                           {... and only at beginning}
      then Key := #0;
    end;

  if Key <> #0 then
    inherited KeyPress(Key);
end;

procedure TCurrencyEditEx.CreateParams(var Params: TCreateParams);
var
 lStyle : DWord;
begin
  inherited CreateParams(Params);
  lStyle := 0;
  case Alignment of
    taLeftJustify  : lStyle := ES_LEFT;
    taRightJustify : lStyle := ES_RIGHT;
    taCenter       : lStyle := ES_CENTER;
  end;
  Params.Style := Params.Style or lStyle;
end;

end.
