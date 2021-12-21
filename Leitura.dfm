object BoxLeitura: TBoxLeitura
  Left = 15
  Top = 85
  Caption = 'Leitura'
  ClientHeight = 251
  ClientWidth = 415
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
    Width = 415
    Height = 232
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Local arquivo:'
    end
    object Label2: TLabel
      Left = 12
      Top = 80
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 85
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label4: TLabel
      Left = 85
      Top = 105
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label5: TLabel
      Left = 19
      Top = 72
      Width = 60
      Height = 13
      Caption = 'Atualizando:'
    end
    object Label6: TLabel
      Left = 12
      Top = 45
      Width = 62
      Height = 13
      Caption = 'Sobre pre'#231'o:'
    end
    object BtnConfirma: TBitBtn
      Left = 271
      Top = 8
      Width = 109
      Height = 26
      Caption = 'Confirma leitura'
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
      TabOrder = 0
      OnClick = BtnConfirmaClick
    end
    object Edit1: TEdit
      Left = 85
      Top = 13
      Width = 180
      Height = 21
      TabOrder = 1
      Text = 'C:\AUTOREV\PECAS136NCM.TXT'
    end
    object ProgressBar1: TProgressBar
      Left = 12
      Top = 209
      Width = 389
      Height = 17
      Max = 10000
      TabOrder = 9
    end
    object BtnAtualiza: TBitBtn
      Left = 271
      Top = 40
      Width = 109
      Height = 26
      Caption = 'Atualiza pre'#231'os'
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
      TabOrder = 2
      OnClick = BtnAtualizaClick
    end
    object Reajuste: TEdit
      Left = 85
      Top = 42
      Width = 52
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 271
      Top = 72
      Width = 109
      Height = 26
      Caption = 'Atualiza Cidades'
      Enabled = False
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
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BtnOrc: TBitBtn
      Left = 271
      Top = 104
      Width = 109
      Height = 26
      Caption = 'Acrescer Orc ao Estoque'
      Enabled = False
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
      OnClick = BtnOrcClick
    end
    object Edit2: TEdit
      Left = 85
      Top = 124
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Edit2'
    end
    object BtnICMS: TBitBtn
      Left = 271
      Top = 133
      Width = 109
      Height = 26
      Caption = 'ICMS Subst'
      Enabled = False
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
      TabOrder = 7
      OnClick = BtnICMSClick
    end
    object BtnCST: TBitBtn
      Left = 271
      Top = 165
      Width = 109
      Height = 26
      Caption = 'CST'
      Enabled = False
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
      TabOrder = 8
      OnClick = BtnCSTClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 232
    Width = 415
    Height = 19
    Panels = <>
  end
  object tblPecyam: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Pecyam'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    InsertSQL.Strings = (
      'insert into Pecyam'
      
        '  (CODIGO, CODIGO_NOVO, CUSTO, DESCRICAO, ID_PECYAM, IPI, NCM, O' +
        'RIGEM, '
      '   PESO, PPS, PRECO_GARAN, QTDE_EMBAL, REAJUSTE, RESERVADO)'
      'values'
      
        '  (:CODIGO, :CODIGO_NOVO, :CUSTO, :DESCRICAO, :ID_PECYAM, :IPI, ' +
        ':NCM, :ORIGEM, '
      
        '   :PESO, :PPS, :PRECO_GARAN, :QTDE_EMBAL, :REAJUSTE, :RESERVADO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECYAM,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  CODIGO_NOVO,'
      '  ORIGEM,'
      '  CUSTO,'
      '  PESO,'
      '  QTDE_EMBAL,'
      '  IPI,'
      '  REAJUSTE,'
      '  PRECO_GARAN,'
      '  PPS,'
      '  RESERVADO,'
      '  NCM'
      'from Pecyam '
      'where'
      '  ID_PECYAM = :ID_PECYAM')
    SelectSQL.Strings = (
      'Select * From Pecyam')
    ModifySQL.Strings = (
      'update Pecyam'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODIGO_NOVO = :CODIGO_NOVO,'
      '  CUSTO = :CUSTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PECYAM = :ID_PECYAM,'
      '  IPI = :IPI,'
      '  NCM = :NCM,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PPS = :PPS,'
      '  PRECO_GARAN = :PRECO_GARAN,'
      '  QTDE_EMBAL = :QTDE_EMBAL,'
      '  REAJUSTE = :REAJUSTE,'
      '  RESERVADO = :RESERVADO'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    ParamCheck = True
    UniDirectional = False
    Left = 352
    Top = 8
    object tblPecyamID_PECYAM: TIntegerField
      FieldName = 'ID_PECYAM'
      Origin = '"PECYAM"."ID_PECYAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPecyamCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECYAM"."CODIGO"'
      Size = 12
    end
    object tblPecyamDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECYAM"."DESCRICAO"'
      Size = 61
    end
    object tblPecyamCODIGO_NOVO: TIBStringField
      FieldName = 'CODIGO_NOVO'
      Origin = '"PECYAM"."CODIGO_NOVO"'
      Size = 12
    end
    object tblPecyamORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PECYAM"."ORIGEM"'
      Size = 1
    end
    object tblPecyamCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PECYAM"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblPecyamPESO: TIBStringField
      FieldName = 'PESO'
      Origin = '"PECYAM"."PESO"'
      Size = 7
    end
    object tblPecyamQTDE_EMBAL: TIBStringField
      FieldName = 'QTDE_EMBAL'
      Origin = '"PECYAM"."QTDE_EMBAL"'
      Size = 5
    end
    object tblPecyamIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECYAM"."IPI"'
      Precision = 9
      Size = 2
    end
    object tblPecyamREAJUSTE: TIBBCDField
      FieldName = 'REAJUSTE'
      Origin = '"PECYAM"."REAJUSTE"'
      Precision = 9
      Size = 2
    end
    object tblPecyamPRECO_GARAN: TIBBCDField
      FieldName = 'PRECO_GARAN'
      Origin = '"PECYAM"."PRECO_GARAN"'
      Precision = 18
      Size = 2
    end
    object tblPecyamPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECYAM"."PPS"'
      Precision = 18
      Size = 2
    end
    object tblPecyamRESERVADO: TIBStringField
      FieldName = 'RESERVADO'
      Origin = '"PECYAM"."RESERVADO"'
      Size = 2
    end
    object tblPecyamNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECYAM"."NCM"'
      Size = 10
    end
  end
  object DataSourcePecyam: TDataSource
    AutoEdit = False
    DataSet = tblPecyam
    Left = 320
    Top = 8
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SET GENERATOR SEQ_PECYAM_ID TO 0;')
    Left = 384
    Top = 40
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Delete From PEcyam')
    Left = 384
    Top = 8
  end
  object DataSourcePecas: TDataSource
    AutoEdit = False
    DataSet = tblPecas
    Left = 352
    Top = 80
  end
  object tblPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      '')
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
    ParamCheck = True
    UniDirectional = False
    Left = 384
    Top = 80
    object tblPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS"."ID_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object tblPecasCODIGO_SGS: TIntegerField
      FieldName = 'CODIGO_SGS'
      Origin = '"PECAS"."CODIGO_SGS"'
    end
    object tblPecasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECAS"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object tblPecyam1: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Pecyam'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    InsertSQL.Strings = (
      'insert into Pecyam'
      
        '  (CODIGO, CODIGO_NOVO, CUSTO, DESCRICAO, ID_PECYAM, IPI, NCM, O' +
        'RIGEM, '
      '   PESO, PPS, PRECO_GARAN, QTDE_EMBAL, REAJUSTE, RESERVADO)'
      'values'
      
        '  (:CODIGO, :CODIGO_NOVO, :CUSTO, :DESCRICAO, :ID_PECYAM, :IPI, ' +
        ':NCM, :ORIGEM, '
      
        '   :PESO, :PPS, :PRECO_GARAN, :QTDE_EMBAL, :REAJUSTE, :RESERVADO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECYAM,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  CODIGO_NOVO,'
      '  ORIGEM,'
      '  CUSTO,'
      '  PESO,'
      '  QTDE_EMBAL,'
      '  IPI,'
      '  REAJUSTE,'
      '  PRECO_GARAN,'
      '  PPS,'
      '  RESERVADO,'
      '  NCM'
      'from Pecyam '
      'where'
      '  ID_PECYAM = :ID_PECYAM')
    SelectSQL.Strings = (
      'Select * From Pecyam'
      'where Codigo = :idCodigo')
    ModifySQL.Strings = (
      'update Pecyam'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODIGO_NOVO = :CODIGO_NOVO,'
      '  CUSTO = :CUSTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PECYAM = :ID_PECYAM,'
      '  IPI = :IPI,'
      '  NCM = :NCM,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PPS = :PPS,'
      '  PRECO_GARAN = :PRECO_GARAN,'
      '  QTDE_EMBAL = :QTDE_EMBAL,'
      '  REAJUSTE = :REAJUSTE,'
      '  RESERVADO = :RESERVADO'
      'where'
      '  ID_PECYAM = :OLD_ID_PECYAM')
    ParamCheck = True
    UniDirectional = False
    Left = 384
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'ID_PECYAM'
      Origin = '"PECYAM"."ID_PECYAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PECYAM"."CODIGO"'
      Size = 12
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PECYAM"."DESCRICAO"'
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'CODIGO_NOVO'
      Origin = '"PECYAM"."CODIGO_NOVO"'
      Size = 12
    end
    object IBStringField4: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PECYAM"."ORIGEM"'
      Size = 1
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PECYAM"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object IBStringField5: TIBStringField
      FieldName = 'PESO'
      Origin = '"PECYAM"."PESO"'
      Size = 7
    end
    object IBStringField6: TIBStringField
      FieldName = 'QTDE_EMBAL'
      Origin = '"PECYAM"."QTDE_EMBAL"'
      Size = 5
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PECYAM"."IPI"'
      Precision = 9
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'REAJUSTE'
      Origin = '"PECYAM"."REAJUSTE"'
      Precision = 9
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'PRECO_GARAN'
      Origin = '"PECYAM"."PRECO_GARAN"'
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'PPS'
      Origin = '"PECYAM"."PPS"'
      Precision = 18
      Size = 2
    end
    object IBStringField7: TIBStringField
      FieldName = 'RESERVADO'
      Origin = '"PECYAM"."RESERVADO"'
      Size = 2
    end
    object tblPecyam1NCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"PECYAM"."NCM"'
      Size = 10
    end
  end
  object DataSourcePecyam1: TDataSource
    AutoEdit = False
    DataSet = tblPecyam1
    Left = 352
    Top = 112
  end
  object DataSourceCidade: TDataSource
    AutoEdit = False
    DataSet = tblCidade
    Left = 352
    Top = 144
  end
  object tblCidade: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from codigo_cidade'
      'where'
      '  ID_CODIGO_CIDADE = :OLD_ID_CODIGO_CIDADE')
    InsertSQL.Strings = (
      'insert into codigo_cidade'
      '  (CIDADE, CODIGO, ESTADO, ID_CODIGO_CIDADE)'
      'values'
      '  (:CIDADE, :CODIGO, :ESTADO, :ID_CODIGO_CIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CODIGO_CIDADE,'
      '  CODIGO,'
      '  CIDADE,'
      '  ESTADO'
      'from codigo_cidade '
      'where'
      '  ID_CODIGO_CIDADE = :ID_CODIGO_CIDADE')
    SelectSQL.Strings = (
      'Select * from codigo_cidade'
      'where Estado = :Estado and'
      'Cidade = :Cidade')
    ModifySQL.Strings = (
      'update codigo_cidade'
      'set'
      '  CIDADE = :CIDADE,'
      '  CODIGO = :CODIGO,'
      '  ESTADO = :ESTADO,'
      '  ID_CODIGO_CIDADE = :ID_CODIGO_CIDADE'
      'where'
      '  ID_CODIGO_CIDADE = :OLD_ID_CODIGO_CIDADE')
    ParamCheck = True
    UniDirectional = False
    Left = 384
    Top = 144
    object tblCidadeID_CODIGO_CIDADE: TIntegerField
      FieldName = 'ID_CODIGO_CIDADE'
      Origin = '"CODIGO_CIDADE"."ID_CODIGO_CIDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCidadeCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CODIGO_CIDADE"."CODIGO"'
      Size = 7
    end
    object tblCidadeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CODIGO_CIDADE"."CIDADE"'
      Required = True
      Size = 50
    end
    object tblCidadeESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CODIGO_CIDADE"."ESTADO"'
      Required = True
      Size = 2
    end
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPessoasAfterPost
    AfterPost = tblPessoasAfterPost
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
      
        '   CODIGO, CODIGO_MUNICIPIO, COENDERECO, COESTADO, COMISSAO, CON' +
        'TA, CPF, '
      
        '   DESCONTO, EMAIL, EMPR_BAIRRO, EMPR_CEP, EMPR_CIDADE, EMPR_END' +
        'ERECO, '
      
        '   EMPR_ESTADO, EMPR_FONE, EMPRESA, ENDERECO, ESTADO, FABRICANTE' +
        ', FINANCEIRA, '
      
        '   FONE1, FONE2, FONE3, FORNECEDOR, FOTO, ID_CLIENTES, ID_CONCES' +
        'SIONARIA, '
      
        '   IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOME, NUM_CPF, PAI, RE' +
        'F_AG_BANC, '
      
        '   REF_BANC, REF_COML_FONE1, REF_COML_FONE2, REF_COML1, REF_COML' +
        '2, REF_CTA_BANC, '
      
        '   REF_FONE1, REF_FONE2, REF_NOME1, REF_NOME2, REG_SPC, SALARIO,' +
        ' SPC, TRANSPORTADORA, '
      '   VENDEDOR)'
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
      
        '   :NOME, :NUM_CPF, :PAI, :REF_AG_BANC, :REF_BANC, :REF_COML_FON' +
        'E1, :REF_COML_FONE2, '
      
        '   :REF_COML1, :REF_COML2, :REF_CTA_BANC, :REF_FONE1, :REF_FONE2' +
        ', :REF_NOME1, '
      
        '   :REF_NOME2, :REG_SPC, :SALARIO, :SPC, :TRANSPORTADORA, :VENDE' +
        'DOR)')
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
      '  CODIGO_MUNICIPIO'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
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
    Left = 208
    Top = 128
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
    end
    object tblPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
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
      Size = 50
    end
    object tblPessoasMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Size = 50
    end
    object tblPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object tblPessoasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 50
    end
    object tblPessoasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 50
    end
    object tblPessoasESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 2
    end
    object tblPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
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
    object tblPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object tblPessoasCOENDERECO: TIBStringField
      FieldName = 'COENDERECO'
      Origin = '"CLIENTES"."COENDERECO"'
      Size = 50
    end
    object tblPessoasCOBAIRRO: TIBStringField
      FieldName = 'COBAIRRO'
      Origin = '"CLIENTES"."COBAIRRO"'
      Size = 50
    end
    object tblPessoasCOCIDADE: TIBStringField
      FieldName = 'COCIDADE'
      Origin = '"CLIENTES"."COCIDADE"'
      Size = 50
    end
    object tblPessoasCOESTADO: TIBStringField
      FieldName = 'COESTADO'
      Origin = '"CLIENTES"."COESTADO"'
      Size = 2
    end
    object tblPessoasCOCEP: TIBStringField
      FieldName = 'COCEP'
      Origin = '"CLIENTES"."COCEP"'
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
      currency = True
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
      FixedChar = True
      Size = 1
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
      FixedChar = True
      Size = 1
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
    object tblPessoasFINANCEIRA: TIBStringField
      FieldName = 'FINANCEIRA'
      Origin = '"CLIENTES"."FINANCEIRA"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = '"CLIENTES"."FABRICANTE"'
      FixedChar = True
      Size = 1
    end
    object tblPessoasCODIGO_MUNICIPIO: TIBStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = '"CLIENTES"."CODIGO_MUNICIPIO"'
      Size = 7
    end
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 240
    Top = 128
  end
  object tblPecasEstoque: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'where (id_concessionaria = :idconcessionaria) and'
      '(id_pecas = :idpecas)')
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
    ParamCheck = True
    UniDirectional = False
    Left = 16
    Top = 96
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
    object tblPecasEstoqueID_PECAS_ESTOQUE: TIntegerField
      FieldName = 'ID_PECAS_ESTOQUE'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS_ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPecasEstoqueID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"PECAS_ESTOQUE"."ID_PECAS"'
    end
    object tblPecasEstoqueID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"PECAS_ESTOQUE"."ID_CONCESSIONARIA"'
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
    AutoEdit = False
    DataSet = tblPecasEstoque
    Left = 48
    Top = 96
  end
  object DataSourcePecasMovimentacao: TDataSource
    AutoEdit = False
    DataSet = tblPecasMovimentacao
    Left = 48
    Top = 128
  end
  object tblPecasMovimentacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PECAS_MOVIMENTACAO'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    InsertSQL.Strings = (
      'insert into PECAS_MOVIMENTACAO'
      
        '  (CUSTO_MEDIO, DATA, ID_CONCESSIONARIA, ID_PECAS, ID_PECAS_MOVI' +
        'MENTACAO, '
      '   MOVIMENTO, QUANTIDADE_ATUAL, QUANTIDADE_MOVIMENTADA)'
      'values'
      
        '  (:CUSTO_MEDIO, :DATA, :ID_CONCESSIONARIA, :ID_PECAS, :ID_PECAS' +
        '_MOVIMENTACAO, '
      '   :MOVIMENTO, :QUANTIDADE_ATUAL, :QUANTIDADE_MOVIMENTADA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PECAS_MOVIMENTACAO,'
      '  ID_CONCESSIONARIA,'
      '  ID_PECAS,'
      '  MOVIMENTO,'
      '  QUANTIDADE_MOVIMENTADA,'
      '  QUANTIDADE_ATUAL,'
      '  CUSTO_MEDIO,'
      '  DATA'
      'from PECAS_MOVIMENTACAO '
      'where'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO')
    SelectSQL.Strings = (
      'select * from PECAS_MOVIMENTACAO'
      'where (id_concessionaria = :idconcessionaria) and'
      '(id_pecas = :idpecas)')
    ModifySQL.Strings = (
      'update PECAS_MOVIMENTACAO'
      'set'
      '  CUSTO_MEDIO = :CUSTO_MEDIO,'
      '  DATA = :DATA,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_PECAS = :ID_PECAS,'
      '  ID_PECAS_MOVIMENTACAO = :ID_PECAS_MOVIMENTACAO,'
      '  MOVIMENTO = :MOVIMENTO,'
      '  QUANTIDADE_ATUAL = :QUANTIDADE_ATUAL,'
      '  QUANTIDADE_MOVIMENTADA = :QUANTIDADE_MOVIMENTADA'
      'where'
      '  ID_PECAS_MOVIMENTACAO = :OLD_ID_PECAS_MOVIMENTACAO')
    ParamCheck = True
    UniDirectional = False
    Left = 16
    Top = 128
    object tblPecasMovimentacaoID_PECAS_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_PECAS_MOVIMENTACAO'
      Origin = '"PECAS_MOVIMENTACAO"."ID_PECAS_MOVIMENTACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
  object tblAtendimentoPecas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPecyamAfterCancel
    AfterDelete = tblPecyamAfterPost
    AfterPost = tblPecyamAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATENDIMENTO_PECAS'
      'where'
      '  ID_ATENDIMENTO_PECAS = :OLD_ID_ATENDIMENTO_PECAS')
    InsertSQL.Strings = (
      'insert into ATENDIMENTO_PECAS'
      
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
      'from ATENDIMENTO_PECAS '
      'where'
      '  ID_ATENDIMENTO_PECAS = :ID_ATENDIMENTO_PECAS')
    SelectSQL.Strings = (
      'select * from ATENDIMENTO_PECAS'
      'where Id_Atendimento = :IdAtendimento')
    ModifySQL.Strings = (
      'update ATENDIMENTO_PECAS'
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
    ParamCheck = True
    UniDirectional = False
    Left = 16
    Top = 160
    object tblAtendimentoPecasID_ATENDIMENTO_PECAS: TIntegerField
      FieldName = 'ID_ATENDIMENTO_PECAS'
      Origin = '"ATENDIMENTO_PECAS"."ID_ATENDIMENTO_PECAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblAtendimentoPecasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"ATENDIMENTO_PECAS"."ID_CONCESSIONARIA"'
    end
    object tblAtendimentoPecasID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = '"ATENDIMENTO_PECAS"."ID_ATENDIMENTO"'
    end
    object tblAtendimentoPecasID_PECAS: TIntegerField
      FieldName = 'ID_PECAS'
      Origin = '"ATENDIMENTO_PECAS"."ID_PECAS"'
    end
    object tblAtendimentoPecasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ATENDIMENTO_PECAS"."QUANTIDADE"'
    end
    object tblAtendimentoPecasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ATENDIMENTO_PECAS"."PRECO"'
      currency = True
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
  object DataSourceAtendimentoPecas: TDataSource
    AutoEdit = False
    DataSet = tblAtendimentoPecas
    Left = 48
    Top = 160
  end
end
