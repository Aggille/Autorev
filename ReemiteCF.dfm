object BoxReemiteCF: TBoxReemiteCF
  Left = 15
  Top = 85
  Caption = 'Emiss'#227'o de cupons fiscais'
  ClientHeight = 92
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 81
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 145
      Height = 13
      Caption = 'N'#186' provis'#243'rio do CF a reemitir:'
    end
    object NF: TEdit
      Left = 167
      Top = 16
      Width = 84
      Height = 21
      TabOrder = 0
      OnKeyPress = NFKeyPress
    end
    object BtnOk: TBitBtn
      Left = 64
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = BtnOkClick
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 73
    Width = 257
    Height = 19
    Panels = <>
  end
  object EdFonte: TEdit
    Left = 96
    Top = 100
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'Draft 10cpi'
    Visible = False
  end
  object PrintDialog: TPrintDialog
    Copies = 1
    Left = 152
    Top = 40
  end
  object tblNofisaFaturas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from NOFISA_FATURAS'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    InsertSQL.Strings = (
      'insert into NOFISA_FATURAS'
      
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
      'from NOFISA_FATURAS '
      'where'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS')
    SelectSQL.Strings = (
      'select * from NOFISA_FATURAS'
      'where id_Nofisa = :idNofisa')
    ModifySQL.Strings = (
      'update NOFISA_FATURAS'
      'set'
      '  FATURA = :FATURA,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    Left = 64
    Top = 40
    object tblNofisaFaturasID_NOFISA_FATURAS: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblNofisaFaturasID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
      Required = True
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
      Required = True
    end
  end
  object tblSada: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from SADA'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into SADA'
      
        '  (ALIQ_ICMS, ANO_FABRICACAO, ANO_MODELO, CFOP, CHASSI, CODIGO, ' +
        'COMBUSTIVEL, '
      
        '   COR, CST, CUSTO, DESCRICAO, ICMS, ID_CONCESSIONARIA, ID_NOFIS' +
        'A, ID_SADA, '
      
        '   MARCA, MODELO, MOTOR, NAT_OP, NF, PLACA, POTENCIA, PRECO, QTD' +
        'E, RENAVAM, '
      '   ST_COFINS, STATUS, SUBST, UNIDADE)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :CFOP, :CHASSI, :CO' +
        'DIGO, :COMBUSTIVEL, '
      
        '   :COR, :CST, :CUSTO, :DESCRICAO, :ICMS, :ID_CONCESSIONARIA, :I' +
        'D_NOFISA, '
      
        '   :ID_SADA, :MARCA, :MODELO, :MOTOR, :NAT_OP, :NF, :PLACA, :POT' +
        'ENCIA, '
      
        '   :PRECO, :QTDE, :RENAVAM, :ST_COFINS, :STATUS, :SUBST, :UNIDAD' +
        'E)')
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
      '  STATUS'
      'from SADA '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'select * from SADA'
      'where id_Nofisa = :idNofisa')
    ModifySQL.Strings = (
      'update SADA'
      'set'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CFOP = :CFOP,'
      '  CHASSI = :CHASSI,'
      '  CODIGO = :CODIGO,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  CST = :CST,'
      '  CUSTO = :CUSTO,'
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
      '  ID_NOFISA = :OLD_ID_NOFISA')
    Left = 64
    Top = 8
    object tblSadaID_SADA: TIntegerField
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblSadaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
      Required = True
    end
    object tblSadaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
      Required = True
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
    object tblSadaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object tblSadaICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Precision = 18
      Size = 2
    end
    object tblSadaCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblSadaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblSadaCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
    object tblSadaNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
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
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
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
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'where id_clientes = :idCliente')
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
    Left = 32
    Top = 8
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      Required = True
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
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from NOFISA'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into NOFISA'
      
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
      'from NOFISA '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'select * from NOFISA'
      'where numero = :idNumero and'
      'id_Concessionaria = :idConcessionaria')
    ModifySQL.Strings = (
      'update NOFISA'
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
    Left = 32
    Top = 40
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      currency = True
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      currency = True
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
  end
  object tblFormas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from FORMAS_PAGAMENTO'
      'where'
      '  ID_FORMAS_PAGAMENTO = :OLD_ID_FORMAS_PAGAMENTO')
    InsertSQL.Strings = (
      'insert into FORMAS_PAGAMENTO'
      
        '  (COEFICIENTE, CPAGAR, CRECEBER, FORMA_PAGAMENTO, ID_FORMAS_PAG' +
        'AMENTO, '
      '   PECAS, POSVENDA, PRAZO, VEICULOS)'
      'values'
      
        '  (:COEFICIENTE, :CPAGAR, :CRECEBER, :FORMA_PAGAMENTO, :ID_FORMA' +
        'S_PAGAMENTO, '
      '   :PECAS, :POSVENDA, :PRAZO, :VEICULOS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_FORMAS_PAGAMENTO,'
      '  FORMA_PAGAMENTO,'
      '  COEFICIENTE,'
      '  PRAZO,'
      '  VEICULOS,'
      '  PECAS,'
      '  POSVENDA,'
      '  CRECEBER,'
      '  CPAGAR'
      'from FORMAS_PAGAMENTO '
      'where'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO')
    SelectSQL.Strings = (
      'select * from FORMAS_PAGAMENTO'
      'where id_formas_pagamento = :idFormasPagamento')
    ModifySQL.Strings = (
      'update FORMAS_PAGAMENTO'
      'set'
      '  COEFICIENTE = :COEFICIENTE,'
      '  CPAGAR = :CPAGAR,'
      '  CRECEBER = :CRECEBER,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  PECAS = :PECAS,'
      '  POSVENDA = :POSVENDA,'
      '  PRAZO = :PRAZO,'
      '  VEICULOS = :VEICULOS'
      'where'
      '  ID_FORMAS_PAGAMENTO = :OLD_ID_FORMAS_PAGAMENTO')
    Top = 40
    object tblFormasID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."ID_FORMAS_PAGAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblFormasFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."FORMA_PAGAMENTO"'
    end
    object tblFormasCOEFICIENTE: TFMTBCDField
      FieldName = 'COEFICIENTE'
      Origin = '"FORMAS_PAGAMENTO"."COEFICIENTE"'
      Precision = 9
      Size = 5
    end
    object tblFormasPRAZO: TIBStringField
      FieldName = 'PRAZO'
      Origin = '"FORMAS_PAGAMENTO"."PRAZO"'
      Size = 2
    end
    object tblFormasVEICULOS: TIBStringField
      FieldName = 'VEICULOS'
      Origin = '"FORMAS_PAGAMENTO"."VEICULOS"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPECAS: TIBStringField
      FieldName = 'PECAS'
      Origin = '"FORMAS_PAGAMENTO"."PECAS"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPOSVENDA: TIBStringField
      FieldName = 'POSVENDA'
      Origin = '"FORMAS_PAGAMENTO"."POSVENDA"'
      FixedChar = True
      Size = 1
    end
    object tblFormasCRECEBER: TIBStringField
      FieldName = 'CRECEBER'
      Origin = '"FORMAS_PAGAMENTO"."CRECEBER"'
      FixedChar = True
      Size = 1
    end
    object tblFormasCPAGAR: TIBStringField
      FieldName = 'CPAGAR'
      Origin = '"FORMAS_PAGAMENTO"."CPAGAR"'
      FixedChar = True
      Size = 1
    end
  end
  object tblSeda: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
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
      'where id_Nofi = :idNofisa')
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
    Top = 8
    object tblSedaID_SEDA: TIntegerField
      FieldName = 'ID_SEDA'
      Origin = '"SEDA"."ID_SEDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblSedaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SEDA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblSedaID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"SEDA"."ID_NOFI"'
      Required = True
    end
    object tblSedaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SEDA"."NF"'
      Size = 8
    end
    object tblSedaID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"SEDA"."ID_TMO"'
      Required = True
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
end
