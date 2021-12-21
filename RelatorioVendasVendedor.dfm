object BoxVendasVendedor: TBoxVendasVendedor
  Left = 0
  Top = 0
  Caption = 'Vendas Vendedor'
  ClientHeight = 305
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 305
    Align = alClient
    TabOrder = 0
    ExplicitTop = -8
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 55
      Height = 13
      Caption = 'Per'#237'odo: de'
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
      Left = 199
      Top = 46
      Width = 6
      Height = 13
      Caption = #224
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 87
      Width = 873
      Height = 194
      DataSource = DataSourceComissoes
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PEDIDO_VEICULOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VEICULOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_COMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VENDEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FINANCEIRA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DA_VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_A_RECEBER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_CANCELAMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF_CANCELAMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end>
    end
    object DataFinal: TDateEdit
      Left = 211
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DataInicial: TDateEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 359
      Top = 43
      Width = 121
      Height = 26
      Caption = 'Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn1Click
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
  end
  object tblVendas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos'
      
        '  (ANO_FABRICACAO, ANO_MODELO, BASE_COMISSAO, CHASSI, COR, DATA_' +
        'NF, DATA_NF_CANCELAMENTO, '
      
        '   ID_AVALISTA, ID_CLIENTES, ID_CONCESSIONARIA, ID_FINANCEIRA, I' +
        'D_PEDIDO_VEICULOS, '
      
        '   ID_USUARIO, ID_VEICULOS, ID_VENDEDOR, MARCA, MODELO, MOTOR, N' +
        'F, NF_CANCELAMENTO, '
      
        '   PLACA, STATUS, USUARIO, VALOR, VALOR_A_RECEBER, VALOR_DA_VEND' +
        'A, '
      
        '   VALOR_EXCLUSIVO, VALOR_EXCLUSIVO2, VALOR_NORMAL, VALOR_NORMAL' +
        '2, VALOR_VIP, '
      '   VALOR_VIP2)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :BASE_COMISSAO, :CHASSI, :COR, ' +
        ':DATA_NF, '
      
        '   :DATA_NF_CANCELAMENTO, :ID_AVALISTA, :ID_CLIENTES, :ID_CONCES' +
        'SIONARIA, '
      
        '   :ID_FINANCEIRA, :ID_PEDIDO_VEICULOS, :ID_USUARIO, :ID_VEICULO' +
        'S, :ID_VENDEDOR, '
      
        '   :MARCA, :MODELO, :MOTOR, :NF, :NF_CANCELAMENTO, :PLACA, :STAT' +
        'US, '
      
        '   :USUARIO, :VALOR, :VALOR_A_RECEBER, :VALOR_DA_VENDA, :VALOR_E' +
        'XCLUSIVO, '
      
        '   :VALOR_EXCLUSIVO2, :VALOR_NORMAL, :VALOR_NORMAL2, :VALOR_VIP,' +
        ' :VALOR_VIP2)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS,'
      '  CHASSI,'
      '  MODELO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_VEICULOS,'
      '  ID_AVALISTA,'
      '  ID_VENDEDOR,'
      '  ID_FINANCEIRA,'
      '  MARCA,'
      '  ANO_MODELO,'
      '  ANO_FABRICACAO,'
      '  PLACA,'
      '  VALOR,'
      '  BASE_COMISSAO,'
      '  NF,'
      '  DATA_NF,'
      '  STATUS,'
      '  VALOR_DA_VENDA,'
      '  VALOR_A_RECEBER,'
      '  MOTOR,'
      '  ID_USUARIO,'
      '  USUARIO,'
      '  COR,'
      '  NF_CANCELAMENTO,'
      '  DATA_NF_CANCELAMENTO,'
      '  VALOR_VIP,'
      '  VALOR_NORMAL,'
      '  VALOR_EXCLUSIVO,'
      '  VALOR_VIP2,'
      '  VALOR_NORMAL2,'
      '  VALOR_EXCLUSIVO2'
      'from Pedido_Veiculos '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'select Pedido_veiculos.*, Clientes.Nome from Pedido_Veiculos'
      
        'inner join Clientes on (Clientes.Id_Clientes = Pedido_Veiculos.I' +
        'd_Clientes)'
      'where id_vendedor = :idVendedor'
      'and'
      'Data_NF >= :DataInicial'
      'and'
      'Data_NF <= :DataFinal'
      'and'
      '(Status = '#39'Fechado'#39' or Status = '#39'Faturado'#39')'
      'and'
      '(MODELO = '#39'CRYPTON T115 K'#39' or'
      'MODELO = '#39'CRYPTON T115 ED'#39' or'
      'MODELO = '#39'FACTOR YBR 125 K'#39' OR'
      'MODELO = '#39'FACTOR YBR 125 E'#39' OR'
      'MODELO = '#39'FACTOR YBR 125 ED'#39')')
    ModifySQL.Strings = (
      'update Pedido_Veiculos'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_COMISSAO = :BASE_COMISSAO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_NF = :DATA_NF,'
      '  DATA_NF_CANCELAMENTO = :DATA_NF_CANCELAMENTO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  NF_CANCELAMENTO = :NF_CANCELAMENTO,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER,'
      '  VALOR_DA_VENDA = :VALOR_DA_VENDA,'
      '  VALOR_EXCLUSIVO = :VALOR_EXCLUSIVO,'
      '  VALOR_EXCLUSIVO2 = :VALOR_EXCLUSIVO2,'
      '  VALOR_NORMAL = :VALOR_NORMAL,'
      '  VALOR_NORMAL2 = :VALOR_NORMAL2,'
      '  VALOR_VIP = :VALOR_VIP,'
      '  VALOR_VIP2 = :VALOR_VIP2'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 184
    Top = 8
    object IntegerField1: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"PEDIDO_VEICULOS"."ID_CLIENTES"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULOS"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PEDIDO_VEICULOS"."CHASSI"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PEDIDO_VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PEDIDO_VEICULOS"."ANO_MODELO"'
      Size = 4
    end
    object IBStringField4: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"PEDIDO_VEICULOS"."ANO_FABRICACAO"'
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PEDIDO_VEICULOS"."PLACA"'
      Size = 7
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField6: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object DateField1: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object IBStringField7: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PEDIDO_VEICULOS"."STATUS"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField8: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PEDIDO_VEICULOS"."MODELO"'
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField9: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PEDIDO_VEICULOS"."MOTOR"'
      Size = 15
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = '"PEDIDO_VEICULOS"."ID_USUARIO"'
    end
    object IBStringField10: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PEDIDO_VEICULOS"."USUARIO"'
    end
    object IBStringField11: TIBStringField
      FieldName = 'COR'
      Origin = '"PEDIDO_VEICULOS"."COR"'
      Size = 10
    end
    object IBStringField12: TIBStringField
      FieldName = 'NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."NF_CANCELAMENTO"'
      Size = 8
    end
    object DateField2: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF_CANCELAMENTO"'
    end
    object IBStringField13: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'VALOR_VIP'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP"'
      Precision = 18
      Size = 2
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VALOR_NORMAL'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL"'
      Precision = 18
      Size = 2
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'VALOR_VIP2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP2"'
      Precision = 18
      Size = 2
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'VALOR_NORMAL2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL2"'
      Precision = 18
      Size = 2
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO2"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceComissoes: TDataSource
    AutoEdit = False
    DataSet = tblVendas
    Left = 216
    Top = 8
  end
end
