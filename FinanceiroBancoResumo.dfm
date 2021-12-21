object BoxFinanceiroBancoResumo: TBoxFinanceiroBancoResumo
  Left = 15
  Top = 150
  Caption = 'Resumo de Banco'
  ClientHeight = 507
  ClientWidth = 890
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
    Top = 488
    Width = 890
    Height = 19
    Panels = <>
    ExplicitWidth = 744
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 488
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 744
    object Label1: TLabel
      Left = 4
      Top = 35
      Width = 80
      Height = 13
      Caption = 'Resumo do per.:'
    end
    object Label3: TLabel
      Left = 627
      Top = 11
      Width = 53
      Height = 13
      Caption = 'Saldo final:'
    end
    object Label2: TLabel
      Left = 248
      Top = 10
      Width = 58
      Height = 13
      Caption = 'Saldo inicial:'
    end
    object Label6: TLabel
      Left = 384
      Top = 10
      Width = 47
      Height = 13
      Caption = 'Entradas:'
    end
    object Label7: TLabel
      Left = 520
      Top = 10
      Width = 35
      Height = 13
      Caption = 'Sa'#237'das:'
    end
    object Label4: TLabel
      Left = 4
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object Label5: TLabel
      Left = 4
      Top = 436
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label8: TLabel
      Left = 4
      Top = 409
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object Label9: TLabel
      Left = 3
      Top = 463
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object Resumo1: TDateEdit
      Left = 84
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = Resumo1Exit
      OnKeyPress = FormKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 91
      Width = 878
      Height = 275
      DataSource = dts1
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnExit = DBGrid1Exit
      OnKeyPress = FormKeyPress
      OnTitleClick = DBGrid1TitleClick
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
          FieldName = 'ORIGEM'
          Title.Alignment = taCenter
          Title.Caption = 'Origem:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATUREZA'
          Title.Alignment = taCenter
          Title.Caption = 'Natureza:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMA_PAG'
          Title.Alignment = taCenter
          Title.Caption = 'Forma Pgto:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
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
          FieldName = 'CONTA'
          Title.Alignment = taCenter
          Title.Caption = 'Conta:'
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
          FieldName = 'JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BANCO'
          Title.Caption = 'Sequ'#234'ncia:'
          Visible = True
        end>
    end
    object SaldoInicialDinheiro: TCurrencyEdit
      Left = 212
      Top = 32
      Width = 128
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 2
    end
    object SaldoFinalDinheiro: TCurrencyEdit
      Left = 603
      Top = 32
      Width = 134
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 5
    end
    object EntradasDinheiro: TCurrencyEdit
      Left = 347
      Top = 32
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 3
    end
    object SaidasDinheiro: TCurrencyEdit
      Left = 475
      Top = 32
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 4
    end
    object Banco: TDBLookupComboBox
      Left = 43
      Top = 5
      Width = 162
      Height = 21
      KeyField = 'CONTA'
      ListField = 'DESCRICAO'
      ListSource = DataSourcePlaconBanco
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object Resumo2: TDateEdit
      Left = 84
      Top = 59
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
      OnExit = Resumo2Exit
      OnKeyPress = FormKeyPress
    end
    object BtnEditar: TBitBtn
      Left = 4
      Top = 372
      Width = 92
      Height = 28
      Caption = 'Editar'
      Enabled = False
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FFFF00FF
        6C6C6C6A6A6A6969696767676565656464646262626060605F5F5F5D5D5D5B5B
        5B5A5A5AFF00FFFF00FFFF00FFFF00FF6C6C6C6A6A6A69696967676765656564
        64646262626060605F5F5F5D5D5D5B5B5B5A5A5AFF00FFFF00FFFF00FFA9AAAB
        9C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9F
        A15B5B5BFF00FFFF00FFFF00FFAAAAAA9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
        9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E5B5B5BFF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
        A15D5D5DFF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E5D5D5DFF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
        A15F5F5FFF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E5F5F5FFF00FFFF00FFFF00FFA9AAAB
        FFFFFFC9C9C92D2D2D58534EC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
        A1606060FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C92D2D2D535353C9C9C9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E606060FF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFF58534E454442516061C9C9C9FFFFFFFFFFFFFFFFFFFFFFFF9C9F
        A1626262FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFF535353434343595959C9
        C9C9FFFFFFFFFFFFFFFFFFFFFFFF9E9E9E626262FF00FFFF00FFFF00FFA9AAAB
        FFFFFFC9C9C9C9C9C954777B1A9CC218556F425A94C9C9C9C9C9C9FFFFFF9C9F
        A1646464FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C96767676E6E6E43
        43436B6B6BC9C9C9C9C9C9FFFFFF9E9E9E646464FF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFF54777B29799A947E751A9CC2425A94FFFFFFFFFFFF9C9F
        A1666666FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFF67676761616184
        84846E6E6E6B6B6BFFFFFFFFFFFF9E9E9E666666FF00FFFF00FFFF00FFA9AAAB
        FFFFFFC9C9C9C9C9C9C9C9C998B9D727D1FC04B8EC1A9CC2425A94FFFFFF9C9F
        A1686868FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C9C9C9C9B7B7B791
        91917878786E6E6E6B6B6BFFFFFF9E9E9E686868FF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFFFFFFFF98B9D7ACEDFC27D1FC04B8EC1A9CC2425A949C9F
        A1696969FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7D4
        D4D49191917878786E6E6E6B6B6B9E9E9E696969FF00FFFF00FFFF00FFA9AAAB
        FFFFFFC9C9C9C9C9C9C9C9C9C9C9C998B9D7ACEDFC27D1FC04B8EC1A9CC2425A
        946B6B6BFF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C9C9C9C9C9C9C9B7
        B7B7D4D4D49191917878786E6E6E6B6B6B6B6B6BFF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE98B9D7ACEDFC27D1FC04B8EC1A9C
        C2425A94FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFEB7B7B7D4D4D49191917878786E6E6E6B6B6BFF00FFFF00FFFF00FFA9AAAB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE98B9D7ACEDFC27D1FC35A8
        F5222F9B110875FF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFEFEFEFEB7B7B7D4D4D49191919595955E5E5E3C3B41FF00FFFF00FFA9AAAB
        8E3E08C8C8C88E3E08C8C8C88E3E08C8C8C88E3E08C8C8C898B9D74A9EED455F
        C4455FC4222F9B110875FF00FFAAAAAA4B4B4BC8C8C84B4B4BC8C8C84B4B4BC8
        C8C84B4B4BC8C8C8B7B7B79B9B9B8484848484845E5E5E3C3B41FF00FFA9AAAB
        BD5A109C9FA1BD5A109C9FA1BD5A109C9FA1BD5A109C9FA1BD5A10455FC4889F
        E18997DF455FC4FF00FFFF00FFAAAAAA6666669E9E9E6666669E9E9E6666669E
        9E9E6666669E9E9E666666848484B4B4B4B4B4B4848484FF00FFFF00FFFF00FF
        FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10455F
        C4455FC4FF00FFFF00FFFF00FFFF00FFFF00FF666666FF00FF666666FF00FF66
        6666FF00FF666666FF00FF666666848484848484FF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Visible = False
      OnClick = BtnEditarClick
    end
    object BtnSalvar: TBitBtn
      Left = 102
      Top = 372
      Width = 91
      Height = 28
      Caption = 'Salvar'
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007F2B28007F2B2800A1828300A1828300A1828300A1828300A1828300A182
        8300A18283007A1C1C007F2B2800FF00FF00FF00FF00FF00FF00FF00FF007F2B
        2800CA4D4D00B6454500DDD4D5007916170079161700DCE0E000D7DADE00CED5
        D700BDBABD0076100F009A2D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4B00B1444400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9
        DC00C1BDC10076111100982D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0424200E6DCDC007916170079161700D5D3D500D8DEE100D7DD
        E000C6C2C500700F0F00962C2C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0414100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8
        DA00CAC2C5007E1717009E3131007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BF474800B8454500BA4C4C00BD575700BB575600B64E4E00B4494900BD52
        5100BB4B4C00B5424200BF4A4A007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800A33B3900B1605D00C6868400CB918F00CC919000CC908F00CB898800C989
        8800CB939100CC969600BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF00FF00
        FF007F2B2800F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F7007F2B2800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      OnClick = BtnSalvarClick
      OnExit = BtnSalvarExit
    end
    object BtnImprimir: TBitBtn
      Left = 211
      Top = 59
      Width = 110
      Height = 26
      Caption = 'Imprimir'
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
      TabOrder = 7
      OnClick = BtnImprimirClick
      OnExit = BtnImprimirExit
    end
    object DataBanco: TJvDBDateEdit
      Left = 72
      Top = 433
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = DataSourceBanco
      Enabled = False
      ShowNullDate = False
      TabOrder = 12
      OnExit = DataBancoExit
      OnKeyPress = FormKeyPress
    end
    object CodigoBanco: TJvDBMaskEdit
      Left = 72
      Top = 406
      Width = 41
      Height = 21
      DataField = 'BANCO'
      DataSource = DataSourceBanco
      Enabled = False
      TabOrder = 11
      EditMask = ''
      OnExit = CodigoBancoExit
      OnKeyPress = FormKeyPress
    end
    object Valor: TJvDBMaskEdit
      Left = 72
      Top = 460
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = DataSourceBanco
      Enabled = False
      TabOrder = 13
      EditMask = ''
      OnExit = ValorExit
      OnKeyPress = FormKeyPress
    end
  end
  object DataSourceBanco: TDataSource
    AutoEdit = False
    DataSet = tblBanco
    Left = 184
    Top = 160
  end
  object tblBanco: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBancoAfterCancel
    AfterDelete = tblBancoAfterPost
    AfterPost = tblBancoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BANCO'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    InsertSQL.Strings = (
      'insert into BANCO'
      
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
      'from BANCO '
      'where'
      '  ID_BANCO = :ID_BANCO')
    SelectSQL.Strings = (
      'select * from BANCO'
      'where DATA >= :idData1'
      'and'
      'DATA <= :idData2'
      'and'
      'id_concessionaria = :idConcessionaria'
      'and'
      'banco = :idBanco'
      'and Natureza <> '#39'P'#39
      ''
      'order by data desc, HISTORICO')
    ModifySQL.Strings = (
      'update BANCO'
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
    Left = 152
    Top = 160
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
      currency = True
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
    object tblBancoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BANCO"."HISTORICO"'
      Size = 60
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
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBancoAfterCancel
    AfterDelete = tblBancoAfterPost
    AfterPost = tblBancoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(Banco.Valor) as Saldo from Banco'
      'Where Banco.Data < :id'
      'and'
      'id_concessionaria = :idConcessionaria'
      'and Natureza = :idNatureza'
      'and Banco = :idBanco'
      '')
    Left = 216
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idConcessionaria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idNatureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBanco'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBancoAfterCancel
    AfterDelete = tblBancoAfterPost
    AfterPost = tblBancoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(Banco.Valor) as Saldo from Banco'
      'Where Banco.Data >= :idData1'
      'and'
      'Banco.Data <= :idData2'
      'and'
      'id_concessionaria = :idConcessionaria'
      'and Natureza = :idNatureza'
      'and Banco = :idBanco')
    Left = 248
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idData1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idData2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idConcessionaria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idNatureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idBanco'
        ParamType = ptUnknown
      end>
  end
  object tblPlaconBanco: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PLACON'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    InsertSQL.Strings = (
      'insert into PLACON'
      
        '  (CLASSIFICACAO, CONTA, CONTA_BANCARIA, DESCRICAO, ID_PLACON, N' +
        'IVEL, TIPO)'
      'values'
      
        '  (:CLASSIFICACAO, :CONTA, :CONTA_BANCARIA, :DESCRICAO, :ID_PLAC' +
        'ON, :NIVEL, '
      '   :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PLACON,'
      '  CONTA,'
      '  DESCRICAO,'
      '  TIPO,'
      '  NIVEL,'
      '  CLASSIFICACAO,'
      '  CONTA_BANCARIA'
      'from PLACON '
      'where'
      '  ID_PLACON = :ID_PLACON')
    SelectSQL.Strings = (
      'select * from PLACON'
      'where Conta_bancaria = '#39'T'#39)
    ModifySQL.Strings = (
      'update PLACON'
      'set'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  CONTA = :CONTA,'
      '  CONTA_BANCARIA = :CONTA_BANCARIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PLACON = :ID_PLACON,'
      '  NIVEL = :NIVEL,'
      '  TIPO = :TIPO'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    ParamCheck = True
    UniDirectional = False
    Left = 129
    object IntegerField1: TIntegerField
      FieldName = 'ID_PLACON'
      Origin = '"PLACON"."ID_PLACON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBStringField1: TIBStringField
      FieldName = 'CONTA'
      Origin = '"PLACON"."CONTA"'
      Size = 4
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PLACON"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PLACON"."TIPO"'
      Size = 1
    end
    object IBStringField4: TIBStringField
      FieldName = 'NIVEL'
      Origin = '"PLACON"."NIVEL"'
      Size = 1
    end
    object IBStringField5: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"PLACON"."CLASSIFICACAO"'
      Size = 1
    end
    object tblPlaconCONTA_BANCARIA: TIBStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = '"PLACON"."CONTA_BANCARIA"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourcePlaconBanco: TDataSource
    AutoEdit = False
    DataSet = tblPlaconBanco
    Left = 97
  end
  object tbRelBanco: TfrxDBDataset
    UserName = 'tblRelBanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_BANCO=ID_BANCO'
      'ID_CONCESSIONARIA=ID_CONCESSIONARIA'
      'ID_CLIENTES=ID_CLIENTES'
      'ID_AVALISTA=ID_AVALISTA'
      'DOCUMENTO=DOCUMENTO'
      'NATUREZA=NATUREZA'
      'DATA=DATA'
      'VALOR=VALOR'
      'BANCO=BANCO'
      'CONTA=CONTA'
      'HISTORICO=HISTORICO'
      'JUROS=JUROS')
    DataSource = dts1
    BCDToCurrency = False
    Left = 120
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39991.584807546300000000
    ReportOptions.LastChange = 40122.461889074070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var entrada : variant;'
      'var saida: variant;'
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <tblRelBanco."Natureza"> = '#39'S'#39' then'
      '   begin              '
      '    entrada := null;'
      '    saida := <tblRelBanco."Valor">;        '
      '   end            '
      '  else'
      '   begin              '
      '    entrada := <tblRelBanco."Valor">;'
      '    saida := null;'
      '   end;              '
      'end;'
      
        'var NomeBanco : String;                                         ' +
        '                       '
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  NomeBanco := <tblRelPlaconBanco."Descricao">;                 ' +
        '                                                                ' +
        '                                      '
      'end;'
      '    '
      '{var saldo : Real;'
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'if tblRazao.FieldByName('#39'TIPO'#39').AsString='#39'D'#39' then'
      'begin'
      
        'saldo := saldo + (tblRazao.FieldByName('#39'DEBITO'#39').AsFloat - tblRa' +
        'zao.FieldByName( '#39'CREDITO'#39').AsFloat);'
      'end;'
      'if tblRazao.FieldByName('#39'TIPO'#39').AsString='#39'C'#39' then'
      'begin'
      
        'saldo := saldo + (tblRazao.FieldByName('#39'CREDITO'#39').AsFloat - tblR' +
        'azao.FieldByName('#39'DEBITO'#39').AsFloat);'
      'end;'
      'end;      '
      
        '{                  [FormatMaskText(,)]<tblRelCaixa."VALOR"><tblR' +
        'elCaixa."VALOR"><tblRelCaixa."VALOR"><tblRelCaixa."VALOR">      ' +
        '      '
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'If <tblRelNofisa."Ent_Sai"> = '#39'S'#39' then'
      '  begin            '
      '   Memo2.Text := '#39'X'#39';'
      '   Memo3.Text := '#39#39';                                         '
      '  end          '
      ' Else'
      '  begin             '
      '    Memo2.text := '#39#39';'
      '    Memo3.Text := '#39'X'#39';'
      '  end          '
      'end;'
      ''
      '{procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with BoxRelatorioNotasFiscais.tblRelNofisaFaturas1 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura1.Text := <tblRelNofisaFaturas1."FATURA">'
      '  else'
      '    Fatura1.Text := '#39#39';            '
      ' end;'
      ''
      ' with BoxRelatorioNotasFiscais.tblRelNofisaFaturas2 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura2.Text := <tblRelNofisaFaturas2."FATURA">'
      '  else'
      '    Fatura2.Text := '#39#39';            '
      ' end;'
      ''
      ' with BoxRelatorioNotasFiscais.tblRelNofisaFaturas3 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura3.Text := <tblRelNofisaFaturas3."FATURA">'
      '  else'
      '    Fatura3.Text := '#39#39';            '
      ' end;'
      '               '
      'end;}  '
      ''
      ''
      'procedure Picture4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//  picture4.loadfromfile(<pathlogo>+'#39'logo.jpg'#39')                ' +
        '                                                                ' +
        '      '
      '  picture4.loadfromfile('#39'c:\autorev-sd\logo.jpg'#39')  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    OnBeforePrint = frxReport1BeforePrint
    Left = 88
    Top = 160
    Datasets = <
      item
        DataSet = tbRelBanco
        DataSetName = 'tblRelBanco'
      end
      item
        DataSet = tblRelPlaconBanco
        DataSetName = 'tblRelPlaconBanco'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 793.701300000000000000
        DataSet = tbRelBanco
        DataSetName = 'tblRelBanco'
        RowCount = 0
        object tblBancoDOCUMENTO: TfrxMemoView
          Left = 18.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = tbRelBanco
          DataSetName = 'tblRelBanco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelBanco."DOCUMENTO"]')
          ParentFont = False
        end
        object tblBancoHISTORICO: TfrxMemoView
          Left = 181.417440000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'HISTORICO'
          DataSet = tbRelBanco
          DataSetName = 'tblRelBanco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelBanco."HISTORICO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 544.252320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          DataSet = tbRelBanco
          DataSetName = 'tblRelBanco'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[entrada]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 668.976810000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          DataSet = tbRelBanco
          DataSetName = 'tblRelBanco'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[saida]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 117.165430000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = tbRelBanco
          DataSetName = 'tblRelBanco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[tblRelBanco."DATA"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          Left = 19.000000000000000000
          Top = 72.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documento:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 181.299320000000000000
          Top = 72.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hist'#243'rico:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 555.590910000000000000
          Top = 73.031540000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entradas:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 668.976810000000000000
          Top = 73.031540000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sa'#237'das:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 18.779530000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RESUMO:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 120.826840000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Inicial:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 249.330860000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Final:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 18.779530000000000000
          Top = 51.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 120.826840000000000000
          Top = 51.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SaldoInicialDinheiro]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 249.448980000000000000
          Top = 51.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SaldoFinalDinheiro]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 18.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RESUMO DO BANCO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 200.196970000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Banco]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 260.669450000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[NomeBanco]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 238.110390000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 117.165430000000000000
          Top = 71.811070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Picture3: TfrxPictureView
          Left = 600.945270000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
          Height = 34.015770000000000000
          Picture.Data = {
            0A544A504547496D6167657D1D0000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC00011080046015403012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E2E8
            A2BB6F01F838EBB722F2ED48B48CF008FBE6BE769D3954972C4FD97198CA784A
            4EAD47A233BC3BE0AD53C40E1A3430DBF791C7F2AF4CD2BE16E8D668A6EC1B99
            3B963C7F9FC2B7AEF51874844B0B0B7596E76E563076AC63FBCE7B0FD4FE6466
            4D6371A8297D4AEE5B9CFF00CB15263847B6C0791FEF16AF5A9E169D35AABB3F
            3EC5E798DC64BDC7CB0F2FF325BBF0EE88816DEC2CAD5AE14191D3A9D8A3A601
            E32703F1355AEFC23E19D520DF0411156190F0B83FE35A9E1CB3B2B26B94B682
            385CA83848C28DBCFA7F9E95C75F59584B7525CDBDB88B731649117CB7033EA3
            0455CFD9C6377138684B132A8E30A8D35E6CC2D77E1D4D6C1E6D324F39473E51
            E1BF0F5FF3C57092C32412B472A323A9C10C3041AF4D8FC457BA54812E9DEF2D
            7A12DFEB507B1FE2FA1E7DEA2F1269B67AEDA2DE5B143295CC722FF18F43FE78
            AE69E1A9D58B952DFB1F4582CF311859AA58E578BDA479A558B2B49B50BD8AD2
            DD55A69582A2B305049E83278A8A48DA290A30C303820D2C13BDADC453C470F1
            38753E841C8AF36D695A47D8CA4E54B9A9BDD69FA1D5FF00C2B3F15FFD0397FE
            FF00A7F8D60EB1A2DFE837A2CF5187CA9CA8700306041F71C76AFA4F49BF8F53
            D26D6FA3C6C9A3571F88AF34F8C9A67CBA76A6A3905A07FC7E65FE4D5E8D7C24
            234DCE07C7E59C4389AF8C8E1EBA493BAD175FBCF26AEB22F86FE299A25912C1
            76BA865CCC8383ED9AC8F0D69C756F1269F64065659977FF00BA396FD01AFA6B
            18000FCFD2B2C261A3553723B73FCEAAE02A429D149B69B77FC3B1F356B7E15D
            5FC3D1C526A70242B2B1098915892064F00D53D2B4ABCD6B504B1B08BCDB8704
            AA960BC0193C9E2BAFF8AFAA9BDF142D8A9FDDD9C6148078DEDC9FD368FC2A6F
            8416666F12DD5D63220B7C03E85987F406A7D8C1D7F671D8E9598578657F5BA8
            973DAFE5AEDD7D0CCFF8565E2BFF00A072FF00DFF4FF001AA7A97817C41A4E9F
            25F5ED908EDA200BB0955B1938E80E7A9AFA34F39AC6F15D97DBFC2DA95B0192
            F6EFB7EA0647EA0575CB034D45B57B9F37478A7192AB18CD46CDABE8F6FBCF99
            EAC5959CFA85EC3676C81A699C2A2920649F7355EB77C183FE2B2D27FEBE57F9
            D79705CD2499F778AA8E9509D48EE937F723487C32F1591FF20E5FFBFE9FE351
            DC7C39F13DADBC93CB60A238D0BB11329C00327806BE86ED51CD1ACD03C6E32A
            CA41FA1AF57EA34BCCF818F166379B551B7A3FF33E52AEB53E1B78A6450CB60B
            82011999071F9D6259E9ED278960D38825BED6B091FF0003C1AFA742FCA0015C
            B85C346A5F9BA1EF67B9E55C13A6A8A4F995F5F95BAA3E7F3F0CFC578CFF0067
            AFFDFF004FF1AE56E6096D2EA5B69976CB13B46EB9CE181C119FA8AFAAC8F948
            F6AF987C43FF002336ADFF005F92FF00E8669E2F0F0A49389390E7388C7D5946
            B24ACBA27FE6CCDAE9EC3C05E23D52C61BDB4B10F6F2AEE4632AAE47D09CD732
            012401D4D7D3FA259FF67E876166171E4C08847B8502A309878D56F9BA1D19FE
            6D572F8C3D924DC9BDFB2F9A3C3FFE15978AFF00E81CBFF7FD3FC6B9AD4B4EB9
            D23519AC6F23F2EE61203AEE0719008E47B115F53671D7A57857C59B4FB3F8BC
            5C01917302BFE232BFD056B89C2C29C39A27064B9FD7C6E2BD956492B3B5975F
            BDF4B9C1D743A4782B5DD72C56F34FB412C0CC5431955791D7826B9EAF79F853
            C78262FF00AED27F3AE7C2D28D49F2C8F5F3CC7D5C0E1956A495EE96A796DFF8
            03C47A6D8CD797762A9044A5DD84CA7007B035CC76AFA43C7193E0AD5B239FB3
            B57CDFDAAF154634A4944CB21CCEB63E8CE7552BA76D3D3D4EAEDFE1CF89EEAD
            E39E2B1468A440EA7CE419046477AA1ADF84B58F0F5BA4DA95B2C31C8FB54895
            5B2719EC7DABE84D07FE45ED3B1FF3ED1FFE822B85F8C83FE245A79FFA7AFF00
            D91ABA2AE129C29B92BDCF1B05C458BAF8D8D0928F2B76D9DFF33C66AFE93A3D
            EEB77C2CF4F844B3952DB4B05E075E4F1542BD2BE0E59F9BAD5FDE15E2285630
            7DD8E7FF0065AE1A14FDA545167D46698B784C24EB4775B7AEC62FFC2B2F167F
            D0397FEFFA7F8D51D57C0FAFE8BA7C97D7F66B1DB46406612A3632703807D4D7
            D1E4D6078D2CFEDDE0ED5200327C86703DD7E61FCABD19E069A8B6AF73E330FC
            518B9D58C6A28D9B57D1ED7F53E6DA28A2BC83F454145145032D69D66FA86A10
            5AA024C8E178AFA09638BC31E1B8E28117CD4511C6BD9A423F90EBF415E49F0C
            ED16EFC616E1864460C9F90247EB8AF4BF175D6350B5B6CF11C664C671924E3F
            A1FCEBD3C2250A6EA1F07C495655F170C2AD92BB22D39EC965297974D1CF336E
            F3A41F2BB9EBB9BA03D001C7603A62B62E239AD576C8BF2F661D0D655BC9A66B
            0A2087FD0EF5971F669CE564E39DA7A37F3F50298B3EA5A0B790AA1EDFA7D967
            39423FD86E76FD391EC2BAD4ACB5FBCF9E69F37B9D3A3D1AF434A7BF1A3DBC0E
            96AF712DC8DCD860A1547D7BF3D3F51585ABDBA5BCCA21DC639143A03D467B56
            F5E5B8D4ED2D668C980796088D867683DB83DAB13C43AAC9A6B451DAC11B4E63
            C79F2F441D3803927F2FAD152378BE6D12EA2C3546AA270BB93BDD7E4605E693
            14709BAD5AE56CEDBD09F9DBD80F5FCCFB5737A2EA8B6F7EF62923359CD21F24
            B8C1073C71DB3D31EB8F7AD2B8D22EF51DD7FA9DD18A1032D717079C7FB23800
            7E43EB5CEEAD75A66D8E0D32193F74D9372C705CFF009FA7B75AC23FBBB4E0AC
            BCF767B914B110950AAF99CBA25A47B36FB9A3E30D23C8116A11AE1243B64F66
            C707F11FCAB92AF5CBEB71AC780A6B8C0DC6D85C7D194063FC88AF2423191E95
            CF8F8253538F53D9E18C4CE787950A9BC1DBE47B77C24D57ED9E1B96C1DB3259
            C9803FD86E47EBBAB6FC7FA60D53C1B7E81732449E727D579FE591F8D7957C2F
            D54E9DE2E8E066C45788623FEF755FD463F1AF789516489E3600A904107BD766
            1E4AAD1E57E87CC67349E0734F690EAD497EBF8DCF17F841A5FDA7C41737ECBF
            2DAC5807FDA7E3F903F9D7B2DCDC45696B35CCA76C71233B1F40064D733E01F0
            F1F0F695751C8B8925BB908CF528A76AFE833F8D55F8A3AAFF00677842581180
            92F5C423FDDEADFA0C7E34E92F6146EFD4CF1F53FB4F33E583D1B497A75FD59E
            1FA95EC9A96A7737B29F9A795A43ED939C57ACFC1AB431E93A8DE11FEB2658C1
            F655CFFECD5E395F41FC35B4169E05B1C8C34C5E53F8B1C7E98AE1C12E6ABCCC
            FA9E2792A197C694766D2F92D7F43A6B9BB8ED5E0127FCB69046BF5209FE9534
            8A1E36523208C62B8BF1FEA46C2E3C3C01C06D4519BFDD1C1FFD0ABB61C81F4A
            F594AEDAEC7C054A2E9D3854FE6BFE0EC7CB1A95A9B1D52EAD08C186678FF224
            569F833FE473D27FEBE57F9D5BF88567F62F1C6A2A0616465947FC09413FAE6A
            A7837FE472D27FEBE57F9D786A3CB5ADD9FEA7EA72ABED72C753F9A17FC0FA54
            74141E940E82A38A65977EDFE07287EA2BDE3F253C6EC747DBF1B25836E11277
            B93C7AAEF1FA915ECFDF15CA41A485F89977AA6DF94E9E8B9FF68B11FC92BA69
            26489E256EB2BED5FAED27F9035851A7C8A5E6D9E9E658AFACBA7FDD8A5F3EA4
            CDF74FD2BE5FF10FFC8CDAB7FD7E4BFF00A19AFA81BA1FA57CBFE21FF919B56F
            FAFC97FF004335CB987C08F73843FDE2A7A7EA1A05A7DBFC41A75AE3224B9453
            F4DC33FA57D3C07535F3FF00C31B4FB578E2D188CAC0AF21FF00BE703F522BE8
            063B509F6ABC02B536FBB33E2DABCD8B853ECBF3643697497913C91F4591E33F
            5562A7F957987C67B4FDCE9578072ACF131FA8047F235D17C37D48EA1A4EA2C5
            B246A12B7E0C437F534CF8A9642EBC1734B8C9B695241EDCEDFF00D9AB5ADEFD
            06FC8F3F2E4F099A422FA3B7DFA7EA78357BCFC28FF91261FF00AED27F3AF06A
            F79F851FF224C3FF005DA4FE75C180FE2FC8FADE2DFF00715FE25F9335FC727F
            E28AD5BFEBDDABE6EAFA6FC49A74BAB7876FAC2065596788A296E809F5AF24FF
            008543E20FF9EF63FF007F1BFF0089AE8C6519CE49C55CF2386F30C361684E35
            A6A2DBFD0F61D04FFC53FA6FFD7B47FF00A08AE17E32FF00C8074FFF00AFAFFD
            91ABBED2EDDAD74AB4B69305E185118AF4C8001C5705F197FE403A7FFD7D7FEC
            8D5D188FE0BF43C6CA1A799D36BF98F18EF5ED3F07ACFCAF0EDE5D11CCD7181F
            4551FD49AF15AFA27E1ED9FD8FC11A6A15C3491994FF00C0893FC88AF3F02AF5
            2FD91F5DC595B9706A1FCCD7E1A9BF71751C13DBC4E79B87F2D3EBB59BF929A9
            2E2259A09226195752A47B118AE3FC6FA97D8F5DF0BA06C6EBEDC7E98D9FFB39
            AED7A8FC2BD552BB6BB1F033A2E9C2153F9AFF0083B1F2A5D40D6D793DBB7DE8
            A4643F507150D745E39B3163E35D5610301A6320FF008180DFD6B9DAF9FA91E5
            935D8FD7B0957DB50854EE93FC028A28A83ACEEFE13BAC7E30391CB40E07D78F
            FEBD749E3BBCF23C4E809C06B7523F36AF3EF076A434AF14D8DC39C2799B1C93
            D0302A7F9E7F0AF41F881A4DC6A93E9B2D9AEEB82E60DB9C707907E830735E9D
            18B9E1DA5BA67C3668A34B378CEA69171DCCDB69C5EB25BEC12348C1554F739E
            2BA7975AB7D0A01A7DEDC4DAA5C020984057308F42CD8FC3273F85665BE8BA5F
            84618F54D46FA491A200631F2973FDD0064FB7E759175AF785A6BB975269AEE5
            773BBEC9E4B2E5BEB803F5ADA9C274E3ADAFE6FA1E462654B13557B34DC5754B
            56FB23ABD66D64D6E0B4B8B695923DA1D519D93AE08381DC7E9DAA86BBE20B2D
            17ECB05E4325C3100EE0A1B6E38DDC9EBF4E6B0BC5BAE5E4763A3CB673496893
            C3E6F9711031C290338E40CF4E9ED4BE20D4F4C912D2DF55819FCC8430B841F3
            21EFD39FE63DABA1C95E567AE9BEC7253C2492A72A89F2B6F6DF4DEE64F8AA39
            350886AB0EA06F2C89CAC6781167D87E5CF2335C83B5767A7DC684D1FF006447
            74CE970C41DEAC3731C0EB8001E062A3D63C093DB411DC69ECF32160B22C8465
            32786CFA7AFA75AE7AB4652F796BDF5B9EDE5F8FA3423EC27EEEBEEB6AD75DDF
            99D8E98C2D7E17069382F6527E443578DB7DE3F5AF55F185E47A6785D34F89BE
            511A5B27B80393F9035E524E4E4D618FD3921D91E870B45CBDB56E92969F9935
            ADCC9677705CC2712C322C887DC1C8AFA874DBE8B52D36DAF61398E78D5D4FB1
            19AF962BDDBE146A2F79E10F2241FF001E93344A7D57861FFA154E0276938F72
            38BB0BCD4615D6E9DBE4CEF01AF0FF008B7AB7DAFC490E9E8C4C7671FCC3B6F7
            E4FE9B6BDB5D82C6C7D066BE5DD5AFDF54D5EF2FA43F35C4CD27D013C0FC0715
            D18E9DA9A8F73CAE14C37B4C53AAFEC2FC5FFC0B94B19E057D43A1D98B0D0EC6
            CF1830C08847D140AF9BF40B4FB7F8834EB5C6449708A7E9B867F4AFA807000A
            CF2F8E8E47671856F7A9D2F57F925FA9E47F17E49E4D57498608A47F263793E5
            524025801FFA0D7AA59CDE7D9C130180F1AB7E63353950C4640FC697383ED5DB
            0A7CB272BEE7CBD7C62AB87A74396DC97D6FBDDDCF14F8C36462F115A5E01C4F
            6FB09F7563FD18572DE0DFF91CB49FFAF95FE75E93F192D3CDD12C2EC0E619CA
            1FA32FF8815E6DE0CFF91CB49FFAF95FE75E6568F2E27E68FB9CAEB7B4C95F92
            92FCFF0043E9407A0AC1D06EFCDD675FB627982F17F00D121FE79ADDCE2B83F0
            E5E15F8A5E27B42789162900FF0075547FECD5EA4E5671F37FA1F0987A5ED29D
            57FCAAFF008AFF0033BBDAA1B76064800FF9FC6B0B55BC0BE2AD06CC1E6469A4
            C7FBB191FF00B31AE82BCFAFAF3CEF8C7A55B03C4168F9FAB063FCB1454764BD
            57E6183A5ED252F28C9FE0CF416E87E95F2FF887FE466D5BFEBF25FF00D0CD7D
            40DD0FD2BE5FF10FFC8CDAB7FD7E4BFF00A19AE2CC3E147D27087FBC54F4FD4E
            FBE0D5A6ED4752BC23EE4491A9FF0078E4FF00E822BD4B5999ADB45BFB850774
            703B8FA8535C5FC21B3F23C313DC91CDC5C311F45007F3CD7A1900FD2BA70B1B
            5148F273CAFCF995496E934BEE3CAFE0E34D0A6A96B346E9CC722EE523D41FE9
            5DE78AACBEDFE17D4AD80CB3DBBED1EE0647EA2B59401D3007B50E81A3653C82
            31570A5C90E4BDCE4C4E35D7C5FD652E5774EDE96FF23E50AF7AF853FF00224C
            5FF5DA4FE75E1FA8DA9B1D52EAD318F26578FF0022457B87C29FF91221FF00AE
            D27F3AF3B04AD59AF23EDB8A26A797C64B66D7E4CEDCB05192703D6982788F49
            17F3AC1F1C1FF8A2F56FFAF76AF9BEBB31189F6524AD73E6728C8FFB4694AA73
            F2D9DB6BFEA8FAC073CD79B7C65FF90169FF00F5F3FF00B235773A09FF008A7B
            4EFF00AF68FF00F4115C2FC65FF901E9FF00F5F3FF00B2355621DE8C99864D1E
            5CCA9C7B33C6D11A4915146598803EB5F52E9D6C2CF4DB4B65E90C2A83F0007F
            4AF9C3C2B67F6EF15E976D8C86B942C3D81C9FD057D3206063D2B972F8E8E47B
            7C6156F529D2EC9BFBFF00E18F20F8AD3DC7FC24DA5082291C5B4625CAA93825
            FF00FB115EB713F990A38E8541C53CA86C1205283F9577429F2CA52BEE7CCE23
            16AB50A74796DC97D6FBDDDCF0EF8B967E478AA1B9038B8B719FAA923F962BCF
            EBD7FE33596EB0D32F40FF005523C44FFBC011FF00A0D790578F8B8F2D567E8F
            C3D5BDAE5F0F2BAFB98514515CA7BC2A9DAC0D7AAF86B547D76C848FA84915DC
            11889C22AEEC7F78120F071938EE3D85794D5BD3F50B8D36E96E2DA4D922F7EC
            477047715D984AFECA7AECCF033DCAD63A87B9F1C76FF235FC4B6FAB59DF18F5
            1BCB9BA88926291E4251BE83A03ED589BEBBBB5D72D3C4101B49E34F3187CD04
            87AFBA9EFF0051C8ACDBBF044CE4BD84A31FF3CE5EA3E8475FC715DB5A84A5EF
            C1DD33E7B019A53A31FABD78F249795911F8A26DDA5E8433F76D147FE3895078
            AD98BD8E7FE7871FA52DE7877C4F72B0C53D8BC8B0A848C26C381803B1F61579
            BC1FE2BD61A237B0C50C71AED479995401F45C93F95124DF3249EB6E9D8294E9
            D3F67294D5A2E4DEABAEC71C0904104823A11DABD27C311EAF67A5BDCEA1A9DD
            AA4ABFBB82460FF2FA9DE0F5F4A5B1F0B695E1E5FB5DE4CB757118DDBDC6D8D3
            DC0EFF0053F90AE6BC47E296D499ADED9985B9FBD2742FEC3DBDEAE9C1505CF5
            1DBC8E6C5D7FED4A8B0F8485FBC9ADBD3B14BC45AB7F68DDAAC6D98210510FF7
            B9E4FF0021F856251457935AABAB37267DCE5F83860E8468C3A7E2FA857B47C1
            BFF917AFFF00EBECFF00E8095E2F5ED1F06C81E1EBFC903FD2CFFE80B5B607F8
            A795C53FF22F7EA8F479BFD4BFFBA6BE50AFAB6665F25FE61F74F7AF94AB7CC3
            ECFCFF0043CBE0EFF97DFF006EFEA763F0C6D3ED5E38B47232B02BC87FEF9C0F
            D48AFA04F0335E39F06ED036A3A9DEB63E48D23527FDA393FF00A08AF5E96444
            89D8B00029279ADF051B52BF73C9E26AAEAE60E3FCA92FD7F53C675EF899AED9
            F88350B6B37B6FB3C33BC6BBA3C9C29C75FC2BD03C03AFDD788BC3A2F2F4A19D
            2568DF62ED1C608E3E86BE7EBB9CDCDE4F39EB2C8CE7F139AF59F835740E9FA9
            DB16C6C952403FDE047FECA2B9F0D5E72AD66F4773D7CEB2BA1432E53A704A4A
            D776D7B1D47C48B4FB5F81B500065A20B28FF80B027F4CD78AF833FE473D27FE
            BE57F9D7D0DAB5BA5F6917968C411342E9D7D548AF9EBC1CA57C69A5291822E5
            411F8D5E2E3FBD83FEB731E1FAADE5F88A5D937F7AFF00807D262BC8EDAEFEC9
            F1D2E149C2CCC623F8C408FD40AF5BDCBC7CC3F3AF07F125DFD87E2E4B741B02
            3BC8493ED84CFE95BE265CAA2FCD1E56454BDABAD0EF07FA1EF44F19AF21D2EF
            3EDBF1CAE24072AAD2463FE029B7FA57ABCB32476CCECC005524F3E95E17F0F6
            E7ED3F1263B963CCCD3487F10C696225EFC23E63C9E8DE8626AF6835F7FF00C3
            1EF47EE9AF983C43FF002336ADFF005F92FF00E866BE9E665DA7E61D3D6BE64D
            6E233F8B352893EF3DF48A3EA6422B2C77C313BB849F2D6A8DF6FD4F79F0259F
            D8BC17A5C44619A1121FF8112DFD6A8FC44F12DDF86B46B79AC7CB13CB388C6F
            5DC36E093C7E02BA9B38A3B6B3820461B638D5073D80C57967C65BA0CFA4DAAB
            038F32423FEF903FAD6F59BA745DBA1E5E5D49637334A6AEA4DB7F8B2BF85BE2
            3EB7A9789AC6CAF9ADCDBCEFB18247B4E4838E7EB8AF62C6473F8D7CBBA35CFD
            8F5CB0B9071E55C46FF930AFA855948072391EB59E0AA4A717CCEE76F13E0A96
            1AB41D18A49AE9DD3FF827CF1F10ED3EC7E38D4940F96565947FC09413FAE6BD
            4BE14FFC89317FD7693F9D717F186D047E20B3BC5031341B091DCAB1FE8C2BB4
            F854C078222C903F7D27F3ACE8C79713247766557DAE47465E697DC9A35FC73F
            F2256ADFF5EED5F3757D21E38653E0AD5B047FC7BB77AF9BEB3C7FC6BD0EBE11
            FF0076A9EBFA1F50E81FF22F69DFF5ED1FFE822B85F8CDFF00202D3FFEBEBFF6
            46AEE74165FF00847F4EE47FC7B47DFF00D915C37C6520E85A7E083FE95FFB23
            576D7FE0BF43E67295FF000A90FF001338FF0085769F68F1AC72E322DE1793F1
            236FFECD5EF67804D7917C19B41E6EAB7AD8E047129FCC9FE95EAB7570905ACD
            29618442C7F019A8C1C7968A7DCE8E24A8EAE6328AE892FD7F53C6356F89FE20
            B7D62F60B592DC4114CE89BA2C9DA1881CD7A4F81B5C9FC43E1986FAECA1B8DE
            E926C1819078E3E98AF9DA590CB33C84E4BB163F8D7B1FC1CBA0FA1DFDAB301E
            55C071F4651FFC4D73E1ABCE756D27A33D7CF72AA14700A74A0934D5DAFBBF33
            67E27DA7DAFC0F74C065A074947E0D83FA135E015F4E788AD5750F0F6A36B904
            CB6EEA39EFB4E3F5AF98FA1C1A9C7C6D2523A3846B5F0F529F677FBD7FC00A28
            A2BCE3EC428A28A005048DBEC770F635BFA778CF57D35428996E507F05C26EFF
            00C78107F3CD1457561AA4E2F46791996070D5E9F354826FBF5FBCE9A1F8A171
            0FC8FA2405FF00BCB7240FCB6552D4BE24EAB38C47696D0678C97693FF0089A2
            8AF4A556696E7C8D2CB70AEAD9C34F57FE67257DAA5EEA6C1EEEE1E619C856E1
            47D1471FCEA9D14579152A4A72F79DCFB9C2E168E1E9DA8C547D028A28AC8EC0
            A9A1B9B9886C86792304E48572A33F851453444D271B31FF00DA17DFF3FB71FF
            007F5BFC6AB5145126DEE284230F85589A0B8B884110CF2C60F50AE573F953CE
            A37A4106F2E083FF004D5BFC68A29DD90E941CAED15AA68269E127C899E3CF5D
            AC467F2A28A934924E3663FF00B46F8FFCBE5C7FDFD6FF001A8164747122BB07
            072181C1CFD68A2AAEC98D382D913FF68DF7FCFE5C7FDFD6FF001A81E5924732
            3BB339EACC727F3A28A1B611A708EC89CDFDE1073777041E31E6B7F8D4314B24
            2FBE291D1C7F129C1A28A2EC234E0959226FED1BEFF9FCB8FF00BFADFE3506F7
            2FE6176DF9CEECF39F5CD1450DB08D3847644FFDA37C3FE5F2E3FEFEB7F8D473
            CD34CC3CF95E423A166271F9D14517628D3827748881C1C8EB567FB42FBFE7F2
            E3FEFEB7F8D145116D6C39D38CB743279E79B1E7CD2498E9B9CB63F3A7457775
            0AEC8AE658D7FBAAE40A28A2EC3D9C79796DA035F5E4A851EEA76523055A4241
            AAF4514A4DBDC708463B22C8D42F554017970074004ADC7EB4D9AE2E2601679E
            590039019CB01F9D1453BB21528295D2086E2E2152209E58C139215CAE7F2A71
            D42F594E6F2E08E84195B9FD68A28BB1CA941CAED15AA6827B8872209A48C1EB
            B5C8CFE54514917249C6CC7FF685EFFCFE5C7FDFD6FF001AAE4E4E4D145126DE
            E284231D909451452343FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo21: TfrxMemoView
          Left = 600.945270000000000000
          Top = 60.472480000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Concession'#225'ria Autorizada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 106.606370000000000000
          Top = 111.385900000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Resumo banco do per'#237'odo de:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 600.945270000000000000
          Top = 102.047310000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 347.716760000000000000
          Height = 79.370130000000000000
          OnBeforePrint = 'Picture4OnBeforePrint'
          Picture.Data = {
            0A544A504547496D616765FA160000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC00011080046013003012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E2EA
            FE97A45F6B5746DB4EB73713052E5030076E40CF247A8AA15D1781F52FECAF18
            69F36E211E4F25FD30FF002F3F4241FC2BE7692529252D8FD971D52A53A12A94
            FE24AE893FE15EF8AF19FEC697FEFE27FF001558DA9E977BA3DDFD96FE06826D
            A1B6310783D0F15F51E791915E37F192CBCBD674EBD03FD742D193FEE367FF00
            67AEDC461234E9F3C59F2D9571157C662950AB1493BED7FF00338ED37C25AEEA
            F68B7761A7C93C0C480E19402475EA6ADB7C3FF152AEE6D2250BFF005D13FF00
            8AAF69F02D90B0F06697081CB42243F57F9BFAD278E7543A4F83F50B856C48D1
            F95191D4337CB91F4CE7F0ABFA941439A4CE7971262A58BF634629A72B2DFBDB
            B9F3891838A28A7A4524B9F2E367C75DA335E65BB1F72A4A2B519452B2B23157
            52AC3A82306929151927AA0A28A281DD051453CC5208C4851821E8D8E3F3A2C2
            7248651453922924CEC466C75DA338A06E496E368A28A013B85145482098A6F1
            1485719DDB4E28B1329C56EC8E8A28A0A4D30A28A280BA6145145017414514AA
            ACEC1514B31E800C9A052925AB1297B539E2922C7991B267A6E18A65317327B1
            6AC2C2EB53BD8ECECE232DC4B9D880804E0127AFB035B9FF000AF7C57D7FB1A5
            FF00BF89FF00C554BF0DC7FC5C0D2F3EB27FE8B7AFA1BBF4AEFC361A1561CCCF
            93CF33DC460312A95249A693D7D59F326ABE1AD63438126D4AC5EDE376DAACCC
            A72719C704FA564D7B3FC651FF00121B03FF004F5FFB23578C57362692A73E54
            7AF9263AA63B0BEDAA5AF7E814528058800124F000EF4E78648B1E646E99E9B9
            48AC2C7AAE715D4651451414829CAC5183292181C823B5368A131495D599F4FE
            81A88D5F41B2BF180678559B1D9B1C8FC0E6B8FF008B1A6B5FE91A698C65C5E2
            C59C740E08FE6169BF08752375E1B9EC59B2D6731007A2BFCC3F5DD5DBEA9A7A
            6A36F1C6FF00F2CE78A65FAA386FE95EFAFDED25E67E4B52F97662EDF65FE1D3
            F02C5B42B05B45120C2A20551E800C0AF2DF8C9AA7C9A7E948792C6771F4F957
            F9B7E55EAE4ED5CFA0AF08D6AF57C41F16A20486812F62B7507905518061F89D
            DF9D462A4D439575D0E8C869F3E29D792D209C8EBBC1FF000DACECACE2BED621
            13DEBA86F25C6522F623B9F5CF1FCEBD0E3861863091A2220FBA00C54A808519
            AF32F8C179736B69A48827922CCACE76311CA8183C7A64D53E4A14F45B1CF096
            2335C628549EB2BFA23D12EEC2D2FE0305DDBC33C67AAC88187E46BC7FE21F80
            E1D121FED7D2D76DA33859A1CF1193D197D89E31D8918F6F60D3E56B8D3ADA57
            3F33C4A4FD4806B1FC731097C15AAA9ED6ECDF9723F953AF4E3529B76D432BC6
            D6C262A318CB4BD9AE879CFC23D3ED2FEEB541776D0CEB1A45B44881B1CB74CD
            7AA7FC23DA303FF20AB2E7FE982FF8579A7C17E6F7571FF4CE2FE6D5EBC4678A
            CF0693A4AE75711559ACC26949ADBF2472907827485F10CFAACD6B6EDF705BC2
            10044C0E588E8589CFD303BD74EF046F1B23468508C1057231F4AF23F12EAD79
            17C60B08D2E651124F044B1872142BEDDDC7BEE35EC35AD2945F324BA9C79852
            AF4E34A75277E68A6BC9763CEF52F85BA6DE788A1BD848B7B03969ED9060161D
            36FA03DFE9C75E3BAB3B1B5B1B65B7B5B78E1894615514003F2AE2FE2CDE4F69
            E14896295904D7491B156C64619B1F9A8ADBF02DD4B77E0BD32699D9DFCADA59
            8E49DA4AF5FC2A61C8AA38456A5E25E2AB60615EACEF14F952FD4C8F1F7846CB
            56D22EEFA18563D4208CCAAE8B82E00E54FAE4671EFF008D78EF87F43B8F116B
            3169D6C7697CB3B9190883A93FE7A915F49DFA07B0B85232A63607E98AF28F83
            36EAD7DAB5C9037C71C5183FEF1627FF00411586228C67563A6E7AF94E675A86
            5D5E4DDF92D6F2BE8779A0F83346D02155B7B4479C0F9AE2550CEC7EBDBE8315
            D100878C0FCA97A5794E91A85D9F8D37B034F218E4DE850B1C615011C7E15D53
            94695925BE87854A956C77B4A939DDC5393BF53BDD67C2FA3EBB1325ED944CC4
            7122A80E3DC30E6BC56EF416F0AF8F2CACAE809AD8DC46C8CEA0878D9B1C8E99
            EA0FD2BE83CE323D2BC93E332F9775A2CEBC395979FF0074A11FCEB9F154E2A1
            CF6D8F4F20C656F6FF005572F7669E9D9D9EC7A48F0EE8D85274BB2FFC074FF0
            AF2AF8B9A5DAE9F7BA64B696D0C0258E40C2340A0952A79C7FBD5EC165729776
            36F729F7648D5C7E2335E75F19ADC1D174EB9FEE5C14FF00BE949FFD96B4C4C5
            3A2CC723AF386630536FAAFC197BE1D687A75C782ACAE2E6C6DE69646918B491
            2B1C6F603923DAB43C5DA5693A7F84F52B98F4EB48E45818211026431180471D
            72455DF02C220F04E92A3BC01FFEFAF9BFAD667C53BB107822E23CE0CF2C718F
            FBEB77FECB428A54169D0875675B34B26ECE7F85FF00C8E2FC01F0FE1D5ED935
            7D54335B331F260071E660E32C7D33DBBE3D3AFAFD9E9F67A7C222B4B686DE21
            FC31A051FA554F0EDB0B4F0EE9F0201B63B78C0C7FBA2B2BE23CF2DB78135192
            17647C46BB94E0E0BA83FA134E9C234A9DD2E84E2F175F31C62A72968DD92E8B
            53A59618668CA491A3AB71861906BCEBC6FF000EACEE2C66D43498160BB894BB
            451AE165039236F63E98EBDFD6B77E1B5D4D75E07B179E4691D4C89B98E4901C
            E3F21C7E15D6372873E94DC635A0AFD4C215ABE5D8A6A9CB58BB793B1F3D7C37
            FF009281A5FF00DB4FFD14F5F43D7CFF00E048D61F89F6712FDD49A751F40920
            AFA02B1C0AB536BCCF538A65CD8C83FEEAFCD9E69F197FE401A7FF00D7CFFEC8
            D5C4F813C1A7C537B24D74CC9A7DB90242BC1918FF00083DBD49FA7AD76DF197
            FE401A7FFD7CFF00EC8D5B1F0C6D16DFC0B66E170F3BC9237B9DE40FD00A8952
            5531367B1D5471B3C26489D37694A4D1BFA6689A6E9102C561650C0A060954F9
            8FD4F53F8D5E78A2994A3A232F70464548D9D871E95E67F0A2FAEAEEF3C40B3C
            CF2813238DCC4E198C99FE42BADCA319285B73E769D1A95E8D4C4396B0B7ABBB
            B177C59F0DEC355B692E74B823B5BF50582A7CA921F423A027D47E39AF119237
            8A468E452AE84AB2918208EA2BEAE38E9DEBE76F88764B63E38D4511709232CA
            3EACA09FD735C38EA314BDA44FAAE15CC6AD49CB0D5657495D77397A28A2BCC3
            EE59DE7C27D4FEC7E2C366CD88EF226503FDB5F987E81BF3AF75E95F31787669
            2DFC4BA5CB1B6185D47CFD5803FA57D3A3EE8FA57B18197353E5EC7E6FC59414
            316AA2FB4BF23375FD49748D0EF6FD80CC30B3007B9C703F13815F3658EA13D8
            EA90EA29B649E2904A3CCC90CC0E79C106BDABE2CCCF1F830A21C2CB3A23FD39
            6FE6A2BC534BB3FED1D56CECB240B89923C8EDB980CD638D937514627A7C3142
            9C30756AD4D9EFE897FC13D034FF00893E31D5EE041A7E996970FDC470B90BF5
            3BB03F1AE966F096B7E2E5B57F154B6B6F1C04B2C164ADBDB38C8662C40E9DB3
            F5AECB4BD26CB46B08ED6C60486251C051D7DC9EE7DCD6078F7C4F2F86343596
            D955AEEE1FCB88B0C84E32588EF8FE66BA953E585EABBA3C178B55B10A180A6A
            0F64FAFF00563AA8D1628D51000AA00007602B2BC5BFF227EB1FF5E537FE806A
            EE9B2BCDA6DB4B21CBBC4A589EE48154BC5BFF00227EB1FF005E537FE806B797
            C279349355D27BDFF53CEBE0B7FC7F6AFF00F5CE2FE6D5EBF5E41F05BFE3FB57
            FF00AE717F36AF5FAC305FC147ABC47FF2319FCBF2478978AFFE4B2DA7FD7D5A
            FF0034AF6D1D0578978AFF00E4B2DA7FD7D5AFF34AF6D1D05187F8A7EA5673FC
            1C37F811E73F193FE457B2FF00AFD5FF00D01EB77E1DFF00C887A5FF00B8DFFA
            11AC2F8C9FF22BD97FD7EAFF00E80F5BBF0EFF00E443D2FF00DC6FFD08D28FFB
            CBF4154FF91243FC7FA1D0DDFF00C794FF00F5CDBF957CEBE19F17EA1E153746
            C22B67373B37F9CAC71B77631861FDE35F455DFF00C794FF00F5CDBF957887C2
            FF000FDAEB5ACDCDCDE44B2C5668ACB1B0CA97627048EF80A78A9C4A93A9151F
            3FD0EAC927429E0F112C4479A2B974F9BB7E2745A2F8B3C7DAF056B4D2EC1603
            FF002DA58DD571EA096E7F0CD74DA0F830586BB3EBFA85C2CDA94F92444A5238
            F230700924FD49FC2BAB4458D42A80A07000ED5C5C9E2CB8B8F8970787EDC016
            D0A9F39B1CBB796580F60323F1AD79542CEA3BBB9E7AAF5312EA2C2C142366DD
            BB2F33B615E59F1A7FE3D748FF007E4FE4B5EA9F5AF2BF8D3FF1EDA47FBF27F2
            5A58AD29487C3FAE654BE7F933B2F01DD0BBF04E972039DB088FFEF8257FF65A
            CAF8AF6FE778266931FEA258E4FD76FF00ECD50FC25BBFB47838C27ADBDC3A63
            D8E1BFF6635B9E39B437BE0CD5215196F2B781FEE90DFD285EF50B7904ED86CD
            5F653FD4BDE1D83ECFE1CD360FF9E76D1AFE4A05705F19AE76E97A65B6799266
            931FEEAE3FF66AF4C890451222F40A00FC2BC6FE31DE0935DB0B407FD4DB973F
            F02623FF0064A58A7CB45A46991C555CCE2DEDABFC1956C7E28789D843676763
            6733AA8444485D99B031D03575E34FF18F8B74992C35D8EC34EB39B696088CD2
            F0C18606F2072075FCAB63C0BE1CB4D1BC3F6AEB02FDAA789649A423E6248CE3
            3E8338C7B56C6BDAAA687A1DDEA5221758232C147F11E807E248A54E1250BD49
            6962F198DA2F11C982A4934F47D5BBFDC2E89A3DB683A4C1A75A06F2A107058E
            589249249FA935A47EE9FA5735E08D62EF5DF0CC3A85EB299A5924CED1800062
            001F415D29FBA7E95D1069C572EC78F88854856946A3BCAFAFA9E13E12FF0092
            C0BFF5F775FF00A0C95EF1DEBC1FC25FF25807FD7DDD7FE83257BC77AE6C1FC0
            FD4F6B88FF008F4BFC11FD4F33F8CBFF00200D3FFEBE7FF646AE8FE1DFFC889A
            5FFB8DFF00A11AE73E32FF00C8034FFF00AF9FFD91ABA2F877FF00222697FEE3
            7FE84688FF00BCCBD02B7FC8969FF8DFE4CEA7AF1599A7687A5E8EF33E9F6915
            BB4E4194A0FBD8CE33F99FCEB49BEE9FA5783786975CF14F886E74D1E24D46D7
            623CA1FCE91FA305C6378FEF7E95B55A8A124AD76CE0C0E0E588A5525CFCB18D
            AFBFE48F76201EE33EB5E0FF001531FF0009B4D8E9E427F2AED7FE15D788474F
            1D6A3FF913FF008E579AF8CB4ABAD1BC40F6979A8CB7F308D5BCF973B883DB96
            3D3EB5CB8C9C9D3B356D4F77872851A78C6E15149D9E8935DBBA473D45145792
            8FD059A1A1FF00C8C1A6FF00D7D45FFA18AFA857EE8FA57CBDA1FF00C8C1A6FF
            00D7D45FFA18AFA815D768F9874F5AF572FF00859F01C61FC6A7E8FF003382F8
            BBFF00227C7FF5F49FC8D7937847FE470D23FEBE93F9D7AC7C5D607C209820FF
            00A5277F635E2D6176F63A8DB5E20CBDBCC92A83DCA9047F2ACB14D2AE9B3D0E
            1F839E55382DDB97E47D500F6ED5E5BF19A276B0D2A50A4A2CAEA4FA120607E8
            7F2AEFB44D72C75DD3D6EECEE1244206E00FCCA7D08EC6A4D4F51B1D2EC5EEEF
            A68D208F925B9E7B003B9F402BD0A915529DAFA1F1B82AB53098B8CF92F25D3F
            024D2D0C7A5DAA30C32C49907B1C0AA5E2DFF913F58FFAF29BFF004035734BD4
            23D4B4AB4BE51B16E21594293C80C01C7EB54BC5ACA7C21AC6187FC794DDFF00
            D8354EDCBA18D3E6FAC2BAD6FF00A9E77F05BFE3FB57FF00AE717F36AF5FAF1F
            F82E40BDD5F240FDDC5D7EAD5EBDBD7FBC3F3AC707FC147A7C46BFE1467F2FC9
            1E29E2BFF92CB69FF5F56BFCD2BDB47415E23E2B20FC64B439E3ED56BFCD2BDB
            03AE07CC3F3A30FF0014FD4ACE57EE70DFE0479DFC64FF00915ECBFEBF57FF00
            407ADDF877FF00221E97FEE37FE846B07E31B03E17B3C107FD357FF407ADDF87
            6CA3C09A58247DC6EFFED1A51FF797E81517FC22C3FC7FA1D15DFF00C794FF00
            F5CDBF95796FC15FBDADFD20FF00DA95EA376EBF629FE61FEADBBFB57857C36F
            1141A0EBB225DC8B1DB5DA043237456072A49EC3923F11456928D6837E656594
            675B2FC4C20AEFDDFC1DCF7D22BC8F4BB7953E38DDEE42305E43C7F094E0FEA2
            BD6239A39635757528C320839045645EEBBA7D96B565A71746BDBB6DAAAA7955
            00B166F41C71EA4FD6B5AD052B36F6679F81C454A3ED21085F9A2D7A799B7D1A
            BCAFE34FFC7B691FEFC9FC96BD4F727F787E75E57F1A1835B693820FCF274FA2
            D462FF008323A787D5B31A5F3FC98CF8317795D5AD09E8639547D7703FC857AA
            4F0ADC41242E3292295604762315E1FF00096EFC8F1749093F2CF6CC00F7054F
            F206BDD37A7F787E74B072BD246BC4749D3CC66FBD9FE0281C57CFBF136E7ED1
            E3ABD5EA20448C7FDF218FEAC6BE802EA14FCC3F3AF99BC5175F6CF14EAB3939
            DD752007D83103F402B3C7CAD048ECE14A7CD8A9CFB47F368FA3749FF904599F
            FA609FFA08AC0F8931BCBE03D492352CC046C40F40EA49FC81A83E1F789ACF56
            F0FDB5A99D05E5B46B1C911386F9460103B8200E95D74B2C290B3CAC82300962
            C7803BD74AB4E9EFBA3C492A983C65E51D632FC99C97C308D97C09645811B9E5
            233DC6F6AEC8FDD3F4AC7D135CB3D6A19E4B16536F0CC62471D1F6E3247B64F1
            F4AD62EBB4FCC3A7AD3A6946095F632C5CE5531139C959B77FBCF0BF097FC960
            1FF5F775FF00A0C95EF1DEBC1FC2447FC2DF073C7DAEEBFF004192BDDB7AFF00
            787E75CF83F81FA9EBF11AFDFD2FF047F53CD7E32FFC8034FF00FAF9FF00D91A
            B67E195CACDE04B200E5A232237B7CE48FD08AC5F8C8C0E81A7E083FE93FFB23
            571BE00F190F0C5E496F77B8E9F70C0B15E4C6FD3763B8C601FA0F4C1CE55153
            C4DD9DB4B05531592254D5DC64DDBB9EF841D84578D7C2DB59D3C6FAA3B210B0
            C5244F9FE162EB81FF008E9FCABD6AC753B3D4ED96E2CEEA29E26FE28DC30FC7
            D0D580B1A12C02827A91DEBAA54D4E51927B1E061F152C351AB41C7E3497A587
            9E6BE7FF0089972973E39BB0841589238C91EBB413FCEBD4FC59E38D3FC376D2
            451C91CF7C4612056C907D5B1D07EA6BC06E2E25BBB996E2772F34AE5DDCF566
            2724D7263AB45C7911F49C2980AB1AB2C4CD595ACBCEE45451457947DF051451
            409A4F70A28A280B25B12DBCD3C0FE65BCAF138FE2462A7F314EB8BBBABB2AD7
            57334C4743239623F3A28AA4DD8CBD9C39EF6D4828A28A9B9A72C7B05145145C
            6E29EE828A28A2E1CABB05145145C3956D60A28A28B8AC96C59B7D46F6D53CBB
            6BDB8850FF000C72B28FC81A81DDA572EEC5989C96639268A2A9B6C88D2845B6
            96E368A28A9B9A28A5D028A28A2E0E29EE828A28A0124B61C8ED1B07462AC390
            41C1153CFA8DF5CC622B9BCB8963EC8F2B30FC89A28AA4DA33953849DDA2B514
            5153765F2ABEC145145171B8A7BA0A28A280B25B12C12CD0BF9904AF1BFF0079
            18A9FCC5587D6353954AC9A95E3A9EAAD3311FCE8A2A949A30951A7295DC514A
            8A28A9374ADA23FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object SysMemo2: TfrxSysMemoView
          Left = 653.858690000000000000
          Top = 102.047310000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 350.496290000000000000
          Top = 111.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Resumo]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 464.882190000000000000
          Top = 111.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Resumo2]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 445.984540000000000000
          Top = 111.496062992126000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #224)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 793.701300000000000000
      end
    end
  end
  object tblRelPlaconBanco: TfrxDBDataset
    UserName = 'tblRelPlaconBanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PLACON=ID_PLACON'
      'CONTA=CONTA'
      'DESCRICAO=DESCRICAO'
      'TIPO=TIPO'
      'NIVEL=NIVEL'
      'CLASSIFICACAO=CLASSIFICACAO'
      'CONTA_BANCARIA=CONTA_BANCARIA')
    DataSource = DataSourcePlaconBanco
    BCDToCurrency = False
    Left = 120
    Top = 192
  end
  object tblDespesas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBancoAfterCancel
    AfterDelete = tblBancoAfterPost
    AfterPost = tblBancoAfterPost
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
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 304
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
  object DataSourceDespesas: TDataSource
    AutoEdit = False
    DataSet = tblDespesas
    Left = 392
    Top = 304
  end
  object tblAuxResumo: TClientDataSet
    PersistDataPacket.Data = {
      070100009619E0BD010000001800000009000000000003000000070109444F43
      554D454E544F0100490000000100055749445448020002000D00064F52494745
      4D0100490000000100055749445448020002000100084E41545552455A410100
      4900000001000557494454480200020001000A464F524D415F5047544F010049
      0000000100055749445448020002000A00044441544104000600000000000556
      414C4F52080004000000010007535542545950450200490006004D6F6E657900
      05434F4E5441010049000000010005574944544802000200040009484953544F
      5249434F01004900000001000557494454480200020032000849445F42414E43
      4F04000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ORIGEM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NATUREZA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FORMA_PGTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'CONTA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_BANCO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 168
    object tblAuxResumoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 13
    end
    object tblAuxResumoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object tblAuxResumoNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 1
    end
    object tblAuxResumoFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Size = 10
    end
    object tblAuxResumoDATA: TDateField
      FieldName = 'DATA'
    end
    object tblAuxResumoVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object tblAuxResumoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 4
    end
    object tblAuxResumoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object tblAuxResumoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dts1: TDataSource
    AutoEdit = False
    DataSet = tblAuxResumo
    Left = 384
    Top = 168
  end
end
