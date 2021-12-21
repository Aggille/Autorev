object BoxPecasTransferencia: TBoxPecasTransferencia
  Left = 15
  Top = 85
  Caption = 'Recebimento de pe'#231'as em transfer'#234'ncia'
  ClientHeight = 257
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 458
    Height = 257
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 178
      Width = 155
      Height = 13
      Caption = 'Data do recebimento das pe'#231'as:'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 441
      Height = 161
      DataSource = DataSourceNofisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Concession'#225'ria:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero da NF:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOT_NOTA'
          Title.Alignment = taCenter
          Title.Caption = 'Total da NF:'
          Visible = True
        end>
    end
    object BtnConfirma: TBitBtn
      Left = 169
      Top = 202
      Width = 144
      Height = 26
      Caption = 'Confirma recebimento'
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
      OnKeyPress = DBGrid1KeyPress
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 237
      Width = 456
      Height = 19
      Panels = <>
    end
    object Recebimento: TJvDateEdit
      Left = 192
      Top = 175
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 1
      OnKeyPress = DBGrid1KeyPress
    end
  end
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
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
      
        '   FRETE_TIPO, HORA, ID_CLIENTES, ID_CONCESSIONARIA, ID_NOFISA, ' +
        'IE_SUBS, '
      
        '   ISSQN, MOTIVO_CANCELAMENTO, NUMERO, OBS, ORIGEM, PIS, PLACA, ' +
        'PROTOCOLO, '
      
        '   PROTOCOLO_CANCELAMENTO, QTDE_PROD, RECEBIMENTO_TRANSFERENCIA,' +
        ' RECIBO, '
      
        '   SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD, TRANSFERENCIA_PEN' +
        'DENTE, '
      
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
      
        '   :FORMA_PAGAMENTO, :FRETE_TIPO, :HORA, :ID_CLIENTES, :ID_CONCE' +
        'SSIONARIA, '
      
        '   :ID_NOFISA, :IE_SUBS, :ISSQN, :MOTIVO_CANCELAMENTO, :NUMERO, ' +
        ':OBS, :ORIGEM, '
      
        '   :PIS, :PLACA, :PROTOCOLO, :PROTOCOLO_CANCELAMENTO, :QTDE_PROD' +
        ', :RECEBIMENTO_TRANSFERENCIA, '
      
        '   :RECIBO, :SAIDA, :SERIENF, :STATUS, :TOT_NOTA, :TOT_PROD, :TR' +
        'ANSFERENCIA_PENDENTE, '
      
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
      '  PROTOCOLO_CANCELAMENTO,'
      '  MOTIVO_CANCELAMENTO,'
      '  DADOS_AD05,'
      '  RECEBIMENTO_TRANSFERENCIA,'
      '  TRANSFERENCIA_PENDENTE'
      'from Nofisa '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'Select * from Nofisa'
      'where'
      'id_Clientes = :idCliente'
      'and'
      'Transferencia_Pendente = '#39'T'#39)
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
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
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
    Left = 200
    Top = 24
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
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 17
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
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 232
    Top = 24
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
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
      
        '   CODIGO, CODIGO_MUNICIPIO, CODIGOSGS, COENDERECO, COESTADO, CO' +
        'MISSAO, '
      
        '   CONTA, CPF, DESCONTO, EMAIL, EMPR_BAIRRO, EMPR_CEP, EMPR_CIDA' +
        'DE, EMPR_ENDERECO, '
      
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
      
        '   REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR, VENDEDOR_YNO' +
        'VA)'
      'values'
      
        '  (:ADMISSAO, :BAIRRO, :CADASTRO, :CEP, :CIDADE, :CLIENTE, :COBA' +
        'IRRO, :COCEP, '
      
        '   :COCIDADE, :CODIGO, :CODIGO_MUNICIPIO, :CODIGOSGS, :COENDEREC' +
        'O, :COESTADO, '
      
        '   :COMISSAO, :CONTA, :CPF, :DESCONTO, :EMAIL, :EMPR_BAIRRO, :EM' +
        'PR_CEP, '
      
        '   :EMPR_CIDADE, :EMPR_ENDERECO, :EMPR_ESTADO, :EMPR_FONE, :EMPR' +
        'ESA, :ENDERECO, '
      
        '   :ESTADO, :FABRICANTE, :FINANCEIRA, :FONE1, :FONE2, :FONE3, :F' +
        'ORNECEDOR, '
      
        '   :FOTO, :ID_CLIENTES, :ID_CONCESSIONARIA, :IDENTIDADE, :MAE, :' +
        'MECANICO, '
      
        '   :NASCIMENTO, :NOME, :NOME_VENDEDOR, :NUM_CPF, :PAI, :REF_AG_B' +
        'ANC, :REF_BANC, '
      
        '   :REF_COML_FONE1, :REF_COML_FONE2, :REF_COML1, :REF_COML2, :RE' +
        'F_CTA_BANC, '
      
        '   :REF_FONE1, :REF_FONE2, :REF_NOME1, :REF_NOME2, :REG_SPC, :SA' +
        'LARIO, '
      '   :SPC, :TRANSPORTADORA, :VENDEDOR, :VENDEDOR_YNOVA)')
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
      '  NOME_VENDEDOR,'
      '  CODIGOSGS,'
      '  VENDEDOR_YNOVA'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'Where NUM_CPF = :IdCPF')
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
      '  CODIGOSGS = :CODIGOSGS,'
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
      '  VENDEDOR = :VENDEDOR,'
      '  VENDEDOR_YNOVA = :VENDEDOR_YNOVA'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    ParamCheck = True
    UniDirectional = False
    Left = 256
    Top = 72
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
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblPessoasIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
      Required = True
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
      Required = True
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
      Required = True
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
    object tblPessoasCODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
    object tblPessoasVENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 288
    Top = 72
  end
end
