object BoxPosVendaServicos: TBoxPosVendaServicos
  Left = 15
  Top = 110
  Caption = 'P'#243's-venda - Atendimento - Servi'#231'os'
  ClientHeight = 307
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 32
    Width = 729
    Height = 257
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 46
      Width = 36
      Height = 13
      Caption = 'Tempo:'
    end
    object Label3: TLabel
      Left = 11
      Top = 73
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
      FocusControl = Preco
    end
    object Label4: TLabel
      Left = 11
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Servi'#231'o:'
    end
    object DBGrid1: TDBGrid
      Left = 11
      Top = 97
      Width = 710
      Height = 147
      DataSource = DataSourceAtendimentoServicos
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ATENDIMENTO_SERVICOS'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia servi'#231'os:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ATENDIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia atendimento:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_TMO'
          Title.Alignment = taCenter
          Title.Caption = 'Sequ'#234'ncia TMO:'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'Servi'#231'o:'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEMPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tempo:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o:'
          Width = 107
          Visible = True
        end>
    end
    object Preco: TDBEdit
      Left = 66
      Top = 70
      Width = 119
      Height = 21
      DataField = 'PRECO'
      DataSource = DataSourceAtendimentoServicos
      TabOrder = 2
      OnExit = PrecoExit
      OnKeyPress = FormKeyPress
    end
    object Servico: TDBLookupComboBox
      Left = 66
      Top = 16
      Width = 337
      Height = 21
      DataField = 'ID_TMO'
      DataSource = DataSourceAtendimentoServicos
      KeyField = 'ID_TMO'
      ListField = 'DESCRICAO'
      ListSource = DataSourceTMO
      TabOrder = 0
      OnExit = ServicoExit
      OnKeyPress = FormKeyPress
    end
    object Tempo: TJvDBMaskEdit
      Left = 66
      Top = 43
      Width = 66
      Height = 21
      DataField = 'TEMPO'
      DataSource = DataSourceAtendimentoServicos
      MaxLength = 5
      TabOrder = 1
      EditMask = 'ccc,c;0; '
      OnKeyPress = FormKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 288
    Width = 729
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 729
    Height = 29
    ButtonHeight = 26
    Caption = 'ToolBar1'
    TabOrder = 2
    object BtnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 100
      Height = 26
      Caption = 'Novo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 100
      Top = 0
      Width = 100
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
      TabOrder = 1
      OnClick = BtnConfirmaClick
    end
    object BtnExclui: TBitBtn
      Left = 200
      Top = 0
      Width = 100
      Height = 26
      Caption = 'Exclui'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A0000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A174AFD103BF400009AFF00FFFF
        00FFFF00FFFF00FF00009A002CF80030FC00009AFF00FFFF00FFFF00FFFF00FF
        00009A1A47F81A4CFF123BF100009AFF00FFFF00FF00009A012DF60132FF002A
        F300009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A1C47F61B4DFF143EF400
        009A00009A002DF80134FF032BF200009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A1A48F913
        42FF0C3CFF0733F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00009A214EFC1D4BFF1847FF1743F600009AFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A2E5BF92C5FFF22
        4DF8204BF82355FF1B46F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F60000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A4071FA4274FF325DF100009AFF
        00FFFF00FF00009A224DF1275AFF204CF800009AFF00FFFF00FFFF00FFFF00FF
        00009A497AFC3B66F300009AFF00FFFF00FFFF00FFFF00FF00009A2550F42655
        FA00009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnExcluiClick
    end
    object BtnConclui: TBitBtn
      Left = 300
      Top = 0
      Width = 100
      Height = 26
      Caption = 'Conclui'
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
        FFFF00FFFF00FFFF00FFFF00FF08AD1808841008841008AD181DE6A808AD1808
        841008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08AD18088410
        08841008AD181DE6A8BCF9D31DE6A808AD1808841008841008AD18FF00FFFF00
        FFFF00FFFF00FFFF00FF08AD1808841008AD181DE6A8BCF9D3FF00FFBCF9D31D
        E6A808AD1808841008841008AD18FF00FFFF00FFFF00FFFF00FF1DE6A808AD18
        1DE6A8BCF9D3FF00FFFF00FFFF00FFBCF9D31DE6A808AD1808841008841008AD
        18FF00FFFF00FFFF00FF1DE6A81DE6A8BCF9D3FF00FFFF00FFFF00FFFF00FFFF
        00FFBCF9D31DE6A808AD1808841008841008AD18FF00FFFF00FFFF00FFBCF9D3
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6A808AD180884
        1008841008AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFBCF9D31DE6A808AD1808841008AD18FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6
        A808AD1808AD18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBCF9D31DE6A8BCF9D3FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFBCF9D3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnConcluiClick
    end
  end
  object tblAtendimentoServicos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAtendimentoServicosAfterCancel
    AfterDelete = tblAtendimentoServicosAfterPost
    AfterPost = tblAtendimentoServicosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATENDIMENTO_SERVICOS'
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :OLD_ID_ATENDIMENTO_SERVICOS')
    InsertSQL.Strings = (
      'insert into ATENDIMENTO_SERVICOS'
      
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
      'from ATENDIMENTO_SERVICOS '
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :ID_ATENDIMENTO_SERVICOS')
    SelectSQL.Strings = (
      'select * from ATENDIMENTO_SERVICOS'
      'where Id_Atendimento = :IdAtendimento')
    ModifySQL.Strings = (
      'update ATENDIMENTO_SERVICOS'
      'set'
      '  ID_ATENDIMENTO = :ID_ATENDIMENTO,'
      '  ID_ATENDIMENTO_SERVICOS = :ID_ATENDIMENTO_SERVICOS,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_TMO = :ID_TMO,'
      '  PRECO = :PRECO,'
      '  TEMPO = :TEMPO'
      'where'
      '  ID_ATENDIMENTO_SERVICOS = :OLD_ID_ATENDIMENTO_SERVICOS')
    ParamCheck = True
    UniDirectional = False
    Left = 232
    Top = 176
    object tblAtendimentoServicosID_ATENDIMENTO_SERVICOS: TIntegerField
      FieldName = 'ID_ATENDIMENTO_SERVICOS'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_ATENDIMENTO_SERVICOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblAtendimentoServicosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_CONCESSIONARIA"'
    end
    object tblAtendimentoServicosID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_ATENDIMENTO"'
    end
    object tblAtendimentoServicosID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"ATENDIMENTO_SERVICOS"."ID_TMO"'
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
      currency = True
      Precision = 18
      Size = 2
    end
    object tblAtendimentoServicosSERVICO: TStringField
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'SERVICO'
      LookupDataSet = tblTMO2
      LookupKeyFields = 'ID_TMO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_TMO'
      Size = 35
      Lookup = True
    end
  end
  object DataSourceAtendimentoServicos: TDataSource
    AutoEdit = False
    DataSet = tblAtendimentoServicos
    Left = 264
    Top = 176
  end
  object tblTMO: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAtendimentoServicosAfterCancel
    AfterDelete = tblAtendimentoServicosAfterPost
    AfterPost = tblAtendimentoServicosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMO'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    InsertSQL.Strings = (
      'insert into TMO'
      
        '  (CODIGO, DESCRICAO, ID_CATEGORIA, ID_TMO, REV_GRAT, TEMPO, TEM' +
        'PO_GAR)'
      'values'
      
        '  (:CODIGO, :DESCRICAO, :ID_CATEGORIA, :ID_TMO, :REV_GRAT, :TEMP' +
        'O, :TEMPO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_TMO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  ID_CATEGORIA,'
      '  TEMPO,'
      '  TEMPO_GAR,'
      '  REV_GRAT'
      'from TMO '
      'where'
      '  ID_TMO = :ID_TMO')
    SelectSQL.Strings = (
      'select * from TMO'
      'Where Id_categoria = :idCategoria'
      'order by descricao')
    ModifySQL.Strings = (
      'update TMO'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_TMO = :ID_TMO,'
      '  REV_GRAT = :REV_GRAT,'
      '  TEMPO = :TEMPO,'
      '  TEMPO_GAR = :TEMPO_GAR'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 88
    object tblTMOID_TMO: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"TMO"."ID_TMO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblTMOID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"TMO"."ID_CATEGORIA"'
    end
    object tblTMOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TMO"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object tblTMODESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TMO"."DESCRICAO"'
      FixedChar = True
      Size = 35
    end
    object tblTMOTEMPO: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"TMO"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object tblTMOTEMPO_GAR: TIBBCDField
      FieldName = 'TEMPO_GAR'
      Origin = '"TMO"."TEMPO_GAR"'
      Precision = 4
      Size = 1
    end
    object tblTMOREV_GRAT: TIBStringField
      FieldName = 'REV_GRAT'
      Origin = '"TMO"."REV_GRAT"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceTMO: TDataSource
    AutoEdit = False
    DataSet = tblTMO
    Left = 224
    Top = 88
  end
  object tblcategoria: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAtendimentoServicosAfterCancel
    AfterDelete = tblAtendimentoServicosAfterPost
    AfterPost = tblAtendimentoServicosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CATEGORIA'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    InsertSQL.Strings = (
      'insert into CATEGORIA'
      '  (DESCRICAO, ID_CATEGORIA, PRECO, PRECO_GAR)'
      'values'
      '  (:DESCRICAO, :ID_CATEGORIA, :PRECO, :PRECO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CATEGORIA,'
      '  DESCRICAO,'
      '  PRECO,'
      '  PRECO_GAR'
      'from CATEGORIA '
      'where'
      '  ID_CATEGORIA = :ID_CATEGORIA')
    SelectSQL.Strings = (
      'select * from CATEGORIA'
      'where id_categoria = :idCategoria')
    ModifySQL.Strings = (
      'update CATEGORIA'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  PRECO = :PRECO,'
      '  PRECO_GAR = :PRECO_GAR'
      'where'
      '  ID_CATEGORIA = :OLD_ID_CATEGORIA')
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 56
    object tblcategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"CATEGORIA"."ID_CATEGORIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblcategoriaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CATEGORIA"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblcategoriaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"CATEGORIA"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblcategoriaPRECO_GAR: TIBBCDField
      FieldName = 'PRECO_GAR'
      Origin = '"CATEGORIA"."PRECO_GAR"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceCategoria: TDataSource
    AutoEdit = False
    DataSet = tblcategoria
    Left = 464
    Top = 56
  end
  object tblTMO2: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblAtendimentoServicosAfterCancel
    AfterDelete = tblAtendimentoServicosAfterPost
    AfterPost = tblAtendimentoServicosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TMO'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    InsertSQL.Strings = (
      'insert into TMO'
      
        '  (CODIGO, DESCRICAO, ID_CATEGORIA, ID_TMO, REV_GRAT, TEMPO, TEM' +
        'PO_GAR)'
      'values'
      
        '  (:CODIGO, :DESCRICAO, :ID_CATEGORIA, :ID_TMO, :REV_GRAT, :TEMP' +
        'O, :TEMPO_GAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_TMO,'
      '  ID_CATEGORIA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  TEMPO,'
      '  TEMPO_GAR,'
      '  REV_GRAT'
      'from TMO '
      'where'
      '  ID_TMO = :ID_TMO')
    SelectSQL.Strings = (
      'select * from TMO'
      'order by descricao'
      '')
    ModifySQL.Strings = (
      'update TMO'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CATEGORIA = :ID_CATEGORIA,'
      '  ID_TMO = :ID_TMO,'
      '  REV_GRAT = :REV_GRAT,'
      '  TEMPO = :TEMPO,'
      '  TEMPO_GAR = :TEMPO_GAR'
      'where'
      '  ID_TMO = :OLD_ID_TMO')
    ParamCheck = True
    UniDirectional = False
    Left = 424
    Top = 176
    object IntegerField1: TIntegerField
      FieldName = 'ID_TMO'
      Origin = '"TMO"."ID_TMO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = '"TMO"."ID_CATEGORIA"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TMO"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TMO"."DESCRICAO"'
      FixedChar = True
      Size = 35
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'TEMPO'
      Origin = '"TMO"."TEMPO"'
      Precision = 4
      Size = 1
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'TEMPO_GAR'
      Origin = '"TMO"."TEMPO_GAR"'
      Precision = 4
      Size = 1
    end
    object IBStringField3: TIBStringField
      FieldName = 'REV_GRAT'
      Origin = '"TMO"."REV_GRAT"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceTMO2: TDataSource
    AutoEdit = False
    DataSet = tblTMO2
    Left = 456
    Top = 176
  end
end
