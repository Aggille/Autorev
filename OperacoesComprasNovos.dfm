object BoxComprasNovos: TBoxComprasNovos
  Left = 15
  Top = 145
  Caption = 'Entrada de compras de ve'#237'culos novos'
  ClientHeight = 172
  ClientWidth = 590
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
    Width = 590
    Height = 153
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 12
      Top = 12
      Width = 153
      Height = 13
      Caption = 'Chave da Nota fiscal eletr'#244'nica:'
    end
    object Label1: TLabel
      Left = 8
      Top = 72
      Width = 82
      Height = 13
      Caption = 'N'#250'mero da Nota:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 136
      Top = 72
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 280
      Top = 70
      Width = 49
      Height = 13
      Caption = 'Protocolo:'
      FocusControl = DBEdit3
    end
    object Chave: TMaskEdit
      Left = 171
      Top = 9
      Width = 413
      Height = 21
      TabOrder = 0
      Text = ''
      OnKeyPress = FormKeyPress
    end
    object BtnConfirmaChave: TBitBtn
      Left = 171
      Top = 115
      Width = 222
      Height = 30
      Caption = '&Confirma recebimento da nota fiscal'
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
      TabOrder = 5
      OnClick = BtnConfirmaChaveClick
      OnKeyPress = FormKeyPress
    end
    object BtnConsulta: TBitBtn
      Left = 171
      Top = 36
      Width = 222
      Height = 30
      Caption = '&Consulta'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF828687
        8286878286878286878286878286878286878286878286878286878286878286
        87828687FF00FFFF00FFFF00FF9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
        9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CFF00FFFF00FF909293FEFEFC
        FEFEFCFEFEFCFEFEFCFEFEFCFBFBFAF7F7F6F2F2F0EDEDEBE7E7E6E2E2E1D7D7
        D7C5C5C5828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBF8
        F8F8F4F4F4F0F0F0ECECECE8E8E8E0E0E0D2D2D29C9C9CFF00FF909293FEFEFC
        FEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFBFBFAF7F7F6F2F2F0EDEDEBE7E7E6E2E2
        E1D7D7D7828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFB
        FBFBF8F8F8F4F4F4F0F0F0ECECECE8E8E8E0E0E09C9C9CFF00FF909293FEFEFC
        FEFEFCFEFEFC1919193E3935D1D1D1FEFEFCFBFBFAF7F7F6F2F2F0EDEDEBE7E7
        E6E2E2E1828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFD2D2D2D535353DCDCDCFD
        FDFDFBFBFBF8F8F8F4F4F4F0F0F0ECECECE8E8E89C9C9CFF00FF909293FEFEFC
        D1D1D1BABABA3E39352D2C2A374546D1D1D1FEFEFCFBFBFAF7F7F6F2F2F0EDED
        EBE7E7E6828687FF00FFA7A7A7FDFDFDDCDCDCC9C9C9535353434343595959DC
        DCDCFDFDFDFBFBFBF8F8F8F4F4F4F0F0F0ECECEC9C9C9CFF00FF909293FEFEFC
        FEFEFCFEFEFCFEFEFC3A5C600C84B10B3B542A407BFEFEFCFBFBFAF7F7F6F2F2
        F0EDEDEB828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFDFDFDFD6767676E6E6E43
        43436B6B6BFDFDFDFBFBFBF8F8F8F4F4F4F0F0F09C9C9CFF00FF909293FEFEFC
        D1D1D1BABABABABABA3A5C60165E827B645A0C84B12A407BBABABABABABABABA
        BAF2F2F0828687FF00FFA7A7A7FDFDFDDCDCDCC9C9C9C9C9C967676761616184
        84846E6E6E6B6B6BC9C9C9C9C9C9C9C9C9F4F4F49C9C9CFF00FF909293FEFEFC
        FEFEFCFEFEFCFEFEFCFEFEFC80A6CB15C4FB01A5E60C84B12A407BFEFEFCFEFE
        FCF8F8F7828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDB7B7B791
        91917878786E6E6E6B6B6BFDFDFDFDFDFDF9F9F99C9C9CFF00FF909293FEFEFC
        FEFEFCFEFEFCFEFEFCFEFEFC80A6CB97E7FB15C4FB01A5E60C84B12A407BFEFE
        FCFEFEFC828687FF00FFA7A7A7FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDB7B7B7D4
        D4D49191917878786E6E6E6B6B6BFDFDFDFDFDFD9C9C9CFF00FF90929306731C
        06731C06731C06731C06731C06731C80A6CB97E7FB15C4FB01A5E60C84B12A40
        7B06731C828687FF00FFA7A7A74E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EB7
        B7B7D4D4D49191917878786E6E6E6B6B6B4E4E4E9C9C9CFF00FF06A11C58CA84
        06A11C06A11C06A11C06A11C06A11C06A11C80A6CB97E7FB15C4FB01A5E60C84
        B12A407BFF00FFFF00FF626262A4A4A462626262626262626262626262626262
        6262B7B7B7D4D4D49191917878786E6E6E6B6B6BFF00FFFF00FFFF00FF06A11C
        58CA8418AB4418AB44118F2AFF00FFFF00FFFF00FF80A6CB97E7FB15C4FB1F92
        F2111B8307035AFF00FFFF00FF626262A4A4A4747474747474636363FF00FFFF
        00FFFF00FFB7B7B7D4D4D49191919595955E5E5E3C3B41FF00FFFF00FFFF00FF
        06A11C06A11C108E23FF00FFFF00FFFF00FFFF00FFFF00FF80A6CB3187E72D44
        B42D44B4111B8307035AFF00FFFF00FF626262626262626262FF00FFFF00FFFF
        00FFFF00FFFF00FFB7B7B79B9B9B8484848484845E5E5E3C3B41FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D44B46E88
        D86F7FD52D44B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF848484B4B4B4B4B4B4848484FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D44
        B42D44B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF848484848484FF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnConsultaClick
      OnKeyPress = FormKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 88
      Width = 108
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataSourceNofi
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 88
      Width = 121
      Height = 21
      DataField = 'EMISSAO'
      DataSource = DataSourceNofi
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 280
      Top = 88
      Width = 304
      Height = 21
      DataField = 'PROTOCOLO'
      DataSource = DataSourceNofi
      TabOrder = 4
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 153
    Width = 590
    Height = 19
    Panels = <>
  end
  object tblNofi: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOFI'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    InsertSQL.Strings = (
      'insert into NOFI'
      
        '  (ARQUIVO, BASE_ICM_S, BASE_ICMS, CFOP, CHAVE, COD_TRANS, CODIG' +
        'O, COFINS, '
      
        '   COMISSAO, DADOS_AD01, DADOS_AD02, DADOS_AD03, DADOS_AD04, DES' +
        'C_OFI, '
      
        '   DESC_PEC, EMISSAO, ENT_SAI, FRETE_TIPO, HORA, ICMS, ID_CLIENT' +
        'ES, ID_CONCESSIONARIA, '
      
        '   ID_CONHECIMENTO, ID_NOFI, IE_SUBS, ISSQN, NAT_OP, NUMERO, OBS' +
        ', ORIGEM, '
      
        '   PIS, PLACA, PROTOCOLO, PROTOCOLO_CONSULTA, QTDE_PROD, RECIBO,' +
        ' SAIDA, '
      
        '   SERIE, STATUS, TOT_NOTA, TOT_PROD, VAL_COFINS, VAL_FRETE, VAL' +
        '_ICMS, '
      
        '   VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_PIS, VAL_SEGURO' +
        ', VAL_SERV, '
      '   VENDEDOR, XML)'
      'values'
      
        '  (:ARQUIVO, :BASE_ICM_S, :BASE_ICMS, :CFOP, :CHAVE, :COD_TRANS,' +
        ' :CODIGO, '
      
        '   :COFINS, :COMISSAO, :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :D' +
        'ADOS_AD04, '
      
        '   :DESC_OFI, :DESC_PEC, :EMISSAO, :ENT_SAI, :FRETE_TIPO, :HORA,' +
        ' :ICMS, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CONHECIMENTO, :ID_NOFI,' +
        ' :IE_SUBS, '
      
        '   :ISSQN, :NAT_OP, :NUMERO, :OBS, :ORIGEM, :PIS, :PLACA, :PROTO' +
        'COLO, :PROTOCOLO_CONSULTA, '
      
        '   :QTDE_PROD, :RECIBO, :SAIDA, :SERIE, :STATUS, :TOT_NOTA, :TOT' +
        '_PROD, '
      
        '   :VAL_COFINS, :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :VAL_IPI, :V' +
        'AL_ISS, '
      
        '   :VAL_OUTROS, :VAL_PIS, :VAL_SEGURO, :VAL_SERV, :VENDEDOR, :XM' +
        'L)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NOFI,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_CONHECIMENTO,'
      '  NUMERO,'
      '  SERIE,'
      '  EMISSAO,'
      '  CODIGO,'
      '  ORIGEM,'
      '  ENT_SAI,'
      '  VENDEDOR,'
      '  COMISSAO,'
      '  SAIDA,'
      '  HORA,'
      '  CFOP,'
      '  NAT_OP,'
      '  IE_SUBS,'
      '  DESC_PEC,'
      '  DESC_OFI,'
      '  ICMS,'
      '  BASE_ICMS,'
      '  VAL_ICMS,'
      '  BASE_ICM_S,'
      '  VAL_ICMS_S,'
      '  VAL_FRETE,'
      '  VAL_SEGURO,'
      '  VAL_OUTROS,'
      '  VAL_IPI,'
      '  VAL_SERV,'
      '  ISSQN,'
      '  VAL_ISS,'
      '  TOT_PROD,'
      '  TOT_NOTA,'
      '  PIS,'
      '  COFINS,'
      '  COD_TRANS,'
      '  FRETE_TIPO,'
      '  PLACA,'
      '  DADOS_AD01,'
      '  DADOS_AD02,'
      '  DADOS_AD03,'
      '  DADOS_AD04,'
      '  OBS,'
      '  QTDE_PROD,'
      '  STATUS,'
      '  VAL_PIS,'
      '  VAL_COFINS,'
      '  CHAVE,'
      '  RECIBO,'
      '  PROTOCOLO,'
      '  ARQUIVO,'
      '  XML,'
      '  PROTOCOLO_CONSULTA'
      'from NOFI '
      'where'
      '  ID_NOFI = :ID_NOFI')
    SelectSQL.Strings = (
      'select ARQUIVO, BASE_ICM_S, BASE_ICMS, CFOP, CHAVE,'
      'COD_TRANS, CODIGO, COFINS, COMISSAO, DADOS_AD01,'
      'DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI,'
      'DESC_PEC, EMISSAO, ENT_SAI, FRETE_TIPO, HORA, ICMS, '
      'ID_CLIENTES, ID_CONCESSIONARIA, ID_CONHECIMENTO,'
      'ID_NOFI, IE_SUBS, ISSQN, NAT_OP, NUMERO, OBS, ORIGEM, PIS,'
      'PLACA, PROTOCOLO, PROTOCOLO_CONSULTA, QTDE_PROD,'
      'RECIBO, SAIDA, SERIE, STATUS, TOT_NOTA, TOT_PROD,'
      'VAL_COFINS, VAL_FRETE, VAL_ICMS, VAL_ICMS_S, VAL_IPI,'
      'VAL_ISS, VAL_OUTROS, VAL_PIS, VAL_SEGURO, VAL_SERV,'
      'VENDEDOR, XML,'
      #39'F'#39' as selecionada'
      ''
      'from NOFI'
      'where chave = :idChave'
      '')
    ModifySQL.Strings = (
      'update NOFI'
      'set'
      '  ARQUIVO = :ARQUIVO,'
      '  BASE_ICM_S = :BASE_ICM_S,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  CHAVE = :CHAVE,'
      '  COD_TRANS = :COD_TRANS,'
      '  CODIGO = :CODIGO,'
      '  COFINS = :COFINS,'
      '  COMISSAO = :COMISSAO,'
      '  DADOS_AD01 = :DADOS_AD01,'
      '  DADOS_AD02 = :DADOS_AD02,'
      '  DADOS_AD03 = :DADOS_AD03,'
      '  DADOS_AD04 = :DADOS_AD04,'
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FRETE_TIPO = :FRETE_TIPO,'
      '  HORA = :HORA,'
      '  ICMS = :ICMS,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  ID_NOFI = :ID_NOFI,'
      '  IE_SUBS = :IE_SUBS,'
      '  ISSQN = :ISSQN,'
      '  NAT_OP = :NAT_OP,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORIGEM = :ORIGEM,'
      '  PIS = :PIS,'
      '  PLACA = :PLACA,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  PROTOCOLO_CONSULTA = :PROTOCOLO_CONSULTA,'
      '  QTDE_PROD = :QTDE_PROD,'
      '  RECIBO = :RECIBO,'
      '  SAIDA = :SAIDA,'
      '  SERIE = :SERIE,'
      '  STATUS = :STATUS,'
      '  TOT_NOTA = :TOT_NOTA,'
      '  TOT_PROD = :TOT_PROD,'
      '  VAL_COFINS = :VAL_COFINS,'
      '  VAL_FRETE = :VAL_FRETE,'
      '  VAL_ICMS = :VAL_ICMS,'
      '  VAL_ICMS_S = :VAL_ICMS_S,'
      '  VAL_IPI = :VAL_IPI,'
      '  VAL_ISS = :VAL_ISS,'
      '  VAL_OUTROS = :VAL_OUTROS,'
      '  VAL_PIS = :VAL_PIS,'
      '  VAL_SEGURO = :VAL_SEGURO,'
      '  VAL_SERV = :VAL_SERV,'
      '  VENDEDOR = :VENDEDOR,'
      '  XML = :XML'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    ParamCheck = True
    UniDirectional = False
    Left = 520
    Top = 40
  end
  object DataSourceNofi: TDataSource
    AutoEdit = False
    DataSet = tblNofi
    Left = 552
    Top = 40
  end
  object tblVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
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
      'where Nota_Ent = :idNota'
      'and '
      'id_fornecedor = :idFornecedor')
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
    Left = 520
    Top = 8
    object tblVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
    end
    object tblVeiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object tblVeiculosID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
    end
    object tblVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
      FixedChar = True
      Size = 17
    end
    object tblVeiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
      FixedChar = True
    end
    object tblVeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object tblVeiculosHP: TIBStringField
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object tblVeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblVeiculosCNY: TIBStringField
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosKM: TIntegerField
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object tblVeiculosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosNOTA_ENT: TIBStringField
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object tblVeiculosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCONSIG: TIBStringField
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosCUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosDATA_SAI: TDateField
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object tblVeiculosNF_SAIDA: TIBStringField
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object tblVeiculosVENDA: TIBStringField
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      FixedChar = True
      Size = 15
    end
    object tblVeiculosFINANC_PRO: TIBStringField
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblVeiculosRESERVADA: TDateField
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
    end
    object tblVeiculosFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Size = 8
    end
    object tblVeiculosRESERVADA_POR: TIBStringField
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
    end
    object tblVeiculosESTOQUE: TIBStringField
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object tblVeiculosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Size = 1
    end
    object tblVeiculosID_COMPRADOR: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
    end
    object tblVeiculosCST: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object tblVeiculosID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
  end
  object DataSourceVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblVeiculos
    Left = 552
    Top = 8
  end
end
