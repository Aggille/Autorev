object BoxFinanceiroCaixaSaidasCPagar: TBoxFinanceiroCaixaSaidasCPagar
  Left = 15
  Top = 215
  Caption = 'Sa'#237'das de caixa - Contas '#224' pagar'
  ClientHeight = 371
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
    Top = 352
    Width = 361
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 353
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 172
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object LabelData: TLabel
      Left = 16
      Top = 199
      Width = 84
      Height = 13
      Caption = 'Data pagamento:'
    end
    object Label11: TLabel
      Left = 16
      Top = 226
      Width = 33
      Height = 13
      Caption = 'Conta:'
    end
    object Label12: TLabel
      Left = 16
      Top = 253
      Width = 45
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object Label2: TLabel
      Left = 16
      Top = 291
      Width = 106
      Height = 13
      Caption = 'Forma de pagamento:'
    end
    object SpeedButton1: TSpeedButton
      Left = 121
      Top = 222
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
      Top = 311
      Width = 43
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label6: TLabel
      Left = 16
      Top = 330
      Width = 41
      Height = 13
      Caption = 'Cheque:'
    end
    object Bevel1: TBevel
      Left = 16
      Top = 277
      Width = 337
      Height = 9
    end
    object Label3: TLabel
      Left = 150
      Top = 172
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Documento: TDBEdit
      Left = 79
      Top = 169
      Width = 65
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DataSourceCaixa
      Enabled = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object Data: TJvDBDateEdit
      Left = 121
      Top = 196
      Width = 121
      Height = 21
      DataField = 'DATA_RECEBIMENTO'
      DataSource = DataSourceCaixa
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object CodigoConta: TDBEdit
      Left = 79
      Top = 223
      Width = 36
      Height = 21
      DataField = 'CONTA'
      DataSource = DataSourceCaixa
      TabOrder = 4
      OnExit = CodigoContaExit
      OnKeyPress = FormKeyPress
    end
    object Historico: TDBEdit
      Left = 79
      Top = 250
      Width = 274
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DataSourceCaixa
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object NomeConta: TDBEdit
      Left = 150
      Top = 223
      Width = 203
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object Dinheiro: TCurrencyEdit
      Left = 111
      Top = 308
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object Cheque: TCurrencyEdit
      Left = 111
      Top = 327
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 9
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 243
      Top = 317
      Width = 110
      Height = 26
      Caption = 'Confirma'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
      Top = 169
      Width = 127
      Height = 21
      DataField = 'ORIGEM'
      DataSource = DataSourceCaixa
      KeyField = 'SETOR'
      ListField = 'NOME'
      ListSource = DataSourceSetor
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 9
      Top = 8
      Width = 344
      Height = 153
      DataSource = DataSourceCpagar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnExit = DBGrid1Exit
      OnKeyPress = FormKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Documento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Title.Caption = 'Hist'#243'rico:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status:'
          Visible = True
        end>
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
    Left = 193
    Top = 216
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
    Left = 225
    Top = 216
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
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    Left = 296
    Top = 280
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
    object tblCaixaJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"CAIXA"."JUROS"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 328
    Top = 280
  end
  object DataSourceSetor: TDataSource
    AutoEdit = False
    DataSet = tblSetor
    Left = 288
    Top = 168
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
    Left = 256
    Top = 168
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
  object tblCPagar: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    DeleteSQL.Strings = (
      'delete from CPAGAR'
      'where'
      '  ID_CPAGAR = :OLD_ID_CPAGAR')
    InsertSQL.Strings = (
      'insert into CPAGAR'
      
        '  (BANCO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ID_CLIENTES, ID_' +
        'CONCESSIONARIA, '
      
        '   ID_CPAGAR, ID_FORMA_PAGAMENTO, NFISCAL, PAGAMENTO, STATUS, VA' +
        'LOR, VALOR_PAGO, '
      '   VENCIMENTO)'
      'values'
      
        '  (:BANCO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTORICO, :ID_CLIENTE' +
        'S, :ID_CONCESSIONARIA, '
      
        '   :ID_CPAGAR, :ID_FORMA_PAGAMENTO, :NFISCAL, :PAGAMENTO, :STATU' +
        'S, :VALOR, '
      '   :VALOR_PAGO, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CPAGAR,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  NFISCAL,'
      '  CONTA,'
      '  ID_FORMA_PAGAMENTO,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  EMISSAO,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  BANCO,'
      '  HISTORICO,'
      '  STATUS'
      'from CPAGAR '
      'where'
      '  ID_CPAGAR = :ID_CPAGAR')
    SelectSQL.Strings = (
      'select * from CPAGAR'
      'where status<> '#39'Pendente'#39
      'and '
      'Status <> '#39'Pago'#39
      'and '
      'Status <> '#39'Cancelado'#39
      'and '
      'id_Concessionaria = :id'
      'order by vencimento')
    ModifySQL.Strings = (
      'update CPAGAR'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CPAGAR = :ID_CPAGAR,'
      '  ID_FORMA_PAGAMENTO = :ID_FORMA_PAGAMENTO,'
      '  NFISCAL = :NFISCAL,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_CPAGAR = :OLD_ID_CPAGAR')
    Left = 152
    Top = 48
    object tblCPagarID_CPAGAR: TIntegerField
      FieldName = 'ID_CPAGAR'
      Origin = '"CPAGAR"."ID_CPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCPagarID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CPAGAR"."ID_CONCESSIONARIA"'
    end
    object tblCPagarID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CPAGAR"."ID_CLIENTES"'
    end
    object tblCPagarDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CPAGAR"."DOCUMENTO"'
      Required = True
      Size = 10
    end
    object tblCPagarNFISCAL: TIBStringField
      FieldName = 'NFISCAL'
      Origin = '"CPAGAR"."NFISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblCPagarCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CPAGAR"."CONTA"'
      Size = 4
    end
    object tblCPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CPAGAR"."VENCIMENTO"'
    end
    object tblCPagarVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CPAGAR"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCPagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CPAGAR"."EMISSAO"'
    end
    object tblCPagarPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CPAGAR"."PAGAMENTO"'
    end
    object tblCPagarVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CPAGAR"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCPagarBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CPAGAR"."BANCO"'
      Size = 4
    end
    object tblCPagarHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CPAGAR"."HISTORICO"'
      Required = True
      Size = 50
    end
    object tblCPagarSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CPAGAR"."STATUS"'
    end
    object tblCPagarID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CPAGAR"."ID_FORMA_PAGAMENTO"'
    end
  end
  object DataSourceCpagar: TDataSource
    AutoEdit = False
    DataSet = tblCPagar
    Left = 184
    Top = 48
  end
  object DataSourceDespesas: TDataSource
    AutoEdit = False
    DataSet = tblDespesas
    Left = 152
    Top = 272
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
    Left = 120
    Top = 272
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
