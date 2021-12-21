object BoxRelatorioPatrimonial: TBoxRelatorioPatrimonial
  Left = 0
  Top = 0
  Caption = 'RelatorioPatrimonial'
  ClientHeight = 448
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 448
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 55
      Height = 13
      Caption = 'Per'#237'odo: de'
    end
    object Label3: TLabel
      Left = 199
      Top = 46
      Width = 6
      Height = 13
      Caption = #224
    end
    object DadosFiltro: TLabel
      Left = 8
      Top = 20
      Width = 345
      Height = 17
      AutoSize = False
      Caption = 'Dados para o filtro do relat'#243'rio:'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object DataInicial: TDateEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DataFinal: TDateEdit
      Left = 211
      Top = 43
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object BtnImprimir: TBitBtn
      Left = 746
      Top = 17
      Width = 121
      Height = 26
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C00000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FF
        FF00C0C0C000C0C0C000000000000000000000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
        8000C0C0C000C0C0C00000000000C0C0C00000000000FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C000C0C0C0000000000000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000C0C0C00000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C0C0C00000000000C0C0C0000000000000000000FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000C0C0C00000000000C0C0C00000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
        0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
        000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 428
      Width = 949
      Height = 19
      Panels = <>
    end
    object BitBtn1: TBitBtn
      Left = 146
      Top = 70
      Width = 121
      Height = 26
      Caption = 'Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C00000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FF
        FF00C0C0C000C0C0C000000000000000000000000000FF00FF0000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
        8000C0C0C000C0C0C00000000000C0C0C00000000000FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C000C0C0C0000000000000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000C0C0C00000000000C0C0C00000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C0C0C00000000000C0C0C0000000000000000000FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000C0C0C00000000000C0C0C00000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
        0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
        000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 102
      Width = 929
      Height = 314
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MESANO'
          Title.Alignment = taCenter
          Title.Caption = 'Per'#237'odo:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CX_BANCOS'
          Title.Caption = 'Cx e Bancos:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PENDENCIAS_PEDIDOS'
          Title.Caption = 'Pend'#234'ncias pedidos:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_VEICULOS'
          Title.Alignment = taCenter
          Title.Caption = 'Est.Ve'#237'c.c/Trans.s/terc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EST_VEIC_PEND_VEND'
          Title.Alignment = taCenter
          Title.Caption = 'Est.Ve'#237'c.Pend.Vend.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTAS_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Contas '#224' pagar:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTAS_RECEBER'
          Title.Alignment = taCenter
          Title.Caption = 'Contas receber '#224' vencer:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTAS_RECEBER_VENCIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Contas receber vencido:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_PECAS'
          Title.Alignment = taCenter
          Title.Caption = 'Estoque pe'#231'as:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PL'
          Title.Alignment = taCenter
          Title.Caption = 'Patr.L'#237'q.:'
          Visible = True
        end>
    end
  end
  object DataSourcePedidoVeiculos: TDataSource
    AutoEdit = False
    Left = 304
    Top = 72
  end
  object tblPedidoVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Pedido_Veiculos'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into Pedido_Veiculos'
      '  (ID_CONCESSIONARIA, ID_PEDIDO_VEICULOS, VALOR_A_RECEBER)'
      'values'
      '  (:ID_CONCESSIONARIA, :ID_PEDIDO_VEICULOS, :VALOR_A_RECEBER)')
    RefreshSQL.Strings = (
      'Select '
      '  NF,'
      '  DATA_NF,'
      '  ID_CONCESSIONARIA,'
      '  ID_PEDIDO_VEICULOS,'
      '  CHASSI,'
      '  MODELO,'
      '  ANO_MODELO,'
      '  ANO_FABRICACAO,'
      '  VALOR,'
      '  VALOR_A_RECEBER'
      'from Pedido_Veiculos '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'select '
      'p.id_Vendedor,'
      'p.NF, '
      'p.DATA_NF,  '
      'p.ID_CONCESSIONARIA,'
      'p.id_pedido_Veiculos,'
      'p.chassi,'
      'p.modelo,'
      'p.ano_modelo,'
      'p.ano_fabricacao,'
      
        'COALESCE( p.VALOR_A_RECEBER , 0 ) - COALESCE( v.CUSTO_ICMS , 0 )' +
        ' AS VALOR,'
      'p.VALOR_A_RECEBER,'
      'v.CUSTO_ICMS,'
      'c.empresa, c.cidade,'
      'cl.id_Concessionaria'
      ''
      'from Pedido_Veiculos P'
      ''
      'inner join clientes cl on cl.id_clientes = p.id_vendedor'
      
        'inner join Concessionaria c on cl.id_concessionaria = c.id_conce' +
        'ssionaria'
      'inner join Veiculos V on P.id_veiculos = v.id_Veiculos'
      ''
      ''
      'where'
      '(p.status = '#39'Faturado'#39' or p.status = '#39'Fechado'#39')'
      'and'
      'p.DATA_NF >= :DataInicial'
      'and'
      'p.DATA_NF <= :DataFinal'
      ''
      'order by cl.Id_Concessionaria, p.id_vendedor, p.data_nf, 1'
      '')
    ModifySQL.Strings = (
      'update Pedido_Veiculos'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 272
    Top = 72
    object tblPedidoVeiculosNF: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object tblPedidoVeiculosDATA_NF: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
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
    object tblPedidoVeiculosVALOR: TIBBCDField
      FieldName = 'VALOR'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosCUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object tblPedidoVeiculosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
    end
    object tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPedidoVeiculosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object tblPedidoVeiculosID_CONCESSIONARIA1: TIntegerField
      FieldName = 'ID_CONCESSIONARIA1'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
      Required = True
    end
  end
  object tblNofisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from DESPESAS'
      'where'
      '  ID_DESPESAS = :OLD_ID_DESPESAS')
    InsertSQL.Strings = (
      'insert into DESPESAS'
      
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
      'from DESPESAS '
      'where'
      '  ID_DESPESAS = :ID_DESPESAS')
    SelectSQL.Strings = (
      'select '
      'n.NUMERO, '
      'n.EMISSAO,  '
      'n.ID_CONCESSIONARIA,'
      'n.ORIGEM,'
      
        'COALESCE( n.TOT_NOTA , 0 ) - COALESCE( n.VAL_SERV , 0 ) AS VALOR' +
        ','
      'n.VAL_SERV,'
      'n.TOT_PROD,'
      'n.tot_nota,'
      'c.empresa, c.cidade'
      ''
      'from Nofisa N'
      ''
      
        'inner join Concessionaria c on N.id_concessionaria = c.id_conces' +
        'sionaria'
      ''
      'where'
      'N.emissao >= :DataInicial'
      'and'
      'N.Emissao <= :DataFinal'
      'and '
      'N.ENT_SAI = '#39'S'#39
      'and'
      '(N.Origem = '#39'O'#39' or N.Origem = '#39'P'#39')'
      ''
      'order by c.Id_Concessionaria, N.Origem, 1'
      '')
    ModifySQL.Strings = (
      'update DESPESAS'
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
    Active = True
    Left = 272
    Top = 40
    object tblNofisaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object tblNofisaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object tblNofisaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblNofisaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaVALOR: TIBBCDField
      FieldName = 'VALOR'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      Precision = 18
      Size = 2
    end
    object tblNofisaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object tblNofisaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
    end
    object tblNofisaDESC_ORIGEM: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESC_ORIGEM'
      Size = 30
      Calculated = True
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
  end
  object tblConcessionaria: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Concessionaria'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into Concessionaria'
      
        '  (ALIQUOTA_ICMS1, ALIQUOTA_ICMS2, ALIQUOTA_ISS, BAIRRO, CEP, CI' +
        'DADE, CNAE, '
      
        '   CNPJ, COD_CONCES, CODIGO_EMPRESA_JB, CODIGO_MUNICIPIO, COMPLE' +
        'MENTO, '
      
        '   CONCESSION, EMPRESA, ENDERECO, ESTADO, FANTASIA, HOST, ID_CON' +
        'CESSIONARIA, '
      '   IE, IM, NUMERO, PASS, PORT, TELEFONE, USUARIO)'
      'values'
      
        '  (:ALIQUOTA_ICMS1, :ALIQUOTA_ICMS2, :ALIQUOTA_ISS, :BAIRRO, :CE' +
        'P, :CIDADE, '
      
        '   :CNAE, :CNPJ, :COD_CONCES, :CODIGO_EMPRESA_JB, :CODIGO_MUNICI' +
        'PIO, :COMPLEMENTO, '
      
        '   :CONCESSION, :EMPRESA, :ENDERECO, :ESTADO, :FANTASIA, :HOST, ' +
        ':ID_CONCESSIONARIA, '
      '   :IE, :IM, :NUMERO, :PASS, :PORT, :TELEFONE, :USUARIO)')
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
      '  PASS'
      'from Concessionaria '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from Concessionaria'
      '')
    ModifySQL.Strings = (
      'update Concessionaria'
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
      '  USUARIO = :USUARIO'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    Active = True
    Left = 272
    Top = 8
    object tblConcessionariaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONCESSIONARIA"."ID_CONCESSIONARIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblConcessionariaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"CONCESSIONARIA"."EMPRESA"'
      Required = True
      Size = 50
    end
    object tblConcessionariaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CONCESSIONARIA"."ENDERECO"'
      Required = True
      Size = 50
    end
    object tblConcessionariaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CONCESSIONARIA"."CIDADE"'
    end
    object tblConcessionariaESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CONCESSIONARIA"."ESTADO"'
      Required = True
      Size = 2
    end
    object tblConcessionariaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CONCESSIONARIA"."CNPJ"'
      Size = 18
    end
    object tblConcessionariaIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CONCESSIONARIA"."IE"'
      Size = 12
    end
    object tblConcessionariaCONCESSION: TIBStringField
      FieldName = 'CONCESSION'
      Origin = '"CONCESSIONARIA"."CONCESSION"'
      Size = 15
    end
    object tblConcessionariaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CONCESSIONARIA"."TELEFONE"'
      Size = 12
    end
    object tblConcessionariaCOD_CONCES: TIBStringField
      FieldName = 'COD_CONCES'
      Origin = '"CONCESSIONARIA"."COD_CONCES"'
      Size = 9
    end
    object tblConcessionariaALIQUOTA_ISS: TIBBCDField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ISS"'
      Precision = 9
      Size = 4
    end
    object tblConcessionariaALIQUOTA_ICMS1: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS1'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS1"'
      Precision = 9
      Size = 4
    end
    object tblConcessionariaALIQUOTA_ICMS2: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS2'
      Origin = '"CONCESSIONARIA"."ALIQUOTA_ICMS2"'
      Precision = 9
      Size = 4
    end
    object tblConcessionariaCODIGO_EMPRESA_JB: TIBStringField
      FieldName = 'CODIGO_EMPRESA_JB'
      Origin = '"CONCESSIONARIA"."CODIGO_EMPRESA_JB"'
      Size = 3
    end
    object tblConcessionariaIM: TIBStringField
      FieldName = 'IM'
      Origin = '"CONCESSIONARIA"."IM"'
      Size = 10
    end
    object tblConcessionariaCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = '"CONCESSIONARIA"."CNAE"'
      Size = 7
    end
    object tblConcessionariaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CONCESSIONARIA"."FANTASIA"'
    end
    object tblConcessionariaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CONCESSIONARIA"."CEP"'
      Size = 9
    end
    object tblConcessionariaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CONCESSIONARIA"."NUMERO"'
      Size = 5
    end
    object tblConcessionariaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CONCESSIONARIA"."COMPLEMENTO"'
      Size = 4
    end
    object tblConcessionariaCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CONCESSIONARIA"."CODIGO_MUNICIPIO"'
      Size = 7
    end
    object tblConcessionariaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CONCESSIONARIA"."BAIRRO"'
    end
    object tblConcessionariaHOST: TIBStringField
      FieldName = 'HOST'
      Origin = '"CONCESSIONARIA"."HOST"'
    end
    object tblConcessionariaPORT: TIBStringField
      FieldName = 'PORT'
      Origin = '"CONCESSIONARIA"."PORT"'
      Size = 3
    end
    object tblConcessionariaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"CONCESSIONARIA"."USUARIO"'
      Size = 21
    end
    object tblConcessionariaPASS: TIBStringField
      FieldName = 'PASS'
      Origin = '"CONCESSIONARIA"."PASS"'
    end
  end
  object DataSourceConcessionaria: TDataSource
    AutoEdit = False
    DataSet = tblConcessionaria
    Left = 304
    Top = 8
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 304
    Top = 40
  end
  object tblAuxReceita: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PERIODO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'RECEITA_VEICULOS'
        DataType = ftCurrency
      end
      item
        Name = 'CUSTO_VEICULOS'
        DataType = ftFloat
      end
      item
        Name = 'LUCRO_VEICULOS'
        DataType = ftCurrency
      end
      item
        Name = 'RECEITA_PECAS'
        DataType = ftCurrency
      end
      item
        Name = 'RECEITA_PECAS_OFICINA'
        DataType = ftCurrency
      end
      item
        Name = 'RECEITA_MO'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL_MC'
        DataType = ftCurrency
      end
      item
        Name = 'DESPESAS'
        DataType = ftCurrency
      end
      item
        Name = 'LUCRO'
        DataType = ftCurrency
      end
      item
        Name = 'MESANO'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 472
    Top = 64
    object tblAuxReceitaMESANO: TStringField
      FieldName = 'MESANO'
      Size = 7
    end
    object tblAuxReceitaCx_Bancos: TCurrencyField
      FieldName = 'CX_BANCOS'
    end
    object tblAuxReceitaPendencias_Pedidos: TCurrencyField
      FieldName = 'PENDENCIAS_PEDIDOS'
    end
    object tblAuxReceitaRECEITA_VEICULO: TCurrencyField
      FieldName = 'ESTOQUE_VEICULOS'
    end
    object tblAuxReceitaALIQ_ICMS: TFloatField
      FieldName = 'EST_VEIC_PEND_VEND'
      currency = True
    end
    object tblAuxReceitaTOTAL: TCurrencyField
      FieldName = 'CONTAS_PAGAR'
    end
    object tblAuxReceitaBASE_ICMS: TCurrencyField
      FieldName = 'CONTAS_RECEBER'
    end
    object tblAuxReceitaLUCRO: TCurrencyField
      FieldName = 'CONTAS_RECEBER_VENCIDO'
    end
    object tblAuxReceitaICMS: TCurrencyField
      FieldName = 'ESTOQUE_PECAS'
    end
    object tblAuxReceitaPL2: TCurrencyField
      FieldName = 'PL'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tblAuxReceita
    Left = 504
    Top = 64
  end
  object IBQuery8: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'Select Sum(v.Custo_ICMS) as valor from Veiculos v'
      'inner join pedido_veiculos pv on pv.id_veiculos = v.id_veiculos'
      'WHERE pv.status = '#39'Pendente'#39
      'or'
      'pv.Status = '#39'Aprovado'#39
      '')
    Left = 368
    Top = 208
  end
  object IBQuery7: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'Select Sum(Custo_ICMS) as valor from Veiculos'
      'WHERE status <>  '#39'VENDIDO'#39
      'AND'
      'Status <> '#39'DEVOLVIDO'#39
      'and'
      'status<> '#39'TRANSFERIDO'#39
      'and'
      'Status <> '#39'TERCEIRO'#39)
    Left = 368
    Top = 176
  end
  object IBQuery9: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 448
    Top = 208
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 552
    Top = 200
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 584
    Top = 200
  end
  object IBQuery3: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 552
    Top = 232
  end
  object IBQuery4: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 584
    Top = 232
  end
  object IBQuery5: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 616
    Top = 200
  end
  object IBQuery6: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    SQL.Strings = (
      'select sum(CST_MEDIO*ESTOQUE) as Valor from Pecas_Estoque'
      'where'
      'Estoque > 0'
      '')
    Left = 616
    Top = 232
  end
end
