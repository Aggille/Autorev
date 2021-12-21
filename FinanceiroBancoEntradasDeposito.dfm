object BoxFinanceiroBancoEntradasDeposito: TBoxFinanceiroBancoEntradasDeposito
  Left = 15
  Top = 215
  Caption = 'Bancos entradas - Cheques em dep'#243'sito'
  ClientHeight = 403
  ClientWidth = 710
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
  object Panel1: TPanel
    Left = -3
    Top = 0
    Width = 713
    Height = 395
    TabOrder = 0
    object Label2: TLabel
      Left = 266
      Top = 135
      Width = 189
      Height = 13
      Caption = 'Cheques correspondentes ao dep'#243'sito:'
    end
    object Label1: TLabel
      Left = 11
      Top = 356
      Width = 86
      Height = 13
      Caption = 'Data do dep'#243'sito:'
    end
    object BtnConfirma: TBitBtn
      Left = 288
      Top = 353
      Width = 120
      Height = 26
      Caption = 'Concilia dep'#243'sito'
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
      TabOrder = 1
      OnClick = BtnConfirmaClick
    end
    object DataDeposito: TJvDateEdit
      Left = 103
      Top = 353
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 8
    Width = 694
    Height = 121
    ControlType.Strings = (
      'DEPOSITADO;CheckBox;S;N')
    Selected.Strings = (
      'DOCUMENTO'#9'10'#9'Documento:'#9'F'
      'VALOR'#9'19'#9'Valor:'#9'F'
      'HISTORICO'#9'60'#9'Hist'#243'rico:'#9'F'
      'BANCO'#9'4'#9'Banco:'#9'F'
      'DATA'#9'10'#9'Data:'#9'F'
      'ID_CONCESSIONARIA'#9'10'#9'Concession'#225'ria'#9'F'
      'ID_BANCO'#9'10'#9'ID_BANCO'#9'F'
      'NATUREZA'#9'1'#9'NATUREZA'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSourceBanco
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyDown = wwDBGrid1KeyDown
    OnKeyUp = wwDBGrid1KeyDown
    PaintOptions.AlternatingRowColor = 16250871
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 710
    Height = 19
    Panels = <>
  end
  object wwDBGrid2: TwwDBGrid
    Left = 8
    Top = 154
    Width = 694
    Height = 193
    ControlType.Strings = (
      'DEPOSITADO;CustomEdit;wwDBComboBox1;F'
      'MOTIVO;CustomEdit;wwDBComboBox2;F')
    Selected.Strings = (
      'DEPOSITADO'#9'10'#9'Situa'#231#227'o:'#9'F'
      'MOTIVO'#9'2'#9'Motivo:'#9'F'
      'DOCUMENTO'#9'10'#9'Documento:'#9'F'
      'VALOR'#9'19'#9'Valor:'#9'F'
      'HISTORICO'#9'60'#9'Hist'#243'rico:'#9'F'
      'ID_CONCESSIONARIA'#9'10'#9'Concession'#225'ria'#9'F'
      'NATUREZA'#9'1'#9'NATUREZA'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSourceCaixaCheques
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object wwDBComboBox1: TwwDBComboBox
    Left = 8
    Top = 176
    Width = 73
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    DataField = 'DEPOSITADO'
    DataSource = DataSourceCaixaCheques
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Compensado'
      'Devolvido')
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object wwDBComboBox2: TwwDBComboBox
    Left = 79
    Top = 176
    Width = 42
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    DataField = 'MOTIVO'
    DataSource = DataSourceCaixaCheques
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      '11'
      '12'
      '13'
      '20'
      '21'
      '28'
      '35'
      '44')
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object tblBanco: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceberAfterCancel
    AfterDelete = tblCreceberAfterPost
    AfterPost = tblCreceberAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Banco'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    InsertSQL.Strings = (
      'insert into Banco'
      
        '  (BANCO, CONTA, DATA, DOCUMENTO, HISTORICO, ID_AVALISTA, ID_BAN' +
        'CO, ID_CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_CRECEBER, ID_DESPESAS, JUROS, NATUREZA,' +
        ' ORIGEM, '
      '   VALOR)'
      'values'
      
        '  (:BANCO, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :ID_AVALISTA, ' +
        ':ID_BANCO, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_DESPESAS,' +
        ' :JUROS, '
      '   :NATUREZA, :ORIGEM, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_BANCO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  DOCUMENTO,'
      '  NATUREZA,'
      '  DATA,'
      '  VALOR,'
      '  BANCO,'
      '  CONTA,'
      '  HISTORICO,'
      '  JUROS,'
      '  ORIGEM,'
      '  ID_CRECEBER,'
      '  ID_DESPESAS'
      'from Banco '
      'where'
      '  ID_BANCO = :ID_BANCO')
    SelectSQL.Strings = (
      'Select b.* from Banco b'
      'where'
      'b.Natureza = '#39'P'#39
      'and'
      'b.id_Concessionaria = :IdConcessionaria')
    ModifySQL.Strings = (
      'update Banco'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_BANCO = :ID_BANCO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_DESPESAS = :ID_DESPESAS,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  VALOR = :VALOR'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    ParamCheck = True
    UniDirectional = False
    Left = 288
    Top = 48
    object tblBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = '"BANCO"."ID_BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblBancoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"BANCO"."ID_CONCESSIONARIA"'
    end
    object tblBancoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"BANCO"."ID_CLIENTES"'
    end
    object tblBancoID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"BANCO"."ID_AVALISTA"'
    end
    object tblBancoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"BANCO"."DOCUMENTO"'
      Size = 13
    end
    object tblBancoNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"BANCO"."NATUREZA"'
      Size = 1
    end
    object tblBancoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"BANCO"."DATA"'
    end
    object tblBancoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BANCO"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblBancoBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"BANCO"."BANCO"'
      Size = 4
    end
    object tblBancoCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"BANCO"."CONTA"'
      Size = 4
    end
    object tblBancoJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"BANCO"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblBancoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"BANCO"."ORIGEM"'
      Size = 1
    end
    object tblBancoID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"BANCO"."ID_CRECEBER"'
    end
    object tblBancoID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"BANCO"."ID_DESPESAS"'
    end
    object tblBancoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BANCO"."HISTORICO"'
      Size = 60
    end
  end
  object DataSourceBanco: TDataSource
    AutoEdit = False
    DataSet = tblBanco
    Left = 320
    Top = 48
  end
  object tblCaixaCheques: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceberAfterCancel
    AfterDelete = tblCreceberAfterPost
    AfterPost = tblCreceberAfterPost
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
      
        '   ID_CAIXA, ID_CLIENTES, ID_CONCESSIONARIA, ID_DEPOSITO, JUROS,' +
        ' NATUREZA, '
      '   ORIGEM, STATUS, STATUS_BANCO, VALOR)'
      'values'
      
        '  (:CONTA, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :DOCUMENTO, :FOR' +
        'MA_PAG, '
      
        '   :HISTORICO, :ID_CAIXA, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_' +
        'DEPOSITO, '
      '   :JUROS, :NATUREZA, :ORIGEM, :STATUS, :STATUS_BANCO, :VALOR)')
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
      '  JUROS,'
      '  STATUS_BANCO,'
      '  ID_DEPOSITO'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select'
      
        'CONTA, DATA_RECEBIMENTO, DOCUMENTO, FORMA_PAG, HISTORICO, ID_CAI' +
        'XA, '
      
        'ID_CLIENTES, ID_CONCESSIONARIA, ID_DEPOSITO, JUROS, NATUREZA, OR' +
        'IGEM, '
      'STATUS, STATUS_BANCO, VALOR, DATA_LANCAMENTO,'
      #39'Depositado'#39' as depositado,'
      #39'00'#39' as motivo '
      ''
      ''
      'from CAIXA'
      ''
      ''
      'where'
      'id_Deposito = :IdDeposito'
      'and'
      'Status_Banco = '#39'Depositado'#39
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
      '  ID_DEPOSITO = :ID_DEPOSITO,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  STATUS_BANCO = :STATUS_BANCO,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    ParamCheck = True
    UniDirectional = False
    Left = 296
    Top = 232
    object IBStringField1: TIBStringField
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = '"CAIXA"."DOCUMENTO"'
      ReadOnly = True
      Size = 10
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CAIXA"."ORIGEM"'
      ReadOnly = True
      Size = 1
    end
    object IBStringField4: TIBStringField
      DisplayWidth = 13
      FieldName = 'FORMA_PAG'
      Origin = '"CAIXA"."FORMA_PAG"'
      ReadOnly = True
      Size = 13
    end
    object DateField1: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
      Origin = '"CAIXA"."DATA_LANCAMENTO"'
      ReadOnly = True
    end
    object IBBCDField1: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CAIXA"."VALOR"'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CAIXA"."ID_CLIENTES"'
      ReadOnly = True
      Visible = False
    end
    object IBStringField3: TIBStringField
      DisplayWidth = 1
      FieldName = 'NATUREZA'
      Origin = '"CAIXA"."NATUREZA"'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DateField2: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"CAIXA"."DATA_RECEBIMENTO"'
      ReadOnly = True
      Visible = False
    end
    object IBStringField5: TIBStringField
      DisplayWidth = 4
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      ReadOnly = True
      Visible = False
      Size = 4
    end
    object IBStringField7: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
      ReadOnly = True
      Visible = False
    end
    object tblCaixaJUROS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'JUROS'
      Origin = '"CAIXA"."JUROS"'
      ReadOnly = True
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblCaixaChequesSTATUS_BANCO: TIBStringField
      FieldName = 'STATUS_BANCO'
      Origin = '"CAIXA"."STATUS_BANCO"'
      ReadOnly = True
    end
    object tblCaixaChequesID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
      ReadOnly = True
    end
    object tblCaixaChequesDEPOSITADO: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEPOSITADO'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object tblCaixaChequesMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object tblCaixaChequesHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 60
    end
  end
  object DataSourceCaixaCheques: TDataSource
    DataSet = tblCaixaCheques
    Left = 328
    Top = 232
  end
  object tblCreceber: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceberAfterCancel
    AfterDelete = tblCreceberAfterPost
    AfterPost = tblCreceberAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Creceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into Creceber'
      
        '  (BANCO, BOLETO_EMITIDO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ' +
        'ID_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_CRECEBER, ID_FORMA_PAGAMEN' +
        'TO, ID_PEDIDO_VEICULOS, '
      
        '   ORIGEM, PAGAMENTO, PARCELA, STATUS, TOTAL, VALOR, VALOR_PAGO,' +
        ' VENCIMENTO, '
      '   VEZES)'
      'values'
      
        '  (:BANCO, :BOLETO_EMITIDO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTO' +
        'RICO, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_FORMA_PAG' +
        'AMENTO, '
      
        '   :ID_PEDIDO_VEICULOS, :ORIGEM, :PAGAMENTO, :PARCELA, :STATUS, ' +
        ':TOTAL, '
      '   :VALOR, :VALOR_PAGO, :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  DOCUMENTO,'
      '  PARCELA,'
      '  VEZES,'
      '  ID_FORMA_PAGAMENTO,'
      '  ORIGEM,'
      '  CONTA,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  EMISSAO,'
      '  TOTAL,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  BANCO,'
      '  HISTORICO,'
      '  STATUS,'
      '  ID_PEDIDO_VEICULOS,'
      '  BOLETO_EMITIDO'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select * from Creceber'
      'where status<> '#39'Pendente'#39
      'and '
      'Status <> '#39'Recebido'#39
      'and'
      'Status <> '#39'Renegociado'#39
      'and'
      'Status <> '#39'Financiado'#39
      'and '
      'id_Concessionaria = :id'
      'and'
      'id_clientes = :idClientes'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  BANCO = :BANCO,'
      '  BOLETO_EMITIDO = :BOLETO_EMITIDO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_FORMA_PAGAMENTO = :ID_FORMA_PAGAMENTO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ORIGEM = :ORIGEM,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  PARCELA = :PARCELA,'
      '  STATUS = :STATUS,'
      '  TOTAL = :TOTAL,'
      '  VALOR = :VALOR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  VEZES = :VEZES'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    ParamCheck = True
    UniDirectional = False
    Left = 512
    Top = 192
    object tblCreceberID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCreceberID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object tblCreceberID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object tblCreceberID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCreceberID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCreceberDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCreceberPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberVEZES: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceberCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object tblCreceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCreceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCreceberTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object tblCreceberPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblCreceberVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCreceberBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 4
    end
    object tblCreceberSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object tblCreceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblCreceberBOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
    object tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
    end
    object tblCreceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 61
    end
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = tblCreceber
    Left = 544
    Top = 192
  end
end
