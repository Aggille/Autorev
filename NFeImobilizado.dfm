object BoxNFeImobilizado: TBoxNFeImobilizado
  Left = 15
  Top = 145
  Caption = 'NF-e imobilizado ve'#237'culo'
  ClientHeight = 263
  ClientWidth = 395
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
    Left = -1
    Top = -12
    Width = 401
    Height = 267
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 241
      Height = 13
      Caption = 'Gerar nota fiscal eletr'#244'nica de devolu'#231#227'o da NF-e:'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 215
      Height = 13
      Caption = 'Valor da nota fiscal eletr'#244'nica complementar:'
    end
    object NFe: TEdit
      Left = 266
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object Valor: TCurrencyEdit
      Left = 266
      Top = 54
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 266
      Top = 81
      Width = 121
      Height = 26
      Caption = 'Gerar NF'
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
      TabOrder = 2
      OnClick = BtnConfirmaClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 244
    Width = 395
    Height = 19
    Panels = <>
  end
  object tblSeda: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SEDA'
      'where'
      '  ID_SEDA = :OLD_ID_SEDA')
    InsertSQL.Strings = (
      'insert into SEDA'
      
        '  (DESCRICAO_SERVICO, ID_CONCESSIONARIA, ID_NOFI, ID_SEDA, ID_TM' +
        'O, NF, '
      '   PRECO, TEMPO)'
      'values'
      
        '  (:DESCRICAO_SERVICO, :ID_CONCESSIONARIA, :ID_NOFI, :ID_SEDA, :' +
        'ID_TMO, '
      '   :NF, :PRECO, :TEMPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SEDA,'
      '  ID_CONCESSIONARIA,'
      '  ID_NOFI,'
      '  NF,'
      '  ID_TMO,'
      '  DESCRICAO_SERVICO,'
      '  TEMPO,'
      '  PRECO'
      'from SEDA '
      'where'
      '  ID_SEDA = :ID_SEDA')
    SelectSQL.Strings = (
      'select * from SEDA'
      'Where id_Nofi = :idNofisa')
    ModifySQL.Strings = (
      'update SEDA'
      'set'
      '  DESCRICAO_SERVICO = :DESCRICAO_SERVICO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_NOFI = :ID_NOFI,'
      '  ID_SEDA = :ID_SEDA,'
      '  ID_TMO = :ID_TMO,'
      '  NF = :NF,'
      '  PRECO = :PRECO,'
      '  TEMPO = :TEMPO'
      'where'
      '  ID_SEDA = :OLD_ID_SEDA')
    ParamCheck = True
    UniDirectional = False
    Left = 208
    Top = 16
    object tblSedaID_SEDA: TIntegerField
      FieldName = 'ID_SEDA'
      Origin = '"SEDA"."ID_SEDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSedaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SEDA"."ID_CONCESSIONARIA"'
    end
    object tblSedaID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"SEDA"."ID_NOFI"'
    end
    object tblSedaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SEDA"."NF"'
      Size = 8
    end
    object tblSedaID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"SEDA"."ID_TMO"'
    end
    object tblSedaDESCRICAO_SERVICO: TIBStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = '"SEDA"."DESCRICAO_SERVICO"'
      Size = 30
    end
    object tblSedaTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"SEDA"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object tblSedaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SEDA"."PRECO"'
      Precision = 18
      Size = 2
    end
  end
  object tblNofisaFaturas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Nofisa_faturas'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    InsertSQL.Strings = (
      'insert into Nofisa_faturas'
      
        '  (FATURA, ID_FORMAS_PAGAMENTO, ID_NOFISA, ID_NOFISA_FATURAS, VA' +
        'LOR, VENCIMENTO)'
      'values'
      
        '  (:FATURA, :ID_FORMAS_PAGAMENTO, :ID_NOFISA, :ID_NOFISA_FATURAS' +
        ', :VALOR, '
      '   :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NOFISA_FATURAS,'
      '  ID_NOFISA,'
      '  FATURA,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  ID_FORMAS_PAGAMENTO'
      'from Nofisa_faturas '
      'where'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS')
    SelectSQL.Strings = (
      'Select * from Nofisa_faturas'
      'where id_nofisa = :idNofisa')
    ModifySQL.Strings = (
      'update Nofisa_faturas'
      'set'
      '  FATURA = :FATURA,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    ParamCheck = True
    UniDirectional = False
    Left = 144
    Top = 16
    object tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofisaFaturasID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
    end
    object tblNofisaFaturasFATURA: TIBStringField
      FieldName = 'FATURA'
      Origin = '"NOFISA_FATURAS"."FATURA"'
      Size = 10
    end
    object tblNofisaFaturasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"NOFISA_FATURAS"."VENCIMENTO"'
    end
    object tblNofisaFaturasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NOFISA_FATURAS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
    end
  end
  object tblSada: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
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
      'Where NF = :idNumero')
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
    Left = 112
    Top = 16
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
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOFISA'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into NOFISA'
      
        '  (ARQUIVO, BASE_ICM_S, BASE_ICMS, CHAVE, COD_TRANS, CODIGO_FISC' +
        'AL, COFINS, '
      
        '   DADOS_AD01, DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI, DES' +
        'C_PEC, '
      
        '   DESCRICAO_CODIGO_FISCAL, EMISSAO, ENT_SAI, FORMA_PAGAMENTO, F' +
        'RETE_TIPO, '
      
        '   HORA, ID_CLIENTES, ID_CONCESSIONARIA, ID_NOFISA, IE_SUBS, ISS' +
        'QN, NUMERO, '
      
        '   OBS, ORIGEM, PIS, PLACA, PROTOCOLO, PROTOCOLO_CANCELAMENTO, Q' +
        'TDE_PROD, '
      
        '   RECIBO, SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD, VAL_FRETE' +
        ', VAL_ICMS, '
      
        '   VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_SEGURO, VAL_SER' +
        'V, VENDEDOR, '
      '   XML)'
      'values'
      
        '  (:ARQUIVO, :BASE_ICM_S, :BASE_ICMS, :CHAVE, :COD_TRANS, :CODIG' +
        'O_FISCAL, '
      
        '   :COFINS, :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, ' +
        ':DESC_OFI, '
      
        '   :DESC_PEC, :DESCRICAO_CODIGO_FISCAL, :EMISSAO, :ENT_SAI, :FOR' +
        'MA_PAGAMENTO, '
      
        '   :FRETE_TIPO, :HORA, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_NOF' +
        'ISA, :IE_SUBS, '
      
        '   :ISSQN, :NUMERO, :OBS, :ORIGEM, :PIS, :PLACA, :PROTOCOLO, :PR' +
        'OTOCOLO_CANCELAMENTO, '
      
        '   :QTDE_PROD, :RECIBO, :SAIDA, :SERIENF, :STATUS, :TOT_NOTA, :T' +
        'OT_PROD, '
      
        '   :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :VAL_IPI, :VAL_ISS, :VAL_' +
        'OUTROS, '
      '   :VAL_SEGURO, :VAL_SERV, :VENDEDOR, :XML)')
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
      '  PROTOCOLO_CANCELAMENTO'
      'from NOFISA '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'select * from NOFISA'
      'where id_Concessionaria = :idConcessionaria'
      'and'
      'SerieNf = '#39'e'#39
      'and'
      'Numero = :idNumero'
      ''
      '')
    ModifySQL.Strings = (
      'update NOFISA'
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
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  DESCRICAO_CODIGO_FISCAL = :DESCRICAO_CODIGO_FISCAL,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
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
      '  PROTOCOLO = :PROTOCOLO,'
      '  PROTOCOLO_CANCELAMENTO = :PROTOCOLO_CANCELAMENTO,'
      '  QTDE_PROD = :QTDE_PROD,'
      '  RECIBO = :RECIBO,'
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
      '  VENDEDOR = :VENDEDOR,'
      '  XML = :XML'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    ParamCheck = True
    UniDirectional = False
    Left = 80
    Top = 16
    object tblNofisaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblNofisaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblNofisaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
      Required = True
    end
    object tblNofisaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object tblNofisaSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
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
    object tblNofisaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
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
      currency = True
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
    object tblNofisaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object tblNofisaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object tblNofisaCODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 17
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
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 80
    Top = 48
  end
  object DataSourceSada: TDataSource
    AutoEdit = False
    DataSet = tblSada
    Left = 112
    Top = 48
  end
  object DataSourceNofisaFaturas: TDataSource
    AutoEdit = False
    DataSet = tblNofisaFaturas
    Left = 144
    Top = 48
  end
  object DataSourceSeda: TDataSource
    AutoEdit = False
    DataSet = tblSeda
    Left = 208
    Top = 48
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_NotasFiscais_Saida_Id, 1) as'
      'Id_Nofisa From RDB$DATABASE')
    Left = 48
    Top = 16
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Sada_Id, 1) as'
      'Id_Sada From RDB$DATABASE')
    Left = 16
    Top = 16
  end
  object tblSerieNF: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNofisaAfterCancel
    AfterDelete = tblNofisaAfterPost
    AfterPost = tblNofisaAfterPost
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
      'and SerieNF = :IdSerieNF')
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
    Left = 328
    Top = 8
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
    Left = 360
    Top = 8
  end
end
