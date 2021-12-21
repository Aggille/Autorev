object BoxComprasPecasImportacao: TBoxComprasPecasImportacao
  Left = 15
  Top = 85
  Caption = 'Entrada de pe'#231'as - importa'#231#227'o'
  ClientHeight = 298
  ClientWidth = 516
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
    Width = 516
    Height = 279
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 224
      Top = 56
      Width = 72
      Height = 13
      Caption = 'N'#250'mero da NF:'
    end
    object Label3: TLabel
      Left = 9
      Top = 233
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label2: TLabel
      Left = 9
      Top = 56
      Width = 152
      Height = 13
      Caption = 'Concession'#225'ria emissora da NF:'
    end
    object BtnImporta: TBitBtn
      Left = 9
      Top = 16
      Width = 90
      Height = 25
      Caption = 'Importar XML'
      TabOrder = 1
      OnClick = BtnImportaClick
    end
    object Memo: TMemo
      Left = 9
      Top = 80
      Width = 496
      Height = 146
      Lines.Strings = (
        '')
      TabOrder = 5
    end
    object BtnConfirma: TBitBtn
      Left = 105
      Top = 15
      Width = 100
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
      TabOrder = 0
      OnClick = BtnConfirmaClick
    end
    object NumeroNF: TEdit
      Left = 302
      Top = 53
      Width = 59
      Height = 21
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object BtnImportacaoDireta: TBitBtn
      Left = 373
      Top = 53
      Width = 132
      Height = 26
      Caption = 'Importa'#231#227'o interna'
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
      TabOrder = 4
      OnClick = BtnImportacaoDiretaClick
    end
    object Concessionaria: TEdit
      Left = 167
      Top = 53
      Width = 38
      Height = 21
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object Emissao: TJvDateEdit
      Left = 9
      Top = 252
      Width = 121
      Height = 21
      Enabled = False
      ShowNullDate = False
      TabOrder = 6
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 279
    Width = 516
    Height = 19
    Panels = <>
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 115
  end
  object tblNofi: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'where Numero = :idNumero'
      'and'
      'protocolo = :idProtocolo')
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
    ParamCheck = True
    UniDirectional = False
    Left = 168
    Top = 160
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
    Left = 200
    Top = 160
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_NotasFiscais_Id, 1) as'
      'Id_Nofi From RDB$DATABASE')
    Left = 232
    Top = 160
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (ADMISSAO, BAIRRO, CADASTRO, CEP, CIDADE, CLIENTE, COBAIRRO, C' +
        'OCEP, COCIDADE, '
      
        '   CODIGO, CODIGO_MUNICIPIO, COENDERECO, COESTADO, COMISSAO, CON' +
        'TA, CPF, '
      
        '   DESCONTO, EMAIL, EMPR_BAIRRO, EMPR_CEP, EMPR_CIDADE, EMPR_END' +
        'ERECO, '
      
        '   EMPR_ESTADO, EMPR_FONE, EMPRESA, ENDERECO, ESTADO, FABRICANTE' +
        ', FINANCEIRA, '
      
        '   FONE1, FONE2, FONE3, FORNECEDOR, FOTO, ID_CLIENTES, ID_CONCES' +
        'SIONARIA, '
      
        '   IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOME, NOME_VENDEDOR, N' +
        'UM_CPF, '
      
        '   PAI, REF_AG_BANC, REF_BANC, REF_COML_FONE1, REF_COML_FONE2, R' +
        'EF_COML1, '
      
        '   REF_COML2, REF_CTA_BANC, REF_FONE1, REF_FONE2, REF_NOME1, REF' +
        '_NOME2, '
      '   REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR)'
      'values'
      
        '  (:ADMISSAO, :BAIRRO, :CADASTRO, :CEP, :CIDADE, :CLIENTE, :COBA' +
        'IRRO, :COCEP, '
      
        '   :COCIDADE, :CODIGO, :CODIGO_MUNICIPIO, :COENDERECO, :COESTADO' +
        ', :COMISSAO, '
      
        '   :CONTA, :CPF, :DESCONTO, :EMAIL, :EMPR_BAIRRO, :EMPR_CEP, :EM' +
        'PR_CIDADE, '
      
        '   :EMPR_ENDERECO, :EMPR_ESTADO, :EMPR_FONE, :EMPRESA, :ENDERECO' +
        ', :ESTADO, '
      
        '   :FABRICANTE, :FINANCEIRA, :FONE1, :FONE2, :FONE3, :FORNECEDOR' +
        ', :FOTO, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :IDENTIDADE, :MAE, :MECANIC' +
        'O, :NASCIMENTO, '
      
        '   :NOME, :NOME_VENDEDOR, :NUM_CPF, :PAI, :REF_AG_BANC, :REF_BAN' +
        'C, :REF_COML_FONE1, '
      
        '   :REF_COML_FONE2, :REF_COML1, :REF_COML2, :REF_CTA_BANC, :REF_' +
        'FONE1, '
      
        '   :REF_FONE2, :REF_NOME1, :REF_NOME2, :REG_SPC, :SALARIO, :SPC,' +
        ' :TRANSPORTADORA, '
      '   :VENDEDOR)')
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
      '  FOTO,'
      '  FABRICANTE,'
      '  CODIGO_MUNICIPIO,'
      '  NOME_VENDEDOR'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'Where NUM_CPF = :IdCNPJ')
    ModifySQL.Strings = (
      'update CLIENTES'
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
      '  CODIGO_MUNICIPIO = :CODIGO_MUNICIPIO,'
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
      '  FABRICANTE = :FABRICANTE,'
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
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
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
    ParamCheck = True
    UniDirectional = False
    Left = 168
    Top = 128
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object tblPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
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
      Size = 50
    end
    object tblPessoasMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Size = 50
    end
    object tblPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object tblPessoasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 50
    end
    object tblPessoasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 50
    end
    object tblPessoasESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 2
    end
    object tblPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
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
    object tblPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblPessoasCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Size = 50
    end
    object tblPessoasCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Size = 50
    end
    object tblPessoasCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Size = 50
    end
    object tblPessoasCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Size = 2
    end
    object tblPessoasCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
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
      currency = True
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
      FixedChar = True
      Size = 1
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
      FixedChar = True
      Size = 1
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
    object tblPessoasFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblPessoasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblPessoasVENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
    object tblPessoasFATURA_COM_DEBITOS: TIBStringField
      FieldName = 'FATURA_COM_DEBITOS'
      Origin = '"CLIENTES"."FATURA_COM_DEBITOS"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CLIENTES"."NUMERO"'
      Size = 5
    end
    object tblPessoasCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTES"."COMPLEMENTO"'
      Size = 10
    end
    object tblPessoasRETENCAO_ISS: TIBStringField
      FieldName = 'RETENCAO_ISS'
      Origin = '"CLIENTES"."RETENCAO_ISS"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCONSUMIDOR: TIBStringField
      FieldName = 'CONSUMIDOR'
      Origin = '"CLIENTES"."CONSUMIDOR"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasIM: TIBStringField
      FieldName = 'IM'
      Origin = '"CLIENTES"."IM"'
      Size = 10
    end
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 200
    Top = 128
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Clientes_Id, 1) as'
      'Id_Clientes From RDB$DATABASE')
    Left = 232
    Top = 128
  end
  object tblNfDa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DADOS_NFE'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    InsertSQL.Strings = (
      'insert into DADOS_NFE'
      
        '  (ID_DADOS_NFE, ID_CONCESSIONARIA, NF, ITEM, QTDE, CST, CFOP, V' +
        'LR_UNIT, '
      
        '   BASE_ICMS, ALIQ_ICMS, VLR_ICMS, ICMS_SUBST, VLR_IPI, MODELO, ' +
        'ANO_FABRICACAO, '
      
        '   ANO_MODELO, COR, MOTOR, COMBUSTIVEL, MARCA, POTENCIA, RENAVAM' +
        ', PROD_NUMERO, '
      
        '   ID_PECA, ID_NOFI, ID_CONHECIMENTO, VLR_FRETE, VLR_SEGURO, VBC' +
        '_STRET, '
      
        '   PST, VICMS_STRET, PMVAST, PRED_BCST, VBC_ST, PICMS_ST, VICMS_' +
        'ST)'
      'values'
      
        '  (:ID_DADOS_NFE, :ID_CONCESSIONARIA, :NF, :ITEM, :QTDE, :CST, :' +
        'CFOP, :VLR_UNIT, '
      
        '   :BASE_ICMS, :ALIQ_ICMS, :VLR_ICMS, :ICMS_SUBST, :VLR_IPI, :MO' +
        'DELO, :ANO_FABRICACAO, '
      
        '   :ANO_MODELO, :COR, :MOTOR, :COMBUSTIVEL, :MARCA, :POTENCIA, :' +
        'RENAVAM, '
      
        '   :PROD_NUMERO, :ID_PECA, :ID_NOFI, :ID_CONHECIMENTO, :VLR_FRET' +
        'E, :VLR_SEGURO, '
      
        '   :VBC_STRET, :PST, :VICMS_STRET, :PMVAST, :PRED_BCST, :VBC_ST,' +
        ' :PICMS_ST, '
      '   :VICMS_ST)')
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
      '  VLR_SEGURO,'
      '  VBC_STRET,'
      '  PST,'
      '  VICMS_STRET,'
      '  PMVAST,'
      '  PRED_BCST,'
      '  VBC_ST,'
      '  PICMS_ST,'
      '  VICMS_ST'
      'from DADOS_NFE '
      'where'
      '  ID_DADOS_NFE = :ID_DADOS_NFE')
    SelectSQL.Strings = (
      'select * from DADOS_NFE'
      'where id_nofi = :idNofi')
    ModifySQL.Strings = (
      'update DADOS_NFE'
      'set'
      '  ID_DADOS_NFE = :ID_DADOS_NFE,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  NF = :NF,'
      '  ITEM = :ITEM,'
      '  QTDE = :QTDE,'
      '  CST = :CST,'
      '  CFOP = :CFOP,'
      '  VLR_UNIT = :VLR_UNIT,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  VLR_ICMS = :VLR_ICMS,'
      '  ICMS_SUBST = :ICMS_SUBST,'
      '  VLR_IPI = :VLR_IPI,'
      '  MODELO = :MODELO,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  COR = :COR,'
      '  MOTOR = :MOTOR,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  MARCA = :MARCA,'
      '  POTENCIA = :POTENCIA,'
      '  RENAVAM = :RENAVAM,'
      '  PROD_NUMERO = :PROD_NUMERO,'
      '  ID_PECA = :ID_PECA,'
      '  ID_NOFI = :ID_NOFI,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  VLR_FRETE = :VLR_FRETE,'
      '  VLR_SEGURO = :VLR_SEGURO,'
      '  VBC_STRET = :VBC_STRET,'
      '  PST = :PST,'
      '  VICMS_STRET = :VICMS_STRET,'
      '  PMVAST = :PMVAST,'
      '  PRED_BCST = :PRED_BCST,'
      '  VBC_ST = :VBC_ST,'
      '  PICMS_ST = :PICMS_ST,'
      '  VICMS_ST = :VICMS_ST'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    ParamCheck = True
    UniDirectional = False
    Left = 168
    Top = 200
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
    object tblNfDaVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"DADOS_NFE"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object tblNfDaPST: TIBBCDField
      FieldName = 'PST'
      Origin = '"DADOS_NFE"."PST"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"DADOS_NFE"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object tblNfDaPMVAST: TIBBCDField
      FieldName = 'PMVAST'
      Origin = '"DADOS_NFE"."PMVAST"'
      Precision = 9
      Size = 2
    end
    object tblNfDaPRED_BCST: TIBBCDField
      FieldName = 'PRED_BCST'
      Origin = '"DADOS_NFE"."PRED_BCST"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"DADOS_NFE"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object tblNfDaPICMS_ST: TIBBCDField
      FieldName = 'PICMS_ST'
      Origin = '"DADOS_NFE"."PICMS_ST"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"DADOS_NFE"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceNfda: TDataSource
    AutoEdit = False
    DataSet = tblNfDa
    Left = 200
    Top = 200
  end
  object tblPecasEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
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
    Left = 360
    Top = 120
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
    object tblPecasEstoquePRATELEIRA: TIBStringField
      FieldName = 'PRATELEIRA'
      Origin = '"PECAS_ESTOQUE"."PRATELEIRA"'
      Size = 3
    end
    object tblPecasEstoqueESCANINHO_GAVETA: TIBStringField
      FieldName = 'ESCANINHO_GAVETA'
      Origin = '"PECAS_ESTOQUE"."ESCANINHO_GAVETA"'
      Size = 2
    end
  end
  object DataSourceVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblPecasEstoque
    Left = 360
    Top = 152
  end
  object tblCPagar: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CPagar'
      'where'
      '  ID_CPAGAR = :OLD_ID_CPAGAR')
    InsertSQL.Strings = (
      'insert into CPagar'
      
        '  (BANCO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ID_CLIENTES, ID_' +
        'CONCESSIONARIA, '
      
        '   ID_CPAGAR, ID_FORMA_PAGAMENTO, NFISCAL, PAGAMENTO, STATUS, VA' +
        'LOR, VALOR_PAGO, '
      '   VENCIMENTO)'
      'values'
      
        '  (:BANCO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTORICO, :ID_CLIENTE' +
        'S, :ID_CONCESSIONARIA, '
      
        '   :ID_CPAGAR, :ID_FORMA_PAGAMENTO, :NFISCAL, :PAGAMENTO, :STATU' +
        'S, :VALOR, '
      '   :VALOR_PAGO, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CPAGAR,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  NFISCAL,'
      '  CONTA,'
      '  ID_FORMA_PAGAMENTO,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  EMISSAO,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  BANCO,'
      '  HISTORICO,'
      '  STATUS'
      'from CPagar '
      'where'
      '  ID_CPAGAR = :ID_CPAGAR')
    SelectSQL.Strings = (
      'select * from CPagar'
      'where documento = :idDocumento'
      'and Status = '#39'Processado'#39)
    ModifySQL.Strings = (
      'update CPagar'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CPAGAR = :ID_CPAGAR,'
      '  ID_FORMA_PAGAMENTO = :ID_FORMA_PAGAMENTO,'
      '  NFISCAL = :NFISCAL,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_CPAGAR = :OLD_ID_CPAGAR')
    ParamCheck = True
    UniDirectional = False
    Left = 48
    Top = 160
    object tblCPagarID_CPAGAR: TIntegerField
      FieldName = 'ID_CPAGAR'
      Origin = '"CPAGAR"."ID_CPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCPagarID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CPAGAR"."ID_CONCESSIONARIA"'
    end
    object tblCPagarID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CPAGAR"."ID_CLIENTES"'
    end
    object tblCPagarDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CPAGAR"."DOCUMENTO"'
      Size = 10
    end
    object tblCPagarNFISCAL: TIBStringField
      FieldName = 'NFISCAL'
      Origin = '"CPAGAR"."NFISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblCPagarCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CPAGAR"."CONTA"'
      Size = 4
    end
    object tblCPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CPAGAR"."VENCIMENTO"'
    end
    object tblCPagarVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CPAGAR"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCPagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CPAGAR"."EMISSAO"'
    end
    object tblCPagarPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CPAGAR"."PAGAMENTO"'
    end
    object tblCPagarVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CPAGAR"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCPagarBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CPAGAR"."BANCO"'
      Size = 4
    end
    object tblCPagarSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CPAGAR"."STATUS"'
    end
    object tblCPagarID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CPAGAR"."ID_FORMA_PAGAMENTO"'
    end
    object tblCPagarHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CPAGAR"."HISTORICO"'
      Required = True
      Size = 60
    end
  end
  object DataSourceCPagar: TDataSource
    AutoEdit = False
    DataSet = tblCPagar
    Left = 80
    Top = 160
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (ID_PECAS, CODIGO, DESCRICAO, GRUPO, ESPECIAL, COD_PROC, COD_T' +
        'RIB, UNIDADE, '
      
        '   SUBSTITUTO, FORA_LINHA, MIN_PEDIDO, QTD_PEDIDA, ICMS, PRECO, ' +
        'PPS, PRECO_GAR, '
      
        '   IPI, LISTA, SUBST_TRIB, ST_COFINS, NOVASUBS, CFOP1, CFOP2, NC' +
        'M, ORIGINAL, '
      
        '   CST, CODIGO_SGS, VBC_STRET, PST, VICMS_STRET, PMVAST, PRED_BC' +
        'ST, VBC_ST, '
      '   PICMS_ST, VICMS_ST)'
      'values'
      
        '  (:ID_PECAS, :CODIGO, :DESCRICAO, :GRUPO, :ESPECIAL, :COD_PROC,' +
        ' :COD_TRIB, '
      
        '   :UNIDADE, :SUBSTITUTO, :FORA_LINHA, :MIN_PEDIDO, :QTD_PEDIDA,' +
        ' :ICMS, '
      
        '   :PRECO, :PPS, :PRECO_GAR, :IPI, :LISTA, :SUBST_TRIB, :ST_COFI' +
        'NS, :NOVASUBS, '
      
        '   :CFOP1, :CFOP2, :NCM, :ORIGINAL, :CST, :CODIGO_SGS, :VBC_STRE' +
        'T, :PST, '
      
        '   :VICMS_STRET, :PMVAST, :PRED_BCST, :VBC_ST, :PICMS_ST, :VICMS' +
        '_ST)')
    SelectSQL.Strings = (
      'select * from Pecas where Codigo = :idCodigo')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  ID_PECAS = :ID_PECAS,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  GRUPO = :GRUPO,'
      '  ESPECIAL = :ESPECIAL,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  UNIDADE = :UNIDADE,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ICMS = :ICMS,'
      '  PRECO = :PRECO,'
      '  PPS = :PPS,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  ST_COFINS = :ST_COFINS,'
      '  NOVASUBS = :NOVASUBS,'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  NCM = :NCM,'
      '  ORIGINAL = :ORIGINAL,'
      '  CST = :CST,'
      '  CODIGO_SGS = :CODIGO_SGS,'
      '  VBC_STRET = :VBC_STRET,'
      '  PST = :PST,'
      '  VICMS_STRET = :VICMS_STRET,'
      '  PMVAST = :PMVAST,'
      '  PRED_BCST = :PRED_BCST,'
      '  VBC_ST = :VBC_ST,'
      '  PICMS_ST = :PICMS_ST,'
      '  VICMS_ST = :VICMS_ST'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    ParamCheck = True
    UniDirectional = False
    Left = 288
    Top = 152
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
      Size = 60
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
    object tblPecasVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"PECAS"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object tblPecasPST: TIBBCDField
      FieldName = 'PST'
      Origin = '"PECAS"."PST"'
      Precision = 9
      Size = 2
    end
    object tblPecasVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"PECAS"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object tblPecasPMVAST: TIBBCDField
      FieldName = 'PMVAST'
      Origin = '"PECAS"."PMVAST"'
      Precision = 9
      Size = 2
    end
    object tblPecasPRED_BCST: TIBBCDField
      FieldName = 'PRED_BCST'
      Origin = '"PECAS"."PRED_BCST"'
      Precision = 9
      Size = 2
    end
    object tblPecasVBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"PECAS"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object tblPecasPICMS_ST: TIBBCDField
      FieldName = 'PICMS_ST'
      Origin = '"PECAS"."PICMS_ST"'
      Precision = 9
      Size = 2
    end
    object tblPecasVICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"PECAS"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceModelosVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblPecas
    Left = 328
    Top = 152
  end
  object tblPecasFabrica: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PECYAM'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    InsertSQL.Strings = (
      'insert into PECYAM'
      
        '  (CODIGO, CODIGO_NOVO, CUSTO, DESCRICAO, ID_PECYAM, IPI, ORIGEM' +
        ', PESO, '
      '   PPS, PRECO_GARAN, QTDE_EMBAL, REAJUSTE, RESERVADO)'
      'values'
      
        '  (:CODIGO, :CODIGO_NOVO, :CUSTO, :DESCRICAO, :ID_PECYAM, :IPI, ' +
        ':ORIGEM, '
      
        '   :PESO, :PPS, :PRECO_GARAN, :QTDE_EMBAL, :REAJUSTE, :RESERVADO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECYAM,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  CODIGO_NOVO,'
      '  ORIGEM,'
      '  CUSTO,'
      '  PESO,'
      '  QTDE_EMBAL,'
      '  IPI,'
      '  REAJUSTE,'
      '  PRECO_GARAN,'
      '  PPS,'
      '  RESERVADO'
      'from PECYAM '
      'where'
      '  ID_PECYAM = :ID_PECYAM')
    SelectSQL.Strings = (
      'select * from  PECYAM'
      'where Codigo = :IdCodigo')
    ModifySQL.Strings = (
      'update PECYAM'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODIGO_NOVO = :CODIGO_NOVO,'
      '  CUSTO = :CUSTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PECYAM = :ID_PECYAM,'
      '  IPI = :IPI,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PPS = :PPS,'
      '  PRECO_GARAN = :PRECO_GARAN,'
      '  QTDE_EMBAL = :QTDE_EMBAL,'
      '  REAJUSTE = :REAJUSTE,'
      '  RESERVADO = :RESERVADO'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    ParamCheck = True
    UniDirectional = False
    Left = 360
    Top = 218
    object tblPecasFabricaID_PECYAM: TIntegerField
      FieldName = 'ID_PECYAM'
      Origin = '"PECYAM"."ID_PECYAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPecasFabricaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECYAM"."CODIGO"'
      Size = 12
    end
    object tblPecasFabricaCODIGO_NOVO: TIBStringField
      FieldName = 'CODIGO_NOVO'
      Origin = '"PECYAM"."CODIGO_NOVO"'
      Size = 12
    end
    object tblPecasFabricaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PECYAM"."ORIGEM"'
      Size = 1
    end
    object tblPecasFabricaCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PECYAM"."CUSTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasFabricaQTDE_EMBAL: TIBStringField
      FieldName = 'QTDE_EMBAL'
      Origin = '"PECYAM"."QTDE_EMBAL"'
      Size = 5
    end
    object tblPecasFabricaPESO: TIBStringField
      FieldName = 'PESO'
      Origin = '"PECYAM"."PESO"'
      Size = 7
    end
    object tblPecasFabricaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECYAM"."IPI"'
      Precision = 9
      Size = 2
    end
    object tblPecasFabricaREAJUSTE: TIBBCDField
      FieldName = 'REAJUSTE'
      Origin = '"PECYAM"."REAJUSTE"'
      Precision = 9
      Size = 2
    end
    object tblPecasFabricaPRECO_GARAN: TIBBCDField
      FieldName = 'PRECO_GARAN'
      Origin = '"PECYAM"."PRECO_GARAN"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasFabricaPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECYAM"."PPS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasFabricaRESERVADO: TIBStringField
      FieldName = 'RESERVADO'
      Origin = '"PECYAM"."RESERVADO"'
      Size = 2
    end
    object tblPecasFabricaDESCRICAO: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Origin = '"PECYAM"."DESCRICAO"'
      Size = 60
    end
    object tblPecasFabricaNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECYAM"."NCM"'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tblPecasFabrica
    Left = 328
    Top = 218
  end
  object IBQuery3: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Pecas_Id, 1) as'
      'Id_Pecas From RDB$DATABASE')
    Left = 296
    Top = 120
  end
  object IBQuery4: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * from Concessionaria'
      'where CNPJ = :idCNPJ'
      '')
    Left = 288
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCNPJ'
        ParamType = ptUnknown
      end>
  end
  object tblNofi2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofiAfterCancel
    AfterDelete = tblNofiAfterPost
    AfterPost = tblNofiAfterPost
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
      
        '   PIS, PLACA, PROTOCOLO, PROTOCOLO_CANCELAMENTO, QTDE_PROD, REC' +
        'EBIMENTO_TRANSFERENCIA, '
      
        '   RECIBO, SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD, TRANSFERE' +
        'NCIA_PENDENTE, '
      
        '   VAL_FRETE, VAL_ICMS, VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS' +
        ', VAL_SEGURO, '
      '   VAL_SERV, VENDEDOR, XML)'
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
      
        '   :RECEBIMENTO_TRANSFERENCIA, :RECIBO, :SAIDA, :SERIENF, :STATU' +
        'S, :TOT_NOTA, '
      
        '   :TOT_PROD, :TRANSFERENCIA_PENDENTE, :VAL_FRETE, :VAL_ICMS, :V' +
        'AL_ICMS_S, '
      
        '   :VAL_IPI, :VAL_ISS, :VAL_OUTROS, :VAL_SEGURO, :VAL_SERV, :VEN' +
        'DEDOR, '
      '   :XML)')
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
      '  ID_ATENDENTE'
      'from Nofisa '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'Select * from Nofisa'
      'where Numero = :idNumero'
      'and'
      'Id_Concessionaria = :idConcessionaria'
      'and'
      'SerieNF = '#39'e'#39)
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
    Left = 440
    Top = 88
    object tblNofi2ID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblNofi2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblNofi2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
      Required = True
    end
    object tblNofi2NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object tblNofi2SERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object tblNofi2EMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object tblNofi2ORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofi2ENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object tblNofi2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object tblNofi2SAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object tblNofi2HORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object tblNofi2IE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object tblNofi2DESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object tblNofi2DESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object tblNofi2BASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2BASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object tblNofi2VAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object tblNofi2ISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object tblNofi2VAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2TOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object tblNofi2TOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object tblNofi2PIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2COFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object tblNofi2COD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object tblNofi2FRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblNofi2PLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblNofi2DADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 50
    end
    object tblNofi2DADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 50
    end
    object tblNofi2DADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 50
    end
    object tblNofi2DADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 50
    end
    object tblNofi2OBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object tblNofi2QTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object tblNofi2STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object tblNofi2CODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 19
    end
    object tblNofi2DESCRICAO_CODIGO_FISCAL: TIBStringField
      FieldName = 'DESCRICAO_CODIGO_FISCAL'
      Origin = '"NOFISA"."DESCRICAO_CODIGO_FISCAL"'
      Size = 50
    end
    object tblNofi2FORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object tblNofi2CHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 50
    end
    object tblNofi2RECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 50
    end
    object tblNofi2PROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 50
    end
    object tblNofi2ARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 50
    end
    object tblNofi2XML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tblNofi2PROTOCOLO_CANCELAMENTO: TIBStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Origin = '"NOFISA"."PROTOCOLO_CANCELAMENTO"'
      Size = 50
    end
    object tblNofi2MOTIVO_CANCELAMENTO: TIBStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Origin = '"NOFISA"."MOTIVO_CANCELAMENTO"'
      Size = 50
    end
    object tblNofi2DADOS_AD05: TIBStringField
      FieldName = 'DADOS_AD05'
      Origin = '"NOFISA"."DADOS_AD05"'
      Size = 50
    end
    object tblNofi2RECEBIMENTO_TRANSFERENCIA: TDateField
      FieldName = 'RECEBIMENTO_TRANSFERENCIA'
      Origin = '"NOFISA"."RECEBIMENTO_TRANSFERENCIA"'
    end
    object tblNofi2TRANSFERENCIA_PENDENTE: TIBStringField
      FieldName = 'TRANSFERENCIA_PENDENTE'
      Origin = '"NOFISA"."TRANSFERENCIA_PENDENTE"'
      FixedChar = True
      Size = 1
    end
    object tblNofi2ID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"NOFISA"."ID_MECANICO"'
    end
    object tblNofi2ID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"NOFISA"."ID_ATENDENTE"'
    end
    object tblNofi2QUANTIDADE_VOLUMES: TIntegerField
      FieldName = 'QUANTIDADE_VOLUMES'
      Origin = '"NOFISA"."QUANTIDADE_VOLUMES"'
    end
    object tblNofi2NFE_REFERENCIADA: TIBStringField
      FieldName = 'NFE_REFERENCIADA'
      Origin = '"NOFISA"."NFE_REFERENCIADA"'
      Size = 61
    end
    object tblNofi2NUMERO_NFSE: TIBStringField
      FieldName = 'NUMERO_NFSE'
      Origin = '"NOFISA"."NUMERO_NFSE"'
    end
    object tblNofi2CODIGO_NFSE: TIBStringField
      FieldName = 'CODIGO_NFSE'
      Origin = '"NOFISA"."CODIGO_NFSE"'
      Size = 10
    end
    object tblNofi2ARQ_XML_RPS: TIBStringField
      FieldName = 'ARQ_XML_RPS'
      Origin = '"NOFISA"."ARQ_XML_RPS"'
      Size = 100
    end
    object tblNofi2ARQ_XML_NFSE: TIBStringField
      FieldName = 'ARQ_XML_NFSE'
      Origin = '"NOFISA"."ARQ_XML_NFSE"'
      Size = 100
    end
    object tblNofi2XML_NFSE: TWideMemoField
      FieldName = 'XML_NFSE'
      Origin = '"NOFISA"."XML_NFSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object tblNofi2XML_RPS: TWideMemoField
      FieldName = 'XML_RPS'
      Origin = '"NOFISA"."XML_RPS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
  end
  object DataSourceNofi2: TDataSource
    AutoEdit = False
    DataSet = tblNofi2
    Left = 472
    Top = 88
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 288
    Top = 88
  end
end
