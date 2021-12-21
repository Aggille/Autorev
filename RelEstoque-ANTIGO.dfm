object frmRelEstoque: TfrmRelEstoque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o de Estoque'
  ClientHeight = 113
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 249
    Height = 13
    Caption = 'Selecione a concession'#225'ria ( em branco para todas )'
  end
  object edtConcessionaria: TwwDBLookupCombo
    Left = 8
    Top = 27
    Width = 321
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'EMPRESA'#9'50'#9'Nome'#9'F')
    LookupTable = qryConcessionarias
    LookupField = 'ID_CONCESSIONARIA'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
  end
  object edtSomenteMinimo: TCheckBox
    Left = 8
    Top = 54
    Width = 321
    Height = 17
    Caption = 'Somente pe'#231'as abaixo do estoque m'#237'nimo'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 89
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = FDB1.IBDatabase
    Left = 64
    Top = 8
  end
  object IBDataSet1: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    Left = 160
    Top = 8
  end
  object qryEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    OnCalcFields = qryEstoqueCalcFields
    SelectSQL.Strings = (
      'Select'
      'e.*, p.codigo , p.descricao,'
      'c.empresa,'
      'pe.estoque,'
      ''
      '( select'
      'sum( qtde ) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      'n.codigo_fiscal in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -1 month to Current_Date ))'
      ')'
      'as vendas_30,'
      '( select'
      'sum( qtde ) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      'n.codigo_fiscal in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -2 month to Current_Date ))'
      ')'
      'as vendas_60'
      ','
      '( select'
      'sum( qtde ) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      'n.codigo_fiscal in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -3 month to Current_Date ))'
      ')'
      'as vendas_90'
      ''
      'from Pecas_Estoque_Minimo e'
      ''
      'inner join pecas p on p.id_pecas = e.id_peca'
      
        'inner join concessionaria c on e.id_concessionaria = c.id_conces' +
        'sionaria'
      
        'inner join pecas_estoque pe on pe.id_pecas=e.id_peca and pe.id_c' +
        'oncessionaria=e.id_concessionaria'
      ''
      'where'
      'e.id_concessionaria between :cinicial and :cfinal'
      ''
      'order by e.id_concessionaria, p.descricao, p.codigo')
    OnFilterRecord = qryEstoqueFilterRecord
    Left = 128
    Top = 8
    object qryEstoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueID_PECA: TIntegerField
      FieldName = 'ID_PECA'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_PECA"'
    end
    object qryEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_CONCESSIONARIA"'
    end
    object qryEstoqueQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"PECAS_ESTOQUE_MINIMO"."QUANTIDADE"'
    end
    object qryEstoqueCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object qryEstoqueDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object qryEstoqueEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object qryEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ESTOQUE"'
    end
    object qryEstoqueVENDAS_30: TLargeintField
      FieldName = 'VENDAS_30'
      ProviderFlags = []
    end
    object qryEstoqueVENDAS_60: TLargeintField
      FieldName = 'VENDAS_60'
      ProviderFlags = []
    end
    object qryEstoqueVENDAS_90: TLargeintField
      FieldName = 'VENDAS_90'
      ProviderFlags = []
    end
    object qryEstoqueQUEBRA_ESTOQUE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QUEBRA_ESTOQUE'
      Calculated = True
    end
  end
  object qryConcessionarias: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'SELECT'
      'EMPRESA, ID_CONCESSIONARIA'
      ''
      'FROM'
      ''
      'CONCESSIONARIA ORDER BY EMPRESA')
    Left = 96
    Top = 8
    object qryConcessionariasEMPRESA: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object qryConcessionariasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object dtsConcessionarias: TDataSource
    DataSet = qryConcessionarias
    Left = 96
    Top = 40
  end
  object dtsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 128
    Top = 40
  end
  object frxDBDEstoque: TfrxDBDataset
    UserName = 'frxDBDEstoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PECAS_ESTOQUE=ID_PECAS_ESTOQUE'
      'ID_PECA=ID_PECA'
      'ID_CONCESSIONARIA=ID_CONCESSIONARIA'
      'QUANTIDADE=QUANTIDADE'
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'EMPRESA=EMPRESA'
      'ESTOQUE=ESTOQUE'
      'VENDAS_30=VENDAS_30'
      'VENDAS_60=VENDAS_60'
      'VENDAS_90=VENDAS_90'
      'QUEBRA_ESTOQUE=QUEBRA_ESTOQUE')
    DataSet = qryEstoque
    Left = 224
    Top = 80
  end
  object frxEstoque: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41589.417378032400000000
    ReportOptions.LastChange = 41589.417378032400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDEstoque
        DataSetName = 'frxDBDEstoque'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDEstoque
        DataSetName = 'frxDBDEstoque'
        RowCount = 0
        object frxDBDEstoqueDESCRICAO: TfrxMemoView
          Left = 37.795300000000000000
          Top = 0.377952755905512000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDEstoque."DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDEstoqueESTOQUE: TfrxMemoView
          Left = 506.457020000000000000
          Top = 0.377952755905512000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ESTOQUE'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."ESTOQUE"]')
          ParentFont = False
        end
        object frxDBDEstoqueQUANTIDADE: TfrxMemoView
          Left = 593.386210000000000000
          Top = 0.377952755905512000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."QUANTIDADE"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_30: TfrxMemoView
          Left = 789.921770000000000000
          Top = 0.377952755905512000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_30'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."VENDAS_30"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_60: TfrxMemoView
          Left = 884.410020000000000000
          Top = 0.377952755905512000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_60'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."VENDAS_60"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_90: TfrxMemoView
          Left = 960.000620000000000000
          Top = 0.377952755905512000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_90'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."VENDAS_90"]')
          ParentFont = False
        end
        object frxDBDEstoqueQUEBRA_ESTOQUE: TfrxMemoView
          Left = 680.315400000000000000
          Top = 0.377952755905512000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'QUEBRA_ESTOQUE'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDEstoque."QUEBRA_ESTOQUE"]')
          ParentFont = False
        end
        object frxDBDEstoqueCODIGO: TfrxMemoView
          Left = 408.189240000000000000
          Top = 0.377952755905512000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Memo.UTF8 = (
            '[frxDBDEstoque."CODIGO"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDEstoque."ID_CONCESSIONARIA"'
        object frxDBDEstoqueEMPRESA: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDEstoque."ID_CONCESSIONARIA"]-[frxDBDEstoque."EMPRESA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 476.220780000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 160.630025000000000000
          Top = 7.559060000000000000
          Width = 725.669760000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relat'#195#179'rio de Administra'#195#167#195#163'o do Estoque')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 68.031540000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 60.472480000000000000
        Top = 117.165430000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 41.574830000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
          Top = 3.023622047244090000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Pe'#195#167'a')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.023622047244090000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Saldo em Estoque')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Estoque M'#195#173'nimo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 684.094930000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Quebra de estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 789.921770000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vendas 30 Dias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vendas 60 Dias')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 967.559680000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vendas 90 Dias')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.023622047244090000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
      end
    end
  end
end
