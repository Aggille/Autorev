object BoxCRM: TBoxCRM
  Left = 0
  Top = 0
  Caption = 'Follow up CRM'
  ClientHeight = 314
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 314
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 418
    ExplicitHeight = 185
    object StatusBar1: TStatusBar
      Left = 1
      Top = 294
      Width = 552
      Height = 19
      Panels = <>
      ExplicitLeft = 208
      ExplicitTop = 96
      ExplicitWidth = 0
    end
  end
  object tblCRMClientes: TIBDataSet
    DataSource = DataSourceCRMClientes
    Left = 272
    Top = 160
  end
  object DataSourceCRMClientes: TDataSource
    Left = 304
    Top = 160
  end
  object tblCRMAtendimento: TIBDataSet
    DataSource = DataSourceCRMAtendimento
    Left = 272
    Top = 128
  end
  object DataSourceCRMAtendimento: TDataSource
    Left = 304
    Top = 128
  end
end
