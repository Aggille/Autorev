object BoxFinanceiroConciliacaoCartoes: TBoxFinanceiroConciliacaoCartoes
  Left = 0
  Top = 45
  Caption = 'Concilia'#231#227'o de cart'#245'es'
  ClientHeight = 540
  ClientWidth = 1090
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
    Width = 1090
    Height = 540
    Align = alClient
    TabOrder = 0
    object Label4: TLabel
      Left = 570
      Top = 51
      Width = 89
      Height = 13
      Caption = 'Data recebimento:'
    end
    object Label7: TLabel
      Left = 570
      Top = 85
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object LabelCliente: TLabel
      Left = 570
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label12: TLabel
      Left = 184
      Top = 452
      Width = 146
      Height = 13
      Caption = 'Total de cart'#245'es selecionados:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 520
      Width = 1088
      Height = 19
      Panels = <>
    end
    object BtnImporta: TBitBtn
      Left = 8
      Top = 37
      Width = 104
      Height = 25
      Caption = 'Importar arquivo'
      TabOrder = 0
      OnClick = BtnImportaClick
      OnExit = BtnImportaExit
      OnKeyPress = FormKeyPress
    end
    object Memo: TMemo
      Left = 118
      Top = 8
      Width = 435
      Height = 99
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object wwDBGrid1: TwwDBGrid
      Left = 8
      Top = 113
      Width = 1073
      Height = 168
      Selected.Strings = (
        'CODIGO_ESTABELECIMENTO'#9'20'#9'C'#243'd. estabelecimento'#9'F'#9
        'CARTAO'#9'20'#9'Cart'#227'o:'#9'F'#9
        'DATA_PAGAMENTO'#9'10'#9'Data de pagamento:'#9'F'#9
        'PARCELA'#9'10'#9'Parcela:'#9'F'#9
        'VALOR_BRUTO'#9'19'#9'Valor bruto R$:'#9'F'#9
        'TAXA_TARIFA'#9'19'#9'Taxa/Tarifa:'#9'F'#9
        'VALOR_LIQUIDO'#9'19'#9'Valor l'#237'quido R$:'#9'F'#9
        'NUMERO_CV'#9'10'#9'N'#250'mero do CV'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnCellChanged = wwDBGrid1CellChanged2
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceCartoes
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnKeyDown = wwDBGrid1KeyDown
      OnKeyUp = wwDBGrid1KeyDown
    end
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 296
      Width = 1073
      Height = 145
      ControlType.Strings = (
        'RECEBER;CheckBox;S;N')
      Selected.Strings = (
        'RECEBER'#9'1'#9'Sel.:'#9'F'#9
        'ID_CONCESSIONARIA'#9'3'#9'Conc.:'#9'F'#9
        'ID_CLIENTES'#9'7'#9'ID_Cliente:'#9#9
        'DOCUMENTO'#9'5'#9'Documento:'#9#9
        'PARCELA'#9'5'#9'Parc.:'#9#9
        'VEZES'#9'5'#9'Vezes:'#9#9
        'FORMA_PAGAMENTO'#9'4'#9'Forma de pagamento:'#9'F'#9
        'ORIGEM'#9'1'#9'Orig.:'#9'F'
        'VENCIMENTO'#9'10'#9'Vencimento:'#9#9
        'VALOR'#9'19'#9'Valor R$:'#9#9
        'EMISSAO'#9'10'#9'Emiss'#227'o:'#9#9
        'HISTORICO'#9'45'#9'Hist'#243'rico:'#9#9
        'NUMERO_CV'#9'10'#9'N'#250'mero CV:'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceCreceber
      TabOrder = 4
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid2DblClick
    end
    object BtnConfirma: TBitBtn
      Left = 799
      Top = 80
      Width = 110
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
      TabOrder = 5
      OnClick = BtnConfirmaClick
    end
    object Banco: TEdit
      Left = 609
      Top = 82
      Width = 50
      Height = 21
      TabOrder = 6
      Text = 'Banco'
      OnKeyPress = FormKeyPress
    end
    object Data: TJvDateEdit
      Left = 665
      Top = 48
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object NomeCliente: TJvDBMaskEdit
      Left = 609
      Top = 16
      Width = 404
      Height = 21
      DataField = 'NOME'
      DataSource = DataSourceClientes
      Enabled = False
      TabOrder = 8
      EditMask = ''
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 447
      Width = 145
      Height = 25
      Caption = 'Marca / Desmarca todos'
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object TotalCartoes: TCurrencyEdit
      Left = 373
      Top = 449
      Width = 99
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 10
    end
    object NumeroCartoes: TEdit
      Left = 337
      Top = 449
      Width = 29
      Height = 21
      TabOrder = 11
      Text = '0'
    end
    object Saldo: TCurrencyEdit
      Left = 504
      Top = 449
      Width = 99
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 12
      Visible = False
    end
    object Juros: TCurrencyEdit
      Left = 610
      Top = 449
      Width = 99
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 13
      Visible = False
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 68
      Width = 104
      Height = 25
      Caption = 'Limpar Arquivo'
      TabOrder = 14
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 6
      Width = 104
      Height = 25
      Caption = 'Converte arquivo'
      TabOrder = 15
      OnClick = BitBtn3Click
      OnExit = BtnImportaExit
      OnKeyPress = FormKeyPress
    end
    object Memo1: TMemo
      Left = 664
      Top = 128
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 16
      Visible = False
    end
    object Memo2: TMemo
      Left = 672
      Top = 336
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo2')
      TabOrder = 17
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 478
      Width = 145
      Height = 25
      Caption = 'Localizar contas a receber'
      TabOrder = 18
      OnClick = BitBtn4Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 35
  end
  object DataSourceCartoes: TDataSource
    AutoEdit = False
    DataSet = tblCartoes
    Left = 328
    Top = 168
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = tblCreceber
    Left = 392
    Top = 320
  end
  object tblCartoes: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterDelete = tblCartoesAfterPost
    AfterPost = tblCartoesAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from conciliacao_cartoes'
      'where'
      '  ID_CONCILIACAO_CARTOES = :OLD_ID_CONCILIACAO_CARTOES')
    InsertSQL.Strings = (
      'insert into conciliacao_cartoes'
      
        '  (ID_CONCILIACAO_CARTOES, CODIGO_ESTABELECIMENTO, CARTAO, DATA_' +
        'PAGAMENTO, '
      '   PARCELA, VALOR_BRUTO, TAXA_TARIFA, VALOR_LIQUIDO, NUMERO_CV)'
      'values'
      
        '  (:ID_CONCILIACAO_CARTOES, :CODIGO_ESTABELECIMENTO, :CARTAO, :D' +
        'ATA_PAGAMENTO, '
      
        '   :PARCELA, :VALOR_BRUTO, :TAXA_TARIFA, :VALOR_LIQUIDO, :NUMERO' +
        '_CV)')
    RefreshSQL.Strings = (
      'Select *'
      'from conciliacao_cartoes '
      'where'
      '  ID_CONCILIACAO_CARTOES = :ID_CONCILIACAO_CARTOES')
    SelectSQL.Strings = (
      'Select * from conciliacao_cartoes')
    ModifySQL.Strings = (
      'update conciliacao_cartoes'
      'set'
      '  ID_CONCILIACAO_CARTOES = :ID_CONCILIACAO_CARTOES,'
      '  CODIGO_ESTABELECIMENTO = :CODIGO_ESTABELECIMENTO,'
      '  CARTAO = :CARTAO,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  PARCELA = :PARCELA,'
      '  VALOR_BRUTO = :VALOR_BRUTO,'
      '  TAXA_TARIFA = :TAXA_TARIFA,'
      '  VALOR_LIQUIDO = :VALOR_LIQUIDO,'
      '  NUMERO_CV = :NUMERO_CV'
      'where'
      '  ID_CONCILIACAO_CARTOES = :OLD_ID_CONCILIACAO_CARTOES')
    ParamCheck = True
    UniDirectional = False
    Left = 424
    Top = 128
    object tblCartoesCODIGO_ESTABELECIMENTO: TIBStringField
      DisplayLabel = 'C'#243'd. estabelecimento'
      DisplayWidth = 10
      FieldName = 'CODIGO_ESTABELECIMENTO'
      Origin = '"CONCILIACAO_CARTOES"."CODIGO_ESTABELECIMENTO"'
      Size = 10
    end
    object tblCartoesCARTAO: TIBStringField
      DisplayLabel = 'Cart'#227'o:'
      DisplayWidth = 20
      FieldName = 'CARTAO'
      Origin = '"CONCILIACAO_CARTOES"."CARTAO"'
    end
    object tblCartoesDATA_PAGAMENTO: TDateField
      DisplayLabel = 'Data de pagamento:'
      DisplayWidth = 10
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CONCILIACAO_CARTOES"."DATA_PAGAMENTO"'
    end
    object tblCartoesPARCELA: TIBStringField
      DisplayLabel = 'Parcela:'
      DisplayWidth = 10
      FieldName = 'PARCELA'
      Origin = '"CONCILIACAO_CARTOES"."PARCELA"'
      Size = 10
    end
    object tblCartoesVALOR_BRUTO: TIBBCDField
      DisplayLabel = 'Valor bruto R$:'
      DisplayWidth = 19
      FieldName = 'VALOR_BRUTO'
      Origin = '"CONCILIACAO_CARTOES"."VALOR_BRUTO"'
      Precision = 18
      Size = 2
    end
    object tblCartoesTAXA_TARIFA: TIBBCDField
      DisplayLabel = 'Taxa/Tarifa:'
      DisplayWidth = 19
      FieldName = 'TAXA_TARIFA'
      Origin = '"CONCILIACAO_CARTOES"."TAXA_TARIFA"'
      Precision = 18
      Size = 2
    end
    object tblCartoesVALOR_LIQUIDO: TIBBCDField
      DisplayLabel = 'Valor l'#237'quido R$:'
      DisplayWidth = 19
      FieldName = 'VALOR_LIQUIDO'
      Origin = '"CONCILIACAO_CARTOES"."VALOR_LIQUIDO"'
      Precision = 18
      Size = 2
    end
    object tblCartoesNUMERO_CV: TIBStringField
      DisplayLabel = 'N'#250'mero do CV'
      DisplayWidth = 10
      FieldName = 'NUMERO_CV'
      Origin = '"CONCILIACAO_CARTOES"."NUMERO_CV"'
      Size = 10
    end
    object tblCartoesID_CONCILIACAO_CARTOES: TIntegerField
      FieldName = 'ID_CONCILIACAO_CARTOES'
      Origin = '"CONCILIACAO_CARTOES"."ID_CONCILIACAO_CARTOES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object tblBancos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterDelete = tblCartoesAfterPost
    AfterPost = tblCartoesAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from banco'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    InsertSQL.Strings = (
      'insert into banco'
      
        '  (ID_BANCO, ID_CONCESSIONARIA, ID_CLIENTES, ID_AVALISTA, DOCUME' +
        'NTO, NATUREZA, '
      
        '   DATA, VALOR, BANCO, CONTA, HISTORICO, JUROS, ORIGEM, ID_CRECE' +
        'BER, ID_DESPESAS)'
      'values'
      
        '  (:ID_BANCO, :ID_CONCESSIONARIA, :ID_CLIENTES, :ID_AVALISTA, :D' +
        'OCUMENTO, '
      
        '   :NATUREZA, :DATA, :VALOR, :BANCO, :CONTA, :HISTORICO, :JUROS,' +
        ' :ORIGEM, '
      '   :ID_CRECEBER, :ID_DESPESAS)')
    RefreshSQL.Strings = (
      'Select *'
      'from banco '
      'where'
      '  ID_BANCO = :ID_BANCO')
    SelectSQL.Strings = (
      'Select * from banco')
    ModifySQL.Strings = (
      'update banco'
      'set'
      '  ID_BANCO = :ID_BANCO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  NATUREZA = :NATUREZA,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR,'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  HISTORICO = :HISTORICO,'
      '  JUROS = :JUROS,'
      '  ORIGEM = :ORIGEM,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_DESPESAS = :ID_DESPESAS'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    ParamCheck = True
    UniDirectional = False
    Left = 800
    Top = 48
    object tblBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = '"BANCO"."ID_BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblBancosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"BANCO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblBancosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"BANCO"."ID_CLIENTES"'
    end
    object tblBancosID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"BANCO"."ID_AVALISTA"'
    end
    object tblBancosDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"BANCO"."DOCUMENTO"'
      Size = 13
    end
    object tblBancosNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"BANCO"."NATUREZA"'
      Size = 1
    end
    object tblBancosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"BANCO"."DATA"'
    end
    object tblBancosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BANCO"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblBancosBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"BANCO"."BANCO"'
      Size = 4
    end
    object tblBancosCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"BANCO"."CONTA"'
      Size = 4
    end
    object tblBancosHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BANCO"."HISTORICO"'
      Size = 60
    end
    object tblBancosJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"BANCO"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblBancosORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"BANCO"."ORIGEM"'
      Size = 1
    end
    object tblBancosID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"BANCO"."ID_CRECEBER"'
    end
    object tblBancosID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"BANCO"."ID_DESPESAS"'
    end
  end
  object DataSourceBancos: TDataSource
    AutoEdit = False
    DataSet = tblBancos
    Left = 840
    Top = 48
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterDelete = tblCartoesAfterPost
    AfterPost = tblCartoesAfterPost
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
      
        '   CODIGO, COENDERECO, COESTADO, COMISSAO, CONTA, CPF, DESCONTO,' +
        ' EMAIL, '
      
        '   EMPR_BAIRRO, EMPR_CEP, EMPR_CIDADE, EMPR_ENDERECO, EMPR_ESTAD' +
        'O, EMPR_FONE, '
      
        '   EMPRESA, ENDERECO, ESTADO, FONE1, FONE2, FONE3, FORNECEDOR, F' +
        'OTO, ID_CLIENTES, '
      
        '   ID_CONCESSIONARIA, IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOM' +
        'E, NUM_CPF, '
      
        '   PAI, REF_AG_BANC, REF_BANC, REF_COML_FONE1, REF_COML_FONE2, R' +
        'EF_COML1, '
      
        '   REF_COML2, REF_CTA_BANC, REF_FONE1, REF_FONE2, REF_NOME1, REF' +
        '_NOME2, '
      '   REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR)'
      'values'
      
        '  (:ADMISSAO, :BAIRRO, :CADASTRO, :CEP, :CIDADE, :CLIENTE, :COBA' +
        'IRRO, :COCEP, '
      
        '   :COCIDADE, :CODIGO, :COENDERECO, :COESTADO, :COMISSAO, :CONTA' +
        ', :CPF, '
      
        '   :DESCONTO, :EMAIL, :EMPR_BAIRRO, :EMPR_CEP, :EMPR_CIDADE, :EM' +
        'PR_ENDERECO, '
      
        '   :EMPR_ESTADO, :EMPR_FONE, :EMPRESA, :ENDERECO, :ESTADO, :FONE' +
        '1, :FONE2, '
      
        '   :FONE3, :FORNECEDOR, :FOTO, :ID_CLIENTES, :ID_CONCESSIONARIA,' +
        ' :IDENTIDADE, '
      
        '   :MAE, :MECANICO, :NASCIMENTO, :NOME, :NUM_CPF, :PAI, :REF_AG_' +
        'BANC, :REF_BANC, '
      
        '   :REF_COML_FONE1, :REF_COML_FONE2, :REF_COML1, :REF_COML2, :RE' +
        'F_CTA_BANC, '
      
        '   :REF_FONE1, :REF_FONE2, :REF_NOME1, :REF_NOME2, :REG_SPC, :SA' +
        'LARIO, '
      '   :SPC, :TRANSPORTADORA, :VENDEDOR)')
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
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'where id_clientes = :id')
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
    ParamCheck = True
    UniDirectional = False
    Left = 752
    Top = 8
  end
  object DataSourceClientes: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 840
    Top = 8
  end
  object tblCreceber: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterDelete = tblCartoesAfterPost
    AfterPost = tblCartoesAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Creceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into Creceber'
      
        '  (ID_CRECEBER, ID_CONCESSIONARIA, ID_CLIENTES, ID_AVALISTA, ID_' +
        'CRECEBER_RENEGOCIADO, '
      
        '   DOCUMENTO, PARCELA, VEZES, ID_FORMA_PAGAMENTO, ORIGEM, CONTA,' +
        ' VENCIMENTO, '
      
        '   VALOR, EMISSAO, TOTAL, PAGAMENTO, VALOR_PAGO, BANCO, HISTORIC' +
        'O, STATUS, '
      '   ID_PEDIDO_VEICULOS, BOLETO_EMITIDO, NUMERO_CV)'
      'values'
      
        '  (:ID_CRECEBER, :ID_CONCESSIONARIA, :ID_CLIENTES, :ID_AVALISTA,' +
        ' :ID_CRECEBER_RENEGOCIADO, '
      
        '   :DOCUMENTO, :PARCELA, :VEZES, :ID_FORMA_PAGAMENTO, :ORIGEM, :' +
        'CONTA, '
      
        '   :VENCIMENTO, :VALOR, :EMISSAO, :TOTAL, :PAGAMENTO, :VALOR_PAG' +
        'O, :BANCO, '
      
        '   :HISTORICO, :STATUS, :ID_PEDIDO_VEICULOS, :BOLETO_EMITIDO, :N' +
        'UMERO_CV)')
    RefreshSQL.Strings = (
      'Select *'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select C.*,'
      #39'N'#39' as receber,'
      'f.ID_FORMAS_PAGAMENTO,'
      'f.forma_pagamento from Creceber C'
      'inner join formas_pagamento f on '
      '(c.Id_forma_pagamento = f.Id_formas_pagamento)'
      'where'
      'c.Status <> '#39'Cancelado'#39
      'and'
      'c.Status<> '#39'Pendente'#39
      'and '
      'c.Status <> '#39'Recebido'#39
      'and'
      'c.Status <> '#39'Renegociado'#39
      'and'
      'c.Status <> '#39'Financiado'#39
      'and'
      '(cast(c.numero_cv as integer) = :idNumeroCV)'
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CRECEBER_RENEGOCIADO = :ID_CRECEBER_RENEGOCIADO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  PARCELA = :PARCELA,'
      '  VEZES = :VEZES,'
      '  ID_FORMA_PAGAMENTO = :ID_FORMA_PAGAMENTO,'
      '  ORIGEM = :ORIGEM,'
      '  CONTA = :CONTA,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  VALOR = :VALOR,'
      '  EMISSAO = :EMISSAO,'
      '  TOTAL = :TOTAL,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  BANCO = :BANCO,'
      '  HISTORICO = :HISTORICO,'
      '  STATUS = :STATUS,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  BOLETO_EMITIDO = :BOLETO_EMITIDO,'
      '  NUMERO_CV = :NUMERO_CV'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    ParamCheck = True
    UniDirectional = False
    Left = 272
    Top = 312
    object tblCreceberRECEBER: TIBStringField
      DisplayLabel = 'Sel.:'
      DisplayWidth = 1
      FieldName = 'RECEBER'
      ProviderFlags = []
      FixedChar = True
      Size = 1
      EmptyAsNull = False
    end
    object tblCreceberID_CONCESSIONARIA: TIntegerField
      DisplayLabel = 'Conc.:'
      DisplayWidth = 3
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCreceberID_CLIENTES: TIntegerField
      DisplayLabel = 'ID_Cliente:'
      DisplayWidth = 7
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Required = True
    end
    object tblCreceberDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento:'
      DisplayWidth = 5
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCreceberPARCELA: TIBStringField
      DisplayLabel = 'Parc.:'
      DisplayWidth = 5
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberVEZES: TIBStringField
      DisplayLabel = 'Vezes:'
      DisplayWidth = 5
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberFORMA_PAGAMENTO: TIBStringField
      DisplayLabel = 'Forma de pagamento:'
      DisplayWidth = 4
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."FORMA_PAGAMENTO"'
    end
    object tblCreceberORIGEM: TIBStringField
      DisplayLabel = 'Orig.:'
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceberVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento:'
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceberVALOR: TIBBCDField
      DisplayLabel = 'Valor R$:'
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCreceberEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o:'
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCreceberHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico:'
      DisplayWidth = 45
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 61
    end
    object tblCreceberNUMERO_CV: TIBStringField
      DisplayLabel = 'N'#250'mero CV:'
      DisplayWidth = 10
      FieldName = 'NUMERO_CV'
      Origin = '"CRECEBER"."NUMERO_CV"'
      Size = 10
    end
    object tblCreceberID_CRECEBER: TIntegerField
      DisplayWidth = 11
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object tblCreceberSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
      Visible = False
    end
    object tblCreceberID_PEDIDO_VEICULOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
      Visible = False
    end
    object tblCreceberBOLETO_EMITIDO: TIBStringField
      DisplayWidth = 1
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblCreceberID_FORMA_PAGAMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
      Visible = False
    end
    object tblCreceberTOTAL: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblCreceberPAGAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
      Visible = False
    end
    object tblCreceberVALOR_PAGO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblCreceberBANCO: TIBStringField
      DisplayWidth = 5
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Visible = False
      Size = 5
    end
    object tblCreceberID_FORMAS_PAGAMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."ID_FORMAS_PAGAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object tblCreceberID_AVALISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
      Visible = False
    end
    object tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
      Visible = False
    end
    object tblCreceberCONTA: TIBStringField
      DisplayWidth = 5
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Visible = False
      Size = 5
    end
  end
end
