object BoxFinanceiroCaixaEntradasOutros: TBoxFinanceiroCaixaEntradasOutros
  Left = 15
  Top = 215
  Caption = 'Entradas de caixa  - Outros'
  ClientHeight = 172
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 361
    Height = 168
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object LabelData: TLabel
      Left = 16
      Top = 39
      Width = 89
      Height = 13
      Caption = 'Data recebimento:'
    end
    object Label12: TLabel
      Left = 16
      Top = 66
      Width = 45
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object Label5: TLabel
      Left = 16
      Top = 92
      Width = 43
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label3: TLabel
      Left = 150
      Top = 12
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Documento: TDBEdit
      Left = 79
      Top = 9
      Width = 65
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DataSourceCaixa
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object Data: TJvDBDateEdit
      Left = 111
      Top = 36
      Width = 121
      Height = 21
      DataField = 'DATA_RECEBIMENTO'
      DataSource = DataSourceCaixa
      ShowNullDate = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object Historico: TDBEdit
      Left = 79
      Top = 63
      Width = 274
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DataSourceCaixa
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object Dinheiro: TCurrencyEdit
      Left = 79
      Top = 89
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 243
      Top = 87
      Width = 110
      Height = 26
      Caption = 'Confirma'
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
        FFFF00FFFF00FFFF00FFFF00FF08AD1808841008841008AD18FF00FF08AD1808
        841008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD18088410
        08841008AD18FF00FFFF00FFFF00FF08AD1808841008841008AD18FF00FFFF00
        FFFF00FFFF00FFFF00FF08AD1808841008AD18FF00FFFF00FFFF00FFFF00FFFF
        00FF08AD1808841008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FF08AD18
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD1808841008841008AD
        18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF08AD1808841008841008AD18FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD180884
        1008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF08AD1808841008AD18FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF08AD1808AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BtnConfirmaClick
    end
    object Origem: TDBLookupComboBox
      Left = 186
      Top = 9
      Width = 127
      Height = 21
      DataField = 'ORIGEM'
      DataSource = DataSourceCaixa
      KeyField = 'SETOR'
      ListField = 'NOME'
      ListSource = DataSourceSetor
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 153
    Width = 360
    Height = 19
    Panels = <>
  end
  object tblCaixa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOCUMENTO, FORMA_PA' +
        'G, HISTORICO, '
      
        '   ID_CAIXA, ID_CLIENTES, ID_CONCESSIONARIA, JUROS, NATUREZA, OR' +
        'IGEM, STATUS, '
      '   VALOR)'
      'values'
      
        '  (:CONTA, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :DOCUMENTO, :FOR' +
        'MA_PAG, '
      
        '   :HISTORICO, :ID_CAIXA, :ID_CLIENTES, :ID_CONCESSIONARIA, :JUR' +
        'OS, :NATUREZA, '
      '   :ORIGEM, :STATUS, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CAIXA,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  ORIGEM,'
      '  NATUREZA,'
      '  FORMA_PAG,'
      '  DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO,'
      '  VALOR,'
      '  CONTA,'
      '  HISTORICO,'
      '  STATUS,'
      '  JUROS'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select * from CAIXA'
      'where Status = '#39'Pendente'#39
      'and Natureza = '#39'E'#39' and'
      'id_Concessionaria = :id'
      ''
      '')
    ModifySQL.Strings = (
      'update CAIXA'
      'set'
      '  CONTA = :CONTA,'
      '  DATA_LANCAMENTO = :DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  FORMA_PAG = :FORMA_PAG,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CAIXA = :ID_CAIXA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    ParamCheck = True
    UniDirectional = False
    Left = 248
    Top = 32
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCaixaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CAIXA"."ID_CLIENTES"'
    end
    object tblCaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CAIXA"."DOCUMENTO"'
      Size = 10
    end
    object tblCaixaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CAIXA"."ORIGEM"'
      Size = 1
    end
    object tblCaixaNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"CAIXA"."NATUREZA"'
      FixedChar = True
      Size = 1
    end
    object tblCaixaFORMA_PAG: TIBStringField
      FieldName = 'FORMA_PAG'
      Origin = '"CAIXA"."FORMA_PAG"'
      Size = 13
    end
    object tblCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Origin = '"CAIXA"."DATA_LANCAMENTO"'
    end
    object tblCaixaDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"CAIXA"."DATA_RECEBIMENTO"'
    end
    object tblCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      Size = 5
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 60
    end
    object tblCaixaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
    end
    object tblCaixaJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"CAIXA"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblCaixaSTATUS_BANCO: TIBStringField
      FieldName = 'STATUS_BANCO'
      Origin = '"CAIXA"."STATUS_BANCO"'
    end
    object tblCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 280
    Top = 32
  end
  object tblSetor: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SETORES'
      'where'
      '  ID_SETOR = :OLD_ID_SETOR')
    InsertSQL.Strings = (
      'insert into SETORES'
      '  (ID_SETOR, NOME, SETOR)'
      'values'
      '  (:ID_SETOR, :NOME, :SETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SETOR,'
      '  NOME,'
      '  SETOR'
      'from SETORES '
      'where'
      '  ID_SETOR = :ID_SETOR')
    SelectSQL.Strings = (
      'select * from SETORES')
    ModifySQL.Strings = (
      'update SETORES'
      'set'
      '  ID_SETOR = :ID_SETOR,'
      '  NOME = :NOME,'
      '  SETOR = :SETOR'
      'where'
      '  ID_SETOR = :OLD_ID_SETOR')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    object tblSetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
      Origin = '"SETORES"."ID_SETOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSetorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SETORES"."NOME"'
      Required = True
      Size = 50
    end
    object tblSetorSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = '"SETORES"."SETOR"'
      Size = 1
    end
  end
  object DataSourceSetor: TDataSource
    AutoEdit = False
    DataSet = tblSetor
    Left = 224
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Caixa_Id, 1) as'
      'Id_Caixa From RDB$DATABASE')
    Left = 200
    Top = 112
  end
end
