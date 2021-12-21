object FDBVelho1: TFDBVelho1
  Left = 0
  Top = 0
  Caption = 'FDBVelho1'
  ClientHeight = 192
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tblClientes: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Clientes'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    InsertSQL.Strings = (
      'insert into Clientes'
      
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
      
        '   IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOME, NOVO_ID_CLIENTES' +
        ', NUM_CPF, '
      
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
      
        '   :NOME, :NOVO_ID_CLIENTES, :NUM_CPF, :PAI, :REF_AG_BANC, :REF_' +
        'BANC, :REF_COML_FONE1, '
      
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
      '  NOVO_ID_CLIENTES'
      'from Clientes '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'Select * from Clientes')
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
      '  NOVO_ID_CLIENTES = :NOVO_ID_CLIENTES,'
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
    Top = 128
    object tblClientesID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblClientesCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblClientesID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblClientesIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object tblClientesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object tblClientesNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object tblClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object tblClientesPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object tblClientesMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
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
    object tblClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblClientesESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblClientesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object tblClientesCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object tblClientesDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object tblClientesFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblClientesFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblClientesFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object tblClientesCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object tblClientesCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object tblClientesCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object tblClientesCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object tblClientesCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object tblClientesSPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object tblClientesREG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object tblClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblClientesCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object tblClientesFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblClientesTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object tblClientesFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblClientesMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object tblClientesVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object tblClientesCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 5
    end
    object tblClientesCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object tblClientesEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object tblClientesADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object tblClientesSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object tblClientesEMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object tblClientesEMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object tblClientesEMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object tblClientesEMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object tblClientesEMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object tblClientesEMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object tblClientesREF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object tblClientesREF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblClientesREF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object tblClientesREF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblClientesREF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 50
    end
    object tblClientesREF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object tblClientesREF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 50
    end
    object tblClientesREF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblClientesREF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object tblClientesREF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object tblClientesREF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object tblClientesFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object tblClientesFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object tblClientesCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblClientesNOVO_ID_CLIENTES: TIntegerField
      FieldName = 'NOVO_ID_CLIENTES'
      Origin = '"CLIENTES"."NOVO_ID_CLIENTES"'
    end
  end
  object tblPecas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CST, DESCRICAO, ESP' +
        'ECIAL, '
      
        '   FORA_LINHA, GRUPO, ICMS, ID_PECAS, IPI, LISTA, MIN_PEDIDO, NC' +
        'M, NOVASUBS, '
      
        '   NOVO_ID_PECAS, ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, S' +
        'T_COFINS, '
      '   SUBST_TRIB, SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CST, :DESCRIC' +
        'AO, :ESPECIAL, '
      
        '   :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LISTA, :MIN_PED' +
        'IDO, :NCM, '
      
        '   :NOVASUBS, :NOVO_ID_PECAS, :ORIGINAL, :PPS, :PRECO, :PRECO_GA' +
        'R, :QTD_PEDIDA, '
      '   :ST_COFINS, :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  ICMS,'
      '  PRECO,'
      '  PPS,'
      '  PRECO_GAR,'
      '  IPI,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2,'
      '  NCM,'
      '  ORIGINAL,'
      '  CST,'
      '  NOVO_ID_PECAS'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'Select * from Pecas')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CST = :CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NCM = :NCM,'
      '  NOVASUBS = :NOVASUBS,'
      '  NOVO_ID_PECAS = :NOVO_ID_PECAS,'
      '  ORIGINAL = :ORIGINAL,'
      '  PPS = :PPS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    Left = 264
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
      Size = 50
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
    object tblPecasNOVO_ID_PECAS: TIntegerField
      FieldName = 'NOVO_ID_PECAS'
      Origin = '"PECAS"."NOVO_ID_PECAS"'
    end
  end
  object DataSourceClientes: TDataSource
    DataSet = tblClientes
    Left = 32
    Top = 128
  end
  object DataSourcePecas: TDataSource
    DataSet = tblPecas
    Left = 296
  end
  object IBDatabase: TIBDatabase
    DatabaseName = 'localhost:C:\Autorev\Database\Taquara\AUTOREV-Importado.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=iv80486'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 384
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Left = 384
    Top = 48
  end
  object tblAtendimento: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Atendimento'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    InsertSQL.Strings = (
      'insert into Atendimento'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, COR, DATA_ENTRADA, DATA_S' +
        'AIDA, DESCONTO, '
      
        '   ID_ATENDIMENTO, ID_CATEGORIA, ID_CLIENTES, ID_CONCESSIONARIA,' +
        ' ID_MECANICO, '
      
        '   KM, MARCA, MEMO, MODELO, NOVO_ID_ATENDIMENTO, ORC_OS, PLACA, ' +
        'STATUS, '
      
        '   TOTAL_PECAS, TOTAL_PECAS_TABELA, TOTAL_SERVICOS, VALOR_LIQUID' +
        'O_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :COR, :DATA_ENTRADA, :' +
        'DATA_SAIDA, '
      
        '   :DESCONTO, :ID_ATENDIMENTO, :ID_CATEGORIA, :ID_CLIENTES, :ID_' +
        'CONCESSIONARIA, '
      
        '   :ID_MECANICO, :KM, :MARCA, :MEMO, :MODELO, :NOVO_ID_ATENDIMEN' +
        'TO, :ORC_OS, '
      
        '   :PLACA, :STATUS, :TOTAL_PECAS, :TOTAL_PECAS_TABELA, :TOTAL_SE' +
        'RVICOS, '
      '   :VALOR_LIQUIDO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_MECANICO,'
      '  ID_CATEGORIA,'
      '  MARCA,'
      '  MODELO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  CHASSI,'
      '  KM,'
      '  DATA_ENTRADA,'
      '  DATA_SAIDA,'
      '  ORC_OS,'
      '  COR,'
      '  PLACA,'
      '  STATUS,'
      '  MEMO,'
      '  DESCONTO,'
      '  TOTAL_PECAS,'
      '  TOTAL_SERVICOS,'
      '  TOTAL_PECAS_TABELA,'
      '  VALOR_LIQUIDO_VENDA,'
      '  NOVO_ID_ATENDIMENTO'
      'from Atendimento '
      'where'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO')
    SelectSQL.Strings = (
      'Select * from Atendimento')
    ModifySQL.Strings = (
      'update Atendimento'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCONTO = :DESCONTO,'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MEMO = :MEMO,'
      '  MODELO = :MODELO,'
      '  NOVO_ID_ATENDIMENTO = :NOVO_ID_ATENDIMENTO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  TOTAL_PECAS = :TOTAL_PECAS,'
      '  TOTAL_PECAS_TABELA = :TOTAL_PECAS_TABELA,'
      '  TOTAL_SERVICOS = :TOTAL_SERVICOS,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    object tblAtendimentoID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."ID_ATENDIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAtendimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAtendimentoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIMENTO"."ID_CLIENTES"'
      Required = True
    end
    object tblAtendimentoID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object tblAtendimentoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"ATENDIMENTO"."ID_CATEGORIA"'
      Required = True
    end
    object tblAtendimentoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"ATENDIMENTO"."MARCA"'
      Size = 10
    end
    object tblAtendimentoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"ATENDIMENTO"."MODELO"'
    end
    object tblAtendimentoANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"ATENDIMENTO"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblAtendimentoANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"ATENDIMENTO"."ANO_MODELO"'
      Size = 4
    end
    object tblAtendimentoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"ATENDIMENTO"."CHASSI"'
    end
    object tblAtendimentoKM: TIntegerField
      FieldName = 'KM'
      Origin = '"ATENDIMENTO"."KM"'
    end
    object tblAtendimentoDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = '"ATENDIMENTO"."DATA_ENTRADA"'
    end
    object tblAtendimentoDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ATENDIMENTO"."DATA_SAIDA"'
    end
    object tblAtendimentoORC_OS: TIBStringField
      FieldName = 'ORC_OS'
      Origin = '"ATENDIMENTO"."ORC_OS"'
      Size = 1
    end
    object tblAtendimentoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"ATENDIMENTO"."COR"'
      Size = 10
    end
    object tblAtendimentoPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"ATENDIMENTO"."PLACA"'
      Size = 7
    end
    object tblAtendimentoSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ATENDIMENTO"."STATUS"'
    end
    object tblAtendimentoMEMO: TBlobField
      FieldName = 'MEMO'
      Origin = '"ATENDIMENTO"."MEMO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tblAtendimentoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"ATENDIMENTO"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS: TIBBCDField
      FieldName = 'TOTAL_PECAS'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_SERVICOS: TIBBCDField
      FieldName = 'TOTAL_SERVICOS'
      Origin = '"ATENDIMENTO"."TOTAL_SERVICOS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS_TABELA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ATENDIMENTO"."VALOR_LIQUIDO_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoNOVO_ID_ATENDIMENTO: TIntegerField
      FieldName = 'NOVO_ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."NOVO_ID_ATENDIMENTO"'
    end
  end
  object DataSourceAtendimento: TDataSource
    DataSet = tblAtendimento
    Left = 32
  end
  object tblAtendimentoPecas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Atendimento_Pecas'
      'where'
      '  ID_ATENDIMENTO_PECAS = :OLD_ID_ATENDIMENTO_PECAS')
    InsertSQL.Strings = (
      'insert into Atendimento_Pecas'
      
        '  (ID_ATENDIMENTO, ID_ATENDIMENTO_PECAS, ID_CONCESSIONARIA, ID_P' +
        'ECAS, PRECO, '
      '   PRECO_TABELA, QUANTIDADE, STATUS)'
      'values'
      
        '  (:ID_ATENDIMENTO, :ID_ATENDIMENTO_PECAS, :ID_CONCESSIONARIA, :' +
        'ID_PECAS, '
      '   :PRECO, :PRECO_TABELA, :QUANTIDADE, :STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO_PECAS,'
      '  ID_CONCESSIONARIA,'
      '  ID_ATENDIMENTO,'
      '  ID_PECAS,'
      '  QUANTIDADE,'
      '  PRECO,'
      '  STATUS,'
      '  PRECO_TABELA'
      'from Atendimento_Pecas '
      'where'
      '  ID_ATENDIMENTO_PECAS = :ID_ATENDIMENTO_PECAS')
    SelectSQL.Strings = (
      'Select * from Atendimento_Pecas')
    ModifySQL.Strings = (
      'update Atendimento_Pecas'
      'set'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_ATENDIMENTO_PECAS = :ID_ATENDIMENTO_PECAS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  PRECO = :PRECO,'
      '  PRECO_TABELA = :PRECO_TABELA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  STATUS = :STATUS'
      'where'
      '  ID_ATENDIMENTO_PECAS = :OLD_ID_ATENDIMENTO_PECAS')
    Top = 32
    object tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField
      FieldName = 'ID_ATENDIMENTO_PECAS'
      Origin = '"ATENDIMENTO_PECAS"."ID_ATENDIMENTO_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO_PECAS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAtendimentoPecasID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO_PECAS"."ID_ATENDIMENTO"'
      Required = True
    end
    object tblAtendimentoPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"ATENDIMENTO_PECAS"."ID_PECAS"'
      Required = True
    end
    object tblAtendimentoPecasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ATENDIMENTO_PECAS"."QUANTIDADE"'
    end
    object tblAtendimentoPecasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ATENDIMENTO_PECAS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoPecasSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ATENDIMENTO_PECAS"."STATUS"'
    end
    object tblAtendimentoPecasPRECO_TABELA: TIBBCDField
      FieldName = 'PRECO_TABELA'
      Origin = '"ATENDIMENTO_PECAS"."PRECO_TABELA"'
      Precision = 18
      Size = 2
    end
  end
  object AtendimentoPecas: TDataSource
    DataSet = tblAtendimentoPecas
    Left = 32
    Top = 32
  end
  object tblAtendimentoServicos: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Atendimento_Servicos'
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :OLD_ID_ATENDIMENTO_SERVICOS')
    InsertSQL.Strings = (
      'insert into Atendimento_Servicos'
      
        '  (ID_ATENDIMENTO, ID_ATENDIMENTO_SERVICOS, ID_CONCESSIONARIA, I' +
        'D_TMO, '
      '   PRECO, TEMPO)'
      'values'
      
        '  (:ID_ATENDIMENTO, :ID_ATENDIMENTO_SERVICOS, :ID_CONCESSIONARIA' +
        ', :ID_TMO, '
      '   :PRECO, :TEMPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO_SERVICOS,'
      '  ID_CONCESSIONARIA,'
      '  ID_ATENDIMENTO,'
      '  ID_TMO,'
      '  TEMPO,'
      '  PRECO'
      'from Atendimento_Servicos '
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :ID_ATENDIMENTO_SERVICOS')
    SelectSQL.Strings = (
      'Select * from Atendimento_Servicos')
    ModifySQL.Strings = (
      'update Atendimento_Servicos'
      'set'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_ATENDIMENTO_SERVICOS = :ID_ATENDIMENTO_SERVICOS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_TMO = :ID_TMO,'
      '  PRECO = :PRECO,'
      '  TEMPO = :TEMPO'
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :OLD_ID_ATENDIMENTO_SERVICOS')
    Top = 64
    object tblAtendimentoServicosID_ATENDIMENTO_SERVICOS: TIntegerField
      FieldName = 'ID_ATENDIMENTO_SERVICOS'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_ATENDIMENTO_SERVICOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAtendimentoServicosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAtendimentoServicosID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_ATENDIMENTO"'
      Required = True
    end
    object tblAtendimentoServicosID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_TMO"'
      Required = True
    end
    object tblAtendimentoServicosTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"ATENDIMENTO_SERVICOS"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object tblAtendimentoServicosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ATENDIMENTO_SERVICOS"."PRECO"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceAtendimentoServicos: TDataSource
    DataSet = tblAtendimentoServicos
    Left = 32
    Top = 64
  end
  object tblBanco: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Banco'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    InsertSQL.Strings = (
      'insert into Banco'
      
        '  (BANCO, CONTA, DATA, DOCUMENTO, HISTORICO, ID_AVALISTA, ID_BAN' +
        'CO, ID_CLIENTES, '
      '   ID_CONCESSIONARIA, JUROS, NATUREZA, ORIGEM, VALOR)'
      'values'
      
        '  (:BANCO, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :ID_AVALISTA, ' +
        ':ID_BANCO, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :JUROS, :NATUREZA, :ORIGEM,' +
        ' :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_BANCO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  DOCUMENTO,'
      '  NATUREZA,'
      '  DATA,'
      '  VALOR,'
      '  BANCO,'
      '  CONTA,'
      '  HISTORICO,'
      '  JUROS,'
      '  ORIGEM'
      'from Banco '
      'where'
      '  ID_BANCO = :ID_BANCO')
    SelectSQL.Strings = (
      'Select * from Banco')
    ModifySQL.Strings = (
      'update Banco'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_BANCO = :ID_BANCO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  VALOR = :VALOR'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    Left = 352
    Top = 96
    object tblBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = '"BANCO"."ID_BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblBancoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"BANCO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblBancoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"BANCO"."ID_CLIENTES"'
    end
    object tblBancoID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"BANCO"."ID_AVALISTA"'
    end
    object tblBancoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"BANCO"."DOCUMENTO"'
      Size = 13
    end
    object tblBancoNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"BANCO"."NATUREZA"'
      Size = 1
    end
    object tblBancoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"BANCO"."DATA"'
    end
    object tblBancoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BANCO"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblBancoBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"BANCO"."BANCO"'
      Size = 4
    end
    object tblBancoCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"BANCO"."CONTA"'
      Size = 4
    end
    object tblBancoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BANCO"."HISTORICO"'
      Size = 60
    end
    object tblBancoJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"BANCO"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblBancoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"BANCO"."ORIGEM"'
      Size = 1
    end
  end
  object DataSourceBanco: TDataSource
    DataSet = tblBanco
    Left = 384
    Top = 96
  end
  object tblCaixa: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Caixa'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into Caixa'
      
        '  (CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOCUMENTO, FORMA_PA' +
        'G, HISTORICO, '
      
        '   ID_CAIXA, ID_CLIENTES, ID_CONCESSIONARIA, ID_DEPOSITO, JUROS,' +
        ' NATUREZA, '
      '   ORIGEM, STATUS, STATUS_BANCO, VALOR)'
      'values'
      
        '  (:CONTA, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :DOCUMENTO, :FOR' +
        'MA_PAG, '
      
        '   :HISTORICO, :ID_CAIXA, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_' +
        'DEPOSITO, '
      '   :JUROS, :NATUREZA, :ORIGEM, :STATUS, :STATUS_BANCO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CAIXA,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  ORIGEM,'
      '  NATUREZA,'
      '  FORMA_PAG,'
      '  DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO,'
      '  VALOR,'
      '  CONTA,'
      '  HISTORICO,'
      '  STATUS,'
      '  JUROS,'
      '  STATUS_BANCO,'
      '  ID_DEPOSITO'
      'from Caixa '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'Select * from Caixa')
    ModifySQL.Strings = (
      'update Caixa'
      'set'
      '  CONTA = :CONTA,'
      '  DATA_LANCAMENTO = :DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  FORMA_PAG = :FORMA_PAG,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CAIXA = :ID_CAIXA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_DEPOSITO = :ID_DEPOSITO,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  STATUS_BANCO = :STATUS_BANCO,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    Left = 352
    Top = 128
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCaixaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CAIXA"."ID_CLIENTES"'
    end
    object tblCaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CAIXA"."DOCUMENTO"'
      Size = 10
    end
    object tblCaixaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CAIXA"."ORIGEM"'
      Size = 1
    end
    object tblCaixaNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"CAIXA"."NATUREZA"'
      FixedChar = True
      Size = 1
    end
    object tblCaixaFORMA_PAG: TIBStringField
      FieldName = 'FORMA_PAG'
      Origin = '"CAIXA"."FORMA_PAG"'
      Size = 13
    end
    object tblCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Origin = '"CAIXA"."DATA_LANCAMENTO"'
    end
    object tblCaixaDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"CAIXA"."DATA_RECEBIMENTO"'
    end
    object tblCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      Size = 5
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 50
    end
    object tblCaixaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
    end
    object tblCaixaJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"CAIXA"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblCaixaSTATUS_BANCO: TIBStringField
      FieldName = 'STATUS_BANCO'
      Origin = '"CAIXA"."STATUS_BANCO"'
    end
    object tblCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
    end
  end
  object DataSourceCaixa: TDataSource
    DataSet = tblCaixa
    Left = 384
    Top = 128
  end
  object tblCreceber: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Creceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into Creceber'
      
        '  (BANCO, BOLETO_EMITIDO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ' +
        'ID_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_CRECEBER, ID_CRECEBER_RENE' +
        'GOCIADO, '
      
        '   ID_FORMA_PAGAMENTO, ID_PEDIDO_VEICULOS, ORIGEM, PAGAMENTO, PA' +
        'RCELA, '
      '   STATUS, TOTAL, VALOR, VALOR_PAGO, VENCIMENTO, VEZES)'
      'values'
      
        '  (:BANCO, :BOLETO_EMITIDO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTO' +
        'RICO, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_CRECEBER_' +
        'RENEGOCIADO, '
      
        '   :ID_FORMA_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ORIGEM, :PAGAMENTO' +
        ', :PARCELA, '
      '   :STATUS, :TOTAL, :VALOR, :VALOR_PAGO, :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  ID_CRECEBER_RENEGOCIADO,'
      '  DOCUMENTO,'
      '  PARCELA,'
      '  VEZES,'
      '  ID_FORMA_PAGAMENTO,'
      '  ORIGEM,'
      '  CONTA,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  EMISSAO,'
      '  TOTAL,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  BANCO,'
      '  HISTORICO,'
      '  STATUS,'
      '  ID_PEDIDO_VEICULOS,'
      '  BOLETO_EMITIDO'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'Select * from Creceber')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  BANCO = :BANCO,'
      '  BOLETO_EMITIDO = :BOLETO_EMITIDO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_CRECEBER_RENEGOCIADO = :ID_CRECEBER_RENEGOCIADO,'
      '  ID_FORMA_PAGAMENTO = :ID_FORMA_PAGAMENTO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ORIGEM = :ORIGEM,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  PARCELA = :PARCELA,'
      '  STATUS = :STATUS,'
      '  TOTAL = :TOTAL,'
      '  VALOR = :VALOR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  VEZES = :VEZES'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    Top = 160
    object tblCreceberID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCreceberID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCreceberID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Required = True
    end
    object tblCreceberID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCreceberID_CRECEBER_RENEGOCIADO: TIntegerField
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
    end
    object tblCreceberDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCreceberPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberVEZES: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCreceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblCreceberORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceberCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 5
    end
    object tblCreceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCreceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCreceberTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object tblCreceberPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblCreceberVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCreceberBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 5
    end
    object tblCreceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblCreceberSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object tblCreceberID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCreceberBOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceCreceber: TDataSource
    DataSet = tblCreceber
    Left = 32
    Top = 160
  end
  object tblDespesas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Despesas'
      'where'
      '  ID_DESPESAS = :OLD_ID_DESPESAS')
    InsertSQL.Strings = (
      'insert into Despesas'
      
        '  (CONTA, DATA, HISTORICO, ID_CONCESSIONARIA, ID_DESPESAS, SETOR' +
        ', VALOR)'
      'values'
      
        '  (:CONTA, :DATA, :HISTORICO, :ID_CONCESSIONARIA, :ID_DESPESAS, ' +
        ':SETOR, '
      '   :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DESPESAS,'
      '  ID_CONCESSIONARIA,'
      '  CONTA,'
      '  HISTORICO,'
      '  DATA,'
      '  SETOR,'
      '  VALOR'
      'from Despesas '
      'where'
      '  ID_DESPESAS = :ID_DESPESAS')
    SelectSQL.Strings = (
      'Select * from Despesas')
    ModifySQL.Strings = (
      'update Despesas'
      'set'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_DESPESAS = :ID_DESPESAS,'
      '  SETOR = :SETOR,'
      '  VALOR = :VALOR'
      'where'
      '  ID_DESPESAS = :OLD_ID_DESPESAS')
    Left = 352
    Top = 160
    object tblDespesasID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"DESPESAS"."ID_DESPESAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblDespesasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DESPESAS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblDespesasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"DESPESAS"."CONTA"'
      Size = 4
    end
    object tblDespesasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"DESPESAS"."HISTORICO"'
      Size = 60
    end
    object tblDespesasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DESPESAS"."DATA"'
    end
    object tblDespesasSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = '"DESPESAS"."SETOR"'
      Size = 1
    end
    object tblDespesasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"DESPESAS"."VALOR"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceDespesas: TDataSource
    DataSet = tblDespesas
    Left = 384
    Top = 160
  end
  object tblNofisa: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Nofisa'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into Nofisa'
      
        '  (ARQUIVO, BASE_ICM_S, BASE_ICMS, CHAVE, COD_TRANS, CODIGO_FISC' +
        'AL, COFINS, '
      
        '   DADOS_AD01, DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI, DES' +
        'C_PEC, '
      
        '   DESCRICAO_CODIGO_FISCAL, EMISSAO, ENT_SAI, FORMA_PAGAMENTO, F' +
        'RETE_TIPO, '
      
        '   HORA, ID_CLIENTES, ID_CONCESSIONARIA, ID_NOFISA, IE_SUBS, ISS' +
        'QN, NOVO_ID_NOFISA, '
      
        '   NUMERO, OBS, ORIGEM, PIS, PLACA, PROTOCOLO, PROTOCOLO_CANCELA' +
        'MENTO, '
      
        '   QTDE_PROD, RECIBO, SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD' +
        ', VAL_FRETE, '
      
        '   VAL_ICMS, VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_SEGUR' +
        'O, VAL_SERV, '
      '   VENDEDOR, XML)'
      'values'
      
        '  (:ARQUIVO, :BASE_ICM_S, :BASE_ICMS, :CHAVE, :COD_TRANS, :CODIG' +
        'O_FISCAL, '
      
        '   :COFINS, :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, ' +
        ':DESC_OFI, '
      
        '   :DESC_PEC, :DESCRICAO_CODIGO_FISCAL, :EMISSAO, :ENT_SAI, :FOR' +
        'MA_PAGAMENTO, '
      
        '   :FRETE_TIPO, :HORA, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_NOF' +
        'ISA, :IE_SUBS, '
      
        '   :ISSQN, :NOVO_ID_NOFISA, :NUMERO, :OBS, :ORIGEM, :PIS, :PLACA' +
        ', :PROTOCOLO, '
      
        '   :PROTOCOLO_CANCELAMENTO, :QTDE_PROD, :RECIBO, :SAIDA, :SERIEN' +
        'F, :STATUS, '
      
        '   :TOT_NOTA, :TOT_PROD, :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :VA' +
        'L_IPI, '
      
        '   :VAL_ISS, :VAL_OUTROS, :VAL_SEGURO, :VAL_SERV, :VENDEDOR, :XM' +
        'L)')
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
      '  NOVO_ID_NOFISA'
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
      '  NOVO_ID_NOFISA = :NOVO_ID_NOFISA,'
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
    Left = 80
    Top = 32
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
    object tblNofisaNOVO_ID_NOFISA: TIntegerField
      FieldName = 'NOVO_ID_NOFISA'
      Origin = '"NOFISA"."NOVO_ID_NOFISA"'
    end
  end
  object DataSourceNofisa: TDataSource
    DataSet = tblNofisa
    Left = 112
    Top = 32
  end
  object tblNofisaFaturas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Nofisa_Faturas'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    InsertSQL.Strings = (
      'insert into Nofisa_Faturas'
      
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
      'from Nofisa_Faturas '
      'where'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS')
    SelectSQL.Strings = (
      'Select * from Nofisa_Faturas')
    ModifySQL.Strings = (
      'update Nofisa_Faturas'
      'set'
      '  FATURA = :FATURA,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  ID_NOFISA = :ID_NOFISA,'
      '  ID_NOFISA_FATURAS = :ID_NOFISA_FATURAS,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_NOFISA_FATURAS = :OLD_ID_NOFISA_FATURAS')
    Left = 80
    Top = 64
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
      Precision = 18
      Size = 2
    end
    object tblNofisaFaturasID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
      Required = True
    end
  end
  object DataSourceNofisaFaturas: TDataSource
    DataSet = tblNofisaFaturas
    Left = 112
    Top = 64
  end
  object tblSada: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Sada'
      'where'
      '  ID_SADA = :OLD_ID_SADA')
    InsertSQL.Strings = (
      'insert into Sada'
      
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
      'from Sada '
      'where'
      '  ID_SADA = :ID_SADA')
    SelectSQL.Strings = (
      'Select * from Sada')
    ModifySQL.Strings = (
      'update Sada'
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
    Left = 80
    Top = 96
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
  end
  object DataSourceSAda: TDataSource
    DataSet = tblSada
    Left = 112
    Top = 96
  end
  object tblPecasEstoque: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pecas_Estoque'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    InsertSQL.Strings = (
      'insert into Pecas_Estoque'
      
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
      'from Pecas_Estoque '
      'where'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE')
    SelectSQL.Strings = (
      'Select * from Pecas_Estoque')
    ModifySQL.Strings = (
      'update Pecas_Estoque'
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
    Left = 264
    Top = 32
    object tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPecasEstoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
      Required = True
    end
    object tblPecasEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
      Required = True
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
  end
  object DataSourcePecasEstoque: TDataSource
    DataSet = tblPecasEstoque
    Left = 296
    Top = 32
  end
  object tblPecasMovimentacao: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pecas_Movimentacao'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    InsertSQL.Strings = (
      'insert into Pecas_Movimentacao'
      
        '  (CUSTO_MEDIO, DATA, EMISSAO, ID_CONCESSIONARIA, ID_PECAS, ID_P' +
        'ECAS_MOVIMENTACAO, '
      '   MOVIMENTO, NF, QUANTIDADE_ATUAL, QUANTIDADE_MOVIMENTADA)'
      'values'
      
        '  (:CUSTO_MEDIO, :DATA, :EMISSAO, :ID_CONCESSIONARIA, :ID_PECAS,' +
        ' :ID_PECAS_MOVIMENTACAO, '
      '   :MOVIMENTO, :NF, :QUANTIDADE_ATUAL, :QUANTIDADE_MOVIMENTADA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_MOVIMENTACAO,'
      '  ID_CONCESSIONARIA,'
      '  ID_PECAS,'
      '  MOVIMENTO,'
      '  QUANTIDADE_MOVIMENTADA,'
      '  QUANTIDADE_ATUAL,'
      '  CUSTO_MEDIO,'
      '  DATA,'
      '  NF,'
      '  EMISSAO'
      'from Pecas_Movimentacao '
      'where'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO')
    SelectSQL.Strings = (
      'Select * from Pecas_Movimentacao')
    ModifySQL.Strings = (
      'update Pecas_Movimentacao'
      'set'
      '  CUSTO_MEDIO = :CUSTO_MEDIO,'
      '  DATA = :DATA,'
      '  EMISSAO = :EMISSAO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO,'
      '  MOVIMENTO = :MOVIMENTO,'
      '  NF = :NF,'
      '  QUANTIDADE_ATUAL = :QUANTIDADE_ATUAL,'
      '  QUANTIDADE_MOVIMENTADA = :QUANTIDADE_MOVIMENTADA'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    Left = 264
    Top = 64
    object tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_PECAS_MOVIMENTACAO'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS_MOVIMENTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPecasMovimentacaoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_MOVIMENTACAO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPecasMovimentacaoID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS"'
      Required = True
    end
    object tblPecasMovimentacaoMOVIMENTO: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"PECAS_MOVIMENTACAO"."MOVIMENTO"'
      Size = 1
    end
    object tblPecasMovimentacaoQUANTIDADE_MOVIMENTADA: TIntegerField
      FieldName = 'QUANTIDADE_MOVIMENTADA'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_MOVIMENTADA"'
    end
    object tblPecasMovimentacaoQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = '"PECAS_MOVIMENTACAO"."QUANTIDADE_ATUAL"'
    end
    object tblPecasMovimentacaoCUSTO_MEDIO: TIBBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PECAS_MOVIMENTACAO"."CUSTO_MEDIO"'
      Precision = 18
      Size = 2
    end
    object tblPecasMovimentacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PECAS_MOVIMENTACAO"."DATA"'
    end
    object tblPecasMovimentacaoNF: TIBStringField
      FieldName = 'NF'
      Origin = '"PECAS_MOVIMENTACAO"."NF"'
      Size = 8
    end
    object tblPecasMovimentacaoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"PECAS_MOVIMENTACAO"."EMISSAO"'
    end
  end
  object DataSourcePecasMovimentacao: TDataSource
    DataSet = tblPecasMovimentacao
    Left = 296
    Top = 64
  end
  object tblSeda: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Seda'
      'where'
      '  ID_SEDA = :OLD_ID_SEDA')
    InsertSQL.Strings = (
      'insert into Seda'
      
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
      'from Seda '
      'where'
      '  ID_SEDA = :ID_SEDA')
    SelectSQL.Strings = (
      'Select * from Seda')
    ModifySQL.Strings = (
      'update Seda'
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
    Left = 80
    Top = 128
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
  object DataSourceSeda: TDataSource
    DataSet = tblSeda
    Left = 112
    Top = 128
  end
  object tblveiculos: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
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
      
        '   NF_SAIDA, NOTA_ENT, NOVO_ID_VEICULOS, ORIGEM, PLACA, PRECO, R' +
        'ENAVAM, '
      '   RESERVADA, RESERVADA_POR, STATUS, VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :CLASSIF_FISCAL, :CNY,' +
        ' :COMBUSTIVEL, '
      
        '   :CONSIG, :COR, :CST, :CUSTO, :CUSTO_ICMS, :DATA_ENT, :DATA_SA' +
        'I, :ESTOQUE, '
      
        '   :FINANC_PRO, :FONE, :FOTO, :GRUPO, :HP, :ID_CLIENTES, :ID_COM' +
        'PRADOR, '
      
        '   :ID_CONCESSIONARIA, :ID_FORNECEDOR, :ID_MODELO_VEICULO, :ID_V' +
        'EICULOS, '
      
        '   :KM, :MARCA, :MODELO, :MOTOR, :NF_SAIDA, :NOTA_ENT, :NOVO_ID_' +
        'VEICULOS, '
      
        '   :ORIGEM, :PLACA, :PRECO, :RENAVAM, :RESERVADA, :RESERVADA_POR' +
        ', :STATUS, '
      '   :VENDA)')
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
      '  CST,'
      '  NOVO_ID_VEICULOS'
      'from Veiculos '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'Select * from Veiculos')
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
      '  NOVO_ID_VEICULOS = :NOVO_ID_VEICULOS,'
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
    Left = 280
    Top = 160
    object tblveiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblveiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblveiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object tblveiculosID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
    end
    object tblveiculosID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
    object tblveiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object tblveiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object tblveiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object tblveiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblveiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblveiculosGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object tblveiculosHP: TIBStringField
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object tblveiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      Size = 7
    end
    object tblveiculosCNY: TIBStringField
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosKM: TIntegerField
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object tblveiculosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosNOTA_ENT: TIBStringField
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object tblveiculosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object tblveiculosCONSIG: TIBStringField
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object tblveiculosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblveiculosCUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblveiculosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblveiculosDATA_SAI: TDateField
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object tblveiculosNF_SAIDA: TIBStringField
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object tblveiculosVENDA: TIBStringField
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object tblveiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      Size = 15
    end
    object tblveiculosFINANC_PRO: TIBStringField
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object tblveiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblveiculosRESERVADA: TDateField
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
    end
    object tblveiculosFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Size = 8
    end
    object tblveiculosRESERVADA_POR: TIBStringField
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
    end
    object tblveiculosESTOQUE: TIBStringField
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object tblveiculosORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Size = 1
    end
    object tblveiculosID_COMPRADOR: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
    end
    object tblveiculosCST: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object tblveiculosNOVO_ID_VEICULOS: TIntegerField
      FieldName = 'NOVO_ID_VEICULOS'
      Origin = '"VEICULOS"."NOVO_ID_VEICULOS"'
    end
  end
  object DataSourceVeiculos: TDataSource
    DataSet = tblveiculos
    Left = 312
    Top = 160
  end
  object tblPedidoVeiculos: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos'
      
        '  (ANO_FABRICACAO, ANO_MODELO, BASE_COMISSAO, CHASSI, DATA_NF, I' +
        'D_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_FINANCEIRA, ID_PEDIDO_VEIC' +
        'ULOS, ID_VEICULOS, '
      
        '   ID_VENDEDOR, MARCA, MODELO, MOTOR, NF, NOVO_ID_PEDIDO_VEICULO' +
        'S, PLACA, '
      '   STATUS, VALOR, VALOR_A_RECEBER, VALOR_DA_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :BASE_COMISSAO, :CHASSI, :DATA_' +
        'NF, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_FINANCEIRA, :ID_PEDIDO_' +
        'VEICULOS, '
      
        '   :ID_VEICULOS, :ID_VENDEDOR, :MARCA, :MODELO, :MOTOR, :NF, :NO' +
        'VO_ID_PEDIDO_VEICULOS, '
      '   :PLACA, :STATUS, :VALOR, :VALOR_A_RECEBER, :VALOR_DA_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS,'
      '  CHASSI,'
      '  MODELO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_VEICULOS,'
      '  ID_AVALISTA,'
      '  ID_VENDEDOR,'
      '  ID_FINANCEIRA,'
      '  MARCA,'
      '  ANO_MODELO,'
      '  ANO_FABRICACAO,'
      '  PLACA,'
      '  VALOR,'
      '  BASE_COMISSAO,'
      '  NF,'
      '  DATA_NF,'
      '  STATUS,'
      '  VALOR_DA_VENDA,'
      '  VALOR_A_RECEBER,'
      '  MOTOR,'
      '  NOVO_ID_PEDIDO_VEICULOS'
      'from Pedido_Veiculos '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'Select * from Pedido_Veiculos'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Pedido_Veiculos'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_COMISSAO = :BASE_COMISSAO,'
      '  CHASSI = :CHASSI,'
      '  DATA_NF = :DATA_NF,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  NOVO_ID_PEDIDO_VEICULOS = :NOVO_ID_PEDIDO_VEICULOS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER,'
      '  VALOR_DA_VENDA = :VALOR_DA_VENDA'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 216
    Top = 160
    object tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPedidoVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PEDIDO_VEICULOS"."CHASSI"'
    end
    object tblPedidoVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PEDIDO_VEICULOS"."MODELO"'
    end
    object tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPedidoVeiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"PEDIDO_VEICULOS"."ID_CLIENTES"'
      Required = True
    end
    object tblPedidoVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULOS"'
    end
    object tblPedidoVeiculosID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object tblPedidoVeiculosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object tblPedidoVeiculosID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object tblPedidoVeiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PEDIDO_VEICULOS"."MARCA"'
      Size = 10
    end
    object tblPedidoVeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PEDIDO_VEICULOS"."ANO_MODELO"'
      Size = 4
    end
    object tblPedidoVeiculosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"PEDIDO_VEICULOS"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblPedidoVeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PEDIDO_VEICULOS"."PLACA"'
      Size = 7
    end
    object tblPedidoVeiculosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosBASE_COMISSAO: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosNF: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object tblPedidoVeiculosDATA_NF: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object tblPedidoVeiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PEDIDO_VEICULOS"."STATUS"'
    end
    object tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PEDIDO_VEICULOS"."MOTOR"'
      Size = 15
    end
    object tblPedidoVeiculosNOVO_ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'NOVO_ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."NOVO_ID_PEDIDO_VEICULOS"'
    end
  end
  object DataSourcePedidoVeiculos: TDataSource
    DataSet = tblPedidoVeiculos
    Left = 248
    Top = 160
  end
  object tblPedidoVeiculosRecebimento: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos_Recebimento'
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :OLD_ID_PEDIDO_VEICULOS_RECEB' +
        'IMENTO')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos_Recebimento'
      
        '  (CX_BC, DATA_RECEBIMENTO, FORMA_PAGAMENTO, ID_CONCESSIONARIA, ' +
        'ID_CRECEBER, '
      
        '   ID_FORMAS_PAGAMENTO, ID_PEDIDO_VEICULOS, ID_PEDIDO_VEICULOS_R' +
        'ECEBIMENTO, '
      '   VALOR_DEVIDO, VALOR_ORIGINAL, VALOR_RECEBIDO, VENCIMENTO)'
      'values'
      
        '  (:CX_BC, :DATA_RECEBIMENTO, :FORMA_PAGAMENTO, :ID_CONCESSIONAR' +
        'IA, :ID_CRECEBER, '
      
        '   :ID_FORMAS_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ID_PEDIDO_VEICULO' +
        'S_RECEBIMENTO, '
      '   :VALOR_DEVIDO, :VALOR_ORIGINAL, :VALOR_RECEBIDO, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS_RECEBIMENTO,'
      '  ID_PEDIDO_VEICULOS,'
      '  ID_FORMAS_PAGAMENTO,'
      '  VALOR_ORIGINAL,'
      '  VALOR_DEVIDO,'
      '  VENCIMENTO,'
      '  DATA_RECEBIMENTO,'
      '  CX_BC,'
      '  VALOR_RECEBIDO,'
      '  FORMA_PAGAMENTO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CRECEBER'
      'from Pedido_Veiculos_Recebimento '
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :ID_PEDIDO_VEICULOS_RECEBIMEN' +
        'TO')
    SelectSQL.Strings = (
      'Select * from Pedido_Veiculos_Recebimento'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Pedido_Veiculos_Recebimento'
      'set'
      '  CX_BC = :CX_BC,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  FORMA_PAGAMENTO = :FORMA_PAGAMENTO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :ID_PEDIDO_VEICULOS_RECEBIMEN' +
        'TO,'
      '  VALOR_DEVIDO = :VALOR_DEVIDO,'
      '  VALOR_ORIGINAL = :VALOR_ORIGINAL,'
      '  VALOR_RECEBIDO = :VALOR_RECEBIDO,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      
        '  ID_PEDIDO_VEICULOS_RECEBIMENTO = :OLD_ID_PEDIDO_VEICULOS_RECEB' +
        'IMENTO')
    Left = 184
    Top = 64
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS_RECEBIMENTO: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_RECEBIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS_RECEBIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPedidoVeiculosRecebimentoID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_PEDIDO_VEICULOS"'
      Required = True
    end
    object tblPedidoVeiculosRecebimentoID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_FORMAS_PAGAMENTO"'
      Required = True
    end
    object tblPedidoVeiculosRecebimentoVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoVALOR_DEVIDO: TIBBCDField
      FieldName = 'VALOR_DEVIDO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_DEVIDO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VENCIMENTO"'
    end
    object tblPedidoVeiculosRecebimentoDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."DATA_RECEBIMENTO"'
    end
    object tblPedidoVeiculosRecebimentoCX_BC: TIBStringField
      FieldName = 'CX_BC'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."CX_BC"'
      Size = 10
    end
    object tblPedidoVeiculosRecebimentoVALOR_RECEBIDO: TIBBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."VALOR_RECEBIDO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRecebimentoFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."FORMA_PAGAMENTO"'
    end
    object tblPedidoVeiculosRecebimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblPedidoVeiculosRecebimentoID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"PEDIDO_VEICULOS_RECEBIMENTO"."ID_CRECEBER"'
    end
  end
  object DataSourcePedidoVeiculosRecebimento: TDataSource
    DataSet = tblPedidoVeiculosRecebimento
    Left = 216
    Top = 64
  end
  object tblPedidoVeiculosAcessorios: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos_Acessorios'
      'where'
      '  ID_VEICULOS_ACESSORIOS = :OLD_ID_VEICULOS_ACESSORIOS')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos_Acessorios'
      
        '  (CUSTO, DESCRICAO_ACESSORIO, ENTREGA, ENTREGUE_POR, ID_PEDIDO_' +
        'VEICULOS, '
      
        '   ID_PEDIDO_VEICULOS_ACESSORIOS, ID_VEICULOS_ACESSORIOS, VALOR_' +
        'ACESSORIO)'
      'values'
      
        '  (:CUSTO, :DESCRICAO_ACESSORIO, :ENTREGA, :ENTREGUE_POR, :ID_PE' +
        'DIDO_VEICULOS, '
      
        '   :ID_PEDIDO_VEICULOS_ACESSORIOS, :ID_VEICULOS_ACESSORIOS, :VAL' +
        'OR_ACESSORIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS_ACESSORIOS,'
      '  ID_PEDIDO_VEICULOS,'
      '  ID_VEICULOS_ACESSORIOS,'
      '  DESCRICAO_ACESSORIO,'
      '  VALOR_ACESSORIO,'
      '  ENTREGA,'
      '  CUSTO,'
      '  ENTREGUE_POR'
      'from Pedido_Veiculos_Acessorios '
      'where'
      '  ID_VEICULOS_ACESSORIOS = :ID_VEICULOS_ACESSORIOS')
    SelectSQL.Strings = (
      'Select * from Pedido_Veiculos_Acessorios'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Pedido_Veiculos_Acessorios'
      'set'
      '  CUSTO = :CUSTO,'
      '  DESCRICAO_ACESSORIO = :DESCRICAO_ACESSORIO,'
      '  ENTREGA = :ENTREGA,'
      '  ENTREGUE_POR = :ENTREGUE_POR,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      
        '  ID_PEDIDO_VEICULOS_ACESSORIOS = :ID_PEDIDO_VEICULOS_ACESSORIOS' +
        ','
      '  ID_VEICULOS_ACESSORIOS = :ID_VEICULOS_ACESSORIOS,'
      '  VALOR_ACESSORIO = :VALOR_ACESSORIO'
      'where'
      '  ID_VEICULOS_ACESSORIOS = :OLD_ID_VEICULOS_ACESSORIOS')
    Left = 184
    Top = 96
    object tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_ACESSORIOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_PEDIDO_VEICULOS_ACESSORIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_PEDIDO_VEICULOS"'
      Required = True
    end
    object tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField
      FieldName = 'ID_VEICULOS_ACESSORIOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_VEICULOS_ACESSORIOS"'
      Required = True
    end
    object tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField
      FieldName = 'DESCRICAO_ACESSORIO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."DESCRICAO_ACESSORIO"'
      Required = True
      Size = 50
    end
    object tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField
      FieldName = 'VALOR_ACESSORIO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."VALOR_ACESSORIO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosAcessoriosENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ENTREGA"'
    end
    object tblPedidoVeiculosAcessoriosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosAcessoriosENTREGUE_POR: TIBStringField
      FieldName = 'ENTREGUE_POR'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ENTREGUE_POR"'
      Size = 10
    end
  end
  object DataSourcePedidoVeiculosAcessorios: TDataSource
    DataSet = tblPedidoVeiculosAcessorios
    Left = 216
    Top = 96
  end
  object tblveiculos1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
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
      
        '   NF_SAIDA, NOTA_ENT, NOVO_ID_VEICULOS, ORIGEM, PLACA, PRECO, R' +
        'ENAVAM, '
      '   RESERVADA, RESERVADA_POR, STATUS, VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :CLASSIF_FISCAL, :CNY,' +
        ' :COMBUSTIVEL, '
      
        '   :CONSIG, :COR, :CST, :CUSTO, :CUSTO_ICMS, :DATA_ENT, :DATA_SA' +
        'I, :ESTOQUE, '
      
        '   :FINANC_PRO, :FONE, :FOTO, :GRUPO, :HP, :ID_CLIENTES, :ID_COM' +
        'PRADOR, '
      
        '   :ID_CONCESSIONARIA, :ID_FORNECEDOR, :ID_MODELO_VEICULO, :ID_V' +
        'EICULOS, '
      
        '   :KM, :MARCA, :MODELO, :MOTOR, :NF_SAIDA, :NOTA_ENT, :NOVO_ID_' +
        'VEICULOS, '
      
        '   :ORIGEM, :PLACA, :PRECO, :RENAVAM, :RESERVADA, :RESERVADA_POR' +
        ', :STATUS, '
      '   :VENDA)')
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
      '  CST,'
      '  NOVO_ID_VEICULOS'
      'from Veiculos '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'Select * from Veiculos'
      'where id_veiculos = :id')
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
      '  NOVO_ID_VEICULOS = :NOVO_ID_VEICULOS,'
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
    Left = 280
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
    end
    object IBStringField4: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBStringField5: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField6: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField7: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBStringField8: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBStringField9: TIBStringField
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object IBStringField10: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      Size = 7
    end
    object IBStringField11: TIBStringField
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object IntegerField6: TIntegerField
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object IBStringField12: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object IBStringField13: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object IBStringField14: TIBStringField
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object DateField1: TDateField
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object IBStringField15: TIBStringField
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object IBStringField16: TIBStringField
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object DateField2: TDateField
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object IBStringField17: TIBStringField
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object IBStringField18: TIBStringField
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField19: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      Size = 15
    end
    object IBStringField20: TIBStringField
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField21: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object DateField3: TDateField
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
    end
    object IBStringField22: TIBStringField
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Size = 8
    end
    object IBStringField23: TIBStringField
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
    end
    object IBStringField24: TIBStringField
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object IBStringField25: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Size = 1
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
    end
    object IBStringField26: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object IntegerField8: TIntegerField
      FieldName = 'NOVO_ID_VEICULOS'
      Origin = '"VEICULOS"."NOVO_ID_VEICULOS"'
    end
  end
  object DataSource1: TDataSource
    DataSet = tblveiculos1
    Left = 312
    Top = 128
  end
  object tblPedidoVeiculos1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos'
      
        '  (ANO_FABRICACAO, ANO_MODELO, BASE_COMISSAO, CHASSI, DATA_NF, I' +
        'D_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_FINANCEIRA, ID_PEDIDO_VEIC' +
        'ULOS, ID_VEICULOS, '
      
        '   ID_VENDEDOR, MARCA, MODELO, MOTOR, NF, NOVO_ID_PEDIDO_VEICULO' +
        'S, PLACA, '
      '   STATUS, VALOR, VALOR_A_RECEBER, VALOR_DA_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :BASE_COMISSAO, :CHASSI, :DATA_' +
        'NF, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_FINANCEIRA, :ID_PEDIDO_' +
        'VEICULOS, '
      
        '   :ID_VEICULOS, :ID_VENDEDOR, :MARCA, :MODELO, :MOTOR, :NF, :NO' +
        'VO_ID_PEDIDO_VEICULOS, '
      '   :PLACA, :STATUS, :VALOR, :VALOR_A_RECEBER, :VALOR_DA_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS,'
      '  CHASSI,'
      '  MODELO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_VEICULOS,'
      '  ID_AVALISTA,'
      '  ID_VENDEDOR,'
      '  ID_FINANCEIRA,'
      '  MARCA,'
      '  ANO_MODELO,'
      '  ANO_FABRICACAO,'
      '  PLACA,'
      '  VALOR,'
      '  BASE_COMISSAO,'
      '  NF,'
      '  DATA_NF,'
      '  STATUS,'
      '  VALOR_DA_VENDA,'
      '  VALOR_A_RECEBER,'
      '  MOTOR,'
      '  NOVO_ID_PEDIDO_VEICULOS'
      'from Pedido_Veiculos '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'Select * from Pedido_Veiculos'
      'where id_pedido_veiculos = :id'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update Pedido_Veiculos'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_COMISSAO = :BASE_COMISSAO,'
      '  CHASSI = :CHASSI,'
      '  DATA_NF = :DATA_NF,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  NOVO_ID_PEDIDO_VEICULOS = :NOVO_ID_PEDIDO_VEICULOS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER,'
      '  VALOR_DA_VENDA = :VALOR_DA_VENDA'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 216
    Top = 128
    object IntegerField9: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField27: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PEDIDO_VEICULOS"."CHASSI"'
    end
    object IBStringField28: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PEDIDO_VEICULOS"."MODELO"'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"PEDIDO_VEICULOS"."ID_CLIENTES"'
      Required = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULOS"'
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object IntegerField15: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object IBStringField29: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PEDIDO_VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField30: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PEDIDO_VEICULOS"."ANO_MODELO"'
      Size = 4
    end
    object IBStringField31: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"PEDIDO_VEICULOS"."ANO_FABRICACAO"'
      Size = 4
    end
    object IBStringField32: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PEDIDO_VEICULOS"."PLACA"'
      Size = 7
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS"."VALOR"'
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      Precision = 18
      Size = 2
    end
    object IBStringField33: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object DateField4: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object IBStringField34: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PEDIDO_VEICULOS"."STATUS"'
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      Precision = 18
      Size = 2
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      Precision = 18
      Size = 2
    end
    object IBStringField35: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PEDIDO_VEICULOS"."MOTOR"'
      Size = 15
    end
    object IntegerField16: TIntegerField
      FieldName = 'NOVO_ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."NOVO_ID_PEDIDO_VEICULOS"'
    end
  end
  object DataSource2: TDataSource
    DataSet = tblPedidoVeiculos1
    Left = 248
    Top = 128
  end
  object tblClientes1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Clientes'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    InsertSQL.Strings = (
      'insert into Clientes'
      
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
      
        '   IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOME, NOVO_ID_CLIENTES' +
        ', NUM_CPF, '
      
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
      
        '   :NOME, :NOVO_ID_CLIENTES, :NUM_CPF, :PAI, :REF_AG_BANC, :REF_' +
        'BANC, :REF_COML_FONE1, '
      
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
      '  NOVO_ID_CLIENTES'
      'from Clientes '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'Select * from Clientes'
      'where id_Clientes = :idCliente')
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
      '  NOVO_ID_CLIENTES = :NOVO_ID_CLIENTES,'
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
    Left = 64
    Top = 160
    object IntegerField17: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField36: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object IBStringField37: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object IntegerField18: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBStringField38: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object IBStringField39: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object IBStringField40: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object DateField5: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object IBStringField41: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object IBStringField42: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object IBStringField43: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object IBStringField44: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBStringField45: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object IBStringField46: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object IBStringField47: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object DateField6: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object IBStringField48: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField49: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField50: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object IBStringField51: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object IBStringField52: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object IBStringField53: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object IBStringField54: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object IBStringField55: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 9
    end
    object IBStringField56: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField57: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField58: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object IBStringField59: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object IBStringField60: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBStringField61: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField62: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField63: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField64: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBStringField65: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 5
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object IBStringField66: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object DateField7: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object IBStringField67: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object IBStringField68: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object IBStringField69: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object IBStringField70: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object IBStringField71: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object IBStringField72: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object IBStringField73: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object IBStringField74: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField75: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object IBStringField76: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField77: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Size = 50
    end
    object IBStringField78: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField79: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Size = 50
    end
    object IBStringField80: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField81: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object IBStringField82: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object IBStringField83: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object IBStringField84: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object IBStringField85: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object IBStringField86: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object IntegerField19: TIntegerField
      FieldName = 'NOVO_ID_CLIENTES'
      Origin = '"CLIENTES"."NOVO_ID_CLIENTES"'
    end
  end
  object DataSourceClientes1: TDataSource
    DataSet = tblClientes1
    Left = 96
    Top = 160
  end
  object tblPecas1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Pecas'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into Pecas'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CST, DESCRICAO, ESP' +
        'ECIAL, '
      
        '   FORA_LINHA, GRUPO, ICMS, ID_PECAS, IPI, LISTA, MIN_PEDIDO, NC' +
        'M, NOVASUBS, '
      
        '   NOVO_ID_PECAS, ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, S' +
        'T_COFINS, '
      '   SUBST_TRIB, SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CST, :DESCRIC' +
        'AO, :ESPECIAL, '
      
        '   :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LISTA, :MIN_PED' +
        'IDO, :NCM, '
      
        '   :NOVASUBS, :NOVO_ID_PECAS, :ORIGINAL, :PPS, :PRECO, :PRECO_GA' +
        'R, :QTD_PEDIDA, '
      '   :ST_COFINS, :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  ICMS,'
      '  PRECO,'
      '  PPS,'
      '  PRECO_GAR,'
      '  IPI,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2,'
      '  NCM,'
      '  ORIGINAL,'
      '  CST,'
      '  NOVO_ID_PECAS'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'Select * from Pecas'
      'where id_pecas = :id')
    ModifySQL.Strings = (
      'update Pecas'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CST = :CST,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NCM = :NCM,'
      '  NOVASUBS = :NOVASUBS,'
      '  NOVO_ID_PECAS = :NOVO_ID_PECAS,'
      '  ORIGINAL = :ORIGINAL,'
      '  PPS = :PPS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    Left = 200
    object IntegerField20: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField87: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBStringField88: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBStringField89: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PECAS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBStringField90: TIBStringField
      FieldName = 'ESPECIAL'
      Origin = '"PECAS"."ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object IBStringField91: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField92: TIBStringField
      FieldName = 'COD_TRIB'
      Origin = '"PECAS"."COD_TRIB"'
      FixedChar = True
      Size = 2
    end
    object IBStringField93: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBStringField94: TIBStringField
      FieldName = 'SUBSTITUTO'
      Origin = '"PECAS"."SUBSTITUTO"'
      FixedChar = True
      Size = 12
    end
    object IBStringField95: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = '"PECAS"."FORA_LINHA"'
      FixedChar = True
      Size = 1
    end
    object IntegerField21: TIntegerField
      FieldName = 'MIN_PEDIDO'
      Origin = '"PECAS"."MIN_PEDIDO"'
    end
    object IntegerField22: TIntegerField
      FieldName = 'QTD_PEDIDA'
      Origin = '"PECAS"."QTD_PEDIDA"'
    end
    object IBBCDField11: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PECAS"."ICMS"'
      Precision = 9
      Size = 2
    end
    object IBBCDField12: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField13: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECAS"."PPS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField14: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      Precision = 18
      Size = 2
    end
    object IBBCDField15: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECAS"."IPI"'
      Precision = 9
      Size = 2
    end
    object IBStringField96: TIBStringField
      FieldName = 'LISTA'
      Origin = '"PECAS"."LISTA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField97: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object IBStringField98: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField99: TIBStringField
      FieldName = 'NOVASUBS'
      Origin = '"PECAS"."NOVASUBS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField100: TIBStringField
      FieldName = 'CFOP1'
      Origin = '"PECAS"."CFOP1"'
      FixedChar = True
      Size = 4
    end
    object IBStringField101: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"PECAS"."CFOP2"'
      FixedChar = True
      Size = 4
    end
    object IBStringField102: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECAS"."NCM"'
      Size = 10
    end
    object IBStringField103: TIBStringField
      FieldName = 'ORIGINAL'
      Origin = '"PECAS"."ORIGINAL"'
      FixedChar = True
      Size = 1
    end
    object IBStringField104: TIBStringField
      FieldName = 'CST'
      Origin = '"PECAS"."CST"'
      Size = 3
    end
    object IntegerField23: TIntegerField
      FieldName = 'NOVO_ID_PECAS'
      Origin = '"PECAS"."NOVO_ID_PECAS"'
    end
  end
  object DataSourcePecas1: TDataSource
    DataSet = tblPecas1
    Left = 232
  end
  object tblAtendimento1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Atendimento'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    InsertSQL.Strings = (
      'insert into Atendimento'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, COR, DATA_ENTRADA, DATA_S' +
        'AIDA, DESCONTO, '
      
        '   ID_ATENDIMENTO, ID_CATEGORIA, ID_CLIENTES, ID_CONCESSIONARIA,' +
        ' ID_MECANICO, '
      
        '   KM, MARCA, MEMO, MODELO, NOVO_ID_ATENDIMENTO, ORC_OS, PLACA, ' +
        'STATUS, '
      
        '   TOTAL_PECAS, TOTAL_PECAS_TABELA, TOTAL_SERVICOS, VALOR_LIQUID' +
        'O_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :COR, :DATA_ENTRADA, :' +
        'DATA_SAIDA, '
      
        '   :DESCONTO, :ID_ATENDIMENTO, :ID_CATEGORIA, :ID_CLIENTES, :ID_' +
        'CONCESSIONARIA, '
      
        '   :ID_MECANICO, :KM, :MARCA, :MEMO, :MODELO, :NOVO_ID_ATENDIMEN' +
        'TO, :ORC_OS, '
      
        '   :PLACA, :STATUS, :TOTAL_PECAS, :TOTAL_PECAS_TABELA, :TOTAL_SE' +
        'RVICOS, '
      '   :VALOR_LIQUIDO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_MECANICO,'
      '  ID_CATEGORIA,'
      '  MARCA,'
      '  MODELO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  CHASSI,'
      '  KM,'
      '  DATA_ENTRADA,'
      '  DATA_SAIDA,'
      '  ORC_OS,'
      '  COR,'
      '  PLACA,'
      '  STATUS,'
      '  MEMO,'
      '  DESCONTO,'
      '  TOTAL_PECAS,'
      '  TOTAL_SERVICOS,'
      '  TOTAL_PECAS_TABELA,'
      '  VALOR_LIQUIDO_VENDA,'
      '  NOVO_ID_ATENDIMENTO'
      'from Atendimento '
      'where'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO')
    SelectSQL.Strings = (
      'Select * from Atendimento'
      'where id_Atendimento = :id')
    ModifySQL.Strings = (
      'update Atendimento'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCONTO = :DESCONTO,'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MEMO = :MEMO,'
      '  MODELO = :MODELO,'
      '  NOVO_ID_ATENDIMENTO = :NOVO_ID_ATENDIMENTO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  TOTAL_PECAS = :TOTAL_PECAS,'
      '  TOTAL_PECAS_TABELA = :TOTAL_PECAS_TABELA,'
      '  TOTAL_SERVICOS = :TOTAL_SERVICOS,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    Left = 64
    object IntegerField24: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."ID_ATENDIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField25: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IntegerField26: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIMENTO"."ID_CLIENTES"'
      Required = True
    end
    object IntegerField27: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"ATENDIMENTO"."ID_CATEGORIA"'
      Required = True
    end
    object IBStringField105: TIBStringField
      FieldName = 'MARCA'
      Origin = '"ATENDIMENTO"."MARCA"'
      Size = 10
    end
    object IBStringField106: TIBStringField
      FieldName = 'MODELO'
      Origin = '"ATENDIMENTO"."MODELO"'
    end
    object IBStringField107: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"ATENDIMENTO"."ANO_FABRICACAO"'
      Size = 4
    end
    object IBStringField108: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"ATENDIMENTO"."ANO_MODELO"'
      Size = 4
    end
    object IBStringField109: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"ATENDIMENTO"."CHASSI"'
    end
    object IntegerField29: TIntegerField
      FieldName = 'KM'
      Origin = '"ATENDIMENTO"."KM"'
    end
    object DateField8: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = '"ATENDIMENTO"."DATA_ENTRADA"'
    end
    object DateField9: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ATENDIMENTO"."DATA_SAIDA"'
    end
    object IBStringField110: TIBStringField
      FieldName = 'ORC_OS'
      Origin = '"ATENDIMENTO"."ORC_OS"'
      Size = 1
    end
    object IBStringField111: TIBStringField
      FieldName = 'COR'
      Origin = '"ATENDIMENTO"."COR"'
      Size = 10
    end
    object IBStringField112: TIBStringField
      FieldName = 'PLACA'
      Origin = '"ATENDIMENTO"."PLACA"'
      Size = 7
    end
    object IBStringField113: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ATENDIMENTO"."STATUS"'
    end
    object BlobField1: TBlobField
      FieldName = 'MEMO'
      Origin = '"ATENDIMENTO"."MEMO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBBCDField16: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"ATENDIMENTO"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField17: TIBBCDField
      FieldName = 'TOTAL_PECAS'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField18: TIBBCDField
      FieldName = 'TOTAL_SERVICOS'
      Origin = '"ATENDIMENTO"."TOTAL_SERVICOS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField19: TIBBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS_TABELA"'
      Precision = 18
      Size = 2
    end
    object IBBCDField20: TIBBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ATENDIMENTO"."VALOR_LIQUIDO_VENDA"'
      Precision = 18
      Size = 2
    end
    object IntegerField30: TIntegerField
      FieldName = 'NOVO_ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."NOVO_ID_ATENDIMENTO"'
    end
  end
  object DataSourceAtendimento1: TDataSource
    DataSet = tblAtendimento1
    Left = 96
  end
  object tblAtendimentoRecebimento: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Atendimento_Recebimento'
      'where'
      '  ID_ATENDIMENTO_RECEBIMENTO = :OLD_ID_ATENDIMENTO_RECEBIMENTO')
    InsertSQL.Strings = (
      'insert into Atendimento_Recebimento'
      
        '  (ID_ATENDIMENTO, ID_ATENDIMENTO_RECEBIMENTO, ID_FORMAS_PAGAMEN' +
        'TO, VALOR_DEVIDO, '
      '   VENCIMENTO)'
      'values'
      
        '  (:ID_ATENDIMENTO, :ID_ATENDIMENTO_RECEBIMENTO, :ID_FORMAS_PAGA' +
        'MENTO, '
      '   :VALOR_DEVIDO, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIMENTO_RECEBIMENTO,'
      '  ID_ATENDIMENTO,'
      '  ID_FORMAS_PAGAMENTO,'
      '  VALOR_DEVIDO,'
      '  VENCIMENTO'
      'from Atendimento_Recebimento '
      'where'
      '  ID_ATENDIMENTO_RECEBIMENTO = :ID_ATENDIMENTO_RECEBIMENTO')
    SelectSQL.Strings = (
      'Select * from Atendimento_Recebimento')
    ModifySQL.Strings = (
      'update Atendimento_Recebimento'
      'set'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_ATENDIMENTO_RECEBIMENTO = :ID_ATENDIMENTO_RECEBIMENTO,'
      '  ID_FORMAS_PAGAMENTO = :ID_FORMAS_PAGAMENTO,'
      '  VALOR_DEVIDO = :VALOR_DEVIDO,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID_ATENDIMENTO_RECEBIMENTO = :OLD_ID_ATENDIMENTO_RECEBIMENTO')
    Top = 96
    object tblAtendimentoRecebimentoID_ATENDIMENTO_RECEBIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO_RECEBIMENTO'
      Origin = '"ATENDIMENTO_RECEBIMENTO"."ID_ATENDIMENTO_RECEBIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblAtendimentoRecebimentoID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO_RECEBIMENTO"."ID_ATENDIMENTO"'
      Required = True
    end
    object tblAtendimentoRecebimentoID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"ATENDIMENTO_RECEBIMENTO"."ID_FORMAS_PAGAMENTO"'
      Required = True
    end
    object tblAtendimentoRecebimentoVALOR_DEVIDO: TIBBCDField
      FieldName = 'VALOR_DEVIDO'
      Origin = '"ATENDIMENTO_RECEBIMENTO"."VALOR_DEVIDO"'
      Precision = 18
      Size = 2
    end
    object tblAtendimentoRecebimentoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"ATENDIMENTO_RECEBIMENTO"."VENCIMENTO"'
    end
  end
  object DataSourceAtendimentoRecebimento: TDataSource
    DataSet = tblAtendimentoRecebimento
    Left = 32
    Top = 96
  end
  object tblNofisa1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = tblveiculosAfterPost
    DeleteSQL.Strings = (
      'delete from Nofisa'
      'where'
      '  ID_NOFISA = :OLD_ID_NOFISA')
    InsertSQL.Strings = (
      'insert into Nofisa'
      
        '  (ARQUIVO, BASE_ICM_S, BASE_ICMS, CHAVE, COD_TRANS, CODIGO_FISC' +
        'AL, COFINS, '
      
        '   DADOS_AD01, DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI, DES' +
        'C_PEC, '
      
        '   DESCRICAO_CODIGO_FISCAL, EMISSAO, ENT_SAI, FORMA_PAGAMENTO, F' +
        'RETE_TIPO, '
      
        '   HORA, ID_CLIENTES, ID_CONCESSIONARIA, ID_NOFISA, IE_SUBS, ISS' +
        'QN, NOVO_ID_NOFISA, '
      
        '   NUMERO, OBS, ORIGEM, PIS, PLACA, PROTOCOLO, PROTOCOLO_CANCELA' +
        'MENTO, '
      
        '   QTDE_PROD, RECIBO, SAIDA, SERIENF, STATUS, TOT_NOTA, TOT_PROD' +
        ', VAL_FRETE, '
      
        '   VAL_ICMS, VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_SEGUR' +
        'O, VAL_SERV, '
      '   VENDEDOR, XML)'
      'values'
      
        '  (:ARQUIVO, :BASE_ICM_S, :BASE_ICMS, :CHAVE, :COD_TRANS, :CODIG' +
        'O_FISCAL, '
      
        '   :COFINS, :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, ' +
        ':DESC_OFI, '
      
        '   :DESC_PEC, :DESCRICAO_CODIGO_FISCAL, :EMISSAO, :ENT_SAI, :FOR' +
        'MA_PAGAMENTO, '
      
        '   :FRETE_TIPO, :HORA, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_NOF' +
        'ISA, :IE_SUBS, '
      
        '   :ISSQN, :NOVO_ID_NOFISA, :NUMERO, :OBS, :ORIGEM, :PIS, :PLACA' +
        ', :PROTOCOLO, '
      
        '   :PROTOCOLO_CANCELAMENTO, :QTDE_PROD, :RECIBO, :SAIDA, :SERIEN' +
        'F, :STATUS, '
      
        '   :TOT_NOTA, :TOT_PROD, :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :VA' +
        'L_IPI, '
      
        '   :VAL_ISS, :VAL_OUTROS, :VAL_SEGURO, :VAL_SERV, :VENDEDOR, :XM' +
        'L)')
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
      '  NOVO_ID_NOFISA'
      'from Nofisa '
      'where'
      '  ID_NOFISA = :ID_NOFISA')
    SelectSQL.Strings = (
      'Select * from Nofisa'
      'where id_nofisa = :id')
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
      '  NOVO_ID_NOFISA = :NOVO_ID_NOFISA,'
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
    Left = 144
    Top = 32
    object IntegerField31: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField32: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IntegerField33: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
      Required = True
    end
    object IntegerField34: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object IBStringField114: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object DateField10: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object IBStringField115: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object IBStringField116: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object IntegerField35: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object DateField11: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object IBStringField117: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object IBStringField118: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object IBBCDField21: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object IBBCDField22: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object IBBCDField23: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField24: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField25: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object IBBCDField26: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object IBBCDField27: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object IBBCDField28: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField29: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField30: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object IBBCDField31: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object IBBCDField32: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object IBBCDField33: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField34: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object IBBCDField35: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object IBBCDField36: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object IBBCDField37: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object IBStringField119: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object IBStringField120: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField121: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object IBStringField122: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 50
    end
    object IBStringField123: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 50
    end
    object IBStringField124: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 50
    end
    object IBStringField125: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 50
    end
    object IBStringField126: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object IntegerField36: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object IBStringField127: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
    object IBStringField128: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"NOFISA"."CODIGO_FISCAL"'
      Size = 17
    end
    object IBStringField129: TIBStringField
      FieldName = 'DESCRICAO_CODIGO_FISCAL'
      Origin = '"NOFISA"."DESCRICAO_CODIGO_FISCAL"'
      Size = 50
    end
    object IBStringField130: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"NOFISA"."FORMA_PAGAMENTO"'
      Size = 1
    end
    object IBStringField131: TIBStringField
      FieldName = 'CHAVE'
      Origin = '"NOFISA"."CHAVE"'
      Size = 50
    end
    object IBStringField132: TIBStringField
      FieldName = 'RECIBO'
      Origin = '"NOFISA"."RECIBO"'
      Size = 50
    end
    object IBStringField133: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"NOFISA"."PROTOCOLO"'
      Size = 50
    end
    object IBStringField134: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"NOFISA"."ARQUIVO"'
      Size = 50
    end
    object BlobField2: TBlobField
      FieldName = 'XML'
      Origin = '"NOFISA"."XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBStringField135: TIBStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Origin = '"NOFISA"."PROTOCOLO_CANCELAMENTO"'
      Size = 50
    end
    object IntegerField37: TIntegerField
      FieldName = 'NOVO_ID_NOFISA'
      Origin = '"NOFISA"."NOVO_ID_NOFISA"'
    end
  end
  object DataSourceNofisa1: TDataSource
    DataSet = tblNofisa1
    Left = 176
    Top = 32
  end
end
