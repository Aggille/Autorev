object frmSped_Fiscal: TfrmSped_Fiscal
  Left = 0
  Top = 0
  Caption = 'Gerar Sped'
  ClientHeight = 342
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
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
    Left = 136
    Top = 40
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label4: TLabel
    Left = 8
    Top = 56
    Width = 145
    Height = 13
    Caption = 'Nome do arquivo a ser gerado'
  end
  object Label5: TLabel
    Left = 8
    Top = 96
    Width = 169
    Height = 13
    Caption = 'Pasta onde ser'#225' gravado o arquivo'
  end
  object Label11: TLabel
    Left = 8
    Top = 136
    Width = 138
    Height = 13
    Caption = 'Tipo de arquivo a ser gerado'
  end
  object Label6: TLabel
    Left = 8
    Top = 179
    Width = 189
    Height = 13
    Caption = 'Perfil de apresenta'#231#227'o do arquivo fiscal'
  end
  object Label7: TLabel
    Left = 8
    Top = 225
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
    Left = 122
    Top = 271
    Width = 97
    Height = 30
    Caption = 'Gerar Arquivo'
    OnClick = btnGerar_PClick
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
  end
  object edtNomeArq: TEdit
    Left = 8
    Top = 72
    Width = 305
    Height = 21
    Cursor = crIBeam
    CharCase = ecUpperCase
    TabOrder = 3
    Text = 'SPED_FISCAL.TXT'
  end
  object edtPastaDestino: TEdit
    Left = 8
    Top = 112
    Width = 306
    Height = 21
    Cursor = crIBeam
    TabOrder = 4
    Text = 'c:\'
  end
  object edtTipoArq: TComboBox
    Left = 8
    Top = 152
    Width = 305
    Height = 21
    Cursor = crIBeam
    ItemHeight = 13
    TabOrder = 5
    Text = '0 - Remessa do arquivo original'
    Items.Strings = (
      '0 - Remessa do arquivo original'
      '1 - Remessa de arquivo substituto')
  end
  object edtPerfil: TComboBox
    Left = 8
    Top = 198
    Width = 305
    Height = 21
    Cursor = crIBeam
    ItemHeight = 13
    TabOrder = 6
    Text = 'A - Perfil A'
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object edtTipoAtiv: TComboBox
    Left = 8
    Top = 244
    Width = 305
    Height = 21
    Cursor = crIBeam
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = '0 - Industrial ou equiparado a industrial'
    Items.Strings = (
      '0 - Industrial ou equiparado a industrial'
      '1 - Outros')
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 323
    Width = 648
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object progresso: TProgressBar
    Left = 0
    Top = 307
    Width = 648
    Height = 16
    Align = alBottom
    TabOrder = 9
  end
  object wwDBGrid1: TwwDBGrid
    Left = 320
    Top = 35
    Width = 320
    Height = 266
    Selected.Strings = (
      'EMPRESA'#9'50'#9'Nome')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
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
    Left = 225
    Top = 271
    Width = 89
    Height = 30
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = btnFechar_PClick
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'localhost:autorev'
    Params.Strings = (
      'user_name=sysdba'
      'password=031073')
    LoginPrompt = False
    Left = 212
    Top = 4
  end
  object ACBrSpedFiscal1: TACBrSPEDFiscal
    Path = '.\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 240
    Top = 8
  end
  object ActionList1: TActionList
    Left = 272
    Top = 8
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
  end
  object qryNf: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFISA'
      'WHERE'
      'EMISSAO BETWEEN :INICIO AND :FINAL AND '
      'ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      ''
      '')
    DataSource = dtsFilial
    Left = 376
    Top = 8
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
      Size = 3
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
      Size = 50
    end
    object qryNfFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object qryNfCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 50
    end
    object qryNfRECIBO: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 50
    end
    object qryNfPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 50
    end
    object qryNfARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 50
    end
    object qryNfXML: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object trnSped: TIBTransaction
    DefaultDatabase = FDB1.IBDatabase
    Left = 184
  end
  object qryFilial: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'select  * from CONCESSIONARIA')
    Left = 496
    Top = 8
    object qryFilialEMPRESA: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object qryFilialID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryFilialENDERECO: TIBStringField
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = '"CONCESSIONARIA"."ENDERECO"'
      Required = True
      Visible = False
      Size = 50
    end
    object qryFilialCIDADE: TIBStringField
      DisplayWidth = 20
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
      Visible = False
    end
    object qryFilialESTADO: TIBStringField
      DisplayWidth = 2
      FieldName = 'ESTADO'
      Origin = '"CONCESSIONARIA"."ESTADO"'
      Required = True
      Visible = False
      Size = 2
    end
    object qryFilialCNPJ: TIBStringField
      DisplayWidth = 18
      FieldName = 'CNPJ'
      Origin = '"CONCESSIONARIA"."CNPJ"'
      Visible = False
      Size = 18
    end
    object qryFilialIE: TIBStringField
      DisplayWidth = 12
      FieldName = 'IE'
      Origin = '"CONCESSIONARIA"."IE"'
      Visible = False
      Size = 12
    end
    object qryFilialCONCESSION: TIBStringField
      DisplayWidth = 15
      FieldName = 'CONCESSION'
      Origin = '"CONCESSIONARIA"."CONCESSION"'
      Visible = False
      Size = 15
    end
    object qryFilialTELEFONE: TIBStringField
      DisplayWidth = 12
      FieldName = 'TELEFONE'
      Origin = '"CONCESSIONARIA"."TELEFONE"'
      Visible = False
      Size = 12
    end
    object qryFilialCOD_CONCES: TIBStringField
      DisplayWidth = 9
      FieldName = 'COD_CONCES'
      Origin = '"CONCESSIONARIA"."COD_CONCES"'
      Visible = False
      Size = 9
    end
    object qryFilialALIQUOTA_ISS: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ISS"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryFilialALIQUOTA_ICMS1: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ICMS1'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS1"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryFilialALIQUOTA_ICMS2: TIBBCDField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ICMS2'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS2"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryFilialCODIGO_EMPRESA_JB: TIBStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_EMPRESA_JB'
      Origin = '"CONCESSIONARIA"."CODIGO_EMPRESA_JB"'
      Visible = False
      Size = 3
    end
  end
  object dtsFilial: TDataSource
    DataSet = qryFilial
    Left = 496
    Top = 24
  end
  object tblClientes: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT DISTINCT'
      'C.NOME,'
      'C.ID_CLIENTES,'
      'C.NUM_CPF,'
      'C.CODIGO_MUNICIPIO,'
      'C.ENDERECO,'
      'C.BAIRRO,'
      'C.ESTADO,'
      'C.CPF'
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
    DataSource = dtsFilial
    Left = 504
    Top = 64
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
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
  end
  object tblUnidades: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      'UNIDADE, COUNT(*) AS TOTAL'
      ''
      'FROM PECAS'
      ''
      'GROUP BY UNIDADE'
      '')
    DataSource = dtsFilial
    Left = 376
    Top = 64
    object tblUnidadesUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Size = 3
    end
    object tblUnidadesTOTAL: TIntegerField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
    DataSource = dtsFilial
    Left = 408
    Top = 64
    object tblPecasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
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
  object qryItemNf: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM SADA'
      'WHERE'
      'ID_NOFISA = :ID_NOFISA'
      '')
    DataSource = dtsNf
    Left = 408
    Top = 8
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
  end
  object qryDupl: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFISA_FATURAS'
      'WHERE'
      'ID_NOFISA = :ID_NOFISA'
      '')
    DataSource = dtsNf
    Left = 464
    Top = 8
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
  object dtsDupl: TDataSource
    DataSet = qryDupl
    Left = 464
    Top = 24
  end
  object tblVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
    DataSource = dtsFilial
    Left = 440
    Top = 64
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
  object qryTotItem: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
    DataSource = dtsNf
    Left = 528
    Top = 8
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
  object dtsTotItem: TDataSource
    DataSet = qryTotItem
    Left = 528
    Top = 24
  end
  object qryServicosNf: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM SEDA'
      'WHERE'
      'ID_NOFI = :ID_NOFISA'
      '')
    DataSource = dtsNf
    Left = 436
    Top = 8
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
    object qryServicosNfDESCRICAO_SERVICO: TIBStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = '"SEDA"."DESCRICAO_SERVICO"'
      Size = 30
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
  object qryTotServicosNf: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      ''
      'SUM( PRECO  ) AS TOTAL'
      ''
      'FROM SEDA'
      ''
      'WHERE ID_NOFI= :ID_NOFISA'
      '')
    DataSource = dtsNf
    Left = 560
    Top = 8
    object qryTotServicosNfTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
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
  end
  object qryNfe: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM NOFI'
      'WHERE'
      'EMISSAO BETWEEN :INICIO AND :FINAL AND '
      'ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      ''
      '')
    DataSource = dtsFilial
    Left = 376
    Top = 168
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
    object qryNfeCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"NOFI"."CFOP"'
      FixedChar = True
      Size = 14
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
    object qryNfeBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object qryNfeVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      Precision = 18
      Size = 2
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
  end
  object dtsNfe: TDataSource
    DataSet = qryNfe
    Left = 376
    Top = 184
  end
  object qryItemNfe: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT'
      '*'
      'FROM DADOS_NFE'
      'WHERE'
      'ID_NOFI = :ID_NOFI'
      '')
    DataSource = dtsNfe
    Left = 408
    Top = 168
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
    object qryItemNfeVLR_UNIT: TIBBCDField
      FieldName = 'VLR_UNIT'
      Origin = '"DADOS_NFE"."VLR_UNIT"'
      Precision = 18
      Size = 2
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
  end
  object dtsiItemNfe: TDataSource
    DataSet = qryItemNfe
    Left = 408
    Top = 184
  end
  object qryTotItemE: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
    DataSource = dtsNfe
    Left = 440
    Top = 168
    object qryTotItemEBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryTotItemEICMS: TIBBCDField
      FieldName = 'ICMS'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qryTotItemETOTAL: TIBBCDField
      FieldName = 'TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
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
  object dtsTotItemE: TDataSource
    DataSet = qryTotItemE
    Left = 440
    Top = 184
  end
  object tblForne: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
      'SELECT DISTINCT'
      'C.NOME,'
      'C.ID_CLIENTES,'
      'C.NUM_CPF,'
      'C.CODIGO_MUNICIPIO,'
      'C.ENDERECO,'
      'C.BAIRRO,'
      'C.ESTADO,'
      'C.CPF'
      ''
      'FROM '
      'NOFI N'
      ''
      'INNER JOIN CLIENTES C ON C.ID_CLIENTES = N.ID_CLIENTES'
      ''
      'WHERE '
      'N.EMISSAO BETWEEN :INICIO AND :FINAL '
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    DataSource = dtsFilial
    Left = 472
    Top = 168
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object IBStringField3: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object IBStringField4: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object IBStringField5: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBStringField6: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object IBStringField7: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
  end
  object tblVeiculosE: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    DataSource = dtsFilial
    Left = 504
    Top = 168
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
  object tblPecasE: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = trnSped
    SelectSQL.Strings = (
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
      'N.EMISSAO BETWEEN :INICIO AND :FINAL'
      'AND'
      'N.ID_CONCESSIONARIA = :ID_CONCESSIONARIA'
      '')
    DataSource = dtsFilial
    Left = 536
    Top = 168
    object IBStringField16: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBStringField17: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField18: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBStringField19: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
  end
end
