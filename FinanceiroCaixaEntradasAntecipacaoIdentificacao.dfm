object BoxFinanceiroCaixaEntradasAntecipacaoIdentificacao: TBoxFinanceiroCaixaEntradasAntecipacaoIdentificacao
  Left = 15
  Top = 225
  Caption = 'Identifica'#231#227'o de antecipa'#231#227'o'
  ClientHeight = 387
  ClientWidth = 954
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
    Left = 0
    Top = 0
    Width = 954
    Height = 387
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 169
      Width = 222
      Height = 13
      Caption = 'Pend'#234'ncias de caixa - balc'#227'o e pedidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 11
      Width = 187
      Height = 13
      Caption = 'Antecipa'#231#245'es de caixa recebidas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 367
      Width = 952
      Height = 19
      Panels = <>
    end
    object wwDBGrid1: TwwDBGrid
      Left = 8
      Top = 30
      Width = 937
      Height = 133
      Selected.Strings = (
        'ID_CONCESSIONARIA'#9'10'#9'Conces.:'#9'F'
        'ID_CLIENTES'#9'10'#9'Seq.Cliente:'#9'F'
        'NOME'#9'40'#9'Nome do cliente:'#9'F'
        'DOCUMENTO'#9'10'#9'Documento:'#9'F'
        'PAGAMENTO'#9'10'#9'Data recebimento:'#9'F'
        'VALOR_PAGO'#9'19'#9'Valor recebido:'#9'F'
        'HISTORICO'#9'40'#9'Hist'#243'rico:'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnCellChanged = wwDBGrid1DblClick
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceAntecipacao
      TabOrder = 0
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
      OnKeyPress = wwDBGrid1KeyPress
      OnKeyUp = wwDBGrid1KeyDown
    end
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 188
      Width = 937
      Height = 141
      Selected.Strings = (
        'ID_CONCESSIONARIA'#9'10'#9'Conces.:'#9'F'
        'ID_CLIENTES'#9'10'#9'Seq.Cliente:'#9'F'
        'NOME'#9'40'#9'Nome:'#9'F'
        'DOCUMENTO'#9'10'#9'Documento:'#9'F'
        'PARCELA'#9'2'#9'Parc.:'#9'F'
        'VEZES'#9'2'#9'Vezes:'#9'F'
        'ORIGEM'#9'1'#9'Origem:'#9'F'
        'VENCIMENTO'#9'10'#9'Vencimento:'#9'F'
        'VALOR'#9'19'#9'Valor:'#9'F'
        'EMISSAO'#9'10'#9'Emiss'#227'o:'#9'F'
        'HISTORICO'#9'40'#9'Hist'#243'rico:'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourcePendencias
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
    end
    object BtnConfirma: TBitBtn
      Left = 399
      Top = 335
      Width = 121
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
      TabOrder = 2
      OnClick = BtnConfirmaClick
    end
  end
  object tblAntecipacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAntecipacaoAfterCancel
    AfterDelete = tblAntecipacaoAfterPost
    AfterPost = tblAntecipacaoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CRECEBER'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into CRECEBER'
      
        '  (BANCO, BOLETO_EMITIDO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ' +
        'ID_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_CRECEBER, ID_CRECEBER_RENE' +
        'GOCIADO, '
      
        '   ID_FORMA_PAGAMENTO, ID_PEDIDO_VEICULOS, ORIGEM, PAGAMENTO, PA' +
        'RCELA, '
      '   STATUS, TOTAL, VALOR, VALOR_PAGO, VENCIMENTO, VEZES)'
      'values'
      
        '  (:BANCO, :BOLETO_EMITIDO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTO' +
        'RICO, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_CRECEBER_' +
        'RENEGOCIADO, '
      
        '   :ID_FORMA_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ORIGEM, :PAGAMENTO' +
        ', :PARCELA, '
      '   :STATUS, :TOTAL, :VALOR, :VALOR_PAGO, :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  ID_CRECEBER_RENEGOCIADO,'
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
      'from CRECEBER '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select Cr.*, Cl.nome from CRECEBER Cr'
      'inner join Clientes Cl on (Cl.Id_Clientes = Cr.Id_Clientes)'
      'where Cr.Status = '#39'Antecipado'#39
      'and'
      'Cr.Id_Concessionaria = :idConcessionaria')
    ModifySQL.Strings = (
      'update CRECEBER'
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
      '  ID_CRECEBER_RENEGOCIADO = :ID_CRECEBER_RENEGOCIADO,'
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
    Left = 304
    Top = 56
    object tblAntecipacaoID_CRECEBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAntecipacaoID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAntecipacaoID_CLIENTES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Required = True
    end
    object tblAntecipacaoDOCUMENTO: TIBStringField
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblAntecipacaoPARCELA: TIBStringField
      DisplayWidth = 2
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblAntecipacaoVEZES: TIBStringField
      DisplayWidth = 2
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblAntecipacaoID_FORMA_PAGAMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblAntecipacaoORIGEM: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblAntecipacaoVENCIMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblAntecipacaoVALOR: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAntecipacaoEMISSAO: TDateField
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblAntecipacaoTOTAL: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAntecipacaoPAGAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblAntecipacaoVALOR_PAGO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAntecipacaoSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object tblAntecipacaoNOME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblAntecipacaoID_AVALISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
      Visible = False
    end
    object tblAntecipacaoID_CRECEBER_RENEGOCIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
      Visible = False
    end
    object tblAntecipacaoCONTA: TIBStringField
      DisplayWidth = 5
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Visible = False
      Size = 5
    end
    object tblAntecipacaoBANCO: TIBStringField
      DisplayWidth = 5
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Visible = False
      Size = 5
    end
    object tblAntecipacaoID_PEDIDO_VEICULOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
      Visible = False
    end
    object tblAntecipacaoBOLETO_EMITIDO: TIBStringField
      DisplayWidth = 1
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblAntecipacaoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 61
    end
  end
  object DataSourceAntecipacao: TDataSource
    AutoEdit = False
    DataSet = tblAntecipacao
    Left = 336
    Top = 56
  end
  object DataSourcePendencias: TDataSource
    AutoEdit = False
    DataSet = tblPendencias
    Left = 352
    Top = 240
  end
  object tblPendencias: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAntecipacaoAfterCancel
    AfterDelete = tblAntecipacaoAfterPost
    AfterPost = tblAntecipacaoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CRECEBER'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into CRECEBER'
      
        '  (BANCO, BOLETO_EMITIDO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ' +
        'ID_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_CRECEBER, ID_CRECEBER_RENE' +
        'GOCIADO, '
      
        '   ID_FORMA_PAGAMENTO, ID_PEDIDO_VEICULOS, ORIGEM, PAGAMENTO, PA' +
        'RCELA, '
      '   STATUS, TOTAL, VALOR, VALOR_PAGO, VENCIMENTO, VEZES)'
      'values'
      
        '  (:BANCO, :BOLETO_EMITIDO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTO' +
        'RICO, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_CRECEBER_' +
        'RENEGOCIADO, '
      
        '   :ID_FORMA_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ORIGEM, :PAGAMENTO' +
        ', :PARCELA, '
      '   :STATUS, :TOTAL, :VALOR, :VALOR_PAGO, :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  ID_CRECEBER_RENEGOCIADO,'
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
      'from CRECEBER '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select Cr.*, Cl.nome from CRECEBER Cr'
      'inner join Clientes Cl on (Cl.Id_Clientes = Cr.Id_Clientes)'
      'where Cr.Status = '#39'Pendente'#39
      'and'
      'Cr.Id_Clientes = :IdClientes'
      'and'
      'Cr.Id_Concessionaria = :idConcessionaria')
    ModifySQL.Strings = (
      'update CRECEBER'
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
      '  ID_CRECEBER_RENEGOCIADO = :ID_CRECEBER_RENEGOCIADO,'
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
    Left = 320
    Top = 240
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Required = True
    end
    object IBStringField1: TIBStringField
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 2
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object IBStringField3: TIBStringField
      DisplayWidth = 2
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object IBStringField4: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object DateField1: TDateField
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object IBBCDField1: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object DateField2: TDateField
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object IBBCDField2: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object DateField3: TDateField
      DisplayWidth = 10
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object IBBCDField3: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField6: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object IBStringField7: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
      Visible = False
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
      Visible = False
    end
    object IBStringField8: TIBStringField
      DisplayWidth = 5
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Visible = False
      Size = 5
    end
    object IBStringField9: TIBStringField
      DisplayWidth = 5
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Visible = False
      Size = 5
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
      Visible = False
    end
    object IBStringField10: TIBStringField
      DisplayWidth = 1
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPendenciasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 61
    end
  end
  object tblPedidoVeiculosRecebimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAntecipacaoAfterCancel
    AfterDelete = tblAntecipacaoAfterPost
    AfterPost = tblAntecipacaoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS_RECEBIMENTO'
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :OLD_ID_PEDIDO_VEICULOS_RECEB' +
        'IMENTO')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS_RECEBIMENTO'
      
        '  (CX_BC, DATA_RECEBIMENTO, FORMA_PAGAMENTO, ID_CONCESSIONARIA, ' +
        'ID_CRECEBER, '
      
        '   ID_FORMAS_PAGAMENTO, ID_PEDIDO_VEICULOS, ID_PEDIDO_VEICULOS_R' +
        'ECEBIMENTO, '
      '   VALOR_DEVIDO, VALOR_ORIGINAL, VALOR_RECEBIDO, VENCIMENTO)'
      'values'
      
        '  (:CX_BC, :DATA_RECEBIMENTO, :FORMA_PAGAMENTO, :ID_CONCESSIONAR' +
        'IA, :ID_CRECEBER, '
      
        '   :ID_FORMAS_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ID_PEDIDO_VEICULO' +
        'S_RECEBIMENTO, '
      '   :VALOR_DEVIDO, :VALOR_ORIGINAL, :VALOR_RECEBIDO, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS_RECEBIMENTO,'
      '  ID_PEDIDO_VEICULOS,'
      '  ID_FORMAS_PAGAMENTO,'
      '  VALOR_ORIGINAL,'
      '  VALOR_DEVIDO,'
      '  VENCIMENTO,'
      '  DATA_RECEBIMENTO,'
      '  CX_BC,'
      '  VALOR_RECEBIDO,'
      '  FORMA_PAGAMENTO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CRECEBER'
      'from PEDIDO_VEICULOS_RECEBIMENTO '
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :ID_PEDIDO_VEICULOS_RECEBIMEN' +
        'TO')
    SelectSQL.Strings = (
      'select * from PEDIDO_VEICULOS_RECEBIMENTO'
      'where id_Creceber = :idCreceber')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS_RECEBIMENTO'
      'set'
      '  CX_BC = :CX_BC,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :ID_PEDIDO_VEICULOS_RECEBIMEN' +
        'TO,'
      '  VALOR_DEVIDO = :VALOR_DEVIDO,'
      '  VALOR_ORIGINAL = :VALOR_ORIGINAL,'
      '  VALOR_RECEBIDO = :VALOR_RECEBIDO,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :OLD_ID_PEDIDO_VEICULOS_RECEB' +
        'IMENTO')
    ParamCheck = True
    UniDirectional = False
    Left = 544
    Top = 240
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_RECEBIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS_RECEBIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS"'
    end
    object tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_ORIGINAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField
      FieldName = 'VALOR_DEVIDO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_DEVIDO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VENCIMENTO"'
    end
    object tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."DATA_RECEBIMENTO"'
    end
    object tblPedidoVeiculosRecebimentoCX_BC: TIBStringField
      FieldName = 'CX_BC'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."CX_BC"'
      Size = 10
    end
    object tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_RECEBIDO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."FORMA_PAGAMENTO"'
    end
    object tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_FORMAS_PAGAMENTO"'
    end
    object tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CONCESSIONARIA"'
    end
    object tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CRECEBER"'
    end
  end
  object DataSourcePedidoVeiculosRecebimento: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculosRecebimento
    Left = 576
    Top = 240
  end
end
