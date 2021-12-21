object frmRelEstoque: TfrmRelEstoque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o de Estoque'
  ClientHeight = 137
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
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 89
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 77
    Width = 321
    Height = 17
    Caption = 'Incluir Transfer'#234'ncias'
    TabOrder = 4
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = FDB1.IBDatabase
    Left = 64
    Top = 8
  end
  object qryEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    OnCalcFields = qryEstoqueCalcFields
    BufferChunks = 1000
    CachedUpdates = False
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
      's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
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
      's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
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
      's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -3 month to Current_Date ))'
      ')'
      'as vendas_90,'
      ''
      '( select'
      'sum( qtde ) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -6 month to Current_Date ))'
      ')'
      'as vendas_180,'
      ''
      '( select'
      '(sum( qtde )/6) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39')'
      'and'
      'n.emissao >= (DateAdd( -6 month to Current_Date ))'
      ')'
      'as media_180'
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
    ParamCheck = True
    UniDirectional = False
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
    object qryEstoqueDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object qryEstoqueVENDAS_180: TLargeintField
      FieldName = 'VENDAS_180'
      ProviderFlags = []
    end
    object qryEstoqueMEDIA_180: TLargeintField
      FieldName = 'MEDIA_180'
      ProviderFlags = []
    end
  end
  object qryConcessionarias: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'EMPRESA, ID_CONCESSIONARIA'
      ''
      'FROM'
      ''
      'CONCESSIONARIA '
      ''
      'WHERE ATIVA = '#39'T'#39
      ''
      'ORDER BY EMPRESA')
    ParamCheck = True
    UniDirectional = False
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
    Left = 184
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
      'EMPRESA=EMPRESA'
      'ESTOQUE=ESTOQUE'
      'VENDAS_30=VENDAS_30'
      'VENDAS_60=VENDAS_60'
      'VENDAS_90=VENDAS_90'
      'QUEBRA_ESTOQUE=QUEBRA_ESTOQUE'
      'DESCRICAO=DESCRICAO'
      'VENDAS_180=VENDAS_180'
      'MEDIA_180=MEDIA_180')
    DataSet = qryEstoque
    BCDToCurrency = False
    Left = 128
    Top = 40
  end
  object frxEstoque: TfrxReport
    Version = '5.4.6'
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
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDEstoque
        DataSetName = 'frxDBDEstoque'
        RowCount = 0
        object frxDBDEstoqueDESCRICAO: TfrxMemoView
          Left = 37.795300000000000000
          Top = 0.377952755905539600
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDEstoque."DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDEstoqueESTOQUE: TfrxMemoView
          Left = 506.457020000000000000
          Top = 0.377952755905539600
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
          Memo.UTF8W = (
            '[frxDBDEstoque."ESTOQUE"]')
          ParentFont = False
        end
        object frxDBDEstoqueQUANTIDADE: TfrxMemoView
          Left = 593.386210000000000000
          Top = 0.377952760000027800
          Width = 68.031540000000000000
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
          Memo.UTF8W = (
            '[frxDBDEstoque."QUANTIDADE"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_30: TfrxMemoView
          Left = 752.126470000000000000
          Top = 0.377952760000027800
          Width = 56.692950000000010000
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
          Memo.UTF8W = (
            '[frxDBDEstoque."VENDAS_30"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_60: TfrxMemoView
          Left = 808.819420000000000000
          Top = 0.377952760000027800
          Width = 56.692950000000010000
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
          Memo.UTF8W = (
            '[frxDBDEstoque."VENDAS_60"]')
          ParentFont = False
        end
        object frxDBDEstoqueVENDAS_90: TfrxMemoView
          Left = 865.512370000000000000
          Top = 0.377952760000027800
          Width = 52.913420000000000000
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
          Memo.UTF8W = (
            '[frxDBDEstoque."VENDAS_90"]')
          ParentFont = False
        end
        object frxDBDEstoqueQUEBRA_ESTOQUE: TfrxMemoView
          Left = 668.976810000000000000
          Top = 0.377952760000027800
          Width = 71.811070000000000000
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
          Memo.UTF8W = (
            '[frxDBDEstoque."QUEBRA_ESTOQUE"]')
          ParentFont = False
        end
        object frxDBDEstoqueCODIGO: TfrxMemoView
          Left = 408.189240000000000000
          Top = 0.377952755905539600
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Memo.UTF8W = (
            '[frxDBDEstoque."CODIGO"]')
        end
        object Memo11: TfrxMemoView
          Left = 922.205320000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_180'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDEstoque."VENDAS_180"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 986.457330000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'MEDIA_180'
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDEstoque."MEDIA_180"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDEstoque."ID_CONCESSIONARIA"'
        object frxDBDEstoqueEMPRESA: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559059999999988000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDEstoque
          DataSetName = 'frxDBDEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDEstoque."ID_CONCESSIONARIA"]-[frxDBDEstoque."EMPRESA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 30.236240000000010000
          Width = 476.220780000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 160.630025000000000000
          Top = 7.559059999999999000
          Width = 725.669760000000000000
          Height = 49.133890000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Administra'#231#227'o do Estoque')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 68.031540000000010000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 117.165430000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 41.574830000000010000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
          Top = 3.023622047244089000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pe'#231'a')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.023622047244089000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo em Estoque')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque M'#237'nimo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 668.976810000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quebra de estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 752.126470000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas 30 Dias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 808.819420000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas 60 Dias')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 865.512370000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas 90 Dias')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.023622047244089000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 922.205320000000000000
          Top = 3.779529999999994000
          Width = 60.472480000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas 180 Dias')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 986.457330000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000010000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia 180 Dias')
          ParentFont = False
        end
      end
    end
  end
  object qryEstoque1: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = IBTransaction1
    OnCalcFields = qryEstoqueCalcFields
    BufferChunks = 1000
    CachedUpdates = False
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
      
        's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39','#39'5152'#39','#39'5' +
        '409'#39')'
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
      
        's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39','#39'5152'#39','#39'5' +
        '409'#39')'
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
      
        's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39','#39'5152'#39','#39'5' +
        '409'#39')'
      'and'
      'n.emissao >= (DateAdd( -3 month to Current_Date ))'
      ')'
      'as vendas_90,'
      ''
      '( select'
      'sum( qtde ) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      
        's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39','#39'5152'#39','#39'5' +
        '409'#39')'
      'and'
      'n.emissao >= (DateAdd( -6 month to Current_Date ))'
      ')'
      'as vendas_180,'
      ''
      '( select'
      '(sum( qtde )/6) from sada s'
      ''
      'inner join nofisa n on n.id_nofisa = s.id_nofisa'
      ''
      'where'
      's.id_concessionaria=e.id_concessionaria and s.codigo=p.codigo'
      'and'
      
        's.cfop in ('#39'5102'#39', '#39'5405'#39', '#39'5656'#39','#39'6102'#39','#39'6405'#39','#39'6656'#39','#39'5152'#39','#39'5' +
        '409'#39')'
      'and'
      'n.emissao >= (DateAdd( -6 month to Current_Date ))'
      ')'
      'as media_180'
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
    ParamCheck = True
    UniDirectional = False
    OnFilterRecord = qryEstoqueFilterRecord
    Left = 160
    Top = 8
    object IntegerField1: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_PECA'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_PECA"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE_MINIMO"."ID_CONCESSIONARIA"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"PECAS_ESTOQUE_MINIMO"."QUANTIDADE"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField2: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ESTOQUE"'
    end
    object LargeintField1: TLargeintField
      FieldName = 'VENDAS_30'
      ProviderFlags = []
    end
    object LargeintField2: TLargeintField
      FieldName = 'VENDAS_60'
      ProviderFlags = []
    end
    object LargeintField3: TLargeintField
      FieldName = 'VENDAS_90'
      ProviderFlags = []
    end
    object IntegerField6: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QUEBRA_ESTOQUE'
      Calculated = True
    end
    object IBStringField3: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object LargeintField4: TLargeintField
      FieldName = 'VENDAS_180'
      ProviderFlags = []
    end
    object LargeintField5: TLargeintField
      FieldName = 'MEDIA_180'
      ProviderFlags = []
    end
  end
end
