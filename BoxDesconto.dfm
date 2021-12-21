object BoxPedeDesconto: TBoxPedeDesconto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informe o desconto'
  ClientHeight = 106
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 19
    Width = 67
    Height = 13
    Caption = 'Desconto (%)'
  end
  object Label2: TLabel
    Left = 8
    Top = 47
    Width = 69
    Height = 13
    Caption = 'Desconto (R$)'
  end
  object edtDesconto: TJvCalcEdit
    Left = 85
    Top = 18
    Width = 121
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = ',0.####'
    TabOrder = 0
    DecimalPlacesAlwaysShown = False
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 129
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Cancela'
    ModalResult = 2
    TabOrder = 3
  end
  object edtValorDesconto: TJvCalcEdit
    Left = 83
    Top = 45
    Width = 121
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
  end
end
