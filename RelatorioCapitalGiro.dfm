object BoxCapitalGiro: TBoxCapitalGiro
  Left = 15
  Top = 85
  Caption = 'Capital de Giro'
  ClientHeight = 441
  ClientWidth = 788
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
    Width = 788
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 428
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 786
      Height = 439
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 426
      object Label2: TLabel
        Left = 8
        Top = 46
        Width = 54
        Height = 13
        Caption = 'Data atual:'
      end
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
      object Label3: TLabel
        Left = 13
        Top = 235
        Width = 92
        Height = 13
        Caption = 'Ve'#237'culos em venda:'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 13
        Top = 262
        Width = 78
        Height = 13
        Caption = 'Contas '#224' pagar:'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 13
        Top = 289
        Width = 31
        Height = 13
        Caption = 'Caixa:'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 501
        Top = 120
        Width = 32
        Height = 13
        Caption = 'Pe'#231'as:'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 501
        Top = 147
        Width = 132
        Height = 13
        Caption = 'Contas '#224' receber '#224' vencer:'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 501
        Top = 174
        Width = 132
        Height = 13
        Caption = 'Contas '#224' receber vencidas:'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 501
        Top = 255
        Width = 28
        Height = 13
        Caption = 'Total:'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 13
        Top = 316
        Width = 38
        Height = 13
        Caption = 'Bancos:'
        FocusControl = DBEdit9
      end
      object Label11: TLabel
        Left = 13
        Top = 396
        Width = 42
        Height = 13
        Caption = 'Liquidez:'
        FocusControl = DBEdit10
      end
      object Label12: TLabel
        Left = 13
        Top = 343
        Width = 58
        Height = 13
        Caption = 'Pend'#234'ncias:'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 263
        Top = 343
        Width = 90
        Height = 13
        Caption = 'Pend'#234'ncias motos:'
        FocusControl = DBEdit11
      end
      object Label14: TLabel
        Left = 263
        Top = 370
        Width = 92
        Height = 13
        Caption = 'Pend'#234'ncias outros:'
        FocusControl = DBEdit11
      end
      object Label17: TLabel
        Left = 126
        Top = 204
        Width = 158
        Height = 13
        Caption = 'Total usadas com as pend'#234'ncias:'
        FocusControl = DBEdit19
      end
      object Label18: TLabel
        Left = 264
        Top = 397
        Width = 189
        Height = 13
        Caption = 'Total usadas em pedidos n'#227'o faturados'
        FocusControl = DBEdit22
      end
      object Label19: TLabel
        Left = 501
        Top = 201
        Width = 87
        Height = 13
        Caption = 'Menos de 30 dias:'
        FocusControl = DBEdit7
      end
      object Label20: TLabel
        Left = 501
        Top = 228
        Width = 77
        Height = 13
        Caption = 'Mais de 30 dias:'
        FocusControl = DBEdit7
      end
      object Panel3: TPanel
        Left = 8
        Top = 102
        Width = 469
        Height = 93
        Color = clActiveBorder
        ParentBackground = False
        TabOrder = 23
        object Label1: TLabel
          Left = 7
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Ve'#237'culos:'
        end
        object Label15: TLabel
          Left = 237
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Novas:'
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 232
          Top = 35
          Width = 39
          Height = 16
          Caption = 'Usadas:'
          FocusControl = DBEdit16
        end
        object Label21: TLabel
          Left = 209
          Top = 67
          Width = 62
          Height = 13
          Caption = 'Imobilizadas:'
        end
        object DBEdit1: TDBEdit
          Left = 55
          Top = 5
          Width = 134
          Height = 21
          Color = clScrollBar
          DataField = 'VEICULOS'
          DataSource = dts1
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 286
          Top = 5
          Width = 30
          Height = 21
          Color = clScrollBar
          DataField = 'QTDENOVOS'
          DataSource = dts1
          TabOrder = 1
        end
        object DBEdit15: TDBEdit
          Left = 322
          Top = 5
          Width = 134
          Height = 21
          Color = clScrollBar
          DataField = 'VEICULOSNOVOS'
          DataSource = dts1
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 322
          Top = 32
          Width = 134
          Height = 21
          Color = clScrollBar
          DataField = 'VEICULOSUSADOS'
          DataSource = dts1
          TabOrder = 3
        end
        object DBEdit17: TDBEdit
          Left = 286
          Top = 32
          Width = 30
          Height = 21
          Color = clScrollBar
          DataField = 'QTDEUSADOS'
          DataSource = dts1
          TabOrder = 4
        end
        object DBEdit26: TDBEdit
          Left = 286
          Top = 64
          Width = 30
          Height = 21
          Color = clScrollBar
          DataField = 'QTDEIMOBILIZADO'
          DataSource = dts1
          TabOrder = 5
        end
        object DBEdit27: TDBEdit
          Left = 322
          Top = 64
          Width = 134
          Height = 21
          Color = clScrollBar
          DataField = 'VEICULOSIMOBILIZADO'
          DataSource = dts1
          TabOrder = 6
        end
      end
      object DataInicial: TDateEdit
        Left = 72
        Top = 43
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 419
        Width = 784
        Height = 19
        Panels = <>
        ExplicitTop = 406
      end
      object BitBtn1: TBitBtn
        Left = 72
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
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object DBEdit2: TDBEdit
        Left = 147
        Top = 232
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'VEICULOSEMVENDA'
        DataSource = dts1
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 111
        Top = 259
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CONTASAPAGAR'
        DataSource = dts1
        TabOrder = 10
      end
      object DBEdit4: TDBEdit
        Left = 111
        Top = 286
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CAIXA'
        DataSource = dts1
        TabOrder = 12
      end
      object DBEdit5: TDBEdit
        Left = 639
        Top = 117
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'PECAS'
        DataSource = dts1
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 639
        Top = 144
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CONTASARECEBER'
        DataSource = dts1
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 639
        Top = 171
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CONTASARECEBERVENCIDAS'
        DataSource = dts1
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 639
        Top = 252
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'TOTAL'
        DataSource = dts1
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 111
        Top = 313
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'BANCOS'
        DataSource = dts1
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 111
        Top = 393
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'LIQUIDEZ'
        DataSource = dts1
        TabOrder = 18
      end
      object DBEdit11: TDBEdit
        Left = 111
        Top = 340
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'PENDENCIAS'
        DataSource = dts1
        TabOrder = 14
      end
      object DBEdit12: TDBEdit
        Left = 395
        Top = 340
        Width = 98
        Height = 21
        Color = clScrollBar
        DataField = 'PENDENCIASMOTOS'
        DataSource = dts1
        TabOrder = 16
      end
      object DBEdit13: TDBEdit
        Left = 359
        Top = 367
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'PENDENCIASOUTROS'
        DataSource = dts1
        TabOrder = 17
      end
      object DBEdit14: TDBEdit
        Left = 359
        Top = 340
        Width = 30
        Height = 21
        Color = clScrollBar
        DataField = 'PENDENCIASMOTOSNUMERO'
        DataSource = dts1
        TabOrder = 15
      end
      object DBEdit19: TDBEdit
        Left = 330
        Top = 201
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'VALORTOTALUSADAS'
        DataSource = dts1
        TabOrder = 5
      end
      object DBEdit20: TDBEdit
        Left = 294
        Top = 201
        Width = 30
        Height = 21
        Color = clScrollBar
        DataField = 'QTDETOTALUSADAS'
        DataSource = dts1
        TabOrder = 4
      end
      object DBEdit21: TDBEdit
        Left = 459
        Top = 394
        Width = 30
        Height = 21
        Color = clScrollBar
        DataField = 'QTDEUSADASEMPEDIDOS'
        DataSource = dts1
        TabOrder = 20
      end
      object DBEdit22: TDBEdit
        Left = 499
        Top = 393
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'VALORUSADASEMPEDIDOS'
        DataSource = dts1
        TabOrder = 19
      end
      object DBEdit23: TDBEdit
        Left = 639
        Top = 198
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CONTASRECEBER30'
        DataSource = dts1
        TabOrder = 7
      end
      object DBEdit24: TDBEdit
        Left = 639
        Top = 225
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'CONTASRECEBERMAIS30'
        DataSource = dts1
        TabOrder = 9
      end
      object DBEdit25: TDBEdit
        Left = 111
        Top = 232
        Width = 30
        Height = 21
        Color = clScrollBar
        DataField = 'QTDEEMVENDA'
        DataSource = dts1
        TabOrder = 22
      end
    end
  end
  object IBQuery7: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Custo_ICMS) as valor from Veiculos'
      'WHERE status <>  '#39'VENDIDO'#39
      'AND'
      'Status <> '#39'DEVOLVIDO'#39
      'and'
      'status<> '#39'TRANSFERIDO'#39
      'and'
      'Status <> '#39'TERCEIRO'#39)
    Left = 528
    Top = 144
  end
  object IBQuery8: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(v.Custo_ICMS) as valor, Count (*) as numero'
      'from Veiculos v'
      'inner join pedido_veiculos pv on pv.id_veiculos = v.id_veiculos'
      'WHERE pv.status = '#39'Pendente'#39
      'or'
      'pv.Status = '#39'Aprovado'#39
      '')
    Left = 496
    Top = 144
  end
  object IBQuery6: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor'
      'from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 496
    Top = 184
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Valor) as valor'
      'from Creceber'
      'WHERE status =  '#39'Processado'#39
      'AND'
      'Vencimento > :id')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Valor) as valor'
      'from Creceber'
      'WHERE status =  '#39'Processado'#39
      'AND'
      'Vencimento < :id')
    Left = 304
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
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
      'Select Sum(Valor) as valor'
      'from CPagar'
      'WHERE status =  '#39'Processado'#39)
    Left = 336
    Top = 16
  end
  object IBQuery4: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(Caixa.Valor) as VALOR from Caixa'
      'Where'
      'Status = '#39'Processado'#39
      'and Natureza = '#39'E'#39)
    Left = 272
    Top = 48
  end
  object IBQuery5: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(Caixa.Valor) as VALOR from Caixa'
      'Where'
      'Status = '#39'Processado'#39
      'and Natureza = '#39'S'#39)
    Left = 304
    Top = 48
  end
  object IBQuery9: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(B.Valor) as Valor'
      'from Banco b'
      
        'inner join concessionaria c on b.id_concessionaria = c.id_conces' +
        'sionaria'
      'Where '
      'b.Natureza = '#39'E'#39
      'and'
      'c.ativa = '#39'T'#39
      '')
    Left = 232
    Top = 8
  end
  object IBQuery10: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select sum(B.Valor) as Valor'
      'from Banco b'
      
        'inner join concessionaria c on b.id_concessionaria = c.id_conces' +
        'sionaria'
      'Where '
      'b.Natureza = '#39'S'#39
      'and'
      'c.ativa = '#39'T'#39
      '')
    Left = 200
    Top = 8
  end
  object IBQuery11: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Valor) as valor'
      'from Creceber'
      'WHERE status =  '#39'Pendente'#39)
    Left = 368
    Top = 16
  end
  object IBQuery12: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(pr.Valor_devido) as valor, Count (*) as numero'
      'from pedido_veiculos_recebimento pr'
      
        'inner join pedido_veiculos p on pr.id_pedido_veiculos = p.id_ped' +
        'ido_veiculos'
      'WHERE pr.forma_pagamento =  '#39'Usado'#39
      'and'
      'pr.valor_recebido is null'
      'and'
      'pr.id_creceber is not null'
      'and'
      'p.status <> '#39'Cancelado'#39)
    Left = 400
    Top = 16
  end
  object tblAuxReceita: TClientDataSet
    PersistDataPacket.Data = {
      020400009619E0BD01000000180000001B000000000003000000020408564549
      43554C4F53080004000000010007535542545950450200490006004D6F6E6579
      000F56454943554C4F53454D56454E4441080004000000010007535542545950
      450200490006004D6F6E65790005504543415308000400000001000753554254
      5950450200490006004D6F6E6579000E434F4E54415341524543454245520800
      04000000010007535542545950450200490006004D6F6E65790016434F4E5441
      53415245434542455256454E4349444153080004000000010007535542545950
      450200490006004D6F6E6579000C434F4E544153415041474152080004000000
      010007535542545950450200490006004D6F6E65790005434149584108000400
      0000010007535542545950450200490006004D6F6E6579000642414E434F5308
      0004000000010007535542545950450200490006004D6F6E65790005544F5441
      4C080004000000010007535542545950450200490006004D6F6E657900084C49
      51554944455A080004000000010007535542545950450200490006004D6F6E65
      79000A50454E44454E4349415308000400000001000753554254595045020049
      0006004D6F6E6579000F50454E44454E434941534D4F544F5308000400000001
      0007535542545950450200490006004D6F6E6579001050454E44454E43494153
      4F5554524F53080004000000010007535542545950450200490006004D6F6E65
      79001550454E44454E434941534D4F544F534E554D45524F0400010000000000
      0A51544445555341444F5304000100000000000E56454943554C4F5355534144
      4F53080004000000010007535542545950450200490006004D6F6E6579000D56
      454943554C4F534E4F564F530800040000000100075355425459504502004900
      06004D6F6E65790009515444454E4F564F5304000100000000000B5154444545
      4D56454E444104000100000000000F51544445544F54414C5553414441530400
      0100000000001056414C4F52544F54414C555341444153080004000000010007
      535542545950450200490006004D6F6E6579001351544445555341444153454D
      50454449444F5304000100000000001456414C4F52555341444153454D504544
      49444F53080004000000010007535542545950450200490006004D6F6E657900
      0F434F4E54415352454345424552333008000400000001000753554254595045
      0200490006004D6F6E65790013434F4E544153524543454245524D4149533330
      080004000000010007535542545950450200490006004D6F6E6579000F515444
      45494D4F42494C495A41444F04000100000000001356454943554C4F53494D4F
      42494C495A41444F080004000000010007535542545950450200490006004D6F
      6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'VEICULOS'
        DataType = ftCurrency
      end
      item
        Name = 'VEICULOSEMVENDA'
        DataType = ftCurrency
      end
      item
        Name = 'PECAS'
        DataType = ftCurrency
      end
      item
        Name = 'CONTASARECEBER'
        DataType = ftCurrency
      end
      item
        Name = 'CONTASARECEBERVENCIDAS'
        DataType = ftCurrency
      end
      item
        Name = 'CONTASAPAGAR'
        DataType = ftCurrency
      end
      item
        Name = 'CAIXA'
        DataType = ftCurrency
      end
      item
        Name = 'BANCOS'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL'
        DataType = ftCurrency
      end
      item
        Name = 'LIQUIDEZ'
        DataType = ftCurrency
      end
      item
        Name = 'PENDENCIAS'
        DataType = ftCurrency
      end
      item
        Name = 'PENDENCIASMOTOS'
        DataType = ftCurrency
      end
      item
        Name = 'PENDENCIASOUTROS'
        DataType = ftCurrency
      end
      item
        Name = 'PENDENCIASMOTOSNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'QTDEUSADOS'
        DataType = ftInteger
      end
      item
        Name = 'VEICULOSUSADOS'
        DataType = ftCurrency
      end
      item
        Name = 'VEICULOSNOVOS'
        DataType = ftCurrency
      end
      item
        Name = 'QTDENOVOS'
        DataType = ftInteger
      end
      item
        Name = 'QTDEEMVENDA'
        DataType = ftInteger
      end
      item
        Name = 'QTDETOTALUSADAS'
        DataType = ftInteger
      end
      item
        Name = 'VALORTOTALUSADAS'
        DataType = ftCurrency
      end
      item
        Name = 'QTDEUSADASEMPEDIDOS'
        DataType = ftInteger
      end
      item
        Name = 'VALORUSADASEMPEDIDOS'
        DataType = ftCurrency
      end
      item
        Name = 'CONTASRECEBER30'
        DataType = ftCurrency
      end
      item
        Name = 'CONTASRECEBERMAIS30'
        DataType = ftCurrency
      end
      item
        Name = 'QTDEIMOBILIZADO'
        DataType = ftInteger
      end
      item
        Name = 'VEICULOSIMOBILIZADO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 472
    Top = 24
    object tblAuxReceitaVEICULOS: TCurrencyField
      FieldName = 'VEICULOS'
    end
    object tblAuxReceitaVEICULOSEMVENDA: TCurrencyField
      FieldName = 'VEICULOSEMVENDA'
    end
    object tblAuxReceitaPECAS: TCurrencyField
      FieldName = 'PECAS'
    end
    object tblAuxReceitaCONTASARECEBER: TCurrencyField
      FieldName = 'CONTASARECEBER'
    end
    object tblAuxReceitaCONTASARECEBERVENCIDAS: TCurrencyField
      FieldName = 'CONTASARECEBERVENCIDAS'
    end
    object tblAuxReceitaCONTASAPAGAR: TCurrencyField
      FieldName = 'CONTASAPAGAR'
    end
    object tblAuxReceitaCAIXA: TCurrencyField
      FieldName = 'CAIXA'
    end
    object tblAuxReceitaBANCOS: TCurrencyField
      FieldName = 'BANCOS'
    end
    object tblAuxReceitaTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object tblAuxReceitaLIQUIDEZ: TCurrencyField
      FieldName = 'LIQUIDEZ'
    end
    object tblAuxReceitaPENDENCIAS: TCurrencyField
      FieldName = 'PENDENCIAS'
    end
    object tblAuxReceitaPENDENCIASMOTOS: TCurrencyField
      FieldName = 'PENDENCIASMOTOS'
    end
    object tblAuxReceitaPENDENCIASOUTROS: TCurrencyField
      FieldName = 'PENDENCIASOUTROS'
    end
    object tblAuxReceitaPENDENCIASMOTOSNUMERO: TIntegerField
      FieldName = 'PENDENCIASMOTOSNUMERO'
    end
    object tblAuxReceitaVEICULOSUSADOS: TCurrencyField
      FieldName = 'VEICULOSUSADOS'
    end
    object tblAuxReceitaQTDEUSADOS: TIntegerField
      FieldName = 'QTDEUSADOS'
    end
    object tblAuxReceitaVEICULOSNOVOS: TCurrencyField
      FieldName = 'VEICULOSNOVOS'
    end
    object tblAuxReceitaQTDENOVOS: TIntegerField
      FieldName = 'QTDENOVOS'
    end
    object tblAuxReceitaQTDEEMVENDA: TIntegerField
      FieldName = 'QTDEEMVENDA'
    end
    object tblAuxReceitaQTDETOTALUSADAS: TIntegerField
      FieldName = 'QTDETOTALUSADAS'
    end
    object tblAuxReceitaVALORTOTALUSADAS2: TCurrencyField
      FieldName = 'VALORTOTALUSADAS'
    end
    object tblAuxReceitaQTDEUSADASEMPEDIDOS: TIntegerField
      FieldName = 'QTDEUSADASEMPEDIDOS'
    end
    object tblAuxReceitaVALORUSADASEMPEDIDOS: TCurrencyField
      FieldName = 'VALORUSADASEMPEDIDOS'
    end
    object tblAuxReceitaCONTASRECEBER30: TCurrencyField
      FieldName = 'CONTASRECEBER30'
    end
    object tblAuxReceitaCONTASRECEBERMAIS30: TCurrencyField
      FieldName = 'CONTASRECEBERMAIS30'
    end
    object tblAuxReceitaVEICULOSIMOBILIZADO: TCurrencyField
      FieldName = 'VEICULOSIMOBILIZADO'
    end
    object tblAuxReceitaQTDEIMOBILIZADO: TIntegerField
      FieldName = 'QTDEIMOBILIZADO'
    end
  end
  object dts1: TDataSource
    AutoEdit = False
    DataSet = tblAuxReceita
    Left = 504
    Top = 24
  end
  object IBQuery13: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Custo_ICMS) as valor, Count(*) as qtde from Veiculos'
      'WHERE status <>  '#39'VENDIDO'#39
      'AND'
      'Status <> '#39'DEVOLVIDO'#39
      'and'
      'status<> '#39'TRANSFERIDO'#39
      'and'
      'Status <> '#39'TERCEIRO'#39
      'and'
      'Status <> '#39'IMOBILIZADO'#39
      'and'
      'Origem = '#39'N'#39)
    Left = 408
    Top = 104
  end
  object IBQuery14: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Custo_ICMS) as valor, Count(*) as qtde from Veiculos'
      'WHERE status <>  '#39'VENDIDO'#39
      'AND'
      'Status <> '#39'DEVOLVIDO'#39
      'and'
      'status<> '#39'TRANSFERIDO'#39
      'and'
      'Status <> '#39'TERCEIRO'#39
      'and'
      'Status <> '#39'IMOBILIZADO'#39
      'and'
      'Origem = '#39'U'#39)
    Left = 408
    Top = 136
  end
  object IBQuery15: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(pr.Valor_devido) as valor, Count (*) as numero'
      'from pedido_veiculos_recebimento pr'
      
        'inner join pedido_veiculos p on pr.id_pedido_veiculos = p.id_ped' +
        'ido_veiculos'
      'WHERE pr.forma_pagamento =  '#39'Usado'#39
      'and'
      'pr.valor_recebido is null'
      'and'
      'pr.id_creceber is null'
      'and'
      'p.status <> '#39'Cancelado'#39)
    Left = 400
    Top = 48
  end
  object IBQuery16: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Valor) as valor'
      'from Creceber'
      'WHERE status =  '#39'Processado'#39
      'AND'
      'Vencimento < :id'
      'and'
      'Vencimento > :id - 30')
    Left = 568
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object IBQuery17: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select Sum(Custo_ICMS) as valor, Count(*) as qtde'
      'from Veiculos'
      'WHERE status =  '#39'IMOBILIZADO'#39)
    Left = 360
    Top = 232
  end
end
