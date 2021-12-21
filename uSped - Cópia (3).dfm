object BoxSped: TBoxSped
  Left = 15
  Top = 85
  Caption = 'Gerar Sped'
  ClientHeight = 523
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object Label3: TLabel
    Left = 135
    Top = 37
    Width = 11
    Height = 13
    Caption = 'a'
  end
  object Label4: TLabel
    Left = 8
    Top = 119
    Width = 145
    Height = 13
    Caption = 'Nome do arquivo a ser gerado'
  end
  object Label5: TLabel
    Left = 8
    Top = 165
    Width = 169
    Height = 13
    Caption = 'Pasta onde ser'#225' gravado o arquivo'
  end
  object Label11: TLabel
    Left = 8
    Top = 211
    Width = 138
    Height = 13
    Caption = 'Tipo de arquivo a ser gerado'
  end
  object Label6: TLabel
    Left = 8
    Top = 257
    Width = 189
    Height = 13
    Caption = 'Perfil de apresenta'#231#227'o do arquivo fiscal'
  end
  object Label7: TLabel
    Left = 8
    Top = 303
    Width = 143
    Height = 13
    Caption = 'Indicador de tipo de atividade'
  end
  object Label1: TLabel
    Left = 319
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Concession'#225'ria'
  end
  object btnGerar_p: TSpeedButton
    Left = 111
    Top = 397
    Width = 97
    Height = 30
    Caption = 'Gerar Arquivo'
    OnClick = btnGerar_PClick
  end
  object BtnInventario: TSpeedButton
    Left = 8
    Top = 397
    Width = 97
    Height = 30
    Caption = 'Gerar Invent'#225'rio'
    OnClick = BtnInventarioClick
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 428
    Width = 105
    Height = 30
    Caption = 'Refazer Invent'#225'rio'
    OnClick = SpeedButton1Click
  end
  object Label8: TLabel
    Left = 493
    Top = 468
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label9: TLabel
    Left = 427
    Top = 468
    Width = 60
    Height = 13
    Caption = 'Atualizando:'
  end
  object edtDI: TwwDBDateTimePicker
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 0
    UnboundDataType = wwDTEdtDate
    OnKeyPress = FormKeyPress
  end
  object edtDF: TwwDBDateTimePicker
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 1
    UnboundDataType = wwDTEdtDate
    OnExit = edtDFExit
    OnKeyPress = FormKeyPress
  end
  object edtNomeArq: TEdit
    Left = 8
    Top = 138
    Width = 305
    Height = 21
    Cursor = crIBeam
    CharCase = ecUpperCase
    TabOrder = 4
    Text = 'SPED_FISCAL.TXT'
    OnKeyPress = FormKeyPress
  end
  object edtPastaDestino: TEdit
    Left = 8
    Top = 184
    Width = 306
    Height = 21
    Cursor = crIBeam
    TabOrder = 5
    Text = 'C:\contabil\'
    OnKeyPress = FormKeyPress
  end
  object edtTipoArq: TComboBox
    Left = 8
    Top = 230
    Width = 305
    Height = 21
    Cursor = crIBeam
    TabOrder = 6
    Text = '0 - Remessa do arquivo original'
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '0 - Remessa do arquivo original'
      '1 - Remessa de arquivo substituto')
  end
  object edtPerfil: TComboBox
    Left = 8
    Top = 276
    Width = 305
    Height = 21
    Cursor = crIBeam
    TabOrder = 7
    Text = 'A - Perfil A'
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object edtTipoAtiv: TComboBox
    Left = 8
    Top = 322
    Width = 305
    Height = 21
    Cursor = crIBeam
    ItemIndex = 0
    TabOrder = 8
    Text = '0 - Industrial ou equiparado a industrial'
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '0 - Industrial ou equiparado a industrial'
      '1 - Outros')
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 651
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 480
  end
  object progresso: TProgressBar
    Left = 0
    Top = 488
    Width = 651
    Height = 16
    Align = alBottom
    TabOrder = 10
    ExplicitTop = 464
  end
  object wwDBGrid1: TwwDBGrid
    Left = 320
    Top = 35
    Width = 320
    Height = 308
    Selected.Strings = (
      'ID_CONCESSIONARIA'#9'10'#9'ID_CONCESSIONARIA'#9'F'#9
      'EMPRESA'#9'50'#9'EMPRESA'#9#9
      'ENDERECO'#9'50'#9'ENDERECO'#9'F'#9
      'CIDADE'#9'20'#9'CIDADE'#9'F'#9
      'ESTADO'#9'2'#9'ESTADO'#9'F'#9
      'CNPJ'#9'18'#9'CNPJ'#9'F'#9
      'IE'#9'12'#9'IE'#9'F'#9
      'CONCESSION'#9'15'#9'CONCESSION'#9'F'#9
      'TELEFONE'#9'12'#9'TELEFONE'#9'F'#9
      'COD_CONCES'#9'9'#9'COD_CONCES'#9'F'#9
      'ALIQUOTA_ISS'#9'10'#9'ALIQUOTA_ISS'#9'F'#9
      'ALIQUOTA_ICMS1'#9'10'#9'ALIQUOTA_ICMS1'#9'F'#9
      'ALIQUOTA_ICMS2'#9'10'#9'ALIQUOTA_ICMS2'#9'F'#9
      'CODIGO_EMPRESA_JB'#9'3'#9'CODIGO_EMPRESA_JB'#9'F'#9
      'IM'#9'12'#9'IM'#9'F'#9
      'CNAE'#9'7'#9'CNAE'#9'F'#9
      'FANTASIA'#9'20'#9'FANTASIA'#9'F'#9
      'CEP'#9'9'#9'CEP'#9'F'#9
      'NUMERO'#9'5'#9'NUMERO'#9'F'#9
      'COMPLEMENTO'#9'4'#9'COMPLEMENTO'#9'F'#9
      'CODIGO_MUNICIPIO'#9'7'#9'CODIGO_MUNICIPIO'#9'F'#9
      'BAIRRO'#9'20'#9'BAIRRO'#9'F'#9
      'HOST'#9'30'#9'HOST'#9'F'#9
      'PORT'#9'3'#9'PORT'#9'F'#9
      'USUARIO'#9'21'#9'USUARIO'#9'F'#9
      'PASS'#9'20'#9'PASS'#9'F'#9
      'CERTIFICADO'#9'50'#9'CERTIFICADO'#9'F'#9
      'LOGO'#9'50'#9'LOGO'#9'F'#9
      'DIVIDIR_NF_GARANTIA'#9'1'#9'DIVIDIR_NF_GARANTIA'#9'F'#9
      'ID_BANCO_CONCESSIONARIA'#9'10'#9'ID_BANCO_CONCESSIONARIA'#9'F'#9)
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    DataSource = dtsFilial
    Options = [dgEditing, dgRowSelect, dgAlwaysShowSelection]
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btnFechar_p: TBitBtn
    Left = 214
    Top = 397
    Width = 89
    Height = 30
    Caption = 'Fechar'
    TabOrder = 9
    OnClick = btnFechar_PClick
    OnKeyPress = FormKeyPress
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 56
    Width = 138
    Height = 62
    Caption = 'Gerar as NFs de emiss'#227'o:'
    ItemIndex = 3
    Items.Strings = (
      'de Terceiros'
      'Pr'#243'prias'
      'Transfer'#234'ncias'
      'Ambas')
    TabOrder = 3
  end
  object CheckBoxH020: TCheckBox
    Left = 336
    Top = 360
    Width = 121
    Height = 17
    Caption = 'Gerar Registro H020'
    TabOrder = 12
  end
  object CheckBoxPecas: TCheckBox
    Left = 336
    Top = 383
    Width = 153
    Height = 17
    Caption = 'Incluir Pecas no Invent'#225'rio'
    TabOrder = 13
  end
  object CheckBoxVeiculos: TCheckBox
    Left = 336
    Top = 406
    Width = 153
    Height = 17
    Caption = 'Incluir Ve'#237'culos no Invent'#225'rio'
    TabOrder = 14
  end
  object Edit1: TEdit
    Left = 504
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 15
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 504
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 16
    Text = 'Edit2'
  end
  object CheckBoxH20VeiculosZerado: TCheckBox
    Left = 336
    Top = 429
    Width = 153
    Height = 17
    Caption = 'Zerar H020 para ve'#237'culos'
    TabOrder = 17
  end
  object Edit3: TEdit
    Left = 119
    Top = 433
    Width = 180
    Height = 21
    TabOrder = 18
    Text = 'C:\Contabil\SPED.txt'
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 464
    Width = 389
    Height = 17
    Max = 10000
    TabOrder = 19
  end
  object ACBrSpedFiscal1: TACBrSPEDFiscal
    Path = '.\'
    LinhasBuffer = 100
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 232
    Top = 25
  end
  object ActionList1: TActionList
    Left = 272
    Top = 24
    object actGerar: TAction
      Caption = 'actGerar'
    end
    object actBloco_0: TAction
      Category = 'Blocos'
      Caption = 'actBloco_0'
      OnExecute = actBloco_0Execute
    end
    object actBloco_C: TAction
      Category = 'Blocos'
      Caption = 'actBloco_C'
      OnExecute = actBloco_CExecute
    end
    object actBloco_1: TAction
      Category = 'Blocos'
      Caption = 'actBloco_1'
      OnExecute = actBloco_1Execute
    end
    object actBloco_9: TAction
      Category = 'Blocos'
      Caption = 'actBloco_9'
      OnExecute = actBloco_9Execute
    end
    object actGeraDataNFCompra: TAction
      Caption = 'actGeraDadosNFCompra'
    end
    object actBloco_A: TAction
      Category = 'Blocos'
      Caption = 'actBloco_A'
      OnExecute = actBloco_AExecute
    end
  end
  object trnSped: TIBTransaction
    Active = True
    DefaultDatabase = FDB1.IBDatabase
    Left = 88
  end
  object dtsFilial: TDataSource
    DataSet = qryFilial
    Left = 496
    Top = 24
  end
  object dtsNf: TDataSource
    DataSet = qryNf
    Left = 376
    Top = 24
  end
  object dtsItemNf: TDataSource
    DataSet = qryItemNf
    Left = 408
    Top = 24
  end
  object dtsDupl: TDataSource
    DataSet = qryDupl
    Left = 464
    Top = 24
  end
  object dtsTotItem: TDataSource
    DataSet = qryTotItem
    Left = 528
    Top = 24
  end
  object dtsServicosNf: TDataSource
    DataSet = qryServicosNf
    Left = 436
    Top = 24
  end
  object dtsTotServicosNf: TDataSource
    DataSet = qryTotServicosNf
    Left = 560
    Top = 24
  end
  object tblAux190: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 64
    object tblAux190CST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object tblAux190CFOP: TStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Size = 4
    end
    object tblAux190ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object tblAux190TOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object tblAux190BASE_ICMS: TCurrencyField
      FieldName = 'BASE_ICMS'
    end
    object tblAux190ICMS: TCurrencyField
      FieldName = 'ICMS'
    end
    object tblAux190BASE_ICMS_ST: TCurrencyField
      FieldName = 'BASE_ICMS_ST'
    end
    object tblAux190ICMS_ST: TCurrencyField
      FieldName = 'ICMS_ST'
    end
    object tblAux190VLR_IPI: TCurrencyField
      FieldName = 'VLR_IPI'
    end
  end
  object dtsNfe: TDataSource
    DataSet = qryNfe
    Left = 376
    Top = 192
  end
  object dtsiItemNfe: TDataSource
    DataSet = qryItemNfe
    Left = 408
    Top = 192
  end
  object dtsTotItemE: TDataSource
    DataSet = qryTotItemE
    Left = 440
    Top = 192
  end
  object qryNf: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFISA'
      'WHERE'
      'EMISSAO BETWEEN :INICIO AND :FINAL AND '
      'ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 376
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object qryNfID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNfID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryNfID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
      Required = True
    end
    object qryNfNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object qryNfSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object qryNfEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object qryNfORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object qryNfENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object qryNfVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object qryNfSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object qryNfHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object qryNfIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object qryNfDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object qryNfDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object qryNfBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryNfBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object qryNfVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object qryNfISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object qryNfVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object qryNfTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object qryNfTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object qryNfPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object qryNfCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object qryNfCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 5
    end
    object qryNfFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryNfPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object qryNfDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 50
    end
    object qryNfDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 50
    end
    object qryNfDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 50
    end
    object qryNfDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 50
    end
    object qryNfOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object qryNfQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object qryNfSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object qryNfCODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 19
    end
    object qryNfDESCRICAO_CODIGO_FISCAL: TIBStringField
      FieldName = 'DESCRICAO_CODIGO_FISCAL'
      Origin = '"NOFISA"."DESCRICAO_CODIGO_FISCAL"'
      Size = 60
    end
    object qryNfFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object qryNfCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 60
    end
    object qryNfRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 60
    end
    object qryNfPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 60
    end
    object qryNfARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 60
    end
    object qryNfXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryNfPROTOCOLO_CANCELAMENTO: TIBStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Origin = '"NOFISA"."PROTOCOLO_CANCELAMENTO"'
      Size = 60
    end
    object qryNfMOTIVO_CANCELAMENTO: TIBStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Origin = '"NOFISA"."MOTIVO_CANCELAMENTO"'
      Size = 60
    end
    object qryNfDADOS_AD05: TIBStringField
      FieldName = 'DADOS_AD05'
      Origin = '"NOFISA"."DADOS_AD05"'
      Size = 50
    end
    object qryNfRECEBIMENTO_TRANSFERENCIA: TDateField
      FieldName = 'RECEBIMENTO_TRANSFERENCIA'
      Origin = '"NOFISA"."RECEBIMENTO_TRANSFERENCIA"'
    end
    object qryNfTRANSFERENCIA_PENDENTE: TIBStringField
      FieldName = 'TRANSFERENCIA_PENDENTE'
      Origin = '"NOFISA"."TRANSFERENCIA_PENDENTE"'
      FixedChar = True
      Size = 1
    end
    object qryNfID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"NOFISA"."ID_MECANICO"'
    end
    object qryNfID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"NOFISA"."ID_ATENDENTE"'
    end
    object qryNfQUANTIDADE_VOLUMES: TIntegerField
      FieldName = 'QUANTIDADE_VOLUMES'
      Origin = '"NOFISA"."QUANTIDADE_VOLUMES"'
    end
    object qryNfNUMERO_NFSE: TIBStringField
      FieldName = 'NUMERO_NFSE'
      Origin = '"NOFISA"."NUMERO_NFSE"'
    end
    object qryNfNFE_REFERENCIADA: TIBStringField
      FieldName = 'NFE_REFERENCIADA'
      Origin = '"NOFISA"."NFE_REFERENCIADA"'
      Size = 60
    end
    object qryNfCODIGO_NFSE: TIBStringField
      FieldName = 'CODIGO_NFSE'
      Origin = '"NOFISA"."CODIGO_NFSE"'
      Size = 10
    end
    object qryNfARQ_XML_RPS: TIBStringField
      FieldName = 'ARQ_XML_RPS'
      Origin = '"NOFISA"."ARQ_XML_RPS"'
      Size = 100
    end
    object qryNfARQ_XML_NFSE: TIBStringField
      FieldName = 'ARQ_XML_NFSE'
      Origin = '"NOFISA"."ARQ_XML_NFSE"'
      Size = 100
    end
    object qryNfXML_NFSE: TMemoField
      FieldName = 'XML_NFSE'
      Origin = '"NOFISA"."XML_NFSE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryNfXML_RPS: TMemoField
      FieldName = 'XML_RPS'
      Origin = '"NOFISA"."XML_RPS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object qryItemNf: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNf
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      's.*, p.cod_proc, p.ST_COFINS, p.SUBST_TRIB'
      ''
      'FROM SADA s'
      ''
      'left join pecas p on p.id_pecas = s.id_pecas'
      ''
      'WHERE'
      's.ID_NOFISA = :ID_NOFISA')
    Left = 408
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object qryItemNfID_SADA: TIntegerField
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemNfID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
      Required = True
    end
    object qryItemNfID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryItemNfNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SADA"."NF"'
      Size = 8
    end
    object qryItemNfCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"SADA"."CODIGO"'
      Size = 17
    end
    object qryItemNfDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SADA"."DESCRICAO"'
      Size = 80
    end
    object qryItemNfQTDE: TSmallintField
      FieldName = 'QTDE'
      Origin = '"SADA"."QTDE"'
    end
    object qryItemNfUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Size = 3
    end
    object qryItemNfCST: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object qryItemNfSUBST: TIBStringField
      FieldName = 'SUBST'
      Origin = '"SADA"."SUBST"'
      Size = 1
    end
    object qryItemNfALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object qryItemNfICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object qryItemNfPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object qryItemNfCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
    object qryItemNfNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
    end
    object qryItemNfST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"SADA"."ST_COFINS"'
      Size = 1
    end
    object qryItemNfANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"SADA"."ANO_MODELO"'
      Size = 4
    end
    object qryItemNfANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"SADA"."ANO_FABRICACAO"'
      Size = 4
    end
    object qryItemNfRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"SADA"."RENAVAM"'
      Size = 15
    end
    object qryItemNfPOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"SADA"."POTENCIA"'
      Size = 3
    end
    object qryItemNfCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"SADA"."COR"'
      Size = 80
    end
    object qryItemNfCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"SADA"."COMBUSTIVEL"'
    end
    object qryItemNfPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"SADA"."PLACA"'
      Size = 80
    end
    object qryItemNfMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"SADA"."MOTOR"'
      Size = 15
    end
    object qryItemNfCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"SADA"."CHASSI"'
    end
    object qryItemNfMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"SADA"."MARCA"'
      Size = 10
    end
    object qryItemNfMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SADA"."MODELO"'
    end
    object qryItemNfSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SADA"."STATUS"'
    end
    object qryItemNfBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"SADA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"SADA"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object qryItemNfID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"SADA"."ID_PECAS"'
    end
    object qryItemNfNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"SADA"."NCM"'
      Size = 10
    end
    object qryItemNfCILINDRADAS: TIntegerField
      FieldName = 'CILINDRADAS'
      Origin = '"SADA"."CILINDRADAS"'
    end
    object qryItemNfCOD_PROC: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object qryItemNfST_COFINS1: TIBStringField
      FieldName = 'ST_COFINS1'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object qryItemNfSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object qryItemNfVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = '"SADA"."VL_PIS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfCST_PIS: TIBStringField
      FieldName = 'CST_PIS'
      Origin = '"SADA"."CST_PIS"'
      Size = 3
    end
    object qryItemNfVL_BC_PIS: TIBBCDField
      FieldName = 'VL_BC_PIS'
      Origin = '"SADA"."VL_BC_PIS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfALIQ_PIS_PERC: TIBBCDField
      FieldName = 'ALIQ_PIS_PERC'
      Origin = '"SADA"."ALIQ_PIS_PERC"'
      Precision = 9
      Size = 2
    end
    object qryItemNfVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = '"SADA"."VL_COFINS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfCST_COFINS: TIBStringField
      FieldName = 'CST_COFINS'
      Origin = '"SADA"."CST_COFINS"'
      Size = 3
    end
    object qryItemNfVL_BC_COFINS: TIBBCDField
      FieldName = 'VL_BC_COFINS'
      Origin = '"SADA"."VL_BC_COFINS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfALIQ_COFINS_PERC: TIBBCDField
      FieldName = 'ALIQ_COFINS_PERC'
      Origin = '"SADA"."ALIQ_COFINS_PERC"'
      Precision = 9
      Size = 2
    end
    object qryItemNfOUTRO_VALOR: TIBBCDField
      FieldName = 'OUTRO_VALOR'
      Origin = '"SADA"."OUTRO_VALOR"'
      Precision = 18
      Size = 2
    end
    object qryItemNfVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"SADA"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object qryItemNfPST: TIBBCDField
      FieldName = 'PST'
      Origin = '"SADA"."PST"'
      Precision = 9
      Size = 2
    end
    object qryItemNfVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"SADA"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object qryItemNfPRED_BCEFET: TIBBCDField
      FieldName = 'PRED_BCEFET'
      Origin = '"SADA"."PRED_BCEFET"'
      Precision = 9
      Size = 2
    end
    object qryItemNfVBC_EFET: TIBBCDField
      FieldName = 'VBC_EFET'
      Origin = '"SADA"."VBC_EFET"'
      Precision = 18
      Size = 2
    end
    object qryItemNfPICMS_EFET: TIBBCDField
      FieldName = 'PICMS_EFET'
      Origin = '"SADA"."PICMS_EFET"'
      Precision = 9
      Size = 2
    end
    object qryItemNfVICMS_EFET: TIBBCDField
      FieldName = 'VICMS_EFET'
      Origin = '"SADA"."VICMS_EFET"'
      Precision = 18
      Size = 2
    end
  end
  object qryDupl: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNf
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFISA_FATURAS'
      'WHERE'
      'ID_NOFISA = :ID_NOFISA')
    Left = 464
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object qryDuplID_NOFISA_FATURAS: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDuplID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
      Required = True
    end
    object qryDuplFATURA: TIBStringField
      FieldName = 'FATURA'
      Origin = '"NOFISA_FATURAS"."FATURA"'
      Size = 10
    end
    object qryDuplVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"NOFISA_FATURAS"."VENCIMENTO"'
    end
    object qryDuplVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NOFISA_FATURAS"."VALOR"'
      Precision = 18
      Size = 2
    end
    object qryDuplID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
      Required = True
    end
  end
  object qryServicosNf: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNf
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM SEDA'
      'WHERE'
      'ID_NOFI = :ID_NOFISA')
    Left = 440
    Top = 65528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryServicosNfID_SEDA: TIntegerField
      FieldName = 'ID_SEDA'
      Origin = '"SEDA"."ID_SEDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryServicosNfID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SEDA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryServicosNfID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"SEDA"."ID_NOFI"'
      Required = True
    end
    object qryServicosNfNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SEDA"."NF"'
      Size = 8
    end
    object qryServicosNfID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"SEDA"."ID_TMO"'
      Required = True
    end
    object qryServicosNfTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"SEDA"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object qryServicosNfPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SEDA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object qryServicosNfDESCRICAO_SERVICO: TIBStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = '"SEDA"."DESCRICAO_SERVICO"'
      Size = 50
    end
  end
  object qryFilial: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  * from CONCESSIONARIA'
      'where ativa = '#39'T'#39)
    Left = 496
    Top = 65528
    object qryFilialID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFilialEMPRESA: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object qryFilialENDERECO: TIBStringField
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = '"CONCESSIONARIA"."ENDERECO"'
      Required = True
      Size = 50
    end
    object qryFilialCIDADE: TIBStringField
      DisplayWidth = 20
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
    end
    object qryFilialESTADO: TIBStringField
      DisplayWidth = 2
      FieldName = 'ESTADO'
      Origin = '"CONCESSIONARIA"."ESTADO"'
      Required = True
      Size = 2
    end
    object qryFilialCNPJ: TIBStringField
      DisplayWidth = 18
      FieldName = 'CNPJ'
      Origin = '"CONCESSIONARIA"."CNPJ"'
      Size = 18
    end
    object qryFilialIE: TIBStringField
      DisplayWidth = 12
      FieldName = 'IE'
      Origin = '"CONCESSIONARIA"."IE"'
      Size = 12
    end
    object qryFilialCONCESSION: TIBStringField
      DisplayWidth = 15
      FieldName = 'CONCESSION'
      Origin = '"CONCESSIONARIA"."CONCESSION"'
      Size = 15
    end
    object qryFilialTELEFONE: TIBStringField
      DisplayWidth = 12
      FieldName = 'TELEFONE'
      Origin = '"CONCESSIONARIA"."TELEFONE"'
      Size = 12
    end
    object qryFilialCOD_CONCES: TIBStringField
      DisplayWidth = 9
      FieldName = 'COD_CONCES'
      Origin = '"CONCESSIONARIA"."COD_CONCES"'
      Size = 9
    end
    object qryFilialALIQUOTA_ISS: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ISS"'
      Precision = 9
      Size = 4
    end
    object qryFilialALIQUOTA_ICMS1: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ICMS1'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS1"'
      Precision = 9
      Size = 4
    end
    object qryFilialALIQUOTA_ICMS2: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ICMS2'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS2"'
      Precision = 9
      Size = 4
    end
    object qryFilialCODIGO_EMPRESA_JB: TIBStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_EMPRESA_JB'
      Origin = '"CONCESSIONARIA"."CODIGO_EMPRESA_JB"'
      Size = 3
    end
    object qryFilialIM: TIBStringField
      DisplayWidth = 12
      FieldName = 'IM'
      Origin = '"CONCESSIONARIA"."IM"'
      Size = 12
    end
    object qryFilialCNAE: TIBStringField
      DisplayWidth = 7
      FieldName = 'CNAE'
      Origin = '"CONCESSIONARIA"."CNAE"'
      Size = 7
    end
    object qryFilialFANTASIA: TIBStringField
      DisplayWidth = 20
      FieldName = 'FANTASIA'
      Origin = '"CONCESSIONARIA"."FANTASIA"'
    end
    object qryFilialCEP: TIBStringField
      DisplayWidth = 9
      FieldName = 'CEP'
      Origin = '"CONCESSIONARIA"."CEP"'
      Size = 9
    end
    object qryFilialNUMERO: TIBStringField
      DisplayWidth = 5
      FieldName = 'NUMERO'
      Origin = '"CONCESSIONARIA"."NUMERO"'
      Size = 5
    end
    object qryFilialCOMPLEMENTO: TIBStringField
      DisplayWidth = 4
      FieldName = 'COMPLEMENTO'
      Origin = '"CONCESSIONARIA"."COMPLEMENTO"'
      Size = 4
    end
    object qryFilialCODIGO_MUNICIPIO: TIBStringField
      DisplayWidth = 7
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CONCESSIONARIA"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object qryFilialBAIRRO: TIBStringField
      DisplayWidth = 20
      FieldName = 'BAIRRO'
      Origin = '"CONCESSIONARIA"."BAIRRO"'
    end
    object qryFilialHOST: TIBStringField
      DisplayWidth = 30
      FieldName = 'HOST'
      Origin = '"CONCESSIONARIA"."HOST"'
      Size = 30
    end
    object qryFilialPORT: TIBStringField
      DisplayWidth = 3
      FieldName = 'PORT'
      Origin = '"CONCESSIONARIA"."PORT"'
      Size = 3
    end
    object qryFilialUSUARIO: TIBStringField
      DisplayWidth = 21
      FieldName = 'USUARIO'
      Origin = '"CONCESSIONARIA"."USUARIO"'
      Size = 21
    end
    object qryFilialPASS: TIBStringField
      DisplayWidth = 20
      FieldName = 'PASS'
      Origin = '"CONCESSIONARIA"."PASS"'
    end
    object qryFilialCERTIFICADO: TIBStringField
      DisplayWidth = 50
      FieldName = 'CERTIFICADO'
      Origin = '"CONCESSIONARIA"."CERTIFICADO"'
      Size = 50
    end
    object qryFilialLOGO: TIBStringField
      DisplayWidth = 50
      FieldName = 'LOGO'
      Origin = '"CONCESSIONARIA"."LOGO"'
      Size = 50
    end
    object qryFilialDIVIDIR_NF_GARANTIA: TIBStringField
      DisplayWidth = 1
      FieldName = 'DIVIDIR_NF_GARANTIA'
      Origin = '"CONCESSIONARIA"."DIVIDIR_NF_GARANTIA"'
      FixedChar = True
      Size = 1
    end
    object qryFilialID_BANCO_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_BANCO_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_BANCO_CONCESSIONARIA"'
    end
  end
  object qryTotItem: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNf
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      ''
      'SUM( PRECO * QTDE ) AS BASE_ICMS,'
      'SUM(  ( PRECO  * QTDE ) * ALIQ_ICMS ) AS ICMS,'
      'SUM( PRECO * QTDE ) AS TOTAL,'
      'ALIQ_ICMS,'
      'CST,'
      'CFOP'
      ''
      'FROM SADA'
      ''
      'WHERE ID_NOFISA = :ID_NOFISA'
      ''
      'GROUP BY'
      ''
      'ALIQ_ICMS, '
      'CST,'
      'CFOP')
    Left = 528
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object qryTotItemBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryTotItemICMS: TIBBCDField
      FieldName = 'ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qryTotItemTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryTotItemALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object qryTotItemCST: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object qryTotItemCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
  end
  object qryTotServicosNf: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNf
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      ''
      'SUM( PRECO  ) AS TOTAL'
      ''
      'FROM SEDA'
      ''
      'WHERE ID_NOFI= :ID_NOFISA'
      '')
    Left = 560
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object qryTotServicosNfTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object qryNfe: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFI'
      'WHERE'
      'SAIDA BETWEEN :INICIO AND :FINAL AND '
      'ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      ''
      '')
    Left = 376
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object qryNfeID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"NOFI"."ID_NOFI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNfeID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFI"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryNfeID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFI"."ID_CLIENTES"'
      Required = True
    end
    object qryNfeID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"NOFI"."ID_CONHECIMENTO"'
      Required = True
    end
    object qryNfeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"NOFI"."NUMERO"'
      FixedChar = True
      Size = 8
    end
    object qryNfeSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOFI"."SERIE"'
      FixedChar = True
      Size = 2
    end
    object qryNfeEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFI"."EMISSAO"'
    end
    object qryNfeCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"NOFI"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object qryNfeORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFI"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object qryNfeENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFI"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object qryNfeVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"NOFI"."VENDEDOR"'
      FixedChar = True
      Size = 3
    end
    object qryNfeCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"NOFI"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object qryNfeSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFI"."SAIDA"'
    end
    object qryNfeHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFI"."HORA"'
      FixedChar = True
      Size = 5
    end
    object qryNfeNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"NOFI"."NAT_OP"'
      FixedChar = True
      Size = 40
    end
    object qryNfeIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFI"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object qryNfeDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFI"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object qryNfeDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFI"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object qryNfeICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"NOFI"."ICMS"'
      Precision = 9
      Size = 2
    end
    object qryNfeBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      Precision = 18
      Size = 10
    end
    object qryNfeVAL_ICMS: TFMTBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      Precision = 18
      Size = 10
    end
    object qryNfeBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFI"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFI"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFI"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFI"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFI"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFI"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFI"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object qryNfeISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFI"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object qryNfeVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFI"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object qryNfeTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFI"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object qryNfeTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFI"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object qryNfePIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFI"."PIS"'
      Precision = 18
      Size = 2
    end
    object qryNfeCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFI"."COFINS"'
      Precision = 18
      Size = 2
    end
    object qryNfeCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFI"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object qryNfeFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFI"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryNfePLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFI"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object qryNfeDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFI"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object qryNfeDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFI"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object qryNfeDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFI"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object qryNfeDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFI"."DADOS_AD04"'
      FixedChar = True
      Size = 30
    end
    object qryNfeOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFI"."OBS"'
      FixedChar = True
    end
    object qryNfeQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFI"."QTDE_PROD"'
    end
    object qryNfeSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFI"."STATUS"'
    end
    object qryNfeVAL_PIS: TIBBCDField
      FieldName = 'VAL_PIS'
      Origin = '"NOFI"."VAL_PIS"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_COFINS: TIBBCDField
      FieldName = 'VAL_COFINS'
      Origin = '"NOFI"."VAL_COFINS"'
      Precision = 18
      Size = 2
    end
    object qryNfeCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFI"."CHAVE"'
      Size = 60
    end
    object qryNfeRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFI"."RECIBO"'
      Size = 60
    end
    object qryNfePROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFI"."PROTOCOLO"'
      Size = 60
    end
    object qryNfeARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFI"."ARQUIVO"'
      Size = 60
    end
    object qryNfeXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFI"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryNfePROTOCOLO_CONSULTA: TIBStringField
      FieldName = 'PROTOCOLO_CONSULTA'
      Origin = '"NOFI"."PROTOCOLO_CONSULTA"'
      Size = 60
    end
    object qryNfeCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"NOFI"."CFOP"'
      FixedChar = True
      Size = 14
    end
  end
  object qryItemNfe: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNfe
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'dn.*, p.cst, p.ST_COFINS'
      'FROM DADOS_NFE dn'
      ''
      'LEFT JOIN pecas p ON p.ID_pecas = dn.ID_peca'
      ''
      ''
      'WHERE'
      'dn.ID_NOFI = :ID_NOFI'
      '')
    Left = 408
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFI'
        ParamType = ptUnknown
      end>
    object qryItemNfeID_DADOS_NFE: TIntegerField
      FieldName = 'ID_DADOS_NFE'
      Origin = '"DADOS_NFE"."ID_DADOS_NFE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemNfeID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DADOS_NFE"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryItemNfeNF: TIBStringField
      FieldName = 'NF'
      Origin = '"DADOS_NFE"."NF"'
      Size = 8
    end
    object qryItemNfeITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"DADOS_NFE"."ITEM"'
    end
    object qryItemNfeQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = '"DADOS_NFE"."QTDE"'
    end
    object qryItemNfeCST: TIBStringField
      FieldName = 'CST'
      Origin = '"DADOS_NFE"."CST"'
      Size = 3
    end
    object qryItemNfeCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"DADOS_NFE"."CFOP"'
      Required = True
    end
    object qryItemNfeVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Origin = '"DADOS_NFE"."VLR_UNIT"'
      Precision = 18
      Size = 10
    end
    object qryItemNfeBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"DADOS_NFE"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfeALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"DADOS_NFE"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object qryItemNfeVLR_ICMS: TIBBCDField
      FieldName = 'VLR_ICMS'
      Origin = '"DADOS_NFE"."VLR_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryItemNfeICMS_SUBST: TIBBCDField
      FieldName = 'ICMS_SUBST'
      Origin = '"DADOS_NFE"."ICMS_SUBST"'
      Precision = 18
      Size = 2
    end
    object qryItemNfeVLR_IPI: TIBBCDField
      FieldName = 'VLR_IPI'
      Origin = '"DADOS_NFE"."VLR_IPI"'
      Precision = 18
      Size = 2
    end
    object qryItemNfeMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"DADOS_NFE"."MODELO"'
    end
    object qryItemNfeANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"DADOS_NFE"."ANO_FABRICACAO"'
      Size = 4
    end
    object qryItemNfeANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"DADOS_NFE"."ANO_MODELO"'
      Size = 4
    end
    object qryItemNfeCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"DADOS_NFE"."COR"'
      Size = 10
    end
    object qryItemNfeMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"DADOS_NFE"."MOTOR"'
      Size = 15
    end
    object qryItemNfeCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"DADOS_NFE"."COMBUSTIVEL"'
    end
    object qryItemNfeMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"DADOS_NFE"."MARCA"'
      Size = 10
    end
    object qryItemNfePOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"DADOS_NFE"."POTENCIA"'
      Size = 3
    end
    object qryItemNfeRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"DADOS_NFE"."RENAVAM"'
      Size = 15
    end
    object qryItemNfePROD_NUMERO: TIntegerField
      FieldName = 'PROD_NUMERO'
      Origin = '"DADOS_NFE"."PROD_NUMERO"'
    end
    object qryItemNfeID_PECA: TIntegerField
      FieldName = 'ID_PECA'
      Origin = '"DADOS_NFE"."ID_PECA"'
    end
    object qryItemNfeID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"DADOS_NFE"."ID_NOFI"'
      Required = True
    end
    object qryItemNfeID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"DADOS_NFE"."ID_CONHECIMENTO"'
      Required = True
    end
    object qryItemNfeVLR_FRETE: TFMTBCDField
      FieldName = 'VLR_FRETE'
      Origin = '"DADOS_NFE"."VLR_FRETE"'
      Precision = 18
      Size = 10
    end
    object qryItemNfeVLR_SEGURO: TFMTBCDField
      FieldName = 'VLR_SEGURO'
      Origin = '"DADOS_NFE"."VLR_SEGURO"'
      Precision = 18
      Size = 10
    end
    object qryItemNfeCST1: TIBStringField
      FieldName = 'CST1'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
    object qryItemNfeST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object qryItemNfeVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"DADOS_NFE"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object qryItemNfePST: TIBBCDField
      FieldName = 'PST'
      Origin = '"DADOS_NFE"."PST"'
      Precision = 9
      Size = 2
    end
    object qryItemNfeVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"DADOS_NFE"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object qryItemNfePMVAST: TIBBCDField
      FieldName = 'PMVAST'
      Origin = '"DADOS_NFE"."PMVAST"'
      Precision = 9
      Size = 2
    end
    object qryItemNfePRED_BCST: TIBBCDField
      FieldName = 'PRED_BCST'
      Origin = '"DADOS_NFE"."PRED_BCST"'
      Precision = 9
      Size = 2
    end
    object qryItemNfeVBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"DADOS_NFE"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object qryItemNfePICMS_ST: TIBBCDField
      FieldName = 'PICMS_ST'
      Origin = '"DADOS_NFE"."PICMS_ST"'
      Precision = 9
      Size = 2
    end
    object qryItemNfeVICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"DADOS_NFE"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
  end
  object qryTotItemE: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNfe
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      ''
      'SUM( VLR_UNIT* QTDE ) AS BASE_ICMS,'
      'SUM(  ( VLR_UNIT  * QTDE ) * ALIQ_ICMS ) AS ICMS,'
      'SUM( VLR_UNIT * QTDE ) AS TOTAL,'
      'ALIQ_ICMS,'
      'CST,'
      'CFOP'
      ''
      'FROM DADOS_NFE'
      ''
      'WHERE ID_NOFI = :ID_NOFI'
      ''
      'GROUP BY'
      ''
      'ALIQ_ICMS, '
      'CST,'
      'CFOP')
    Left = 440
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFI'
        ParamType = ptUnknown
      end>
    object qryTotItemEBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 10
    end
    object qryTotItemEICMS: TFMTBCDField
      FieldName = 'ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 12
    end
    object qryTotItemETOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 10
    end
    object qryTotItemEALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"DADOS_NFE"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object qryTotItemECST: TIBStringField
      FieldName = 'CST'
      Origin = '"DADOS_NFE"."CST"'
      Size = 3
    end
    object qryTotItemECFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"DADOS_NFE"."CFOP"'
      Required = True
    end
  end
  object tblClientes: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'C.NOME,'
      'C.ID_CLIENTES,'
      'C.NUM_CPF,'
      'C.CODIGO_MUNICIPIO,'
      'C.ENDERECO,'
      'C.BAIRRO,'
      'C.ESTADO,'
      'C.CPF,'
      'C.NUMERO, '
      'C.COMPLEMENTO,'
      'C.IDENTIDADE'
      ''
      'FROM '
      'NOFISA N'
      ''
      'INNER JOIN CLIENTES C ON C.ID_CLIENTES = N.ID_CLIENTES'
      ''
      'WHERE '
      'N.EMISSAO BETWEEN :INICIO AND :FINAL '
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    Left = 504
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblClientesID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblClientesNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblClientesCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblClientesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblClientesESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblClientesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblClientesNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CLIENTES"."NUMERO"'
      Size = 5
    end
    object tblClientesCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTES"."COMPLEMENTO"'
      Size = 10
    end
    object tblClientesIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
  end
  object tblVeiculos: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'V.MARCA,'
      'V.MODELO,'
      'V.COR,'
      'V.COMBUSTIVEL,'
      'V.ANO_MODELO,'
      'V.ANO_FABRICACAO,'
      'V.CHASSI,'
      'V.NCM,'
      'V.CLASSIF_FISCAL'
      ''
      'FROM '
      'SADA S'
      ''
      'INNER JOIN VEICULOS V ON S.CHASSI = V.CHASSI'
      'INNER JOIN NOFISA N ON N.ID_NOFISA = S.ID_NOFISA'
      ''
      'WHERE'
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 440
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblVeiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object tblVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object tblVeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object tblVeiculosNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VEICULOS"."NCM"'
      Size = 10
    end
    object tblVeiculosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
  end
  object tblCodigoConta: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  * from Clientes'
      'where CPF = :idCNPJ')
    Left = 536
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCNPJ'
        ParamType = ptUnknown
      end>
    object tblCodigoContaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCodigoContaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblCodigoContaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCodigoContaVENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblCodigoContaCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblCodigoContaNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblCodigoContaNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object tblCodigoContaPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object tblCodigoContaMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object tblCodigoContaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblCodigoContaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblCodigoContaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblCodigoContaESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblCodigoContaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object tblCodigoContaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object tblCodigoContaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object tblCodigoContaFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object tblCodigoContaCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object tblCodigoContaCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object tblCodigoContaCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object tblCodigoContaCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object tblCodigoContaSPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaREG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 60
    end
    object tblCodigoContaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 5
    end
    object tblCodigoContaCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object tblCodigoContaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 60
    end
    object tblCodigoContaADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object tblCodigoContaSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object tblCodigoContaEMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 60
    end
    object tblCodigoContaEMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 60
    end
    object tblCodigoContaEMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 60
    end
    object tblCodigoContaEMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 60
    end
    object tblCodigoContaEMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object tblCodigoContaEMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaREF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 60
    end
    object tblCodigoContaREF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaREF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 60
    end
    object tblCodigoContaREF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaREF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 60
    end
    object tblCodigoContaREF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaREF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 60
    end
    object tblCodigoContaREF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblCodigoContaREF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object tblCodigoContaREF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object tblCodigoContaREF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object tblCodigoContaFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object tblCodigoContaFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblCodigoContaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object tblCodigoContaCODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
    object tblCodigoContaFATURA_COM_DEBITOS: TIBStringField
      FieldName = 'FATURA_COM_DEBITOS'
      Origin = '"CLIENTES"."FATURA_COM_DEBITOS"'
      FixedChar = True
      Size = 1
    end
    object tblCodigoContaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CLIENTES"."NUMERO"'
      Size = 5
    end
    object tblCodigoContaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTES"."COMPLEMENTO"'
      Size = 10
    end
    object tblCodigoContaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblCodigoContaRETENCAO_ISS: TIBStringField
      FieldName = 'RETENCAO_ISS'
      Origin = '"CLIENTES"."RETENCAO_ISS"'
      FixedChar = True
      Size = 1
    end
  end
  object tblPecas: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'P.DESCRICAO,'
      'P.CODIGO,'
      'P.UNIDADE,'
      'P.NCM'
      ''
      'FROM '
      'SADA S'
      ''
      'INNER JOIN PECAS P ON S.CODIGO = P.CODIGO'
      'INNER JOIN NOFISA N ON N.ID_NOFISA = S.ID_NOFISA'
      ''
      'WHERE'
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    Left = 408
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblPecasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object tblPecasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object tblPecasUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object tblPecasNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
  end
  object tblUnidades: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'UNIDADE, COUNT(*) AS TOTAL'
      ''
      'FROM PECAS'
      ''
      'GROUP BY UNIDADE'
      '')
    Left = 376
    Top = 64
    object tblUnidadesUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object tblUnidadesTOTAL: TIntegerField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object tblForne: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'C.NOME,'
      'C.ID_CLIENTES,'
      'C.NUM_CPF,'
      'C.CODIGO_MUNICIPIO,'
      'C.ENDERECO,'
      'C.BAIRRO,'
      'C.ESTADO,'
      'C.CPF,'
      'C.NUMERO,'
      'C.COMPLEMENTO,'
      'C.IDENTIDADE'
      ''
      'FROM '
      'NOFI N'
      ''
      'INNER JOIN CLIENTES C ON C.ID_CLIENTES = N.ID_CLIENTES'
      ''
      'WHERE '
      'N.SAIDA BETWEEN :INICIO AND :FINAL '
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    Left = 472
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblForneID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblForneNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblForneCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblForneENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblForneBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblForneESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblForneCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblForneNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CLIENTES"."NUMERO"'
      Size = 5
    end
    object tblForneCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTES"."COMPLEMENTO"'
      Size = 10
    end
    object tblForneIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblForneNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
  end
  object tblVeiculosE: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'V.MARCA,'
      'V.MODELO,'
      'V.COR,'
      'V.COMBUSTIVEL,'
      'V.ANO_MODELO,'
      'V.ANO_FABRICACAO,'
      'V.CHASSI,'
      'V.NCM,'
      'V.CLASSIF_FISCAL'
      ''
      'FROM '
      'DADOS_NFE S'
      ''
      'INNER JOIN VEICULOS V ON S.ITEM = V.CHASSI'
      'INNER JOIN NOFI N ON N.ID_NOFI = S.ID_NOFI'
      ''
      'WHERE'
      'N.SAIDA BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 504
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblVeiculosEMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object tblVeiculosEMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object tblVeiculosECOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosECOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosEANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosEANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosECHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object tblVeiculosENCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VEICULOS"."NCM"'
      Size = 10
    end
    object tblVeiculosECLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
  end
  object tblPecasE: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'P.DESCRICAO,'
      'P.CODIGO,'
      'P.UNIDADE,'
      'P.NCM'
      ''
      'FROM '
      'DADOS_NFE S'
      ''
      'INNER JOIN PECAS P ON S.ITEM = P.CODIGO'
      'INNER JOIN NOFI N ON N.ID_NOFI = S.ID_NOFI'
      ''
      'WHERE'
      'N.SAIDA BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    Left = 536
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object tblPecasEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object tblPecasECODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object tblPecasEUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object tblPecasENCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
  end
  object qryNfT: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFISA'
      'WHERE'
      'EMISSAO BETWEEN :INICIO AND :FINAL AND '
      '(CODIGO_FISCAL = '#39'5152'#39' OR'
      'CODIGO_FISCAL = '#39'5409'#39' OR'
      'CODIGO_FISCAL = '#39'5152/5409'#39')')
    Left = 376
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object qryNfTID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNfTID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryNfTID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
      Required = True
    end
    object qryNfTNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object qryNfTSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object qryNfTEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object qryNfTORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object qryNfTENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object qryNfTVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object qryNfTSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object qryNfTHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object qryNfTIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object qryNfTDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object qryNfTDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object qryNfTBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryNfTBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object qryNfTVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object qryNfTISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object qryNfTVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object qryNfTTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object qryNfTTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object qryNfTPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object qryNfTCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object qryNfTCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 5
    end
    object qryNfTFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryNfTPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object qryNfTDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 50
    end
    object qryNfTDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 50
    end
    object qryNfTDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 50
    end
    object qryNfTDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 50
    end
    object qryNfTOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object qryNfTQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object qryNfTSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object qryNfTCODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 19
    end
    object qryNfTDESCRICAO_CODIGO_FISCAL: TIBStringField
      FieldName = 'DESCRICAO_CODIGO_FISCAL'
      Origin = '"NOFISA"."DESCRICAO_CODIGO_FISCAL"'
      Size = 60
    end
    object qryNfTFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object qryNfTCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 60
    end
    object qryNfTRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 60
    end
    object qryNfTPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 60
    end
    object qryNfTARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 60
    end
    object qryNfTXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryNfTPROTOCOLO_CANCELAMENTO: TIBStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Origin = '"NOFISA"."PROTOCOLO_CANCELAMENTO"'
      Size = 60
    end
    object qryNfTMOTIVO_CANCELAMENTO: TIBStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Origin = '"NOFISA"."MOTIVO_CANCELAMENTO"'
      Size = 60
    end
    object qryNfTDADOS_AD05: TIBStringField
      FieldName = 'DADOS_AD05'
      Origin = '"NOFISA"."DADOS_AD05"'
      Size = 50
    end
    object qryNfTRECEBIMENTO_TRANSFERENCIA: TDateField
      FieldName = 'RECEBIMENTO_TRANSFERENCIA'
      Origin = '"NOFISA"."RECEBIMENTO_TRANSFERENCIA"'
    end
    object qryNfTTRANSFERENCIA_PENDENTE: TIBStringField
      FieldName = 'TRANSFERENCIA_PENDENTE'
      Origin = '"NOFISA"."TRANSFERENCIA_PENDENTE"'
      FixedChar = True
      Size = 1
    end
    object qryNfTID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"NOFISA"."ID_MECANICO"'
    end
    object qryNfTID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"NOFISA"."ID_ATENDENTE"'
    end
    object qryNfTQUANTIDADE_VOLUMES: TIntegerField
      FieldName = 'QUANTIDADE_VOLUMES'
      Origin = '"NOFISA"."QUANTIDADE_VOLUMES"'
    end
    object qryNfTNFE_REFERENCIADA: TIBStringField
      FieldName = 'NFE_REFERENCIADA'
      Origin = '"NOFISA"."NFE_REFERENCIADA"'
      Size = 60
    end
  end
  object dtsNfT: TDataSource
    DataSet = qryNfT
    Left = 376
    Top = 280
  end
  object qryConcessionaria: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM TRANSFERENCIA'
      'WHERE'
      'NOVO_ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 536
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object qryConcessionariaID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
      Origin = '"TRANSFERENCIA"."ID_TRANSFERENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConcessionariaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"TRANSFERENCIA"."ID_CLIENTES"'
      Required = True
    end
    object qryConcessionariaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"TRANSFERENCIA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object qryConcessionariaTRANSFERIR_PARA: TIBStringField
      FieldName = 'TRANSFERIR_PARA'
      Origin = '"TRANSFERENCIA"."TRANSFERIR_PARA"'
    end
    object qryConcessionariaNOVO_ID_CONCESSIONARIA: TIntegerField
      FieldName = 'NOVO_ID_CONCESSIONARIA'
      Origin = '"TRANSFERENCIA"."NOVO_ID_CONCESSIONARIA"'
      Required = True
    end
  end
  object dtsConcessionaria: TDataSource
    DataSet = qryConcessionaria
    Left = 536
    Top = 336
  end
  object qryTransferencia: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM TRANSFERENCIA'
      'WHERE'
      'novo_ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 584
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object IntegerField10: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
      Origin = '"TRANSFERENCIA"."ID_TRANSFERENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"TRANSFERENCIA"."ID_CLIENTES"'
      Required = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"TRANSFERENCIA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBStringField26: TIBStringField
      FieldName = 'TRANSFERIR_PARA'
      Origin = '"TRANSFERENCIA"."TRANSFERIR_PARA"'
    end
    object IntegerField13: TIntegerField
      FieldName = 'NOVO_ID_CONCESSIONARIA'
      Origin = '"TRANSFERENCIA"."NOVO_ID_CONCESSIONARIA"'
      Required = True
    end
  end
  object dtsTransferencia: TDataSource
    DataSet = qryTransferencia
    Left = 584
    Top = 336
  end
  object qryItemNFT: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNfT
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      's.*, p.cod_proc, p.ST_COFINS, p.SUBST_TRIB'
      ''
      'FROM SADA s'
      ''
      'left join pecas p on p.id_pecas = s.id_pecas'
      ''
      'WHERE'
      's.ID_NOFISA = :ID_NOFISA')
    Left = 408
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NF'
      Origin = '"SADA"."NF"'
      Size = 8
    end
    object IBStringField2: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"SADA"."CODIGO"'
      Size = 17
    end
    object IBStringField3: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SADA"."DESCRICAO"'
      Size = 80
    end
    object SmallintField1: TSmallintField
      FieldName = 'QTDE'
      Origin = '"SADA"."QTDE"'
    end
    object IBStringField4: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Size = 3
    end
    object IBStringField5: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object IBStringField6: TIBStringField
      FieldName = 'SUBST'
      Origin = '"SADA"."SUBST"'
      Size = 1
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBStringField7: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
    object IBStringField8: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
    end
    object IBStringField9: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"SADA"."ST_COFINS"'
      Size = 1
    end
    object IBStringField10: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"SADA"."ANO_MODELO"'
      Size = 4
    end
    object IBStringField11: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"SADA"."ANO_FABRICACAO"'
      Size = 4
    end
    object IBStringField12: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"SADA"."RENAVAM"'
      Size = 15
    end
    object IBStringField13: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"SADA"."POTENCIA"'
      Size = 3
    end
    object IBStringField14: TIBStringField
      FieldName = 'COR'
      Origin = '"SADA"."COR"'
      Size = 80
    end
    object IBStringField15: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"SADA"."COMBUSTIVEL"'
    end
    object IBStringField16: TIBStringField
      FieldName = 'PLACA'
      Origin = '"SADA"."PLACA"'
      Size = 80
    end
    object IBStringField17: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"SADA"."MOTOR"'
      Size = 15
    end
    object IBStringField18: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"SADA"."CHASSI"'
    end
    object IBStringField19: TIBStringField
      FieldName = 'MARCA'
      Origin = '"SADA"."MARCA"'
      Size = 10
    end
    object IBStringField20: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SADA"."MODELO"'
    end
    object IBStringField21: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SADA"."STATUS"'
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"SADA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"SADA"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"SADA"."ID_PECAS"'
    end
    object IBStringField22: TIBStringField
      FieldName = 'NCM'
      Origin = '"SADA"."NCM"'
      Size = 10
    end
    object IntegerField5: TIntegerField
      FieldName = 'CILINDRADAS'
      Origin = '"SADA"."CILINDRADAS"'
    end
    object IBStringField23: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField24: TIBStringField
      FieldName = 'ST_COFINS1'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField25: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
  end
  object dtsItemNFT: TDataSource
    DataSet = qryItemNFT
    Left = 408
    Top = 280
  end
  object qryTotItemNFT: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsNfT
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      ''
      'SUM( PRECO * QTDE ) AS BASE_ICMS,'
      'SUM(  ( PRECO  * QTDE ) * ALIQ_ICMS ) AS ICMS,'
      'SUM( PRECO * QTDE ) AS TOTAL,'
      'ALIQ_ICMS,'
      'CST,'
      'CFOP'
      ''
      'FROM SADA'
      ''
      'WHERE ID_NOFISA = :ID_NOFISA'
      ''
      'GROUP BY'
      ''
      'ALIQ_ICMS, '
      'CST,'
      'CFOP')
    Left = 440
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_NOFISA'
        ParamType = ptUnknown
      end>
    object IBBCDField7: TIBBCDField
      FieldName = 'BASE_ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object IBStringField27: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object IBStringField28: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
  end
  object dtsTotItemNFT: TDataSource
    DataSet = qryTotItemNFT
    Left = 440
    Top = 280
  end
  object tblPecasT: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'P.DESCRICAO,'
      'P.CODIGO,'
      'P.UNIDADE,'
      'P.NCM'
      ''
      'FROM '
      'SADA S'
      ''
      'INNER JOIN PECAS P ON S.CODIGO = P.CODIGO'
      'INNER JOIN NOFISA N ON N.ID_NOFISA = S.ID_NOFISA'
      ''
      'WHERE'
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      '(n.CODIGO_FISCAL = '#39'5152'#39' OR'
      'n.CODIGO_FISCAL = '#39'5409'#39' OR'
      'n.CODIGO_FISCAL = '#39'5152/5409'#39')')
    Left = 536
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object IBStringField29: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object IBStringField30: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField31: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBStringField32: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
  end
  object tblVeiculosT: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'V.MARCA,'
      'V.MODELO,'
      'V.COR,'
      'V.COMBUSTIVEL,'
      'V.ANO_MODELO,'
      'V.ANO_FABRICACAO,'
      'V.CHASSI,'
      'V.NCM,'
      'V.CLASSIF_FISCAL'
      ''
      'FROM '
      'SADA S'
      ''
      'INNER JOIN VEICULOS V ON S.CHASSI = V.CHASSI'
      'INNER JOIN NOFISA N ON N.ID_NOFISA = S.ID_NOFISA'
      ''
      'WHERE'
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      '(n.CODIGO_FISCAL = '#39'5152'#39' OR'
      'n.CODIGO_FISCAL = '#39'5409'#39' OR'
      'n.CODIGO_FISCAL = '#39'5152/5409'#39')'
      '')
    Left = 504
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object IBStringField33: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField34: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object IBStringField35: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBStringField36: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField37: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField38: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField39: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object IBStringField40: TIBStringField
      FieldName = 'NCM'
      Origin = '"VEICULOS"."NCM"'
      Size = 10
    end
    object IBStringField41: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = 'C:\Program Files (x86)\CodeGear\RAD Studio\5.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 184
    Top = 72
  end
  object tblTmo: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'T.*'
      'FROM '
      ''
      'SEDA S'
      ''
      'INNER JOIN TMO T ON S.ID_TMO = T.ID_TMO'
      'INNER JOIN NOFISA N ON N.ID_NOFISA = S.ID_NOFI'
      ''
      'WHERE'
      'N.EMISSAO BETWEEN :INICIO AND :FINAL')
    Left = 568
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object tblTmoID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"TMO"."ID_TMO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblTmoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TMO"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object tblTmoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TMO"."DESCRICAO"'
      FixedChar = True
      Size = 35
    end
    object tblTmoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"TMO"."ID_CATEGORIA"'
      Required = True
    end
    object tblTmoTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"TMO"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object tblTmoTEMPO_GAR: TIBBCDField
      FieldName = 'TEMPO_GAR'
      Origin = '"TMO"."TEMPO_GAR"'
      Precision = 4
      Size = 1
    end
    object tblTmoREV_GRAT: TIBStringField
      FieldName = 'REV_GRAT'
      Origin = '"TMO"."REV_GRAT"'
      FixedChar = True
      Size = 1
    end
  end
  object sped: TACBrSPEDFiscal
    Path = '.\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 216
    Top = 88
  end
  object QryEstoque: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      'P.DESCRICAO,'
      'P.CODIGO,'
      'P.UNIDADE,'
      'p.preco,'
      'p.VBC_ST, '
      'p.VBC_STRET,'
      'p.VICMS_ST, '
      'p.VICMS_STRET,'
      'p.CST,'
      'PE.*'
      ''
      'FROM '
      'PECAS_ESTOQUE PE'
      ''
      'INNER JOIN PECAS P ON PE.ID_PECAS = P.ID_PECAS'
      ''
      'WHERE'
      'PE.ESTOQUE > 0'
      'AND'
      'PE.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    Left = 264
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
        Size = 4
      end>
    object IBStringField42: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object IBStringField43: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField44: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object QryEstoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEstoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
      Required = True
    end
    object QryEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
      Required = True
    end
    object QryEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ESTOQUE"'
    end
    object QryEstoqueESTOQOS: TIntegerField
      FieldName = 'ESTOQOS'
      Origin = '"PECAS_ESTOQUE"."ESTOQOS"'
    end
    object QryEstoqueLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PECAS_ESTOQUE"."LOCAL"'
      FixedChar = True
      Size = 5
    end
    object QryEstoqueCST_MEDIO: TIBBCDField
      FieldName = 'CST_MEDIO'
      Origin = '"PECAS_ESTOQUE"."CST_MEDIO"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueCST_ATUAL: TIBBCDField
      FieldName = 'CST_ATUAL'
      Origin = '"PECAS_ESTOQUE"."CST_ATUAL"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
      Origin = '"PECAS_ESTOQUE"."ULT_COMPRA"'
    end
    object QryEstoqueULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
      Origin = '"PECAS_ESTOQUE"."ULT_VENDA"'
    end
    object QryEstoqueULT_PEDIDO: TDateField
      FieldName = 'ULT_PEDIDO'
      Origin = '"PECAS_ESTOQUE"."ULT_PEDIDO"'
    end
    object QryEstoqueFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PECAS_ESTOQUE"."FORNECEDOR"'
      FixedChar = True
      Size = 5
    end
    object QryEstoquePRATELEIRA: TIBStringField
      FieldName = 'PRATELEIRA'
      Origin = '"PECAS_ESTOQUE"."PRATELEIRA"'
      Size = 3
    end
    object QryEstoqueESCANINHO_GAVETA: TIBStringField
      FieldName = 'ESCANINHO_GAVETA'
      Origin = '"PECAS_ESTOQUE"."ESCANINHO_GAVETA"'
      Size = 2
    end
    object QryEstoquePRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueVBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"PECAS"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueVBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"PECAS"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueVICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"PECAS"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueVICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"PECAS"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object QryEstoqueCST: TIBStringField
      FieldName = 'CST'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
  end
  object tblPecas2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'P.DESCRICAO,'
      'P.CODIGO,'
      'P.UNIDADE,'
      'P.NCM'
      ''
      'FROM '
      ''
      'pecas p'
      ''
      'INNER JOIN PECAS_ESTOQUE PE ON PE.ID_PECAS = P.ID_PECAS'
      ''
      ''
      'WHERE'
      'PE.ESTOQUE > 0'
      'AND'
      'PE.ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 264
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
        Size = 4
      end>
    object IBStringField45: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 60
    end
    object IBStringField46: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField47: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBStringField48: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
  end
  object tblVeiculos2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = trnSped
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsFilial
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT'
      'V.MARCA,'
      'V.MODELO,'
      'V.COR,'
      'v.cst,'
      'v.custo_icms,'
      'V.COMBUSTIVEL,'
      'V.ANO_MODELO,'
      'V.ANO_FABRICACAO,'
      'V.CHASSI,'
      'V.NCM,'
      'V.CLASSIF_FISCAL,'
      'V.STATUS,'
      'V.ID_CONCESSIONARIA,'
      'v.VBC_ST,'
      'V.VBC_STRET,'
      'V.VICMS_ST,'
      'V.VICMS_STRET'
      ''
      'FROM '
      'VEICULOS V'
      ''
      'WHERE'
      'V.STATUS <> '#39'VENDIDO'#39' AND'
      'V.STATUS <> '#39'TRANSFERIDO'#39' AND '
      'V.STATUS <> '#39'IMOBILIZADO'#39' AND '
      'V.STATUS <> '#39'DEVOLVIDO'#39' AND'
      'V.STATUS <> '#39'EM TR'#194'NSITO'#39' AND'
      ''
      'V.ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    Left = 208
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CONCESSIONARIA'
        ParamType = ptUnknown
      end>
    object IBStringField49: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField50: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object IBStringField51: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBStringField52: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField53: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField54: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField55: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object IBStringField56: TIBStringField
      FieldName = 'NCM'
      Origin = '"VEICULOS"."NCM"'
      Size = 10
    end
    object IBStringField57: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculos2STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblVeiculos2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblVeiculos2CST: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object tblVeiculos2CUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblVeiculos2VBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"VEICULOS"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object tblVeiculos2VBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"VEICULOS"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object tblVeiculos2VICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"VEICULOS"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
    object tblVeiculos2VICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"VEICULOS"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
  end
  object tblveiculos4: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Veiculos'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    InsertSQL.Strings = (
      'insert into Veiculos'
      
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
      'from Veiculos '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'Select pv.*, v.*, c.nome, c.id_clientes,'
      'cl.nome, cl.id_clientes from Veiculos v'
      'inner join pedido_veiculos pv on pv.id_veiculos = v.id_veiculos'
      'inner join clientes c on pv.id_clientes = c.id_clientes'
      'inner join clientes cl on pv.id_vendedor = cl.id_clientes'
      'WHERE '
      '(pv.status = '#39'Pendente'#39
      'or'
      'pv.Status = '#39'Aprovado'#39')'
      'and'
      'V.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      ''
      'ORDER BY pv.id_vendedor, v.CHASSI, pv.id_concessionaria'
      '')
    ModifySQL.Strings = (
      'update Veiculos'
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
    Left = 208
    Top = 208
    object IntegerField22: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField23: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
    end
    object IntegerField24: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object IntegerField25: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
    end
    object IBStringField73: TIBStringField
      DisplayLabel = 'Chassi:'
      DisplayWidth = 20
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
      FixedChar = True
    end
    object IBStringField74: TIBStringField
      DisplayWidth = 10
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      FixedChar = True
      Size = 10
    end
    object IBStringField75: TIBStringField
      DisplayWidth = 20
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object IBStringField76: TIBStringField
      DisplayWidth = 10
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBStringField77: TIBStringField
      DisplayWidth = 10
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField78: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField79: TIBStringField
      DisplayWidth = 4
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField80: TIBStringField
      DisplayWidth = 3
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBStringField81: TIBStringField
      DisplayWidth = 6
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object IBStringField82: TIBStringField
      DisplayWidth = 7
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object IBStringField83: TIBStringField
      DisplayWidth = 10
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object IntegerField26: TIntegerField
      DisplayWidth = 10
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object IBStringField84: TIBStringField
      DisplayWidth = 10
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object IBStringField85: TIBStringField
      DisplayWidth = 10
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField86: TIBStringField
      DisplayWidth = 10
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object DateField10: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object IBStringField87: TIBStringField
      DisplayWidth = 10
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object IBStringField88: TIBStringField
      DisplayWidth = 1
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object IBBCDField12: TIBBCDField
      DisplayWidth = 19
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField13: TIBBCDField
      DisplayWidth = 19
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField14: TIBBCDField
      DisplayWidth = 19
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object DateField11: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object IBStringField89: TIBStringField
      DisplayWidth = 8
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object IBStringField90: TIBStringField
      DisplayWidth = 1
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField91: TIBStringField
      DisplayWidth = 15
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      FixedChar = True
      Size = 15
    end
    object IBStringField92: TIBStringField
      DisplayWidth = 1
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField93: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object DateField12: TDateField
      DisplayWidth = 10
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
    end
    object IBStringField94: TIBStringField
      DisplayWidth = 8
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Size = 8
    end
    object IBStringField95: TIBStringField
      DisplayWidth = 20
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
    end
    object IBStringField96: TIBStringField
      DisplayWidth = 20
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object IBStringField97: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Size = 1
    end
    object IntegerField27: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
    object IntegerField28: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
    end
    object IBStringField98: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object tblveiculos4ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object tblveiculos4NOME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblveiculos4NOME1: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME1'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblveiculos4DATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = '"PEDIDO_VEICULOS"."DATA_PEDIDO"'
    end
    object tblveiculos4ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblveiculos4ID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object tblveiculos4ID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object tblveiculos4VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4BASE_COMISSAO: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4NF: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object tblveiculos4DATA_NF: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object tblveiculos4VALOR_DA_VENDA: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_A_RECEBER: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4ID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = '"PEDIDO_VEICULOS"."ID_USUARIO"'
    end
    object tblveiculos4USUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PEDIDO_VEICULOS"."USUARIO"'
    end
    object tblveiculos4NF_CANCELAMENTO: TIBStringField
      FieldName = 'NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."NF_CANCELAMENTO"'
      Size = 8
    end
    object tblveiculos4DATA_NF_CANCELAMENTO: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF_CANCELAMENTO"'
    end
    object tblveiculos4VALOR_VIP: TIBBCDField
      FieldName = 'VALOR_VIP'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_NORMAL: TIBBCDField
      FieldName = 'VALOR_NORMAL'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_EXCLUSIVO: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_VIP2: TIBBCDField
      FieldName = 'VALOR_VIP2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP2"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_NORMAL2: TIBBCDField
      FieldName = 'VALOR_NORMAL2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL2"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_EXCLUSIVO2: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO2"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4VALOR_TAXAS: TIBBCDField
      FieldName = 'VALOR_TAXAS'
      Origin = '"PEDIDO_VEICULOS"."VALOR_TAXAS"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4FORMA_VISITA: TIBStringField
      FieldName = 'FORMA_VISITA'
      Origin = '"PEDIDO_VEICULOS"."FORMA_VISITA"'
    end
    object tblveiculos4ID_VEICULO_USADO: TIntegerField
      FieldName = 'ID_VEICULO_USADO'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULO_USADO"'
    end
    object tblveiculos4ID_VEICULOS1: TIntegerField
      FieldName = 'ID_VEICULOS1'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      Required = True
    end
    object tblveiculos4ID_CONCESSIONARIA1: TIntegerField
      FieldName = 'ID_CONCESSIONARIA1'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblveiculos4ID_CLIENTES1: TIntegerField
      FieldName = 'ID_CLIENTES1'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object tblveiculos4ID_MODELO_VEICULO1: TIntegerField
      FieldName = 'ID_MODELO_VEICULO1'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
    object tblveiculos4CHASSI1: TIBStringField
      FieldName = 'CHASSI1'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object tblveiculos4MARCA1: TIBStringField
      FieldName = 'MARCA1'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object tblveiculos4MODELO1: TIBStringField
      FieldName = 'MODELO1'
      Origin = '"VEICULOS"."MODELO"'
    end
    object tblveiculos4COR1: TIBStringField
      FieldName = 'COR1'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblveiculos4ANO_FABRICACAO1: TIBStringField
      FieldName = 'ANO_FABRICACAO1'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblveiculos4ANO_MODELO1: TIBStringField
      FieldName = 'ANO_MODELO1'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblveiculos4PLACA1: TIBStringField
      FieldName = 'PLACA1'
      Origin = '"VEICULOS"."PLACA"'
      Size = 7
    end
    object tblveiculos4RENAVAM1: TIBStringField
      FieldName = 'RENAVAM1'
      Origin = '"VEICULOS"."RENAVAM"'
      Size = 15
    end
    object tblveiculos4MOTOR1: TIBStringField
      FieldName = 'MOTOR1'
      Origin = '"VEICULOS"."MOTOR"'
      Size = 15
    end
    object tblveiculos4STATUS1: TIBStringField
      FieldName = 'STATUS1'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblveiculos4DATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"VEICULOS"."DATA_RECEBIMENTO"'
    end
    object tblveiculos4NCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"VEICULOS"."NCM"'
      Size = 10
    end
    object tblveiculos4COM_AVARIA: TIBStringField
      FieldName = 'COM_AVARIA'
      Origin = '"VEICULOS"."COM_AVARIA"'
      FixedChar = True
      Size = 1
    end
    object tblveiculos4CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VEICULOS"."CODIGO"'
      Size = 12
    end
    object tblveiculos4VBC_STRET: TIBBCDField
      FieldName = 'VBC_STRET'
      Origin = '"VEICULOS"."VBC_STRET"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4PST: TIBBCDField
      FieldName = 'PST'
      Origin = '"VEICULOS"."PST"'
      Precision = 9
      Size = 2
    end
    object tblveiculos4VICMS_STRET: TIBBCDField
      FieldName = 'VICMS_STRET'
      Origin = '"VEICULOS"."VICMS_STRET"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4PRED_BCST: TIBBCDField
      FieldName = 'PRED_BCST'
      Origin = '"VEICULOS"."PRED_BCST"'
      Precision = 9
      Size = 2
    end
    object tblveiculos4VBC_ST: TIBBCDField
      FieldName = 'VBC_ST'
      Origin = '"VEICULOS"."VBC_ST"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4PICMS_ST: TIBBCDField
      FieldName = 'PICMS_ST'
      Origin = '"VEICULOS"."PICMS_ST"'
      Precision = 9
      Size = 2
    end
    object tblveiculos4VICMS_ST: TIBBCDField
      FieldName = 'VICMS_ST'
      Origin = '"VEICULOS"."VICMS_ST"'
      Precision = 18
      Size = 2
    end
    object tblveiculos4ID_CLIENTES2: TIntegerField
      FieldName = 'ID_CLIENTES2'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      Required = True
    end
    object tblveiculos4ID_CLIENTES3: TIntegerField
      FieldName = 'ID_CLIENTES3'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      Required = True
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 568
    Top = 408
  end
  object spedImportar: TACBrSpedFiscalImportar
    ACBrSpedFiscal = sped
    Left = 200
    Top = 272
  end
end
