object frmAguardaNFe: TfrmAguardaNFe
  Left = 231
  Top = 166
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmAguardaNFe'
  ClientHeight = 231
  ClientWidth = 481
  Color = clWhite
  TransparentColorValue = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 231
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 179
    object lbl1: TLabel
      Left = 2
      Top = 2
      Width = 477
      Height = 17
      Align = alTop
      AutoSize = False
      Caption = 'Status da transmiss'#227'o da NF-e'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Mensagens: TJvMemo
      Left = 2
      Top = 25
      Width = 477
      Height = 168
      AutoSize = False
      MaxLines = 0
      HideCaret = False
      Lines.Strings = (
        'Mensagens')
      TabOrder = 0
    end
  end
  object BtnOk: TBitBtn
    Left = 181
    Top = 199
    Width = 100
    Height = 26
    Caption = 'Ok'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnOkClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD18FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF08841008AD1808AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08841008841008841008841008
      AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      08841008841008AD1808AD18088410088410088410FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF08AD1808841008841008AD181DE6A808AD1808
      841008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD18088410
      08841008AD181DE6A8BCF9D31DE6A808AD1808841008841008AD18FF00FFFF00
      FFFF00FFFF00FFFF00FF08AD1808841008AD181DE6A8BCF9D3FF00FFBCF9D31D
      E6A808AD1808841008841008AD18FF00FFFF00FFFF00FFFF00FF1DE6A808AD18
      1DE6A8BCF9D3FF00FFFF00FFFF00FFBCF9D31DE6A808AD1808841008841008AD
      18FF00FFFF00FFFF00FF1DE6A81DE6A8BCF9D3FF00FFFF00FFFF00FFFF00FFFF
      00FFBCF9D31DE6A808AD1808841008841008AD18FF00FFFF00FFFF00FFBCF9D3
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6A808AD180884
      1008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFBCF9D31DE6A808AD1808841008AD18FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6
      A808AD1808AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6A8BCF9D3FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBCF9D3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
end
