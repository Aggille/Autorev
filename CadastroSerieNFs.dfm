object BoxCadastroSerieNFs: TBoxCadastroSerieNFs
  Left = 15
  Top = 85
  Caption = 'Cadastro - S'#233'rie de NFs'
  ClientHeight = 244
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 233
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 7
      Top = 8
      Width = 251
      Height = 181
      DataSource = DataSourceSerieNF
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SERIENF'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie da nota fiscal:'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMO_NUMERO_EMITIDO'
          Title.Alignment = taCenter
          Title.Caption = #218'ltimo n'#250'mero emitido'
          Width = 111
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 225
    Width = 264
    Height = 19
    Panels = <>
    ExplicitWidth = 260
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 8
    Top = 195
    Width = 250
    Height = 25
    AutosizeStyle = asSizeNavButtons
    DataSource = DataSourceSerieNF
    Flat = False
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    object wwDBNavigator1First: TwwNavButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
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
    object wwDBNavigator1PriorPage: TwwNavButton
      Left = 25
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move backward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1PriorPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsPriorPage
    end
    object wwDBNavigator1Prior: TwwNavButton
      Left = 50
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to prior record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Prior'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsPrior
    end
    object wwDBNavigator1Next: TwwNavButton
      Left = 75
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to next record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Next'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsNext
    end
    object wwDBNavigator1NextPage: TwwNavButton
      Left = 100
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move forward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1NextPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsNextPage
    end
    object wwDBNavigator1Last: TwwNavButton
      Left = 125
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to last record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Last'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsLast
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 150
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Edit current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsEdit
    end
    object wwDBNavigator1Post: TwwNavButton
      Left = 175
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Post changes of current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 200
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Cancel changes made to current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCancel
    end
    object wwDBNavigator1Refresh: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Refresh the contents of the dataset'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Refresh'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsRefresh
    end
  end
  object tblSerieNF: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblSerieNFAfterCancel
    AfterDelete = tblSerieNFAfterPost
    AfterPost = tblSerieNFAfterPost
    DeleteSQL.Strings = (
      'delete from SerieNF'
      'where'
      '  ID_SERIENF = :OLD_ID_SERIENF')
    InsertSQL.Strings = (
      'insert into SerieNF'
      
        '  (ID_CONCESSIONARIA, ID_SERIENF, SERIENF, ULTIMO_NUMERO_EMITIDO' +
        ')'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_SERIENF, :SERIENF, :ULTIMO_NUMERO_EMI' +
        'TIDO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SERIENF,'
      '  ID_CONCESSIONARIA,'
      '  SERIENF,'
      '  ULTIMO_NUMERO_EMITIDO'
      'from SerieNF '
      'where'
      '  ID_SERIENF = :ID_SERIENF')
    SelectSQL.Strings = (
      'select * From SerieNF'
      'where ID_Concessionaria = :idConcessionaria'
      '')
    ModifySQL.Strings = (
      'update SerieNF'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_SERIENF = :ID_SERIENF,'
      '  SERIENF = :SERIENF,'
      '  ULTIMO_NUMERO_EMITIDO = :ULTIMO_NUMERO_EMITIDO'
      'where'
      '  ID_SERIENF = :OLD_ID_SERIENF')
    Left = 104
    Top = 48
    object tblSerieNFID_SERIENF: TIntegerField
      FieldName = 'ID_SERIENF'
      Origin = '"SERIENF"."ID_SERIENF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSerieNFID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SERIENF"."ID_CONCESSIONARIA"'
    end
    object tblSerieNFSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"SERIENF"."SERIENF"'
      Size = 2
    end
    object tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField
      FieldName = 'ULTIMO_NUMERO_EMITIDO'
      Origin = '"SERIENF"."ULTIMO_NUMERO_EMITIDO"'
    end
  end
  object DataSourceSerieNF: TDataSource
    AutoEdit = False
    DataSet = tblSerieNF
    Left = 104
    Top = 80
  end
end
