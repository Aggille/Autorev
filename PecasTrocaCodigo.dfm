object BoxPecasTrocaCodigo: TBoxPecasTrocaCodigo
  Left = 0
  Top = 0
  Caption = 'Pecas Troca ID'
  ClientHeight = 310
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 69
    Width = 82
    Height = 13
    Caption = 'Sequencia velha:'
  end
  object Label3: TLabel
    Left = 56
    Top = 112
    Width = 80
    Height = 13
    Caption = 'Sequencia nova:'
  end
  object BtnConfirma: TBitBtn
    Left = 216
    Top = 107
    Width = 100
    Height = 26
    Caption = 'Confirma'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnConfirmaClick
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
  object Sequencia_Velha: TEdit
    Left = 56
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Sequencia_nova: TEdit
    Left = 56
    Top = 131
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object tblPecasMovimentacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecasEstoqueAfterCancel
    AfterDelete = tblPecasEstoqueAfterPost
    AfterPost = tblPecasEstoqueAfterPost
    DeleteSQL.Strings = (
      'delete from PECAS_MOVIMENTACAO'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    InsertSQL.Strings = (
      'insert into PECAS_MOVIMENTACAO'
      
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
      'from PECAS_MOVIMENTACAO '
      'where'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO')
    SelectSQL.Strings = (
      'select * from PECAS_MOVIMENTACAO'
      'Where ID_PECAS = :Id')
    ModifySQL.Strings = (
      'update PECAS_MOVIMENTACAO'
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
    Left = 160
    Top = 184
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
    AutoEdit = False
    DataSet = tblPecasMovimentacao
    Left = 128
    Top = 184
  end
  object DataSourcePecas: TDataSource
    AutoEdit = False
    DataSet = tblPecas
    Left = 128
    Top = 152
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecasEstoqueAfterCancel
    AfterDelete = tblPecasEstoqueAfterPost
    AfterPost = tblPecasEstoqueAfterPost
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
      
        '   ORIGINAL, PPS, PRECO, PRECO_GAR, QTD_PEDIDA, ST_COFINS, SUBST' +
        '_TRIB, '
      '   SUBSTITUTO, UNIDADE)'
      'values'
      
        '  (:CFOP1, :CFOP2, :COD_PROC, :COD_TRIB, :CODIGO, :CST, :DESCRIC' +
        'AO, :ESPECIAL, '
      
        '   :FORA_LINHA, :GRUPO, :ICMS, :ID_PECAS, :IPI, :LISTA, :MIN_PED' +
        'IDO, :NCM, '
      
        '   :NOVASUBS, :ORIGINAL, :PPS, :PRECO, :PRECO_GAR, :QTD_PEDIDA, ' +
        ':ST_COFINS, '
      '   :SUBST_TRIB, :SUBSTITUTO, :UNIDADE)')
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
      '  CST'
      'from Pecas '
      'where'
      '  ID_PECAS = :ID_PECAS')
    SelectSQL.Strings = (
      'select * from Pecas'
      'where ID_Pecas = :id')
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
    Left = 160
    Top = 152
    object tblPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPecasPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"PECAS"."PRECO_GAR"'
      currency = True
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
    object tblPecasPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECAS"."PPS"'
      currency = True
      Precision = 18
      Size = 2
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
  end
  object tblPecasEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecasEstoqueAfterCancel
    AfterDelete = tblPecasEstoqueAfterPost
    AfterPost = tblPecasEstoqueAfterPost
    DeleteSQL.Strings = (
      'delete from PECAS_ESTOQUE'
      'where'
      '  ID_PECAS_ESTOQUE = :OLD_ID_PECAS_ESTOQUE')
    InsertSQL.Strings = (
      'insert into PECAS_ESTOQUE'
      
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
      'from PECAS_ESTOQUE '
      'where'
      '  ID_PECAS_ESTOQUE = :ID_PECAS_ESTOQUE')
    SelectSQL.Strings = (
      'select * from PECAS_ESTOQUE'
      'Where ID_Pecas = :Id')
    ModifySQL.Strings = (
      'update PECAS_ESTOQUE'
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
    Left = 72
    Top = 160
    object tblPecasEstoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
    end
    object tblPecasEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
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
  end
  object DataSourcePecasEstoque: TDataSource
    AutoEdit = False
    DataSet = tblPecasEstoque
    Left = 40
    Top = 160
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 272
    Top = 160
  end
end
