object FDB1: TFDB1
  Left = 0
  Top = 0
  Caption = 'Firebird DATABASE MOD'
  ClientHeight = 540
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 88
    Top = 8
    Width = 9
    Height = 577
  end
  object Bevel2: TBevel
    Left = 266
    Top = 8
    Width = 9
    Height = 577
  end
  object Bevel3: TBevel
    Left = 179
    Top = 8
    Width = 9
    Height = 577
  end
  object Label1: TLabel
    Left = 14
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Cadastros:'
  end
  object Label2: TLabel
    Left = 103
    Top = 8
    Width = 52
    Height = 13
    Caption = 'Opera'#231#245'es'
  end
  object Label3: TLabel
    Left = 208
    Top = 8
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Bevel4: TBevel
    Left = 362
    Top = 8
    Width = 9
    Height = 577
  end
  object Label4: TLabel
    Left = 281
    Top = 8
    Width = 87
    Height = 13
    Caption = 'SPC-atual.DEbitos'
  end
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:C:\Autorev\Database\AUTOREV.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'lc_ctype=ISO8859_1'
      'sql_role_name=3'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 381
    Top = 8
  end
  object IBTransaction: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 381
    Top = 48
  end
  object tblCFOP: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CFOP'
      'where'
      '  ID_CFOP = :OLD_ID_CFOP')
    InsertSQL.Strings = (
      'insert into CFOP'
      
        '  (CFOP1, CFOP2, DESCRICAO, ID_CFOP, PECAS_COM_ICMS, PECAS_SUBST' +
        'ITUICAO_ICMS, '
      
        '   PRESTACAO_SERVICOS, REDUCAO_DE_BASE, VENDA_NOVOS, VENDA_USADO' +
        'S)'
      'values'
      
        '  (:CFOP1, :CFOP2, :DESCRICAO, :ID_CFOP, :PECAS_COM_ICMS, :PECAS' +
        '_SUBSTITUICAO_ICMS, '
      
        '   :PRESTACAO_SERVICOS, :REDUCAO_DE_BASE, :VENDA_NOVOS, :VENDA_U' +
        'SADOS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CFOP,'
      '  DESCRICAO,'
      '  CFOP1,'
      '  CFOP2,'
      '  REDUCAO_DE_BASE,'
      '  VENDA_NOVOS,'
      '  VENDA_USADOS,'
      '  PECAS_SUBSTITUICAO_ICMS,'
      '  PECAS_COM_ICMS,'
      '  PRESTACAO_SERVICOS'
      'from CFOP '
      'where'
      '  ID_CFOP = :ID_CFOP')
    SelectSQL.Strings = (
      'Select * from CFOP'
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update CFOP'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CFOP = :ID_CFOP,'
      '  PECAS_COM_ICMS = :PECAS_COM_ICMS,'
      '  PECAS_SUBSTITUICAO_ICMS = :PECAS_SUBSTITUICAO_ICMS,'
      '  PRESTACAO_SERVICOS = :PRESTACAO_SERVICOS,'
      '  REDUCAO_DE_BASE = :REDUCAO_DE_BASE,'
      '  VENDA_NOVOS = :VENDA_NOVOS,'
      '  VENDA_USADOS = :VENDA_USADOS'
      'where'
      '  ID_CFOP = :OLD_ID_CFOP')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 56
    object tblCFOPID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
      Origin = '"CFOP"."ID_CFOP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCFOPDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CFOP"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblCFOPCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CFOP"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 7
    end
    object tblCFOPCFOP1: TIntegerField
      FieldName = 'CFOP1'
      Origin = '"CFOP"."CFOP1"'
      Required = True
    end
    object tblCFOPCFOP2: TIntegerField
      FieldName = 'CFOP2'
      Origin = '"CFOP"."CFOP2"'
      Required = True
    end
    object tblCFOPREDUCAO_DE_BASE: TIBBCDField
      FieldName = 'REDUCAO_DE_BASE'
      Origin = '"CFOP"."REDUCAO_DE_BASE"'
      Precision = 9
      Size = 2
    end
    object tblCFOPVENDA_NOVOS: TIBStringField
      FieldName = 'VENDA_NOVOS'
      Origin = '"CFOP"."VENDA_NOVOS"'
      FixedChar = True
      Size = 1
    end
    object tblCFOPVENDA_USADOS: TIBStringField
      FieldName = 'VENDA_USADOS'
      Origin = '"CFOP"."VENDA_USADOS"'
      FixedChar = True
      Size = 1
    end
    object tblCFOPPECAS_SUBSTITUICAO_ICMS: TIBStringField
      FieldName = 'PECAS_SUBSTITUICAO_ICMS'
      Origin = '"CFOP"."PECAS_SUBSTITUICAO_ICMS"'
      FixedChar = True
      Size = 1
    end
    object tblCFOPPECAS_COM_ICMS: TIBStringField
      FieldName = 'PECAS_COM_ICMS'
      Origin = '"CFOP"."PECAS_COM_ICMS"'
      FixedChar = True
      Size = 1
    end
    object tblCFOPPRESTACAO_SERVICOS: TIBStringField
      FieldName = 'PRESTACAO_SERVICOS'
      Origin = '"CFOP"."PRESTACAO_SERVICOS"'
      FixedChar = True
      Size = 1
    end
  end
  object IBDataSetPessoas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
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
      'select *  from CLIENTES'
      '')
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
    Left = 8
    Top = 120
    object IBDataSetPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object IBDataSetPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Required = True
      Size = 5
    end
    object IBDataSetPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasIDENTIDADE: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object IBDataSetPessoasNUM_CPF: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 14
    end
    object IBDataSetPessoasNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object IBDataSetPessoasPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object IBDataSetPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 8
    end
    object IBDataSetPessoasCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object IBDataSetPessoasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPessoasFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasFONE3: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Required = True
      Size = 50
    end
    object IBDataSetPessoasCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Required = True
      Size = 2
    end
    object IBDataSetPessoasCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Required = True
      Size = 8
    end
    object IBDataSetPessoasSPC: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasREG_SPC: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object IBDataSetPessoasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 4
    end
    object IBDataSetPessoasCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPessoasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object IBDataSetPessoasADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object IBDataSetPessoasSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPessoasEMPR_ENDERECO: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object IBDataSetPessoasEMPR_BAIRRO: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object IBDataSetPessoasEMPR_CIDADE: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object IBDataSetPessoasEMPR_ESTADO: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object IBDataSetPessoasEMPR_CEP: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 8
    end
    object IBDataSetPessoasEMPR_FONE: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasREF_NOME1: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object IBDataSetPessoasREF_FONE1: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasREF_NOME2: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object IBDataSetPessoasREF_FONE2: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasREF_COML1: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasREF_COML_FONE1: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasREF_COML2: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasREF_COML_FONE2: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPessoasREF_BANC: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object IBDataSetPessoasREF_AG_BANC: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object IBDataSetPessoasREF_CTA_BANC: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object IBDataSetPessoasTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPessoasFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
  end
  object IBDataSetPecas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PECAS'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    InsertSQL.Strings = (
      'insert into PECAS'
      
        '  (CFOP1, CFOP2, COD_PROC, COD_TRIB, CODIGO, CST_ATUAL, CST_MEDI' +
        'O, DESCRICAO, '
      
        '   ESPECIAL, ESTOQOS, ESTOQUE, FORA_LINHA, FORNECEDOR, GRUPO, IC' +
        'MS, ID_CONCESSIONARIA, '
      
        '   ID_PECAS, IPI, LISTA, LOCAL, M1_VENDAS, M2_VENDAS, M3_VENDAS,' +
        ' MIN_PEDIDO, '
      
        '   NOVASUBS, PRECO, PRECO_GAR, QTD_PEDIDA, QTDE_VENDA, ST_COFINS' +
        ', SUBST_TRIB, '
      
        '   SUBSTITUTO, ULT_COMPRA, ULT_PEDIDO, ULT_VENDA, UNIDADE, VEND_' +
        '1ABC, VEND_2ABC, '
      '   VEND_3ABC)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CST_ATUAL, :C' +
        'ST_MEDIO, '
      
        '   :DESCRICAO, :ESPECIAL, :ESTOQOS, :ESTOQUE, :FORA_LINHA, :FORN' +
        'ECEDOR, '
      
        '   :GRUPO, :ICMS, :ID_CONCESSIONARIA, :ID_PECAS, :IPI, :LISTA, :' +
        'LOCAL, '
      
        '   :M1_VENDAS, :M2_VENDAS, :M3_VENDAS, :MIN_PEDIDO, :NOVASUBS, :' +
        'PRECO, '
      
        '   :PRECO_GAR, :QTD_PEDIDA, :QTDE_VENDA, :ST_COFINS, :SUBST_TRIB' +
        ', :SUBSTITUTO, '
      
        '   :ULT_COMPRA, :ULT_PEDIDO, :ULT_VENDA, :UNIDADE, :VEND_1ABC, :' +
        'VEND_2ABC, '
      '   :VEND_3ABC)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS,'
      '  ID_CONCESSIONARIA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  ESPECIAL,'
      '  COD_PROC,'
      '  COD_TRIB,'
      '  LOCAL,'
      '  UNIDADE,'
      '  SUBSTITUTO,'
      '  FORA_LINHA,'
      '  ESTOQUE,'
      '  ESTOQOS,'
      '  MIN_PEDIDO,'
      '  QTD_PEDIDA,'
      '  CST_MEDIO,'
      '  CST_ATUAL,'
      '  ICMS,'
      '  PRECO,'
      '  PRECO_GAR,'
      '  IPI,'
      '  FORNECEDOR,'
      '  ULT_COMPRA,'
      '  ULT_VENDA,'
      '  ULT_PEDIDO,'
      '  QTDE_VENDA,'
      '  M1_VENDAS,'
      '  M2_VENDAS,'
      '  M3_VENDAS,'
      '  VEND_1ABC,'
      '  VEND_2ABC,'
      '  VEND_3ABC,'
      '  LISTA,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  NOVASUBS,'
      '  CFOP1,'
      '  CFOP2'
      'from PECAS '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'select  * from PECAS'
      '')
    ModifySQL.Strings = (
      'update PECAS'
      'set'
      '  CFOP1 = :CFOP1,'
      '  CFOP2 = :CFOP2,'
      '  COD_PROC = :COD_PROC,'
      '  COD_TRIB = :COD_TRIB,'
      '  CODIGO = :CODIGO,'
      '  CST_ATUAL = :CST_ATUAL,'
      '  CST_MEDIO = :CST_MEDIO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIAL = :ESPECIAL,'
      '  ESTOQOS = :ESTOQOS,'
      '  ESTOQUE = :ESTOQUE,'
      '  FORA_LINHA = :FORA_LINHA,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  GRUPO = :GRUPO,'
      '  ICMS = :ICMS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  LISTA = :LISTA,'
      '  LOCAL = :LOCAL,'
      '  M1_VENDAS = :M1_VENDAS,'
      '  M2_VENDAS = :M2_VENDAS,'
      '  M3_VENDAS = :M3_VENDAS,'
      '  MIN_PEDIDO = :MIN_PEDIDO,'
      '  NOVASUBS = :NOVASUBS,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR,'
      '  QTD_PEDIDA = :QTD_PEDIDA,'
      '  QTDE_VENDA = :QTDE_VENDA,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  SUBSTITUTO = :SUBSTITUTO,'
      '  ULT_COMPRA = :ULT_COMPRA,'
      '  ULT_PEDIDO = :ULT_PEDIDO,'
      '  ULT_VENDA = :ULT_VENDA,'
      '  UNIDADE = :UNIDADE,'
      '  VEND_1ABC = :VEND_1ABC,'
      '  VEND_2ABC = :VEND_2ABC,'
      '  VEND_3ABC = :VEND_3ABC'
      'where'
      '  ID_PECAS = :OLD_ID_PECAS')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 88
    object IBDataSetPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetPecasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS"."ID_CONCESSIONARIA"'
    end
    object IBDataSetPecasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object IBDataSetPecasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECAS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBDataSetPecasGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PECAS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetPecasESPECIAL: TIBStringField
      FieldName = 'ESPECIAL'
      Origin = '"PECAS"."ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasCOD_PROC: TIBStringField
      FieldName = 'COD_PROC'
      Origin = '"PECAS"."COD_PROC"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasCOD_TRIB: TIBStringField
      FieldName = 'COD_TRIB'
      Origin = '"PECAS"."COD_TRIB"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PECAS"."LOCAL"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetPecasUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PECAS"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetPecasSUBSTITUTO: TIBStringField
      FieldName = 'SUBSTITUTO'
      Origin = '"PECAS"."SUBSTITUTO"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetPecasFORA_LINHA: TIBStringField
      FieldName = 'FORA_LINHA'
      Origin = '"PECAS"."FORA_LINHA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"PECAS"."ESTOQUE"'
    end
    object IBDataSetPecasESTOQOS: TIntegerField
      FieldName = 'ESTOQOS'
      Origin = '"PECAS"."ESTOQOS"'
    end
    object IBDataSetPecasMIN_PEDIDO: TIntegerField
      FieldName = 'MIN_PEDIDO'
      Origin = '"PECAS"."MIN_PEDIDO"'
    end
    object IBDataSetPecasQTD_PEDIDA: TIntegerField
      FieldName = 'QTD_PEDIDA'
      Origin = '"PECAS"."QTD_PEDIDA"'
    end
    object IBDataSetPecasCST_MEDIO: TIBBCDField
      FieldName = 'CST_MEDIO'
      Origin = '"PECAS"."CST_MEDIO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasCST_ATUAL: TIBBCDField
      FieldName = 'CST_ATUAL'
      Origin = '"PECAS"."CST_ATUAL"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PECAS"."ICMS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PECAS"."PRECO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECAS"."IPI"'
      Precision = 9
      Size = 2
    end
    object IBDataSetPecasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PECAS"."FORNECEDOR"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetPecasULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
      Origin = '"PECAS"."ULT_COMPRA"'
    end
    object IBDataSetPecasULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
      Origin = '"PECAS"."ULT_VENDA"'
    end
    object IBDataSetPecasULT_PEDIDO: TIBStringField
      FieldName = 'ULT_PEDIDO'
      Origin = '"PECAS"."ULT_PEDIDO"'
      FixedChar = True
      Size = 8
    end
    object IBDataSetPecasQTDE_VENDA: TIntegerField
      FieldName = 'QTDE_VENDA'
      Origin = '"PECAS"."QTDE_VENDA"'
    end
    object IBDataSetPecasM1_VENDAS: TIntegerField
      FieldName = 'M1_VENDAS'
      Origin = '"PECAS"."M1_VENDAS"'
    end
    object IBDataSetPecasM2_VENDAS: TIntegerField
      FieldName = 'M2_VENDAS'
      Origin = '"PECAS"."M2_VENDAS"'
    end
    object IBDataSetPecasM3_VENDAS: TIntegerField
      FieldName = 'M3_VENDAS'
      Origin = '"PECAS"."M3_VENDAS"'
    end
    object IBDataSetPecasVEND_1ABC: TDateField
      FieldName = 'VEND_1ABC'
      Origin = '"PECAS"."VEND_1ABC"'
    end
    object IBDataSetPecasVEND_2ABC: TDateField
      FieldName = 'VEND_2ABC'
      Origin = '"PECAS"."VEND_2ABC"'
    end
    object IBDataSetPecasVEND_3ABC: TDateField
      FieldName = 'VEND_3ABC'
      Origin = '"PECAS"."VEND_3ABC"'
    end
    object IBDataSetPecasLISTA: TIBStringField
      FieldName = 'LISTA'
      Origin = '"PECAS"."LISTA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"PECAS"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"PECAS"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasNOVASUBS: TIBStringField
      FieldName = 'NOVASUBS'
      Origin = '"PECAS"."NOVASUBS"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPecasCFOP1: TIBStringField
      FieldName = 'CFOP1'
      Origin = '"PECAS"."CFOP1"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetPecasCFOP2: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"PECAS"."CFOP2"'
      FixedChar = True
      Size = 4
    end
  end
  object IBDataSetTMO: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMO'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    InsertSQL.Strings = (
      'insert into TMO'
      '  (CATEG, CODIGO, DESCRICAO, ID_TMO, REV_GRAT, TEMPO, TEMPO_GAR)'
      'values'
      
        '  (:CATEG, :CODIGO, :DESCRICAO, :ID_TMO, :REV_GRAT, :TEMPO, :TEM' +
        'PO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_TMO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  CATEG,'
      '  TEMPO,'
      '  TEMPO_GAR,'
      '  REV_GRAT'
      'from TMO '
      'where'
      '  ID_TMO = :ID_TMO')
    SelectSQL.Strings = (
      'select *  from TMO'
      '')
    ModifySQL.Strings = (
      'update TMO'
      'set'
      '  CATEG = :CATEG,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_TMO = :ID_TMO,'
      '  REV_GRAT = :REV_GRAT,'
      '  TEMPO = :TEMPO,'
      '  TEMPO_GAR = :TEMPO_GAR'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 152
    object IBDataSetTMOID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"TMO"."ID_TMO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetTMOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TMO"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetTMODESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TMO"."DESCRICAO"'
      FixedChar = True
      Size = 35
    end
    object IBDataSetTMOCATEG: TIBStringField
      FieldName = 'CATEG'
      Origin = '"TMO"."CATEG"'
      FixedChar = True
      Size = 2
    end
    object IBDataSetTMOTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"TMO"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object IBDataSetTMOTEMPO_GAR: TIBBCDField
      FieldName = 'TEMPO_GAR'
      Origin = '"TMO"."TEMPO_GAR"'
      Precision = 4
      Size = 1
    end
    object IBDataSetTMOREV_GRAT: TIBStringField
      FieldName = 'REV_GRAT'
      Origin = '"TMO"."REV_GRAT"'
      FixedChar = True
      Size = 1
    end
  end
  object IBDataSetCategoria: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CATEGORIA'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    InsertSQL.Strings = (
      'insert into CATEGORIA'
      '  (CODIGO, DESCRICAO, ID_CATEGORIA, PRECO, PRECO_GAR)'
      'values'
      '  (:CODIGO, :DESCRICAO, :ID_CATEGORIA, :PRECO, :PRECO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CATEGORIA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  PRECO,'
      '  PRECO_GAR'
      'from CATEGORIA '
      'where'
      '  ID_CATEGORIA = :ID_CATEGORIA')
    SelectSQL.Strings = (
      'select * from CATEGORIA'
      'where id_categoria = :id_categoria')
    ModifySQL.Strings = (
      'update CATEGORIA'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 24
    object IBDataSetCategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"CATEGORIA"."ID_CATEGORIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetCategoriaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CATEGORIA"."CODIGO"'
      Required = True
      Size = 5
    end
    object IBDataSetCategoriaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CATEGORIA"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBDataSetCategoriaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"CATEGORIA"."PRECO"'
      Precision = 9
      Size = 2
    end
    object IBDataSetCategoriaPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"CATEGORIA"."PRECO_GAR"'
      Precision = 9
      Size = 2
    end
  end
  object IBDataSetUsuarios: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (ACESSO1, ACESSO10, ACESSO100, ACESSO101, ACESSO102, ACESSO103' +
        ', ACESSO104, '
      
        '   ACESSO105, ACESSO106, ACESSO107, ACESSO108, ACESSO109, ACESSO' +
        '11, ACESSO110, '
      
        '   ACESSO111, ACESSO112, ACESSO113, ACESSO114, ACESSO115, ACESSO' +
        '116, ACESSO117, '
      
        '   ACESSO118, ACESSO119, ACESSO12, ACESSO120, ACESSO121, ACESSO1' +
        '22, ACESSO123, '
      
        '   ACESSO124, ACESSO125, ACESSO126, ACESSO127, ACESSO128, ACESSO' +
        '129, ACESSO13, '
      
        '   ACESSO130, ACESSO131, ACESSO132, ACESSO133, ACESSO134, ACESSO' +
        '135, ACESSO136, '
      
        '   ACESSO137, ACESSO138, ACESSO139, ACESSO14, ACESSO140, ACESSO1' +
        '41, ACESSO142, '
      
        '   ACESSO143, ACESSO144, ACESSO145, ACESSO146, ACESSO147, ACESSO' +
        '148, ACESSO149, '
      
        '   ACESSO15, ACESSO150, ACESSO151, ACESSO152, ACESSO153, ACESSO1' +
        '54, ACESSO155, '
      
        '   ACESSO156, ACESSO157, ACESSO158, ACESSO159, ACESSO16, ACESSO1' +
        '60, ACESSO17, '
      
        '   ACESSO18, ACESSO19, ACESSO2, ACESSO20, ACESSO21, ACESSO22, AC' +
        'ESSO23, '
      
        '   ACESSO24, ACESSO25, ACESSO26, ACESSO27, ACESSO28, ACESSO29, A' +
        'CESSO3, '
      
        '   ACESSO30, ACESSO31, ACESSO32, ACESSO33, ACESSO34, ACESSO35, A' +
        'CESSO36, '
      
        '   ACESSO37, ACESSO38, ACESSO39, ACESSO4, ACESSO40, ACESSO41, AC' +
        'ESSO42, '
      
        '   ACESSO43, ACESSO44, ACESSO45, ACESSO46, ACESSO47, ACESSO48, A' +
        'CESSO49, '
      
        '   ACESSO5, ACESSO50, ACESSO51, ACESSO52, ACESSO53, ACESSO54, AC' +
        'ESSO55, '
      
        '   ACESSO56, ACESSO57, ACESSO58, ACESSO59, ACESSO6, ACESSO60, AC' +
        'ESSO61, '
      
        '   ACESSO62, ACESSO63, ACESSO64, ACESSO65, ACESSO66, ACESSO67, A' +
        'CESSO68, '
      
        '   ACESSO69, ACESSO7, ACESSO70, ACESSO71, ACESSO72, ACESSO73, AC' +
        'ESSO74, '
      
        '   ACESSO75, ACESSO76, ACESSO77, ACESSO78, ACESSO79, ACESSO8, AC' +
        'ESSO80, '
      
        '   ACESSO81, ACESSO82, ACESSO83, ACESSO84, ACESSO85, ACESSO86, A' +
        'CESSO87, '
      
        '   ACESSO88, ACESSO89, ACESSO9, ACESSO90, ACESSO91, ACESSO92, AC' +
        'ESSO93, '
      
        '   ACESSO94, ACESSO95, ACESSO96, ACESSO97, ACESSO98, ACESSO99, A' +
        'DM, ID_USUARIOS, '
      '   LOGIN, SENHA, TROCAR_SENHA, USUARIO)'
      'values'
      
        '  (:ACESSO1, :ACESSO10, :ACESSO100, :ACESSO101, :ACESSO102, :ACE' +
        'SSO103, '
      
        '   :ACESSO104, :ACESSO105, :ACESSO106, :ACESSO107, :ACESSO108, :' +
        'ACESSO109, '
      
        '   :ACESSO11, :ACESSO110, :ACESSO111, :ACESSO112, :ACESSO113, :A' +
        'CESSO114, '
      
        '   :ACESSO115, :ACESSO116, :ACESSO117, :ACESSO118, :ACESSO119, :' +
        'ACESSO12, '
      
        '   :ACESSO120, :ACESSO121, :ACESSO122, :ACESSO123, :ACESSO124, :' +
        'ACESSO125, '
      
        '   :ACESSO126, :ACESSO127, :ACESSO128, :ACESSO129, :ACESSO13, :A' +
        'CESSO130, '
      
        '   :ACESSO131, :ACESSO132, :ACESSO133, :ACESSO134, :ACESSO135, :' +
        'ACESSO136, '
      
        '   :ACESSO137, :ACESSO138, :ACESSO139, :ACESSO14, :ACESSO140, :A' +
        'CESSO141, '
      
        '   :ACESSO142, :ACESSO143, :ACESSO144, :ACESSO145, :ACESSO146, :' +
        'ACESSO147, '
      
        '   :ACESSO148, :ACESSO149, :ACESSO15, :ACESSO150, :ACESSO151, :A' +
        'CESSO152, '
      
        '   :ACESSO153, :ACESSO154, :ACESSO155, :ACESSO156, :ACESSO157, :' +
        'ACESSO158, '
      
        '   :ACESSO159, :ACESSO16, :ACESSO160, :ACESSO17, :ACESSO18, :ACE' +
        'SSO19, '
      
        '   :ACESSO2, :ACESSO20, :ACESSO21, :ACESSO22, :ACESSO23, :ACESSO' +
        '24, :ACESSO25, '
      
        '   :ACESSO26, :ACESSO27, :ACESSO28, :ACESSO29, :ACESSO3, :ACESSO' +
        '30, :ACESSO31, '
      
        '   :ACESSO32, :ACESSO33, :ACESSO34, :ACESSO35, :ACESSO36, :ACESS' +
        'O37, :ACESSO38, '
      
        '   :ACESSO39, :ACESSO4, :ACESSO40, :ACESSO41, :ACESSO42, :ACESSO' +
        '43, :ACESSO44, '
      
        '   :ACESSO45, :ACESSO46, :ACESSO47, :ACESSO48, :ACESSO49, :ACESS' +
        'O5, :ACESSO50, '
      
        '   :ACESSO51, :ACESSO52, :ACESSO53, :ACESSO54, :ACESSO55, :ACESS' +
        'O56, :ACESSO57, '
      
        '   :ACESSO58, :ACESSO59, :ACESSO6, :ACESSO60, :ACESSO61, :ACESSO' +
        '62, :ACESSO63, '
      
        '   :ACESSO64, :ACESSO65, :ACESSO66, :ACESSO67, :ACESSO68, :ACESS' +
        'O69, :ACESSO7, '
      
        '   :ACESSO70, :ACESSO71, :ACESSO72, :ACESSO73, :ACESSO74, :ACESS' +
        'O75, :ACESSO76, '
      
        '   :ACESSO77, :ACESSO78, :ACESSO79, :ACESSO8, :ACESSO80, :ACESSO' +
        '81, :ACESSO82, '
      
        '   :ACESSO83, :ACESSO84, :ACESSO85, :ACESSO86, :ACESSO87, :ACESS' +
        'O88, :ACESSO89, '
      
        '   :ACESSO9, :ACESSO90, :ACESSO91, :ACESSO92, :ACESSO93, :ACESSO' +
        '94, :ACESSO95, '
      
        '   :ACESSO96, :ACESSO97, :ACESSO98, :ACESSO99, :ADM, :ID_USUARIO' +
        'S, :LOGIN, '
      '   :SENHA, :TROCAR_SENHA, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS,'
      '  USUARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  ADM,'
      '  TROCAR_SENHA,'
      '  ACESSO1,'
      '  ACESSO2,'
      '  ACESSO3,'
      '  ACESSO4,'
      '  ACESSO5,'
      '  ACESSO6,'
      '  ACESSO7,'
      '  ACESSO8,'
      '  ACESSO9,'
      '  ACESSO10,'
      '  ACESSO11,'
      '  ACESSO12,'
      '  ACESSO13,'
      '  ACESSO14,'
      '  ACESSO15,'
      '  ACESSO16,'
      '  ACESSO17,'
      '  ACESSO18,'
      '  ACESSO19,'
      '  ACESSO20,'
      '  ACESSO21,'
      '  ACESSO22,'
      '  ACESSO23,'
      '  ACESSO24,'
      '  ACESSO25,'
      '  ACESSO26,'
      '  ACESSO27,'
      '  ACESSO28,'
      '  ACESSO29,'
      '  ACESSO30,'
      '  ACESSO31,'
      '  ACESSO32,'
      '  ACESSO33,'
      '  ACESSO34,'
      '  ACESSO35,'
      '  ACESSO36,'
      '  ACESSO37,'
      '  ACESSO38,'
      '  ACESSO39,'
      '  ACESSO40,'
      '  ACESSO41,'
      '  ACESSO42,'
      '  ACESSO43,'
      '  ACESSO44,'
      '  ACESSO45,'
      '  ACESSO46,'
      '  ACESSO47,'
      '  ACESSO48,'
      '  ACESSO49,'
      '  ACESSO50,'
      '  ACESSO51,'
      '  ACESSO52,'
      '  ACESSO53,'
      '  ACESSO54,'
      '  ACESSO55,'
      '  ACESSO56,'
      '  ACESSO57,'
      '  ACESSO58,'
      '  ACESSO59,'
      '  ACESSO60,'
      '  ACESSO61,'
      '  ACESSO62,'
      '  ACESSO63,'
      '  ACESSO64,'
      '  ACESSO65,'
      '  ACESSO66,'
      '  ACESSO67,'
      '  ACESSO68,'
      '  ACESSO69,'
      '  ACESSO70,'
      '  ACESSO71,'
      '  ACESSO72,'
      '  ACESSO73,'
      '  ACESSO74,'
      '  ACESSO75,'
      '  ACESSO76,'
      '  ACESSO77,'
      '  ACESSO78,'
      '  ACESSO79,'
      '  ACESSO80,'
      '  ACESSO81,'
      '  ACESSO82,'
      '  ACESSO83,'
      '  ACESSO84,'
      '  ACESSO85,'
      '  ACESSO86,'
      '  ACESSO87,'
      '  ACESSO88,'
      '  ACESSO89,'
      '  ACESSO90,'
      '  ACESSO91,'
      '  ACESSO92,'
      '  ACESSO93,'
      '  ACESSO94,'
      '  ACESSO95,'
      '  ACESSO96,'
      '  ACESSO97,'
      '  ACESSO98,'
      '  ACESSO99,'
      '  ACESSO100,'
      '  ACESSO101,'
      '  ACESSO102,'
      '  ACESSO103,'
      '  ACESSO104,'
      '  ACESSO105,'
      '  ACESSO106,'
      '  ACESSO107,'
      '  ACESSO108,'
      '  ACESSO109,'
      '  ACESSO110,'
      '  ACESSO111,'
      '  ACESSO112,'
      '  ACESSO113,'
      '  ACESSO114,'
      '  ACESSO115,'
      '  ACESSO116,'
      '  ACESSO117,'
      '  ACESSO118,'
      '  ACESSO119,'
      '  ACESSO120,'
      '  ACESSO121,'
      '  ACESSO122,'
      '  ACESSO123,'
      '  ACESSO124,'
      '  ACESSO125,'
      '  ACESSO126,'
      '  ACESSO127,'
      '  ACESSO128,'
      '  ACESSO129,'
      '  ACESSO130,'
      '  ACESSO131,'
      '  ACESSO132,'
      '  ACESSO133,'
      '  ACESSO134,'
      '  ACESSO135,'
      '  ACESSO136,'
      '  ACESSO137,'
      '  ACESSO138,'
      '  ACESSO139,'
      '  ACESSO140,'
      '  ACESSO141,'
      '  ACESSO142,'
      '  ACESSO143,'
      '  ACESSO144,'
      '  ACESSO145,'
      '  ACESSO146,'
      '  ACESSO147,'
      '  ACESSO148,'
      '  ACESSO149,'
      '  ACESSO150,'
      '  ACESSO151,'
      '  ACESSO152,'
      '  ACESSO153,'
      '  ACESSO154,'
      '  ACESSO155,'
      '  ACESSO156,'
      '  ACESSO157,'
      '  ACESSO158,'
      '  ACESSO159,'
      '  ACESSO160'
      'from USUARIOS '
      'where'
      '  ID_USUARIOS = :ID_USUARIOS')
    SelectSQL.Strings = (
      'select *  from USUARIOS')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  ACESSO1 = :ACESSO1,'
      '  ACESSO10 = :ACESSO10,'
      '  ACESSO100 = :ACESSO100,'
      '  ACESSO101 = :ACESSO101,'
      '  ACESSO102 = :ACESSO102,'
      '  ACESSO103 = :ACESSO103,'
      '  ACESSO104 = :ACESSO104,'
      '  ACESSO105 = :ACESSO105,'
      '  ACESSO106 = :ACESSO106,'
      '  ACESSO107 = :ACESSO107,'
      '  ACESSO108 = :ACESSO108,'
      '  ACESSO109 = :ACESSO109,'
      '  ACESSO11 = :ACESSO11,'
      '  ACESSO110 = :ACESSO110,'
      '  ACESSO111 = :ACESSO111,'
      '  ACESSO112 = :ACESSO112,'
      '  ACESSO113 = :ACESSO113,'
      '  ACESSO114 = :ACESSO114,'
      '  ACESSO115 = :ACESSO115,'
      '  ACESSO116 = :ACESSO116,'
      '  ACESSO117 = :ACESSO117,'
      '  ACESSO118 = :ACESSO118,'
      '  ACESSO119 = :ACESSO119,'
      '  ACESSO12 = :ACESSO12,'
      '  ACESSO120 = :ACESSO120,'
      '  ACESSO121 = :ACESSO121,'
      '  ACESSO122 = :ACESSO122,'
      '  ACESSO123 = :ACESSO123,'
      '  ACESSO124 = :ACESSO124,'
      '  ACESSO125 = :ACESSO125,'
      '  ACESSO126 = :ACESSO126,'
      '  ACESSO127 = :ACESSO127,'
      '  ACESSO128 = :ACESSO128,'
      '  ACESSO129 = :ACESSO129,'
      '  ACESSO13 = :ACESSO13,'
      '  ACESSO130 = :ACESSO130,'
      '  ACESSO131 = :ACESSO131,'
      '  ACESSO132 = :ACESSO132,'
      '  ACESSO133 = :ACESSO133,'
      '  ACESSO134 = :ACESSO134,'
      '  ACESSO135 = :ACESSO135,'
      '  ACESSO136 = :ACESSO136,'
      '  ACESSO137 = :ACESSO137,'
      '  ACESSO138 = :ACESSO138,'
      '  ACESSO139 = :ACESSO139,'
      '  ACESSO14 = :ACESSO14,'
      '  ACESSO140 = :ACESSO140,'
      '  ACESSO141 = :ACESSO141,'
      '  ACESSO142 = :ACESSO142,'
      '  ACESSO143 = :ACESSO143,'
      '  ACESSO144 = :ACESSO144,'
      '  ACESSO145 = :ACESSO145,'
      '  ACESSO146 = :ACESSO146,'
      '  ACESSO147 = :ACESSO147,'
      '  ACESSO148 = :ACESSO148,'
      '  ACESSO149 = :ACESSO149,'
      '  ACESSO15 = :ACESSO15,'
      '  ACESSO150 = :ACESSO150,'
      '  ACESSO151 = :ACESSO151,'
      '  ACESSO152 = :ACESSO152,'
      '  ACESSO153 = :ACESSO153,'
      '  ACESSO154 = :ACESSO154,'
      '  ACESSO155 = :ACESSO155,'
      '  ACESSO156 = :ACESSO156,'
      '  ACESSO157 = :ACESSO157,'
      '  ACESSO158 = :ACESSO158,'
      '  ACESSO159 = :ACESSO159,'
      '  ACESSO16 = :ACESSO16,'
      '  ACESSO160 = :ACESSO160,'
      '  ACESSO17 = :ACESSO17,'
      '  ACESSO18 = :ACESSO18,'
      '  ACESSO19 = :ACESSO19,'
      '  ACESSO2 = :ACESSO2,'
      '  ACESSO20 = :ACESSO20,'
      '  ACESSO21 = :ACESSO21,'
      '  ACESSO22 = :ACESSO22,'
      '  ACESSO23 = :ACESSO23,'
      '  ACESSO24 = :ACESSO24,'
      '  ACESSO25 = :ACESSO25,'
      '  ACESSO26 = :ACESSO26,'
      '  ACESSO27 = :ACESSO27,'
      '  ACESSO28 = :ACESSO28,'
      '  ACESSO29 = :ACESSO29,'
      '  ACESSO3 = :ACESSO3,'
      '  ACESSO30 = :ACESSO30,'
      '  ACESSO31 = :ACESSO31,'
      '  ACESSO32 = :ACESSO32,'
      '  ACESSO33 = :ACESSO33,'
      '  ACESSO34 = :ACESSO34,'
      '  ACESSO35 = :ACESSO35,'
      '  ACESSO36 = :ACESSO36,'
      '  ACESSO37 = :ACESSO37,'
      '  ACESSO38 = :ACESSO38,'
      '  ACESSO39 = :ACESSO39,'
      '  ACESSO4 = :ACESSO4,'
      '  ACESSO40 = :ACESSO40,'
      '  ACESSO41 = :ACESSO41,'
      '  ACESSO42 = :ACESSO42,'
      '  ACESSO43 = :ACESSO43,'
      '  ACESSO44 = :ACESSO44,'
      '  ACESSO45 = :ACESSO45,'
      '  ACESSO46 = :ACESSO46,'
      '  ACESSO47 = :ACESSO47,'
      '  ACESSO48 = :ACESSO48,'
      '  ACESSO49 = :ACESSO49,'
      '  ACESSO5 = :ACESSO5,'
      '  ACESSO50 = :ACESSO50,'
      '  ACESSO51 = :ACESSO51,'
      '  ACESSO52 = :ACESSO52,'
      '  ACESSO53 = :ACESSO53,'
      '  ACESSO54 = :ACESSO54,'
      '  ACESSO55 = :ACESSO55,'
      '  ACESSO56 = :ACESSO56,'
      '  ACESSO57 = :ACESSO57,'
      '  ACESSO58 = :ACESSO58,'
      '  ACESSO59 = :ACESSO59,'
      '  ACESSO6 = :ACESSO6,'
      '  ACESSO60 = :ACESSO60,'
      '  ACESSO61 = :ACESSO61,'
      '  ACESSO62 = :ACESSO62,'
      '  ACESSO63 = :ACESSO63,'
      '  ACESSO64 = :ACESSO64,'
      '  ACESSO65 = :ACESSO65,'
      '  ACESSO66 = :ACESSO66,'
      '  ACESSO67 = :ACESSO67,'
      '  ACESSO68 = :ACESSO68,'
      '  ACESSO69 = :ACESSO69,'
      '  ACESSO7 = :ACESSO7,'
      '  ACESSO70 = :ACESSO70,'
      '  ACESSO71 = :ACESSO71,'
      '  ACESSO72 = :ACESSO72,'
      '  ACESSO73 = :ACESSO73,'
      '  ACESSO74 = :ACESSO74,'
      '  ACESSO75 = :ACESSO75,'
      '  ACESSO76 = :ACESSO76,'
      '  ACESSO77 = :ACESSO77,'
      '  ACESSO78 = :ACESSO78,'
      '  ACESSO79 = :ACESSO79,'
      '  ACESSO8 = :ACESSO8,'
      '  ACESSO80 = :ACESSO80,'
      '  ACESSO81 = :ACESSO81,'
      '  ACESSO82 = :ACESSO82,'
      '  ACESSO83 = :ACESSO83,'
      '  ACESSO84 = :ACESSO84,'
      '  ACESSO85 = :ACESSO85,'
      '  ACESSO86 = :ACESSO86,'
      '  ACESSO87 = :ACESSO87,'
      '  ACESSO88 = :ACESSO88,'
      '  ACESSO89 = :ACESSO89,'
      '  ACESSO9 = :ACESSO9,'
      '  ACESSO90 = :ACESSO90,'
      '  ACESSO91 = :ACESSO91,'
      '  ACESSO92 = :ACESSO92,'
      '  ACESSO93 = :ACESSO93,'
      '  ACESSO94 = :ACESSO94,'
      '  ACESSO95 = :ACESSO95,'
      '  ACESSO96 = :ACESSO96,'
      '  ACESSO97 = :ACESSO97,'
      '  ACESSO98 = :ACESSO98,'
      '  ACESSO99 = :ACESSO99,'
      '  ADM = :ADM,'
      '  ID_USUARIOS = :ID_USUARIOS,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  TROCAR_SENHA = :TROCAR_SENHA,'
      '  USUARIO = :USUARIO'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 224
    object IBDataSetUsuariosID_USUARIOS: TIntegerField
      FieldName = 'ID_USUARIOS'
      Origin = '"USUARIOS"."ID_USUARIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetUsuariosUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIOS"."USUARIO"'
      Required = True
      Size = 50
    end
    object IBDataSetUsuariosLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object IBDataSetUsuariosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Required = True
      Size = 10
    end
    object IBDataSetUsuariosADM: TIBStringField
      FieldName = 'ADM'
      Origin = '"USUARIOS"."ADM"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO1: TIBStringField
      FieldName = 'ACESSO1'
      Origin = '"USUARIOS"."ACESSO1"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO2: TIBStringField
      FieldName = 'ACESSO2'
      Origin = '"USUARIOS"."ACESSO2"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO3: TIBStringField
      FieldName = 'ACESSO3'
      Origin = '"USUARIOS"."ACESSO3"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO4: TIBStringField
      FieldName = 'ACESSO4'
      Origin = '"USUARIOS"."ACESSO4"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO5: TIBStringField
      FieldName = 'ACESSO5'
      Origin = '"USUARIOS"."ACESSO5"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO6: TIBStringField
      FieldName = 'ACESSO6'
      Origin = '"USUARIOS"."ACESSO6"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO7: TIBStringField
      FieldName = 'ACESSO7'
      Origin = '"USUARIOS"."ACESSO7"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO8: TIBStringField
      FieldName = 'ACESSO8'
      Origin = '"USUARIOS"."ACESSO8"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO9: TIBStringField
      FieldName = 'ACESSO9'
      Origin = '"USUARIOS"."ACESSO9"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO10: TIBStringField
      FieldName = 'ACESSO10'
      Origin = '"USUARIOS"."ACESSO10"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO11: TIBStringField
      FieldName = 'ACESSO11'
      Origin = '"USUARIOS"."ACESSO11"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO12: TIBStringField
      FieldName = 'ACESSO12'
      Origin = '"USUARIOS"."ACESSO12"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO13: TIBStringField
      FieldName = 'ACESSO13'
      Origin = '"USUARIOS"."ACESSO13"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO14: TIBStringField
      FieldName = 'ACESSO14'
      Origin = '"USUARIOS"."ACESSO14"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO15: TIBStringField
      FieldName = 'ACESSO15'
      Origin = '"USUARIOS"."ACESSO15"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO16: TIBStringField
      FieldName = 'ACESSO16'
      Origin = '"USUARIOS"."ACESSO16"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO17: TIBStringField
      FieldName = 'ACESSO17'
      Origin = '"USUARIOS"."ACESSO17"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO18: TIBStringField
      FieldName = 'ACESSO18'
      Origin = '"USUARIOS"."ACESSO18"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO19: TIBStringField
      FieldName = 'ACESSO19'
      Origin = '"USUARIOS"."ACESSO19"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO20: TIBStringField
      FieldName = 'ACESSO20'
      Origin = '"USUARIOS"."ACESSO20"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO21: TIBStringField
      FieldName = 'ACESSO21'
      Origin = '"USUARIOS"."ACESSO21"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO22: TIBStringField
      FieldName = 'ACESSO22'
      Origin = '"USUARIOS"."ACESSO22"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO23: TIBStringField
      FieldName = 'ACESSO23'
      Origin = '"USUARIOS"."ACESSO23"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO24: TIBStringField
      FieldName = 'ACESSO24'
      Origin = '"USUARIOS"."ACESSO24"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO25: TIBStringField
      FieldName = 'ACESSO25'
      Origin = '"USUARIOS"."ACESSO25"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO26: TIBStringField
      FieldName = 'ACESSO26'
      Origin = '"USUARIOS"."ACESSO26"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO27: TIBStringField
      FieldName = 'ACESSO27'
      Origin = '"USUARIOS"."ACESSO27"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO28: TIBStringField
      FieldName = 'ACESSO28'
      Origin = '"USUARIOS"."ACESSO28"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO29: TIBStringField
      FieldName = 'ACESSO29'
      Origin = '"USUARIOS"."ACESSO29"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO30: TIBStringField
      FieldName = 'ACESSO30'
      Origin = '"USUARIOS"."ACESSO30"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO31: TIBStringField
      FieldName = 'ACESSO31'
      Origin = '"USUARIOS"."ACESSO31"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO32: TIBStringField
      FieldName = 'ACESSO32'
      Origin = '"USUARIOS"."ACESSO32"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO33: TIBStringField
      FieldName = 'ACESSO33'
      Origin = '"USUARIOS"."ACESSO33"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO34: TIBStringField
      FieldName = 'ACESSO34'
      Origin = '"USUARIOS"."ACESSO34"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO35: TIBStringField
      FieldName = 'ACESSO35'
      Origin = '"USUARIOS"."ACESSO35"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO36: TIBStringField
      FieldName = 'ACESSO36'
      Origin = '"USUARIOS"."ACESSO36"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO37: TIBStringField
      FieldName = 'ACESSO37'
      Origin = '"USUARIOS"."ACESSO37"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO38: TIBStringField
      FieldName = 'ACESSO38'
      Origin = '"USUARIOS"."ACESSO38"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO39: TIBStringField
      FieldName = 'ACESSO39'
      Origin = '"USUARIOS"."ACESSO39"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO40: TIBStringField
      FieldName = 'ACESSO40'
      Origin = '"USUARIOS"."ACESSO40"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO41: TIBStringField
      FieldName = 'ACESSO41'
      Origin = '"USUARIOS"."ACESSO41"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO42: TIBStringField
      FieldName = 'ACESSO42'
      Origin = '"USUARIOS"."ACESSO42"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO43: TIBStringField
      FieldName = 'ACESSO43'
      Origin = '"USUARIOS"."ACESSO43"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO44: TIBStringField
      FieldName = 'ACESSO44'
      Origin = '"USUARIOS"."ACESSO44"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO45: TIBStringField
      FieldName = 'ACESSO45'
      Origin = '"USUARIOS"."ACESSO45"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO46: TIBStringField
      FieldName = 'ACESSO46'
      Origin = '"USUARIOS"."ACESSO46"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO47: TIBStringField
      FieldName = 'ACESSO47'
      Origin = '"USUARIOS"."ACESSO47"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO48: TIBStringField
      FieldName = 'ACESSO48'
      Origin = '"USUARIOS"."ACESSO48"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO49: TIBStringField
      FieldName = 'ACESSO49'
      Origin = '"USUARIOS"."ACESSO49"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO50: TIBStringField
      FieldName = 'ACESSO50'
      Origin = '"USUARIOS"."ACESSO50"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO51: TIBStringField
      FieldName = 'ACESSO51'
      Origin = '"USUARIOS"."ACESSO51"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO52: TIBStringField
      FieldName = 'ACESSO52'
      Origin = '"USUARIOS"."ACESSO52"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO53: TIBStringField
      FieldName = 'ACESSO53'
      Origin = '"USUARIOS"."ACESSO53"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO54: TIBStringField
      FieldName = 'ACESSO54'
      Origin = '"USUARIOS"."ACESSO54"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO55: TIBStringField
      FieldName = 'ACESSO55'
      Origin = '"USUARIOS"."ACESSO55"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO56: TIBStringField
      FieldName = 'ACESSO56'
      Origin = '"USUARIOS"."ACESSO56"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO57: TIBStringField
      FieldName = 'ACESSO57'
      Origin = '"USUARIOS"."ACESSO57"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO58: TIBStringField
      FieldName = 'ACESSO58'
      Origin = '"USUARIOS"."ACESSO58"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO59: TIBStringField
      FieldName = 'ACESSO59'
      Origin = '"USUARIOS"."ACESSO59"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO60: TIBStringField
      FieldName = 'ACESSO60'
      Origin = '"USUARIOS"."ACESSO60"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO61: TIBStringField
      FieldName = 'ACESSO61'
      Origin = '"USUARIOS"."ACESSO61"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO62: TIBStringField
      FieldName = 'ACESSO62'
      Origin = '"USUARIOS"."ACESSO62"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO63: TIBStringField
      FieldName = 'ACESSO63'
      Origin = '"USUARIOS"."ACESSO63"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO64: TIBStringField
      FieldName = 'ACESSO64'
      Origin = '"USUARIOS"."ACESSO64"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO65: TIBStringField
      FieldName = 'ACESSO65'
      Origin = '"USUARIOS"."ACESSO65"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO66: TIBStringField
      FieldName = 'ACESSO66'
      Origin = '"USUARIOS"."ACESSO66"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO67: TIBStringField
      FieldName = 'ACESSO67'
      Origin = '"USUARIOS"."ACESSO67"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO68: TIBStringField
      FieldName = 'ACESSO68'
      Origin = '"USUARIOS"."ACESSO68"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO69: TIBStringField
      FieldName = 'ACESSO69'
      Origin = '"USUARIOS"."ACESSO69"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO70: TIBStringField
      FieldName = 'ACESSO70'
      Origin = '"USUARIOS"."ACESSO70"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO71: TIBStringField
      FieldName = 'ACESSO71'
      Origin = '"USUARIOS"."ACESSO71"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO72: TIBStringField
      FieldName = 'ACESSO72'
      Origin = '"USUARIOS"."ACESSO72"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO73: TIBStringField
      FieldName = 'ACESSO73'
      Origin = '"USUARIOS"."ACESSO73"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO74: TIBStringField
      FieldName = 'ACESSO74'
      Origin = '"USUARIOS"."ACESSO74"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO75: TIBStringField
      FieldName = 'ACESSO75'
      Origin = '"USUARIOS"."ACESSO75"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO76: TIBStringField
      FieldName = 'ACESSO76'
      Origin = '"USUARIOS"."ACESSO76"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO77: TIBStringField
      FieldName = 'ACESSO77'
      Origin = '"USUARIOS"."ACESSO77"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO78: TIBStringField
      FieldName = 'ACESSO78'
      Origin = '"USUARIOS"."ACESSO78"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO79: TIBStringField
      FieldName = 'ACESSO79'
      Origin = '"USUARIOS"."ACESSO79"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO80: TIBStringField
      FieldName = 'ACESSO80'
      Origin = '"USUARIOS"."ACESSO80"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO81: TIBStringField
      FieldName = 'ACESSO81'
      Origin = '"USUARIOS"."ACESSO81"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO82: TIBStringField
      FieldName = 'ACESSO82'
      Origin = '"USUARIOS"."ACESSO82"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO83: TIBStringField
      FieldName = 'ACESSO83'
      Origin = '"USUARIOS"."ACESSO83"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO84: TIBStringField
      FieldName = 'ACESSO84'
      Origin = '"USUARIOS"."ACESSO84"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO85: TIBStringField
      FieldName = 'ACESSO85'
      Origin = '"USUARIOS"."ACESSO85"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO86: TIBStringField
      FieldName = 'ACESSO86'
      Origin = '"USUARIOS"."ACESSO86"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO87: TIBStringField
      FieldName = 'ACESSO87'
      Origin = '"USUARIOS"."ACESSO87"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO88: TIBStringField
      FieldName = 'ACESSO88'
      Origin = '"USUARIOS"."ACESSO88"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO89: TIBStringField
      FieldName = 'ACESSO89'
      Origin = '"USUARIOS"."ACESSO89"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO90: TIBStringField
      FieldName = 'ACESSO90'
      Origin = '"USUARIOS"."ACESSO90"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO91: TIBStringField
      FieldName = 'ACESSO91'
      Origin = '"USUARIOS"."ACESSO91"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO92: TIBStringField
      FieldName = 'ACESSO92'
      Origin = '"USUARIOS"."ACESSO92"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO93: TIBStringField
      FieldName = 'ACESSO93'
      Origin = '"USUARIOS"."ACESSO93"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO94: TIBStringField
      FieldName = 'ACESSO94'
      Origin = '"USUARIOS"."ACESSO94"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO95: TIBStringField
      FieldName = 'ACESSO95'
      Origin = '"USUARIOS"."ACESSO95"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO96: TIBStringField
      FieldName = 'ACESSO96'
      Origin = '"USUARIOS"."ACESSO96"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO97: TIBStringField
      FieldName = 'ACESSO97'
      Origin = '"USUARIOS"."ACESSO97"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO98: TIBStringField
      FieldName = 'ACESSO98'
      Origin = '"USUARIOS"."ACESSO98"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO99: TIBStringField
      FieldName = 'ACESSO99'
      Origin = '"USUARIOS"."ACESSO99"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO100: TIBStringField
      FieldName = 'ACESSO100'
      Origin = '"USUARIOS"."ACESSO100"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO101: TIBStringField
      FieldName = 'ACESSO101'
      Origin = '"USUARIOS"."ACESSO101"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO102: TIBStringField
      FieldName = 'ACESSO102'
      Origin = '"USUARIOS"."ACESSO102"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO103: TIBStringField
      FieldName = 'ACESSO103'
      Origin = '"USUARIOS"."ACESSO103"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO104: TIBStringField
      FieldName = 'ACESSO104'
      Origin = '"USUARIOS"."ACESSO104"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO105: TIBStringField
      FieldName = 'ACESSO105'
      Origin = '"USUARIOS"."ACESSO105"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO106: TIBStringField
      FieldName = 'ACESSO106'
      Origin = '"USUARIOS"."ACESSO106"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO107: TIBStringField
      FieldName = 'ACESSO107'
      Origin = '"USUARIOS"."ACESSO107"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO108: TIBStringField
      FieldName = 'ACESSO108'
      Origin = '"USUARIOS"."ACESSO108"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO109: TIBStringField
      FieldName = 'ACESSO109'
      Origin = '"USUARIOS"."ACESSO109"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO110: TIBStringField
      FieldName = 'ACESSO110'
      Origin = '"USUARIOS"."ACESSO110"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO111: TIBStringField
      FieldName = 'ACESSO111'
      Origin = '"USUARIOS"."ACESSO111"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO112: TIBStringField
      FieldName = 'ACESSO112'
      Origin = '"USUARIOS"."ACESSO112"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO113: TIBStringField
      FieldName = 'ACESSO113'
      Origin = '"USUARIOS"."ACESSO113"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO114: TIBStringField
      FieldName = 'ACESSO114'
      Origin = '"USUARIOS"."ACESSO114"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO115: TIBStringField
      FieldName = 'ACESSO115'
      Origin = '"USUARIOS"."ACESSO115"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO116: TIBStringField
      FieldName = 'ACESSO116'
      Origin = '"USUARIOS"."ACESSO116"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO117: TIBStringField
      FieldName = 'ACESSO117'
      Origin = '"USUARIOS"."ACESSO117"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO118: TIBStringField
      FieldName = 'ACESSO118'
      Origin = '"USUARIOS"."ACESSO118"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO119: TIBStringField
      FieldName = 'ACESSO119'
      Origin = '"USUARIOS"."ACESSO119"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO120: TIBStringField
      FieldName = 'ACESSO120'
      Origin = '"USUARIOS"."ACESSO120"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO121: TIBStringField
      FieldName = 'ACESSO121'
      Origin = '"USUARIOS"."ACESSO121"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO122: TIBStringField
      FieldName = 'ACESSO122'
      Origin = '"USUARIOS"."ACESSO122"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO123: TIBStringField
      FieldName = 'ACESSO123'
      Origin = '"USUARIOS"."ACESSO123"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO124: TIBStringField
      FieldName = 'ACESSO124'
      Origin = '"USUARIOS"."ACESSO124"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO125: TIBStringField
      FieldName = 'ACESSO125'
      Origin = '"USUARIOS"."ACESSO125"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO126: TIBStringField
      FieldName = 'ACESSO126'
      Origin = '"USUARIOS"."ACESSO126"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO127: TIBStringField
      FieldName = 'ACESSO127'
      Origin = '"USUARIOS"."ACESSO127"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO128: TIBStringField
      FieldName = 'ACESSO128'
      Origin = '"USUARIOS"."ACESSO128"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO129: TIBStringField
      FieldName = 'ACESSO129'
      Origin = '"USUARIOS"."ACESSO129"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO130: TIBStringField
      FieldName = 'ACESSO130'
      Origin = '"USUARIOS"."ACESSO130"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO131: TIBStringField
      FieldName = 'ACESSO131'
      Origin = '"USUARIOS"."ACESSO131"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO132: TIBStringField
      FieldName = 'ACESSO132'
      Origin = '"USUARIOS"."ACESSO132"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO133: TIBStringField
      FieldName = 'ACESSO133'
      Origin = '"USUARIOS"."ACESSO133"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO134: TIBStringField
      FieldName = 'ACESSO134'
      Origin = '"USUARIOS"."ACESSO134"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO135: TIBStringField
      FieldName = 'ACESSO135'
      Origin = '"USUARIOS"."ACESSO135"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO136: TIBStringField
      FieldName = 'ACESSO136'
      Origin = '"USUARIOS"."ACESSO136"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO137: TIBStringField
      FieldName = 'ACESSO137'
      Origin = '"USUARIOS"."ACESSO137"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO138: TIBStringField
      FieldName = 'ACESSO138'
      Origin = '"USUARIOS"."ACESSO138"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO139: TIBStringField
      FieldName = 'ACESSO139'
      Origin = '"USUARIOS"."ACESSO139"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO140: TIBStringField
      FieldName = 'ACESSO140'
      Origin = '"USUARIOS"."ACESSO140"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO141: TIBStringField
      FieldName = 'ACESSO141'
      Origin = '"USUARIOS"."ACESSO141"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO142: TIBStringField
      FieldName = 'ACESSO142'
      Origin = '"USUARIOS"."ACESSO142"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO143: TIBStringField
      FieldName = 'ACESSO143'
      Origin = '"USUARIOS"."ACESSO143"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO144: TIBStringField
      FieldName = 'ACESSO144'
      Origin = '"USUARIOS"."ACESSO144"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO145: TIBStringField
      FieldName = 'ACESSO145'
      Origin = '"USUARIOS"."ACESSO145"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO146: TIBStringField
      FieldName = 'ACESSO146'
      Origin = '"USUARIOS"."ACESSO146"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO147: TIBStringField
      FieldName = 'ACESSO147'
      Origin = '"USUARIOS"."ACESSO147"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO148: TIBStringField
      FieldName = 'ACESSO148'
      Origin = '"USUARIOS"."ACESSO148"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO149: TIBStringField
      FieldName = 'ACESSO149'
      Origin = '"USUARIOS"."ACESSO149"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO150: TIBStringField
      FieldName = 'ACESSO150'
      Origin = '"USUARIOS"."ACESSO150"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO151: TIBStringField
      FieldName = 'ACESSO151'
      Origin = '"USUARIOS"."ACESSO151"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO152: TIBStringField
      FieldName = 'ACESSO152'
      Origin = '"USUARIOS"."ACESSO152"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO153: TIBStringField
      FieldName = 'ACESSO153'
      Origin = '"USUARIOS"."ACESSO153"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO154: TIBStringField
      FieldName = 'ACESSO154'
      Origin = '"USUARIOS"."ACESSO154"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO155: TIBStringField
      FieldName = 'ACESSO155'
      Origin = '"USUARIOS"."ACESSO155"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO156: TIBStringField
      FieldName = 'ACESSO156'
      Origin = '"USUARIOS"."ACESSO156"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO157: TIBStringField
      FieldName = 'ACESSO157'
      Origin = '"USUARIOS"."ACESSO157"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO158: TIBStringField
      FieldName = 'ACESSO158'
      Origin = '"USUARIOS"."ACESSO158"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO159: TIBStringField
      FieldName = 'ACESSO159'
      Origin = '"USUARIOS"."ACESSO159"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosACESSO160: TIBStringField
      FieldName = 'ACESSO160'
      Origin = '"USUARIOS"."ACESSO160"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetUsuariosTROCAR_SENHA: TIBStringField
      FieldName = 'TROCAR_SENHA'
      Origin = '"USUARIOS"."TROCAR_SENHA"'
      FixedChar = True
      Size = 1
    end
  end
  object IBDataSetLogin: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (ACESSO1, ACESSO10, ACESSO100, ACESSO101, ACESSO102, ACESSO103' +
        ', ACESSO104, '
      
        '   ACESSO105, ACESSO106, ACESSO107, ACESSO108, ACESSO109, ACESSO' +
        '11, ACESSO110, '
      
        '   ACESSO111, ACESSO112, ACESSO113, ACESSO114, ACESSO115, ACESSO' +
        '116, ACESSO117, '
      
        '   ACESSO118, ACESSO119, ACESSO12, ACESSO120, ACESSO121, ACESSO1' +
        '22, ACESSO123, '
      
        '   ACESSO124, ACESSO125, ACESSO126, ACESSO127, ACESSO128, ACESSO' +
        '129, ACESSO13, '
      
        '   ACESSO130, ACESSO131, ACESSO132, ACESSO133, ACESSO134, ACESSO' +
        '135, ACESSO136, '
      
        '   ACESSO137, ACESSO138, ACESSO139, ACESSO14, ACESSO140, ACESSO1' +
        '41, ACESSO142, '
      
        '   ACESSO143, ACESSO144, ACESSO145, ACESSO146, ACESSO147, ACESSO' +
        '148, ACESSO149, '
      
        '   ACESSO15, ACESSO150, ACESSO151, ACESSO152, ACESSO153, ACESSO1' +
        '54, ACESSO155, '
      
        '   ACESSO156, ACESSO157, ACESSO158, ACESSO159, ACESSO16, ACESSO1' +
        '60, ACESSO17, '
      
        '   ACESSO18, ACESSO19, ACESSO2, ACESSO20, ACESSO21, ACESSO22, AC' +
        'ESSO23, '
      
        '   ACESSO24, ACESSO25, ACESSO26, ACESSO27, ACESSO28, ACESSO29, A' +
        'CESSO3, '
      
        '   ACESSO30, ACESSO31, ACESSO32, ACESSO33, ACESSO34, ACESSO35, A' +
        'CESSO36, '
      
        '   ACESSO37, ACESSO38, ACESSO39, ACESSO4, ACESSO40, ACESSO41, AC' +
        'ESSO42, '
      
        '   ACESSO43, ACESSO44, ACESSO45, ACESSO46, ACESSO47, ACESSO48, A' +
        'CESSO49, '
      
        '   ACESSO5, ACESSO50, ACESSO51, ACESSO52, ACESSO53, ACESSO54, AC' +
        'ESSO55, '
      
        '   ACESSO56, ACESSO57, ACESSO58, ACESSO59, ACESSO6, ACESSO60, AC' +
        'ESSO61, '
      
        '   ACESSO62, ACESSO63, ACESSO64, ACESSO65, ACESSO66, ACESSO67, A' +
        'CESSO68, '
      
        '   ACESSO69, ACESSO7, ACESSO70, ACESSO71, ACESSO72, ACESSO73, AC' +
        'ESSO74, '
      
        '   ACESSO75, ACESSO76, ACESSO77, ACESSO78, ACESSO79, ACESSO8, AC' +
        'ESSO80, '
      
        '   ACESSO81, ACESSO82, ACESSO83, ACESSO84, ACESSO85, ACESSO86, A' +
        'CESSO87, '
      
        '   ACESSO88, ACESSO89, ACESSO9, ACESSO90, ACESSO91, ACESSO92, AC' +
        'ESSO93, '
      
        '   ACESSO94, ACESSO95, ACESSO96, ACESSO97, ACESSO98, ACESSO99, A' +
        'DM, ID_USUARIOS, '
      '   LOGIN, SENHA, TROCAR_SENHA, USUARIO)'
      'values'
      
        '  (:ACESSO1, :ACESSO10, :ACESSO100, :ACESSO101, :ACESSO102, :ACE' +
        'SSO103, '
      
        '   :ACESSO104, :ACESSO105, :ACESSO106, :ACESSO107, :ACESSO108, :' +
        'ACESSO109, '
      
        '   :ACESSO11, :ACESSO110, :ACESSO111, :ACESSO112, :ACESSO113, :A' +
        'CESSO114, '
      
        '   :ACESSO115, :ACESSO116, :ACESSO117, :ACESSO118, :ACESSO119, :' +
        'ACESSO12, '
      
        '   :ACESSO120, :ACESSO121, :ACESSO122, :ACESSO123, :ACESSO124, :' +
        'ACESSO125, '
      
        '   :ACESSO126, :ACESSO127, :ACESSO128, :ACESSO129, :ACESSO13, :A' +
        'CESSO130, '
      
        '   :ACESSO131, :ACESSO132, :ACESSO133, :ACESSO134, :ACESSO135, :' +
        'ACESSO136, '
      
        '   :ACESSO137, :ACESSO138, :ACESSO139, :ACESSO14, :ACESSO140, :A' +
        'CESSO141, '
      
        '   :ACESSO142, :ACESSO143, :ACESSO144, :ACESSO145, :ACESSO146, :' +
        'ACESSO147, '
      
        '   :ACESSO148, :ACESSO149, :ACESSO15, :ACESSO150, :ACESSO151, :A' +
        'CESSO152, '
      
        '   :ACESSO153, :ACESSO154, :ACESSO155, :ACESSO156, :ACESSO157, :' +
        'ACESSO158, '
      
        '   :ACESSO159, :ACESSO16, :ACESSO160, :ACESSO17, :ACESSO18, :ACE' +
        'SSO19, '
      
        '   :ACESSO2, :ACESSO20, :ACESSO21, :ACESSO22, :ACESSO23, :ACESSO' +
        '24, :ACESSO25, '
      
        '   :ACESSO26, :ACESSO27, :ACESSO28, :ACESSO29, :ACESSO3, :ACESSO' +
        '30, :ACESSO31, '
      
        '   :ACESSO32, :ACESSO33, :ACESSO34, :ACESSO35, :ACESSO36, :ACESS' +
        'O37, :ACESSO38, '
      
        '   :ACESSO39, :ACESSO4, :ACESSO40, :ACESSO41, :ACESSO42, :ACESSO' +
        '43, :ACESSO44, '
      
        '   :ACESSO45, :ACESSO46, :ACESSO47, :ACESSO48, :ACESSO49, :ACESS' +
        'O5, :ACESSO50, '
      
        '   :ACESSO51, :ACESSO52, :ACESSO53, :ACESSO54, :ACESSO55, :ACESS' +
        'O56, :ACESSO57, '
      
        '   :ACESSO58, :ACESSO59, :ACESSO6, :ACESSO60, :ACESSO61, :ACESSO' +
        '62, :ACESSO63, '
      
        '   :ACESSO64, :ACESSO65, :ACESSO66, :ACESSO67, :ACESSO68, :ACESS' +
        'O69, :ACESSO7, '
      
        '   :ACESSO70, :ACESSO71, :ACESSO72, :ACESSO73, :ACESSO74, :ACESS' +
        'O75, :ACESSO76, '
      
        '   :ACESSO77, :ACESSO78, :ACESSO79, :ACESSO8, :ACESSO80, :ACESSO' +
        '81, :ACESSO82, '
      
        '   :ACESSO83, :ACESSO84, :ACESSO85, :ACESSO86, :ACESSO87, :ACESS' +
        'O88, :ACESSO89, '
      
        '   :ACESSO9, :ACESSO90, :ACESSO91, :ACESSO92, :ACESSO93, :ACESSO' +
        '94, :ACESSO95, '
      
        '   :ACESSO96, :ACESSO97, :ACESSO98, :ACESSO99, :ADM, :ID_USUARIO' +
        'S, :LOGIN, '
      '   :SENHA, :TROCAR_SENHA, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS,'
      '  USUARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  ADM,'
      '  TROCAR_SENHA,'
      '  ACESSO1,'
      '  ACESSO2,'
      '  ACESSO3,'
      '  ACESSO4,'
      '  ACESSO5,'
      '  ACESSO6,'
      '  ACESSO7,'
      '  ACESSO8,'
      '  ACESSO9,'
      '  ACESSO10,'
      '  ACESSO11,'
      '  ACESSO12,'
      '  ACESSO13,'
      '  ACESSO14,'
      '  ACESSO15,'
      '  ACESSO16,'
      '  ACESSO17,'
      '  ACESSO18,'
      '  ACESSO19,'
      '  ACESSO20,'
      '  ACESSO21,'
      '  ACESSO22,'
      '  ACESSO23,'
      '  ACESSO24,'
      '  ACESSO25,'
      '  ACESSO26,'
      '  ACESSO27,'
      '  ACESSO28,'
      '  ACESSO29,'
      '  ACESSO30,'
      '  ACESSO31,'
      '  ACESSO32,'
      '  ACESSO33,'
      '  ACESSO34,'
      '  ACESSO35,'
      '  ACESSO36,'
      '  ACESSO37,'
      '  ACESSO38,'
      '  ACESSO39,'
      '  ACESSO40,'
      '  ACESSO41,'
      '  ACESSO42,'
      '  ACESSO43,'
      '  ACESSO44,'
      '  ACESSO45,'
      '  ACESSO46,'
      '  ACESSO47,'
      '  ACESSO48,'
      '  ACESSO49,'
      '  ACESSO50,'
      '  ACESSO51,'
      '  ACESSO52,'
      '  ACESSO53,'
      '  ACESSO54,'
      '  ACESSO55,'
      '  ACESSO56,'
      '  ACESSO57,'
      '  ACESSO58,'
      '  ACESSO59,'
      '  ACESSO60,'
      '  ACESSO61,'
      '  ACESSO62,'
      '  ACESSO63,'
      '  ACESSO64,'
      '  ACESSO65,'
      '  ACESSO66,'
      '  ACESSO67,'
      '  ACESSO68,'
      '  ACESSO69,'
      '  ACESSO70,'
      '  ACESSO71,'
      '  ACESSO72,'
      '  ACESSO73,'
      '  ACESSO74,'
      '  ACESSO75,'
      '  ACESSO76,'
      '  ACESSO77,'
      '  ACESSO78,'
      '  ACESSO79,'
      '  ACESSO80,'
      '  ACESSO81,'
      '  ACESSO82,'
      '  ACESSO83,'
      '  ACESSO84,'
      '  ACESSO85,'
      '  ACESSO86,'
      '  ACESSO87,'
      '  ACESSO88,'
      '  ACESSO89,'
      '  ACESSO90,'
      '  ACESSO91,'
      '  ACESSO92,'
      '  ACESSO93,'
      '  ACESSO94,'
      '  ACESSO95,'
      '  ACESSO96,'
      '  ACESSO97,'
      '  ACESSO98,'
      '  ACESSO99,'
      '  ACESSO100,'
      '  ACESSO101,'
      '  ACESSO102,'
      '  ACESSO103,'
      '  ACESSO104,'
      '  ACESSO105,'
      '  ACESSO106,'
      '  ACESSO107,'
      '  ACESSO108,'
      '  ACESSO109,'
      '  ACESSO110,'
      '  ACESSO111,'
      '  ACESSO112,'
      '  ACESSO113,'
      '  ACESSO114,'
      '  ACESSO115,'
      '  ACESSO116,'
      '  ACESSO117,'
      '  ACESSO118,'
      '  ACESSO119,'
      '  ACESSO120,'
      '  ACESSO121,'
      '  ACESSO122,'
      '  ACESSO123,'
      '  ACESSO124,'
      '  ACESSO125,'
      '  ACESSO126,'
      '  ACESSO127,'
      '  ACESSO128,'
      '  ACESSO129,'
      '  ACESSO130,'
      '  ACESSO131,'
      '  ACESSO132,'
      '  ACESSO133,'
      '  ACESSO134,'
      '  ACESSO135,'
      '  ACESSO136,'
      '  ACESSO137,'
      '  ACESSO138,'
      '  ACESSO139,'
      '  ACESSO140,'
      '  ACESSO141,'
      '  ACESSO142,'
      '  ACESSO143,'
      '  ACESSO144,'
      '  ACESSO145,'
      '  ACESSO146,'
      '  ACESSO147,'
      '  ACESSO148,'
      '  ACESSO149,'
      '  ACESSO150,'
      '  ACESSO151,'
      '  ACESSO152,'
      '  ACESSO153,'
      '  ACESSO154,'
      '  ACESSO155,'
      '  ACESSO156,'
      '  ACESSO157,'
      '  ACESSO158,'
      '  ACESSO159,'
      '  ACESSO160'
      'from USUARIOS '
      'where'
      '  ID_USUARIOS = :ID_USUARIOS')
    SelectSQL.Strings = (
      'select *  from USUARIOS'
      'where '
      'LOGIN = :login and SENHA = :senha')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  ACESSO1 = :ACESSO1,'
      '  ACESSO10 = :ACESSO10,'
      '  ACESSO100 = :ACESSO100,'
      '  ACESSO101 = :ACESSO101,'
      '  ACESSO102 = :ACESSO102,'
      '  ACESSO103 = :ACESSO103,'
      '  ACESSO104 = :ACESSO104,'
      '  ACESSO105 = :ACESSO105,'
      '  ACESSO106 = :ACESSO106,'
      '  ACESSO107 = :ACESSO107,'
      '  ACESSO108 = :ACESSO108,'
      '  ACESSO109 = :ACESSO109,'
      '  ACESSO11 = :ACESSO11,'
      '  ACESSO110 = :ACESSO110,'
      '  ACESSO111 = :ACESSO111,'
      '  ACESSO112 = :ACESSO112,'
      '  ACESSO113 = :ACESSO113,'
      '  ACESSO114 = :ACESSO114,'
      '  ACESSO115 = :ACESSO115,'
      '  ACESSO116 = :ACESSO116,'
      '  ACESSO117 = :ACESSO117,'
      '  ACESSO118 = :ACESSO118,'
      '  ACESSO119 = :ACESSO119,'
      '  ACESSO12 = :ACESSO12,'
      '  ACESSO120 = :ACESSO120,'
      '  ACESSO121 = :ACESSO121,'
      '  ACESSO122 = :ACESSO122,'
      '  ACESSO123 = :ACESSO123,'
      '  ACESSO124 = :ACESSO124,'
      '  ACESSO125 = :ACESSO125,'
      '  ACESSO126 = :ACESSO126,'
      '  ACESSO127 = :ACESSO127,'
      '  ACESSO128 = :ACESSO128,'
      '  ACESSO129 = :ACESSO129,'
      '  ACESSO13 = :ACESSO13,'
      '  ACESSO130 = :ACESSO130,'
      '  ACESSO131 = :ACESSO131,'
      '  ACESSO132 = :ACESSO132,'
      '  ACESSO133 = :ACESSO133,'
      '  ACESSO134 = :ACESSO134,'
      '  ACESSO135 = :ACESSO135,'
      '  ACESSO136 = :ACESSO136,'
      '  ACESSO137 = :ACESSO137,'
      '  ACESSO138 = :ACESSO138,'
      '  ACESSO139 = :ACESSO139,'
      '  ACESSO14 = :ACESSO14,'
      '  ACESSO140 = :ACESSO140,'
      '  ACESSO141 = :ACESSO141,'
      '  ACESSO142 = :ACESSO142,'
      '  ACESSO143 = :ACESSO143,'
      '  ACESSO144 = :ACESSO144,'
      '  ACESSO145 = :ACESSO145,'
      '  ACESSO146 = :ACESSO146,'
      '  ACESSO147 = :ACESSO147,'
      '  ACESSO148 = :ACESSO148,'
      '  ACESSO149 = :ACESSO149,'
      '  ACESSO15 = :ACESSO15,'
      '  ACESSO150 = :ACESSO150,'
      '  ACESSO151 = :ACESSO151,'
      '  ACESSO152 = :ACESSO152,'
      '  ACESSO153 = :ACESSO153,'
      '  ACESSO154 = :ACESSO154,'
      '  ACESSO155 = :ACESSO155,'
      '  ACESSO156 = :ACESSO156,'
      '  ACESSO157 = :ACESSO157,'
      '  ACESSO158 = :ACESSO158,'
      '  ACESSO159 = :ACESSO159,'
      '  ACESSO16 = :ACESSO16,'
      '  ACESSO160 = :ACESSO160,'
      '  ACESSO17 = :ACESSO17,'
      '  ACESSO18 = :ACESSO18,'
      '  ACESSO19 = :ACESSO19,'
      '  ACESSO2 = :ACESSO2,'
      '  ACESSO20 = :ACESSO20,'
      '  ACESSO21 = :ACESSO21,'
      '  ACESSO22 = :ACESSO22,'
      '  ACESSO23 = :ACESSO23,'
      '  ACESSO24 = :ACESSO24,'
      '  ACESSO25 = :ACESSO25,'
      '  ACESSO26 = :ACESSO26,'
      '  ACESSO27 = :ACESSO27,'
      '  ACESSO28 = :ACESSO28,'
      '  ACESSO29 = :ACESSO29,'
      '  ACESSO3 = :ACESSO3,'
      '  ACESSO30 = :ACESSO30,'
      '  ACESSO31 = :ACESSO31,'
      '  ACESSO32 = :ACESSO32,'
      '  ACESSO33 = :ACESSO33,'
      '  ACESSO34 = :ACESSO34,'
      '  ACESSO35 = :ACESSO35,'
      '  ACESSO36 = :ACESSO36,'
      '  ACESSO37 = :ACESSO37,'
      '  ACESSO38 = :ACESSO38,'
      '  ACESSO39 = :ACESSO39,'
      '  ACESSO4 = :ACESSO4,'
      '  ACESSO40 = :ACESSO40,'
      '  ACESSO41 = :ACESSO41,'
      '  ACESSO42 = :ACESSO42,'
      '  ACESSO43 = :ACESSO43,'
      '  ACESSO44 = :ACESSO44,'
      '  ACESSO45 = :ACESSO45,'
      '  ACESSO46 = :ACESSO46,'
      '  ACESSO47 = :ACESSO47,'
      '  ACESSO48 = :ACESSO48,'
      '  ACESSO49 = :ACESSO49,'
      '  ACESSO5 = :ACESSO5,'
      '  ACESSO50 = :ACESSO50,'
      '  ACESSO51 = :ACESSO51,'
      '  ACESSO52 = :ACESSO52,'
      '  ACESSO53 = :ACESSO53,'
      '  ACESSO54 = :ACESSO54,'
      '  ACESSO55 = :ACESSO55,'
      '  ACESSO56 = :ACESSO56,'
      '  ACESSO57 = :ACESSO57,'
      '  ACESSO58 = :ACESSO58,'
      '  ACESSO59 = :ACESSO59,'
      '  ACESSO6 = :ACESSO6,'
      '  ACESSO60 = :ACESSO60,'
      '  ACESSO61 = :ACESSO61,'
      '  ACESSO62 = :ACESSO62,'
      '  ACESSO63 = :ACESSO63,'
      '  ACESSO64 = :ACESSO64,'
      '  ACESSO65 = :ACESSO65,'
      '  ACESSO66 = :ACESSO66,'
      '  ACESSO67 = :ACESSO67,'
      '  ACESSO68 = :ACESSO68,'
      '  ACESSO69 = :ACESSO69,'
      '  ACESSO7 = :ACESSO7,'
      '  ACESSO70 = :ACESSO70,'
      '  ACESSO71 = :ACESSO71,'
      '  ACESSO72 = :ACESSO72,'
      '  ACESSO73 = :ACESSO73,'
      '  ACESSO74 = :ACESSO74,'
      '  ACESSO75 = :ACESSO75,'
      '  ACESSO76 = :ACESSO76,'
      '  ACESSO77 = :ACESSO77,'
      '  ACESSO78 = :ACESSO78,'
      '  ACESSO79 = :ACESSO79,'
      '  ACESSO8 = :ACESSO8,'
      '  ACESSO80 = :ACESSO80,'
      '  ACESSO81 = :ACESSO81,'
      '  ACESSO82 = :ACESSO82,'
      '  ACESSO83 = :ACESSO83,'
      '  ACESSO84 = :ACESSO84,'
      '  ACESSO85 = :ACESSO85,'
      '  ACESSO86 = :ACESSO86,'
      '  ACESSO87 = :ACESSO87,'
      '  ACESSO88 = :ACESSO88,'
      '  ACESSO89 = :ACESSO89,'
      '  ACESSO9 = :ACESSO9,'
      '  ACESSO90 = :ACESSO90,'
      '  ACESSO91 = :ACESSO91,'
      '  ACESSO92 = :ACESSO92,'
      '  ACESSO93 = :ACESSO93,'
      '  ACESSO94 = :ACESSO94,'
      '  ACESSO95 = :ACESSO95,'
      '  ACESSO96 = :ACESSO96,'
      '  ACESSO97 = :ACESSO97,'
      '  ACESSO98 = :ACESSO98,'
      '  ACESSO99 = :ACESSO99,'
      '  ADM = :ADM,'
      '  ID_USUARIOS = :ID_USUARIOS,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  TROCAR_SENHA = :TROCAR_SENHA,'
      '  USUARIO = :USUARIO'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 224
    object IBDataSetLoginID_USUARIOS: TIntegerField
      FieldName = 'ID_USUARIOS'
      Origin = '"USUARIOS"."ID_USUARIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetLoginUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIOS"."USUARIO"'
      Required = True
      Size = 50
    end
    object IBDataSetLoginLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object IBDataSetLoginSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Required = True
      Size = 10
    end
    object IBDataSetLoginADM: TIBStringField
      FieldName = 'ADM'
      Origin = '"USUARIOS"."ADM"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO1: TIBStringField
      FieldName = 'ACESSO1'
      Origin = '"USUARIOS"."ACESSO1"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO2: TIBStringField
      FieldName = 'ACESSO2'
      Origin = '"USUARIOS"."ACESSO2"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO3: TIBStringField
      FieldName = 'ACESSO3'
      Origin = '"USUARIOS"."ACESSO3"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO4: TIBStringField
      FieldName = 'ACESSO4'
      Origin = '"USUARIOS"."ACESSO4"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO5: TIBStringField
      FieldName = 'ACESSO5'
      Origin = '"USUARIOS"."ACESSO5"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO6: TIBStringField
      FieldName = 'ACESSO6'
      Origin = '"USUARIOS"."ACESSO6"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO7: TIBStringField
      FieldName = 'ACESSO7'
      Origin = '"USUARIOS"."ACESSO7"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO8: TIBStringField
      FieldName = 'ACESSO8'
      Origin = '"USUARIOS"."ACESSO8"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO9: TIBStringField
      FieldName = 'ACESSO9'
      Origin = '"USUARIOS"."ACESSO9"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO11: TIBStringField
      FieldName = 'ACESSO11'
      Origin = '"USUARIOS"."ACESSO11"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO12: TIBStringField
      FieldName = 'ACESSO12'
      Origin = '"USUARIOS"."ACESSO12"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO10: TIBStringField
      FieldName = 'ACESSO10'
      Origin = '"USUARIOS"."ACESSO10"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO13: TIBStringField
      FieldName = 'ACESSO13'
      Origin = '"USUARIOS"."ACESSO13"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO14: TIBStringField
      FieldName = 'ACESSO14'
      Origin = '"USUARIOS"."ACESSO14"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO15: TIBStringField
      FieldName = 'ACESSO15'
      Origin = '"USUARIOS"."ACESSO15"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO16: TIBStringField
      FieldName = 'ACESSO16'
      Origin = '"USUARIOS"."ACESSO16"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO17: TIBStringField
      FieldName = 'ACESSO17'
      Origin = '"USUARIOS"."ACESSO17"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO18: TIBStringField
      FieldName = 'ACESSO18'
      Origin = '"USUARIOS"."ACESSO18"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO19: TIBStringField
      FieldName = 'ACESSO19'
      Origin = '"USUARIOS"."ACESSO19"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO20: TIBStringField
      FieldName = 'ACESSO20'
      Origin = '"USUARIOS"."ACESSO20"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO21: TIBStringField
      FieldName = 'ACESSO21'
      Origin = '"USUARIOS"."ACESSO21"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO22: TIBStringField
      FieldName = 'ACESSO22'
      Origin = '"USUARIOS"."ACESSO22"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO23: TIBStringField
      FieldName = 'ACESSO23'
      Origin = '"USUARIOS"."ACESSO23"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO24: TIBStringField
      FieldName = 'ACESSO24'
      Origin = '"USUARIOS"."ACESSO24"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO25: TIBStringField
      FieldName = 'ACESSO25'
      Origin = '"USUARIOS"."ACESSO25"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO26: TIBStringField
      FieldName = 'ACESSO26'
      Origin = '"USUARIOS"."ACESSO26"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO27: TIBStringField
      FieldName = 'ACESSO27'
      Origin = '"USUARIOS"."ACESSO27"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO28: TIBStringField
      FieldName = 'ACESSO28'
      Origin = '"USUARIOS"."ACESSO28"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO29: TIBStringField
      FieldName = 'ACESSO29'
      Origin = '"USUARIOS"."ACESSO29"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO30: TIBStringField
      FieldName = 'ACESSO30'
      Origin = '"USUARIOS"."ACESSO30"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO31: TIBStringField
      FieldName = 'ACESSO31'
      Origin = '"USUARIOS"."ACESSO31"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO32: TIBStringField
      FieldName = 'ACESSO32'
      Origin = '"USUARIOS"."ACESSO32"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO33: TIBStringField
      FieldName = 'ACESSO33'
      Origin = '"USUARIOS"."ACESSO33"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO34: TIBStringField
      FieldName = 'ACESSO34'
      Origin = '"USUARIOS"."ACESSO34"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO35: TIBStringField
      FieldName = 'ACESSO35'
      Origin = '"USUARIOS"."ACESSO35"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO36: TIBStringField
      FieldName = 'ACESSO36'
      Origin = '"USUARIOS"."ACESSO36"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO37: TIBStringField
      FieldName = 'ACESSO37'
      Origin = '"USUARIOS"."ACESSO37"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO38: TIBStringField
      FieldName = 'ACESSO38'
      Origin = '"USUARIOS"."ACESSO38"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO39: TIBStringField
      FieldName = 'ACESSO39'
      Origin = '"USUARIOS"."ACESSO39"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO40: TIBStringField
      FieldName = 'ACESSO40'
      Origin = '"USUARIOS"."ACESSO40"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO41: TIBStringField
      FieldName = 'ACESSO41'
      Origin = '"USUARIOS"."ACESSO41"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO42: TIBStringField
      FieldName = 'ACESSO42'
      Origin = '"USUARIOS"."ACESSO42"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO43: TIBStringField
      FieldName = 'ACESSO43'
      Origin = '"USUARIOS"."ACESSO43"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO44: TIBStringField
      FieldName = 'ACESSO44'
      Origin = '"USUARIOS"."ACESSO44"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO45: TIBStringField
      FieldName = 'ACESSO45'
      Origin = '"USUARIOS"."ACESSO45"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO46: TIBStringField
      FieldName = 'ACESSO46'
      Origin = '"USUARIOS"."ACESSO46"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO47: TIBStringField
      FieldName = 'ACESSO47'
      Origin = '"USUARIOS"."ACESSO47"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO48: TIBStringField
      FieldName = 'ACESSO48'
      Origin = '"USUARIOS"."ACESSO48"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO49: TIBStringField
      FieldName = 'ACESSO49'
      Origin = '"USUARIOS"."ACESSO49"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO50: TIBStringField
      FieldName = 'ACESSO50'
      Origin = '"USUARIOS"."ACESSO50"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO51: TIBStringField
      FieldName = 'ACESSO51'
      Origin = '"USUARIOS"."ACESSO51"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO52: TIBStringField
      FieldName = 'ACESSO52'
      Origin = '"USUARIOS"."ACESSO52"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO53: TIBStringField
      FieldName = 'ACESSO53'
      Origin = '"USUARIOS"."ACESSO53"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO54: TIBStringField
      FieldName = 'ACESSO54'
      Origin = '"USUARIOS"."ACESSO54"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO55: TIBStringField
      FieldName = 'ACESSO55'
      Origin = '"USUARIOS"."ACESSO55"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO56: TIBStringField
      FieldName = 'ACESSO56'
      Origin = '"USUARIOS"."ACESSO56"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO57: TIBStringField
      FieldName = 'ACESSO57'
      Origin = '"USUARIOS"."ACESSO57"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO58: TIBStringField
      FieldName = 'ACESSO58'
      Origin = '"USUARIOS"."ACESSO58"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO59: TIBStringField
      FieldName = 'ACESSO59'
      Origin = '"USUARIOS"."ACESSO59"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO60: TIBStringField
      FieldName = 'ACESSO60'
      Origin = '"USUARIOS"."ACESSO60"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO61: TIBStringField
      FieldName = 'ACESSO61'
      Origin = '"USUARIOS"."ACESSO61"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO62: TIBStringField
      FieldName = 'ACESSO62'
      Origin = '"USUARIOS"."ACESSO62"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO63: TIBStringField
      FieldName = 'ACESSO63'
      Origin = '"USUARIOS"."ACESSO63"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO64: TIBStringField
      FieldName = 'ACESSO64'
      Origin = '"USUARIOS"."ACESSO64"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO65: TIBStringField
      FieldName = 'ACESSO65'
      Origin = '"USUARIOS"."ACESSO65"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO66: TIBStringField
      FieldName = 'ACESSO66'
      Origin = '"USUARIOS"."ACESSO66"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO67: TIBStringField
      FieldName = 'ACESSO67'
      Origin = '"USUARIOS"."ACESSO67"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO68: TIBStringField
      FieldName = 'ACESSO68'
      Origin = '"USUARIOS"."ACESSO68"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO69: TIBStringField
      FieldName = 'ACESSO69'
      Origin = '"USUARIOS"."ACESSO69"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO70: TIBStringField
      FieldName = 'ACESSO70'
      Origin = '"USUARIOS"."ACESSO70"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO71: TIBStringField
      FieldName = 'ACESSO71'
      Origin = '"USUARIOS"."ACESSO71"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO72: TIBStringField
      FieldName = 'ACESSO72'
      Origin = '"USUARIOS"."ACESSO72"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO73: TIBStringField
      FieldName = 'ACESSO73'
      Origin = '"USUARIOS"."ACESSO73"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO74: TIBStringField
      FieldName = 'ACESSO74'
      Origin = '"USUARIOS"."ACESSO74"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO75: TIBStringField
      FieldName = 'ACESSO75'
      Origin = '"USUARIOS"."ACESSO75"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO76: TIBStringField
      FieldName = 'ACESSO76'
      Origin = '"USUARIOS"."ACESSO76"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO77: TIBStringField
      FieldName = 'ACESSO77'
      Origin = '"USUARIOS"."ACESSO77"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO78: TIBStringField
      FieldName = 'ACESSO78'
      Origin = '"USUARIOS"."ACESSO78"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO79: TIBStringField
      FieldName = 'ACESSO79'
      Origin = '"USUARIOS"."ACESSO79"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO80: TIBStringField
      FieldName = 'ACESSO80'
      Origin = '"USUARIOS"."ACESSO80"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO81: TIBStringField
      FieldName = 'ACESSO81'
      Origin = '"USUARIOS"."ACESSO81"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO82: TIBStringField
      FieldName = 'ACESSO82'
      Origin = '"USUARIOS"."ACESSO82"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO83: TIBStringField
      FieldName = 'ACESSO83'
      Origin = '"USUARIOS"."ACESSO83"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO84: TIBStringField
      FieldName = 'ACESSO84'
      Origin = '"USUARIOS"."ACESSO84"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO85: TIBStringField
      FieldName = 'ACESSO85'
      Origin = '"USUARIOS"."ACESSO85"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO86: TIBStringField
      FieldName = 'ACESSO86'
      Origin = '"USUARIOS"."ACESSO86"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO87: TIBStringField
      FieldName = 'ACESSO87'
      Origin = '"USUARIOS"."ACESSO87"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO88: TIBStringField
      FieldName = 'ACESSO88'
      Origin = '"USUARIOS"."ACESSO88"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO89: TIBStringField
      FieldName = 'ACESSO89'
      Origin = '"USUARIOS"."ACESSO89"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO90: TIBStringField
      FieldName = 'ACESSO90'
      Origin = '"USUARIOS"."ACESSO90"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO91: TIBStringField
      FieldName = 'ACESSO91'
      Origin = '"USUARIOS"."ACESSO91"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO92: TIBStringField
      FieldName = 'ACESSO92'
      Origin = '"USUARIOS"."ACESSO92"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO93: TIBStringField
      FieldName = 'ACESSO93'
      Origin = '"USUARIOS"."ACESSO93"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO94: TIBStringField
      FieldName = 'ACESSO94'
      Origin = '"USUARIOS"."ACESSO94"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO95: TIBStringField
      FieldName = 'ACESSO95'
      Origin = '"USUARIOS"."ACESSO95"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO96: TIBStringField
      FieldName = 'ACESSO96'
      Origin = '"USUARIOS"."ACESSO96"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO97: TIBStringField
      FieldName = 'ACESSO97'
      Origin = '"USUARIOS"."ACESSO97"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO98: TIBStringField
      FieldName = 'ACESSO98'
      Origin = '"USUARIOS"."ACESSO98"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO99: TIBStringField
      FieldName = 'ACESSO99'
      Origin = '"USUARIOS"."ACESSO99"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO100: TIBStringField
      FieldName = 'ACESSO100'
      Origin = '"USUARIOS"."ACESSO100"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO101: TIBStringField
      FieldName = 'ACESSO101'
      Origin = '"USUARIOS"."ACESSO101"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO102: TIBStringField
      FieldName = 'ACESSO102'
      Origin = '"USUARIOS"."ACESSO102"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO103: TIBStringField
      FieldName = 'ACESSO103'
      Origin = '"USUARIOS"."ACESSO103"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO104: TIBStringField
      FieldName = 'ACESSO104'
      Origin = '"USUARIOS"."ACESSO104"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO105: TIBStringField
      FieldName = 'ACESSO105'
      Origin = '"USUARIOS"."ACESSO105"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO106: TIBStringField
      FieldName = 'ACESSO106'
      Origin = '"USUARIOS"."ACESSO106"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO107: TIBStringField
      FieldName = 'ACESSO107'
      Origin = '"USUARIOS"."ACESSO107"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO108: TIBStringField
      FieldName = 'ACESSO108'
      Origin = '"USUARIOS"."ACESSO108"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO109: TIBStringField
      FieldName = 'ACESSO109'
      Origin = '"USUARIOS"."ACESSO109"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO110: TIBStringField
      FieldName = 'ACESSO110'
      Origin = '"USUARIOS"."ACESSO110"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO111: TIBStringField
      FieldName = 'ACESSO111'
      Origin = '"USUARIOS"."ACESSO111"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO112: TIBStringField
      FieldName = 'ACESSO112'
      Origin = '"USUARIOS"."ACESSO112"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO113: TIBStringField
      FieldName = 'ACESSO113'
      Origin = '"USUARIOS"."ACESSO113"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO114: TIBStringField
      FieldName = 'ACESSO114'
      Origin = '"USUARIOS"."ACESSO114"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO115: TIBStringField
      FieldName = 'ACESSO115'
      Origin = '"USUARIOS"."ACESSO115"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO116: TIBStringField
      FieldName = 'ACESSO116'
      Origin = '"USUARIOS"."ACESSO116"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO117: TIBStringField
      FieldName = 'ACESSO117'
      Origin = '"USUARIOS"."ACESSO117"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO118: TIBStringField
      FieldName = 'ACESSO118'
      Origin = '"USUARIOS"."ACESSO118"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO119: TIBStringField
      FieldName = 'ACESSO119'
      Origin = '"USUARIOS"."ACESSO119"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO120: TIBStringField
      FieldName = 'ACESSO120'
      Origin = '"USUARIOS"."ACESSO120"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO121: TIBStringField
      FieldName = 'ACESSO121'
      Origin = '"USUARIOS"."ACESSO121"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO122: TIBStringField
      FieldName = 'ACESSO122'
      Origin = '"USUARIOS"."ACESSO122"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO123: TIBStringField
      FieldName = 'ACESSO123'
      Origin = '"USUARIOS"."ACESSO123"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO124: TIBStringField
      FieldName = 'ACESSO124'
      Origin = '"USUARIOS"."ACESSO124"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO125: TIBStringField
      FieldName = 'ACESSO125'
      Origin = '"USUARIOS"."ACESSO125"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO126: TIBStringField
      FieldName = 'ACESSO126'
      Origin = '"USUARIOS"."ACESSO126"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO127: TIBStringField
      FieldName = 'ACESSO127'
      Origin = '"USUARIOS"."ACESSO127"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO128: TIBStringField
      FieldName = 'ACESSO128'
      Origin = '"USUARIOS"."ACESSO128"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO129: TIBStringField
      FieldName = 'ACESSO129'
      Origin = '"USUARIOS"."ACESSO129"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO130: TIBStringField
      FieldName = 'ACESSO130'
      Origin = '"USUARIOS"."ACESSO130"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO131: TIBStringField
      FieldName = 'ACESSO131'
      Origin = '"USUARIOS"."ACESSO131"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO132: TIBStringField
      FieldName = 'ACESSO132'
      Origin = '"USUARIOS"."ACESSO132"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO133: TIBStringField
      FieldName = 'ACESSO133'
      Origin = '"USUARIOS"."ACESSO133"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO134: TIBStringField
      FieldName = 'ACESSO134'
      Origin = '"USUARIOS"."ACESSO134"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO135: TIBStringField
      FieldName = 'ACESSO135'
      Origin = '"USUARIOS"."ACESSO135"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO136: TIBStringField
      FieldName = 'ACESSO136'
      Origin = '"USUARIOS"."ACESSO136"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO137: TIBStringField
      FieldName = 'ACESSO137'
      Origin = '"USUARIOS"."ACESSO137"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO138: TIBStringField
      FieldName = 'ACESSO138'
      Origin = '"USUARIOS"."ACESSO138"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO139: TIBStringField
      FieldName = 'ACESSO139'
      Origin = '"USUARIOS"."ACESSO139"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO140: TIBStringField
      FieldName = 'ACESSO140'
      Origin = '"USUARIOS"."ACESSO140"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO141: TIBStringField
      FieldName = 'ACESSO141'
      Origin = '"USUARIOS"."ACESSO141"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO142: TIBStringField
      FieldName = 'ACESSO142'
      Origin = '"USUARIOS"."ACESSO142"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO143: TIBStringField
      FieldName = 'ACESSO143'
      Origin = '"USUARIOS"."ACESSO143"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO144: TIBStringField
      FieldName = 'ACESSO144'
      Origin = '"USUARIOS"."ACESSO144"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO145: TIBStringField
      FieldName = 'ACESSO145'
      Origin = '"USUARIOS"."ACESSO145"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO146: TIBStringField
      FieldName = 'ACESSO146'
      Origin = '"USUARIOS"."ACESSO146"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO147: TIBStringField
      FieldName = 'ACESSO147'
      Origin = '"USUARIOS"."ACESSO147"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO148: TIBStringField
      FieldName = 'ACESSO148'
      Origin = '"USUARIOS"."ACESSO148"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO149: TIBStringField
      FieldName = 'ACESSO149'
      Origin = '"USUARIOS"."ACESSO149"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO150: TIBStringField
      FieldName = 'ACESSO150'
      Origin = '"USUARIOS"."ACESSO150"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO151: TIBStringField
      FieldName = 'ACESSO151'
      Origin = '"USUARIOS"."ACESSO151"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO152: TIBStringField
      FieldName = 'ACESSO152'
      Origin = '"USUARIOS"."ACESSO152"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO153: TIBStringField
      FieldName = 'ACESSO153'
      Origin = '"USUARIOS"."ACESSO153"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO154: TIBStringField
      FieldName = 'ACESSO154'
      Origin = '"USUARIOS"."ACESSO154"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO155: TIBStringField
      FieldName = 'ACESSO155'
      Origin = '"USUARIOS"."ACESSO155"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO156: TIBStringField
      FieldName = 'ACESSO156'
      Origin = '"USUARIOS"."ACESSO156"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO157: TIBStringField
      FieldName = 'ACESSO157'
      Origin = '"USUARIOS"."ACESSO157"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO158: TIBStringField
      FieldName = 'ACESSO158'
      Origin = '"USUARIOS"."ACESSO158"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO159: TIBStringField
      FieldName = 'ACESSO159'
      Origin = '"USUARIOS"."ACESSO159"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginACESSO160: TIBStringField
      FieldName = 'ACESSO160'
      Origin = '"USUARIOS"."ACESSO160"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetLoginTROCAR_SENHA: TIBStringField
      FieldName = 'TROCAR_SENHA'
      Origin = '"USUARIOS"."TROCAR_SENHA"'
      FixedChar = True
      Size = 1
    end
  end
  object IBDataSetConcessionariaLogada: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS_CONCESSIONARIA'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into USUARIOS_CONCESSIONARIA'
      
        '  (ALIQUOTA_ICMS1, ALIQUOTA_ICMS2, ALIQUOTA_ISS, BAIRRO, CEP, CI' +
        'DADE, CNAE, '
      
        '   CNPJ, COD_CONCES, CODIGO_EMPRESA_JB, CODIGO_MUNICIPIO, COMPLE' +
        'MENTO, '
      
        '   CONCESSION, EMPRESA, ENDERECO, ESTADO, FANTASIA, HOST, ID_CON' +
        'CESSIONARIA, '
      '   IE, IM, NUMERO, PASS, PORT, TELEFONE, USER)'
      'values'
      
        '  (:ALIQUOTA_ICMS1, :ALIQUOTA_ICMS2, :ALIQUOTA_ISS, :BAIRRO, :CE' +
        'P, :CIDADE, '
      
        '   :CNAE, :CNPJ, :COD_CONCES, :CODIGO_EMPRESA_JB, :CODIGO_MUNICI' +
        'PIO, :COMPLEMENTO, '
      
        '   :CONCESSION, :EMPRESA, :ENDERECO, :ESTADO, :FANTASIA, :HOST, ' +
        ':ID_CONCESSIONARIA, '
      '   :IE, :IM, :NUMERO, :PASS, :PORT, :TELEFONE, :USER)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CONCESSIONARIA,'
      '  EMPRESA,'
      '  ENDERECO,'
      '  CIDADE,'
      '  ESTADO,'
      '  CNPJ,'
      '  IE,'
      '  CONCESSION,'
      '  TELEFONE,'
      '  COD_CONCES,'
      '  ALIQUOTA_ISS,'
      '  ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2,'
      '  CODIGO_EMPRESA_JB,'
      '  IM,'
      '  CNAE,'
      '  FANTASIA,'
      '  CEP,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  CODIGO_MUNICIPIO,'
      '  BAIRRO,'
      '  HOST,'
      '  PORT,'
      '  USER,'
      '  PASS'
      'from USUARIOS_CONCESSIONARIA '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select concessionaria.* from USUARIOS_CONCESSIONARIA'
      
        'inner join concessionaria on (concessionaria.id_concessionaria=u' +
        'suarios_concessionaria.id_concessionaria)'
      ''
      '')
    ModifySQL.Strings = (
      'update USUARIOS_CONCESSIONARIA'
      'set'
      '  ALIQUOTA_ICMS1 = :ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2 = :ALIQUOTA_ICMS2,'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNAE = :CNAE,'
      '  CNPJ = :CNPJ,'
      '  COD_CONCES = :COD_CONCES,'
      '  CODIGO_EMPRESA_JB = :CODIGO_EMPRESA_JB,'
      '  CODIGO_MUNICIPIO = :CODIGO_MUNICIPIO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONCESSION = :CONCESSION,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  ESTADO = :ESTADO,'
      '  FANTASIA = :FANTASIA,'
      '  HOST = :HOST,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  IE = :IE,'
      '  IM = :IM,'
      '  NUMERO = :NUMERO,'
      '  PASS = :PASS,'
      '  PORT = :PORT,'
      '  TELEFONE = :TELEFONE,'
      '  USER = :USER'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 300
  end
  object IBDataSetVeiculos: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VEICULOS'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    InsertSQL.Strings = (
      'insert into VEICULOS'
      
        '  (ANO_FABRIC, ANO_MODELO, CHASSI, CLASSIF_FISCAL, CNY, CODCLI, ' +
        'CODFOR, '
      
        '   COMBUSTIVE, CONSIG, COR, CUSTO, CUSTO_ICMS, DATA_ENT, DATA_SA' +
        'I, FINANC_PRO, '
      
        '   FONE, GRUPO, HP, ID_CONCESSIONARIA, ID_VEICULOS, KM, MARCA, M' +
        'ODELO, '
      
        '   MOTOR, NF_SAIDA, NOTA_ENT, PLACA, PRECO, RENAVAM, STATUS, VEN' +
        'DA)'
      'values'
      
        '  (:ANO_FABRIC, :ANO_MODELO, :CHASSI, :CLASSIF_FISCAL, :CNY, :CO' +
        'DCLI, :CODFOR, '
      
        '   :COMBUSTIVE, :CONSIG, :COR, :CUSTO, :CUSTO_ICMS, :DATA_ENT, :' +
        'DATA_SAI, '
      
        '   :FINANC_PRO, :FONE, :GRUPO, :HP, :ID_CONCESSIONARIA, :ID_VEIC' +
        'ULOS, :KM, '
      
        '   :MARCA, :MODELO, :MOTOR, :NF_SAIDA, :NOTA_ENT, :PLACA, :PRECO' +
        ', :RENAVAM, '
      '   :STATUS, :VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_VEICULOS,'
      '  ID_CONCESSIONARIA,'
      '  CHASSI,'
      '  MARCA,'
      '  MODELO,'
      '  COR,'
      '  COMBUSTIVE,'
      '  ANO_FABRIC,'
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
      '  CODCLI,'
      '  FONE,'
      '  CODFOR,'
      '  CONSIG,'
      '  CUSTO,'
      '  CUSTO_ICMS,'
      '  PRECO,'
      '  DATA_SAI,'
      '  NF_SAIDA,'
      '  VENDA,'
      '  MOTOR,'
      '  FINANC_PRO,'
      '  STATUS'
      'from VEICULOS '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'select * from VEICULOS')
    ModifySQL.Strings = (
      'update VEICULOS'
      'set'
      '  ANO_FABRIC = :ANO_FABRIC,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  CLASSIF_FISCAL = :CLASSIF_FISCAL,'
      '  CNY = :CNY,'
      '  CODCLI = :CODCLI,'
      '  CODFOR = :CODFOR,'
      '  COMBUSTIVE = :COMBUSTIVE,'
      '  CONSIG = :CONSIG,'
      '  COR = :COR,'
      '  CUSTO = :CUSTO,'
      '  CUSTO_ICMS = :CUSTO_ICMS,'
      '  DATA_ENT = :DATA_ENT,'
      '  DATA_SAI = :DATA_SAI,'
      '  FINANC_PRO = :FINANC_PRO,'
      '  FONE = :FONE,'
      '  GRUPO = :GRUPO,'
      '  HP = :HP,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF_SAIDA = :NF_SAIDA,'
      '  NOTA_ENT = :NOTA_ENT,'
      '  PLACA = :PLACA,'
      '  PRECO = :PRECO,'
      '  RENAVAM = :RENAVAM,'
      '  STATUS = :STATUS,'
      '  VENDA = :VENDA'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 24
    object IBDataSetVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBDataSetVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
      FixedChar = True
      Size = 17
    end
    object IBDataSetVeiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
      FixedChar = True
      Size = 15
    end
    object IBDataSetVeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosCOMBUSTIVE: TIBStringField
      FieldName = 'COMBUSTIVE'
      Origin = '"VEICULOS"."COMBUSTIVE"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetVeiculosANO_FABRIC: TIBStringField
      FieldName = 'ANO_FABRIC'
      Origin = '"VEICULOS"."ANO_FABRIC"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetVeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetVeiculosGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetVeiculosHP: TIBStringField
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object IBDataSetVeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object IBDataSetVeiculosCNY: TIBStringField
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosKM: TIntegerField
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object IBDataSetVeiculosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosNOTA_ENT: TIBStringField
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object IBDataSetVeiculosCODCLI: TIBStringField
      FieldName = 'CODCLI'
      Origin = '"VEICULOS"."CODCLI"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetVeiculosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosCODFOR: TIBStringField
      FieldName = 'CODFOR'
      Origin = '"VEICULOS"."CODFOR"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetVeiculosCONSIG: TIBStringField
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetVeiculosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetVeiculosCUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetVeiculosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetVeiculosDATA_SAI: TDateField
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object IBDataSetVeiculosNF_SAIDA: TIBStringField
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object IBDataSetVeiculosVENDA: TIBStringField
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetVeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosFINANC_PRO: TIBStringField
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetVeiculosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetVeiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
      Required = True
    end
  end
  object IBDataSetNofi: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOFI'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    InsertSQL.Strings = (
      'insert into NOFI'
      
        '  (BASE_ICM_S, BASE_ICMS, CFOP, COD_TRANS, CODIGO, COMISSAO, DAD' +
        'OS_AD01, '
      
        '   DADOS_AD02, DADOS_AD03, DADOS_AD04, DAT1, DAT2, DAT3, DAT4, D' +
        'AT5, DAT6, '
      
        '   DAT7, DAT8, DAT9, DESC_OFI, DESC_PEC, EMISSAO, ENT_SAI, FAT1,' +
        ' FAT2, '
      
        '   FAT3, FAT4, FAT5, FAT6, FAT7, FAT8, FAT9, FRETE_TIPO, HORA, I' +
        'CMS, ID_CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_NOFI, IE_SUBS, ISSQN, NAT_OP, NUMERO, O' +
        'BS, ORIGEM, '
      
        '   PLACA, SAIDA, SERIE, TOT_NOTA, TOT_PROD, VAL_FRETE, VAL_ICMS,' +
        ' VAL_ICMS_S, '
      
        '   VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_SEGURO, VAL_SERV, VAL1, VAL' +
        '2, VAL3, '
      '   VAL4, VAL5, VAL6, VAL7, VAL8, VAL9, VENDEDOR)'
      'values'
      
        '  (:BASE_ICM_S, :BASE_ICMS, :CFOP, :COD_TRANS, :CODIGO, :COMISSA' +
        'O, :DADOS_AD01, '
      
        '   :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, :DAT1, :DAT2, :DAT3, :' +
        'DAT4, :DAT5, '
      
        '   :DAT6, :DAT7, :DAT8, :DAT9, :DESC_OFI, :DESC_PEC, :EMISSAO, :' +
        'ENT_SAI, '
      
        '   :FAT1, :FAT2, :FAT3, :FAT4, :FAT5, :FAT6, :FAT7, :FAT8, :FAT9' +
        ', :FRETE_TIPO, '
      
        '   :HORA, :ICMS, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_NOFI, :IE' +
        '_SUBS, '
      
        '   :ISSQN, :NAT_OP, :NUMERO, :OBS, :ORIGEM, :PLACA, :SAIDA, :SER' +
        'IE, :TOT_NOTA, '
      
        '   :TOT_PROD, :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :VAL_IPI, :VAL' +
        '_ISS, :VAL_OUTROS, '
      
        '   :VAL_SEGURO, :VAL_SERV, :VAL1, :VAL2, :VAL3, :VAL4, :VAL5, :V' +
        'AL6, :VAL7, '
      '   :VAL8, :VAL9, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NOFI,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  NUMERO,'
      '  SERIE,'
      '  CODIGO,'
      '  ORIGEM,'
      '  ENT_SAI,'
      '  VENDEDOR,'
      '  COMISSAO,'
      '  EMISSAO,'
      '  SAIDA,'
      '  HORA,'
      '  CFOP,'
      '  NAT_OP,'
      '  IE_SUBS,'
      '  FAT1,'
      '  VAL1,'
      '  DAT1,'
      '  FAT2,'
      '  VAL2,'
      '  DAT2,'
      '  FAT3,'
      '  VAL3,'
      '  DAT3,'
      '  FAT4,'
      '  VAL4,'
      '  DAT4,'
      '  FAT5,'
      '  VAL5,'
      '  DAT5,'
      '  FAT6,'
      '  VAL6,'
      '  DAT6,'
      '  FAT7,'
      '  VAL7,'
      '  DAT7,'
      '  FAT8,'
      '  VAL8,'
      '  DAT8,'
      '  FAT9,'
      '  VAL9,'
      '  DAT9,'
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
      '  COD_TRANS,'
      '  FRETE_TIPO,'
      '  PLACA,'
      '  DADOS_AD01,'
      '  DADOS_AD02,'
      '  DADOS_AD03,'
      '  DADOS_AD04,'
      '  OBS'
      'from NOFI '
      'where'
      '  ID_NOFI = :ID_NOFI')
    SelectSQL.Strings = (
      'select *  from NOFI'
      '')
    ModifySQL.Strings = (
      'update NOFI'
      'set'
      '  BASE_ICM_S = :BASE_ICM_S,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  COD_TRANS = :COD_TRANS,'
      '  CODIGO = :CODIGO,'
      '  COMISSAO = :COMISSAO,'
      '  DADOS_AD01 = :DADOS_AD01,'
      '  DADOS_AD02 = :DADOS_AD02,'
      '  DADOS_AD03 = :DADOS_AD03,'
      '  DADOS_AD04 = :DADOS_AD04,'
      '  DAT1 = :DAT1,'
      '  DAT2 = :DAT2,'
      '  DAT3 = :DAT3,'
      '  DAT4 = :DAT4,'
      '  DAT5 = :DAT5,'
      '  DAT6 = :DAT6,'
      '  DAT7 = :DAT7,'
      '  DAT8 = :DAT8,'
      '  DAT9 = :DAT9,'
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FAT1 = :FAT1,'
      '  FAT2 = :FAT2,'
      '  FAT3 = :FAT3,'
      '  FAT4 = :FAT4,'
      '  FAT5 = :FAT5,'
      '  FAT6 = :FAT6,'
      '  FAT7 = :FAT7,'
      '  FAT8 = :FAT8,'
      '  FAT9 = :FAT9,'
      '  FRETE_TIPO = :FRETE_TIPO,'
      '  HORA = :HORA,'
      '  ICMS = :ICMS,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_NOFI = :ID_NOFI,'
      '  IE_SUBS = :IE_SUBS,'
      '  ISSQN = :ISSQN,'
      '  NAT_OP = :NAT_OP,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORIGEM = :ORIGEM,'
      '  PLACA = :PLACA,'
      '  SAIDA = :SAIDA,'
      '  SERIE = :SERIE,'
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
      '  VAL1 = :VAL1,'
      '  VAL2 = :VAL2,'
      '  VAL3 = :VAL3,'
      '  VAL4 = :VAL4,'
      '  VAL5 = :VAL5,'
      '  VAL6 = :VAL6,'
      '  VAL7 = :VAL7,'
      '  VAL8 = :VAL8,'
      '  VAL9 = :VAL9,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 144
    object IBDataSetNofiID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"NOFI"."ID_NOFI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetNofiID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFI"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBDataSetNofiID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFI"."ID_CLIENTES"'
      Required = True
    end
    object IBDataSetNofiNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"NOFI"."NUMERO"'
      FixedChar = True
      Size = 8
    end
    object IBDataSetNofiSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOFI"."SERIE"'
      FixedChar = True
      Size = 2
    end
    object IBDataSetNofiCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"NOFI"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetNofiORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFI"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetNofiENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFI"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetNofiVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"NOFI"."VENDEDOR"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetNofiCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"NOFI"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFI"."EMISSAO"'
    end
    object IBDataSetNofiSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFI"."SAIDA"'
    end
    object IBDataSetNofiHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFI"."HORA"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetNofiCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"NOFI"."CFOP"'
      FixedChar = True
      Size = 14
    end
    object IBDataSetNofiNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"NOFI"."NAT_OP"'
      FixedChar = True
      Size = 40
    end
    object IBDataSetNofiIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFI"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object IBDataSetNofiFAT1: TIBStringField
      FieldName = 'FAT1'
      Origin = '"NOFI"."FAT1"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL1: TIBBCDField
      FieldName = 'VAL1'
      Origin = '"NOFI"."VAL1"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT1: TDateField
      FieldName = 'DAT1'
      Origin = '"NOFI"."DAT1"'
    end
    object IBDataSetNofiFAT2: TIBStringField
      FieldName = 'FAT2'
      Origin = '"NOFI"."FAT2"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL2: TIBBCDField
      FieldName = 'VAL2'
      Origin = '"NOFI"."VAL2"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT2: TDateField
      FieldName = 'DAT2'
      Origin = '"NOFI"."DAT2"'
    end
    object IBDataSetNofiFAT3: TIBStringField
      FieldName = 'FAT3'
      Origin = '"NOFI"."FAT3"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL3: TIBBCDField
      FieldName = 'VAL3'
      Origin = '"NOFI"."VAL3"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT3: TDateField
      FieldName = 'DAT3'
      Origin = '"NOFI"."DAT3"'
    end
    object IBDataSetNofiFAT4: TIBStringField
      FieldName = 'FAT4'
      Origin = '"NOFI"."FAT4"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL4: TIBBCDField
      FieldName = 'VAL4'
      Origin = '"NOFI"."VAL4"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT4: TDateField
      FieldName = 'DAT4'
      Origin = '"NOFI"."DAT4"'
    end
    object IBDataSetNofiFAT5: TIBStringField
      FieldName = 'FAT5'
      Origin = '"NOFI"."FAT5"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL5: TIBBCDField
      FieldName = 'VAL5'
      Origin = '"NOFI"."VAL5"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT5: TDateField
      FieldName = 'DAT5'
      Origin = '"NOFI"."DAT5"'
    end
    object IBDataSetNofiFAT6: TIBStringField
      FieldName = 'FAT6'
      Origin = '"NOFI"."FAT6"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL6: TIBBCDField
      FieldName = 'VAL6'
      Origin = '"NOFI"."VAL6"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT6: TDateField
      FieldName = 'DAT6'
      Origin = '"NOFI"."DAT6"'
    end
    object IBDataSetNofiFAT7: TIBStringField
      FieldName = 'FAT7'
      Origin = '"NOFI"."FAT7"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL7: TIBBCDField
      FieldName = 'VAL7'
      Origin = '"NOFI"."VAL7"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT7: TDateField
      FieldName = 'DAT7'
      Origin = '"NOFI"."DAT7"'
    end
    object IBDataSetNofiFAT8: TIBStringField
      FieldName = 'FAT8'
      Origin = '"NOFI"."FAT8"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL8: TIBBCDField
      FieldName = 'VAL8'
      Origin = '"NOFI"."VAL8"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT8: TDateField
      FieldName = 'DAT8'
      Origin = '"NOFI"."DAT8"'
    end
    object IBDataSetNofiFAT9: TIBStringField
      FieldName = 'FAT9'
      Origin = '"NOFI"."FAT9"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetNofiVAL9: TIBBCDField
      FieldName = 'VAL9'
      Origin = '"NOFI"."VAL9"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDAT9: TDateField
      FieldName = 'DAT9'
      Origin = '"NOFI"."DAT9"'
    end
    object IBDataSetNofiDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFI"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFI"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"NOFI"."ICMS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetNofiBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFI"."BASE_ICM_S"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFI"."VAL_ICMS_S"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFI"."VAL_FRETE"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFI"."VAL_SEGURO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFI"."VAL_OUTROS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFI"."VAL_IPI"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFI"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFI"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object IBDataSetNofiVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFI"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFI"."TOT_PROD"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFI"."TOT_NOTA"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNofiCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFI"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetNofiFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFI"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetNofiPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFI"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object IBDataSetNofiDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFI"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object IBDataSetNofiDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFI"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object IBDataSetNofiDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFI"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object IBDataSetNofiDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFI"."DADOS_AD04"'
      FixedChar = True
      Size = 30
    end
    object IBDataSetNofiOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFI"."OBS"'
      FixedChar = True
    end
  end
  object IBDataSetNfda: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NFDA'
      'where'
      '  ID_NFDA = :OLD_ID_NFDA')
    InsertSQL.Strings = (
      'insert into NFDA'
      
        '  (BASE_ICMS, CST_ATUAL, CST_MEDIO, FORNEC, ICMS, ID_CONCESSIONA' +
        'RIA, ID_NFDA, '
      '   ID_NOFI, ID_PECAS, IPI, ITEM, NF, QTDE, SUBST_TRIB)'
      'values'
      
        '  (:BASE_ICMS, :CST_ATUAL, :CST_MEDIO, :FORNEC, :ICMS, :ID_CONCE' +
        'SSIONARIA, '
      
        '   :ID_NFDA, :ID_NOFI, :ID_PECAS, :IPI, :ITEM, :NF, :QTDE, :SUBS' +
        'T_TRIB)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NFDA,'
      '  ID_CONCESSIONARIA,'
      '  ID_NOFI,'
      '  ID_PECAS,'
      '  NF,'
      '  ITEM,'
      '  FORNEC,'
      '  QTDE,'
      '  CST_MEDIO,'
      '  CST_ATUAL,'
      '  IPI,'
      '  ICMS,'
      '  BASE_ICMS,'
      '  SUBST_TRIB'
      'from NFDA '
      'where'
      '  ID_NFDA = :ID_NFDA')
    SelectSQL.Strings = (
      'select * from NFDA')
    ModifySQL.Strings = (
      'update NFDA'
      'set'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CST_ATUAL = :CST_ATUAL,'
      '  CST_MEDIO = :CST_MEDIO,'
      '  FORNEC = :FORNEC,'
      '  ICMS = :ICMS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_NFDA = :ID_NFDA,'
      '  ID_NOFI = :ID_NOFI,'
      '  ID_PECAS = :ID_PECAS,'
      '  IPI = :IPI,'
      '  ITEM = :ITEM,'
      '  NF = :NF,'
      '  QTDE = :QTDE,'
      '  SUBST_TRIB = :SUBST_TRIB'
      'where'
      '  ID_NFDA = :OLD_ID_NFDA')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 182
    object IBDataSetNfdaID_NFDA: TIntegerField
      FieldName = 'ID_NFDA'
      Origin = '"NFDA"."ID_NFDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetNfdaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NFDA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object IBDataSetNfdaID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"NFDA"."ID_NOFI"'
      Required = True
    end
    object IBDataSetNfdaID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"NFDA"."ID_PECAS"'
      Required = True
    end
    object IBDataSetNfdaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"NFDA"."NF"'
      Size = 8
    end
    object IBDataSetNfdaITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"NFDA"."ITEM"'
      Size = 17
    end
    object IBDataSetNfdaFORNEC: TIBStringField
      FieldName = 'FORNEC'
      Origin = '"NFDA"."FORNEC"'
      Size = 5
    end
    object IBDataSetNfdaQTDE: TSmallintField
      FieldName = 'QTDE'
      Origin = '"NFDA"."QTDE"'
    end
    object IBDataSetNfdaCST_MEDIO: TIBBCDField
      FieldName = 'CST_MEDIO'
      Origin = '"NFDA"."CST_MEDIO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNfdaCST_ATUAL: TIBBCDField
      FieldName = 'CST_ATUAL'
      Origin = '"NFDA"."CST_ATUAL"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNfdaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"NFDA"."IPI"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNfdaICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"NFDA"."ICMS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetNfdaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NFDA"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object IBDataSetNfdaSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"NFDA"."SUBST_TRIB"'
      Size = 1
    end
  end
  object IBDataSetUsuariosConcessionarias: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS_CONCESSIONARIA'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    InsertSQL.Strings = (
      'insert into USUARIOS_CONCESSIONARIA'
      '  (ID_CONCESSIONARIA, ID_USUARIOS, ID_USUARIOS_CONCESSIONARIA)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_USUARIOS, :ID_USUARIOS_CONCESSIONARIA' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS_CONCESSIONARIA,'
      '  ID_USUARIOS,'
      '  ID_CONCESSIONARIA'
      'from USUARIOS_CONCESSIONARIA '
      'where'
      '  ID_USUARIOS = :ID_USUARIOS')
    SelectSQL.Strings = (
      'select * from USUARIOS_CONCESSIONARIA'
      '')
    ModifySQL.Strings = (
      'update USUARIOS_CONCESSIONARIA'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_USUARIOS = :ID_USUARIOS,'
      '  ID_USUARIOS_CONCESSIONARIA = :ID_USUARIOS_CONCESSIONARIA'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 262
    object IBDataSetUsuariosConcessionariasID_USUARIOS_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_USUARIOS_CONCESSIONARIA'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_USUARIOS_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetUsuariosConcessionariasID_USUARIOS: TIntegerField
      FieldName = 'ID_USUARIOS'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_USUARIOS"'
      Required = True
    end
    object IBDataSetUsuariosConcessionariasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_CONCESSIONARIA"'
      Required = True
    end
  end
  object IBDataSetConcessionaria: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONCESSIONARIA'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into CONCESSIONARIA'
      
        '  (ID_CONCESSIONARIA, EMPRESA, ENDERECO, CIDADE, ESTADO, CNPJ, I' +
        'E, CONCESSION, '
      
        '   TELEFONE, COD_CONCES, ALIQUOTA_ISS, ALIQUOTA_ICMS1, ALIQUOTA_' +
        'ICMS2, '
      
        '   CODIGO_EMPRESA_JB, IM, CNAE, FANTASIA, CEP, NUMERO, COMPLEMEN' +
        'TO, CODIGO_MUNICIPIO, '
      
        '   BAIRRO, HOST, PORT, USUARIO, PASS, CERTIFICADO, LOGO, DIVIDIR' +
        '_NF_GARANTIA, '
      
        '   ID_BANCO_CONCESSIONARIA, FEIRA, ENDERECO_FEIRA, DIVIDIR_NF_SE' +
        'RVICO, '
      
        '   LOGO_PREFEITURA, ATIVA, DESPACHANTE, FIPE, OBRIGAR_ICMS_ST_NF' +
        'E)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :EMPRESA, :ENDERECO, :CIDADE, :ESTADO, :C' +
        'NPJ, :IE, '
      
        '   :CONCESSION, :TELEFONE, :COD_CONCES, :ALIQUOTA_ISS, :ALIQUOTA' +
        '_ICMS1, '
      
        '   :ALIQUOTA_ICMS2, :CODIGO_EMPRESA_JB, :IM, :CNAE, :FANTASIA, :' +
        'CEP, :NUMERO, '
      
        '   :COMPLEMENTO, :CODIGO_MUNICIPIO, :BAIRRO, :HOST, :PORT, :USUA' +
        'RIO, :PASS, '
      
        '   :CERTIFICADO, :LOGO, :DIVIDIR_NF_GARANTIA, :ID_BANCO_CONCESSI' +
        'ONARIA, '
      
        '   :FEIRA, :ENDERECO_FEIRA, :DIVIDIR_NF_SERVICO, :LOGO_PREFEITUR' +
        'A, :ATIVA, '
      '   :DESPACHANTE, :FIPE, :OBRIGAR_ICMS_ST_NFE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CONCESSIONARIA,'
      '  EMPRESA,'
      '  ENDERECO,'
      '  CIDADE,'
      '  ESTADO,'
      '  CNPJ,'
      '  IE,'
      '  CONCESSION,'
      '  TELEFONE,'
      '  COD_CONCES,'
      '  ALIQUOTA_ISS,'
      '  ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2,'
      '  CODIGO_EMPRESA_JB,'
      '  IM,'
      '  CNAE,'
      '  FANTASIA,'
      '  CEP,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  CODIGO_MUNICIPIO,'
      '  BAIRRO,'
      '  HOST,'
      '  PORT,'
      '  USUARIO,'
      '  PASS,'
      '  CERTIFICADO,'
      '  LOGO,'
      '  DIVIDIR_NF_GARANTIA,'
      '  ID_BANCO_CONCESSIONARIA,'
      '  FEIRA,'
      '  ENDERECO_FEIRA,'
      '  DIVIDIR_NF_SERVICO,'
      '  LOGO_PREFEITURA,'
      '  ATIVA,'
      '  DESPACHANTE,'
      '  FIPE,'
      '  OBRIGAR_ICMS_ST_NFE'
      'from CONCESSIONARIA '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from CONCESSIONARIA')
    ModifySQL.Strings = (
      'update CONCESSIONARIA'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  ESTADO = :ESTADO,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  CONCESSION = :CONCESSION,'
      '  TELEFONE = :TELEFONE,'
      '  COD_CONCES = :COD_CONCES,'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  ALIQUOTA_ICMS1 = :ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2 = :ALIQUOTA_ICMS2,'
      '  CODIGO_EMPRESA_JB = :CODIGO_EMPRESA_JB,'
      '  IM = :IM,'
      '  CNAE = :CNAE,'
      '  FANTASIA = :FANTASIA,'
      '  CEP = :CEP,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CODIGO_MUNICIPIO = :CODIGO_MUNICIPIO,'
      '  BAIRRO = :BAIRRO,'
      '  HOST = :HOST,'
      '  PORT = :PORT,'
      '  USUARIO = :USUARIO,'
      '  PASS = :PASS,'
      '  CERTIFICADO = :CERTIFICADO,'
      '  LOGO = :LOGO,'
      '  DIVIDIR_NF_GARANTIA = :DIVIDIR_NF_GARANTIA,'
      '  ID_BANCO_CONCESSIONARIA = :ID_BANCO_CONCESSIONARIA,'
      '  FEIRA = :FEIRA,'
      '  ENDERECO_FEIRA = :ENDERECO_FEIRA,'
      '  DIVIDIR_NF_SERVICO = :DIVIDIR_NF_SERVICO,'
      '  LOGO_PREFEITURA = :LOGO_PREFEITURA,'
      '  ATIVA = :ATIVA,'
      '  DESPACHANTE = :DESPACHANTE,'
      '  FIPE = :FIPE,'
      '  OBRIGAR_ICMS_ST_NFE = :OBRIGAR_ICMS_ST_NFE'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    ParamCheck = True
    UniDirectional = False
    Left = 200
    Top = 432
    object IBDataSetConcessionariaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetConcessionariaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object IBDataSetConcessionariaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CONCESSIONARIA"."ENDERECO"'
      Required = True
      Size = 50
    end
    object IBDataSetConcessionariaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
    end
    object IBDataSetConcessionariaESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CONCESSIONARIA"."ESTADO"'
      Required = True
      Size = 2
    end
    object IBDataSetConcessionariaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CONCESSIONARIA"."CNPJ"'
      Size = 18
    end
    object IBDataSetConcessionariaIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CONCESSIONARIA"."IE"'
      Size = 12
    end
    object IBDataSetConcessionariaCONCESSION: TIBStringField
      FieldName = 'CONCESSION'
      Origin = '"CONCESSIONARIA"."CONCESSION"'
      Size = 15
    end
    object IBDataSetConcessionariaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CONCESSIONARIA"."TELEFONE"'
      Size = 10
    end
    object IBDataSetConcessionariaCOD_CONCES: TIBStringField
      FieldName = 'COD_CONCES'
      Origin = '"CONCESSIONARIA"."COD_CONCES"'
      Size = 9
    end
    object IBDataSetConcessionariaALIQUOTA_ISS: TIBBCDField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ISS"'
      Precision = 9
      Size = 4
    end
    object IBDataSetConcessionariaALIQUOTA_ICMS2: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS2'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS2"'
      Precision = 9
      Size = 4
    end
    object IBDataSetConcessionariaCODIGO_EMPRESA_JB: TIBStringField
      FieldName = 'CODIGO_EMPRESA_JB'
      Origin = '"CONCESSIONARIA"."CODIGO_EMPRESA_JB"'
      Size = 3
    end
    object IBDataSetConcessionariaIM: TIBStringField
      DisplayWidth = 12
      FieldName = 'IM'
      Origin = '"CONCESSIONARIA"."IM"'
      Size = 12
    end
    object IBDataSetConcessionariaCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = '"CONCESSIONARIA"."CNAE"'
      Size = 7
    end
    object IBDataSetConcessionariaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CONCESSIONARIA"."FANTASIA"'
    end
    object IBDataSetConcessionariaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CONCESSIONARIA"."CEP"'
      Size = 9
    end
    object IBDataSetConcessionariaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CONCESSIONARIA"."NUMERO"'
      Size = 5
    end
    object IBDataSetConcessionariaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CONCESSIONARIA"."COMPLEMENTO"'
      Size = 4
    end
    object IBDataSetConcessionariaCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CONCESSIONARIA"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object IBDataSetConcessionariaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CONCESSIONARIA"."BAIRRO"'
    end
    object IBDataSetConcessionariaHOST: TIBStringField
      DisplayWidth = 30
      FieldName = 'HOST'
      Origin = '"CONCESSIONARIA"."HOST"'
      Size = 30
    end
    object IBDataSetConcessionariaPORT: TIBStringField
      FieldName = 'PORT'
      Origin = '"CONCESSIONARIA"."PORT"'
      Size = 3
    end
    object IBDataSetConcessionariaPASS: TIBStringField
      FieldName = 'PASS'
      Origin = '"CONCESSIONARIA"."PASS"'
    end
    object IBDataSetConcessionariaUSER: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"CONCESSIONARIA"."USER"'
      Size = 21
    end
    object IBDataSetConcessionariaCERTIFICADO: TIBStringField
      FieldName = 'CERTIFICADO'
      Origin = '"CONCESSIONARIA"."CERTIFICADO"'
      Size = 50
    end
    object IBDataSetConcessionariaLOGO: TIBStringField
      FieldName = 'LOGO'
      Origin = '"CONCESSIONARIA"."LOGO"'
      Size = 50
    end
    object IBDataSetConcessionariaDIVIDIR_NF_GARANTIA: TIBStringField
      FieldName = 'DIVIDIR_NF_GARANTIA'
      Origin = '"CONCESSIONARIA"."DIVIDIR_NF_GARANTIA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaID_BANCO_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_BANCO_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_BANCO_CONCESSIONARIA"'
    end
    object IBDataSetConcessionariaFEIRA: TIBStringField
      FieldName = 'FEIRA'
      Origin = '"CONCESSIONARIA"."FEIRA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaENDERECO_FEIRA: TIBStringField
      FieldName = 'ENDERECO_FEIRA'
      Origin = '"CONCESSIONARIA"."ENDERECO_FEIRA"'
      Size = 60
    end
    object IBDataSetConcessionariaDIVIDIR_NF_SERVICO: TIBStringField
      FieldName = 'DIVIDIR_NF_SERVICO'
      Origin = '"CONCESSIONARIA"."DIVIDIR_NF_SERVICO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaLOGO_PREFEITURA: TIBStringField
      FieldName = 'LOGO_PREFEITURA'
      Origin = '"CONCESSIONARIA"."LOGO_PREFEITURA"'
      Size = 100
    end
    object IBDataSetConcessionariaATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"CONCESSIONARIA"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaDESPACHANTE: TIBStringField
      FieldName = 'DESPACHANTE'
      Origin = '"CONCESSIONARIA"."DESPACHANTE"'
    end
    object IBDataSetConcessionariaFIPE: TIBStringField
      FieldName = 'FIPE'
      Origin = '"CONCESSIONARIA"."FIPE"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaOBRIGAR_ICMS_ST_NFE: TIBStringField
      FieldName = 'OBRIGAR_ICMS_ST_NFE'
      Origin = '"CONCESSIONARIA"."OBRIGAR_ICMS_ST_NFE"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetConcessionariaALIQUOTA_ICMS1: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS1'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS1"'
      Precision = 9
      Size = 4
    end
  end
  object IBDataSetUsuariosConcessionariaLogada: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS_CONCESSIONARIA'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    InsertSQL.Strings = (
      'insert into USUARIOS_CONCESSIONARIA'
      '  (ID_CONCESSIONARIA, ID_USUARIOS, ID_USUARIOS_CONCESSIONARIA)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_USUARIOS, :ID_USUARIOS_CONCESSIONARIA' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS_CONCESSIONARIA,'
      '  ID_USUARIOS,'
      '  ID_CONCESSIONARIA'
      'from USUARIOS_CONCESSIONARIA '
      'where'
      '  ID_USUARIOS = :ID_USUARIOS')
    SelectSQL.Strings = (
      'select * from USUARIOS_CONCESSIONARIA'
      'where id_usuarios=:id_usuarios')
    ModifySQL.Strings = (
      'update USUARIOS_CONCESSIONARIA'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_USUARIOS = :ID_USUARIOS,'
      '  ID_USUARIOS_CONCESSIONARIA = :ID_USUARIOS_CONCESSIONARIA'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 264
    object IBDataSetUsuariosConcessionariaLogadaID_USUARIOS_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_USUARIOS_CONCESSIONARIA'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_USUARIOS_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetUsuariosConcessionariaLogadaID_USUARIOS: TIntegerField
      FieldName = 'ID_USUARIOS'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_USUARIOS"'
      Required = True
    end
    object IBDataSetUsuariosConcessionariaLogadaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"USUARIOS_CONCESSIONARIA"."ID_CONCESSIONARIA"'
      Required = True
    end
  end
  object IBDataSetAtendimento: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATENDIME'
      'where'
      '  ID_ATENDIME = :OLD_ID_ATENDIME')
    InsertSQL.Strings = (
      'insert into ATENDIME'
      
        '  (ANO_FABRIC, ANO_MODELO, CATEG, CHASSI, CLIENTE, CODIGO, COR, ' +
        'DATA_ENTRA, '
      
        '   DATA_SAIDA, FIM, ID_ATENDIME, ID_CLIENTES, ID_CONCESSIONARIA,' +
        ' KM, MARCA, '
      '   MECANICO, MODELO, ORC_OS, PLACA)'
      'values'
      
        '  (:ANO_FABRIC, :ANO_MODELO, :CATEG, :CHASSI, :CLIENTE, :CODIGO,' +
        ' :COR, '
      
        '   :DATA_ENTRA, :DATA_SAIDA, :FIM, :ID_ATENDIME, :ID_CLIENTES, :' +
        'ID_CONCESSIONARIA, '
      '   :KM, :MARCA, :MECANICO, :MODELO, :ORC_OS, :PLACA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATENDIME,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  CODIGO,'
      '  CLIENTE,'
      '  MARCA,'
      '  MODELO,'
      '  ANO_FABRIC,'
      '  ANO_MODELO,'
      '  CHASSI,'
      '  KM,'
      '  DATA_ENTRA,'
      '  DATA_SAIDA,'
      '  ORC_OS,'
      '  MECANICO,'
      '  CATEG,'
      '  FIM,'
      '  COR,'
      '  PLACA'
      'from ATENDIME '
      'where'
      '  ID_ATENDIME = :ID_ATENDIME')
    SelectSQL.Strings = (
      'select *  from ATENDIME')
    ModifySQL.Strings = (
      'update ATENDIME'
      'set'
      '  ANO_FABRIC = :ANO_FABRIC,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CATEG = :CATEG,'
      '  CHASSI = :CHASSI,'
      '  CLIENTE = :CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  COR = :COR,'
      '  DATA_ENTRA = :DATA_ENTRA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  FIM = :FIM,'
      '  ID_ATENDIME = :ID_ATENDIME,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MECANICO = :MECANICO,'
      '  MODELO = :MODELO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA'
      'where'
      '  ID_ATENDIME = :OLD_ID_ATENDIME')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 312
    object IBDataSetAtendimentoID_ATENDIME: TIntegerField
      FieldName = 'ID_ATENDIME'
      Origin = '"ATENDIME"."ID_ATENDIME"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetAtendimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIME"."ID_CONCESSIONARIA"'
    end
    object IBDataSetAtendimentoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIME"."ID_CLIENTES"'
    end
    object IBDataSetAtendimentoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"ATENDIME"."CODIGO"'
      Required = True
      Size = 5
    end
    object IBDataSetAtendimentoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"ATENDIME"."CLIENTE"'
      Required = True
      Size = 5
    end
    object IBDataSetAtendimentoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"ATENDIME"."MARCA"'
      Size = 10
    end
    object IBDataSetAtendimentoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"ATENDIME"."MODELO"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetAtendimentoANO_FABRIC: TIBStringField
      FieldName = 'ANO_FABRIC'
      Origin = '"ATENDIME"."ANO_FABRIC"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetAtendimentoANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"ATENDIME"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetAtendimentoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"ATENDIME"."CHASSI"'
      FixedChar = True
      Size = 17
    end
    object IBDataSetAtendimentoKM: TIntegerField
      FieldName = 'KM'
      Origin = '"ATENDIME"."KM"'
    end
    object IBDataSetAtendimentoDATA_ENTRA: TDateField
      FieldName = 'DATA_ENTRA'
      Origin = '"ATENDIME"."DATA_ENTRA"'
    end
    object IBDataSetAtendimentoDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ATENDIME"."DATA_SAIDA"'
    end
    object IBDataSetAtendimentoORC_OS: TIBStringField
      FieldName = 'ORC_OS'
      Origin = '"ATENDIME"."ORC_OS"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAtendimentoMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"ATENDIME"."MECANICO"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetAtendimentoCATEG: TIBStringField
      FieldName = 'CATEG'
      Origin = '"ATENDIME"."CATEG"'
      FixedChar = True
      Size = 2
    end
    object IBDataSetAtendimentoFIM: TIBStringField
      FieldName = 'FIM'
      Origin = '"ATENDIME"."FIM"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAtendimentoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"ATENDIME"."COR"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetAtendimentoPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"ATENDIME"."PLACA"'
      FixedChar = True
      Size = 7
    end
  end
  object IBDataSetAten_Pec: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATEN_PEC'
      'where'
      '  ID_ATEN_PEC = :OLD_ID_ATEN_PEC')
    InsertSQL.Strings = (
      'insert into ATEN_PEC'
      
        '  (CFOP2, COD_PECA, CODIGO, ID_ATEN_PEC, ID_ATENDIME, ID_CONCESS' +
        'IONARIA, '
      
        '   ID_PECAS, PECA, PRECO, QTDE, ST_COFINS, SUBST_TRIB, TIPO, UNI' +
        'DADE)'
      'values'
      
        '  (:CFOP2, :COD_PECA, :CODIGO, :ID_ATEN_PEC, :ID_ATENDIME, :ID_C' +
        'ONCESSIONARIA, '
      
        '   :ID_PECAS, :PECA, :PRECO, :QTDE, :ST_COFINS, :SUBST_TRIB, :TI' +
        'PO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATEN_PEC,'
      '  ID_CONCESSIONARIA,'
      '  ID_ATENDIME,'
      '  ID_PECAS,'
      '  CODIGO,'
      '  COD_PECA,'
      '  PECA,'
      '  TIPO,'
      '  QTDE,'
      '  PRECO,'
      '  UNIDADE,'
      '  SUBST_TRIB,'
      '  ST_COFINS,'
      '  CFOP2'
      'from ATEN_PEC '
      'where'
      '  ID_ATEN_PEC = :ID_ATEN_PEC')
    SelectSQL.Strings = (
      'select * from ATEN_PEC')
    ModifySQL.Strings = (
      'update ATEN_PEC'
      'set'
      '  CFOP2 = :CFOP2,'
      '  COD_PECA = :COD_PECA,'
      '  CODIGO = :CODIGO,'
      '  ID_ATEN_PEC = :ID_ATEN_PEC,'
      '  ID_ATENDIME = :ID_ATENDIME,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  PECA = :PECA,'
      '  PRECO = :PRECO,'
      '  QTDE = :QTDE,'
      '  ST_COFINS = :ST_COFINS,'
      '  SUBST_TRIB = :SUBST_TRIB,'
      '  TIPO = :TIPO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ID_ATEN_PEC = :OLD_ID_ATEN_PEC')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 344
    object IBDataSetAten_PecID_ATEN_PEC: TIntegerField
      FieldName = 'ID_ATEN_PEC'
      Origin = '"ATEN_PEC"."ID_ATEN_PEC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetAten_PecID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATEN_PEC"."ID_CONCESSIONARIA"'
    end
    object IBDataSetAten_PecID_ATENDIME: TIntegerField
      FieldName = 'ID_ATENDIME'
      Origin = '"ATEN_PEC"."ID_ATENDIME"'
    end
    object IBDataSetAten_PecID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"ATEN_PEC"."ID_PECAS"'
    end
    object IBDataSetAten_PecCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"ATEN_PEC"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetAten_PecCOD_PECA: TIBStringField
      FieldName = 'COD_PECA'
      Origin = '"ATEN_PEC"."COD_PECA"'
      FixedChar = True
      Size = 12
    end
    object IBDataSetAten_PecPECA: TIBStringField
      FieldName = 'PECA'
      Origin = '"ATEN_PEC"."PECA"'
      FixedChar = True
      Size = 40
    end
    object IBDataSetAten_PecTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ATEN_PEC"."TIPO"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetAten_PecQTDE: TIBStringField
      FieldName = 'QTDE'
      Origin = '"ATEN_PEC"."QTDE"'
      FixedChar = True
      Size = 4
    end
    object IBDataSetAten_PecPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ATEN_PEC"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetAten_PecUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"ATEN_PEC"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetAten_PecSUBST_TRIB: TIBStringField
      FieldName = 'SUBST_TRIB'
      Origin = '"ATEN_PEC"."SUBST_TRIB"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAten_PecST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"ATEN_PEC"."ST_COFINS"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAten_PecCFOP2: TIBStringField
      FieldName = 'CFOP2'
      Origin = '"ATEN_PEC"."CFOP2"'
      FixedChar = True
      Size = 5
    end
  end
  object IBDataSetAten_Serv: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATEN_SER'
      'where'
      '  ID_ATEN_SER = :OLD_ID_ATEN_SER')
    InsertSQL.Strings = (
      'insert into ATEN_SER'
      
        '  (COD_SERV, CODIGO, GARANTIA, ID_ATEN_SER, ID_ATENDIME, ID_CONC' +
        'ESSIONARIA, '
      '   MECANICO, REV_GRAT, SERVICO, TEMPO, TIPO, VALOR)'
      'values'
      
        '  (:COD_SERV, :CODIGO, :GARANTIA, :ID_ATEN_SER, :ID_ATENDIME, :I' +
        'D_CONCESSIONARIA, '
      '   :MECANICO, :REV_GRAT, :SERVICO, :TEMPO, :TIPO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ATEN_SER,'
      '  ID_ATENDIME,'
      '  ID_CONCESSIONARIA,'
      '  CODIGO,'
      '  COD_SERV,'
      '  SERVICO,'
      '  TIPO,'
      '  GARANTIA,'
      '  TEMPO,'
      '  VALOR,'
      '  REV_GRAT,'
      '  MECANICO'
      'from ATEN_SER '
      'where'
      '  ID_ATEN_SER = :ID_ATEN_SER')
    SelectSQL.Strings = (
      'select *  from ATEN_SER')
    ModifySQL.Strings = (
      'update ATEN_SER'
      'set'
      '  COD_SERV = :COD_SERV,'
      '  CODIGO = :CODIGO,'
      '  GARANTIA = :GARANTIA,'
      '  ID_ATEN_SER = :ID_ATEN_SER,'
      '  ID_ATENDIME = :ID_ATENDIME,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  MECANICO = :MECANICO,'
      '  REV_GRAT = :REV_GRAT,'
      '  SERVICO = :SERVICO,'
      '  TEMPO = :TEMPO,'
      '  TIPO = :TIPO,'
      '  VALOR = :VALOR'
      'where'
      '  ID_ATEN_SER = :OLD_ID_ATEN_SER')
    ParamCheck = True
    UniDirectional = False
    Left = 104
    Top = 384
    object IBDataSetAten_ServID_ATEN_SER: TIntegerField
      FieldName = 'ID_ATEN_SER'
      Origin = '"ATEN_SER"."ID_ATEN_SER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetAten_ServID_ATENDIME: TIntegerField
      FieldName = 'ID_ATENDIME'
      Origin = '"ATEN_SER"."ID_ATENDIME"'
    end
    object IBDataSetAten_ServID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATEN_SER"."ID_CONCESSIONARIA"'
    end
    object IBDataSetAten_ServCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"ATEN_SER"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetAten_ServCOD_SERV: TIBStringField
      FieldName = 'COD_SERV'
      Origin = '"ATEN_SER"."COD_SERV"'
      FixedChar = True
      Size = 5
    end
    object IBDataSetAten_ServSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"ATEN_SER"."SERVICO"'
      FixedChar = True
      Size = 30
    end
    object IBDataSetAten_ServTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ATEN_SER"."TIPO"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetAten_ServGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      Origin = '"ATEN_SER"."GARANTIA"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAten_ServTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"ATEN_SER"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object IBDataSetAten_ServVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ATEN_SER"."VALOR"'
      Precision = 9
      Size = 2
    end
    object IBDataSetAten_ServREV_GRAT: TIBStringField
      FieldName = 'REV_GRAT'
      Origin = '"ATEN_SER"."REV_GRAT"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetAten_ServMECANICO: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"ATEN_SER"."MECANICO"'
      FixedChar = True
      Size = 3
    end
  end
  object IBDataSetModVeic: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MODVEIC'
      'where'
      '  ID_MODVEIC = :OLD_ID_MODVEIC')
    InsertSQL.Strings = (
      'insert into MODVEIC'
      
        '  (CILINDRADAS, CILINDROS, CLASSIF_FISCAL, COMBUSTIVEL, HP, ID_M' +
        'ODVEIC, '
      '   MARCA, MODELO, PPS, PPS_ABRACY, PRECO_VENDA, RENAVAM)'
      'values'
      
        '  (:CILINDRADAS, :CILINDROS, :CLASSIF_FISCAL, :COMBUSTIVEL, :HP,' +
        ' :ID_MODVEIC, '
      '   :MARCA, :MODELO, :PPS, :PPS_ABRACY, :PRECO_VENDA, :RENAVAM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_MODVEIC,'
      '  MARCA,'
      '  MODELO,'
      '  CILINDROS,'
      '  CILINDRADAS,'
      '  HP,'
      '  COMBUSTIVEL,'
      '  RENAVAM,'
      '  CLASSIF_FISCAL,'
      '  PPS,'
      '  PPS_ABRACY,'
      '  PRECO_VENDA'
      'from MODVEIC '
      'where'
      '  ID_MODVEIC = :ID_MODVEIC')
    SelectSQL.Strings = (
      'select * from MODVEIC')
    ModifySQL.Strings = (
      'update MODVEIC'
      'set'
      '  CILINDRADAS = :CILINDRADAS,'
      '  CILINDROS = :CILINDROS,'
      '  CLASSIF_FISCAL = :CLASSIF_FISCAL,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  HP = :HP,'
      '  ID_MODVEIC = :ID_MODVEIC,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  PPS = :PPS,'
      '  PPS_ABRACY = :PPS_ABRACY,'
      '  PRECO_VENDA = :PRECO_VENDA,'
      '  RENAVAM = :RENAVAM'
      'where'
      '  ID_MODVEIC = :OLD_ID_MODVEIC')
    ParamCheck = True
    UniDirectional = False
    Filtered = True
    Left = 8
    Top = 344
    object IBDataSetModVeicID_MODVEIC: TIntegerField
      FieldName = 'ID_MODVEIC'
      Origin = '"MODVEIC"."ID_MODVEIC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetModVeicMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"MODVEIC"."MARCA"'
      Size = 10
    end
    object IBDataSetModVeicMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"MODVEIC"."MODELO"'
    end
    object IBDataSetModVeicCILINDROS: TIntegerField
      FieldName = 'CILINDROS'
      Origin = '"MODVEIC"."CILINDROS"'
    end
    object IBDataSetModVeicCILINDRADAS: TIntegerField
      FieldName = 'CILINDRADAS'
      Origin = '"MODVEIC"."CILINDRADAS"'
    end
    object IBDataSetModVeicHP: TIntegerField
      FieldName = 'HP'
      Origin = '"MODVEIC"."HP"'
    end
    object IBDataSetModVeicCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"MODVEIC"."COMBUSTIVEL"'
      Size = 10
    end
    object IBDataSetModVeicRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"MODVEIC"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetModVeicCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"MODVEIC"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object IBDataSetModVeicPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"MODVEIC"."PPS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetModVeicPPS_ABRACY: TIBBCDField
      FieldName = 'PPS_ABRACY'
      Origin = '"MODVEIC"."PPS_ABRACY"'
      Precision = 9
      Size = 2
    end
    object IBDataSetModVeicPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = '"MODVEIC"."PRECO_VENDA"'
      Precision = 9
      Size = 2
    end
  end
  object IBDataSetLoteConhecimento: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOTE_CONHECIMENTO'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into LOTE_CONHECIMENTO'
      
        '  (ID_CONCESSIONARIA, ID_LOTE_CONHECIMENTO, NUMERO_CONHECIMENTO,' +
        ' QTDE_NFS, '
      '   TRANSPORTADORA, VALOR_FRETE, VALOR_MERCADORIAS)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_LOTE_CONHECIMENTO, :NUMERO_CONHECIMEN' +
        'TO, :QTDE_NFS, '
      '   :TRANSPORTADORA, :VALOR_FRETE, :VALOR_MERCADORIAS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_LOTE_CONHECIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  NUMERO_CONHECIMENTO,'
      '  QTDE_NFS,'
      '  TRANSPORTADORA,'
      '  VALOR_FRETE,'
      '  VALOR_MERCADORIAS'
      'from LOTE_CONHECIMENTO '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from LOTE_CONHECIMENTO')
    ModifySQL.Strings = (
      'update LOTE_CONHECIMENTO'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_LOTE_CONHECIMENTO = :ID_LOTE_CONHECIMENTO,'
      '  NUMERO_CONHECIMENTO = :NUMERO_CONHECIMENTO,'
      '  QTDE_NFS = :QTDE_NFS,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_MERCADORIAS = :VALOR_MERCADORIAS'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 464
    object IBDataSetLoteConhecimentoID_LOTE_CONHECIMENTO: TIntegerField
      FieldName = 'ID_LOTE_CONHECIMENTO'
      Origin = '"LOTE_CONHECIMENTO"."ID_LOTE_CONHECIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetLoteConhecimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"LOTE_CONHECIMENTO"."ID_CONCESSIONARIA"'
    end
    object IBDataSetLoteConhecimentoNUMERO_CONHECIMENTO: TIBStringField
      FieldName = 'NUMERO_CONHECIMENTO'
      Origin = '"LOTE_CONHECIMENTO"."NUMERO_CONHECIMENTO"'
      Size = 12
    end
    object IBDataSetLoteConhecimentoQTDE_NFS: TIBStringField
      FieldName = 'QTDE_NFS'
      Origin = '"LOTE_CONHECIMENTO"."QTDE_NFS"'
      Size = 3
    end
    object IBDataSetLoteConhecimentoTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"LOTE_CONHECIMENTO"."TRANSPORTADORA"'
      Size = 5
    end
    object IBDataSetLoteConhecimentoVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = '"LOTE_CONHECIMENTO"."VALOR_FRETE"'
      Precision = 18
      Size = 2
    end
    object IBDataSetLoteConhecimentoVALOR_MERCADORIAS: TIBBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"LOTE_CONHECIMENTO"."VALOR_MERCADORIAS"'
      Precision = 18
      Size = 2
    end
  end
  object IBDataSetStatus: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from STATUS'
      'where'
      '  ID_STATUS = :OLD_ID_STATUS')
    InsertSQL.Strings = (
      'insert into STATUS'
      '  (ID_STATUS, STATUS)'
      'values'
      '  (:ID_STATUS, :STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_STATUS,'
      '  STATUS'
      'from STATUS '
      'where'
      '  ID_STATUS = :ID_STATUS')
    SelectSQL.Strings = (
      'select *  from STATUS')
    ModifySQL.Strings = (
      'update STATUS'
      'set'
      '  ID_STATUS = :ID_STATUS,'
      '  STATUS = :STATUS'
      'where'
      '  ID_STATUS = :OLD_ID_STATUS')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 504
    object IBDataSetStatusID_STATUS: TIntegerField
      FieldName = 'ID_STATUS'
      Origin = '"STATUS"."ID_STATUS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetStatusSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"STATUS"."STATUS"'
      Required = True
    end
  end
  object IBDataSetCategoria1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CATEGORIA'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    InsertSQL.Strings = (
      'insert into CATEGORIA'
      '  (CODIGO, DESCRICAO, ID_CATEGORIA, PRECO, PRECO_GAR)'
      'values'
      '  (:CODIGO, :DESCRICAO, :ID_CATEGORIA, :PRECO, :PRECO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CATEGORIA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  PRECO,'
      '  PRECO_GAR'
      'from CATEGORIA '
      'where'
      '  ID_CATEGORIA = :ID_CATEGORIA')
    SelectSQL.Strings = (
      'select *  from CATEGORIA'
      'where descricao =: descricao'
      '')
    ModifySQL.Strings = (
      'update CATEGORIA'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    ParamCheck = True
    UniDirectional = False
    Left = 48
    Top = 24
    object IBDataSetCategoria1ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"CATEGORIA"."ID_CATEGORIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCategoria1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CATEGORIA"."CODIGO"'
      Required = True
      Size = 5
    end
    object IBDataSetCategoria1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CATEGORIA"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBDataSetCategoria1PRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"CATEGORIA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object IBDataSetCategoria1PRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"CATEGORIA"."PRECO_GAR"'
      Precision = 18
      Size = 2
    end
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Autorev-Local'
    DriverName = 'Interbase'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'DriverUnit=DBXDynalink'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxDynalinkDriver10' +
        '0.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxDynalinkDriver,Version=11.0.5000.0,Culture=neutral,Pu' +
        'blicKeyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxRea' +
        'dOnlyMetaData100.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxReadOnlyMetaData,Version=11.0.5000.0,Cul' +
        'ture=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost:c:\autorev\database\autorev.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'Trim Char=False')
    Left = 382
    Top = 88
  end
  object IBDataSetParametros: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PARAMETROS'
      'where'
      '  ID_PARAMETROS = :OLD_ID_PARAMETROS')
    InsertSQL.Strings = (
      'insert into PARAMETROS'
      
        '  (DESCONTO_ADIANTAMENTO, DESCONTO_PADRAO_PECAS, ID_PARAMETROS, ' +
        'JUROS_ATRASO, '
      '   SOBRE_PRECO_PECAS, VERSAO_SISTEMA)'
      'values'
      
        '  (:DESCONTO_ADIANTAMENTO, :DESCONTO_PADRAO_PECAS, :ID_PARAMETRO' +
        'S, :JUROS_ATRASO, '
      '   :SOBRE_PRECO_PECAS, :VERSAO_SISTEMA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PARAMETROS,'
      '  DESCONTO_PADRAO_PECAS,'
      '  SOBRE_PRECO_PECAS,'
      '  VERSAO_SISTEMA,'
      '  JUROS_ATRASO,'
      '  DESCONTO_ADIANTAMENTO'
      'from PARAMETROS '
      'where'
      '  ID_PARAMETROS = :ID_PARAMETROS')
    SelectSQL.Strings = (
      'select * from PARAMETROS')
    ModifySQL.Strings = (
      'update PARAMETROS'
      'set'
      '  DESCONTO_ADIANTAMENTO = :DESCONTO_ADIANTAMENTO,'
      '  DESCONTO_PADRAO_PECAS = :DESCONTO_PADRAO_PECAS,'
      '  ID_PARAMETROS = :ID_PARAMETROS,'
      '  JUROS_ATRASO = :JUROS_ATRASO,'
      '  SOBRE_PRECO_PECAS = :SOBRE_PRECO_PECAS,'
      '  VERSAO_SISTEMA = :VERSAO_SISTEMA'
      'where'
      '  ID_PARAMETROS = :OLD_ID_PARAMETROS')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 184
    object IBDataSetParametrosID_PARAMETROS: TIntegerField
      FieldName = 'ID_PARAMETROS'
      Origin = '"PARAMETROS"."ID_PARAMETROS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetParametrosDESCONTO_PADRAO_PECAS: TIBBCDField
      FieldName = 'DESCONTO_PADRAO_PECAS'
      Origin = '"PARAMETROS"."DESCONTO_PADRAO_PECAS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetParametrosSOBRE_PRECO_PECAS: TIBBCDField
      FieldName = 'SOBRE_PRECO_PECAS'
      Origin = '"PARAMETROS"."SOBRE_PRECO_PECAS"'
      Precision = 9
      Size = 2
    end
    object IBDataSetParametrosVERSAO_SISTEMA: TIBStringField
      FieldName = 'VERSAO_SISTEMA'
      Origin = '"PARAMETROS"."VERSAO_SISTEMA"'
      Required = True
      Size = 5
    end
    object IBDataSetParametrosJUROS_ATRASO: TIBBCDField
      FieldName = 'JUROS_ATRASO'
      Origin = '"PARAMETROS"."JUROS_ATRASO"'
      Precision = 9
      Size = 4
    end
    object IBDataSetParametrosDESCONTO_ADIANTAMENTO: TIBBCDField
      FieldName = 'DESCONTO_ADIANTAMENTO'
      Origin = '"PARAMETROS"."DESCONTO_ADIANTAMENTO"'
      Precision = 9
      Size = 4
    end
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select current_timestamp as DataAtual FROM RDB$DATABASE')
    Left = 304
    Top = 264
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 304
    Top = 360
  end
  object tblPessoas2: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterPost
    AfterPost = IBDataSetAfterPost
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
        ', FATURA_COM_DEBITOS, '
      
        '   FINANCEIRA, FONE1, FONE2, FONE3, FORNECEDOR, FOTO, ID_CLIENTE' +
        'S, ID_CONCESSIONARIA, '
      
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
      
        '   :ESTADO, :FABRICANTE, :FATURA_COM_DEBITOS, :FINANCEIRA, :FONE' +
        '1, :FONE2, '
      
        '   :FONE3, :FORNECEDOR, :FOTO, :ID_CLIENTES, :ID_CONCESSIONARIA,' +
        ' :IDENTIDADE, '
      
        '   :MAE, :MECANICO, :NASCIMENTO, :NOME, :NOME_VENDEDOR, :NUM_CPF' +
        ', :PAI, '
      
        '   :REF_AG_BANC, :REF_BANC, :REF_COML_FONE1, :REF_COML_FONE2, :R' +
        'EF_COML1, '
      
        '   :REF_COML2, :REF_CTA_BANC, :REF_FONE1, :REF_FONE2, :REF_NOME1' +
        ', :REF_NOME2, '
      
        '   :REG_SPC, :SALARIO, :SPC, :TRANSPORTADORA, :VENDEDOR, :VENDED' +
        'OR_YNOVA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLIENTES,'
      '  CODIGO,'
      '  NOME,'
      '  ID_CONCESSIONARIA,'
      '  VENDEDOR_YNOVA,'
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
      '  FATURA_COM_DEBITOS'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'where'
      'id_Clientes = :idClientes'
      '')
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
      '  FATURA_COM_DEBITOS = :FATURA_COM_DEBITOS,'
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
    Left = 280
    Top = 24
    object IntegerField8: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField9: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object IBStringField27: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object IBStringField28: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
    object IBStringField29: TIBStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
    end
    object IBStringField30: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object IBStringField31: TIBStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object DateField4: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
    end
    object IBStringField32: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Size = 50
    end
    object IBStringField33: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Size = 50
    end
    object IBStringField34: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBStringField35: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 50
    end
    object IBStringField36: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 50
    end
    object IBStringField37: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 2
    end
    object IBStringField38: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Size = 9
    end
    object DateField5: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object IBStringField39: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField40: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField41: TIBStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object IBStringField42: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object IBStringField43: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBStringField44: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField45: TIBStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField46: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object IBStringField47: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 4
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object IBStringField48: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object IBStringField49: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Size = 50
    end
    object IBStringField50: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Size = 50
    end
    object IBStringField51: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Size = 50
    end
    object IBStringField52: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Size = 2
    end
    object IBStringField53: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Size = 9
    end
    object IBStringField54: TIBStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField55: TIBStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object IBStringField56: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object DateField6: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField57: TIBStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object IBStringField58: TIBStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object IBStringField59: TIBStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object IBStringField60: TIBStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object IBStringField61: TIBStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object IBStringField62: TIBStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object IBStringField63: TIBStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object IBStringField64: TIBStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField65: TIBStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object IBStringField66: TIBStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField67: TIBStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      FixedChar = True
      Size = 1
    end
    object IBStringField68: TIBStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object IBStringField69: TIBStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      FixedChar = True
      Size = 1
    end
    object IBStringField70: TIBStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object IBStringField71: TIBStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object IBStringField72: TIBStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object IBStringField73: TIBStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object IBStringField74: TIBStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object IBStringField75: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField76: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object IBStringField77: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object IBStringField78: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object tblPessoas2VENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoas2CODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
    object tblPessoas2FATURA_COM_DEBITOS: TIBStringField
      FieldName = 'FATURA_COM_DEBITOS'
      Origin = '"CLIENTES"."FATURA_COM_DEBITOS"'
      FixedChar = True
      Size = 1
    end
  end
  object tblCreceber2: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterCancel = IBDataSetAfterCancel
    AfterDelete = IBDataSetAfterPost
    AfterPost = IBDataSetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'select * from Creceber'
      'where'
      'id_Clientes = :idClientes'
      'and'
      'Status = '#39'Processado'#39
      'and '
      'Vencimento < :DataAtual'
      'and'
      'ID_FORMA_PAGAMENTO <> 5'
      'and'
      'ID_FORMA_PAGAMENTO <> 9'
      'and'
      'ID_FORMA_PAGAMENTO <> 10'
      'and'
      'ID_FORMA_PAGAMENTO <> 13'
      'AND'
      'ID_FORMA_PAGAMENTO <> 14'
      'and'
      'ID_FORMA_PAGAMENTO <> 15'
      'and'
      'ID_FORMA_PAGAMENTO <> 16'
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 280
    Top = 56
    object tblCreceber2ID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCreceber2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblCreceber2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Required = True
    end
    object tblCreceber2ID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCreceber2ID_CRECEBER_RENEGOCIADO: TIntegerField
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
    end
    object tblCreceber2DOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCreceber2PARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCreceber2VEZES: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCreceber2ID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblCreceber2ORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceber2CONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 5
    end
    object tblCreceber2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceber2VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCreceber2EMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCreceber2TOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object tblCreceber2PAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblCreceber2VALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object tblCreceber2BANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 5
    end
    object tblCreceber2HISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblCreceber2STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object tblCreceber2ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCreceber2BOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = tblCreceber2
    Left = 312
    Top = 56
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tblPessoas2
    Left = 312
    Top = 24
  end
end
