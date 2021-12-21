object BoxMeusClientes: TBoxMeusClientes
  Left = 15
  Top = 85
  Caption = 'Meus Clientes'
  ClientHeight = 372
  ClientWidth = 950
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
    Width = 950
    Height = 372
    Align = alClient
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 1
      Top = 352
      Width = 948
      Height = 19
      Panels = <>
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 929
      Height = 330
      DataSource = DataSourcePessoas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Title.Caption = 'Seq.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE1'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE2'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Alignment = taCenter
          Title.Caption = 'E-mail:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NASCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nascimento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Alignment = taCenter
          Title.Caption = 'Endere'#231'o:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Alignment = taCenter
          Title.Caption = 'Bairro:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Cidade:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          Title.Alignment = taCenter
          Title.Caption = 'Estado:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Title.Alignment = taCenter
          Title.Caption = 'CEP:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADASTRO'
          Title.Alignment = taCenter
          Title.Caption = 'Data cadastro:'
          Visible = True
        end>
    end
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
      'Where'
      'NOME_VENDEDOR = :NomeVendedor')
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
    Left = 248
    Top = 88
    object tblPessoasID_CLIENTES: TIntegerField
      DisplayLabel = 'Seq.:'
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPessoasFONE1: TIBStringField
      DisplayLabel = 'Telefone:'
      DisplayWidth = 12
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object tblPessoasFONE2: TIBStringField
      DisplayLabel = 'Telefone:'
      DisplayWidth = 12
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object tblPessoasEMAIL: TIBStringField
      DisplayLabel = 'E-mail:'
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblPessoasNASCIMENTO: TDateField
      DisplayLabel = 'Nascimento:'
      DisplayWidth = 10
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
      Required = True
    end
    object tblPessoasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o:'
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblPessoasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro:'
      DisplayWidth = 50
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object tblPessoasCIDADE: TIBStringField
      DisplayLabel = 'Cidade:'
      DisplayWidth = 50
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblPessoasESTADO: TIBStringField
      DisplayLabel = 'Estado:'
      DisplayWidth = 2
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblPessoasCEP: TIBStringField
      DisplayLabel = 'CEP:'
      DisplayWidth = 9
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object tblPessoasCADASTRO: TDateField
      DisplayLabel = 'Data cadastro:'
      DisplayWidth = 10
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Visible = False
    end
    object tblPessoasCODIGO: TIBStringField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Visible = False
      Size = 5
    end
    object tblPessoasIDENTIDADE: TIBStringField
      DisplayWidth = 20
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
      Required = True
      Visible = False
    end
    object tblPessoasCPF: TIBStringField
      DisplayWidth = 4
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Visible = False
      Size = 4
    end
    object tblPessoasNUM_CPF: TIBStringField
      DisplayWidth = 18
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Visible = False
      Size = 18
    end
    object tblPessoasPAI: TIBStringField
      DisplayWidth = 50
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Visible = False
      Size = 50
    end
    object tblPessoasMAE: TIBStringField
      DisplayWidth = 50
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Visible = False
      Size = 50
    end
    object tblPessoasDESCONTO: TIBBCDField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Visible = False
      Precision = 9
      Size = 2
    end
    object tblPessoasFONE3: TIBStringField
      DisplayWidth = 12
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasCLIENTE: TIBStringField
      DisplayWidth = 1
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasFORNECEDOR: TIBStringField
      DisplayWidth = 1
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasTRANSPORTADORA: TIBStringField
      DisplayWidth = 1
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasMECANICO: TIBStringField
      DisplayWidth = 1
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasVENDEDOR: TIBStringField
      DisplayWidth = 1
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasCONTA: TIBStringField
      DisplayWidth = 4
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Visible = False
      Size = 4
    end
    object tblPessoasCOMISSAO: TIBBCDField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Visible = False
      Precision = 9
      Size = 2
    end
    object tblPessoasCOENDERECO: TIBStringField
      DisplayWidth = 50
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Visible = False
      Size = 50
    end
    object tblPessoasCOBAIRRO: TIBStringField
      DisplayWidth = 50
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Visible = False
      Size = 50
    end
    object tblPessoasCOCIDADE: TIBStringField
      DisplayWidth = 50
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Visible = False
      Size = 50
    end
    object tblPessoasCOESTADO: TIBStringField
      DisplayWidth = 2
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Visible = False
      Size = 2
    end
    object tblPessoasCOCEP: TIBStringField
      DisplayWidth = 9
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Visible = False
      Size = 9
    end
    object tblPessoasSPC: TIBStringField
      DisplayWidth = 1
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasREG_SPC: TIBStringField
      DisplayWidth = 1
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasEMPRESA: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Visible = False
      Size = 50
    end
    object tblPessoasADMISSAO: TDateField
      DisplayWidth = 10
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
      Visible = False
    end
    object tblPessoasSALARIO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPessoasEMPR_ENDERECO: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Visible = False
      Size = 50
    end
    object tblPessoasEMPR_BAIRRO: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Visible = False
      Size = 50
    end
    object tblPessoasEMPR_CIDADE: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Visible = False
      Size = 50
    end
    object tblPessoasEMPR_ESTADO: TIBStringField
      DisplayWidth = 50
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Visible = False
      Size = 50
    end
    object tblPessoasEMPR_CEP: TIBStringField
      DisplayWidth = 9
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Visible = False
      Size = 9
    end
    object tblPessoasEMPR_FONE: TIBStringField
      DisplayWidth = 12
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME1: TIBStringField
      DisplayWidth = 50
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Visible = False
      Size = 50
    end
    object tblPessoasREF_FONE1: TIBStringField
      DisplayWidth = 12
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_NOME2: TIBStringField
      DisplayWidth = 50
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Visible = False
      Size = 50
    end
    object tblPessoasREF_FONE2: TIBStringField
      DisplayWidth = 12
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML1: TIBStringField
      DisplayWidth = 1
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasREF_COML_FONE1: TIBStringField
      DisplayWidth = 12
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_COML2: TIBStringField
      DisplayWidth = 1
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasREF_COML_FONE2: TIBStringField
      DisplayWidth = 12
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      Visible = False
      FixedChar = True
      Size = 12
    end
    object tblPessoasREF_BANC: TIBStringField
      DisplayWidth = 3
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Visible = False
      Size = 3
    end
    object tblPessoasREF_AG_BANC: TIBStringField
      DisplayWidth = 4
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Visible = False
      Size = 4
    end
    object tblPessoasREF_CTA_BANC: TIBStringField
      DisplayWidth = 12
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Visible = False
      Size = 12
    end
    object tblPessoasFOTO: TIBStringField
      DisplayWidth = 8
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Visible = False
      Size = 8
    end
    object tblPessoasFINANCEIRA: TIBStringField
      DisplayWidth = 1
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasFABRICANTE: TIBStringField
      DisplayWidth = 1
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasCODIGO_MUNICIPIO: TIBStringField
      DisplayWidth = 7
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Visible = False
      Size = 7
    end
    object tblPessoasNOME_VENDEDOR: TIBStringField
      DisplayWidth = 20
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
      Visible = False
    end
    object tblPessoasCODIGOSGS: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
      Visible = False
    end
    object tblPessoasVENDEDOR_YNOVA: TIBStringField
      DisplayWidth = 1
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
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
    DataSet = cdsPessoas
    Left = 352
    Top = 88
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = tblPessoas
    Left = 280
    Top = 88
  end
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 312
    Top = 88
    object cdsPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPessoasNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTES"."NASCIMENTO"'
      Required = True
    end
    object cdsPessoasFONE1: TWideStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES"."FONE1"'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsPessoasFONE2: TWideStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES"."FONE2"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object cdsPessoasENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Required = True
      Size = 50
    end
    object cdsPessoasBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Required = True
      Size = 50
    end
    object cdsPessoasCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Required = True
      Size = 50
    end
    object cdsPessoasESTADO: TWideStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Required = True
      Size = 2
    end
    object cdsPessoasCEP: TWideStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Required = True
      Size = 9
    end
    object cdsPessoasCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = '"CLIENTES"."CADASTRO"'
    end
    object cdsPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object cdsPessoasCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object cdsPessoasIDENTIDADE: TWideStringField
      FieldName = 'IDENTIDADE'
      Origin = '"CLIENTES"."IDENTIDADE"'
      Required = True
    end
    object cdsPessoasCPF: TWideStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 4
    end
    object cdsPessoasNUM_CPF: TWideStringField
      FieldName = 'NUM_CPF'
      Origin = '"CLIENTES"."NUM_CPF"'
      Size = 18
    end
    object cdsPessoasPAI: TWideStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Required = True
      Size = 50
    end
    object cdsPessoasMAE: TWideStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Required = True
      Size = 50
    end
    object cdsPessoasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = '"CLIENTES"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object cdsPessoasFONE3: TWideStringField
      FieldName = 'FONE3'
      Origin = '"CLIENTES"."FONE3"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLIENTE"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasFORNECEDOR: TWideStringField
      FieldName = 'FORNECEDOR'
      Origin = '"CLIENTES"."FORNECEDOR"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasTRANSPORTADORA: TWideStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CLIENTES"."TRANSPORTADORA"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasMECANICO: TWideStringField
      FieldName = 'MECANICO'
      Origin = '"CLIENTES"."MECANICO"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasCONTA: TWideStringField
      FieldName = 'CONTA'
      Origin = '"CLIENTES"."CONTA"'
      Size = 4
    end
    object cdsPessoasCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = '"CLIENTES"."COMISSAO"'
      Precision = 9
      Size = 2
    end
    object cdsPessoasCOENDERECO: TWideStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Size = 50
    end
    object cdsPessoasCOBAIRRO: TWideStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Size = 50
    end
    object cdsPessoasCOCIDADE: TWideStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Size = 50
    end
    object cdsPessoasCOESTADO: TWideStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Size = 2
    end
    object cdsPessoasCOCEP: TWideStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
      Size = 9
    end
    object cdsPessoasSPC: TWideStringField
      FieldName = 'SPC'
      Origin = '"CLIENTES"."SPC"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasREG_SPC: TWideStringField
      FieldName = 'REG_SPC'
      Origin = '"CLIENTES"."REG_SPC"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Origin = '"CLIENTES"."EMPRESA"'
      Size = 50
    end
    object cdsPessoasADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      Origin = '"CLIENTES"."ADMISSAO"'
    end
    object cdsPessoasSALARIO: TBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      Precision = 18
      Size = 2
    end
    object cdsPessoasEMPR_ENDERECO: TWideStringField
      FieldName = 'EMPR_ENDERECO'
      Origin = '"CLIENTES"."EMPR_ENDERECO"'
      Size = 50
    end
    object cdsPessoasEMPR_BAIRRO: TWideStringField
      FieldName = 'EMPR_BAIRRO'
      Origin = '"CLIENTES"."EMPR_BAIRRO"'
      Size = 50
    end
    object cdsPessoasEMPR_CIDADE: TWideStringField
      FieldName = 'EMPR_CIDADE'
      Origin = '"CLIENTES"."EMPR_CIDADE"'
      Size = 50
    end
    object cdsPessoasEMPR_ESTADO: TWideStringField
      FieldName = 'EMPR_ESTADO'
      Origin = '"CLIENTES"."EMPR_ESTADO"'
      Size = 50
    end
    object cdsPessoasEMPR_CEP: TWideStringField
      FieldName = 'EMPR_CEP'
      Origin = '"CLIENTES"."EMPR_CEP"'
      Size = 9
    end
    object cdsPessoasEMPR_FONE: TWideStringField
      FieldName = 'EMPR_FONE'
      Origin = '"CLIENTES"."EMPR_FONE"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasREF_NOME1: TWideStringField
      FieldName = 'REF_NOME1'
      Origin = '"CLIENTES"."REF_NOME1"'
      Size = 50
    end
    object cdsPessoasREF_FONE1: TWideStringField
      FieldName = 'REF_FONE1'
      Origin = '"CLIENTES"."REF_FONE1"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasREF_NOME2: TWideStringField
      FieldName = 'REF_NOME2'
      Origin = '"CLIENTES"."REF_NOME2"'
      Size = 50
    end
    object cdsPessoasREF_FONE2: TWideStringField
      FieldName = 'REF_FONE2'
      Origin = '"CLIENTES"."REF_FONE2"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasREF_COML1: TWideStringField
      FieldName = 'REF_COML1'
      Origin = '"CLIENTES"."REF_COML1"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasREF_COML_FONE1: TWideStringField
      FieldName = 'REF_COML_FONE1'
      Origin = '"CLIENTES"."REF_COML_FONE1"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasREF_COML2: TWideStringField
      FieldName = 'REF_COML2'
      Origin = '"CLIENTES"."REF_COML2"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasREF_COML_FONE2: TWideStringField
      FieldName = 'REF_COML_FONE2'
      Origin = '"CLIENTES"."REF_COML_FONE2"'
      FixedChar = True
      Size = 12
    end
    object cdsPessoasREF_BANC: TWideStringField
      FieldName = 'REF_BANC'
      Origin = '"CLIENTES"."REF_BANC"'
      Size = 3
    end
    object cdsPessoasREF_AG_BANC: TWideStringField
      FieldName = 'REF_AG_BANC'
      Origin = '"CLIENTES"."REF_AG_BANC"'
      Size = 4
    end
    object cdsPessoasREF_CTA_BANC: TWideStringField
      FieldName = 'REF_CTA_BANC'
      Origin = '"CLIENTES"."REF_CTA_BANC"'
      Size = 12
    end
    object cdsPessoasFOTO: TWideStringField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object cdsPessoasFINANCEIRA: TWideStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasCODIGO_MUNICIPIO: TWideStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object cdsPessoasNOME_VENDEDOR: TWideStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object cdsPessoasCODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
    end
    object cdsPessoasVENDEDOR_YNOVA: TWideStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasNOME: TWideStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object cdsPessoasFATURA_COM_DEBITOS: TWideStringField
      FieldName = 'FATURA_COM_DEBITOS'
      Origin = '"CLIENTES"."FATURA_COM_DEBITOS"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = '"CLIENTES"."NUMERO"'
      Size = 5
    end
    object cdsPessoasCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTES"."COMPLEMENTO"'
      Size = 10
    end
    object cdsPessoasRETENCAO_ISS: TWideStringField
      FieldName = 'RETENCAO_ISS'
      Origin = '"CLIENTES"."RETENCAO_ISS"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasCONSUMIDOR: TWideStringField
      FieldName = 'CONSUMIDOR'
      Origin = '"CLIENTES"."CONSUMIDOR"'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasIM: TWideStringField
      FieldName = 'IM'
      Origin = '"CLIENTES"."IM"'
      Size = 10
    end
  end
end
