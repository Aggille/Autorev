object BoxFinanceiroCaixaSaidasGerais: TBoxFinanceiroCaixaSaidasGerais
  Left = 15
  Top = 215
  Caption = 'Sa'#237'das de caixa - Gerais'
  ClientHeight = 211
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 192
    Width = 361
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 193
    TabOrder = 1
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
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label11: TLabel
      Left = 16
      Top = 66
      Width = 33
      Height = 13
      Caption = 'Conta:'
    end
    object Label12: TLabel
      Left = 16
      Top = 93
      Width = 45
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object Label2: TLabel
      Left = 16
      Top = 131
      Width = 106
      Height = 13
      Caption = 'Forma de pagamento:'
    end
    object SpeedButton1: TSpeedButton
      Left = 121
      Top = 62
      Width = 23
      Height = 22
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF777777BDBDBDFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5084B20F6FE1
        325F8CB87E7AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFABABAB9797978B8B8BC1C1C1FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB8B8B8BCBCBC9898988A8A8AC0C0C0FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF37A4FE
        379FFF0E6DDE355F89BB7F79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFBBBBBBBCBCBC9595958B8B8BC2C2C2FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBBBBBBBABABA9696968C8C8CBABABAFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF38A5FE329DFF156DCE444F5BFF00FF9C6B65AF887BAF887EAA8075FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCBCBCB9B9B99494947E7E7EFF
        00FF979797AAAAAAABABABA5A5A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBED1D1D1A8A8A8A3
        A3A3D4D4D4F1F1F1F2F2F2EBEBEBC5C5C59D9D9DFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC0917DFCE9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFF
        FAE3D3D1996965FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB1B1B1DD
        DDDDEBEBEBECECECEDEDEDF2F2F2FDFDFDE3E3E3969696FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D1
        D1D1E7E7E7EDEDEDF1F1F1FBFBFBFEFEFEFEFEFEB1B1B1FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFB08978FEDA97EDB478FBEEBBFFFFD3FFFFDCFFFFF4FFFF
        F4FFFFE2E9DDBCA67B73FF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D5D5D5C1
        C1C1E3E3E3EEEEEEF1F1F1FBFBFBFBFBFBF4F4F4DCDCDCA2A2A2FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D6D6D6B7
        B7B7D2D2D2EBEBEBEFEFEFF1F1F1F1F1F1EFEFEFE2E2E2A4A4A4FF00FFFF00FF
        FF00FFFF00FFFF00FFAA7F73FAE0A4F0B778EEBA7BF6DDA6FEFBCCFFFFD3FFFF
        D1FFFFD7D9C5A7A3756CFF00FFFF00FFFF00FFFF00FFFF00FFA4A4A4D9D9D9C2
        C2C2C3C3C3D8D8D8EBEBEBEEEEEEEDEDEDEFEFEFCECECE9E9E9EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1C1C1F2
        F2F2D7D7D7C3C3C3CDCDCDDBDBDBE3E3E3E9E9E99F9F9FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA1746BE1D4D3FFFEEEF7CC8CF0B473F7C788FCE3
        A5C2A088A5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9D9DE2
        E2E2F8F8F8CECECEC0C0C0CCCCCCDADADAB7B7B79F9F9FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF96
        9696B3B3B3D3D3D3D0D0D0C9C9C99F9F9F9F9F9FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA77E70A98073A4786EFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA2A2A2A3A3A39F9F9FFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label5: TLabel
      Left = 16
      Top = 151
      Width = 43
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label6: TLabel
      Left = 16
      Top = 170
      Width = 41
      Height = 13
      Caption = 'Cheque:'
    end
    object Bevel1: TBevel
      Left = 16
      Top = 117
      Width = 337
      Height = 9
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
      Left = 79
      Top = 36
      Width = 121
      Height = 21
      DataField = 'DATA_RECEBIMENTO'
      DataSource = DataSourceCaixa
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object CodigoConta: TDBEdit
      Left = 79
      Top = 63
      Width = 36
      Height = 21
      DataField = 'CONTA'
      DataSource = DataSourceCaixa
      TabOrder = 3
      OnExit = CodigoContaExit
      OnKeyPress = FormKeyPress
    end
    object Historico: TDBEdit
      Left = 79
      Top = 90
      Width = 274
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DataSourceCaixa
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object NomeConta: TDBEdit
      Left = 150
      Top = 63
      Width = 203
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object Dinheiro: TCurrencyEdit
      Left = 111
      Top = 148
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object Cheque: TCurrencyEdit
      Left = 111
      Top = 167
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 243
      Top = 157
      Width = 110
      Height = 26
      Caption = 'Confirma'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BtnConfirmaClick
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
  object tblPlacon: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    DeleteSQL.Strings = (
      'delete from PLACON'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    InsertSQL.Strings = (
      'insert into PLACON'
      '  (CLASSIFICACAO, CONTA, DESCRICAO, ID_PLACON, NIVEL, TIPO)'
      'values'
      
        '  (:CLASSIFICACAO, :CONTA, :DESCRICAO, :ID_PLACON, :NIVEL, :TIPO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PLACON,'
      '  CONTA,'
      '  DESCRICAO,'
      '  TIPO,'
      '  NIVEL,'
      '  CLASSIFICACAO'
      'from PLACON '
      'where'
      '  ID_PLACON = :ID_PLACON')
    SelectSQL.Strings = (
      'select * from PLACON'
      'where CONTA = :id')
    ModifySQL.Strings = (
      'update PLACON'
      'set'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  CONTA = :CONTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PLACON = :ID_PLACON,'
      '  NIVEL = :NIVEL,'
      '  TIPO = :TIPO'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    Left = 241
    Top = 56
    object tblPlaconID_PLACON: TIntegerField
      FieldName = 'ID_PLACON'
      Origin = '"PLACON"."ID_PLACON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPlaconCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"PLACON"."CONTA"'
      Size = 4
    end
    object tblPlaconDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PLACON"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblPlaconTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PLACON"."TIPO"'
      Size = 1
    end
    object tblPlaconNIVEL: TIBStringField
      FieldName = 'NIVEL'
      Origin = '"PLACON"."NIVEL"'
      Size = 1
    end
    object tblPlaconCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"PLACON"."CLASSIFICACAO"'
      Size = 1
    end
  end
  object DataSourcePlacon: TDataSource
    AutoEdit = False
    DataSet = tblPlacon
    Left = 273
    Top = 56
  end
  object tblCaixa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOCUMENTO, FORMA_PA' +
        'G, HISTORICO, '
      
        '   ID_CAIXA, ID_CLIENTES, ID_CONCESSIONARIA, NATUREZA, ORIGEM, S' +
        'TATUS, '
      '   VALOR)'
      'values'
      
        '  (:CONTA, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :DOCUMENTO, :FOR' +
        'MA_PAG, '
      
        '   :HISTORICO, :ID_CAIXA, :ID_CLIENTES, :ID_CONCESSIONARIA, :NAT' +
        'UREZA, '
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
      '  STATUS'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select * from CAIXA')
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
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    Left = 144
    Top = 120
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
    end
    object tblCaixaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CAIXA"."ID_CLIENTES"'
    end
    object tblCaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CAIXA"."DOCUMENTO"'
      Required = True
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
      Required = True
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
      Required = True
      Size = 4
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 50
    end
    object tblCaixaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 176
    Top = 120
  end
  object DataSourceSetor: TDataSource
    AutoEdit = False
    DataSet = tblSetor
    Left = 320
    Top = 8
  end
  object tblSetor: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
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
    Left = 288
    Top = 8
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
  object DataSourceDespesas: TDataSource
    AutoEdit = False
    DataSet = tblDespesas
    Left = 296
    Top = 120
  end
  object tblDespesas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    DeleteSQL.Strings = (
      'delete from DESPESAS'
      'where'
      '  ID_DESPESAS = :OLD_ID_DESPESAS')
    InsertSQL.Strings = (
      'insert into DESPESAS'
      
        '  (CONTA, DATA, HISTORICO, ID_CONCESSIONARIA, ID_DESPESAS, SETOR' +
        ', VALOR)'
      'values'
      
        '  (:CONTA, :DATA, :HISTORICO, :ID_CONCESSIONARIA, :ID_DESPESAS, ' +
        ':SETOR, '
      '   :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DESPESAS,'
      '  ID_CONCESSIONARIA,'
      '  CONTA,'
      '  HISTORICO,'
      '  DATA,'
      '  SETOR,'
      '  VALOR'
      'from DESPESAS '
      'where'
      '  ID_DESPESAS = :ID_DESPESAS')
    SelectSQL.Strings = (
      'select * from DESPESAS')
    ModifySQL.Strings = (
      'update DESPESAS'
      'set'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_DESPESAS = :ID_DESPESAS,'
      '  SETOR = :SETOR,'
      '  VALOR = :VALOR'
      'where'
      '  ID_DESPESAS = :OLD_ID_DESPESAS')
    Left = 264
    Top = 120
    object tblDespesasID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"DESPESAS"."ID_DESPESAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblDespesasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DESPESAS"."ID_CONCESSIONARIA"'
    end
    object tblDespesasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"DESPESAS"."CONTA"'
      Size = 4
    end
    object tblDespesasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"DESPESAS"."HISTORICO"'
      Size = 60
    end
    object tblDespesasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DESPESAS"."DATA"'
    end
    object tblDespesasSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = '"DESPESAS"."SETOR"'
      Size = 1
    end
    object tblDespesasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"DESPESAS"."VALOR"'
      Precision = 18
      Size = 2
    end
  end
end
