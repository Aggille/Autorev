object BoxFinanceiroRenegociacaoEfetuar: TBoxFinanceiroRenegociacaoEfetuar
  Left = 15
  Top = 150
  Caption = 'Renegocia'#231#227'o de d'#237'vidas - Efetuar'
  ClientHeight = 399
  ClientWidth = 736
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 380
    Width = 736
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = -1
    Width = 738
    Height = 382
    TabOrder = 1
    TabStop = True
    object LabelCodigo: TLabel
      Left = 14
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object SpeedButton1: TSpeedButton
      Left = 132
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF777777BDBDBDFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5084B20F6FE1
        325F8CB87E7AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFABABAB9797978B8B8BC1C1C1FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB8B8B8BCBCBC9898988A8A8AC0C0C0FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF37A4FE
        379FFF0E6DDE355F89BB7F79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFBBBBBBBCBCBC9595958B8B8BC2C2C2FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBBBBBBBABABA9696968C8C8CBABABAFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF38A5FE329DFF156DCE444F5BFF00FF9C6B65AF887BAF887EAA8075FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBCBCBCB9B9B99494947E7E7EFF
        00FF979797AAAAAAABABABA5A5A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBED1D1D1A8A8A8A3
        A3A3D4D4D4F1F1F1F2F2F2EBEBEBC5C5C59D9D9DFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC0917DFCE9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFF
        FAE3D3D1996965FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB1B1B1DD
        DDDDEBEBEBECECECEDEDEDF2F2F2FDFDFDE3E3E3969696FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D1
        D1D1E7E7E7EDEDEDF1F1F1FBFBFBFEFEFEFEFEFEB1B1B1FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFB08978FEDA97EDB478FBEEBBFFFFD3FFFFDCFFFFF4FFFF
        F4FFFFE2E9DDBCA67B73FF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D5D5D5C1
        C1C1E3E3E3EEEEEEF1F1F1FBFBFBFBFBFBF4F4F4DCDCDCA2A2A2FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D6D6D6B7
        B7B7D2D2D2EBEBEBEFEFEFF1F1F1F1F1F1EFEFEFE2E2E2A4A4A4FF00FFFF00FF
        FF00FFFF00FFFF00FFAA7F73FAE0A4F0B778EEBA7BF6DDA6FEFBCCFFFFD3FFFF
        D1FFFFD7D9C5A7A3756CFF00FFFF00FFFF00FFFF00FFFF00FFA4A4A4D9D9D9C2
        C2C2C3C3C3D8D8D8EBEBEBEEEEEEEDEDEDEFEFEFCECECE9E9E9EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1C1C1F2
        F2F2D7D7D7C3C3C3CDCDCDDBDBDBE3E3E3E9E9E99F9F9FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA1746BE1D4D3FFFEEEF7CC8CF0B473F7C788FCE3
        A5C2A088A5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9D9DE2
        E2E2F8F8F8CECECEC0C0C0CCCCCCDADADAB7B7B79F9F9FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF96
        9696B3B3B3D3D3D3D0D0D0C9C9C99F9F9F9F9F9FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA77E70A98073A4786EFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA2A2A2A3A3A39F9F9FFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 161
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Nome do cliente:'
    end
    object Label1: TLabel
      Left = 14
      Top = 194
      Width = 121
      Height = 13
      Caption = 'Documento a renegociar:'
    end
    object Label2: TLabel
      Left = 268
      Top = 194
      Width = 65
      Height = 13
      Caption = 'Valor original:'
    end
    object Label3: TLabel
      Left = 476
      Top = 194
      Width = 55
      Height = 13
      Caption = 'Valor atual:'
    end
    object CodigoCliente: TMaskEdit
      Left = 78
      Top = 13
      Width = 48
      Height = 21
      Hint = 'Digite a sequ'#234'ncia'
      TabOrder = 0
      Text = ''
      OnExit = CodigoClienteExit
      OnKeyPress = FormKeyPress
    end
    object NomeCliente: TJvDBMaskEdit
      Left = 250
      Top = 13
      Width = 390
      Height = 21
      DataField = 'NOME'
      Enabled = False
      TabOrder = 2
      EditMask = ''
    end
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 37
      Width = 720
      Height = 148
      ControlType.Strings = (
        'ID_FORMA_PAGAMENTO;CustomEdit;FormaPagamento;T')
      Selected.Strings = (
        'ID_CONCESSIONARIA'#9'10'#9'Concession'#225'ria:'#9#9
        'ID_AVALISTA'#9'10'#9'Avalista:'#9#9
        'DOCUMENTO'#9'10'#9'Documento:'#9#9
        'PARCELA'#9'2'#9'Parcela:'#9#9
        'VEZES'#9'2'#9'Vezes:'#9#9
        'ID_FORMA_PAGAMENTO'#9'10'#9'Forma de pagamento:'#9'F'
        'ORIGEM'#9'1'#9'Origem:'#9#9
        'VENCIMENTO'#9'10'#9'Vencimento:'#9#9
        'VALOR'#9'19'#9'Valor devido:'#9#9
        'EMISSAO'#9'10'#9'Emiss'#227'o:'#9#9
        'HISTORICO'#9'50'#9'Hist'#243'rico:'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceCreceber
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnDblClick = wwDBGrid2DblClick
      OnExit = wwDBGrid2Exit
      OnKeyDown = wwDBGrid2KeyDown
      OnKeyPress = wwDBGrid2KeyPress
      OnKeyUp = wwDBGrid2KeyDown
    end
    object DBEdit1: TDBEdit
      Left = 141
      Top = 191
      Width = 121
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DataSourceCreceber
      Enabled = False
      TabOrder = 3
    end
    object Valor_devido: TCurrencyEdit
      Left = 538
      Top = 191
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Enabled = False
      TabOrder = 4
    end
    object wwDBGrid1: TwwDBGrid
      Left = 383
      Top = 218
      Width = 345
      Height = 125
      Selected.Strings = (
        'DOCUMENTO'#9'10'#9'Documento:'#9'F'#9
        'VENCIMENTO'#9'10'#9'Vencimento:'#9'F'#9
        'VALOR'#9'19'#9'Valor R$:'#9'F'#9
        'PARCELA'#9'2'#9'Parcela:'#9'F'
        'VEZES'#9'2'#9'Vezes:'#9'F'
        'EMISSAO'#9'10'#9'Emiss'#227'o:'#9'F'
        'HISTORICO'#9'50'#9'Hist'#243'rico:'#9'F'
        'ID_CRECEBER_RENEGOCIADO'#9'10'#9'ID_CRECEBER_RENEGOCIADO'#9#9
        'ID_FORMA_PAGAMENTO'#9'10'#9'ID_FORMA_PAGAMENTO'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DataSourceRenegociacao
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 218
      Width = 377
      Height = 157
      Enabled = False
      TabOrder = 6
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 39
        Height = 13
        Caption = 'Parcela:'
      end
      object Label9: TLabel
        Left = 8
        Top = 134
        Width = 45
        Height = 13
        Caption = 'Historico:'
      end
      object Label6: TLabel
        Left = 8
        Top = 107
        Width = 28
        Height = 13
        Caption = 'Valor:'
      end
      object Label5: TLabel
        Left = 111
        Top = 80
        Width = 32
        Height = 13
        Caption = 'Vezes:'
      end
      object Label7: TLabel
        Left = 202
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Emiss'#227'o:'
      end
      object Label16: TLabel
        Left = 186
        Top = 107
        Width = 59
        Height = 13
        Caption = 'Vencimento:'
      end
      object Label10: TLabel
        Left = 92
        Top = 54
        Width = 106
        Height = 13
        Caption = 'Forma de pagamento:'
      end
      object Label11: TLabel
        Left = 8
        Top = 11
        Width = 58
        Height = 13
        Caption = 'Documento:'
        FocusControl = Documento
      end
      object Parcela: TJvDBMaskEdit
        Left = 58
        Top = 77
        Width = 47
        Height = 21
        DataField = 'PARCELA'
        DataSource = DataSourceRenegociacao
        TabOrder = 2
        EditMask = ''
        OnKeyPress = FormKeyPress
      end
      object Valor: TJvDBMaskEdit
        Left = 58
        Top = 104
        Width = 119
        Height = 21
        DataField = 'VALOR'
        DataSource = DataSourceRenegociacao
        TabOrder = 5
        EditMask = ''
        OnKeyPress = FormKeyPress
      end
      object Historico: TJvDBMaskEdit
        Left = 58
        Top = 131
        Width = 312
        Height = 21
        Hint = 'Digite a descri'#231#227'o'
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DataSourceRenegociacao
        MaxLength = 50
        TabOrder = 7
        EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;1;_'
        OnKeyPress = FormKeyPress
      end
      object Vezes: TJvDBMaskEdit
        Left = 149
        Top = 77
        Width = 47
        Height = 21
        DataField = 'VEZES'
        DataSource = DataSourceRenegociacao
        TabOrder = 3
        EditMask = ''
        OnKeyPress = FormKeyPress
      end
      object Pagamento: TJvDBDateEdit
        Left = 251
        Top = 77
        Width = 119
        Height = 21
        DataField = 'EMISSAO'
        DataSource = DataSourceRenegociacao
        CheckOnExit = True
        DefaultToday = True
        Enabled = False
        ShowNullDate = False
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object Vencimento: TJvDBDateEdit
        Left = 251
        Top = 104
        Width = 119
        Height = 21
        DataField = 'VENCIMENTO'
        DataSource = DataSourceRenegociacao
        CheckOnExit = True
        DefaultToday = True
        ShowNullDate = False
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 204
        Top = 50
        Width = 166
        Height = 21
        DataField = 'ID_FORMA_PAGAMENTO'
        DataSource = DataSourceRenegociacao
        KeyField = 'ID_FORMAS_PAGAMENTO'
        ListField = 'FORMA_PAGAMENTO'
        ListFieldIndex = 1
        ListSource = DataSourceFormaPagamentos
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object BtnConcluir: TBitBtn
        Left = 245
        Top = 1
        Width = 132
        Height = 23
        Caption = 'Concluir renegocia'#231#227'o'
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
        TabOrder = 10
        OnClick = BtnConcluirClick
        OnKeyPress = FormKeyPress
      end
      object BtnNovo: TBitBtn
        Left = 75
        Top = 1
        Width = 85
        Height = 23
        Hint = 'Registro novo'
        Caption = 'Novo'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
          A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769FF00FFFF00FFFF00FF78787878787878787878787878787878
          7878787878787878787878787878787878787878787878FF00FFFF00FFFF00FF
          B79184FEE9C7F4DAB5F3D5AAF2D0A0EFCB96EFC68BEDC182EBC17FEBC180EBC1
          80F2C782A46769FF00FFFF00FFFF00FF787878DCDCDCDCDCDCB4B4B4B4B4B4B4
          B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          B79187FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
          7FEFC481A46769FF00FFFF00FFFF00FF787878DCDCDCDCDCDCDCDCDCB4B4B4B4
          B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          B7938AFEEFDAF6E0C6F2DABCF2D5B2EFD0A9EECB9EEDC796EBC28CE9BD82E9BD
          7FEFC481A46769FF00FFFF00FFFF00FF787878DCDCDCDCDCDCDCDCDCDCDCDCB4
          B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          BA978FFFF4E5F7E5CFF4E0C5F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
          81EFC480A46769FF00FFFF00FFFF00FF787878FFF4E5DCDCDCDCDCDCDCDCDCDC
          DCDCB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          C09E95FFFBF0F8EADCF6E3CFF4E0C6F2D9BCF2D5B1F0D0A9EDCB9EEDC695EBC2
          8AEFC583A46769FF00FFFF00FFFF00FF787878FFFBF0DCDCDCDCDCDCDCDCDCDC
          DCDCDCDCDCB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          C6A49AFFFFFCFAF0E6F8EADAF7E5CFF4E0C5F2DABAF2D5B1F0D0A7EECB9DEBC7
          93F2C98CA46769FF00FFFF00FFFF00FF787878FFFFFCDCDCDCDCDCDCDCDCDCDC
          DCDCDCDCDCDCDCDCB4B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          CBA99EFFFFFFFEF7F2FAEFE6F8EAD9F7E3CFF6E0C5F2DABBF2D4B1F0D0A7EECC
          9EF3CE97A46769FF00FFFF00FFFF00FF787878FFFFFFFEF7F2FAEFE6DCDCDCDC
          DCDCDCDCDCDCDCDCDCDCDCB4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          CFAC9FFFFFFFFFFEFCFCF6F0FAEFE6F7EADAF6E3CFF4E0C5F3D9BBF3D4B0F0D0
          A6F6D3A0A46769FF00FFFF00FFFF00FF787878FFFFFFFFFEFCFCF6F0DCDCDCDC
          DCDCDCDCDCDCDCDCDCDCDCDCDCDCB4B4B4B4B4B4787878FF00FFFF00FFFF00FF
          D4B0A1FFFFFFFFFFFFFFFEFCFEF7F0FAEFE5F8EAD9F7E5CEF6DEC4F3D9B8F4D8
          B1EBCFA4A46769FF00FFFF00FFFF00FF787878FFFFFFFFFFFFFFFEFCFEF7F0DC
          DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCB4B4B4787878FF00FFFF00FFFF00FF
          D9B5A1FFFFFFFFFFFFFFFFFFFFFEFCFCF7F0FAEFE5F8E9D9F8E7D1FBEACEDECE
          B4B6AA93A46769FF00FFFF00FFFF00FF787878FFFFFFFFFFFFFFFFFFFFFEFCFF
          FFFFFFFFFFDCDCDCDCDCDCDCDCDCDCDCDCB6AA93787878FF00FFFF00FFFF00FF
          DDB7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFCF6EFFCF3E6EDD8C9B68A7BA17B
          6F9C7667A46769FF00FFFF00FFFF00FF787878FFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFCFFFFFFDCDCDCDCDCDCB4B4B47878789C7667787878FF00FFFF00FFFF00FF
          E2BCA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAAD735BE19E
          55E68F31B56D4DFF00FFFF00FFFF00FF787878FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFBFFFEF7B4B4B4787878DCDCDCB4B4B4787878FF00FFFF00FFFF00FF
          E6BFA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC7C5B88265F8B5
          5CBF7A5CFF00FFFF00FFFF00FFFF00FF787878FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB4B4B4787878B4B4B4787878FF00FFFF00FFFF00FFFF00FF
          E4BCA4FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0B77F62C183
          6CFF00FFFF00FFFF00FFFF00FFFF00FF787878FBF4F0FBF4EFFAF3EFFAF3EFF8
          F2EFF7F2EFF7F2EFB4B4B4DCDCDC787878FF00FFFF00FFFF00FFFF00FFFF00FF
          E8C4ADEBCBB7EBCBB7EACBB7EACAB6EACAB6EACAB6EACAB6E3C2B1A56B5FFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF787878B4B4B4B4B4B4B4B4B4B4B4B4B4
          B4B4B4B4B4B4B4B4B4B4B4787878FF00FFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BtnNovoClick
        OnKeyPress = FormKeyPress
      end
      object Documento: TDBEdit
        Left = 8
        Top = 30
        Width = 134
        Height = 21
        DataField = 'DOCUMENTO'
        DataSource = DataSourceRenegociacao
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object BtnSalvar: TBitBtn
        Left = 160
        Top = 1
        Width = 85
        Height = 23
        Hint = 'Registro novo'
        Caption = 'Salvar'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          7F2B287F2B28A18283A18283A18283A18283A18283A18283A182837A1C1C7F2B
          28FF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8EBEBEBEBEBEBEBEBEBEBE
          BEBEBEBEBEBEBEBEBEBEBE8686868E8E8EFF00FFFF00FFFF00FFFF00FF7F2B28
          CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
          2D7F2B28FF00FFFF00FFFF00FF8E8E8EB8B8B8AEAEAEECECEC838383838383F0
          F0F0EEEEEEE8E8E8DADADA7E7E7E9A9A9A8E8E8EFF00FFFF00FFFF00FF7F2B28
          C24A4BB14444E2D9D9791617791617D9D8DAD9DEE1D3D9DCC1BDC1761111982D
          2D7F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4ACACACF0F0F0838383838383ED
          EDEDF0F0F0ECECECDCDCDC7F7F7F9999998E8E8EFF00FFFF00FFFF00FF7F2B28
          C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
          2C7F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4ABABABF2F2F2838383838383EA
          EAEAEFEFEFEEEEEEE0E0E07C7C7C9898988E8E8EFF00FFFF00FFFF00FF7F2B28
          C24A4AB04141EADEDEE7DDDDDDD4D5D7D3D5D5D7D9D7D8DACAC2C57E17179E31
          317F2B28FF00FFFF00FFFF00FF8E8E8EB4B4B4AAAAAAF4F4F4F3F3F3ECECECEA
          EAEAECECECECECECE1E1E18585859D9D9D8E8E8EFF00FFFF00FFFF00FF7F2B28
          BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
          4A7F2B28FF00FFFF00FFFF00FF8E8E8EB1B1B1AFAFAFB2B2B2B8B8B8B6B6B6B1
          B1B1AFAFAFB5B5B5B2B2B2ACACACB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          A33B39B1605DC68684CB918FCC9190CC908FCB8988C98988CB9391CC9696BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EA2A2A2B6B6B6CBCBCBD0D0D0D1D1D1D0
          D0D0CECECECDCDCDD1D1D1D3D3D3B3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFDCDCDCDCDCDCDCDCDCDC
          DCDCDCDCDCDCDCDCDCDCDCFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFDCDCDCDCDCDCDCDCDCDC
          DCDCDCDCDCDCDCDCDCDCDCFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF8E8E8EB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B38E8E8EFF00FFFF00FFFF00FFFF00FF
          7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
          28FF00FFFF00FFFF00FFFF00FFFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BtnSalvarClick
        OnKeyPress = FormKeyPress
      end
    end
    object Valor_Original: TCurrencyEdit
      Left = 340
      Top = 191
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      Enabled = False
      TabOrder = 7
    end
    object JvDBNavigator1: TJvDBNavigator
      Left = 432
      Top = 350
      Width = 225
      Height = 25
      DataSource = DataSourceRenegociacao
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 8
    end
  end
  object FormaPagamento: TDBLookupComboBox
    Left = 538
    Top = 8
    Width = 168
    Height = 21
    DataField = 'ID_FORMA_PAGAMENTO'
    DataSource = DataSourceCreceber
    Enabled = False
    KeyField = 'ID_FORMAS_PAGAMENTO'
    ListField = 'FORMA_PAGAMENTO'
    ListFieldIndex = 1
    ListSource = DataSourceFormaPagamentos
    TabOrder = 2
    Visible = False
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCReceberAfterCancel
    AfterDelete = tblCReceberAfterPost
    AfterPost = tblCReceberAfterPost
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
      'Select * From CLIENTES'
      'where Cliente = '#39'T'#39' and'
      'id_Clientes = :id')
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
    ParamCheck = True
    UniDirectional = False
    Left = 432
    Top = 144
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
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object tblPessoasVENDEDOR_YNOVA: TIBStringField
      FieldName = 'VENDEDOR_YNOVA'
      Origin = '"CLIENTES"."VENDEDOR_YNOVA"'
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
    object tblPessoasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
    end
    object tblPessoasCODIGOSGS: TIntegerField
      FieldName = 'CODIGOSGS'
      Origin = '"CLIENTES"."CODIGOSGS"'
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
    DataSet = tblPessoas
    Left = 464
    Top = 144
  end
  object tblFormasPagamento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCReceberAfterCancel
    AfterDelete = tblCReceberAfterPost
    AfterPost = tblCReceberAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      '')
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
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 504
    Top = 144
    object tblFormasPagamentoID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."ID_FORMAS_PAGAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblFormasPagamentoFORMA_PAGAMENTO: TIBStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = '"FORMAS_PAGAMENTO"."FORMA_PAGAMENTO"'
    end
    object tblFormasPagamentoCOEFICIENTE: TFMTBCDField
      FieldName = 'COEFICIENTE'
      Origin = '"FORMAS_PAGAMENTO"."COEFICIENTE"'
      Precision = 9
      Size = 5
    end
    object tblFormasPagamentoPRAZO: TIBStringField
      FieldName = 'PRAZO'
      Origin = '"FORMAS_PAGAMENTO"."PRAZO"'
      Size = 2
    end
    object tblFormasPagamentoVEICULOS: TIBStringField
      FieldName = 'VEICULOS'
      Origin = '"FORMAS_PAGAMENTO"."VEICULOS"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPagamentoPECAS: TIBStringField
      FieldName = 'PECAS'
      Origin = '"FORMAS_PAGAMENTO"."PECAS"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPagamentoPOSVENDA: TIBStringField
      FieldName = 'POSVENDA'
      Origin = '"FORMAS_PAGAMENTO"."POSVENDA"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPagamentoCRECEBER: TIBStringField
      FieldName = 'CRECEBER'
      Origin = '"FORMAS_PAGAMENTO"."CRECEBER"'
      FixedChar = True
      Size = 1
    end
    object tblFormasPagamentoCPAGAR: TIBStringField
      FieldName = 'CPAGAR'
      Origin = '"FORMAS_PAGAMENTO"."CPAGAR"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceFormaPagamentos: TDataSource
    AutoEdit = False
    DataSet = tblFormasPagamento
    Left = 536
    Top = 144
  end
  object DataSourceCreceber: TDataSource
    AutoEdit = False
    DataSet = tblCReceber
    Left = 536
    Top = 112
  end
  object tblCReceber: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCReceberAfterCancel
    AfterDelete = tblCReceberAfterPost
    AfterPost = tblCReceberAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CReceber'
      'where'
      '  ID_CRECEBER = :OLD_ID_CRECEBER')
    InsertSQL.Strings = (
      'insert into CReceber'
      
        '  (BANCO, BOLETO_EMITIDO, CONTA, DOCUMENTO, EMISSAO, HISTORICO, ' +
        'ID_AVALISTA, '
      
        '   ID_CLIENTES, ID_CONCESSIONARIA, ID_CRECEBER, ID_FORMA_PAGAMEN' +
        'TO, ID_PEDIDO_VEICULOS, '
      
        '   ORIGEM, PAGAMENTO, PARCELA, STATUS, TOTAL, VALOR, VALOR_PAGO,' +
        ' VENCIMENTO, '
      '   VEZES)'
      'values'
      
        '  (:BANCO, :BOLETO_EMITIDO, :CONTA, :DOCUMENTO, :EMISSAO, :HISTO' +
        'RICO, :ID_AVALISTA, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_FORMA_PAG' +
        'AMENTO, '
      
        '   :ID_PEDIDO_VEICULOS, :ORIGEM, :PAGAMENTO, :PARCELA, :STATUS, ' +
        ':TOTAL, '
      '   :VALOR, :VALOR_PAGO, :VENCIMENTO, :VEZES)')
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
      '  ID_PEDIDO_VEICULOS,'
      '  BOLETO_EMITIDO'
      'from CReceber '
      'where'
      '  ID_CRECEBER = :ID_CRECEBER')
    SelectSQL.Strings = (
      'select * from CReceber'
      'where id_clientes = :id'
      'and Status = '#39'Processado'#39)
    ModifySQL.Strings = (
      'update CReceber'
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
    Left = 504
    Top = 112
    object tblCReceberID_CONCESSIONARIA: TIntegerField
      DisplayLabel = 'Concession'#225'ria:'
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object tblCReceberID_AVALISTA: TIntegerField
      DisplayLabel = 'Avalista:'
      DisplayWidth = 10
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCReceberDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento:'
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCReceberPARCELA: TIBStringField
      DisplayLabel = 'Parcela:'
      DisplayWidth = 2
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCReceberVEZES: TIBStringField
      DisplayLabel = 'Vezes:'
      DisplayWidth = 2
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCReceberID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'Forma pgto:'
      DisplayWidth = 10
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblCReceberORIGEM: TIBStringField
      DisplayLabel = 'Origem:'
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCReceberVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento:'
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCReceberVALOR: TIBBCDField
      DisplayLabel = 'Valor devido:'
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o:'
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCReceberHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico:'
      DisplayWidth = 50
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblCReceberID_CRECEBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object tblCReceberTOTAL: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberPAGAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
      Visible = False
    end
    object tblCReceberVALOR_PAGO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberBANCO: TIBStringField
      DisplayWidth = 4
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Visible = False
      Size = 4
    end
    object tblCReceberSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
      Visible = False
    end
    object tblCReceberBOLETO_EMITIDO: TIBStringField
      DisplayWidth = 1
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblCReceberID_CLIENTES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Visible = False
    end
    object tblCReceberID_PEDIDO_VEICULOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
      Visible = False
    end
    object tblCReceberCONTA: TIBStringField
      DisplayWidth = 4
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Visible = False
      Size = 4
    end
  end
  object tblRenegociacao: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCReceberAfterCancel
    AfterDelete = tblCReceberAfterPost
    AfterEdit = tblCReceberAfterPost
    AfterPost = tblCReceberAfterPost
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
      'Select * from Creceber'
      'where id_Creceber_renegociado = :idCreceberRenegociado')
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
    Left = 472
    Top = 272
    object tblRenegociacaoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento:'
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblRenegociacaoVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento:'
      DisplayWidth = 10
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblRenegociacaoVALOR: TIBBCDField
      DisplayLabel = 'Valor R$:'
      DisplayWidth = 19
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblRenegociacaoPARCELA: TIBStringField
      DisplayLabel = 'Parcela:'
      DisplayWidth = 2
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblRenegociacaoVEZES: TIBStringField
      DisplayLabel = 'Vezes:'
      DisplayWidth = 2
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblRenegociacaoEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o:'
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblRenegociacaoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico:'
      DisplayWidth = 50
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblRenegociacaoID_CRECEBER_RENEGOCIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER_RENEGOCIADO'
      Origin = '"CRECEBER"."ID_CRECEBER_RENEGOCIADO"'
    end
    object tblRenegociacaoID_FORMA_PAGAMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblRenegociacaoID_CRECEBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object tblRenegociacaoID_CONCESSIONARIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
      Visible = False
    end
    object tblRenegociacaoID_CLIENTES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
      Visible = False
    end
    object tblRenegociacaoID_AVALISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
      Visible = False
    end
    object tblRenegociacaoORIGEM: TIBStringField
      DisplayWidth = 1
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblRenegociacaoCONTA: TIBStringField
      DisplayWidth = 5
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Visible = False
      Size = 5
    end
    object tblRenegociacaoTOTAL: TIBBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblRenegociacaoPAGAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
      Visible = False
    end
    object tblRenegociacaoVALOR_PAGO: TIBBCDField
      DisplayWidth = 19
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblRenegociacaoBANCO: TIBStringField
      DisplayWidth = 5
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Visible = False
      Size = 5
    end
    object tblRenegociacaoSTATUS: TIBStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
      Visible = False
    end
    object tblRenegociacaoID_PEDIDO_VEICULOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
      Visible = False
    end
    object tblRenegociacaoBOLETO_EMITIDO: TIBStringField
      DisplayWidth = 1
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceRenegociacao: TDataSource
    AutoEdit = False
    DataSet = tblRenegociacao
    Left = 504
    Top = 272
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCReceberAfterCancel
    AfterDelete = tblCReceberAfterPost
    AfterPost = tblCReceberAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSourceCreceber
    ParamCheck = True
    SQL.Strings = (
      'select sum(Creceber.valor) as Valor from Creceber'
      'where Id_Creceber_renegociado = :idCreceberRenegociado')
    Left = 400
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCreceberRenegociado'
        ParamType = ptUnknown
      end>
  end
end
