object BoxFinanceiroCaixaSaidasCombustivel: TBoxFinanceiroCaixaSaidasCombustivel
  Left = 15
  Top = 215
  Caption = 'Sa'#237'das de caixa - Combust'#237'vel'
  ClientHeight = 339
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 489
    Height = 296
    TabOrder = 0
    object Panel2: TPanel
      Left = 135
      Top = 170
      Width = 346
      Height = 119
      TabOrder = 0
      object LabelDuplicata: TLabel
        Left = 16
        Top = 95
        Width = 48
        Height = 13
        Caption = 'Duplicata:'
      end
      object LabelCartao: TLabel
        Left = 16
        Top = 76
        Width = 37
        Height = 13
        Caption = 'Cart'#227'o:'
      end
      object LabelChequePos: TLabel
        Left = 16
        Top = 57
        Width = 66
        Height = 13
        Caption = 'Cheques P'#243's:'
      end
      object Label6: TLabel
        Left = 16
        Top = 38
        Width = 41
        Height = 13
        Caption = 'Cheque:'
      end
      object Label5: TLabel
        Left = 16
        Top = 19
        Width = 43
        Height = 13
        Caption = 'Dinheiro:'
      end
      object LabelForma: TLabel
        Left = 16
        Top = 0
        Width = 30
        Height = 13
        Caption = 'Forma'
      end
      object Dinheiro: TCurrencyEdit
        Left = 100
        Top = 16
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Enabled = False
        TabOrder = 0
      end
      object Cheque: TCurrencyEdit
        Left = 100
        Top = 35
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Enabled = False
        TabOrder = 1
      end
      object ChequePos: TCurrencyEdit
        Left = 100
        Top = 54
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Enabled = False
        TabOrder = 2
      end
      object Cartao: TCurrencyEdit
        Left = 100
        Top = 73
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Enabled = False
        TabOrder = 3
      end
      object Duplicata: TCurrencyEdit
        Left = 100
        Top = 92
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Enabled = False
        TabOrder = 4
      end
    end
    object Panel3: TPanel
      Left = 135
      Top = 24
      Width = 346
      Height = 140
      TabOrder = 1
      object LabelCliente: TLabel
        Left = 16
        Top = 66
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object Label11: TLabel
        Left = 16
        Top = 93
        Width = 33
        Height = 13
        Caption = 'Conta:'
      end
      object Label12: TLabel
        Left = 16
        Top = 120
        Width = 45
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object LabelData: TLabel
        Left = 16
        Top = 39
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label1: TLabel
        Left = 16
        Top = 12
        Width = 58
        Height = 13
        Caption = 'Documento:'
      end
      object SpeedButton1: TSpeedButton
        Left = 121
        Top = 89
        Width = 23
        Height = 22
        Enabled = False
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
      end
      object SpeedButton2: TSpeedButton
        Left = 177
        Top = 8
        Width = 23
        Height = 22
        Enabled = False
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
      end
      object Cliente: TDBEdit
        Left = 79
        Top = 63
        Width = 36
        Height = 21
        DataField = 'ID_CLIENTES'
        Enabled = False
        TabOrder = 0
      end
      object Conta: TDBEdit
        Left = 79
        Top = 90
        Width = 36
        Height = 21
        DataField = 'CONTA'
        Enabled = False
        TabOrder = 1
      end
      object NomeConta: TDBEdit
        Left = 150
        Top = 90
        Width = 187
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object Historico: TDBEdit
        Left = 79
        Top = 117
        Width = 258
        Height = 21
        DataField = 'HISTORICO'
        Enabled = False
        TabOrder = 3
      end
      object Documento: TDBEdit
        Left = 79
        Top = 9
        Width = 92
        Height = 21
        DataField = 'DOCUMENTO'
        Enabled = False
        TabOrder = 4
      end
      object Data: TJvDBDateEdit
        Left = 79
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DATA'
        Enabled = False
        TabOrder = 5
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 3
      Top = 24
      Width = 126
      Height = 265
      Caption = 'Destino da sa'#237'da'
      Items.Strings = (
        'Administra'#231#227'o'
        'Combust'#237'vel'
        'Cons'#243'rcio'
        'Dep'#243'sito banc'#225'rio'
        'Pe'#231'as'
        'Oficina')
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 320
    Width = 489
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 489
    Height = 29
    ButtonHeight = 26
    Caption = 'ToolBar1'
    TabOrder = 2
    object BtnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 100
      Height = 26
      Caption = 'Nova sa'#237'da'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    end
    object BtnConfirma: TBitBtn
      Left = 100
      Top = 0
      Width = 100
      Height = 26
      Caption = 'Confirma'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  object tblCxProv: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from CXPROV'
      'where'
      '  ID_CXPROV = :OLD_ID_CXPROV')
    InsertSQL.Strings = (
      'insert into CXPROV'
      
        '  (DATA, DOCUMENTO, HISTORICO, ID_CLIENTES, ID_CXPROV, ORIGEM, V' +
        'ALOR)'
      'values'
      
        '  (:DATA, :DOCUMENTO, :HISTORICO, :ID_CLIENTES, :ID_CXPROV, :ORI' +
        'GEM, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CXPROV,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  ORIGEM,'
      '  DATA,'
      '  VALOR,'
      '  HISTORICO'
      'from CXPROV '
      'where'
      '  ID_CXPROV = :ID_CXPROV')
    SelectSQL.Strings = (
      'select * from CXPROV'
      'where id_Concessionaria = :id')
    ModifySQL.Strings = (
      'update CXPROV'
      'set'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CXPROV = :ID_CXPROV,'
      '  ORIGEM = :ORIGEM,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CXPROV = :OLD_ID_CXPROV')
    Left = 344
    Top = 56
    object tblCxProvID_CXPROV: TIntegerField
      FieldName = 'ID_CXPROV'
      Origin = '"CXPROV"."ID_CXPROV"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCxProvID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CXPROV"."ID_CLIENTES"'
    end
    object tblCxProvDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CXPROV"."DOCUMENTO"'
      Size = 10
    end
    object tblCxProvORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CXPROV"."ORIGEM"'
      Size = 1
    end
    object tblCxProvDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CXPROV"."DATA"'
    end
    object tblCxProvVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CXPROV"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCxProvHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CXPROV"."HISTORICO"'
      Required = True
      Size = 50
    end
  end
  object DataSourceCxProv: TDataSource
    AutoEdit = False
    DataSet = tblCxProv
    Left = 376
    Top = 56
  end
  object tblPlacon: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    DeleteSQL.Strings = (
      'delete from PLACON'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    InsertSQL.Strings = (
      'insert into PLACON'
      '  (CLASSIFICACAO, CONTA, DESCRICAO, ID_PLACON, NIVEL, TIPO)'
      'values'
      
        '  (:CLASSIFICACAO, :CONTA, :DESCRICAO, :ID_PLACON, :NIVEL, :TIPO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PLACON,'
      '  CONTA,'
      '  DESCRICAO,'
      '  TIPO,'
      '  NIVEL,'
      '  CLASSIFICACAO'
      'from PLACON '
      'where'
      '  ID_PLACON = :ID_PLACON')
    SelectSQL.Strings = (
      'select * from PLACON'
      'where id_placon = :id')
    ModifySQL.Strings = (
      'update PLACON'
      'set'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  CONTA = :CONTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PLACON = :ID_PLACON,'
      '  NIVEL = :NIVEL,'
      '  TIPO = :TIPO'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    Left = 385
    Top = 136
    object tblPlaconID_PLACON: TIntegerField
      FieldName = 'ID_PLACON'
      Origin = '"PLACON"."ID_PLACON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPlaconCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"PLACON"."CONTA"'
      Size = 4
    end
    object tblPlaconDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PLACON"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object tblPlaconTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PLACON"."TIPO"'
      Size = 1
    end
    object tblPlaconNIVEL: TIBStringField
      FieldName = 'NIVEL'
      Origin = '"PLACON"."NIVEL"'
      Size = 1
    end
    object tblPlaconCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"PLACON"."CLASSIFICACAO"'
      Size = 1
    end
  end
  object DataSourcePlacon: TDataSource
    AutoEdit = False
    DataSet = tblPlacon
    Left = 417
    Top = 136
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
      
        '  (CONTA, DATA, DOCUMENTO, FORMA_PAG, HISTORICO, ID_CAIXA, ID_CL' +
        'IENTES, '
      '   ID_CONCESSIONARIA, NATUREZA, VALOR)'
      'values'
      
        '  (:CONTA, :DATA, :DOCUMENTO, :FORMA_PAG, :HISTORICO, :ID_CAIXA,' +
        ' :ID_CLIENTES, '
      '   :ID_CONCESSIONARIA, :NATUREZA, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CAIXA,'
      '  ID_CONCESSIONARIA,'
      '  DOCUMENTO,'
      '  NATUREZA,'
      '  DATA,'
      '  VALOR,'
      '  FORMA_PAG,'
      '  CONTA,'
      '  HISTORICO,'
      '  ID_CLIENTES'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select * from CAIXA')
    ModifySQL.Strings = (
      'update CAIXA'
      'set'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  FORMA_PAG = :FORMA_PAG,'
      '  HISTORICO = :HISTORICO,'
      '  ID_CAIXA = :ID_CAIXA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  NATUREZA = :NATUREZA,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    Left = 416
    Top = 280
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
    end
    object tblCaixaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CAIXA"."DOCUMENTO"'
      Size = 10
    end
    object tblCaixaNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"CAIXA"."NATUREZA"'
      FixedChar = True
      Size = 1
    end
    object tblCaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CAIXA"."DATA"'
    end
    object tblCaixaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
    object tblCaixaFORMA_PAG: TIBStringField
      FieldName = 'FORMA_PAG'
      Origin = '"CAIXA"."FORMA_PAG"'
      Size = 13
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      FixedChar = True
      Size = 4
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 50
    end
    object tblCaixaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CAIXA"."ID_CLIENTES"'
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 448
    Top = 280
  end
end
