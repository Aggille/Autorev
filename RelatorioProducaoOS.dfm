object BoxProducaoOS: TBoxProducaoOS
  Left = 15
  Top = 85
  Caption = 'Produ'#231#227'o de OS'
  ClientHeight = 529
  ClientWidth = 623
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 529
    Align = alClient
    TabOrder = 0
    object DadosFiltro: TLabel
      Left = 8
      Top = 20
      Width = 345
      Height = 17
      AutoSize = False
      Caption = 'Dados para o filtro do relat'#243'rio:'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 55
      Height = 13
      Caption = 'Per'#237'odo: de'
    end
    object Label3: TLabel
      Left = 199
      Top = 46
      Width = 6
      Height = 13
      Caption = #224
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 509
      Width = 621
      Height = 19
      Panels = <>
    end
    object DataInicial: TDateEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DataFinal: TDateEdit
      Left = 211
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 146
      Top = 70
      Width = 121
      Height = 26
      Caption = 'Gerar'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      OnKeyPress = FormKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 355
      Width = 601
      Height = 148
      DataSource = dts1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MESANO'
          Title.Alignment = taCenter
          Title.Caption = 'Per'#237'odo:'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MECANICO'
          Title.Alignment = taCenter
          Title.Caption = 'Mec'#226'nico:'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_OS'
          Title.Alignment = taCenter
          Title.Caption = 'Total de OS:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEITA_PECAS'
          Title.Alignment = taCenter
          Title.Caption = 'Pe'#231'as nas OS:'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEITA_MO'
          Title.Alignment = taCenter
          Title.Caption = 'M.O. nas OS:'
          Width = 107
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 102
      Width = 601
      Height = 247
      DataSource = dts2
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_MECANICO'
          Title.Alignment = taCenter
          Title.Caption = 'Per'#237'odo:'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Mec'#226'nico:'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Total de OS:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PECASOS'
          Title.Alignment = taCenter
          Title.Caption = 'Pe'#231'as nas OS:'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAOOBRAOS'
          Title.Alignment = taCenter
          Title.Caption = 'M.O. nas OS:'
          Width = 107
          Visible = True
        end>
    end
  end
  object tblAux: TClientDataSet
    PersistDataPacket.Data = {
      D00000009619E0BD010000001800000005000000000003000000D000064D4553
      414E4F0100490000000100055749445448020002000700084D4543414E49434F
      080004000000010007535542545950450200490006004D6F6E65790008544F54
      414C5F4F53080004000000010007535542545950450200490006004D6F6E6579
      000D524543454954415F50454341530800040000000100075355425459504502
      00490006004D6F6E6579000A524543454954415F4D4F08000400000001000753
      5542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'MESANO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MECANICO'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL_OS'
        DataType = ftCurrency
      end
      item
        Name = 'RECEITA_PECAS'
        DataType = ftCurrency
      end
      item
        Name = 'RECEITA_MO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 88
    Top = 64
    object tblAuxMESANO: TStringField
      FieldName = 'MESANO'
      Size = 7
    end
    object tblAuxMECANICO: TCurrencyField
      FieldName = 'MECANICO'
    end
    object tblAuxTOTAL_OS: TCurrencyField
      FieldName = 'TOTAL_OS'
      currency = False
    end
    object tblAuxRECEITA_PECAS: TCurrencyField
      FieldName = 'RECEITA_PECAS'
    end
    object tblAuxRECEITA_MO: TCurrencyField
      FieldName = 'RECEITA_MO'
    end
  end
  object dts1: TDataSource
    DataSet = tblAux
    Left = 120
    Top = 64
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Count(*) as Valor,'
      'Sum(ap.preco*ap.quantidade) as pecasOS,'
      'Sum(ats.tempo*ats.preco) as MaoObraOS'
      'from Atendimento a'
      ''
      
        'Inner Join Atendimento_pecas ap on ap.id_atendimento = a.id_aten' +
        'dimento'
      
        'Inner Join Atendimento_servicos ats on ats.id_atendimento = a.id' +
        '_atendimento'
      ''
      'where'
      'a.Data_Saida >= :DataInicial'
      'and'
      'a.Data_Saida <= :DataFinal'
      'and'
      '(a.status = '#39'Fechado'#39')'
      'and'
      '(a.Orc_os <> 1)')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFinal'
        ParamType = ptUnknown
      end>
    object IBQuery1VALOR: TIntegerField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object IBQuery1PECASOS: TIBBCDField
      FieldName = 'PECASOS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1MAOOBRAOS: TIBBCDField
      FieldName = 'MAOOBRAOS'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select ID_MECANICO, Count(*) as Valor'
      'from Atendimento'
      ''
      'where'
      'Data_Saida >= :DataInicial'
      'and'
      'Data_Saida <= :DataFinal'
      'and'
      '(status = '#39'Fechado'#39')'
      ''
      ''
      'GROUP BY ID_MECANICO')
    Left = 24
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFinal'
        ParamType = ptUnknown
      end>
  end
  object IBQuery3: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select ID_MECANICO, Cl.Nome, Count(*) as Valor'
      'from Atendimento'
      'Inner Join Clientes cl on cl.Id_clientes = id_mecanico'
      'where'
      'Data_Saida >= :DataInicial'
      'and'
      'Data_Saida <= :DataFinal'
      'and'
      '(status = '#39'Fechado'#39')'
      ''
      ''
      'GROUP BY  atendimento.ID_MECANICO, cl.id_clientes')
    Left = 488
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFinal'
        ParamType = ptUnknown
      end>
  end
  object tblOS: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
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
      'Select a.ID_MECANICO,'
      'cl.id_clientes,'
      'cl.nome,'
      'Sum(ats.tempo*ats.preco) as MaoObraOS,'
      'Sum(ap.preco*ap.quantidade) as pecasOS,'
      'Count(*) as Valor'
      ''
      'from Atendimento a'
      ''
      'inner Join Clientes cl on cl.Id_clientes = a.id_mecanico'
      
        'inner Join Atendimento_servicos ats on ats.id_atendimento = a.id' +
        '_atendimento'
      
        'inner Join Atendimento_pecas ap on ap.id_atendimento = a.id_aten' +
        'dimento'
      ''
      ''
      'where'
      'a.Data_Saida >= :DataInicial'
      'and'
      'a.Data_Saida <= :DataFinal'
      'and'
      '(a.status = '#39'Fechado'#39')'
      'and'
      '(a.Orc_os <> 1)'
      ''
      'GROUP BY  a.ID_MECANICO, cl.id_clientes, cl.nome'
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 352
    Top = 56
    object tblOSID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object tblOSVALOR: TIntegerField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object tblOSID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblOSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblOSPECASOS: TIBBCDField
      FieldName = 'PECASOS'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object tblOSMAOOBRAOS: TIBBCDField
      FieldName = 'MAOOBRAOS'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 3
    end
  end
  object dts2: TDataSource
    AutoEdit = False
    DataSet = tblOS
    Left = 384
    Top = 56
  end
  object IBQuery4: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select ID_MECANICO, Count(*) as Valor'
      'from Atendimento'
      ''
      'where'
      'Data_Saida >= :DataInicial'
      'and'
      'Data_Saida <= :DataFinal'
      'and'
      '(status = '#39'Fechado'#39')'
      ''
      ''
      'GROUP BY ID_MECANICO')
    Left = 528
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFinal'
        ParamType = ptUnknown
      end>
  end
  object IBDataSet1: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
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
      'Select a.ID_MECANICO,cl.id_clientes, cl.nome, Count(*) as Valor'
      'from Atendimento a'
      'Inner Join Clientes cl on cl.Id_clientes = a.id_mecanico'
      ''
      'where'
      'a.Data_Saida >= :DataInicial'
      'and'
      'a.Data_Saida <= :DataFinal'
      'and'
      '(a.status = '#39'Fechado'#39')'
      ''
      ''
      'GROUP BY  a.ID_MECANICO, cl.id_clientes, cl.nome'
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 448
    Top = 8
    object IntegerField1: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
  end
  object IBDataSet2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
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
      'Select a.ID_MECANICO,cl.id_clientes, cl.nome,'
      'Sum(ap.preco*ap.quantidade) as pecasOS,'
      'Sum(as.preco*as.tempo) as MoOS,'
      'Count(*) as Valor'
      ''
      'from Atendimento a'
      ''
      'Inner Join Clientes cl on cl.Id_clientes = a.id_mecanico'
      
        'Inner Join Atendimento_pecas ap on ap.id_atendimento = a.id_aten' +
        'dimento'
      
        'Inner Join Atendimento_servicos as on as.id_atendimento = a.id_a' +
        'tendimento'
      ''
      'where'
      'a.Data_Saida >= :DataInicial'
      'and'
      'a.Data_Saida <= :DataFinal'
      'and'
      '(a.status = '#39'Fechado'#39')'
      ''
      ''
      'GROUP BY  a.ID_MECANICO, cl.id_clientes, cl.nome'
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 472
    Top = 56
    object IntegerField4: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
  end
  object IBDataSet3: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
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
      'Select a.ID_MECANICO,'
      'cl.id_clientes,'
      'cl.nome,'
      'distinct(ats.id_atendimento),'
      'distinct(ap.id_atendimento),'
      'Sum(ats.tempo*ats.preco) as MaoObraOS,'
      'Sum(ap.preco*ap.quantidade) as pecasOS,'
      'Count(*) as Valor'
      ''
      'from Atendimento a'
      ''
      'inner Join Clientes cl on cl.Id_clientes = a.id_mecanico'
      
        'left Join Atendimento_servicos ats on ats.id_atendimento = a.id_' +
        'atendimento'
      
        'left Join Atendimento_pecas ap on ap.id_atendimento = a.id_atend' +
        'imento'
      ''
      ''
      'where'
      'a.Data_Saida >= :DataInicial'
      'and'
      'a.Data_Saida <= :DataFinal'
      'and'
      '(a.status = '#39'Fechado'#39')'
      'and'
      '(a.Orc_os <> 1)'
      ''
      'GROUP BY  a.ID_MECANICO, cl.id_clientes, cl.nome'
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 264
    object IntegerField7: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object IntegerField9: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField3: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'PECASOS'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'MAOOBRAOS'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 3
    end
  end
end
