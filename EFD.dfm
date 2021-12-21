object BoxEFD: TBoxEFD
  Left = 0
  Top = 0
  Caption = 'EFD-Escritura'#231#227'o Fiscal Digital'
  ClientHeight = 128
  ClientWidth = 310
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
    Width = 310
    Height = 128
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 418
    ExplicitHeight = 185
    object Label2: TLabel
      Left = 20
      Top = 11
      Width = 97
      Height = 13
      Caption = 'Exportar movimento'
    end
    object Label3: TLabel
      Left = 20
      Top = 30
      Width = 55
      Height = 13
      Caption = 'do per'#237'odo:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 108
      Width = 308
      Height = 19
      Panels = <>
      ExplicitLeft = 208
      ExplicitTop = 96
      ExplicitWidth = 0
    end
    object BtnConfirma: TBitBtn
      Left = 152
      Top = 69
      Width = 147
      Height = 26
      Caption = 'Exportar arquivos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnConfirmaClick
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
    end
    object Data1: TJvDateEdit
      Left = 152
      Top = 11
      Width = 117
      Height = 21
      Date = 39966.000000000000000000
      TabOrder = 0
    end
    object Data2: TJvDateEdit
      Left = 152
      Top = 38
      Width = 118
      Height = 21
      Date = 39966.000000000000000000
      TabOrder = 1
    end
  end
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Nofisa'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into Nofisa'
      
        '  (BASE_ICM_S, BASE_ICMS, COD_TRANS, CODIGO_FISCAL, COFINS, DADO' +
        'S_AD01, '
      
        '   DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI, DESC_PEC, DESCR' +
        'ICAO_CODIGO_FISCAL, '
      
        '   EMISSAO, ENT_SAI, FRETE_TIPO, HORA, ID_CLIENTES, ID_CONCESSIO' +
        'NARIA, '
      
        '   ID_NOFISA, IE_SUBS, ISSQN, NUMERO, OBS, ORIGEM, PIS, PLACA, Q' +
        'TDE_PROD, '
      
        '   SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD, VAL_FRETE, VAL_IC' +
        'MS, VAL_ICMS_S, '
      '   VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_SEGURO, VAL_SERV, VENDEDOR)'
      'values'
      
        '  (:BASE_ICM_S, :BASE_ICMS, :COD_TRANS, :CODIGO_FISCAL, :COFINS,' +
        ' :DADOS_AD01, '
      
        '   :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, :DESC_OFI, :DESC_PEC, ' +
        ':DESCRICAO_CODIGO_FISCAL, '
      
        '   :EMISSAO, :ENT_SAI, :FRETE_TIPO, :HORA, :ID_CLIENTES, :ID_CON' +
        'CESSIONARIA, '
      
        '   :ID_NOFISA, :IE_SUBS, :ISSQN, :NUMERO, :OBS, :ORIGEM, :PIS, :' +
        'PLACA, '
      
        '   :QTDE_PROD, :SAIDA, :SERIENF, :STATUS, :TOT_NOTA, :TOT_PROD, ' +
        ':VAL_FRETE, '
      
        '   :VAL_ICMS, :VAL_ICMS_S, :VAL_IPI, :VAL_ISS, :VAL_OUTROS, :VAL' +
        '_SEGURO, '
      '   :VAL_SERV, :VENDEDOR)')
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
      '  DESCRICAO_CODIGO_FISCAL'
      'from Nofisa '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'Select * from Nofisa'
      'where emissao = :idEmissao'
      'and id_Concessionaria = :IdConcessionaria')
    ModifySQL.Strings = (
      'update Nofisa'
      'set'
      '  BASE_ICM_S = :BASE_ICM_S,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  COD_TRANS = :COD_TRANS,'
      '  CODIGO_FISCAL = :CODIGO_FISCAL,'
      '  COFINS = :COFINS,'
      '  DADOS_AD01 = :DADOS_AD01,'
      '  DADOS_AD02 = :DADOS_AD02,'
      '  DADOS_AD03 = :DADOS_AD03,'
      '  DADOS_AD04 = :DADOS_AD04,'
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  DESCRICAO_CODIGO_FISCAL = :DESCRICAO_CODIGO_FISCAL,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FRETE_TIPO = :FRETE_TIPO,'
      '  HORA = :HORA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  IE_SUBS = :IE_SUBS,'
      '  ISSQN = :ISSQN,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORIGEM = :ORIGEM,'
      '  PIS = :PIS,'
      '  PLACA = :PLACA,'
      '  QTDE_PROD = :QTDE_PROD,'
      '  SAIDA = :SAIDA,'
      '  SERIENF = :SERIENF,'
      '  STATUS = :STATUS,'
      '  TOT_NOTA = :TOT_NOTA,'
      '  TOT_PROD = :TOT_PROD,'
      '  VAL_FRETE = :VAL_FRETE,'
      '  VAL_ICMS = :VAL_ICMS,'
      '  VAL_ICMS_S = :VAL_ICMS_S,'
      '  VAL_IPI = :VAL_IPI,'
      '  VAL_ISS = :VAL_ISS,'
      '  VAL_OUTROS = :VAL_OUTROS,'
      '  VAL_SEGURO = :VAL_SEGURO,'
      '  VAL_SERV = :VAL_SERV,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    Left = 72
    Top = 88
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
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 3
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
    object tblNofisaDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 30
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
    object tblNofisaFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
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
    object tblNofisaDADOS_AD05: TIBStringField
      FieldName = 'DADOS_AD05'
      Origin = '"NOFISA"."DADOS_AD05"'
      Size = 50
    end
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 104
    Top = 88
  end
  object DataSourceNofi: TDataSource
    AutoEdit = False
    DataSet = tblNofi
    Left = 104
    Top = 56
  end
  object tblNofi: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Nofi'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    InsertSQL.Strings = (
      'insert into Nofi'
      
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
      'from Nofi '
      'where'
      '  ID_NOFI = :ID_NOFI')
    SelectSQL.Strings = (
      'Select * from Nofi'
      'where emissao = :idEmissao'
      'and id_Concessionaria = :IdConcessionaria')
    ModifySQL.Strings = (
      'update Nofi'
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
    Left = 72
    Top = 56
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
    object tblNofiBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofiBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFI"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFI"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFI"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFI"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFI"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFI"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFI"."VAL_SERV"'
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
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_COFINS: TIBBCDField
      FieldName = 'VAL_COFINS'
      Origin = '"NOFI"."VAL_COFINS"'
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
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Clientes'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    InsertSQL.Strings = (
      'insert into Clientes'
      
        '  (ADMISSAO, BAIRRO, CADASTRO, CEP, CIDADE, CLIENTE, COBAIRRO, C' +
        'OCEP, COCIDADE, '
      
        '   CODIGO, COENDERECO, COESTADO, COMISSAO, CONTA, CPF, DESCONTO,' +
        ' EMAIL, '
      
        '   EMPR_BAIRRO, EMPR_CEP, EMPR_CIDADE, EMPR_ENDERECO, EMPR_ESTAD' +
        'O, EMPR_FONE, '
      
        '   EMPRESA, ENDERECO, ESTADO, FINANCEIRA, FONE1, FONE2, FONE3, F' +
        'ORNECEDOR, '
      
        '   FOTO, ID_CLIENTES, ID_CONCESSIONARIA, IDENTIDADE, MAE, MECANI' +
        'CO, NASCIMENTO, '
      
        '   NOME, NUM_CPF, PAI, REF_AG_BANC, REF_BANC, REF_COML_FONE1, RE' +
        'F_COML_FONE2, '
      
        '   REF_COML1, REF_COML2, REF_CTA_BANC, REF_FONE1, REF_FONE2, REF' +
        '_NOME1, '
      '   REF_NOME2, REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR)'
      'values'
      
        '  (:ADMISSAO, :BAIRRO, :CADASTRO, :CEP, :CIDADE, :CLIENTE, :COBA' +
        'IRRO, :COCEP, '
      
        '   :COCIDADE, :CODIGO, :COENDERECO, :COESTADO, :COMISSAO, :CONTA' +
        ', :CPF, '
      
        '   :DESCONTO, :EMAIL, :EMPR_BAIRRO, :EMPR_CEP, :EMPR_CIDADE, :EM' +
        'PR_ENDERECO, '
      
        '   :EMPR_ESTADO, :EMPR_FONE, :EMPRESA, :ENDERECO, :ESTADO, :FINA' +
        'NCEIRA, '
      
        '   :FONE1, :FONE2, :FONE3, :FORNECEDOR, :FOTO, :ID_CLIENTES, :ID' +
        '_CONCESSIONARIA, '
      
        '   :IDENTIDADE, :MAE, :MECANICO, :NASCIMENTO, :NOME, :NUM_CPF, :' +
        'PAI, :REF_AG_BANC, '
      
        '   :REF_BANC, :REF_COML_FONE1, :REF_COML_FONE2, :REF_COML1, :REF' +
        '_COML2, '
      
        '   :REF_CTA_BANC, :REF_FONE1, :REF_FONE2, :REF_NOME1, :REF_NOME2' +
        ', :REG_SPC, '
      '   :SALARIO, :SPC, :TRANSPORTADORA, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLIENTES,'
      '  CODIGO,'
      '  NOME,'
      '  ID_CONCESSIONARIA,'
      '  IDENTIDADE,'
      '  CPF,'
      '  NUM_CPF,'
      '  NASCIMENTO,'
      '  PAI,'
      '  MAE,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  ESTADO,'
      '  CEP,'
      '  CADASTRO,'
      '  DESCONTO,'
      '  FONE1,'
      '  FONE2,'
      '  FONE3,'
      '  COENDERECO,'
      '  COBAIRRO,'
      '  COCIDADE,'
      '  COESTADO,'
      '  COCEP,'
      '  SPC,'
      '  REG_SPC,'
      '  EMAIL,'
      '  CLIENTE,'
      '  FORNECEDOR,'
      '  TRANSPORTADORA,'
      '  FINANCEIRA,'
      '  MECANICO,'
      '  VENDEDOR,'
      '  CONTA,'
      '  COMISSAO,'
      '  EMPRESA,'
      '  ADMISSAO,'
      '  SALARIO,'
      '  EMPR_ENDERECO,'
      '  EMPR_BAIRRO,'
      '  EMPR_CIDADE,'
      '  EMPR_ESTADO,'
      '  EMPR_CEP,'
      '  EMPR_FONE,'
      '  REF_NOME1,'
      '  REF_FONE1,'
      '  REF_NOME2,'
      '  REF_FONE2,'
      '  REF_COML1,'
      '  REF_COML_FONE1,'
      '  REF_COML2,'
      '  REF_COML_FONE2,'
      '  REF_BANC,'
      '  REF_AG_BANC,'
      '  REF_CTA_BANC,'
      '  FOTO'
      'from Clientes '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'Select * from Clientes'
      'where Id_clientes = :idCliente')
    ModifySQL.Strings = (
      'update Clientes'
      'set'
      '  ADMISSAO = :ADMISSAO,'
      '  BAIRRO = :BAIRRO,'
      '  CADASTRO = :CADASTRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CLIENTE = :CLIENTE,'
      '  COBAIRRO = :COBAIRRO,'
      '  COCEP = :COCEP,'
      '  COCIDADE = :COCIDADE,'
      '  CODIGO = :CODIGO,'
      '  COENDERECO = :COENDERECO,'
      '  COESTADO = :COESTADO,'
      '  COMISSAO = :COMISSAO,'
      '  CONTA = :CONTA,'
      '  CPF = :CPF,'
      '  DESCONTO = :DESCONTO,'
      '  EMAIL = :EMAIL,'
      '  EMPR_BAIRRO = :EMPR_BAIRRO,'
      '  EMPR_CEP = :EMPR_CEP,'
      '  EMPR_CIDADE = :EMPR_CIDADE,'
      '  EMPR_ENDERECO = :EMPR_ENDERECO,'
      '  EMPR_ESTADO = :EMPR_ESTADO,'
      '  EMPR_FONE = :EMPR_FONE,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  ESTADO = :ESTADO,'
      '  FINANCEIRA = :FINANCEIRA,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FONE3 = :FONE3,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  FOTO = :FOTO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  IDENTIDADE = :IDENTIDADE,'
      '  MAE = :MAE,'
      '  MECANICO = :MECANICO,'
      '  NASCIMENTO = :NASCIMENTO,'
      '  NOME = :NOME,'
      '  NUM_CPF = :NUM_CPF,'
      '  PAI = :PAI,'
      '  REF_AG_BANC = :REF_AG_BANC,'
      '  REF_BANC = :REF_BANC,'
      '  REF_COML_FONE1 = :REF_COML_FONE1,'
      '  REF_COML_FONE2 = :REF_COML_FONE2,'
      '  REF_COML1 = :REF_COML1,'
      '  REF_COML2 = :REF_COML2,'
      '  REF_CTA_BANC = :REF_CTA_BANC,'
      '  REF_FONE1 = :REF_FONE1,'
      '  REF_FONE2 = :REF_FONE2,'
      '  REF_NOME1 = :REF_NOME1,'
      '  REF_NOME2 = :REF_NOME2,'
      '  REG_SPC = :REG_SPC,'
      '  SALARIO = :SALARIO,'
      '  SPC = :SPC,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    Left = 72
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object tblPessoasIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblPessoasCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblPessoasNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblPessoasNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object tblPessoasPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object tblPessoasMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object tblPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblPessoasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblPessoasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblPessoasESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object tblPessoasCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object tblPessoasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object tblPessoasFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object tblPessoasCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object tblPessoasCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object tblPessoasCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object tblPessoasCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object tblPessoasSPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasREG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblPessoasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 4
    end
    object tblPessoasCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object tblPessoasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object tblPessoasADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object tblPessoasSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object tblPessoasEMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object tblPessoasEMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object tblPessoasEMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object tblPessoasEMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object tblPessoasEMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object tblPessoasEMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object tblPessoasREF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object tblPessoasREF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 50
    end
    object tblPessoasREF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 50
    end
    object tblPessoasREF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object tblPessoasREF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object tblPessoasREF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object tblPessoasFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 104
  end
end
