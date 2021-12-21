object BoxRelatorioPosVenda: TBoxRelatorioPosVenda
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Or'#231'amento/Ordem de servi'#231'os'
  ClientHeight = 422
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport1: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39944.484125173610000000
    ReportOptions.LastChange = 39944.488248645830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Memo1: TfrxMemoView
        Left = 37.795300000000000000
        Top = 26.456710000000000000
        Width = 317.480520000000000000
        Height = 34.015770000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Yamavale Motos')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 52.913420000000000000
        Top = 79.370130000000000000
        Width = 207.874150000000000000
        Height = 22.677180000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Ordem de Servi'#195#167'o')
        ParentFont = False
      end
    end
  end
end
