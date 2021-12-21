object BoxAjusteNFEntrada: TBoxAjusteNFEntrada
  Left = 15
  Top = 85
  Caption = 'Ajuste NF Entrada'
  ClientHeight = 312
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 312
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 46
      Top = 32
      Width = 100
      Height = 13
      Caption = 'Nota fiscal a ajustar:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 292
      Width = 836
      Height = 19
      Panels = <>
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 102
      Width = 793
      Height = 153
      DataSource = DataSourceNfda
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 264
      Top = 261
      Width = 231
      Height = 25
      DataSource = DataSourceNfda
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
      TabOrder = 3
    end
    object NF: TEdit
      Left = 152
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 279
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object tblNfDa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblNfDaAfterCancel
    AfterDelete = tblNfDaAfterPost
    AfterPost = tblNfDaAfterPost
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
      '   QTDE, RENAVAM, VLR_ICMS, VLR_IPI, VLR_UNIT)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :BASE_ICMS, :CFOP, ' +
        ':COMBUSTIVEL, '
      
        '   :COR, :CST, :ICMS_SUBST, :ID_CONCESSIONARIA, :ID_CONHECIMENTO' +
        ', :ID_DADOS_NFE, '
      
        '   :ID_NOFI, :ID_PECA, :ITEM, :MARCA, :MODELO, :MOTOR, :NF, :POT' +
        'ENCIA, '
      
        '   :PROD_NUMERO, :QTDE, :RENAVAM, :VLR_ICMS, :VLR_IPI, :VLR_UNIT' +
        ')')
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
      '  ID_CONHECIMENTO'
      'from DADOS_NFE '
      'where'
      '  ID_DADOS_NFE = :ID_DADOS_NFE')
    SelectSQL.Strings = (
      'select * from DADOS_NFE'
      'where NF = :idNF')
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
      '  VLR_ICMS = :VLR_ICMS,'
      '  VLR_IPI = :VLR_IPI,'
      '  VLR_UNIT = :VLR_UNIT'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    Left = 280
    Top = 208
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
    object tblNfDaVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Origin = '"DADOS_NFE"."VLR_UNIT"'
      Precision = 18
      Size = 10
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
    object tblNfDaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"DADOS_NFE"."BASE_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNfDaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"DADOS_NFE"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVLR_ICMS: TIBBCDField
      FieldName = 'VLR_ICMS'
      Origin = '"DADOS_NFE"."VLR_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNfDaICMS_SUBST: TIBBCDField
      FieldName = 'ICMS_SUBST'
      Origin = '"DADOS_NFE"."ICMS_SUBST"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNfDaVLR_IPI: TIBBCDField
      FieldName = 'VLR_IPI'
      Origin = '"DADOS_NFE"."VLR_IPI"'
      currency = True
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
    object tblNfDaID_PECA: TIntegerField
      FieldName = 'ID_PECA'
      Origin = '"DADOS_NFE"."ID_PECA"'
    end
  end
  object DataSourceNfda: TDataSource
    AutoEdit = False
    DataSet = tblNfDa
    Left = 280
    Top = 240
  end
end
