object BoxFinanceiroCaixaEntradasPedidosCheques: TBoxFinanceiroCaixaEntradasPedidosCheques
  Left = 15
  Top = 280
  Caption = 
    'Entradas de caixa - Pend'#234'ncias de pedidos - Recebimento de chequ' +
    'es p'#243's'
  ClientHeight = 387
  ClientWidth = 578
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
    Width = 578
    Height = 369
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 214
      Height = 13
      Caption = 'Lista de pend'#234'ncias dos pedidos de ve'#237'culos:'
    end
    object Panel2: TPanel
      Left = 8
      Top = 299
      Width = 562
      Height = 62
      TabOrder = 1
      object Label5: TLabel
        Left = 16
        Top = 11
        Width = 139
        Height = 13
        Caption = 'Novo n'#250'mero do documento:'
      end
      object Label4: TLabel
        Left = 16
        Top = 38
        Width = 89
        Height = 13
        Caption = 'Data recebimento:'
      end
      object BtnConfirma: TBitBtn
        Left = 355
        Top = 15
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
        TabOrder = 1
        OnClick = BtnConfirmaClick
      end
      object NovoDocumento: TDBEdit
        Left = 161
        Top = 8
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DataSourceCreceber
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DataRecebimento: TJvDateEdit
        Left = 161
        Top = 35
        Width = 121
        Height = 21
        ShowNullDate = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 151
      Width = 562
      Height = 142
      TabOrder = 0
      object LabelCliente: TLabel
        Left = 16
        Top = 39
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object Label12: TLabel
        Left = 16
        Top = 93
        Width = 28
        Height = 13
        Caption = 'Valor:'
      end
      object LabelData: TLabel
        Left = 16
        Top = 66
        Width = 59
        Height = 13
        Caption = 'Vencimento:'
      end
      object Label1: TLabel
        Left = 16
        Top = 12
        Width = 58
        Height = 13
        Caption = 'Documento:'
      end
      object Label2: TLabel
        Left = 16
        Top = 120
        Width = 45
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Cliente: TDBEdit
        Left = 79
        Top = 36
        Width = 36
        Height = 21
        DataField = 'ID_CLIENTES'
        DataSource = DataSourceCreceber
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object Valor: TDBEdit
        Left = 79
        Top = 90
        Width = 121
        Height = 21
        DataField = 'VALOR'
        DataSource = DataSourceCreceber
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object Documento: TDBEdit
        Left = 79
        Top = 9
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DataSourceCreceber
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object Data: TJvDBDateEdit
        Left = 79
        Top = 63
        Width = 121
        Height = 21
        DataField = 'VENCIMENTO'
        DataSource = DataSourceCreceber
        ShowNullDate = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object Historico: TDBEdit
        Left = 79
        Top = 117
        Width = 386
        Height = 21
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DataSourceCreceber
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 368
    Width = 578
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 25
    Width = 562
    Height = 120
    DataSource = DataSourceCreceber
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
        FieldName = 'ID_PEDIDO_VEICULOS'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido:'
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
      end>
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
      
        '  (BANCO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ID_AVALISTA, ID_' +
        'CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_CRECEBER, ID_FORMA_PAGAMENTO, ID_PEDIDO' +
        '_VEICULOS, '
      
        '   ORIGEM, PAGAMENTO, PARCELA, STATUS, TOTAL, VALOR, VALOR_PAGO,' +
        ' VENCIMENTO, '
      '   VEZES)'
      'values'
      
        '  (:BANCO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTORICO, :ID_AVALIST' +
        'A, :ID_CLIENTES, '
      
        '   :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_FORMA_PAGAMENTO, :ID_PE' +
        'DIDO_VEICULOS, '
      
        '   :ORIGEM, :PAGAMENTO, :PARCELA, :STATUS, :TOTAL, :VALOR, :VALO' +
        'R_PAGO, '
      '   :VENCIMENTO, :VEZES)')
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
      '  ID_PEDIDO_VEICULOS'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select * from Creceber'
      'where status= '#39'Pendente'#39
      'and '
      'id_Concessionaria = :id'
      ''
      'order by ID_PEDIDO_VEICULOS'
      '')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  BANCO = :BANCO,'
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
    Left = 144
    Top = 88
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
    object tblCreceberID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCreceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
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
    object tblCreceberBOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourcePedidoVeiculosRecebimento: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculosRecebimento
    Left = 264
    Top = 88
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = tblCreceber
    Left = 176
    Top = 88
  end
  object tblPedidoVeiculosRecebimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCreceberAfterCancel
    AfterDelete = tblCreceberAfterPost
    AfterPost = tblCreceberAfterPost
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
      'where id_CReceber = :id')
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
    object tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CRECEBER"'
    end
  end
end
