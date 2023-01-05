object BoxBMI: TBoxBMI
  Left = 0
  Top = 0
  Caption = 'BMI'
  ClientHeight = 371
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Gerar: TButton
    Left = 200
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 0
  end
  object tblAux: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 104
    object tblAuxNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 48
    end
    object tblAuxNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 200
    end
    object tblAuxVALOR_CONTA: TCurrencyField
      FieldName = 'VALOR_CONTA'
    end
  end
  object IBDataSet1: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 328
    Top = 120
  end
end
