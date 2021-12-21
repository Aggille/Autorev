object BoxFinanciamentos: TBoxFinanciamentos
  Left = 15
  Top = 85
  Caption = 'Financiamentos'
  ClientHeight = 324
  ClientWidth = 631
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
    Top = 305
    Width = 631
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 306
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 214
      Height = 13
      Caption = 'Lista de pend'#234'ncias dos pedidos de ve'#237'culos:'
    end
    object Label1: TLabel
      Left = 16
      Top = 195
      Width = 113
      Height = 13
      Caption = 'Valor do financiamento:'
    end
    object Label2: TLabel
      Left = 16
      Top = 222
      Width = 36
      Height = 13
      Caption = 'Tabela:'
    end
    object Label4: TLabel
      Left = 16
      Top = 249
      Width = 99
      Height = 13
      Caption = 'N'#250'mero de parcelas:'
    end
    object Label5: TLabel
      Left = 16
      Top = 276
      Width = 58
      Height = 13
      Caption = 'Coeficiente:'
    end
    object Label8: TLabel
      Left = 16
      Top = 168
      Width = 80
      Height = 13
      Caption = 'Nome do cliente:'
    end
    object Label6: TLabel
      Left = 281
      Top = 222
      Width = 138
      Height = 13
      Caption = 'Vencimento primeira parcela:'
    end
    object Label7: TLabel
      Left = 281
      Top = 249
      Width = 91
      Height = 13
      Caption = 'Valor das parcelas:'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 25
      Width = 617
      Height = 137
      DataSource = DataSourceCreceber1
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
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEZES'
          Title.Alignment = taCenter
          Title.Caption = 'Vezes:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMA_PAG'
          Title.Alignment = taCenter
          Title.Caption = 'Forma de pagamento:'
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
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    object ValorFinanciamento: TDBEdit
      Left = 135
      Top = 192
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = DataSourceCreceber1
      Enabled = False
      TabOrder = 1
      OnExit = DBGrid1Exit
      OnKeyPress = FormKeyPress
    end
    object NumeroParcelas: TDBEdit
      Left = 135
      Top = 246
      Width = 42
      Height = 21
      DataField = 'NUMERO_PARCELAS'
      DataSource = DataSourceTabelas
      Enabled = False
      TabOrder = 3
    end
    object Coeficiente: TDBEdit
      Left = 135
      Top = 273
      Width = 106
      Height = 21
      DataField = 'COEFICIENTE'
      DataSource = DataSourceTabelas
      Enabled = False
      TabOrder = 4
    end
    object NomeCliente: TJvDBMaskEdit
      Left = 135
      Top = 165
      Width = 463
      Height = 21
      DataField = 'NOME'
      DataSource = DataSourceCreceber1
      Enabled = False
      TabOrder = 5
    end
    object BtnConfirma: TBitBtn
      Left = 281
      Top = 268
      Width = 100
      Height = 26
      Caption = 'Confirma'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object Tabela: TDBLookupComboBox
      Left = 135
      Top = 219
      Width = 87
      Height = 21
      KeyField = 'NUMERO_PARCELAS'
      ListField = 'NUMERO_PARCELAS'
      ListFieldIndex = 1
      ListSource = DataSourceTabelas
      TabOrder = 2
      OnExit = DBGrid1Exit
      OnKeyPress = FormKeyPress
    end
    object ValorParcela: TCurrencyEdit
      Left = 425
      Top = 246
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Enabled = False
      TabOrder = 7
    end
    object BtnImprimir: TBitBtn
      Left = 387
      Top = 268
      Width = 100
      Height = 26
      Caption = 'Imprimir boleto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BtnImprimirClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C00000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FF
        FF00C0C0C000C0C0C000000000000000000000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
        8000C0C0C000C0C0C00000000000C0C0C00000000000FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C000C0C0C0000000000000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000C0C0C00000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C0C0C00000000000C0C0C0000000000000000000FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000C0C0C00000000000C0C0C00000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
        0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
        000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object VencimentoPrimeira: TJvDateEdit
      Left = 425
      Top = 219
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 9
    end
  end
  object tblCreceber1: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
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
      'select clientes.nome, creceber.* from Creceber'
      
        'inner join Clientes on (Creceber.id_Clientes = Clientes.id_Clien' +
        'tes)'
      'where Creceber.status= '#39'Pendente'#39
      'and Creceber.Id_Forma_Pagamento = 1'
      'and Creceber.id_Concessionaria = :idConcessionaria'
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
    Left = 144
    Top = 88
    object tblCreceber1ID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCreceber1ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object tblCreceber1ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object tblCreceber1ID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCreceber1DOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCreceber1PARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCreceber1VEZES: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCreceber1ORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceber1CONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object tblCreceber1VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceber1VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCreceber1EMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCreceber1TOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object tblCreceber1PAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblCreceber1VALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCreceber1BANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 4
    end
    object tblCreceber1HISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblCreceber1STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object tblCreceber1ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCreceber1ID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
    end
    object tblCreceber1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblCreceber1BOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceCreceber1: TDataSource
    AutoEdit = False
    DataSet = tblCreceber1
    Left = 176
    Top = 88
  end
  object tblPedidoVeiculosRecebimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS_RECEBIMENTO'
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :OLD_ID_PEDIDO_VEICULOS_RECEB' +
        'IMENTO')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS_RECEBIMENTO'
      
        '  (CX_BC, DATA_RECEBIMENTO, FORMA_PAGAMENTO, ID_CONCESSIONARIA, ' +
        'ID_FORMAS_PAGAMENTO, '
      
        '   ID_PEDIDO_VEICULOS, ID_PEDIDO_VEICULOS_RECEBIMENTO, VALOR_DEV' +
        'IDO, VALOR_ORIGINAL, '
      '   VALOR_RECEBIDO, VENCIMENTO)'
      'values'
      
        '  (:CX_BC, :DATA_RECEBIMENTO, :FORMA_PAGAMENTO, :ID_CONCESSIONAR' +
        'IA, :ID_FORMAS_PAGAMENTO, '
      
        '   :ID_PEDIDO_VEICULOS, :ID_PEDIDO_VEICULOS_RECEBIMENTO, :VALOR_' +
        'DEVIDO, '
      '   :VALOR_ORIGINAL, :VALOR_RECEBIDO, :VENCIMENTO)')
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
      '  ID_CONCESSIONARIA'
      'from PEDIDO_VEICULOS_RECEBIMENTO '
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :ID_PEDIDO_VEICULOS_RECEBIMEN' +
        'TO')
    SelectSQL.Strings = (
      'select * from PEDIDO_VEICULOS_RECEBIMENTO'
      'where id_Creceber = :id')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS_RECEBIMENTO'
      'set'
      '  CX_BC = :CX_BC,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
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
    Left = 232
    Top = 88
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_RECEBIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS_RECEBIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS"'
    end
    object tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_FORMAS_PAGAMENTO"'
    end
    object tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField
      FieldName = 'VALOR_DEVIDO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_DEVIDO"'
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
    object tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CONCESSIONARIA"'
    end
  end
  object DataSourcePedidoVeiculosRecebimento: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculosRecebimento
    Left = 264
    Top = 88
  end
  object tblTabelas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
    DeleteSQL.Strings = (
      'delete from TABELAS_FINANCIAMENTO'
      'where'
      '  ID_TABELAS_FINANCIAMENTO = :OLD_ID_TABELAS_FINANCIAMENTO')
    InsertSQL.Strings = (
      'insert into TABELAS_FINANCIAMENTO'
      
        '  (COEFICIENTE, ID_FINANCEIRA, ID_TABELAS_FINANCIAMENTO, NUMERO_' +
        'PARCELAS, '
      '   RETORNO, TABELA)'
      'values'
      
        '  (:COEFICIENTE, :ID_FINANCEIRA, :ID_TABELAS_FINANCIAMENTO, :NUM' +
        'ERO_PARCELAS, '
      '   :RETORNO, :TABELA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_TABELAS_FINANCIAMENTO,'
      '  ID_FINANCEIRA,'
      '  TABELA,'
      '  RETORNO,'
      '  COEFICIENTE,'
      '  NUMERO_PARCELAS'
      'from TABELAS_FINANCIAMENTO '
      'where'
      '  ID_TABELAS_FINANCIAMENTO = :ID_TABELAS_FINANCIAMENTO')
    SelectSQL.Strings = (
      'select *  from TABELAS_FINANCIAMENTO'
      'where id_financeira = 1')
    ModifySQL.Strings = (
      'update TABELAS_FINANCIAMENTO'
      'set'
      '  COEFICIENTE = :COEFICIENTE,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_TABELAS_FINANCIAMENTO = :ID_TABELAS_FINANCIAMENTO,'
      '  NUMERO_PARCELAS = :NUMERO_PARCELAS,'
      '  RETORNO = :RETORNO,'
      '  TABELA = :TABELA'
      'where'
      '  ID_TABELAS_FINANCIAMENTO = :OLD_ID_TABELAS_FINANCIAMENTO')
    Left = 216
    Top = 216
    object tblTabelasID_TABELAS_FINANCIAMENTO: TIntegerField
      FieldName = 'ID_TABELAS_FINANCIAMENTO'
      Origin = '"TABELAS_FINANCIAMENTO"."ID_TABELAS_FINANCIAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblTabelasID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"TABELAS_FINANCIAMENTO"."ID_FINANCEIRA"'
      Required = True
    end
    object tblTabelasTABELA: TIBStringField
      FieldName = 'TABELA'
      Origin = '"TABELAS_FINANCIAMENTO"."TABELA"'
      Size = 6
    end
    object tblTabelasRETORNO: TIntegerField
      FieldName = 'RETORNO'
      Origin = '"TABELAS_FINANCIAMENTO"."RETORNO"'
    end
    object tblTabelasCOEFICIENTE: TFMTBCDField
      FieldName = 'COEFICIENTE'
      Origin = '"TABELAS_FINANCIAMENTO"."COEFICIENTE"'
      Precision = 9
      Size = 5
    end
    object tblTabelasNUMERO_PARCELAS: TIBStringField
      FieldName = 'NUMERO_PARCELAS'
      Origin = '"TABELAS_FINANCIAMENTO"."NUMERO_PARCELAS"'
      Size = 2
    end
    object tblTabelasTAC: TIBBCDField
      FieldName = 'TAC'
      Origin = '"TABELAS_FINANCIAMENTO"."TAC"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceTabelas: TDataSource
    AutoEdit = False
    DataSet = tblTabelas
    Left = 248
    Top = 216
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
    SQL.Strings = (
      'SELECT GEN_ID(Seq_ContasReceber_Id, 1) as'
      'Id_CReceber From RDB$DATABASE')
    Left = 296
    Top = 88
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (ADMISSAO, BAIRRO, CADASTRO, CEP, CIDADE, CLIENTE, COBAIRRO, C' +
        'OCEP, COCIDADE, '
      
        '   CODIGO, COENDERECO, COESTADO, COMISSAO, CONTA, CPF, DESCONTO,' +
        ' EMAIL, '
      
        '   EMPR_BAIRRO, EMPR_CEP, EMPR_CIDADE, EMPR_ENDERECO, EMPR_ESTAD' +
        'O, EMPR_FONE, '
      
        '   EMPRESA, ENDERECO, ESTADO, FINANCEIRA, FONE1, FONE2, FONE3, F' +
        'ORNECEDOR, '
      
        '   FOTO, ID_CLIENTES, ID_CONCESSIONARIA, IDENTIDADE, MAE, MECANI' +
        'CO, NASCIMENTO, '
      
        '   NOME, NUM_CPF, PAI, REF_AG_BANC, REF_BANC, REF_COML_FONE1, RE' +
        'F_COML_FONE2, '
      
        '   REF_COML1, REF_COML2, REF_CTA_BANC, REF_FONE1, REF_FONE2, REF' +
        '_NOME1, '
      '   REF_NOME2, REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR)'
      'values'
      
        '  (:ADMISSAO, :BAIRRO, :CADASTRO, :CEP, :CIDADE, :CLIENTE, :COBA' +
        'IRRO, :COCEP, '
      
        '   :COCIDADE, :CODIGO, :COENDERECO, :COESTADO, :COMISSAO, :CONTA' +
        ', :CPF, '
      
        '   :DESCONTO, :EMAIL, :EMPR_BAIRRO, :EMPR_CEP, :EMPR_CIDADE, :EM' +
        'PR_ENDERECO, '
      
        '   :EMPR_ESTADO, :EMPR_FONE, :EMPRESA, :ENDERECO, :ESTADO, :FINA' +
        'NCEIRA, '
      
        '   :FONE1, :FONE2, :FONE3, :FORNECEDOR, :FOTO, :ID_CLIENTES, :ID' +
        '_CONCESSIONARIA, '
      
        '   :IDENTIDADE, :MAE, :MECANICO, :NASCIMENTO, :NOME, :NUM_CPF, :' +
        'PAI, :REF_AG_BANC, '
      
        '   :REF_BANC, :REF_COML_FONE1, :REF_COML_FONE2, :REF_COML1, :REF' +
        '_COML2, '
      
        '   :REF_CTA_BANC, :REF_FONE1, :REF_FONE2, :REF_NOME1, :REF_NOME2' +
        ', :REG_SPC, '
      '   :SALARIO, :SPC, :TRANSPORTADORA, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLIENTES,'
      '  CODIGO,'
      '  NOME,'
      '  ID_CONCESSIONARIA,'
      '  IDENTIDADE,'
      '  CPF,'
      '  NUM_CPF,'
      '  NASCIMENTO,'
      '  PAI,'
      '  MAE,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  ESTADO,'
      '  CEP,'
      '  CADASTRO,'
      '  DESCONTO,'
      '  FONE1,'
      '  FONE2,'
      '  FONE3,'
      '  COENDERECO,'
      '  COBAIRRO,'
      '  COCIDADE,'
      '  COESTADO,'
      '  COCEP,'
      '  SPC,'
      '  REG_SPC,'
      '  EMAIL,'
      '  CLIENTE,'
      '  FORNECEDOR,'
      '  TRANSPORTADORA,'
      '  FINANCEIRA,'
      '  MECANICO,'
      '  VENDEDOR,'
      '  CONTA,'
      '  COMISSAO,'
      '  EMPRESA,'
      '  ADMISSAO,'
      '  SALARIO,'
      '  EMPR_ENDERECO,'
      '  EMPR_BAIRRO,'
      '  EMPR_CIDADE,'
      '  EMPR_ESTADO,'
      '  EMPR_CEP,'
      '  EMPR_FONE,'
      '  REF_NOME1,'
      '  REF_FONE1,'
      '  REF_NOME2,'
      '  REF_FONE2,'
      '  REF_COML1,'
      '  REF_COML_FONE1,'
      '  REF_COML2,'
      '  REF_COML_FONE2,'
      '  REF_BANC,'
      '  REF_AG_BANC,'
      '  REF_CTA_BANC,'
      '  FOTO'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'Select * From CLIENTES'
      'where Cliente = '#39'T'#39' and'
      'id_Clientes = :id')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  ADMISSAO = :ADMISSAO,'
      '  BAIRRO = :BAIRRO,'
      '  CADASTRO = :CADASTRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CLIENTE = :CLIENTE,'
      '  COBAIRRO = :COBAIRRO,'
      '  COCEP = :COCEP,'
      '  COCIDADE = :COCIDADE,'
      '  CODIGO = :CODIGO,'
      '  COENDERECO = :COENDERECO,'
      '  COESTADO = :COESTADO,'
      '  COMISSAO = :COMISSAO,'
      '  CONTA = :CONTA,'
      '  CPF = :CPF,'
      '  DESCONTO = :DESCONTO,'
      '  EMAIL = :EMAIL,'
      '  EMPR_BAIRRO = :EMPR_BAIRRO,'
      '  EMPR_CEP = :EMPR_CEP,'
      '  EMPR_CIDADE = :EMPR_CIDADE,'
      '  EMPR_ENDERECO = :EMPR_ENDERECO,'
      '  EMPR_ESTADO = :EMPR_ESTADO,'
      '  EMPR_FONE = :EMPR_FONE,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  ESTADO = :ESTADO,'
      '  FINANCEIRA = :FINANCEIRA,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FONE3 = :FONE3,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  FOTO = :FOTO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  IDENTIDADE = :IDENTIDADE,'
      '  MAE = :MAE,'
      '  MECANICO = :MECANICO,'
      '  NASCIMENTO = :NASCIMENTO,'
      '  NOME = :NOME,'
      '  NUM_CPF = :NUM_CPF,'
      '  PAI = :PAI,'
      '  REF_AG_BANC = :REF_AG_BANC,'
      '  REF_BANC = :REF_BANC,'
      '  REF_COML_FONE1 = :REF_COML_FONE1,'
      '  REF_COML_FONE2 = :REF_COML_FONE2,'
      '  REF_COML1 = :REF_COML1,'
      '  REF_COML2 = :REF_COML2,'
      '  REF_CTA_BANC = :REF_CTA_BANC,'
      '  REF_FONE1 = :REF_FONE1,'
      '  REF_FONE2 = :REF_FONE2,'
      '  REF_NOME1 = :REF_NOME1,'
      '  REF_NOME2 = :REF_NOME2,'
      '  REG_SPC = :REG_SPC,'
      '  SALARIO = :SALARIO,'
      '  SPC = :SPC,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    Left = 376
    Top = 88
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPessoasIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblPessoasCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblPessoasNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblPessoasNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object tblPessoasPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object tblPessoasMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object tblPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblPessoasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblPessoasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblPessoasESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object tblPessoasCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object tblPessoasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object tblPessoasFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object tblPessoasCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object tblPessoasCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object tblPessoasCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object tblPessoasCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object tblPessoasSPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasREG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblPessoasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 4
    end
    object tblPessoasCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object tblPessoasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object tblPessoasADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object tblPessoasSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object tblPessoasEMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object tblPessoasEMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object tblPessoasEMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object tblPessoasEMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object tblPessoasEMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object tblPessoasEMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object tblPessoasREF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object tblPessoasREF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 50
    end
    object tblPessoasREF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 50
    end
    object tblPessoasREF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object tblPessoasREF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object tblPessoasREF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object tblPessoasFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 408
    Top = 88
  end
  object tblCreceber: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceber1AfterCancel
    AfterDelete = tblCreceber1AfterPost
    AfterPost = tblCreceber1AfterPost
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
      'where status= '#39'Processado'#39
      'and Id_Forma_Pagamento = 1'
      'and id_Concessionaria = :idConcessionaria'
      'and id_Pedido_veiculos = :idPedidoVeiculos'
      'and Vezes = :idVezes'
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
    Left = 80
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object IBStringField2: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object IBStringField3: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object IBStringField4: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object IBStringField5: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object DateField1: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      Precision = 18
      Size = 2
    end
    object DateField2: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object DateField3: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBStringField6: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 4
    end
    object IBStringField7: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object IBStringField8: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
    end
    object IBStringField10: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = tblCreceber
    Left = 112
    Top = 88
  end
end
