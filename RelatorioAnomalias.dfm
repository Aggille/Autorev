object BoxRelatorioAnomalias: TBoxRelatorioAnomalias
  Left = 15
  Top = 85
  Caption = 'Relat'#243'rio de Anomalias'
  ClientHeight = 585
  ClientWidth = 963
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
    Width = 963
    Height = 585
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 131
      Height = 13
      Caption = 'Entradas de caixa - balc'#227'o:'
    end
    object Label2: TLabel
      Left = 496
      Top = 6
      Width = 170
      Height = 13
      Caption = 'Entradas de caixa/banco - pedidos:'
    end
    object Label3: TLabel
      Left = 16
      Top = 151
      Width = 141
      Height = 13
      Caption = 'Pedidos de pe'#231'as pendentes:'
    end
    object Label4: TLabel
      Left = 496
      Top = 151
      Width = 164
      Height = 13
      Caption = 'Pedidos de p'#243's-venda pendentes:'
    end
    object Label5: TLabel
      Left = 16
      Top = 287
      Width = 151
      Height = 13
      Caption = 'Pedidos de ve'#237'culos pendentes:'
    end
    object Label6: TLabel
      Left = 16
      Top = 423
      Width = 130
      Height = 13
      Caption = 'Renegocia'#231#245'es pendentes:'
    end
    object Label7: TLabel
      Left = 496
      Top = 287
      Width = 224
      Height = 13
      Caption = 'Pedidos de ve'#237'culos faturados e n'#227'o fechados:'
    end
    object Label8: TLabel
      Left = 488
      Top = 419
      Width = 122
      Height = 13
      Caption = 'Atendimentos em aberto:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 564
      Width = 961
      Height = 20
      Panels = <>
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 25
      Width = 474
      Height = 120
      DataSource = DataSourceCaixa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Documento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_LANCAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome:'
          Width = 218
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Title.Caption = 'Hist'#243'rico:'
          Width = 248
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 488
      Top = 25
      Width = 466
      Height = 120
      DataSource = DataSourceCreceber
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid2TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Documento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEZES'
          Title.Alignment = taCenter
          Title.Caption = 'Vezes:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PEDIDO_VEICULOS'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor:'
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
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Title.Caption = 'Hist'#243'rico:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status:'
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 8
      Top = 442
      Width = 466
      Height = 120
      DataSource = DataSourceCreceber2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid3TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Documento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEZES'
          Title.Alignment = taCenter
          Title.Caption = 'Vezes:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PEDIDO_VEICULOS'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor:'
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
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Title.Caption = 'Hist'#243'rico:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status:'
          Visible = True
        end>
    end
    object DBGrid4: TDBGrid
      Left = 8
      Top = 170
      Width = 474
      Height = 111
      DataSource = DataSourceOrcamentoPecas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid4TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ORCAMENTO_PECAS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_VENDA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_NESTA_VENDA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_LIQUIDO_VENDA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VENDEDOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_NOTA_FISCAL'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DBGrid5: TDBGrid
      Left = 488
      Top = 170
      Width = 466
      Height = 111
      DataSource = DataSourceAtendimento
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid5TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ATENDIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MECANICO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CATEGORIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTRADA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SAIDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORC_OS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEMO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PECAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_SERVICOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PECAS_TABELA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_LIQUIDO_VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ATENDENTE'
          Visible = True
        end>
    end
    object DBGrid6: TDBGrid
      Left = 8
      Top = 306
      Width = 474
      Height = 111
      DataSource = DataSourcePedidoVeiculos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid6TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PEDIDO_VEICULOS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_AVALISTA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VEICULOS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_COMISSAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VENDEDOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FINANCEIRA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DA_VENDA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_A_RECEBER'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_CANCELAMENTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF_CANCELAMENTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VIP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NORMAL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_EXCLUSIVO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VIP2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NORMAL2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_EXCLUSIVO2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENAVAM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TAXAS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MODELO_VEICULO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFINANCEIRA'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DBGrid7: TDBGrid
      Left = 488
      Top = 306
      Width = 466
      Height = 111
      DataSource = DataSourcePedidoVeiculos2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid7TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Conces.:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PEDIDO_VEICULOS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_AVALISTA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VEICULOS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_COMISSAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VENDEDOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FINANCEIRA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DA_VENDA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_A_RECEBER'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_CANCELAMENTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NF_CANCELAMENTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VIP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NORMAL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_EXCLUSIVO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VIP2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NORMAL2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_EXCLUSIVO2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENAVAM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TAXAS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MODELO_VEICULO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFINANCEIRA'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DBGrid8: TDBGrid
      Left = 488
      Top = 438
      Width = 466
      Height = 120
      DataSource = DataSourceAtendimento2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid8TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ATENDIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CONCESSIONARIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MECANICO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CATEGORIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_FABRICACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTRADA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SAIDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORC_OS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEMO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PECAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_SERVICOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PECAS_TABELA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_LIQUIDO_VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ATENDENTE'
          Visible = True
        end>
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = cdsCaixa
    Left = 272
    Top = 88
  end
  object tblCaixa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
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
      '  CONTA,'
      '  DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO,'
      '  DOCUMENTO,'
      '  FORMA_PAG,'
      '  HISTORICO,'
      '  ID_CAIXA,'
      '  ID_CLIENTES,'
      '  ID_CONCESSIONARIA,'
      '  ID_DEPOSITO,'
      '  JUROS,'
      '  NATUREZA,'
      '  ORIGEM,'
      '  STATUS,'
      '  STATUS_BANCO,'
      '  VALOR'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select c.CONTA, c.DATA_LANCAMENTO, c.DATA_RECEBIMENTO,'
      'c.DOCUMENTO, c.FORMA_PAG, c.HISTORICO, c.ID_CAIXA, '
      'c.ID_CLIENTES, c.ID_CONCESSIONARIA, c.ID_DEPOSITO, '
      'c.JUROS, c.NATUREZA, c.ORIGEM, c.STATUS, c.STATUS_BANCO,'
      'c.VALOR, l.nome'
      'from CAIXA c'
      'inner join clientes l on c.id_clientes = l.id_clientes'
      'where c.Status = '#39'Pendente'#39
      'and c.Natureza = '#39'E'#39
      'order by c.id_Concessionaria')
    ModifySQL.Strings = (
      'update CAIXA'
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
    Left = 176
    Top = 88
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      Size = 4
    end
    object tblCaixaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CAIXA"."STATUS"'
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 50
    end
    object tblCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
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
    object tblCaixaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object tblCreceber: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Creceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into Creceber'
      
        '  (BANCO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ID_AVALISTA, ID_' +
        'CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_CRECEBER, ID_FORMA_PAGAMENTO, ID_PEDIDO' +
        '_VEICULOS, '
      
        '   ORIGEM, PAGAMENTO, PARCELA, STATUS, TOTAL, VALOR, VALOR_PAGO,' +
        ' VENCIMENTO, '
      '   VEZES)'
      'values'
      
        '  (:BANCO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTORICO, :ID_AVALIST' +
        'A, :ID_CLIENTES, '
      
        '   :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_FORMA_PAGAMENTO, :ID_PE' +
        'DIDO_VEICULOS, '
      
        '   :ORIGEM, :PAGAMENTO, :PARCELA, :STATUS, :TOTAL, :VALOR, :VALO' +
        'R_PAGO, '
      '   :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
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
      '  ID_PEDIDO_VEICULOS'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select * from Creceber'
      'where status= '#39'Pendente'#39
      'order by id_Concessionaria'
      '')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
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
    Left = 592
    Top = 72
    object tblCreceberID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCreceberID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object tblCreceberID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object tblCreceberID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
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
    object tblCreceberORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCreceberCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object tblCreceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCreceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
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
      Size = 4
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
    object tblCreceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = cdsCreceber
    Left = 688
    Top = 72
  end
  object tblOrcamentoPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from ORCAMENTO_PECAS'
      'where'
      '  ID_ORCAMENTO_PECAS = :OLD_ID_ORCAMENTO_PECAS')
    InsertSQL.Strings = (
      'insert into ORCAMENTO_PECAS'
      
        '  (DESCONTO, ID_CLIENTES, ID_CONCESSIONARIA, ID_ORCAMENTO_PECAS,' +
        ' ID_VENDEDOR, '
      
        '   NUMERO_NOTA_FISCAL, STATUS, TOTAL_NESTA_VENDA, TOTAL_VENDA, V' +
        'ALOR_LIQUIDO_VENDA)'
      'values'
      
        '  (:DESCONTO, :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_ORCAMENTO_PE' +
        'CAS, :ID_VENDEDOR, '
      
        '   :NUMERO_NOTA_FISCAL, :STATUS, :TOTAL_NESTA_VENDA, :TOTAL_VEND' +
        'A, :VALOR_LIQUIDO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_ORCAMENTO_PECAS,'
      '  ID_CLIENTES,'
      '  ID_CONCESSIONARIA,'
      '  TOTAL_VENDA,'
      '  TOTAL_NESTA_VENDA,'
      '  STATUS,'
      '  DESCONTO,'
      '  VALOR_LIQUIDO_VENDA,'
      '  ID_VENDEDOR,'
      '  NUMERO_NOTA_FISCAL'
      'from ORCAMENTO_PECAS '
      'where'
      '  ID_ORCAMENTO_PECAS = :ID_ORCAMENTO_PECAS')
    SelectSQL.Strings = (
      'select * from ORCAMENTO_PECAS'
      'where'
      'Status = '#39'Pendente'#39
      'order by id_Concessionaria'
      '')
    ModifySQL.Strings = (
      'update ORCAMENTO_PECAS'
      'set'
      '  DESCONTO = :DESCONTO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_ORCAMENTO_PECAS = :ID_ORCAMENTO_PECAS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  NUMERO_NOTA_FISCAL = :NUMERO_NOTA_FISCAL,'
      '  STATUS = :STATUS,'
      '  TOTAL_NESTA_VENDA = :TOTAL_NESTA_VENDA,'
      '  TOTAL_VENDA = :TOTAL_VENDA,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ORCAMENTO_PECAS = :OLD_ID_ORCAMENTO_PECAS')
    Left = 120
    Top = 218
    object tblOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField
      FieldName = 'ID_ORCAMENTO_PECAS'
      Origin = '"ORCAMENTO_PECAS"."ID_ORCAMENTO_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblOrcamentoPecasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ORCAMENTO_PECAS"."ID_CLIENTES"'
    end
    object tblOrcamentoPecasTOTAL_VENDA: TIBBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = '"ORCAMENTO_PECAS"."TOTAL_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblOrcamentoPecasTOTAL_NESTA_VENDA: TIBBCDField
      FieldName = 'TOTAL_NESTA_VENDA'
      Origin = '"ORCAMENTO_PECAS"."TOTAL_NESTA_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblOrcamentoPecasSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ORCAMENTO_PECAS"."STATUS"'
    end
    object tblOrcamentoPecasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"ORCAMENTO_PECAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblOrcamentoPecasVALOR_LIQUIDO_VENDA: TIBBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ORCAMENTO_PECAS"."VALOR_LIQUIDO_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblOrcamentoPecasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ORCAMENTO_PECAS"."ID_CONCESSIONARIA"'
    end
    object tblOrcamentoPecasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"ORCAMENTO_PECAS"."ID_VENDEDOR"'
    end
    object tblOrcamentoPecasNUMERO_NOTA_FISCAL: TIntegerField
      FieldName = 'NUMERO_NOTA_FISCAL'
      Origin = '"ORCAMENTO_PECAS"."NUMERO_NOTA_FISCAL"'
    end
  end
  object DataSourceOrcamentoPecas: TDataSource
    AutoEdit = False
    DataSet = cdsOrcamentoPecas
    Left = 224
    Top = 218
  end
  object tblAtendimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from ATENDIMENTO'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    InsertSQL.Strings = (
      'insert into ATENDIMENTO'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, COR, DATA_ENTRADA, DATA_S' +
        'AIDA, DESCONTO, '
      
        '   ID_ATENDENTE, ID_ATENDIMENTO, ID_CATEGORIA, ID_CLIENTES, ID_C' +
        'ONCESSIONARIA, '
      
        '   ID_MECANICO, KM, MARCA, MEMO, MODELO, ORC_OS, PLACA, STATUS, ' +
        'TOTAL_PECAS, '
      '   TOTAL_PECAS_TABELA, TOTAL_SERVICOS, VALOR_LIQUIDO_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :COR, :DATA_ENTRADA, :' +
        'DATA_SAIDA, '
      
        '   :DESCONTO, :ID_ATENDENTE, :ID_ATENDIMENTO, :ID_CATEGORIA, :ID' +
        '_CLIENTES, '
      
        '   :ID_CONCESSIONARIA, :ID_MECANICO, :KM, :MARCA, :MEMO, :MODELO' +
        ', :ORC_OS, '
      
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
      '  ID_ATENDENTE'
      'from ATENDIMENTO '
      'where'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO')
    SelectSQL.Strings = (
      'select * from ATENDIMENTO'
      'where id_atendimento = :idAtendimento'
      'and'
      'id_Concessionaria = :idConcessionaria'
      'order by id_Concessionaria')
    ModifySQL.Strings = (
      'update ATENDIMENTO'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCONTO = :DESCONTO,'
      '  ID_ATENDENTE = :ID_ATENDENTE,'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MEMO = :MEMO,'
      '  MODELO = :MODELO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  TOTAL_PECAS = :TOTAL_PECAS,'
      '  TOTAL_PECAS_TABELA = :TOTAL_PECAS_TABELA,'
      '  TOTAL_SERVICOS = :TOTAL_SERVICOS,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    Left = 624
    Top = 208
    object tblAtendimentoID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."ID_ATENDIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblAtendimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO"."ID_CONCESSIONARIA"'
    end
    object tblAtendimentoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIMENTO"."ID_CLIENTES"'
    end
    object tblAtendimentoID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
    end
    object tblAtendimentoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"ATENDIMENTO"."ID_CATEGORIA"'
    end
    object tblAtendimentoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"ATENDIMENTO"."MARCA"'
      Size = 10
    end
    object tblAtendimentoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"ATENDIMENTO"."MODELO"'
      Required = True
    end
    object tblAtendimentoANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"ATENDIMENTO"."ANO_FABRICACAO"'
      Required = True
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
      Required = True
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
      Required = True
      Size = 10
    end
    object tblAtendimentoPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"ATENDIMENTO"."PLACA"'
      Required = True
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS: TIBBCDField
      FieldName = 'TOTAL_PECAS'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_SERVICOS: TIBBCDField
      FieldName = 'TOTAL_SERVICOS'
      Origin = '"ATENDIMENTO"."TOTAL_SERVICOS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoTOTAL_PECAS_TABELA: TIBBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS_TABELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoVALOR_LIQUIDO_VENDA: TIBBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ATENDIMENTO"."VALOR_LIQUIDO_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"ATENDIMENTO"."ID_ATENDENTE"'
    end
  end
  object DataSourceAtendimento: TDataSource
    AutoEdit = False
    DataSet = cdsAtendimento
    Left = 720
    Top = 208
  end
  object tblPedidoVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS'
      
        '  (ANO_FABRICACAO, ANO_MODELO, BASE_COMISSAO, CHASSI, COR, DATA_' +
        'NF, DATA_NF_CANCELAMENTO, '
      
        '   ID_AVALISTA, ID_CLIENTES, ID_CONCESSIONARIA, ID_FINANCEIRA, I' +
        'D_MODELO_VEICULO, '
      
        '   ID_PEDIDO_VEICULOS, ID_USUARIO, ID_VEICULOS, ID_VENDEDOR, MAR' +
        'CA, MODELO, '
      
        '   MOTOR, NF, NF_CANCELAMENTO, PLACA, RENAVAM, STATUS, USUARIO, ' +
        'VALOR, '
      
        '   VALOR_A_RECEBER, VALOR_DA_VENDA, VALOR_EXCLUSIVO, VALOR_EXCLU' +
        'SIVO2, '
      
        '   VALOR_NORMAL, VALOR_NORMAL2, VALOR_TAXAS, VALOR_VIP, VALOR_VI' +
        'P2)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :BASE_COMISSAO, :CHASSI, :COR, ' +
        ':DATA_NF, '
      
        '   :DATA_NF_CANCELAMENTO, :ID_AVALISTA, :ID_CLIENTES, :ID_CONCES' +
        'SIONARIA, '
      
        '   :ID_FINANCEIRA, :ID_MODELO_VEICULO, :ID_PEDIDO_VEICULOS, :ID_' +
        'USUARIO, '
      
        '   :ID_VEICULOS, :ID_VENDEDOR, :MARCA, :MODELO, :MOTOR, :NF, :NF' +
        '_CANCELAMENTO, '
      
        '   :PLACA, :RENAVAM, :STATUS, :USUARIO, :VALOR, :VALOR_A_RECEBER' +
        ', :VALOR_DA_VENDA, '
      
        '   :VALOR_EXCLUSIVO, :VALOR_EXCLUSIVO2, :VALOR_NORMAL, :VALOR_NO' +
        'RMAL2, '
      '   :VALOR_TAXAS, :VALOR_VIP, :VALOR_VIP2)')
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
      '  ID_USUARIO,'
      '  USUARIO,'
      '  COR,'
      '  NF_CANCELAMENTO,'
      '  DATA_NF_CANCELAMENTO,'
      '  VALOR_VIP,'
      '  VALOR_NORMAL,'
      '  VALOR_EXCLUSIVO,'
      '  VALOR_VIP2,'
      '  VALOR_NORMAL2,'
      '  VALOR_EXCLUSIVO2,'
      '  RENAVAM,'
      '  VALOR_TAXAS,'
      '  ID_MODELO_VEICULO'
      'from PEDIDO_VEICULOS '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'select PEDIDO_VEICULOS.*, C.NOME AS NOME,'
      'C1.NOME AS NOMEFINANCEIRA'
      'from PEDIDO_VEICULOS'
      
        'inner join Clientes C on pedido_veiculos.id_vendedor = c.id_clie' +
        'ntes'
      
        'LEFT join Clientes C1 on pedido_veiculos.id_financeira = c1.id_c' +
        'lientes'
      'where'
      ' status =  '#39'Pendente'#39
      'or'
      'Status = '#39'Aprovado'#39
      'order by id_Concessionaria')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_COMISSAO = :BASE_COMISSAO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_NF = :DATA_NF,'
      '  DATA_NF_CANCELAMENTO = :DATA_NF_CANCELAMENTO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_MODELO_VEICULO = :ID_MODELO_VEICULO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  NF_CANCELAMENTO = :NF_CANCELAMENTO,'
      '  PLACA = :PLACA,'
      '  RENAVAM = :RENAVAM,'
      '  STATUS = :STATUS,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER,'
      '  VALOR_DA_VENDA = :VALOR_DA_VENDA,'
      '  VALOR_EXCLUSIVO = :VALOR_EXCLUSIVO,'
      '  VALOR_EXCLUSIVO2 = :VALOR_EXCLUSIVO2,'
      '  VALOR_NORMAL = :VALOR_NORMAL,'
      '  VALOR_NORMAL2 = :VALOR_NORMAL2,'
      '  VALOR_TAXAS = :VALOR_TAXAS,'
      '  VALOR_VIP = :VALOR_VIP,'
      '  VALOR_VIP2 = :VALOR_VIP2'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 168
    Top = 344
    object tblPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPedidoVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
    end
    object tblPedidoVeiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"PEDIDO_VEICULOS"."ID_CLIENTES"'
    end
    object tblPedidoVeiculosID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object tblPedidoVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULOS"'
    end
    object tblPedidoVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PEDIDO_VEICULOS"."CHASSI"'
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosBASE_COMISSAO: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      currency = True
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
    object tblPedidoVeiculosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object tblPedidoVeiculosID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object tblPedidoVeiculosVALOR_DA_VENDA: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PEDIDO_VEICULOS"."MODELO"'
    end
    object tblPedidoVeiculosVALOR_A_RECEBER: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PEDIDO_VEICULOS"."MOTOR"'
      Size = 15
    end
    object tblPedidoVeiculosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = '"PEDIDO_VEICULOS"."ID_USUARIO"'
    end
    object tblPedidoVeiculosUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PEDIDO_VEICULOS"."USUARIO"'
    end
    object tblPedidoVeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"PEDIDO_VEICULOS"."COR"'
      Size = 10
    end
    object tblPedidoVeiculosNF_CANCELAMENTO: TIBStringField
      FieldName = 'NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."NF_CANCELAMENTO"'
      Size = 8
    end
    object tblPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF_CANCELAMENTO"'
    end
    object tblPedidoVeiculosVALOR_VIP: TIBBCDField
      FieldName = 'VALOR_VIP'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_NORMAL: TIBBCDField
      FieldName = 'VALOR_NORMAL'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_EXCLUSIVO: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_VIP2: TIBBCDField
      FieldName = 'VALOR_VIP2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP2"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_NORMAL2: TIBBCDField
      FieldName = 'VALOR_NORMAL2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL2"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosVALOR_EXCLUSIVO2: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO2"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"PEDIDO_VEICULOS"."RENAVAM"'
      Size = 15
    end
    object tblPedidoVeiculosVALOR_TAXAS: TIBBCDField
      FieldName = 'VALOR_TAXAS'
      Origin = '"PEDIDO_VEICULOS"."VALOR_TAXAS"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosID_MODELO_VEICULOS: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"PEDIDO_VEICULOS"."ID_MODELO_VEICULO"'
    end
    object tblPedidoVeiculosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
    object tblPedidoVeiculosNOMEFINANCEIRA: TIBStringField
      FieldName = 'NOMEFINANCEIRA'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
  end
  object DataSourcePedidoVeiculos: TDataSource
    AutoEdit = False
    DataSet = cdsPedidoVeiculos
    Left = 264
    Top = 344
  end
  object tblPedidoVeiculos2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS'
      
        '  (ANO_FABRICACAO, ANO_MODELO, BASE_COMISSAO, CHASSI, COR, DATA_' +
        'NF, DATA_NF_CANCELAMENTO, '
      
        '   ID_AVALISTA, ID_CLIENTES, ID_CONCESSIONARIA, ID_FINANCEIRA, I' +
        'D_MODELO_VEICULO, '
      
        '   ID_PEDIDO_VEICULOS, ID_USUARIO, ID_VEICULOS, ID_VENDEDOR, MAR' +
        'CA, MODELO, '
      
        '   MOTOR, NF, NF_CANCELAMENTO, PLACA, RENAVAM, STATUS, USUARIO, ' +
        'VALOR, '
      
        '   VALOR_A_RECEBER, VALOR_DA_VENDA, VALOR_EXCLUSIVO, VALOR_EXCLU' +
        'SIVO2, '
      
        '   VALOR_NORMAL, VALOR_NORMAL2, VALOR_TAXAS, VALOR_VIP, VALOR_VI' +
        'P2)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :BASE_COMISSAO, :CHASSI, :COR, ' +
        ':DATA_NF, '
      
        '   :DATA_NF_CANCELAMENTO, :ID_AVALISTA, :ID_CLIENTES, :ID_CONCES' +
        'SIONARIA, '
      
        '   :ID_FINANCEIRA, :ID_MODELO_VEICULO, :ID_PEDIDO_VEICULOS, :ID_' +
        'USUARIO, '
      
        '   :ID_VEICULOS, :ID_VENDEDOR, :MARCA, :MODELO, :MOTOR, :NF, :NF' +
        '_CANCELAMENTO, '
      
        '   :PLACA, :RENAVAM, :STATUS, :USUARIO, :VALOR, :VALOR_A_RECEBER' +
        ', :VALOR_DA_VENDA, '
      
        '   :VALOR_EXCLUSIVO, :VALOR_EXCLUSIVO2, :VALOR_NORMAL, :VALOR_NO' +
        'RMAL2, '
      '   :VALOR_TAXAS, :VALOR_VIP, :VALOR_VIP2)')
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
      '  ID_USUARIO,'
      '  USUARIO,'
      '  COR,'
      '  NF_CANCELAMENTO,'
      '  DATA_NF_CANCELAMENTO,'
      '  VALOR_VIP,'
      '  VALOR_NORMAL,'
      '  VALOR_EXCLUSIVO,'
      '  VALOR_VIP2,'
      '  VALOR_NORMAL2,'
      '  VALOR_EXCLUSIVO2,'
      '  RENAVAM,'
      '  VALOR_TAXAS,'
      '  ID_MODELO_VEICULO'
      'from PEDIDO_VEICULOS '
      'where'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS')
    SelectSQL.Strings = (
      'select PEDIDO_VEICULOS.*, C.NOME AS NOME,'
      'C1.NOME AS NOMEFINANCEIRA'
      'from PEDIDO_VEICULOS'
      
        'inner join Clientes C on pedido_veiculos.id_vendedor = c.id_clie' +
        'ntes'
      
        'LEFT join Clientes C1 on pedido_veiculos.id_financeira = c1.id_c' +
        'lientes'
      'where'
      'status =  '#39'Faturado'#39
      'order by id_Concessionaria')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_COMISSAO = :BASE_COMISSAO,'
      '  CHASSI = :CHASSI,'
      '  COR = :COR,'
      '  DATA_NF = :DATA_NF,'
      '  DATA_NF_CANCELAMENTO = :DATA_NF_CANCELAMENTO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_FINANCEIRA = :ID_FINANCEIRA,'
      '  ID_MODELO_VEICULO = :ID_MODELO_VEICULO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_VEICULOS = :ID_VEICULOS,'
      '  ID_VENDEDOR = :ID_VENDEDOR,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  NF_CANCELAMENTO = :NF_CANCELAMENTO,'
      '  PLACA = :PLACA,'
      '  RENAVAM = :RENAVAM,'
      '  STATUS = :STATUS,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VALOR_A_RECEBER = :VALOR_A_RECEBER,'
      '  VALOR_DA_VENDA = :VALOR_DA_VENDA,'
      '  VALOR_EXCLUSIVO = :VALOR_EXCLUSIVO,'
      '  VALOR_EXCLUSIVO2 = :VALOR_EXCLUSIVO2,'
      '  VALOR_NORMAL = :VALOR_NORMAL,'
      '  VALOR_NORMAL2 = :VALOR_NORMAL2,'
      '  VALOR_TAXAS = :VALOR_TAXAS,'
      '  VALOR_VIP = :VALOR_VIP,'
      '  VALOR_VIP2 = :VALOR_VIP2'
      'where'
      '  ID_PEDIDO_VEICULOS = :OLD_ID_PEDIDO_VEICULOS')
    Left = 616
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_PEDIDO_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PEDIDO_VEICULOS"."ID_CONCESSIONARIA"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"PEDIDO_VEICULOS"."ID_CLIENTES"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"PEDIDO_VEICULOS"."ID_AVALISTA"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"PEDIDO_VEICULOS"."ID_VEICULOS"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PEDIDO_VEICULOS"."CHASSI"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PEDIDO_VEICULOS"."MARCA"'
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PEDIDO_VEICULOS"."ANO_MODELO"'
      Size = 4
    end
    object IBStringField4: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"PEDIDO_VEICULOS"."ANO_FABRICACAO"'
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PEDIDO_VEICULOS"."PLACA"'
      Size = 7
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'BASE_COMISSAO'
      Origin = '"PEDIDO_VEICULOS"."BASE_COMISSAO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField6: TIBStringField
      FieldName = 'NF'
      Origin = '"PEDIDO_VEICULOS"."NF"'
      Size = 8
    end
    object DateField1: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF"'
    end
    object IBStringField7: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PEDIDO_VEICULOS"."STATUS"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = '"PEDIDO_VEICULOS"."ID_VENDEDOR"'
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_FINANCEIRA'
      Origin = '"PEDIDO_VEICULOS"."ID_FINANCEIRA"'
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = '"PEDIDO_VEICULOS"."VALOR_DA_VENDA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField8: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PEDIDO_VEICULOS"."MODELO"'
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VALOR_A_RECEBER'
      Origin = '"PEDIDO_VEICULOS"."VALOR_A_RECEBER"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBStringField9: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PEDIDO_VEICULOS"."MOTOR"'
      Size = 15
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = '"PEDIDO_VEICULOS"."ID_USUARIO"'
    end
    object IBStringField10: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PEDIDO_VEICULOS"."USUARIO"'
    end
    object IBStringField11: TIBStringField
      FieldName = 'COR'
      Origin = '"PEDIDO_VEICULOS"."COR"'
      Size = 10
    end
    object IBStringField12: TIBStringField
      FieldName = 'NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."NF_CANCELAMENTO"'
      Size = 8
    end
    object DateField2: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
      Origin = '"PEDIDO_VEICULOS"."DATA_NF_CANCELAMENTO"'
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'VALOR_VIP'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP"'
      Precision = 18
      Size = 2
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VALOR_NORMAL'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL"'
      Precision = 18
      Size = 2
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'VALOR_VIP2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_VIP2"'
      Precision = 18
      Size = 2
    end
    object IBBCDField9: TIBBCDField
      FieldName = 'VALOR_NORMAL2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_NORMAL2"'
      Precision = 18
      Size = 2
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Origin = '"PEDIDO_VEICULOS"."VALOR_EXCLUSIVO2"'
      Precision = 18
      Size = 2
    end
    object IBStringField13: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"PEDIDO_VEICULOS"."RENAVAM"'
      Size = 15
    end
    object IBBCDField11: TIBBCDField
      FieldName = 'VALOR_TAXAS'
      Origin = '"PEDIDO_VEICULOS"."VALOR_TAXAS"'
      Precision = 18
      Size = 2
    end
    object IntegerField9: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"PEDIDO_VEICULOS"."ID_MODELO_VEICULO"'
    end
    object IBStringField14: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
    object IBStringField15: TIBStringField
      FieldName = 'NOMEFINANCEIRA'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
  end
  object DataSourcePedidoVeiculos2: TDataSource
    AutoEdit = False
    DataSet = cdsPedidoveiculos2
    Left = 712
    Top = 360
  end
  object tblCreceber2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Creceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into Creceber'
      
        '  (BANCO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ID_AVALISTA, ID_' +
        'CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_CRECEBER, ID_FORMA_PAGAMENTO, ID_PEDIDO' +
        '_VEICULOS, '
      
        '   ORIGEM, PAGAMENTO, PARCELA, STATUS, TOTAL, VALOR, VALOR_PAGO,' +
        ' VENCIMENTO, '
      '   VEZES)'
      'values'
      
        '  (:BANCO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTORICO, :ID_AVALIST' +
        'A, :ID_CLIENTES, '
      
        '   :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_FORMA_PAGAMENTO, :ID_PE' +
        'DIDO_VEICULOS, '
      
        '   :ORIGEM, :PAGAMENTO, :PARCELA, :STATUS, :TOTAL, :VALOR, :VALO' +
        'R_PAGO, '
      '   :VENCIMENTO, :VEZES)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CRECEBER,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
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
      '  ID_PEDIDO_VEICULOS'
      'from Creceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select * from Creceber'
      'where status= '#39'Em renegocia'#231#227'o'#39
      'order by id_Concessionaria'
      '')
    ModifySQL.Strings = (
      'update Creceber'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
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
    Left = 144
    Top = 464
    object IntegerField10: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object IBStringField16: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object IBStringField17: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object IBStringField18: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object IBStringField19: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object IBStringField20: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object DateField3: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object IBBCDField12: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object DateField4: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object IBBCDField13: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object DateField5: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object IBBCDField14: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBStringField21: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 4
    end
    object IBStringField22: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object IBStringField23: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object IntegerField15: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
  end
  object DataSourceCreceber2: TDataSource
    AutoEdit = False
    DataSet = cdsCreceber2
    Left = 240
    Top = 464
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = tblCreceber
    Left = 624
    Top = 72
  end
  object cdsCreceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 656
    Top = 72
    object cdsCreceberID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
    end
    object cdsCreceberID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsCreceberID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsCreceberID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
    end
    object cdsCreceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object cdsCreceberPARCELA: TStringField
      FieldName = 'PARCELA'
      FixedChar = True
      Size = 2
    end
    object cdsCreceberVEZES: TStringField
      FieldName = 'VEZES'
      FixedChar = True
      Size = 2
    end
    object cdsCreceberORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCreceberCONTA: TStringField
      FieldName = 'CONTA'
      Size = 4
    end
    object cdsCreceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsCreceberVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCreceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsCreceberTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsCreceberPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object cdsCreceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsCreceberBANCO: TStringField
      FieldName = 'BANCO'
      Size = 4
    end
    object cdsCreceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cdsCreceberSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsCreceberID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
    end
    object cdsCreceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = tblCaixa
    Left = 208
    Top = 88
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 240
    Top = 88
    object cdsCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object cdsCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsCaixaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsCaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object cdsCaixaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object cdsCaixaNATUREZA: TStringField
      FieldName = 'NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsCaixaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      Size = 13
    end
    object cdsCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object cdsCaixaDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsCaixaVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 4
    end
    object cdsCaixaSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Required = True
      Size = 50
    end
    object cdsCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
    end
    object cdsCaixaJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object cdsCaixaSTATUS_BANCO: TStringField
      FieldName = 'STATUS_BANCO'
    end
    object cdsCaixaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = tblOrcamentoPecas
    Left = 152
    Top = 216
  end
  object cdsOrcamentoPecas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 184
    Top = 216
    object cdsOrcamentoPecasID_ORCAMENTO_PECAS: TIntegerField
      FieldName = 'ID_ORCAMENTO_PECAS'
    end
    object cdsOrcamentoPecasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsOrcamentoPecasTOTAL_VENDA: TBCDField
      FieldName = 'TOTAL_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoPecasTOTAL_NESTA_VENDA: TBCDField
      FieldName = 'TOTAL_NESTA_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoPecasSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsOrcamentoPecasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoPecasVALOR_LIQUIDO_VENDA: TBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoPecasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsOrcamentoPecasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrcamentoPecasNUMERO_NOTA_FISCAL: TIntegerField
      FieldName = 'NUMERO_NOTA_FISCAL'
    end
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = tblPedidoVeiculos
    Left = 200
    Top = 344
  end
  object cdsPedidoVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    Left = 232
    Top = 344
    object cdsPedidoVeiculosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
    end
    object cdsPedidoVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsPedidoVeiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsPedidoVeiculosID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
    end
    object cdsPedidoVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
    end
    object cdsPedidoVeiculosCHASSI: TStringField
      FieldName = 'CHASSI'
    end
    object cdsPedidoVeiculosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsPedidoVeiculosANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Size = 4
    end
    object cdsPedidoVeiculosANO_FABRICACAO: TStringField
      FieldName = 'ANO_FABRICACAO'
      Size = 4
    end
    object cdsPedidoVeiculosPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsPedidoVeiculosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosBASE_COMISSAO: TBCDField
      FieldName = 'BASE_COMISSAO'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosNF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object cdsPedidoVeiculosDATA_NF: TDateField
      FieldName = 'DATA_NF'
    end
    object cdsPedidoVeiculosSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsPedidoVeiculosID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoVeiculosID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
    end
    object cdsPedidoVeiculosVALOR_DA_VENDA: TBCDField
      FieldName = 'VALOR_DA_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosMODELO: TStringField
      FieldName = 'MODELO'
    end
    object cdsPedidoVeiculosVALOR_A_RECEBER: TBCDField
      FieldName = 'VALOR_A_RECEBER'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosMOTOR: TStringField
      FieldName = 'MOTOR'
      Size = 15
    end
    object cdsPedidoVeiculosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPedidoVeiculosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPedidoVeiculosCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object cdsPedidoVeiculosNF_CANCELAMENTO: TStringField
      FieldName = 'NF_CANCELAMENTO'
      Size = 8
    end
    object cdsPedidoVeiculosDATA_NF_CANCELAMENTO: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
    end
    object cdsPedidoVeiculosVALOR_VIP: TBCDField
      FieldName = 'VALOR_VIP'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosVALOR_NORMAL: TBCDField
      FieldName = 'VALOR_NORMAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosVALOR_EXCLUSIVO: TBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosVALOR_VIP2: TBCDField
      FieldName = 'VALOR_VIP2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosVALOR_NORMAL2: TBCDField
      FieldName = 'VALOR_NORMAL2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosVALOR_EXCLUSIVO2: TBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object cdsPedidoVeiculosVALOR_TAXAS: TBCDField
      FieldName = 'VALOR_TAXAS'
      Precision = 18
      Size = 2
    end
    object cdsPedidoVeiculosID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
    end
    object cdsPedidoVeiculosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPedidoVeiculosNOMEFINANCEIRA: TStringField
      FieldName = 'NOMEFINANCEIRA'
      Size = 50
    end
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = tblCreceber2
    Left = 176
    Top = 464
  end
  object cdsCreceber2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider5'
    Left = 208
    Top = 464
    object cdsCreceber2ID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
    end
    object cdsCreceber2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsCreceber2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsCreceber2ID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
    end
    object cdsCreceber2DOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 10
    end
    object cdsCreceber2PARCELA: TStringField
      FieldName = 'PARCELA'
      FixedChar = True
      Size = 2
    end
    object cdsCreceber2VEZES: TStringField
      FieldName = 'VEZES'
      FixedChar = True
      Size = 2
    end
    object cdsCreceber2ORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCreceber2CONTA: TStringField
      FieldName = 'CONTA'
      Size = 4
    end
    object cdsCreceber2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsCreceber2VALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCreceber2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsCreceber2TOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsCreceber2PAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object cdsCreceber2VALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsCreceber2BANCO: TStringField
      FieldName = 'BANCO'
      Size = 4
    end
    object cdsCreceber2HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cdsCreceber2STATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsCreceber2ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
    end
    object cdsCreceber2ID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
  end
  object DataSetProvider6: TDataSetProvider
    DataSet = tblAtendimento
    Left = 656
    Top = 208
  end
  object cdsAtendimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider6'
    Left = 688
    Top = 208
    object cdsAtendimentoID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
    end
    object cdsAtendimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsAtendimentoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsAtendimentoID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
    end
    object cdsAtendimentoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object cdsAtendimentoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsAtendimentoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
    end
    object cdsAtendimentoANO_FABRICACAO: TStringField
      FieldName = 'ANO_FABRICACAO'
      Required = True
      Size = 4
    end
    object cdsAtendimentoANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Size = 4
    end
    object cdsAtendimentoCHASSI: TStringField
      FieldName = 'CHASSI'
    end
    object cdsAtendimentoKM: TIntegerField
      FieldName = 'KM'
      Required = True
    end
    object cdsAtendimentoDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object cdsAtendimentoDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object cdsAtendimentoORC_OS: TStringField
      FieldName = 'ORC_OS'
      Size = 1
    end
    object cdsAtendimentoCOR: TStringField
      FieldName = 'COR'
      Required = True
      Size = 10
    end
    object cdsAtendimentoPLACA: TStringField
      FieldName = 'PLACA'
      Required = True
      Size = 7
    end
    object cdsAtendimentoSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsAtendimentoMEMO: TBlobField
      FieldName = 'MEMO'
      Size = 8
    end
    object cdsAtendimentoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsAtendimentoTOTAL_PECAS: TBCDField
      FieldName = 'TOTAL_PECAS'
      Precision = 18
      Size = 2
    end
    object cdsAtendimentoTOTAL_SERVICOS: TBCDField
      FieldName = 'TOTAL_SERVICOS'
      Precision = 18
      Size = 2
    end
    object cdsAtendimentoTOTAL_PECAS_TABELA: TBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Precision = 18
      Size = 2
    end
    object cdsAtendimentoVALOR_LIQUIDO_VENDA: TBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsAtendimentoID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
    end
  end
  object DataSetProvider7: TDataSetProvider
    DataSet = tblPedidoVeiculos2
    Left = 648
    Top = 360
  end
  object cdsPedidoveiculos2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider7'
    Left = 680
    Top = 360
    object cdsPedidoveiculos2ID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
    end
    object cdsPedidoveiculos2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
    end
    object cdsPedidoveiculos2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
    end
    object cdsPedidoveiculos2ID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
    end
    object cdsPedidoveiculos2ID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
    end
    object cdsPedidoveiculos2CHASSI: TStringField
      FieldName = 'CHASSI'
    end
    object cdsPedidoveiculos2MARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsPedidoveiculos2ANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Size = 4
    end
    object cdsPedidoveiculos2ANO_FABRICACAO: TStringField
      FieldName = 'ANO_FABRICACAO'
      Size = 4
    end
    object cdsPedidoveiculos2PLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsPedidoveiculos2VALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2BASE_COMISSAO: TBCDField
      FieldName = 'BASE_COMISSAO'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2NF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object cdsPedidoveiculos2DATA_NF: TDateField
      FieldName = 'DATA_NF'
    end
    object cdsPedidoveiculos2STATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsPedidoveiculos2ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoveiculos2ID_FINANCEIRA: TIntegerField
      FieldName = 'ID_FINANCEIRA'
    end
    object cdsPedidoveiculos2VALOR_DA_VENDA: TBCDField
      FieldName = 'VALOR_DA_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2MODELO: TStringField
      FieldName = 'MODELO'
    end
    object cdsPedidoveiculos2VALOR_A_RECEBER: TBCDField
      FieldName = 'VALOR_A_RECEBER'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2MOTOR: TStringField
      FieldName = 'MOTOR'
      Size = 15
    end
    object cdsPedidoveiculos2ID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPedidoveiculos2USUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPedidoveiculos2COR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object cdsPedidoveiculos2NF_CANCELAMENTO: TStringField
      FieldName = 'NF_CANCELAMENTO'
      Size = 8
    end
    object cdsPedidoveiculos2DATA_NF_CANCELAMENTO: TDateField
      FieldName = 'DATA_NF_CANCELAMENTO'
    end
    object cdsPedidoveiculos2VALOR_VIP: TBCDField
      FieldName = 'VALOR_VIP'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2VALOR_NORMAL: TBCDField
      FieldName = 'VALOR_NORMAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2VALOR_EXCLUSIVO: TBCDField
      FieldName = 'VALOR_EXCLUSIVO'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2VALOR_VIP2: TBCDField
      FieldName = 'VALOR_VIP2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2VALOR_NORMAL2: TBCDField
      FieldName = 'VALOR_NORMAL2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2VALOR_EXCLUSIVO2: TBCDField
      FieldName = 'VALOR_EXCLUSIVO2'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2RENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object cdsPedidoveiculos2VALOR_TAXAS: TBCDField
      FieldName = 'VALOR_TAXAS'
      Precision = 18
      Size = 2
    end
    object cdsPedidoveiculos2ID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
    end
    object cdsPedidoveiculos2NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPedidoveiculos2NOMEFINANCEIRA: TStringField
      FieldName = 'NOMEFINANCEIRA'
      Size = 50
    end
  end
  object tblAtendimento2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from Atendimento'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    InsertSQL.Strings = (
      'insert into Atendimento'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, COR, DATA_ENTRADA, DATA_S' +
        'AIDA, DESCONTO, '
      
        '   ID_ATENDENTE, ID_ATENDIMENTO, ID_CATEGORIA, ID_CLIENTES, ID_C' +
        'ONCESSIONARIA, '
      
        '   ID_MECANICO, KM, MARCA, MEMO, MODELO, ORC_OS, PLACA, STATUS, ' +
        'TOTAL_PECAS, '
      '   TOTAL_PECAS_TABELA, TOTAL_SERVICOS, VALOR_LIQUIDO_VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :COR, :DATA_ENTRADA, :' +
        'DATA_SAIDA, '
      
        '   :DESCONTO, :ID_ATENDENTE, :ID_ATENDIMENTO, :ID_CATEGORIA, :ID' +
        '_CLIENTES, '
      
        '   :ID_CONCESSIONARIA, :ID_MECANICO, :KM, :MARCA, :MEMO, :MODELO' +
        ', :ORC_OS, '
      
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
      '  ID_ATENDENTE'
      'from Atendimento '
      'where'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO')
    SelectSQL.Strings = (
      'select * from Atendimento'
      'where status= '#39'Em edi'#231#227'o'#39
      'and'
      'Orc_os <> 1'
      'order by id_Concessionaria'
      '')
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
      '  ID_ATENDENTE = :ID_ATENDENTE,'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MECANICO = :ID_MECANICO,'
      '  KM = :KM,'
      '  MARCA = :MARCA,'
      '  MEMO = :MEMO,'
      '  MODELO = :MODELO,'
      '  ORC_OS = :ORC_OS,'
      '  PLACA = :PLACA,'
      '  STATUS = :STATUS,'
      '  TOTAL_PECAS = :TOTAL_PECAS,'
      '  TOTAL_PECAS_TABELA = :TOTAL_PECAS_TABELA,'
      '  TOTAL_SERVICOS = :TOTAL_SERVICOS,'
      '  VALOR_LIQUIDO_VENDA = :VALOR_LIQUIDO_VENDA'
      'where'
      '  ID_ATENDIMENTO = :OLD_ID_ATENDIMENTO')
    Left = 616
    Top = 472
    object tblAtendimento2ID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO"."ID_ATENDIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAtendimento2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblAtendimento2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"ATENDIMENTO"."ID_CLIENTES"'
      Required = True
    end
    object tblAtendimento2ID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = '"ATENDIMENTO"."ID_MECANICO"'
      Required = True
    end
    object tblAtendimento2ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"ATENDIMENTO"."ID_CATEGORIA"'
      Required = True
    end
    object tblAtendimento2MARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"ATENDIMENTO"."MARCA"'
      Size = 10
    end
    object tblAtendimento2MODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"ATENDIMENTO"."MODELO"'
    end
    object tblAtendimento2ANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"ATENDIMENTO"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblAtendimento2ANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"ATENDIMENTO"."ANO_MODELO"'
      Size = 4
    end
    object tblAtendimento2CHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"ATENDIMENTO"."CHASSI"'
    end
    object tblAtendimento2KM: TIntegerField
      FieldName = 'KM'
      Origin = '"ATENDIMENTO"."KM"'
    end
    object tblAtendimento2DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = '"ATENDIMENTO"."DATA_ENTRADA"'
    end
    object tblAtendimento2DATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ATENDIMENTO"."DATA_SAIDA"'
    end
    object tblAtendimento2ORC_OS: TIBStringField
      FieldName = 'ORC_OS'
      Origin = '"ATENDIMENTO"."ORC_OS"'
      Size = 1
    end
    object tblAtendimento2COR: TIBStringField
      FieldName = 'COR'
      Origin = '"ATENDIMENTO"."COR"'
      Size = 10
    end
    object tblAtendimento2PLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"ATENDIMENTO"."PLACA"'
      Size = 7
    end
    object tblAtendimento2STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ATENDIMENTO"."STATUS"'
    end
    object tblAtendimento2MEMO: TBlobField
      FieldName = 'MEMO'
      Origin = '"ATENDIMENTO"."MEMO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object tblAtendimento2DESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"ATENDIMENTO"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object tblAtendimento2TOTAL_PECAS: TIBBCDField
      FieldName = 'TOTAL_PECAS'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimento2TOTAL_SERVICOS: TIBBCDField
      FieldName = 'TOTAL_SERVICOS'
      Origin = '"ATENDIMENTO"."TOTAL_SERVICOS"'
      Precision = 18
      Size = 2
    end
    object tblAtendimento2TOTAL_PECAS_TABELA: TIBBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Origin = '"ATENDIMENTO"."TOTAL_PECAS_TABELA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimento2VALOR_LIQUIDO_VENDA: TIBBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Origin = '"ATENDIMENTO"."VALOR_LIQUIDO_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblAtendimento2ID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = '"ATENDIMENTO"."ID_ATENDENTE"'
    end
  end
  object DataSetProvider8: TDataSetProvider
    DataSet = tblAtendimento2
    Left = 648
    Top = 472
  end
  object cdsAtendimento2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider8'
    Left = 680
    Top = 472
    object cdsAtendimento2ID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Required = True
    end
    object cdsAtendimento2ID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Required = True
    end
    object cdsAtendimento2ID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Required = True
    end
    object cdsAtendimento2ID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Required = True
    end
    object cdsAtendimento2ID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object cdsAtendimento2MARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsAtendimento2MODELO: TStringField
      FieldName = 'MODELO'
    end
    object cdsAtendimento2ANO_FABRICACAO: TStringField
      FieldName = 'ANO_FABRICACAO'
      Size = 4
    end
    object cdsAtendimento2ANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Size = 4
    end
    object cdsAtendimento2CHASSI: TStringField
      FieldName = 'CHASSI'
    end
    object cdsAtendimento2KM: TIntegerField
      FieldName = 'KM'
    end
    object cdsAtendimento2DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object cdsAtendimento2DATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object cdsAtendimento2ORC_OS: TStringField
      FieldName = 'ORC_OS'
      Size = 1
    end
    object cdsAtendimento2COR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object cdsAtendimento2PLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsAtendimento2STATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsAtendimento2MEMO: TBlobField
      FieldName = 'MEMO'
      Size = 8
    end
    object cdsAtendimento2DESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsAtendimento2TOTAL_PECAS: TBCDField
      FieldName = 'TOTAL_PECAS'
      Precision = 18
      Size = 2
    end
    object cdsAtendimento2TOTAL_SERVICOS: TBCDField
      FieldName = 'TOTAL_SERVICOS'
      Precision = 18
      Size = 2
    end
    object cdsAtendimento2TOTAL_PECAS_TABELA: TBCDField
      FieldName = 'TOTAL_PECAS_TABELA'
      Precision = 18
      Size = 2
    end
    object cdsAtendimento2VALOR_LIQUIDO_VENDA: TBCDField
      FieldName = 'VALOR_LIQUIDO_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsAtendimento2ID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
    end
  end
  object DataSourceAtendimento2: TDataSource
    AutoEdit = False
    DataSet = cdsAtendimento2
    Left = 712
    Top = 472
  end
end
