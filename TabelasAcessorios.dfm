object BoxTabelasAcessorios: TBoxTabelasAcessorios
  Left = 0
  Top = 0
  Caption = 'Tabela de acess'#243'rios:'
  ClientHeight = 304
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 654
    Height = 244
    Selected.Strings = (
      'ID_VEICULOS_ACESSORIOS'#9'10'#9'Sequ'#234'ncia:'#9'F'
      'DESCRICAO_ACESSORIO'#9'20'#9'Descri'#231#227'o do acess'#243'rio:'#9'F'
      'VALOR'#9'19'#9'Valor:'#9'F'
      'MODELO'#9'20'#9'Modelo ve'#237'culo:'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSourceAcessoriosVeiculos
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    UseTFields = False
    object wwDBGrid1IButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 660
    Height = 54
    ButtonHeight = 51
    Caption = 'ToolBar1'
    TabOrder = 0
    object wwDBNavigator1: TwwDBNavigator
      Left = 0
      Top = 0
      Width = 521
      Height = 51
      AutosizeStyle = asNone
      DataSource = DataSourceAcessoriosVeiculos
      Flat = False
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Align = alClient
      object wwDBNavigator1First: TwwNavButton
        Left = 0
        Top = 0
        Width = 86
        Height = 50
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1First'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object wwDBNavigator1Last: TwwNavButton
        Left = 86
        Top = 0
        Width = 86
        Height = 50
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Last'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsLast
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 172
        Top = 0
        Width = 86
        Height = 50
        Hint = 'Cria um novo registro'
        ImageIndex = 2
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object wwDBNavigator1Edit: TwwNavButton
        Left = 258
        Top = 0
        Width = 86
        Height = 50
        Hint = 'Edit current record'
        ImageIndex = 6
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Edit'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsEdit
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 344
        Top = 0
        Width = 85
        Height = 50
        Hint = 'Post changes of current record'
        ImageIndex = 4
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsPost
      end
      object wwDBNavigator1Button: TwwNavButton
        Left = 429
        Top = 0
        Width = 86
        Height = 50
        ImageIndex = 10
        NumGlyphs = 1
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Impressao'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsCustom
      end
    end
  end
  object tblAcessoriosVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAcessoriosVeiculosAfterCancel
    AfterPost = tblAcessoriosVeiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Veiculos_Acessorios'
      'where'
      '  ID_VEICULOS_ACESSORIOS = :OLD_ID_VEICULOS_ACESSORIOS')
    InsertSQL.Strings = (
      'insert into Veiculos_Acessorios'
      '  (DESCRICAO_ACESSORIO, ID_VEICULOS_ACESSORIOS, MODELO, VALOR)'
      'values'
      
        '  (:DESCRICAO_ACESSORIO, :ID_VEICULOS_ACESSORIOS, :MODELO, :VALO' +
        'R)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_VEICULOS_ACESSORIOS,'
      '  DESCRICAO_ACESSORIO,'
      '  VALOR,'
      '  MODELO'
      'from Veiculos_Acessorios '
      'where'
      '  ID_VEICULOS_ACESSORIOS = :ID_VEICULOS_ACESSORIOS')
    SelectSQL.Strings = (
      'select * from Veiculos_Acessorios'
      '')
    ModifySQL.Strings = (
      'update Veiculos_Acessorios'
      'set'
      '  DESCRICAO_ACESSORIO = :DESCRICAO_ACESSORIO,'
      '  ID_VEICULOS_ACESSORIOS = :ID_VEICULOS_ACESSORIOS,'
      '  MODELO = :MODELO,'
      '  VALOR = :VALOR'
      'where'
      '  ID_VEICULOS_ACESSORIOS = :OLD_ID_VEICULOS_ACESSORIOS')
    Left = 336
    Top = 48
    object tblAcessoriosVeiculosID_VEICULOS_ACESSORIOS: TIntegerField
      FieldName = 'ID_VEICULOS_ACESSORIOS'
      Origin = '"VEICULOS_ACESSORIOS"."ID_VEICULOS_ACESSORIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAcessoriosVeiculosDESCRICAO_ACESSORIO: TIBStringField
      FieldName = 'DESCRICAO_ACESSORIO'
      Origin = '"VEICULOS_ACESSORIOS"."DESCRICAO_ACESSORIO"'
    end
    object tblAcessoriosVeiculosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VEICULOS_ACESSORIOS"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblAcessoriosVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS_ACESSORIOS"."MODELO"'
    end
  end
  object DataSourceAcessoriosVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblAcessoriosVeiculos
    Left = 424
    Top = 50
  end
end
