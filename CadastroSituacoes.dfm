object BoxSituacoes: TBoxSituacoes
  Left = 15
  Top = 85
  Caption = 'Cadastro de situa'#231#245'es de ve'#237'culo'
  ClientHeight = 487
  ClientWidth = 723
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
    Width = 723
    Height = 487
    Align = alClient
    TabOrder = 0
    object LabelUsuario: TLabel
      Left = 16
      Top = 13
      Width = 35
      Height = 13
      Caption = 'Chassi:'
    end
    object Label1: TLabel
      Left = 288
      Top = 39
      Width = 173
      Height = 13
      Caption = 'Ve'#237'culo em estoque/ ve'#237'culo vendido'
    end
    object Label2: TLabel
      Left = 304
      Top = 172
      Width = 149
      Height = 13
      Caption = 'NFs emitidas para este ve'#237'culo:'
    end
    object Label3: TLabel
      Left = 272
      Top = 319
      Width = 224
      Height = 13
      Caption = 'Atendimentos de p'#243's-venda para este ve'#237'culo:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 467
      Width = 721
      Height = 19
      Panels = <>
    end
    object Chassi: TEdit
      Left = 57
      Top = 10
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnExit = ChassiExit
      OnKeyPress = FormKeyPress
    end
    object BtnPesquisa: TBitBtn
      Left = 223
      Top = 8
      Width = 98
      Height = 25
      Caption = '&Pesquisa'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00314B
        6200AC7D7E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005084B2000F6F
        E100325F8C00B87E7A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0032A0FE0037A1
        FF00106FE200325F8B00B67D7900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0037A4
        FE00379FFF000E6DDE00355F8900BB7F7900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0037A4FE00359EFF000F6FDE0035608B00A67B7F00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0038A5FE00329DFF00156DCE00444F5B00FF00FF009C6B6500AF88
        7B00AF887E00AA807500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF003BABFF00A1CAE700AD867900A9837300E0CFB100FFFF
        DA00FFFFDD00FCF8CF00CCB29F00A1746B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C0917D00FCE9AC00FFFFCC00FFFF
        CF00FFFFD000FFFFDE00FFFFFA00E3D3D10099696500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B0897800FAD19200FEF4C200FFFF
        D000FFFFDA00FFFFF600FFFFFC00FFFFFC00B6938400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B0897800FEDA9700EDB47800FBEEBB00FFFF
        D300FFFFDC00FFFFF400FFFFF400FFFFE200E9DDBC00A67B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B18A7800FFDE9900E9A16700F4D19900FEFC
        CC00FFFFD500FFFFDA00FFFFDC00FFFFD700EFE6C500A97E7500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AA7F7300FAE0A400F0B77800EEBA7B00F6DD
        A600FEFBCC00FFFFD300FFFFD100FFFFD700D9C5A700A3756C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB29300FFFEDD00F4D1A500EEBA
        7B00F2C78F00F8E1AB00FCF0BA00FCFACA00A3776F00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A1746B00E1D4D300FFFEEE00F7CC
        8C00F0B47300F7C78800FCE3A500C2A08800A5776C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0098686500BA958700EAD7
        A400EAD59E00E0C09700A5776C00A5776C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A77E
        7000A9807300A4786E00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnPesquisaClick
      OnKeyPress = FormKeyPress
    end
    object wwDBGrid2: TwwDBGrid
      Left = 16
      Top = 193
      Width = 689
      Height = 120
      Selected.Strings = (
        'ID_CONCESSIONARIA'#9'10'#9'Concession'#225'ria:'
        'NF'#9'8'#9'NF:'
        'DESCRICAO'#9'80'#9'DESCRICAO'
        'ANO_MODELO'#9'4'#9'ANO_MODELO'
        'ANO_FABRICACAO'#9'4'#9'ANO_FABRICACAO'
        'COR'#9'80'#9'COR'
        'PLACA'#9'80'#9'PLACA'
        'CHASSI'#9'20'#9'CHASSI'
        'MARCA'#9'10'#9'MARCA'
        'MODELO'#9'20'#9'MODELO'
        'NAT_OP'#9'40'#9'NAT_OP'
        'MOTOR'#9'15'#9'MOTOR')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceSada
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 58
      Width = 689
      Height = 108
      Selected.Strings = (
        'ID_CONCESSIONARIA'#9'10'#9'Concession'#225'ria:'#9'F'
        'MARCA'#9'10'#9'Marca:'#9'F'
        'MODELO'#9'20'#9'Modelo:'#9'F'
        'COR'#9'10'#9'Cor:'#9'F'
        'ANO_FABRICACAO'#9'4'#9'Ano fabr.:'#9'F'
        'ANO_MODELO'#9'4'#9'Ano Mod.:'#9'F'
        'PLACA'#9'7'#9'Placa:'#9'F'
        'NOTA_ENT'#9'10'#9'NF entr.:'#9'F'
        'DATA_ENT'#9'10'#9'Data entr.:'#9'F'
        'DATA_SAI'#9'10'#9'Data Sa'#237'da:'#9'F'
        'NF_SAIDA'#9'8'#9'NF sa'#237'da:'#9'F'
        'STATUS'#9'20'#9'STATUS'#9#9
        'ESTOQUE'#9'20'#9'ESTOQUE'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceVeiculos
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object wwDBGrid3: TwwDBGrid
      Left = 16
      Top = 338
      Width = 689
      Height = 120
      Selected.Strings = (
        'ID_ATENDIMENTO'#9'10'#9'ID_ATENDIMENTO'#9#9
        'ID_CONCESSIONARIA'#9'10'#9'ID_CONCESSIONARIA'#9#9
        'ID_CLIENTES'#9'10'#9'ID_CLIENTES'#9#9
        'ID_MECANICO'#9'10'#9'ID_MECANICO'#9#9
        'MARCA'#9'10'#9'MARCA'#9#9
        'MODELO'#9'20'#9'MODELO'#9#9
        'ANO_FABRICACAO'#9'4'#9'ANO_FABRICACAO'#9#9
        'ANO_MODELO'#9'4'#9'ANO_MODELO'#9#9
        'CHASSI'#9'20'#9'CHASSI'#9#9
        'KM'#9'10'#9'KM'#9#9
        'DATA_ENTRADA'#9'10'#9'DATA_ENTRADA'#9#9
        'DATA_SAIDA'#9'10'#9'DATA_SAIDA'#9#9
        'ORC_OS'#9'1'#9'ORC_OS'#9#9
        'COR'#9'10'#9'COR'#9#9
        'PLACA'#9'7'#9'PLACA'#9#9
        'STATUS'#9'20'#9'STATUS'#9#9
        'DESCONTO'#9'19'#9'DESCONTO'#9#9
        'TOTAL_PECAS'#9'19'#9'TOTAL_PECAS'#9#9
        'TOTAL_SERVICOS'#9'19'#9'TOTAL_SERVICOS'#9#9
        'TOTAL_PECAS_TABELA'#9'19'#9'TOTAL_PECAS_TABELA'#9#9
        'VALOR_LIQUIDO_VENDA'#9'19'#9'VALOR_LIQUIDO_VENDA'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceAtendimento
      TabOrder = 4
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object tblSada: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SADA'
      'where'
      '  ID_SADA = :OLD_ID_SADA')
    InsertSQL.Strings = (
      'insert into SADA'
      
        '  (ALIQ_ICMS, ANO_FABRICACAO, ANO_MODELO, BASE_ICMS, CFOP, CHASS' +
        'I, CODIGO, '
      
        '   COMBUSTIVEL, COR, CST, CUSTO, DESCONTO, DESCRICAO, ICMS, ID_C' +
        'ONCESSIONARIA, '
      
        '   ID_NOFISA, ID_SADA, MARCA, MODELO, MOTOR, NAT_OP, NF, PLACA, ' +
        'POTENCIA, '
      '   PRECO, QTDE, RENAVAM, ST_COFINS, STATUS, SUBST, UNIDADE)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :BASE_ICMS, :CFOP, ' +
        ':CHASSI, '
      
        '   :CODIGO, :COMBUSTIVEL, :COR, :CST, :CUSTO, :DESCONTO, :DESCRI' +
        'CAO, :ICMS, '
      
        '   :ID_CONCESSIONARIA, :ID_NOFISA, :ID_SADA, :MARCA, :MODELO, :M' +
        'OTOR, :NAT_OP, '
      
        '   :NF, :PLACA, :POTENCIA, :PRECO, :QTDE, :RENAVAM, :ST_COFINS, ' +
        ':STATUS, '
      '   :SUBST, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SADA,'
      '  ID_NOFISA,'
      '  ID_CONCESSIONARIA,'
      '  NF,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  QTDE,'
      '  UNIDADE,'
      '  CST,'
      '  SUBST,'
      '  ALIQ_ICMS,'
      '  ICMS,'
      '  CUSTO,'
      '  PRECO,'
      '  CFOP,'
      '  NAT_OP,'
      '  ST_COFINS,'
      '  ANO_MODELO,'
      '  ANO_FABRICACAO,'
      '  RENAVAM,'
      '  POTENCIA,'
      '  COR,'
      '  COMBUSTIVEL,'
      '  PLACA,'
      '  MOTOR,'
      '  CHASSI,'
      '  MARCA,'
      '  MODELO,'
      '  STATUS,'
      '  BASE_ICMS,'
      '  DESCONTO'
      'from SADA '
      'where'
      '  ID_SADA = :ID_SADA')
    SelectSQL.Strings = (
      'select * from SADA'
      'Where Chassi = :idChassi')
    ModifySQL.Strings = (
      'update SADA'
      'set'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  CHASSI = :CHASSI,'
      '  CODIGO = :CODIGO,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  CST = :CST,'
      '  CUSTO = :CUSTO,'
      '  DESCONTO = :DESCONTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ICMS = :ICMS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  ID_SADA = :ID_SADA,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NAT_OP = :NAT_OP,'
      '  NF = :NF,'
      '  PLACA = :PLACA,'
      '  POTENCIA = :POTENCIA,'
      '  PRECO = :PRECO,'
      '  QTDE = :QTDE,'
      '  RENAVAM = :RENAVAM,'
      '  ST_COFINS = :ST_COFINS,'
      '  STATUS = :STATUS,'
      '  SUBST = :SUBST,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_SADA = :OLD_ID_SADA')
    ParamCheck = True
    UniDirectional = False
    Left = 232
    Top = 176
    object tblSadaID_CONCESSIONARIA: TIntegerField
      DisplayLabel = 'Concession'#225'ria:'
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
    end
    object tblSadaNF: TIBStringField
      DisplayLabel = 'NF:'
      DisplayWidth = 8
      FieldName = 'NF'
      Origin = '"SADA"."NF"'
      Size = 8
    end
    object tblSadaDESCRICAO: TIBStringField
      DisplayWidth = 80
      FieldName = 'DESCRICAO'
      KeyFields = 'o'
      Origin = '"SADA"."DESCRICAO"'
      Size = 80
    end
    object tblSadaANO_MODELO: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_MODELO'
      Origin = '"SADA"."ANO_MODELO"'
      Size = 4
    end
    object tblSadaANO_FABRICACAO: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_FABRICACAO'
      Origin = '"SADA"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblSadaCOR: TIBStringField
      DisplayWidth = 80
      FieldName = 'COR'
      Origin = '"SADA"."COR"'
      Size = 80
    end
    object tblSadaPLACA: TIBStringField
      DisplayWidth = 80
      FieldName = 'PLACA'
      Origin = '"SADA"."PLACA"'
      Size = 80
    end
    object tblSadaCHASSI: TIBStringField
      DisplayWidth = 20
      FieldName = 'CHASSI'
      Origin = '"SADA"."CHASSI"'
    end
    object tblSadaMARCA: TIBStringField
      DisplayWidth = 10
      FieldName = 'MARCA'
      Origin = '"SADA"."MARCA"'
      Size = 10
    end
    object tblSadaMODELO: TIBStringField
      DisplayWidth = 20
      FieldName = 'MODELO'
      Origin = '"SADA"."MODELO"'
    end
    object tblSadaNAT_OP: TIBStringField
      DisplayWidth = 40
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
    end
    object tblSadaMOTOR: TIBStringField
      DisplayWidth = 15
      FieldName = 'MOTOR'
      Origin = '"SADA"."MOTOR"'
      Size = 15
    end
    object tblSadaID_SADA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object tblSadaID_NOFISA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
      Visible = False
    end
    object tblSadaCODIGO: TIBStringField
      DisplayWidth = 17
      FieldName = 'CODIGO'
      Origin = '"SADA"."CODIGO"'
      Visible = False
      Size = 17
    end
    object tblSadaQTDE: TSmallintField
      DisplayWidth = 10
      FieldName = 'QTDE'
      Origin = '"SADA"."QTDE"'
      Visible = False
    end
    object tblSadaUNIDADE: TIBStringField
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Visible = False
      Size = 3
    end
    object tblSadaCST: TIBStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Visible = False
      Size = 3
    end
    object tblSadaSUBST: TIBStringField
      DisplayWidth = 1
      FieldName = 'SUBST'
      Origin = '"SADA"."SUBST"'
      Visible = False
      Size = 1
    end
    object tblSadaICMS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblSadaPRECO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblSadaCFOP: TIBStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Visible = False
      Size = 4
    end
    object tblSadaST_COFINS: TIBStringField
      DisplayWidth = 1
      FieldName = 'ST_COFINS'
      Origin = '"SADA"."ST_COFINS"'
      Visible = False
      Size = 1
    end
    object tblSadaRENAVAM: TIBStringField
      DisplayWidth = 15
      FieldName = 'RENAVAM'
      Origin = '"SADA"."RENAVAM"'
      Visible = False
      Size = 15
    end
    object tblSadaPOTENCIA: TIBStringField
      DisplayWidth = 3
      FieldName = 'POTENCIA'
      Origin = '"SADA"."POTENCIA"'
      Visible = False
      Size = 3
    end
    object tblSadaCOMBUSTIVEL: TIBStringField
      DisplayWidth = 20
      FieldName = 'COMBUSTIVEL'
      Origin = '"SADA"."COMBUSTIVEL"'
      Visible = False
    end
    object tblSadaCUSTO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblSadaSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"SADA"."STATUS"'
      Visible = False
    end
    object tblSadaBASE_ICMS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'BASE_ICMS'
      Origin = '"SADA"."BASE_ICMS"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblSadaDESCONTO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'DESCONTO'
      Origin = '"SADA"."DESCONTO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblSadaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 3
    end
    object tblSadaID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"SADA"."ID_PECAS"'
    end
    object tblSadaNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"SADA"."NCM"'
      Size = 10
    end
    object tblSadaCILINDRADAS: TIntegerField
      FieldName = 'CILINDRADAS'
      Origin = '"SADA"."CILINDRADAS"'
    end
    object tblSadaVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = '"SADA"."VL_PIS"'
      Precision = 18
      Size = 2
    end
    object tblSadaCST_PIS: TIBStringField
      FieldName = 'CST_PIS'
      Origin = '"SADA"."CST_PIS"'
      Size = 3
    end
    object tblSadaVL_BC_PIS: TIBBCDField
      FieldName = 'VL_BC_PIS'
      Origin = '"SADA"."VL_BC_PIS"'
      Precision = 18
      Size = 2
    end
    object tblSadaALIQ_PIS_PERC: TIBBCDField
      FieldName = 'ALIQ_PIS_PERC'
      Origin = '"SADA"."ALIQ_PIS_PERC"'
      Precision = 9
      Size = 2
    end
    object tblSadaVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = '"SADA"."VL_COFINS"'
      Precision = 18
      Size = 2
    end
    object tblSadaCST_COFINS: TIBStringField
      FieldName = 'CST_COFINS'
      Origin = '"SADA"."CST_COFINS"'
      Size = 3
    end
    object tblSadaVL_BC_COFINS: TIBBCDField
      FieldName = 'VL_BC_COFINS'
      Origin = '"SADA"."VL_BC_COFINS"'
      Precision = 18
      Size = 2
    end
    object tblSadaALIQ_COFINS_PERC: TIBBCDField
      FieldName = 'ALIQ_COFINS_PERC'
      Origin = '"SADA"."ALIQ_COFINS_PERC"'
      Precision = 9
      Size = 2
    end
    object tblSadaOUTRO_VALOR: TIBBCDField
      FieldName = 'OUTRO_VALOR'
      Origin = '"SADA"."OUTRO_VALOR"'
      Precision = 18
      Size = 2
    end
    object tblSadaVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"SADA"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object tblSadaPST: TIBBCDField
      FieldName = 'PST'
      Origin = '"SADA"."PST"'
      Precision = 9
      Size = 2
    end
    object tblSadaVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"SADA"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object tblSadaPRED_BCEFET: TIBBCDField
      FieldName = 'PRED_BCEFET'
      Origin = '"SADA"."PRED_BCEFET"'
      Precision = 9
      Size = 2
    end
    object tblSadaVBC_EFET: TIBBCDField
      FieldName = 'VBC_EFET'
      Origin = '"SADA"."VBC_EFET"'
      Precision = 18
      Size = 2
    end
    object tblSadaPICMS_EFET: TIBBCDField
      FieldName = 'PICMS_EFET'
      Origin = '"SADA"."PICMS_EFET"'
      Precision = 9
      Size = 2
    end
    object tblSadaVICMS_EFET: TIBBCDField
      FieldName = 'VICMS_EFET'
      Origin = '"SADA"."VICMS_EFET"'
      Precision = 18
      Size = 2
    end
    object tblSadaICMS_SUBSTITUTO: TIBBCDField
      FieldName = 'ICMS_SUBSTITUTO'
      Origin = '"SADA"."ICMS_SUBSTITUTO"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceSada: TDataSource
    AutoEdit = False
    DataSet = tblSada
    Left = 264
    Top = 176
  end
  object tblVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VEICULOS'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    InsertSQL.Strings = (
      'insert into VEICULOS'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, CLASSIF_FISCAL, CNY, COMB' +
        'USTIVEL, '
      
        '   CONSIG, COR, CST, CUSTO, CUSTO_ICMS, DATA_ENT, DATA_SAI, ESTO' +
        'QUE, FINANC_PRO, '
      
        '   FONE, FOTO, GRUPO, HP, ID_CLIENTES, ID_COMPRADOR, ID_CONCESSI' +
        'ONARIA, '
      
        '   ID_FORNECEDOR, ID_MODELO_VEICULO, ID_VEICULOS, KM, MARCA, MOD' +
        'ELO, MOTOR, '
      
        '   NF_SAIDA, NOTA_ENT, ORIGEM, PLACA, PRECO, RENAVAM, RESERVADA,' +
        ' RESERVADA_POR, '
      '   STATUS, VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :CLASSIF_FISCAL, :CNY,' +
        ' :COMBUSTIVEL, '
      
        '   :CONSIG, :COR, :CST, :CUSTO, :CUSTO_ICMS, :DATA_ENT, :DATA_SA' +
        'I, :ESTOQUE, '
      
        '   :FINANC_PRO, :FONE, :FOTO, :GRUPO, :HP, :ID_CLIENTES, :ID_COM' +
        'PRADOR, '
      
        '   :ID_CONCESSIONARIA, :ID_FORNECEDOR, :ID_MODELO_VEICULO, :ID_V' +
        'EICULOS, '
      
        '   :KM, :MARCA, :MODELO, :MOTOR, :NF_SAIDA, :NOTA_ENT, :ORIGEM, ' +
        ':PLACA, '
      
        '   :PRECO, :RENAVAM, :RESERVADA, :RESERVADA_POR, :STATUS, :VENDA' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_VEICULOS,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_FORNECEDOR,'
      '  ID_MODELO_VEICULO,'
      '  CHASSI,'
      '  MARCA,'
      '  MODELO,'
      '  COR,'
      '  COMBUSTIVEL,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  GRUPO,'
      '  HP,'
      '  PLACA,'
      '  CNY,'
      '  KM,'
      '  RENAVAM,'
      '  CLASSIF_FISCAL,'
      '  NOTA_ENT,'
      '  DATA_ENT,'
      '  FONE,'
      '  CONSIG,'
      '  CUSTO,'
      '  CUSTO_ICMS,'
      '  PRECO,'
      '  DATA_SAI,'
      '  NF_SAIDA,'
      '  VENDA,'
      '  MOTOR,'
      '  FINANC_PRO,'
      '  STATUS,'
      '  RESERVADA,'
      '  FOTO,'
      '  RESERVADA_POR,'
      '  ESTOQUE,'
      '  ORIGEM,'
      '  ID_COMPRADOR,'
      '  CST'
      'from VEICULOS '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'select * from VEICULOS'
      'where chassi = :idChassi')
    ModifySQL.Strings = (
      'update VEICULOS'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  CLASSIF_FISCAL = :CLASSIF_FISCAL,'
      '  CNY = :CNY,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  CONSIG = :CONSIG,'
      '  COR = :COR,'
      '  CST = :CST,'
      '  CUSTO = :CUSTO,'
      '  CUSTO_ICMS = :CUSTO_ICMS,'
      '  DATA_ENT = :DATA_ENT,'
      '  DATA_SAI = :DATA_SAI,'
      '  ESTOQUE = :ESTOQUE,'
      '  FINANC_PRO = :FINANC_PRO,'
      '  FONE = :FONE,'
      '  FOTO = :FOTO,'
      '  GRUPO = :GRUPO,'
      '  HP = :HP,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_COMPRADOR = :ID_COMPRADOR,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FORNECEDOR = :ID_FORNECEDOR,'
      '  ID_MODELO_VEICULO = :ID_MODELO_VEICULO,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF_SAIDA = :NF_SAIDA,'
      '  NOTA_ENT = :NOTA_ENT,'
      '  ORIGEM = :ORIGEM,'
      '  PLACA = :PLACA,'
      '  PRECO = :PRECO,'
      '  RENAVAM = :RENAVAM,'
      '  RESERVADA = :RESERVADA,'
      '  RESERVADA_POR = :RESERVADA_POR,'
      '  STATUS = :STATUS,'
      '  VENDA = :VENDA'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    ParamCheck = True
    UniDirectional = False
    Left = 224
    Top = 24
    object tblVeiculosID_CONCESSIONARIA: TIntegerField
      DisplayLabel = 'Concession'#225'ria:'
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
    end
    object tblVeiculosMARCA: TIBStringField
      DisplayLabel = 'Marca:'
      DisplayWidth = 10
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosMODELO: TIBStringField
      DisplayLabel = 'Modelo:'
      DisplayWidth = 20
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object tblVeiculosCOR: TIBStringField
      DisplayLabel = 'Cor:'
      DisplayWidth = 10
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosANO_FABRICACAO: TIBStringField
      DisplayLabel = 'Ano fabr.:'
      DisplayWidth = 4
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosANO_MODELO: TIBStringField
      DisplayLabel = 'Ano Mod.:'
      DisplayWidth = 4
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosPLACA: TIBStringField
      DisplayLabel = 'Placa:'
      DisplayWidth = 7
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblVeiculosNOTA_ENT: TIBStringField
      DisplayLabel = 'NF entr.:'
      DisplayWidth = 10
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosDATA_ENT: TDateField
      DisplayLabel = 'Data entr.:'
      DisplayWidth = 10
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object tblVeiculosDATA_SAI: TDateField
      DisplayLabel = 'Data Sa'#237'da:'
      DisplayWidth = 10
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object tblVeiculosNF_SAIDA: TIBStringField
      DisplayLabel = 'NF sa'#237'da:'
      DisplayWidth = 8
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object tblVeiculosSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblVeiculosESTOQUE: TIBStringField
      DisplayWidth = 20
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object tblVeiculosID_VEICULOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object tblVeiculosID_CLIENTES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
      Visible = False
    end
    object tblVeiculosID_FORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
      Visible = False
    end
    object tblVeiculosCHASSI: TIBStringField
      DisplayWidth = 20
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
      Visible = False
      FixedChar = True
    end
    object tblVeiculosGRUPO: TIBStringField
      DisplayWidth = 3
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object tblVeiculosHP: TIBStringField
      DisplayWidth = 6
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object tblVeiculosCNY: TIBStringField
      DisplayWidth = 10
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object tblVeiculosKM: TIntegerField
      DisplayWidth = 10
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
      Visible = False
    end
    object tblVeiculosRENAVAM: TIBStringField
      DisplayWidth = 10
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCLASSIF_FISCAL: TIBStringField
      DisplayWidth = 10
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object tblVeiculosFONE: TIBStringField
      DisplayWidth = 10
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCONSIG: TIBStringField
      DisplayWidth = 1
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblVeiculosCUSTO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblVeiculosCUSTO_ICMS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblVeiculosPRECO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblVeiculosVENDA: TIBStringField
      DisplayWidth = 1
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblVeiculosMOTOR: TIBStringField
      DisplayWidth = 15
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object tblVeiculosFINANC_PRO: TIBStringField
      DisplayWidth = 1
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblVeiculosRESERVADA: TDateField
      DisplayWidth = 10
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
      Visible = False
    end
    object tblVeiculosFOTO: TIBStringField
      DisplayWidth = 8
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Visible = False
      Size = 8
    end
    object tblVeiculosRESERVADA_POR: TIBStringField
      DisplayWidth = 20
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
      Visible = False
    end
    object tblVeiculosORIGEM: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Visible = False
      Size = 1
    end
    object tblVeiculosCOMBUSTIVEL: TIBStringField
      DisplayWidth = 10
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object tblVeiculosID_COMPRADOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
      Visible = False
    end
    object tblVeiculosCST: TIBStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Visible = False
      Size = 3
    end
    object tblVeiculosID_MODELO_VEICULO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
      Visible = False
    end
  end
  object DataSourceVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblVeiculos
    Left = 256
    Top = 24
  end
  object tblAtendimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATENDIMENTO'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    InsertSQL.Strings = (
      'insert into ATENDIMENTO'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, COR, DATA_ENTRADA, DATA_S' +
        'AIDA, DESCONTO, '
      
        '   ID_ATENDIMENTO, ID_CATEGORIA, ID_CLIENTES, ID_CONCESSIONARIA,' +
        ' ID_MECANICO, '
      
        '   KM, MARCA, MEMO, MODELO, ORC_OS, PLACA, STATUS, TOTAL_PECAS, ' +
        'TOTAL_PECAS_TABELA, '
      '   TOTAL_SERVICOS, VALOR_LIQUIDO_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :COR, :DATA_ENTRADA, :' +
        'DATA_SAIDA, '
      
        '   :DESCONTO, :ID_ATENDIMENTO, :ID_CATEGORIA, :ID_CLIENTES, :ID_' +
        'CONCESSIONARIA, '
      
        '   :ID_MECANICO, :KM, :MARCA, :MEMO, :MODELO, :ORC_OS, :PLACA, :' +
        'STATUS, '
      
        '   :TOTAL_PECAS, :TOTAL_PECAS_TABELA, :TOTAL_SERVICOS, :VALOR_LI' +
        'QUIDO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_MECANICO,'
      '  ID_CATEGORIA,'
      '  MARCA,'
      '  MODELO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  CHASSI,'
      '  KM,'
      '  DATA_ENTRADA,'
      '  DATA_SAIDA,'
      '  ORC_OS,'
      '  COR,'
      '  PLACA,'
      '  STATUS,'
      '  MEMO,'
      '  DESCONTO,'
      '  TOTAL_PECAS,'
      '  TOTAL_SERVICOS,'
      '  TOTAL_PECAS_TABELA,'
      '  VALOR_LIQUIDO_VENDA'
      'from ATENDIMENTO '
      'where'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO')
    SelectSQL.Strings = (
      'select * from ATENDIMENTO'
      'where '
      'Chassi = :idChassi')
    ModifySQL.Strings = (
      'update ATENDIMENTO'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCONTO = :DESCONTO,'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MEMO = :MEMO,'
      '  MODELO = :MODELO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  TOTAL_PECAS = :TOTAL_PECAS,'
      '  TOTAL_PECAS_TABELA = :TOTAL_PECAS_TABELA,'
      '  TOTAL_SERVICOS = :TOTAL_SERVICOS,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    ParamCheck = True
    UniDirectional = False
    Left = 232
    Top = 363
    object tblAtendimentoID_ATENDIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."ID_ATENDIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAtendimentoID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAtendimentoID_CLIENTES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIMENTO"."ID_CLIENTES"'
      Required = True
    end
    object tblAtendimentoID_MECANICO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object tblAtendimentoMARCA: TIBStringField
      DisplayWidth = 10
      FieldName = 'MARCA'
      Origin = '"ATENDIMENTO"."MARCA"'
      Size = 10
    end
    object tblAtendimentoMODELO: TIBStringField
      DisplayWidth = 20
      FieldName = 'MODELO'
      Origin = '"ATENDIMENTO"."MODELO"'
    end
    object tblAtendimentoANO_FABRICACAO: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_FABRICACAO'
      Origin = '"ATENDIMENTO"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblAtendimentoANO_MODELO: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_MODELO'
      Origin = '"ATENDIMENTO"."ANO_MODELO"'
      Size = 4
    end
    object tblAtendimentoCHASSI: TIBStringField
      DisplayWidth = 20
      FieldName = 'CHASSI'
      Origin = '"ATENDIMENTO"."CHASSI"'
    end
    object tblAtendimentoKM: TIntegerField
      DisplayWidth = 10
      FieldName = 'KM'
      Origin = '"ATENDIMENTO"."KM"'
    end
    object tblAtendimentoDATA_ENTRADA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_ENTRADA'
      Origin = '"ATENDIMENTO"."DATA_ENTRADA"'
    end
    object tblAtendimentoDATA_SAIDA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_SAIDA'
      Origin = '"ATENDIMENTO"."DATA_SAIDA"'
    end
    object tblAtendimentoORC_OS: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORC_OS'
      Origin = '"ATENDIMENTO"."ORC_OS"'
      Size = 1
    end
    object tblAtendimentoCOR: TIBStringField
      DisplayWidth = 10
      FieldName = 'COR'
      Origin = '"ATENDIMENTO"."COR"'
      Size = 10
    end
    object tblAtendimentoPLACA: TIBStringField
      DisplayWidth = 7
      FieldName = 'PLACA'
      Origin = '"ATENDIMENTO"."PLACA"'
      Size = 7
    end
    object tblAtendimentoSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"ATENDIMENTO"."STATUS"'
    end
    object tblAtendimentoDESCONTO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'DESCONTO'
      Origin = '"ATENDIMENTO"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL_PECAS'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_SERVICOS: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL_SERVICOS'
      Origin = '"ATENDIMENTO"."TOTAL_SERVICOS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL_PECAS_TABELA'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS_TABELA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ATENDIMENTO"."VALOR_LIQUIDO_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoID_CATEGORIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CATEGORIA'
      Origin = '"ATENDIMENTO"."ID_CATEGORIA"'
      Required = True
      Visible = False
    end
    object tblAtendimentoMEMO: TBlobField
      DisplayWidth = 10
      FieldName = 'MEMO'
      Origin = '"ATENDIMENTO"."MEMO"'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 8
    end
  end
  object DataSourceAtendimento: TDataSource
    AutoEdit = False
    DataSet = tblAtendimento
    Left = 264
    Top = 362
  end
end
