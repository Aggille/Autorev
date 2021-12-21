object BoxEstoquePecasZero: TBoxEstoquePecasZero
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Gerencial de pe'#231'as sem estoque e movimenta'#231#227'o'
  ClientHeight = 388
  ClientWidth = 951
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 388
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 185
    object StatusBar1: TStatusBar
      Left = 1
      Top = 368
      Width = 949
      Height = 19
      Panels = <>
      ExplicitLeft = 472
      ExplicitTop = 184
      ExplicitWidth = 0
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 32
      Width = 801
      Height = 120
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourcePecas
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 16
      Top = 158
      Width = 377
      Height = 120
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceEstoque
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid3: TwwDBGrid
      Left = 440
      Top = 158
      Width = 377
      Height = 120
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourcePecasMovimentacao
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBNavigator1: TwwDBNavigator
      Left = 216
      Top = 8
      Width = 350
      Height = 25
      DataSource = DataSourcePecas
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
      object wwDBNavigator1Insert: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 175
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsDelete
      end
      object wwDBNavigator1Edit: TwwNavButton
        Left = 200
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
        Index = 8
        Style = nbsEdit
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 225
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
        Index = 9
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 250
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
        Index = 10
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 275
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
        Index = 11
        Style = nbsRefresh
      end
      object wwDBNavigator1SaveBookmark: TwwNavButton
        Left = 300
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Bookmark current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1SaveBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 12
        Style = nbsSaveBookmark
      end
      object wwDBNavigator1RestoreBookmark: TwwNavButton
        Left = 325
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Go back to saved bookmark'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1RestoreBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 13
        Style = nbsRestoreBookmark
      end
    end
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecasAfterCancel
    AfterDelete = tblPecasAfterPost
    AfterPost = tblPecasAfterPost
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CST, DESCRICAO, ESP' +
        'ECIAL, '
      
        '   FORA_LINHA, GRUPO, ICMS, ID_PECAS, IPI, LISTA, MIN_PEDIDO, NC' +
        'M, NOVASUBS, '
      
        '   ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, ST_COFINS, SUBST' +
        '_TRIB, '
      '   SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CST, :DESCRIC' +
        'AO, :ESPECIAL, '
      
        '   :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LISTA, :MIN_PED' +
        'IDO, :NCM, '
      
        '   :NOVASUBS, :ORIGINAL, :PPS, :PRECO, :PRECO_GAR, :QTD_PEDIDA, ' +
        ':ST_COFINS, '
      '   :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  ICMS,'
      '  PRECO,'
      '  PPS,'
      '  PRECO_GAR,'
      '  IPI,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2,'
      '  NCM,'
      '  ORIGINAL,'
      '  CST'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'select p.*, pe.* from Pecas p'
      'inner join PECAS_estoque pe on (pe.id_pecas = p.id_pecas)'
      'where '
      'pe.estoque = 0')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CST = :CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NCM = :NCM,'
      '  NOVASUBS = :NOVASUBS,'
      '  ORIGINAL = :ORIGINAL,'
      '  PPS = :PPS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    Left = 336
    Top = 24
    object tblPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPecasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object tblPecasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblPecasGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PECAS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object tblPecasESPECIAL: TIBStringField
      FieldName = 'ESPECIAL'
      Origin = '"PECAS"."ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCOD_PROC: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCOD_TRIB: TIBStringField
      FieldName = 'COD_TRIB'
      Origin = '"PECAS"."COD_TRIB"'
      FixedChar = True
      Size = 2
    end
    object tblPecasUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object tblPecasSUBSTITUTO: TIBStringField
      FieldName = 'SUBSTITUTO'
      Origin = '"PECAS"."SUBSTITUTO"'
      FixedChar = True
      Size = 12
    end
    object tblPecasFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = '"PECAS"."FORA_LINHA"'
      FixedChar = True
      Size = 1
    end
    object tblPecasMIN_PEDIDO: TIntegerField
      FieldName = 'MIN_PEDIDO'
      Origin = '"PECAS"."MIN_PEDIDO"'
    end
    object tblPecasQTD_PEDIDA: TIntegerField
      FieldName = 'QTD_PEDIDA'
      Origin = '"PECAS"."QTD_PEDIDA"'
    end
    object tblPecasICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PECAS"."ICMS"'
      Precision = 9
      Size = 2
    end
    object tblPecasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECAS"."IPI"'
      Precision = 9
      Size = 2
    end
    object tblPecasLISTA: TIBStringField
      FieldName = 'LISTA'
      Origin = '"PECAS"."LISTA"'
      FixedChar = True
      Size = 1
    end
    object tblPecasSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object tblPecasST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object tblPecasNOVASUBS: TIBStringField
      FieldName = 'NOVASUBS'
      Origin = '"PECAS"."NOVASUBS"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCFOP1: TIBStringField
      FieldName = 'CFOP1'
      Origin = '"PECAS"."CFOP1"'
      FixedChar = True
      Size = 4
    end
    object tblPecasCFOP2: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"PECAS"."CFOP2"'
      FixedChar = True
      Size = 4
    end
    object tblPecasNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
    object tblPecasPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECAS"."PPS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasORIGINAL: TIBStringField
      FieldName = 'ORIGINAL'
      Origin = '"PECAS"."ORIGINAL"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCST: TIBStringField
      FieldName = 'CST'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
  end
  object DataSourcePecas: TDataSource
    AutoEdit = False
    DataSet = tblPecas
    Left = 304
    Top = 24
  end
  object tblPecasMovimentacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from PECAS_MOVIMENTACAO'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    InsertSQL.Strings = (
      'insert into PECAS_MOVIMENTACAO'
      
        '  (CUSTO_MEDIO, DATA, EMISSAO, ID_CONCESSIONARIA, ID_PECAS, ID_P' +
        'ECAS_MOVIMENTACAO, '
      '   MOVIMENTO, NF, QUANTIDADE_ATUAL, QUANTIDADE_MOVIMENTADA)'
      'values'
      
        '  (:CUSTO_MEDIO, :DATA, :EMISSAO, :ID_CONCESSIONARIA, :ID_PECAS,' +
        ' :ID_PECAS_MOVIMENTACAO, '
      '   :MOVIMENTO, :NF, :QUANTIDADE_ATUAL, :QUANTIDADE_MOVIMENTADA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_MOVIMENTACAO,'
      '  ID_CONCESSIONARIA,'
      '  ID_PECAS,'
      '  MOVIMENTO,'
      '  QUANTIDADE_MOVIMENTADA,'
      '  QUANTIDADE_ATUAL,'
      '  CUSTO_MEDIO,'
      '  DATA,'
      '  NF,'
      '  EMISSAO'
      'from PECAS_MOVIMENTACAO '
      'where'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO')
    SelectSQL.Strings = (
      'select * from PECAS_MOVIMENTACAO'
      'Where ID_PECAS = :Id'
      '')
    ModifySQL.Strings = (
      'update PECAS_MOVIMENTACAO'
      'set'
      '  CUSTO_MEDIO = :CUSTO_MEDIO,'
      '  DATA = :DATA,'
      '  EMISSAO = :EMISSAO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO,'
      '  MOVIMENTO = :MOVIMENTO,'
      '  NF = :NF,'
      '  QUANTIDADE_ATUAL = :QUANTIDADE_ATUAL,'
      '  QUANTIDADE_MOVIMENTADA = :QUANTIDADE_MOVIMENTADA'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    Left = 672
    Top = 56
    object tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_PECAS_MOVIMENTACAO'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS_MOVIMENTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_MOVIMENTACAO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPecasMovimentacaoID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS"'
      Required = True
    end
    object tblPecasMovimentacaoMOVIMENTO: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"PECAS_MOVIMENTACAO"."MOVIMENTO"'
      Size = 1
    end
    object tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTADA'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_MOVIMENTADA"'
    end
    object tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_ATUAL"'
    end
    object tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PECAS_MOVIMENTACAO"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object tblPecasMovimentacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PECAS_MOVIMENTACAO"."DATA"'
    end
    object tblPecasMovimentacaoNF: TIBStringField
      FieldName = 'NF'
      Origin = '"PECAS_MOVIMENTACAO"."NF"'
      Size = 8
    end
    object tblPecasMovimentacaoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"PECAS_MOVIMENTACAO"."EMISSAO"'
    end
  end
  object DataSourcePecasMovimentacao: TDataSource
    AutoEdit = False
    DataSet = tblPecasMovimentacao
    Left = 640
    Top = 56
  end
  object tblestoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from PECAS_ESTOQUE'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    InsertSQL.Strings = (
      'insert into PECAS_ESTOQUE'
      
        '  (CST_ATUAL, CST_MEDIO, ESCANINHO_GAVETA, ESTOQOS, ESTOQUE, FOR' +
        'NECEDOR, '
      
        '   ID_CONCESSIONARIA, ID_PECAS, ID_PECAS_ESTOQUE, LOCAL, PRATELE' +
        'IRA, ULT_COMPRA, '
      '   ULT_PEDIDO, ULT_VENDA)'
      'values'
      
        '  (:CST_ATUAL, :CST_MEDIO, :ESCANINHO_GAVETA, :ESTOQOS, :ESTOQUE' +
        ', :FORNECEDOR, '
      
        '   :ID_CONCESSIONARIA, :ID_PECAS, :ID_PECAS_ESTOQUE, :LOCAL, :PR' +
        'ATELEIRA, '
      '   :ULT_COMPRA, :ULT_PEDIDO, :ULT_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_ESTOQUE,'
      '  ID_PECAS,'
      '  ID_CONCESSIONARIA,'
      '  ESTOQUE,'
      '  ESTOQOS,'
      '  LOCAL,'
      '  CST_MEDIO,'
      '  CST_ATUAL,'
      '  ULT_COMPRA,'
      '  ULT_VENDA,'
      '  ULT_PEDIDO,'
      '  FORNECEDOR,'
      '  PRATELEIRA,'
      '  ESCANINHO_GAVETA'
      'from PECAS_ESTOQUE '
      'where'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE')
    SelectSQL.Strings = (
      'select * from PECAS_ESTOQUE'
      'Where (id_pecas = :id)')
    ModifySQL.Strings = (
      'update PECAS_ESTOQUE'
      'set'
      '  CST_ATUAL = :CST_ATUAL,'
      '  CST_MEDIO = :CST_MEDIO,'
      '  ESCANINHO_GAVETA = :ESCANINHO_GAVETA,'
      '  ESTOQOS = :ESTOQOS,'
      '  ESTOQUE = :ESTOQUE,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE,'
      '  LOCAL = :LOCAL,'
      '  PRATELEIRA = :PRATELEIRA,'
      '  ULT_COMPRA = :ULT_COMPRA,'
      '  ULT_PEDIDO = :ULT_PEDIDO,'
      '  ULT_VENDA = :ULT_VENDA'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    Left = 368
    Top = 192
    object tblestoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
      Required = True
    end
    object tblestoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblestoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ESTOQUE"'
    end
    object tblestoqueESTOQOS: TIntegerField
      FieldName = 'ESTOQOS'
      Origin = '"PECAS_ESTOQUE"."ESTOQOS"'
    end
    object tblestoqueLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PECAS_ESTOQUE"."LOCAL"'
      FixedChar = True
      Size = 5
    end
    object tblestoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblestoqueCST_MEDIO: TIBBCDField
      FieldName = 'CST_MEDIO'
      Origin = '"PECAS_ESTOQUE"."CST_MEDIO"'
      Precision = 18
      Size = 2
    end
    object tblestoqueCST_ATUAL: TIBBCDField
      FieldName = 'CST_ATUAL'
      Origin = '"PECAS_ESTOQUE"."CST_ATUAL"'
      Precision = 18
      Size = 2
    end
    object tblestoqueULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
      Origin = '"PECAS_ESTOQUE"."ULT_COMPRA"'
    end
    object tblestoqueULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
      Origin = '"PECAS_ESTOQUE"."ULT_VENDA"'
    end
    object tblestoqueULT_PEDIDO: TDateField
      FieldName = 'ULT_PEDIDO'
      Origin = '"PECAS_ESTOQUE"."ULT_PEDIDO"'
    end
    object tblestoqueFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PECAS_ESTOQUE"."FORNECEDOR"'
      FixedChar = True
      Size = 5
    end
    object tblestoquePRATELEIRA: TIBStringField
      FieldName = 'PRATELEIRA'
      Origin = '"PECAS_ESTOQUE"."PRATELEIRA"'
      Size = 3
    end
    object tblestoqueESCANINHO_GAVETA: TIBStringField
      FieldName = 'ESCANINHO_GAVETA'
      Origin = '"PECAS_ESTOQUE"."ESCANINHO_GAVETA"'
      Size = 2
    end
  end
  object DataSourceEstoque: TDataSource
    DataSet = tblestoque
    Left = 336
    Top = 192
  end
end
