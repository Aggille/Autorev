object BoxNotaFiscalRemessa: TBoxNotaFiscalRemessa
  Left = 15
  Top = 85
  Caption = 'Nota fiscal de remessa'
  ClientHeight = 352
  ClientWidth = 933
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
    Width = 933
    Height = 352
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 16
      Top = 46
      Width = 54
      Height = 13
      Caption = 'Nota fiscal:'
    end
    object Label3: TLabel
      Left = 16
      Top = 73
      Width = 44
      Height = 13
      Caption = 'Total NF:'
    end
    object Label4: TLabel
      Left = 16
      Top = 99
      Width = 79
      Height = 13
      Caption = 'Transportadora:'
    end
    object Label5: TLabel
      Left = 16
      Top = 126
      Width = 57
      Height = 13
      Caption = 'Qtde Prod.:'
    end
    object Label6: TLabel
      Left = 17
      Top = 153
      Width = 70
      Height = 13
      Caption = 'Qtde Volumes:'
    end
    object CodigoCliente: TDBEdit
      Left = 80
      Top = 16
      Width = 65
      Height = 21
      DataField = 'ID_CLIENTES'
      DataSource = DataSourceNofisa
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object NF: TDBEdit
      Left = 80
      Top = 43
      Width = 65
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataSourceNofisa
      Enabled = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object BtnNovo: TBitBtn
      Left = 160
      Top = 14
      Width = 97
      Height = 26
      Caption = 'Criar nova NF'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
      OnKeyPress = FormKeyPress
    end
    object BtnSalvar: TBitBtn
      Left = 263
      Top = 15
      Width = 97
      Height = 23
      Caption = 'Salvar NF'
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
      TabOrder = 1
      OnClick = BtnSalvarClick
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 101
      Top = 96
      Width = 65
      Height = 21
      DataField = 'COD_TRANS'
      DataSource = DataSourceNofisa
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 123
      Width = 65
      Height = 21
      DataField = 'QTDE_PROD'
      DataSource = DataSourceNofisa
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 93
      Top = 150
      Width = 65
      Height = 21
      DataField = 'QUANTIDADE_VOLUMES'
      DataSource = DataSourceNofisa
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object ValorDevido: TJvDBMaskEdit
      Left = 80
      Top = 70
      Width = 112
      Height = 21
      DataField = 'TOT_NOTA'
      DataSource = DataSourceNofisa
      TabOrder = 4
      EditMask = ''
      OnKeyPress = FormKeyPress
    end
    object JvDBNavigator1: TJvDBNavigator
      Left = 240
      Top = 146
      Width = 240
      Height = 25
      DataSource = DataSourceSada
      TabOrder = 7
    end
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 177
      Width = 905
      Height = 160
      Selected.Strings = (
        'CODIGO'#9'17'#9'CODIGO'#9#9
        'DESCRICAO'#9'80'#9'DESCRICAO'#9#9
        'QTDE'#9'10'#9'QTDE'#9#9
        'CST'#9'3'#9'CST'#9#9
        'NCM'#9'10'#9'NCM:'#9'F'
        'PRECO'#9'19'#9'PRECO'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnRowChanged = wwDBGrid1RowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceSada
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
  end
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblSerieNFAfterCancel
    AfterEdit = tblSerieNFAfterPost
    AfterPost = tblSerieNFAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Nofisa'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into Nofisa'
      
        '  (ARQUIVO, BASE_ICM_S, BASE_ICMS, CHAVE, COD_TRANS, CODIGO_FISC' +
        'AL, COFINS, '
      
        '   DADOS_AD01, DADOS_AD02, DADOS_AD03, DADOS_AD04, DADOS_AD05, D' +
        'ESC_OFI, '
      
        '   DESC_PEC, DESCRICAO_CODIGO_FISCAL, EMISSAO, ENT_SAI, FORMA_PA' +
        'GAMENTO, '
      
        '   FRETE_TIPO, HORA, ID_ATENDENTE, ID_CLIENTES, ID_CONCESSIONARI' +
        'A, ID_MECANICO, '
      
        '   ID_NOFISA, IE_SUBS, ISSQN, MOTIVO_CANCELAMENTO, NUMERO, OBS, ' +
        'ORIGEM, '
      
        '   PIS, PLACA, PROTOCOLO, PROTOCOLO_CANCELAMENTO, QTDE_PROD, QUA' +
        'NTIDADE_VOLUMES, '
      
        '   RECEBIMENTO_TRANSFERENCIA, RECIBO, SAIDA, SERIENF, STATUS, TO' +
        'T_NOTA, '
      
        '   TOT_PROD, TRANSFERENCIA_PENDENTE, VAL_FRETE, VAL_ICMS, VAL_IC' +
        'MS_S, VAL_IPI, '
      '   VAL_ISS, VAL_OUTROS, VAL_SEGURO, VAL_SERV, VENDEDOR, XML)'
      'values'
      
        '  (:ARQUIVO, :BASE_ICM_S, :BASE_ICMS, :CHAVE, :COD_TRANS, :CODIG' +
        'O_FISCAL, '
      
        '   :COFINS, :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, ' +
        ':DADOS_AD05, '
      
        '   :DESC_OFI, :DESC_PEC, :DESCRICAO_CODIGO_FISCAL, :EMISSAO, :EN' +
        'T_SAI, '
      
        '   :FORMA_PAGAMENTO, :FRETE_TIPO, :HORA, :ID_ATENDENTE, :ID_CLIE' +
        'NTES, :ID_CONCESSIONARIA, '
      
        '   :ID_MECANICO, :ID_NOFISA, :IE_SUBS, :ISSQN, :MOTIVO_CANCELAME' +
        'NTO, :NUMERO, '
      
        '   :OBS, :ORIGEM, :PIS, :PLACA, :PROTOCOLO, :PROTOCOLO_CANCELAME' +
        'NTO, :QTDE_PROD, '
      
        '   :QUANTIDADE_VOLUMES, :RECEBIMENTO_TRANSFERENCIA, :RECIBO, :SA' +
        'IDA, :SERIENF, '
      
        '   :STATUS, :TOT_NOTA, :TOT_PROD, :TRANSFERENCIA_PENDENTE, :VAL_' +
        'FRETE, '
      
        '   :VAL_ICMS, :VAL_ICMS_S, :VAL_IPI, :VAL_ISS, :VAL_OUTROS, :VAL' +
        '_SEGURO, '
      '   :VAL_SERV, :VENDEDOR, :XML)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NOFISA,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  NUMERO,'
      '  SERIENF,'
      '  EMISSAO,'
      '  ORIGEM,'
      '  ENT_SAI,'
      '  VENDEDOR,'
      '  SAIDA,'
      '  HORA,'
      '  IE_SUBS,'
      '  DESC_PEC,'
      '  DESC_OFI,'
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
      '  CODIGO_FISCAL,'
      '  DESCRICAO_CODIGO_FISCAL,'
      '  FORMA_PAGAMENTO,'
      '  CHAVE,'
      '  RECIBO,'
      '  PROTOCOLO,'
      '  ARQUIVO,'
      '  XML,'
      '  PROTOCOLO_CANCELAMENTO,'
      '  MOTIVO_CANCELAMENTO,'
      '  DADOS_AD05,'
      '  RECEBIMENTO_TRANSFERENCIA,'
      '  TRANSFERENCIA_PENDENTE,'
      '  ID_MECANICO,'
      '  ID_ATENDENTE,'
      '  QUANTIDADE_VOLUMES'
      'from Nofisa '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'Select * from Nofisa')
    ModifySQL.Strings = (
      'update Nofisa'
      'set'
      '  ARQUIVO = :ARQUIVO,'
      '  BASE_ICM_S = :BASE_ICM_S,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CHAVE = :CHAVE,'
      '  COD_TRANS = :COD_TRANS,'
      '  CODIGO_FISCAL = :CODIGO_FISCAL,'
      '  COFINS = :COFINS,'
      '  DADOS_AD01 = :DADOS_AD01,'
      '  DADOS_AD02 = :DADOS_AD02,'
      '  DADOS_AD03 = :DADOS_AD03,'
      '  DADOS_AD04 = :DADOS_AD04,'
      '  DADOS_AD05 = :DADOS_AD05,'
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  DESCRICAO_CODIGO_FISCAL = :DESCRICAO_CODIGO_FISCAL,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
      '  FRETE_TIPO = :FRETE_TIPO,'
      '  HORA = :HORA,'
      '  ID_ATENDENTE = :ID_ATENDENTE,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  IE_SUBS = :IE_SUBS,'
      '  ISSQN = :ISSQN,'
      '  MOTIVO_CANCELAMENTO = :MOTIVO_CANCELAMENTO,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORIGEM = :ORIGEM,'
      '  PIS = :PIS,'
      '  PLACA = :PLACA,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  PROTOCOLO_CANCELAMENTO = :PROTOCOLO_CANCELAMENTO,'
      '  QTDE_PROD = :QTDE_PROD,'
      '  QUANTIDADE_VOLUMES = :QUANTIDADE_VOLUMES,'
      '  RECEBIMENTO_TRANSFERENCIA = :RECEBIMENTO_TRANSFERENCIA,'
      '  RECIBO = :RECIBO,'
      '  SAIDA = :SAIDA,'
      '  SERIENF = :SERIENF,'
      '  STATUS = :STATUS,'
      '  TOT_NOTA = :TOT_NOTA,'
      '  TOT_PROD = :TOT_PROD,'
      '  TRANSFERENCIA_PENDENTE = :TRANSFERENCIA_PENDENTE,'
      '  VAL_FRETE = :VAL_FRETE,'
      '  VAL_ICMS = :VAL_ICMS,'
      '  VAL_ICMS_S = :VAL_ICMS_S,'
      '  VAL_IPI = :VAL_IPI,'
      '  VAL_ISS = :VAL_ISS,'
      '  VAL_OUTROS = :VAL_OUTROS,'
      '  VAL_SEGURO = :VAL_SEGURO,'
      '  VAL_SERV = :VAL_SERV,'
      '  VENDEDOR = :VENDEDOR,'
      '  XML = :XML'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 80
    object tblNofisaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofisaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
    end
    object tblNofisaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
    end
    object tblNofisaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object tblNofisaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object tblNofisaHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object tblNofisaIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object tblNofisaDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object tblNofisaDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object tblNofisaISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object tblNofisaVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object tblNofisaTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object tblNofisaPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaCOD_TRANS: TIBStringField
      DisplayWidth = 5
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 5
    end
    object tblNofisaFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblNofisaQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object tblNofisaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object tblNofisaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object tblNofisaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object tblNofisaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object tblNofisaCODIGO_FISCAL: TIBStringField
      DisplayWidth = 19
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 19
    end
    object tblNofisaDESCRICAO_CODIGO_FISCAL: TIBStringField
      FieldName = 'DESCRICAO_CODIGO_FISCAL'
      Origin = '"NOFISA"."DESCRICAO_CODIGO_FISCAL"'
      Size = 50
    end
    object tblNofisaDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object tblNofisaDADOS_AD05: TIBStringField
      FieldName = 'DADOS_AD05'
      Origin = '"NOFISA"."DADOS_AD05"'
      Size = 50
    end
    object tblNofisaCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 50
    end
    object tblNofisaRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 50
    end
    object tblNofisaPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 50
    end
    object tblNofisaARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 50
    end
    object tblNofisaXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tblNofisaPROTOCOLO_CANCELAMENTO: TIBStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Origin = '"NOFISA"."PROTOCOLO_CANCELAMENTO"'
      Size = 50
    end
    object tblNofisaMOTIVO_CANCELAMENTO: TIBStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Origin = '"NOFISA"."MOTIVO_CANCELAMENTO"'
      Size = 50
    end
    object tblNofisaRECEBIMENTO_TRANSFERENCIA: TDateField
      FieldName = 'RECEBIMENTO_TRANSFERENCIA'
      Origin = '"NOFISA"."RECEBIMENTO_TRANSFERENCIA"'
    end
    object tblNofisaTRANSFERENCIA_PENDENTE: TIBStringField
      FieldName = 'TRANSFERENCIA_PENDENTE'
      Origin = '"NOFISA"."TRANSFERENCIA_PENDENTE"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"NOFISA"."ID_MECANICO"'
    end
    object tblNofisaID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"NOFISA"."ID_ATENDENTE"'
    end
    object tblNofisaQUANTIDADE_VOLUMES: TIntegerField
      FieldName = 'QUANTIDADE_VOLUMES'
      Origin = '"NOFISA"."QUANTIDADE_VOLUMES"'
    end
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 464
    Top = 80
  end
  object tblSada: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblSerieNFAfterCancel
    AfterEdit = tblSerieNFAfterPost
    AfterPost = tblSerieNFAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SADA'
      'where'
      '  ID_SADA = :OLD_ID_SADA')
    InsertSQL.Strings = (
      'insert into SADA'
      
        '  (ALIQ_ICMS, ANO_FABRICACAO, ANO_MODELO, BASE_ICMS, CFOP, CHASS' +
        'I, CILINDRADAS, '
      
        '   CODIGO, COMBUSTIVEL, COR, CST, CUSTO, DESCONTO, DESCRICAO, IC' +
        'MS, ID_CONCESSIONARIA, '
      
        '   ID_NOFISA, ID_PECAS, ID_SADA, MARCA, MODELO, MOTOR, NAT_OP, N' +
        'CM, NF, '
      
        '   PLACA, POTENCIA, PRECO, QTDE, RENAVAM, ST_COFINS, STATUS, SUB' +
        'ST, UNIDADE)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :BASE_ICMS, :CFOP, ' +
        ':CHASSI, '
      
        '   :CILINDRADAS, :CODIGO, :COMBUSTIVEL, :COR, :CST, :CUSTO, :DES' +
        'CONTO, '
      
        '   :DESCRICAO, :ICMS, :ID_CONCESSIONARIA, :ID_NOFISA, :ID_PECAS,' +
        ' :ID_SADA, '
      
        '   :MARCA, :MODELO, :MOTOR, :NAT_OP, :NCM, :NF, :PLACA, :POTENCI' +
        'A, :PRECO, '
      '   :QTDE, :RENAVAM, :ST_COFINS, :STATUS, :SUBST, :UNIDADE)')
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
      '  DESCONTO,'
      '  ID_PECAS,'
      '  NCM,'
      '  CILINDRADAS'
      'from SADA '
      'where'
      '  ID_SADA = :ID_SADA')
    SelectSQL.Strings = (
      'select * from SADA'
      'Where id_Nofisa = :idNofisa')
    ModifySQL.Strings = (
      'update SADA'
      'set'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  CHASSI = :CHASSI,'
      '  CILINDRADAS = :CILINDRADAS,'
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
      '  ID_PECAS = :ID_PECAS,'
      '  ID_SADA = :ID_SADA,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NAT_OP = :NAT_OP,'
      '  NCM = :NCM,'
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
    Left = 432
    Top = 48
    object tblSadaID_SADA: TIntegerField
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSadaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
    end
    object tblSadaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
    end
    object tblSadaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SADA"."NF"'
      Size = 8
    end
    object tblSadaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"SADA"."CODIGO"'
      Size = 17
    end
    object tblSadaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      KeyFields = 'o'
      Origin = '"SADA"."DESCRICAO"'
      Size = 80
    end
    object tblSadaQTDE: TSmallintField
      FieldName = 'QTDE'
      Origin = '"SADA"."QTDE"'
    end
    object tblSadaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Size = 3
    end
    object tblSadaCST: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object tblSadaSUBST: TIBStringField
      FieldName = 'SUBST'
      Origin = '"SADA"."SUBST"'
      Size = 1
    end
    object tblSadaICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Precision = 18
      Size = 2
    end
    object tblSadaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblSadaCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
    object tblSadaST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"SADA"."ST_COFINS"'
      Size = 1
    end
    object tblSadaANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"SADA"."ANO_MODELO"'
      Size = 4
    end
    object tblSadaANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"SADA"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblSadaRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"SADA"."RENAVAM"'
      Size = 15
    end
    object tblSadaPOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"SADA"."POTENCIA"'
      Size = 3
    end
    object tblSadaCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"SADA"."COR"'
      Size = 80
    end
    object tblSadaCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"SADA"."COMBUSTIVEL"'
    end
    object tblSadaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"SADA"."PLACA"'
      Size = 80
    end
    object tblSadaMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"SADA"."MOTOR"'
      Size = 15
    end
    object tblSadaCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"SADA"."CHASSI"'
    end
    object tblSadaCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblSadaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"SADA"."MARCA"'
      Size = 10
    end
    object tblSadaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SADA"."MODELO"'
    end
    object tblSadaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SADA"."STATUS"'
    end
    object tblSadaNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
    end
    object tblSadaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"SADA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblSadaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"SADA"."DESCONTO"'
      Precision = 18
      Size = 2
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
    object tblSadaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 3
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
  object tblSerieNF: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblSerieNFAfterCancel
    AfterEdit = tblSerieNFAfterPost
    AfterPost = tblSerieNFAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SerieNF'
      'where'
      '  ID_SERIENF = :OLD_ID_SERIENF')
    InsertSQL.Strings = (
      'insert into SerieNF'
      
        '  (ID_CONCESSIONARIA, ID_SERIENF, SERIENF, ULTIMO_NUMERO_EMITIDO' +
        ')'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_SERIENF, :SERIENF, :ULTIMO_NUMERO_EMI' +
        'TIDO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SERIENF,'
      '  ID_CONCESSIONARIA,'
      '  SERIENF,'
      '  ULTIMO_NUMERO_EMITIDO'
      'from SerieNF '
      'where'
      '  ID_SERIENF = :ID_SERIENF')
    SelectSQL.Strings = (
      'select * From SerieNF'
      'where ID_Concessionaria = :idConcessionaria'
      'and SerieNF = '#39'e'#39)
    ModifySQL.Strings = (
      'update SerieNF'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_SERIENF = :ID_SERIENF,'
      '  SERIENF = :SERIENF,'
      '  ULTIMO_NUMERO_EMITIDO = :ULTIMO_NUMERO_EMITIDO'
      'where'
      '  ID_SERIENF = :OLD_ID_SERIENF')
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 16
    object tblSerieNFID_SERIENF: TIntegerField
      FieldName = 'ID_SERIENF'
      Origin = '"SERIENF"."ID_SERIENF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSerieNFID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SERIENF"."ID_CONCESSIONARIA"'
    end
    object tblSerieNFSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"SERIENF"."SERIENF"'
      Size = 2
    end
    object tblSerieNFULTIMO_NUMERO_EMITIDO: TIntegerField
      FieldName = 'ULTIMO_NUMERO_EMITIDO'
      Origin = '"SERIENF"."ULTIMO_NUMERO_EMITIDO"'
    end
  end
  object DataSourceSerieNF: TDataSource
    AutoEdit = False
    DataSet = tblSerieNF
    Left = 464
    Top = 16
  end
  object DataSourceSada: TDataSource
    AutoEdit = False
    DataSet = tblSada
    Left = 464
    Top = 48
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblSerieNFAfterCancel
    AfterEdit = tblSerieNFAfterPost
    AfterPost = tblSerieNFAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_NotasFiscais_Saida_Id, 1) as'
      'Id_Nofisa From RDB$DATABASE')
    Left = 432
    Top = 112
  end
end
