object BoxFinanceiroCaixaEntradasPendencias: TBoxFinanceiroCaixaEntradasPendencias
  Left = 15
  Top = 215
  Caption = 'Entradas de caixa - Pend'#234'ncias de balc'#227'o'
  ClientHeight = 319
  ClientWidth = 764
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
    Width = 764
    Height = 319
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 98
      Height = 13
      Caption = 'Lista de pend'#234'ncias:'
    end
    object Panel2: TPanel
      Left = 8
      Top = 247
      Width = 748
      Height = 46
      TabOrder = 1
      object Label6: TLabel
        Left = 208
        Top = 19
        Width = 41
        Height = 13
        Caption = 'Cheque:'
      end
      object Label5: TLabel
        Left = 16
        Top = 19
        Width = 43
        Height = 13
        Caption = 'Dinheiro:'
      end
      object LabelForma: TLabel
        Left = 16
        Top = 0
        Width = 111
        Height = 13
        Caption = 'Forma de recebimento:'
      end
      object Label4: TLabel
        Left = 406
        Top = 19
        Width = 89
        Height = 13
        Caption = 'Data recebimento:'
      end
      object Dinheiro: TCurrencyEdit
        Left = 79
        Top = 16
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabOrder = 0
        OnExit = DinheiroExit
        OnKeyPress = FormKeyPress
      end
      object Cheque: TCurrencyEdit
        Left = 271
        Top = 16
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        TabOrder = 1
        OnExit = DinheiroExit
        OnKeyPress = FormKeyPress
      end
      object BtnConfirma: TBitBtn
        Left = 628
        Top = 16
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
        TabOrder = 3
        OnClick = BtnConfirmaClick
      end
      object DataRecebimento: TJvDBDateEdit
        Left = 501
        Top = 16
        Width = 121
        Height = 21
        DataField = 'DATA_RECEBIMENTO'
        DataSource = DataSourceCaixa
        ShowNullDate = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 151
      Width = 748
      Height = 90
      TabOrder = 0
      object LabelCliente: TLabel
        Left = 196
        Top = 12
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object Label12: TLabel
        Left = 218
        Top = 39
        Width = 28
        Height = 13
        Caption = 'Valor:'
      end
      object LabelData: TLabel
        Left = 16
        Top = 39
        Width = 23
        Height = 13
        Caption = 'Data'
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
        Top = 66
        Width = 45
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Cliente: TDBEdit
        Left = 239
        Top = 9
        Width = 36
        Height = 21
        DataField = 'ID_CLIENTES'
        DataSource = DataSourceCaixa
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object Valor: TDBEdit
        Left = 281
        Top = 36
        Width = 121
        Height = 21
        DataField = 'VALOR'
        DataSource = DataSourceCaixa
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object Documento: TDBEdit
        Left = 79
        Top = 9
        Width = 92
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
        DataField = 'DATA_LANCAMENTO'
        DataSource = DataSourceCaixa
        ShowNullDate = False
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object Historico: TDBEdit
        Left = 79
        Top = 63
        Width = 659
        Height = 21
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DataSourceCaixa
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 281
        Top = 9
        Width = 457
        Height = 21
        DataField = 'NOME'
        DataSource = DataSourceCaixa
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object Valor2: TJvDBMaskEdit
        Left = 408
        Top = 36
        Width = 121
        Height = 21
        TabOrder = 6
        EditMask = ''
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 299
      Width = 762
      Height = 19
      Panels = <>
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 25
    Width = 748
    Height = 120
    DataSource = DataSourceCaixa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Documento:'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_LANCAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data:'
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
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome:'
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Alignment = taCenter
        Title.Caption = 'Hist'#243'rico:'
        Width = 248
        Visible = True
      end>
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
      '  CONTA,'
      '  DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO,'
      '  DOCUMENTO,'
      '  FORMA_PAG,'
      '  HISTORICO,'
      '  ID_CAIXA,'
      '  ID_CLIENTES,'
      '  ID_CONCESSIONARIA,'
      '  ID_DEPOSITO,'
      '  JUROS,'
      '  NATUREZA,'
      '  ORIGEM,'
      '  STATUS,'
      '  STATUS_BANCO,'
      '  VALOR'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select c.CONTA, c.DATA_LANCAMENTO, c.DATA_RECEBIMENTO,'
      'c.DOCUMENTO, c.FORMA_PAG, c.HISTORICO, c.ID_CAIXA, '
      'c.ID_CLIENTES, c.ID_CONCESSIONARIA, c.ID_DEPOSITO, '
      'c.JUROS, c.NATUREZA, c.ORIGEM, c.STATUS, c.STATUS_BANCO,'
      'c.VALOR, l.nome'
      'from CAIXA c'
      'inner join clientes l on c.id_clientes = l.id_clientes'
      'where c.Status = '#39'Pendente'#39
      'and c.Natureza = '#39'E'#39' and'
      'c.id_Concessionaria = :id')
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
    Left = 144
    Top = 88
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      Size = 4
    end
    object tblCaixaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
    end
    object tblCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
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
    object tblCaixaNOME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 60
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 176
    Top = 88
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'Insert into Caixa (CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOC' +
        'UMENTO, FORMA_PAG, HISTORICO, ID_CLIENTES, ID_CONCESSIONARIA, NA' +
        'TUREZA, ORIGEM, STATUS, VALOR)'
      
        'Select CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOCUMENTO, FORM' +
        'A_PAG, HISTORICO, ID_CLIENTES, ID_CONCESSIONARIA, NATUREZA, ORIG' +
        'EM, STATUS, VALOR from Caixa'
      'where id_caixa = :id')
    Left = 536
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
