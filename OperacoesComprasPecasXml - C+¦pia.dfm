object BoxComprasPecasXML: TBoxComprasPecasXML
  Left = 15
  Top = 145
  Caption = 'Entrada de compras de pe'#231'as com XML'
  ClientHeight = 438
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
    Height = 419
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
    object Label3: TLabel
      Left = 8
      Top = 199
      Width = 70
      Height = 13
      Caption = 'Valor do frete:'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 136
      Top = 199
      Width = 193
      Height = 13
      Caption = 'Total das mercadorias do conhecimento:'
      FocusControl = DBEdit1
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
      Top = 383
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
      TabOrder = 10
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
    object ValorFrete: TDBEdit
      Left = 8
      Top = 218
      Width = 108
      Height = 21
      DataField = 'VALOR_FRETE'
      DataSource = DataSourceConhecimento
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object ValorMercadorias: TDBEdit
      Left = 136
      Top = 218
      Width = 108
      Height = 21
      DataField = 'VALOR_MERCADORIAS'
      DataSource = DataSourceConhecimento
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 115
      Width = 150
      Height = 78
      Hint = 
        'Escolha se a entrada de mercadorias tem ou n'#227'o conhecimento de f' +
        'rete'
      Caption = 'Escolha uma op'#231#227'o:'
      ItemIndex = 0
      Items.Strings = (
        'Com conhecimento'
        'Sem conhecimento')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBGrid1: TwwDBGrid
      Left = 9
      Top = 245
      Width = 575
      Height = 132
      Selected.Strings = (
        'NF'#9'8'#9'Nota fiscal:'#9'T'
        'ITEM'#9'20'#9'C'#243'digo produto:'#9'F'
        'QTDE'#9'10'#9'Quantidade:'#9'T'
        'CFOP'#9'10'#9'CFOP'#9'T'
        'VLR_UNIT'#9'19'#9'Valor unit'#225'rio:'#9'T'
        'ID_PECA'#9'10'#9'Sequ'#234'ncia pe'#231'a:'#9'T')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceNfda
      TabOrder = 9
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
    object DBNavigator1: TJvDBNavigator
      Left = 344
      Top = 214
      Width = 231
      Height = 25
      DataSource = DataSourceNfda
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbRefresh]
      Enabled = False
      TabOrder = 6
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 419
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
    object tblNofiID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"NOFI"."ID_NOFI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofiID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFI"."ID_CONCESSIONARIA"'
    end
    object tblNofiID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFI"."ID_CLIENTES"'
    end
    object tblNofiID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"NOFI"."ID_CONHECIMENTO"'
    end
    object tblNofiNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"NOFI"."NUMERO"'
      FixedChar = True
      Size = 8
    end
    object tblNofiSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOFI"."SERIE"'
      FixedChar = True
      Size = 2
    end
    object tblNofiEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFI"."EMISSAO"'
    end
    object tblNofiCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"NOFI"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object tblNofiORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFI"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofiENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFI"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object tblNofiVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"NOFI"."VENDEDOR"'
      FixedChar = True
      Size = 3
    end
    object tblNofiCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"NOFI"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object tblNofiSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFI"."SAIDA"'
    end
    object tblNofiHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFI"."HORA"'
      FixedChar = True
      Size = 5
    end
    object tblNofiCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"NOFI"."CFOP"'
      FixedChar = True
      Size = 14
    end
    object tblNofiNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"NOFI"."NAT_OP"'
      FixedChar = True
      Size = 40
    end
    object tblNofiIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFI"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object tblNofiDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFI"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object tblNofiDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFI"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object tblNofiICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"NOFI"."ICMS"'
      Precision = 9
      Size = 2
    end
    object tblNofiBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFI"."BASE_ICM_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFI"."VAL_ICMS_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFI"."VAL_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFI"."VAL_SEGURO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFI"."VAL_OUTROS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFI"."VAL_IPI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFI"."VAL_SERV"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFI"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object tblNofiVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFI"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object tblNofiTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFI"."TOT_PROD"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFI"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object tblNofiPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFI"."PIS"'
      Precision = 18
      Size = 2
    end
    object tblNofiCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFI"."COFINS"'
      Precision = 18
      Size = 2
    end
    object tblNofiCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFI"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object tblNofiFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFI"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblNofiPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFI"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblNofiDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFI"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFI"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFI"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFI"."DADOS_AD04"'
      FixedChar = True
      Size = 30
    end
    object tblNofiOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFI"."OBS"'
      FixedChar = True
    end
    object tblNofiQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFI"."QTDE_PROD"'
    end
    object tblNofiSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFI"."STATUS"'
    end
    object tblNofiVAL_PIS: TIBBCDField
      FieldName = 'VAL_PIS'
      Origin = '"NOFI"."VAL_PIS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_COFINS: TIBBCDField
      FieldName = 'VAL_COFINS'
      Origin = '"NOFI"."VAL_COFINS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFI"."CHAVE"'
      Size = 50
    end
    object tblNofiRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFI"."RECIBO"'
      Size = 50
    end
    object tblNofiPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFI"."PROTOCOLO"'
      Size = 50
    end
    object tblNofiARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFI"."ARQUIVO"'
      Size = 50
    end
    object tblNofiXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFI"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tblNofiPROTOCOLO_CONSULTA: TIBStringField
      FieldName = 'PROTOCOLO_CONSULTA'
      Origin = '"NOFI"."PROTOCOLO_CONSULTA"'
      Size = 50
    end
    object tblNofiSelecionada: TStringField
      DisplayWidth = 1
      FieldName = 'SELECIONADA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object tblNofiBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      Precision = 18
      Size = 10
    end
    object tblNofiVAL_ICMS: TFMTBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      Precision = 18
      Size = 10
    end
  end
  object DataSourceNofi: TDataSource
    AutoEdit = False
    DataSet = tblNofi
    Left = 552
    Top = 40
  end
  object tblNfDa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BeforePost = tblNfDaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DADOS_NFE'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    InsertSQL.Strings = (
      'insert into DADOS_NFE'
      
        '  (ALIQ_ICMS, ANO_FABRICACAO, ANO_MODELO, BASE_ICMS, CFOP, COMBU' +
        'STIVEL, '
      
        '   COR, CST, ICMS_SUBST, ID_CONCESSIONARIA, ID_CONHECIMENTO, ID_' +
        'DADOS_NFE, '
      
        '   ID_NOFI, ID_PECA, ITEM, MARCA, MODELO, MOTOR, NF, POTENCIA, P' +
        'ROD_NUMERO, '
      
        '   QTDE, RENAVAM, VLR_FRETE, VLR_ICMS, VLR_IPI, VLR_SEGURO, VLR_' +
        'UNIT)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :BASE_ICMS, :CFOP, ' +
        ':COMBUSTIVEL, '
      
        '   :COR, :CST, :ICMS_SUBST, :ID_CONCESSIONARIA, :ID_CONHECIMENTO' +
        ', :ID_DADOS_NFE, '
      
        '   :ID_NOFI, :ID_PECA, :ITEM, :MARCA, :MODELO, :MOTOR, :NF, :POT' +
        'ENCIA, '
      
        '   :PROD_NUMERO, :QTDE, :RENAVAM, :VLR_FRETE, :VLR_ICMS, :VLR_IP' +
        'I, :VLR_SEGURO, '
      '   :VLR_UNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DADOS_NFE,'
      '  ID_CONCESSIONARIA,'
      '  NF,'
      '  ITEM,'
      '  QTDE,'
      '  CST,'
      '  CFOP,'
      '  VLR_UNIT,'
      '  BASE_ICMS,'
      '  ALIQ_ICMS,'
      '  VLR_ICMS,'
      '  ICMS_SUBST,'
      '  VLR_IPI,'
      '  MODELO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  COR,'
      '  MOTOR,'
      '  COMBUSTIVEL,'
      '  MARCA,'
      '  POTENCIA,'
      '  RENAVAM,'
      '  PROD_NUMERO,'
      '  ID_PECA,'
      '  ID_NOFI,'
      '  ID_CONHECIMENTO,'
      '  VLR_FRETE,'
      '  VLR_SEGURO'
      'from DADOS_NFE '
      'where'
      '  ID_DADOS_NFE = :ID_DADOS_NFE')
    SelectSQL.Strings = (
      'select * from DADOS_NFE'
      'where id_nofi = :idNofi')
    ModifySQL.Strings = (
      'update DADOS_NFE'
      'set'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  CST = :CST,'
      '  ICMS_SUBST = :ICMS_SUBST,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  ID_DADOS_NFE = :ID_DADOS_NFE,'
      '  ID_NOFI = :ID_NOFI,'
      '  ID_PECA = :ID_PECA,'
      '  ITEM = :ITEM,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  POTENCIA = :POTENCIA,'
      '  PROD_NUMERO = :PROD_NUMERO,'
      '  QTDE = :QTDE,'
      '  RENAVAM = :RENAVAM,'
      '  VLR_FRETE = :VLR_FRETE,'
      '  VLR_ICMS = :VLR_ICMS,'
      '  VLR_IPI = :VLR_IPI,'
      '  VLR_SEGURO = :VLR_SEGURO,'
      '  VLR_UNIT = :VLR_UNIT'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    ParamCheck = True
    UniDirectional = False
    Left = 520
    Top = 72
    object tblNfDaID_DADOS_NFE: TIntegerField
      FieldName = 'ID_DADOS_NFE'
      Origin = '"DADOS_NFE"."ID_DADOS_NFE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNfDaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DADOS_NFE"."ID_CONCESSIONARIA"'
    end
    object tblNfDaID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"DADOS_NFE"."ID_NOFI"'
    end
    object tblNfDaID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"DADOS_NFE"."ID_CONHECIMENTO"'
    end
    object tblNfDaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"DADOS_NFE"."NF"'
      Size = 8
    end
    object tblNfDaITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"DADOS_NFE"."ITEM"'
    end
    object tblNfDaQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = '"DADOS_NFE"."QTDE"'
    end
    object tblNfDaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"DADOS_NFE"."CFOP"'
      Required = True
    end
    object tblNfDaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"DADOS_NFE"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVLR_IPI: TIBBCDField
      FieldName = 'VLR_IPI'
      Origin = '"DADOS_NFE"."VLR_IPI"'
      Precision = 18
      Size = 2
    end
    object tblNfDaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"DADOS_NFE"."MODELO"'
    end
    object tblNfDaANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"DADOS_NFE"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblNfDaANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"DADOS_NFE"."ANO_MODELO"'
      Size = 4
    end
    object tblNfDaCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"DADOS_NFE"."COR"'
      Size = 10
    end
    object tblNfDaMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"DADOS_NFE"."MOTOR"'
      Size = 15
    end
    object tblNfDaCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"DADOS_NFE"."COMBUSTIVEL"'
    end
    object tblNfDaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"DADOS_NFE"."MARCA"'
      Size = 10
    end
    object tblNfDaPOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"DADOS_NFE"."POTENCIA"'
      Size = 3
    end
    object tblNfDaRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"DADOS_NFE"."RENAVAM"'
      Size = 15
    end
    object tblNfDaPROD_NUMERO: TIntegerField
      FieldName = 'PROD_NUMERO'
      Origin = '"DADOS_NFE"."PROD_NUMERO"'
    end
    object tblNfDaCST: TIBStringField
      FieldName = 'CST'
      Origin = '"DADOS_NFE"."CST"'
      Size = 3
    end
    object tblNfDaICMS_SUBST: TIBBCDField
      FieldName = 'ICMS_SUBST'
      Origin = '"DADOS_NFE"."ICMS_SUBST"'
      Precision = 18
      Size = 2
    end
    object tblNfDaID_PECA: TIntegerField
      FieldName = 'ID_PECA'
      Origin = '"DADOS_NFE"."ID_PECA"'
    end
    object tblNfDaVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Origin = '"DADOS_NFE"."VLR_UNIT"'
      Precision = 18
      Size = 10
    end
    object tblNfDaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"DADOS_NFE"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNfDaVLR_ICMS: TIBBCDField
      FieldName = 'VLR_ICMS'
      Origin = '"DADOS_NFE"."VLR_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNfDaVLR_FRETE: TFMTBCDField
      FieldName = 'VLR_FRETE'
      Origin = '"DADOS_NFE"."VLR_FRETE"'
      Precision = 18
      Size = 10
    end
    object tblNfDaVLR_SEGURO: TFMTBCDField
      FieldName = 'VLR_SEGURO'
      Origin = '"DADOS_NFE"."VLR_SEGURO"'
      Precision = 18
      Size = 10
    end
  end
  object DataSourceNfda: TDataSource
    AutoEdit = False
    DataSet = tblNfDa
    Left = 552
    Top = 72
  end
  object tblPecasEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PECAS_ESTOQUE'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    InsertSQL.Strings = (
      'insert into PECAS_ESTOQUE'
      
        '  (CST_ATUAL, CST_MEDIO, ESTOQOS, ESTOQUE, FORNECEDOR, ID_CONCES' +
        'SIONARIA, '
      
        '   ID_PECAS, ID_PECAS_ESTOQUE, LOCAL, ULT_COMPRA, ULT_PEDIDO, UL' +
        'T_VENDA)'
      'values'
      
        '  (:CST_ATUAL, :CST_MEDIO, :ESTOQOS, :ESTOQUE, :FORNECEDOR, :ID_' +
        'CONCESSIONARIA, '
      
        '   :ID_PECAS, :ID_PECAS_ESTOQUE, :LOCAL, :ULT_COMPRA, :ULT_PEDID' +
        'O, :ULT_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_ESTOQUE,'
      '  ID_PECAS,'
      '  ID_CONCESSIONARIA,'
      '  ESTOQUE,'
      '  ESTOQOS,'
      '  LOCAL,'
      '  CST_MEDIO,'
      '  CST_ATUAL,'
      '  ULT_COMPRA,'
      '  ULT_VENDA,'
      '  ULT_PEDIDO,'
      '  FORNECEDOR'
      'from PECAS_ESTOQUE '
      'where'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE')
    SelectSQL.Strings = (
      'select * from PECAS_ESTOQUE'
      'where '
      'id_pecas = :idPecas'
      'and'
      'id_Concessionaria = :idConcessionaria')
    ModifySQL.Strings = (
      'update PECAS_ESTOQUE'
      'set'
      '  CST_ATUAL = :CST_ATUAL,'
      '  CST_MEDIO = :CST_MEDIO,'
      '  ESTOQOS = :ESTOQOS,'
      '  ESTOQUE = :ESTOQUE,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE,'
      '  LOCAL = :LOCAL,'
      '  ULT_COMPRA = :ULT_COMPRA,'
      '  ULT_PEDIDO = :ULT_PEDIDO,'
      '  ULT_VENDA = :ULT_VENDA'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    ParamCheck = True
    UniDirectional = False
    Left = 368
    Top = 16
    object tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPecasEstoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
    end
    object tblPecasEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
    end
    object tblPecasEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ESTOQUE"'
    end
    object tblPecasEstoqueESTOQOS: TIntegerField
      FieldName = 'ESTOQOS'
      Origin = '"PECAS_ESTOQUE"."ESTOQOS"'
    end
    object tblPecasEstoqueLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PECAS_ESTOQUE"."LOCAL"'
      FixedChar = True
      Size = 5
    end
    object tblPecasEstoqueCST_MEDIO: TIBBCDField
      FieldName = 'CST_MEDIO'
      Origin = '"PECAS_ESTOQUE"."CST_MEDIO"'
      Precision = 18
      Size = 2
    end
    object tblPecasEstoqueCST_ATUAL: TIBBCDField
      FieldName = 'CST_ATUAL'
      Origin = '"PECAS_ESTOQUE"."CST_ATUAL"'
      Precision = 18
      Size = 2
    end
    object tblPecasEstoqueULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
      Origin = '"PECAS_ESTOQUE"."ULT_COMPRA"'
    end
    object tblPecasEstoqueULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
      Origin = '"PECAS_ESTOQUE"."ULT_VENDA"'
    end
    object tblPecasEstoqueULT_PEDIDO: TDateField
      FieldName = 'ULT_PEDIDO'
      Origin = '"PECAS_ESTOQUE"."ULT_PEDIDO"'
    end
    object tblPecasEstoqueFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PECAS_ESTOQUE"."FORNECEDOR"'
      FixedChar = True
      Size = 5
    end
  end
  object DataSourcePecasEstoque: TDataSource
    AutoEdit = False
    DataSet = tblPecasEstoque
    Left = 368
    Top = 72
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CODIGO_SGS, CST, DE' +
        'SCRICAO, '
      
        '   ESPECIAL, FORA_LINHA, GRUPO, ICMS, ID_PECAS, IPI, LISTA, MIN_' +
        'PEDIDO, '
      
        '   NCM, NOVASUBS, ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, S' +
        'T_COFINS, '
      '   SUBST_TRIB, SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CODIGO_SGS, :' +
        'CST, :DESCRICAO, '
      
        '   :ESPECIAL, :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LIST' +
        'A, :MIN_PEDIDO, '
      
        '   :NCM, :NOVASUBS, :ORIGINAL, :PPS, :PRECO, :PRECO_GAR, :QTD_PE' +
        'DIDA, :ST_COFINS, '
      '   :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  ICMS,'
      '  PRECO,'
      '  PPS,'
      '  PRECO_GAR,'
      '  IPI,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2,'
      '  NCM,'
      '  ORIGINAL,'
      '  CST,'
      '  CODIGO_SGS'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'select * from Pecas'
      'where id_Pecas = :idPecas')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_SGS = :CODIGO_SGS,'
      '  CST = :CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NCM = :NCM,'
      '  NOVASUBS = :NOVASUBS,'
      '  ORIGINAL = :ORIGINAL,'
      '  PPS = :PPS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    ParamCheck = True
    UniDirectional = False
    Left = 336
    Top = 16
    object tblPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPecasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object tblPecasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblPecasGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PECAS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object tblPecasESPECIAL: TIBStringField
      FieldName = 'ESPECIAL'
      Origin = '"PECAS"."ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCOD_PROC: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCOD_TRIB: TIBStringField
      FieldName = 'COD_TRIB'
      Origin = '"PECAS"."COD_TRIB"'
      FixedChar = True
      Size = 2
    end
    object tblPecasUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object tblPecasSUBSTITUTO: TIBStringField
      FieldName = 'SUBSTITUTO'
      Origin = '"PECAS"."SUBSTITUTO"'
      FixedChar = True
      Size = 12
    end
    object tblPecasFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = '"PECAS"."FORA_LINHA"'
      FixedChar = True
      Size = 1
    end
    object tblPecasMIN_PEDIDO: TIntegerField
      FieldName = 'MIN_PEDIDO'
      Origin = '"PECAS"."MIN_PEDIDO"'
    end
    object tblPecasQTD_PEDIDA: TIntegerField
      FieldName = 'QTD_PEDIDA'
      Origin = '"PECAS"."QTD_PEDIDA"'
    end
    object tblPecasICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PECAS"."ICMS"'
      Precision = 9
      Size = 2
    end
    object tblPecasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblPecasPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECAS"."PPS"'
      Precision = 18
      Size = 2
    end
    object tblPecasPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      Precision = 18
      Size = 2
    end
    object tblPecasIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECAS"."IPI"'
      Precision = 9
      Size = 2
    end
    object tblPecasLISTA: TIBStringField
      FieldName = 'LISTA'
      Origin = '"PECAS"."LISTA"'
      FixedChar = True
      Size = 1
    end
    object tblPecasSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object tblPecasST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object tblPecasNOVASUBS: TIBStringField
      FieldName = 'NOVASUBS'
      Origin = '"PECAS"."NOVASUBS"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCFOP1: TIBStringField
      FieldName = 'CFOP1'
      Origin = '"PECAS"."CFOP1"'
      FixedChar = True
      Size = 4
    end
    object tblPecasCFOP2: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"PECAS"."CFOP2"'
      FixedChar = True
      Size = 4
    end
    object tblPecasNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      EditMask = '0000.00.00;1;_'
      Size = 10
    end
    object tblPecasORIGINAL: TIBStringField
      FieldName = 'ORIGINAL'
      Origin = '"PECAS"."ORIGINAL"'
      FixedChar = True
      Size = 1
    end
    object tblPecasCST: TIBStringField
      FieldName = 'CST'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
    object tblPecasCODIGO_SGS: TIntegerField
      FieldName = 'CODIGO_SGS'
      Origin = '"PECAS"."CODIGO_SGS"'
    end
  end
  object DataSourcePecas: TDataSource
    AutoEdit = False
    DataSet = tblPecas
    Left = 336
    Top = 72
  end
  object tblPecasMovimentacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PECAS_MOVIMENTACAO'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    InsertSQL.Strings = (
      'insert into PECAS_MOVIMENTACAO'
      
        '  (CUSTO_MEDIO, DATA, EMISSAO, ID_CONCESSIONARIA, ID_PECAS, ID_P' +
        'ECAS_MOVIMENTACAO, '
      '   MOVIMENTO, NF, QUANTIDADE_ATUAL, QUANTIDADE_MOVIMENTADA)'
      'values'
      
        '  (:CUSTO_MEDIO, :DATA, :EMISSAO, :ID_CONCESSIONARIA, :ID_PECAS,' +
        ' :ID_PECAS_MOVIMENTACAO, '
      '   :MOVIMENTO, :NF, :QUANTIDADE_ATUAL, :QUANTIDADE_MOVIMENTADA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_MOVIMENTACAO,'
      '  ID_CONCESSIONARIA,'
      '  ID_PECAS,'
      '  MOVIMENTO,'
      '  QUANTIDADE_MOVIMENTADA,'
      '  QUANTIDADE_ATUAL,'
      '  CUSTO_MEDIO,'
      '  DATA,'
      '  NF,'
      '  EMISSAO'
      'from PECAS_MOVIMENTACAO '
      'where'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO')
    SelectSQL.Strings = (
      'select * from PECAS_MOVIMENTACAO'
      'where (id_concessionaria = :idconcessionaria) and'
      '(id_pecas = :idpecas)')
    ModifySQL.Strings = (
      'update PECAS_MOVIMENTACAO'
      'set'
      '  CUSTO_MEDIO = :CUSTO_MEDIO,'
      '  DATA = :DATA,'
      '  EMISSAO = :EMISSAO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO,'
      '  MOVIMENTO = :MOVIMENTO,'
      '  NF = :NF,'
      '  QUANTIDADE_ATUAL = :QUANTIDADE_ATUAL,'
      '  QUANTIDADE_MOVIMENTADA = :QUANTIDADE_MOVIMENTADA'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    ParamCheck = True
    UniDirectional = False
    Left = 400
    Top = 16
    object tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_PECAS_MOVIMENTACAO'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS_MOVIMENTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_MOVIMENTACAO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPecasMovimentacaoID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS"'
    end
    object tblPecasMovimentacaoMOVIMENTO: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"PECAS_MOVIMENTACAO"."MOVIMENTO"'
      Size = 1
    end
    object tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTADA'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_MOVIMENTADA"'
    end
    object tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_ATUAL"'
    end
    object tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PECAS_MOVIMENTACAO"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object tblPecasMovimentacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PECAS_MOVIMENTACAO"."DATA"'
    end
    object tblPecasMovimentacaoNF: TIBStringField
      FieldName = 'NF'
      Origin = '"PECAS_MOVIMENTACAO"."NF"'
      Size = 8
    end
    object tblPecasMovimentacaoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"PECAS_MOVIMENTACAO"."EMISSAO"'
    end
  end
  object DataSourcePecasMovimentacao: TDataSource
    AutoEdit = False
    DataSet = tblPecasMovimentacao
    Left = 400
    Top = 72
  end
  object tblConhecimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONHECIMENTO'
      'where'
      '  ID_CONHECIMENTO = :OLD_ID_CONHECIMENTO')
    InsertSQL.Strings = (
      'insert into CONHECIMENTO'
      
        '  (ID_CONCESSIONARIA, ID_CONHECIMENTO, NUMERO_CONHECIMENTO, QTDE' +
        '_NFS, STATUS, '
      '   TRANSPORTADORA, VALOR_FRETE, VALOR_MERCADORIAS)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_CONHECIMENTO, :NUMERO_CONHECIMENTO, :' +
        'QTDE_NFS, '
      '   :STATUS, :TRANSPORTADORA, :VALOR_FRETE, :VALOR_MERCADORIAS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CONHECIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  NUMERO_CONHECIMENTO,'
      '  QTDE_NFS,'
      '  TRANSPORTADORA,'
      '  VALOR_FRETE,'
      '  VALOR_MERCADORIAS,'
      '  STATUS'
      'from CONHECIMENTO '
      'where'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO')
    SelectSQL.Strings = (
      'select * from CONHECIMENTO'
      'where transportadora = :idTransportadora'
      'and'
      'numero_conhecimento = :idConhecimento')
    ModifySQL.Strings = (
      'update CONHECIMENTO'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  NUMERO_CONHECIMENTO = :NUMERO_CONHECIMENTO,'
      '  QTDE_NFS = :QTDE_NFS,'
      '  STATUS = :STATUS,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_MERCADORIAS = :VALOR_MERCADORIAS'
      'where'
      '  ID_CONHECIMENTO = :OLD_ID_CONHECIMENTO')
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 16
    object tblConhecimentoID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"CONHECIMENTO"."ID_CONHECIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblConhecimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONHECIMENTO"."ID_CONCESSIONARIA"'
    end
    object tblConhecimentoNUMERO_CONHECIMENTO: TIBStringField
      FieldName = 'NUMERO_CONHECIMENTO'
      Origin = '"CONHECIMENTO"."NUMERO_CONHECIMENTO"'
      Size = 12
    end
    object tblConhecimentoQTDE_NFS: TIBStringField
      FieldName = 'QTDE_NFS'
      Origin = '"CONHECIMENTO"."QTDE_NFS"'
      Size = 3
    end
    object tblConhecimentoTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CONHECIMENTO"."TRANSPORTADORA"'
      Size = 5
    end
    object tblConhecimentoVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = '"CONHECIMENTO"."VALOR_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblConhecimentoVALOR_MERCADORIAS: TIBBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"CONHECIMENTO"."VALOR_MERCADORIAS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblConhecimentoSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CONHECIMENTO"."STATUS"'
    end
  end
  object DataSourceConhecimento: TDataSource
    AutoEdit = False
    DataSet = tblConhecimento
    Left = 432
    Top = 72
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from Clientes'
      'where id_Clientes = :idClientes')
    Left = 520
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idClientes'
        ParamType = ptUnknown
      end>
    object IBQuery1ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object IBQuery1ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBQuery1VENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1IDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object IBQuery1CPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object IBQuery1NUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object IBQuery1NASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object IBQuery1PAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object IBQuery1MAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object IBQuery1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object IBQuery1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBQuery1CIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object IBQuery1ESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object IBQuery1CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object IBQuery1CADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object IBQuery1DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object IBQuery1FONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1FONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1FONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1COENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object IBQuery1COBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object IBQuery1COCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object IBQuery1COESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object IBQuery1COCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object IBQuery1SPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1REG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object IBQuery1CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1TRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1FINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1MECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1VENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1CONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 5
    end
    object IBQuery1COMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object IBQuery1EMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object IBQuery1ADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object IBQuery1SALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object IBQuery1EMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object IBQuery1EMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object IBQuery1EMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object IBQuery1EMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object IBQuery1EMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object IBQuery1EMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1REF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object IBQuery1REF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1REF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object IBQuery1REF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1REF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 50
    end
    object IBQuery1REF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1REF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 50
    end
    object IBQuery1REF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBQuery1REF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object IBQuery1REF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object IBQuery1REF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object IBQuery1FOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object IBQuery1FABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object IBQuery1CODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object IBQuery1NOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object IBQuery1CODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
  end
  object tblPecas2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CODIGO_SGS, CST, DE' +
        'SCRICAO, '
      
        '   ESPECIAL, FORA_LINHA, GRUPO, ICMS, ID_PECAS, IPI, LISTA, MIN_' +
        'PEDIDO, '
      
        '   NCM, NOVASUBS, ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, S' +
        'T_COFINS, '
      '   SUBST_TRIB, SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CODIGO_SGS, :' +
        'CST, :DESCRICAO, '
      
        '   :ESPECIAL, :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LIST' +
        'A, :MIN_PEDIDO, '
      
        '   :NCM, :NOVASUBS, :ORIGINAL, :PPS, :PRECO, :PRECO_GAR, :QTD_PE' +
        'DIDA, :ST_COFINS, '
      '   :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  ICMS,'
      '  PRECO,'
      '  PPS,'
      '  PRECO_GAR,'
      '  IPI,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2,'
      '  NCM,'
      '  ORIGINAL,'
      '  CST,'
      '  CODIGO_SGS'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'select * from Pecas'
      'where Codigo = :idCodigo')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_SGS = :CODIGO_SGS,'
      '  CST = :CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NCM = :NCM,'
      '  NOVASUBS = :NOVASUBS,'
      '  ORIGINAL = :ORIGINAL,'
      '  PPS = :PPS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    ParamCheck = True
    UniDirectional = False
    Left = 336
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PECAS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBStringField4: TIBStringField
      FieldName = 'ESPECIAL'
      Origin = '"PECAS"."ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object IBStringField5: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField6: TIBStringField
      FieldName = 'COD_TRIB'
      Origin = '"PECAS"."COD_TRIB"'
      FixedChar = True
      Size = 2
    end
    object IBStringField7: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBStringField8: TIBStringField
      FieldName = 'SUBSTITUTO'
      Origin = '"PECAS"."SUBSTITUTO"'
      FixedChar = True
      Size = 12
    end
    object IBStringField9: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = '"PECAS"."FORA_LINHA"'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'MIN_PEDIDO'
      Origin = '"PECAS"."MIN_PEDIDO"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'QTD_PEDIDA'
      Origin = '"PECAS"."QTD_PEDIDA"'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PECAS"."ICMS"'
      Precision = 9
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECAS"."PPS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECAS"."IPI"'
      Precision = 9
      Size = 2
    end
    object IBStringField10: TIBStringField
      FieldName = 'LISTA'
      Origin = '"PECAS"."LISTA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField11: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object IBStringField12: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField13: TIBStringField
      FieldName = 'NOVASUBS'
      Origin = '"PECAS"."NOVASUBS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField14: TIBStringField
      FieldName = 'CFOP1'
      Origin = '"PECAS"."CFOP1"'
      FixedChar = True
      Size = 4
    end
    object IBStringField15: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"PECAS"."CFOP2"'
      FixedChar = True
      Size = 4
    end
    object IBStringField16: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      EditMask = '0000.00.00;1;_'
      Size = 10
    end
    object IBStringField17: TIBStringField
      FieldName = 'ORIGINAL'
      Origin = '"PECAS"."ORIGINAL"'
      FixedChar = True
      Size = 1
    end
    object IBStringField18: TIBStringField
      FieldName = 'CST'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO_SGS'
      Origin = '"PECAS"."CODIGO_SGS"'
    end
  end
  object DataSourcePecas2: TDataSource
    AutoEdit = False
    DataSet = tblPecas2
    Left = 336
    Top = 144
  end
end
