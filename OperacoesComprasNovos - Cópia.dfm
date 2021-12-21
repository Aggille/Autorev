object BoxComprasNovos: TBoxComprasNovos
  Left = 15
  Top = 145
  Caption = 'Entrada de compras de ve'#237'culos novos'
  ClientHeight = 346
  ClientWidth = 696
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
  object PageControl: TPageControl
    Left = 0
    Top = 35
    Width = 696
    Height = 300
    ActivePage = PageConhecimento
    TabOrder = 0
    object PageConhecimento: TTabSheet
      Caption = 'Conhecimento de frete'
      object Label1: TLabel
        Left = 3
        Top = 104
        Width = 125
        Height = 13
        Caption = 'N'#250'mero do conhecimento:'
      end
      object Label2: TLabel
        Left = 3
        Top = 131
        Width = 79
        Height = 13
        Caption = 'Transportadora:'
      end
      object Label3: TLabel
        Left = 3
        Top = 184
        Width = 70
        Height = 13
        Caption = 'Valor do frete:'
      end
      object Label4: TLabel
        Left = 3
        Top = 211
        Width = 109
        Height = 13
        Caption = 'Valor das mercadorias:'
      end
      object Label52: TLabel
        Left = 3
        Top = 157
        Width = 188
        Height = 13
        Caption = 'Quantidade de notas fiscais neste lote:'
      end
      object SpeedButton1: TSpeedButton
        Left = 205
        Top = 127
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
      object RadioGroup1: TRadioGroup
        Left = 3
        Top = 3
        Width = 150
        Height = 78
        Hint = 
          'Escolha se a entrada de mercadorias tem ou n'#227'o conhecimento de f' +
          'rete'
        Caption = 'Escolha uma op'#231#227'o:'
        Items.Strings = (
          'Com conhecimento'
          'Sem conhecimento')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object CodigoTransportadora: TMaskEdit
        Left = 155
        Top = 128
        Width = 43
        Height = 21
        EditMask = 'cccccc;0; '
        MaxLength = 6
        TabOrder = 2
        OnExit = CodigoTransportadoraExit
        OnKeyPress = FormKeyPress
      end
      object NomeTransportadora: TMaskEdit
        Left = 237
        Top = 128
        Width = 438
        Height = 21
        Enabled = False
        EditMask = '!\ AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\ ;0; '
        MaxLength = 52
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBValorFrete: TJvDBMaskEdit
        Left = 152
        Top = 181
        Width = 121
        Height = 21
        DataField = 'VALOR_FRETE'
        DataSource = DataSourceConhecimento
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object NumeroConhecimento: TMaskEdit
        Left = 155
        Top = 100
        Width = 72
        Height = 21
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBQtdeNfs: TDBEdit
        Left = 197
        Top = 155
        Width = 44
        Height = 21
        DataField = 'QTDE_NFS'
        DataSource = DataSourceConhecimento
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBValorMercadorias: TDBEdit
        Left = 152
        Top = 208
        Width = 121
        Height = 21
        DataField = 'VALOR_MERCADORIAS'
        DataSource = DataSourceConhecimento
        TabOrder = 6
        OnKeyPress = ValorMercadoriasKeyPress
      end
    end
    object PageNotasFiscais: TTabSheet
      Caption = 'Notas Fiscais'
      object Label5: TLabel
        Left = 10
        Top = 34
        Width = 108
        Height = 13
        Caption = 'N'#250'mero da nota fiscal:'
      end
      object Label6: TLabel
        Left = 9
        Top = 113
        Width = 83
        Height = 13
        Caption = 'Data de emiss'#227'o:'
      end
      object Label7: TLabel
        Left = 356
        Top = 113
        Width = 86
        Height = 13
        Caption = 'Data de chegada:'
      end
      object Label8: TLabel
        Left = 9
        Top = 6
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label9: TLabel
        Left = 9
        Top = 138
        Width = 94
        Height = 13
        Caption = 'Total dos produtos:'
      end
      object Label10: TLabel
        Left = 9
        Top = 165
        Width = 60
        Height = 13
        Caption = 'Total do IPI:'
      end
      object Label11: TLabel
        Left = 9
        Top = 192
        Width = 117
        Height = 13
        Caption = 'Total ICMS Substitui'#231#227'o:'
      end
      object Label12: TLabel
        Left = 356
        Top = 191
        Width = 64
        Height = 13
        Caption = 'Total seguro:'
      end
      object Label15: TLabel
        Left = 356
        Top = 246
        Width = 74
        Height = 13
        Caption = 'Total desta NF:'
      end
      object Label16: TLabel
        Left = 356
        Top = 141
        Width = 47
        Height = 13
        Caption = 'Total PIS:'
      end
      object Label14: TLabel
        Left = 9
        Top = 219
        Width = 92
        Height = 13
        Caption = 'Total cr'#233'dito ICMS:'
      end
      object Label53: TLabel
        Left = 223
        Top = 72
        Width = 120
        Height = 13
        Caption = 'Qtde de produtos na NF:'
      end
      object Label54: TLabel
        Left = 446
        Top = 72
        Width = 95
        Height = 13
        Caption = 'S'#233'rie da nota fiscal:'
      end
      object Label55: TLabel
        Left = 9
        Top = 72
        Width = 31
        Height = 13
        Caption = 'CFOP:'
      end
      object Bevel1: TBevel
        Left = 11
        Top = 56
        Width = 570
        Height = 7
      end
      object Label56: TLabel
        Left = 368
        Top = 34
        Width = 174
        Height = 13
        Caption = 'N'#250'mero desta nota fiscal neste lote:'
      end
      object Bevel2: TBevel
        Left = 9
        Top = 96
        Width = 570
        Height = 7
      end
      object SpeedButton2: TSpeedButton
        Left = 172
        Top = 2
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
        OnClick = SpeedButton2Click
      end
      object Label57: TLabel
        Left = 356
        Top = 218
        Width = 62
        Height = 13
        Caption = 'Total outros:'
      end
      object Label58: TLabel
        Left = 11
        Top = 246
        Width = 55
        Height = 13
        Caption = 'Total frete:'
      end
      object SpeedButton3: TSpeedButton
        Left = 202
        Top = 30
        Width = 23
        Height = 20
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
        OnClick = SpeedButton3Click
      end
      object Label13: TLabel
        Left = 356
        Top = 168
        Width = 69
        Height = 13
        Caption = 'Total COFINS:'
      end
      object CodigoFornecedor: TMaskEdit
        Left = 123
        Top = 3
        Width = 43
        Height = 21
        EditMask = 'cccccc;0; '
        MaxLength = 6
        TabOrder = 0
        OnExit = CodigoFornecedorExit
        OnKeyPress = FormKeyPress
      end
      object NomeFornecedor: TMaskEdit
        Left = 201
        Top = 3
        Width = 379
        Height = 21
        Enabled = False
        EditMask = '!\ AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\ ;0; '
        MaxLength = 52
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object Emissao: TJvDBDateEdit
        Left = 152
        Top = 110
        Width = 121
        Height = 21
        DataField = 'EMISSAO'
        DataSource = DataSourceNofi
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object NumeroNotaFiscalLote: TMaskEdit
        Left = 550
        Top = 31
        Width = 31
        Height = 21
        Color = clScrollBar
        Enabled = False
        EditMask = '999;1; '
        MaxLength = 3
        ReadOnly = True
        TabOrder = 17
        Text = '   '
        OnKeyPress = FormKeyPress
      end
      object NotaFiscal: TMaskEdit
        Left = 125
        Top = 30
        Width = 72
        Height = 21
        TabOrder = 1
        OnExit = NotaFiscalExit
        OnKeyPress = FormKeyPress
      end
      object CFOP: TJvDBMaskEdit
        Left = 75
        Top = 69
        Width = 120
        Height = 21
        DataField = 'CFOP'
        DataSource = DataSourceNofi
        MaxLength = 5
        TabOrder = 3
        EditMask = '9.999;1; '
        OnExit = CFOPExit
        OnKeyPress = FormKeyPress
      end
      object ICMSSubst: TJvDBMaskEdit
        Left = 152
        Top = 191
        Width = 121
        Height = 21
        DataField = 'VAL_ICMS_S'
        DataSource = DataSourceNofi
        TabOrder = 10
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object CreditoICMS: TJvDBMaskEdit
        Left = 152
        Top = 218
        Width = 121
        Height = 21
        DataField = 'VAL_ICMS'
        DataSource = DataSourceNofi
        TabOrder = 11
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object Chegada: TJvDBDateEdit
        Left = 459
        Top = 110
        Width = 121
        Height = 21
        DataField = 'SAIDA'
        DataSource = DataSourceNofi
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object Frete: TJvDBMaskEdit
        Left = 152
        Top = 245
        Width = 121
        Height = 21
        DataField = 'VAL_FRETE'
        DataSource = DataSourceNofi
        TabOrder = 12
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object Seguro: TJvDBMaskEdit
        Left = 459
        Top = 190
        Width = 121
        Height = 21
        DataField = 'VAL_SEGURO'
        DataSource = DataSourceNofi
        TabOrder = 15
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object outros: TJvDBMaskEdit
        Left = 459
        Top = 217
        Width = 121
        Height = 21
        DataField = 'VAL_OUTROS'
        DataSource = DataSourceNofi
        TabOrder = 16
        OnExit = outrosExit
        OnKeyPress = FormKeyPress
      end
      object SerieNF: TJvDBMaskEdit
        Left = 547
        Top = 69
        Width = 33
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SERIE'
        DataSource = DataSourceNofi
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object QtdeProdutos: TDBEdit
        Left = 356
        Top = 69
        Width = 29
        Height = 21
        DataField = 'QTDE_PROD'
        DataSource = DataSourceNofi
        TabOrder = 4
        OnExit = QtdeProdutosExit
        OnKeyPress = FormKeyPress
      end
      object TotalProdutos: TDBEdit
        Left = 152
        Top = 135
        Width = 121
        Height = 21
        DataField = 'TOT_PROD'
        DataSource = DataSourceNofi
        TabOrder = 8
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object TotalIPI: TDBEdit
        Left = 152
        Top = 162
        Width = 121
        Height = 21
        DataField = 'VAL_IPI'
        DataSource = DataSourceNofi
        TabOrder = 9
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object TotalNota: TJvDBMaskEdit
        Left = 458
        Top = 243
        Width = 121
        Height = 21
        Color = clScrollBar
        DataField = 'TOT_NOTA'
        DataSource = DataSourceNofi
        Enabled = False
        TabOrder = 18
      end
      object PIS: TJvDBMaskEdit
        Left = 458
        Top = 136
        Width = 121
        Height = 21
        DataField = 'VAL_PIS'
        DataSource = DataSourceNofi
        TabOrder = 13
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
      object COFINS: TJvDBMaskEdit
        Left = 458
        Top = 163
        Width = 121
        Height = 21
        DataField = 'VAL_COFINS'
        DataSource = DataSourceNofi
        TabOrder = 14
        OnExit = TotalProdutosExit
        OnKeyPress = FormKeyPress
      end
    end
    object Pagenovos: TTabSheet
      Caption = 'Ve'#237'culos novos'
      object Label17: TLabel
        Left = 16
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object Label18: TLabel
        Left = 16
        Top = 54
        Width = 38
        Height = 13
        Caption = 'Modelo:'
      end
      object Label19: TLabel
        Left = 16
        Top = 80
        Width = 35
        Height = 13
        Caption = 'Chassi:'
      end
      object Label20: TLabel
        Left = 16
        Top = 105
        Width = 21
        Height = 13
        Caption = 'Cor:'
      end
      object Label21: TLabel
        Left = 16
        Top = 129
        Width = 62
        Height = 13
        Caption = 'Combust'#237'vel:'
      end
      object Label22: TLabel
        Left = 254
        Top = 5
        Width = 83
        Height = 13
        Caption = 'Pot'#234'ncia(HP/CV):'
      end
      object Label23: TLabel
        Left = 254
        Top = 29
        Width = 76
        Height = 13
        Caption = 'Ano fabrica'#231#227'o:'
      end
      object Label24: TLabel
        Left = 416
        Top = 29
        Width = 60
        Height = 13
        Caption = 'Ano Modelo:'
      end
      object Label25: TLabel
        Left = 416
        Top = 5
        Width = 49
        Height = 13
        Caption = 'Renavam:'
      end
      object Label26: TLabel
        Left = 254
        Top = 54
        Width = 32
        Height = 13
        Caption = 'Motor:'
      end
      object Label27: TLabel
        Left = 416
        Top = 54
        Width = 53
        Height = 13
        Caption = 'Valor unit.:'
      end
      object Label28: TLabel
        Left = 254
        Top = 79
        Width = 29
        Height = 13
        Caption = 'ICMS:'
      end
      object Label29: TLabel
        Left = 416
        Top = 79
        Width = 18
        Height = 13
        Caption = 'IPI:'
      end
      object Label30: TLabel
        Left = 254
        Top = 104
        Width = 22
        Height = 13
        Caption = 'PPS:'
      end
      object Label31: TLabel
        Left = 16
        Top = 5
        Width = 56
        Height = 13
        Caption = 'Produto n'#186':'
      end
      object Label32: TLabel
        Left = 254
        Top = 129
        Width = 59
        Height = 13
        Caption = 'PPS Abracy:'
      end
      object Label33: TLabel
        Left = 416
        Top = 129
        Width = 64
        Height = 13
        Caption = 'Pre'#231'o venda:'
      end
      object Label59: TLabel
        Left = 416
        Top = 105
        Width = 31
        Height = 13
        Caption = 'CFOP:'
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 157
        Width = 576
        Height = 86
        DataSource = DataSourceNfda
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid1ColEnter
        OnColExit = DBGrid1ColExit
        OnEditButtonClick = DBGrid1EditButtonClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PROD_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Produto n'#250'mero:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Chassi:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unit'#225'rio:'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_FABRICACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Ano fabrica'#231#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_MODELO'
            Title.Alignment = taCenter
            Title.Caption = 'Ano modelo:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR'
            Title.Alignment = taCenter
            Title.Caption = 'Cor:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTOR'
            Title.Alignment = taCenter
            Title.Caption = 'Motor:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMBUSTIVEL'
            Title.Alignment = taCenter
            Title.Caption = 'Combust'#237'vel:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Alignment = taCenter
            Title.Caption = 'Marca:'
            Visible = True
          end>
      end
      object Modelo: TRxDBLookupCombo
        Left = 84
        Top = 50
        Width = 144
        Height = 21
        DropDownCount = 8
        LookupField = 'MODELO'
        LookupDisplay = 'MODELO'
        LookupDisplayIndex = 1
        LookupSource = DataSourceModelosVeiculos
        TabOrder = 0
        OnChange = ModeloChange
        OnCloseUp = ModeloChange
        OnKeyPress = FormKeyPress
      end
      object PPS: TDBEdit
        Left = 292
        Top = 100
        Width = 118
        Height = 21
        Color = clScrollBar
        DataField = 'PPS'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 8
      end
      object Combustivel: TDBEdit
        Left = 84
        Top = 127
        Width = 85
        Height = 21
        Color = clScrollBar
        DataField = 'COMBUSTIVEL'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 9
      end
      object Potencia: TDBEdit
        Left = 343
        Top = 2
        Width = 50
        Height = 21
        Color = clScrollBar
        DataField = 'HP'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object Renavam: TDBEdit
        Left = 482
        Top = 2
        Width = 87
        Height = 21
        Color = clScrollBar
        DataField = 'RENAVAM'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object Marca: TDBEdit
        Left = 84
        Top = 26
        Width = 118
        Height = 21
        Color = clScrollBar
        DataField = 'MARCA'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 12
      end
      object PPSAbracy: TDBEdit
        Left = 316
        Top = 126
        Width = 94
        Height = 21
        Color = clScrollBar
        DataField = 'PPS_ABRACY'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 13
      end
      object PrecoVenda: TDBEdit
        Left = 485
        Top = 126
        Width = 121
        Height = 21
        Color = clScrollBar
        DataField = 'PRECO_VENDA'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object Cor: TDBEdit
        Left = 84
        Top = 102
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COR'
        DataSource = DataSourceNfda
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object Chassi: TDBEdit
        Left = 84
        Top = 77
        Width = 141
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ITEM'
        DataSource = DataSourceNfda
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object Motor: TDBEdit
        Left = 292
        Top = 51
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MOTOR'
        DataSource = DataSourceNfda
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object ValorUnitario: TDBEdit
        Left = 482
        Top = 51
        Width = 121
        Height = 21
        DataField = 'VLR_UNIT'
        DataSource = DataSourceNfda
        TabOrder = 4
        OnExit = ValorUnitarioExit
        OnKeyPress = FormKeyPress
      end
      object ValorICMS: TDBEdit
        Left = 292
        Top = 77
        Width = 118
        Height = 21
        Color = clScrollBar
        DataField = 'VLR_ICMS'
        DataSource = DataSourceNfda
        Enabled = False
        ReadOnly = True
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object ValorIPI: TDBEdit
        Left = 455
        Top = 77
        Width = 121
        Height = 21
        Color = clScrollBar
        DataField = 'VLR_IPI'
        DataSource = DataSourceNfda
        Enabled = False
        ReadOnly = True
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object ProdutoNumero: TDBEdit
        Left = 84
        Top = 2
        Width = 41
        Height = 21
        Color = clScrollBar
        DataField = 'PROD_NUMERO'
        DataSource = DataSourceNfda
        Enabled = False
        TabOrder = 15
      end
      object CFOPNovos: TJvDBMaskEdit
        Left = 455
        Top = 102
        Width = 74
        Height = 21
        Color = clScrollBar
        DataField = 'CFOP'
        DataSource = DataSourceNfda
        Enabled = False
        MaxLength = 5
        TabOrder = 16
        EditMask = '9.999;1; '
        OnKeyPress = FormKeyPress
      end
      object AnoFabricacao: TDBEdit
        Left = 343
        Top = 26
        Width = 50
        Height = 21
        Color = clScrollBar
        DataField = 'ANO_FABRICACAO'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 17
        OnKeyPress = FormKeyPress
      end
      object AnoModelo: TDBEdit
        Left = 482
        Top = 26
        Width = 50
        Height = 21
        Color = clScrollBar
        DataField = 'ANO_MODELO'
        DataSource = DataSourceModelosVeiculos
        Enabled = False
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 327
    Width = 696
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 696
    Height = 29
    ButtonHeight = 30
    ButtonWidth = 156
    Caption = 'ToolBar1'
    TabOrder = 2
    object BtnCancelar: TBitBtn
      Left = 0
      Top = 0
      Width = 116
      Height = 30
      Action = Cancelar
      Caption = 'F9-&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0008AD1800088410000884100008AD
        180031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00088410000884100008841000088410000884
        10000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031C6
        6B0008AD18000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00
        FF000884100008AD180008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF000884
        100031C66B0008AD180008AD180008841000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000884100008841000FF00FF00FF00FF00088410000884
        10000884100008AD1800088410000884100008841000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000884100008841000FF00FF00FF00FF00FF00FF00FF00
        FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF00FF00
        FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100008AD180031C66B00FF00FF00FF00FF0031C6
        6B0008AD18000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0008AD1800088410000884100008841000088410000884
        10000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0031C66B0008AD1800088410000884100008AD
        180031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnSalvar: TBitBtn
      Left = 116
      Top = 0
      Width = 116
      Height = 30
      Action = Salvar
      Caption = 'F10-&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007F2B28007F2B2800A1828300A1828300A1828300A1828300A1828300A182
        8300A18283007A1C1C007F2B2800FF00FF00FF00FF00FF00FF00FF00FF007F2B
        2800CA4D4D00B6454500DDD4D5007916170079161700DCE0E000D7DADE00CED5
        D700BDBABD0076100F009A2D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4B00B1444400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9
        DC00C1BDC10076111100982D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0424200E6DCDC007916170079161700D5D3D500D8DEE100D7DD
        E000C6C2C500700F0F00962C2C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0414100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8
        DA00CAC2C5007E1717009E3131007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BF474800B8454500BA4C4C00BD575700BB575600B64E4E00B4494900BD52
        5100BB4B4C00B5424200BF4A4A007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800A33B3900B1605D00C6868400CB918F00CC919000CC908F00CB898800C989
        8800CB939100CC969600BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF00FF00
        FF007F2B2800F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F7007F2B2800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnFecharLote: TBitBtn
      Left = 232
      Top = 0
      Width = 116
      Height = 30
      Action = FecharLote
      Caption = 'F12-Fechar &Lote'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00824B4B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00824B4B00824B4B00A94D4D00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00824B4B00C24F5000C24F5000B24D4E00824B4B00824B4B00824B4B00824B
        4B00824B4B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D4585900C9545500C9545500B74F5200FE8B8C00FE8B8C00F8AAAB00F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D75C5D00CF595A00CF595A00BD53560023B54A0023B54A0016BD4800F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00DD636400D55E5F00D55E5F00C2575A002AB44D002AB44D001EBC4C00F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E3686900DA636400DA636400C6595B0026B1490026B149001BBB4900F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EB6D6E00E67E7F00E67E7F00CC6E7000A5D89700A5D8970042C96600F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F2737400EB818200EB818200CF6E7000FFF2CC00FFF2CC00FFFFD400F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F8787900EE727300EE727300D1656600FCEFC700FCEFC700FFFFD300F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FE7F8000F6797A00F6797A00D76B6B00FCEFC700FCEFC700FFFFD300F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF838400FB7E7F00FB7E7F00DA6E6F00FCEFC700FCEFC700FFFFD300F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF888900FF818200FF818200E0737400FCEFC700FCEFC700FFFFD300F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00824B4B00FE818200FE818200E5767700FAEBC500FAEBC500FCFBCF00F7B5
        B600F7B5B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009C5657009C565700CF6E6E00824B4B00824B4B00824B4B00824B
        4B00824B4B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00824B4B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnImportar: TBitBtn
      Left = 348
      Top = 0
      Width = 102
      Height = 30
      Caption = 'Importar'
      TabOrder = 3
      OnClick = BtnImportarClick
      OnKeyPress = FormKeyPress
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000530B0000530B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9397999A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D
        9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E939799FF00FFFF
        00FFFF00FF939799EDEDEDFCFCFCFBFBFBFAFAFAF8F8F8F6F6F6F4F4F4F2F2F2
        F0F0F0EEEEEEECECECEAEAEAE8E8E8E7E7E7E3E3E3E0E0E0DCDCDCD9D9D9D5D5
        D5D2D2D2939799FF00FFFF00FFA6A8A9FCFCFCFCFCFCFCFCFCFBFBFBFAFAFAF8
        F8F8F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEECECECEAEAEAE8E8E8E7E7E7E3E3E3
        E0E0E0DCDCDCD9D9D9D5D5D59A9D9EFF00FFFF00FFA6A8A9FCFCFCFCFCFCFCFC
        FCFCFCFCFBFBFBFAFAFAF8F8F8F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEECECECEA
        EAEAE8E8E8E7E7E7E3E3E3E0E0E0DCDCDCD9D9D99A9D9EFF00FFFF00FFA6A8A9
        FCFCFCFCFCFCDCDCDCC9C9C9C9C9C9C9C9C9C9C9C92D2D2D58534EB9B9B9F2F2
        F2F0F0F0EEEEEEECECECEAEAEAE8E8E8E7E7E7E3E3E3E0E0E0DCDCDC9A9D9EFF
        00FFFF00FFA6A8A9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFB58534E
        373C3E516061D7D7D7F2F2F2F0F0F0EEEEEEECECECEAEAEAE8E8E8E7E7E7E3E3
        E3E0E0E09A9D9EFF00FFFF00FFA6A8A9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFBFBFB54777B1A9CC218556F425A94D7D7D7F0F0F0EEEEEEECECEC
        EAEAEAE8E8E8E7E7E7E3E3E39A9D9EFF00FFFF00FFA6A8A9FCFCFCFCFCFCDCDC
        DCC9C9C9C9C9C9C9C9C9C9C9C9C9C9C954777B29799A1A9CC21A9CC2425A94B9
        B9B9C9C9C9C9C9C9C9C9C9C9C9C9E8E8E8E7E7E79A9D9EFF00FFFF00FFA6A8A9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC1A9CC227D1
        FC04B8EC1A9CC2425A94D7D7D7F1F1F1EFEFEFEDEDEDEBEBEBE9E9E99A9D9EFF
        00FFFF00FFA6A8A9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFC1A9CC2ACEDFC27D1FC04B8EC1A9CC2425A94F3F3F3F1F1F1EFEFEFEDED
        EDEBEBEB9A9D9EFF00FFFF00FFA6A8A9FCFCFCFCFCFCDCDCDCC9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9C9C9C91A9CC2ACEDFC27D1FC04B8EC1A9CC2425A94
        C9C9C9C9C9C9EFEFEFEDEDED9A9D9EFF00FFFF00FFA6A8A9FCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC1A9CC2ACEDFC27
        D1FC04B8EC1A9CC2425A94F3F3F3F1F1F1EFEFEF9A9D9EFF00FFFF00FFA6A8A9
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFC1A9CC2ACEDFC27D1FC04B8EC1A9CC28C8C8CF3F3F3F1F1F19A9D9EFF
        00FFFF00FFA6A8A9108C31108C31108C31108C31108C31108C31108C31108C31
        108C31108C31108C31108C31108C311A9CC2ACEDFC1A9CC2FDD4A7FDCA938C8C
        8C108C31939799FF00FFFF00FF21AD3973D69C10B53110B53110B53110B53110
        B53110B53110B53110B53110B53110B53110B53110B53110B5311A9CC2FEF0E2
        FDDDBBFDD4A7021EAA00009AFF00FFFF00FFFF00FFFF00FF21AD3983DBAA10B5
        3110B53110B53110B53110B53121A542088C18FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA5A5A5FEF0E20936C93651F63651F60018C6FF00FFFF00FFFF00FF
        FF00FF21AD3955CD8B39C17639C17639C17639C176088C18FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0018C67E96FE526BF70018C6FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF21AD3921AD3921AD3921AD3920A439FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0029E70029
        E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object ImageList1: TImageList
    Left = 496
    Top = 24
    Bitmap = {
      494C01010B000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F2B28007F2B
      2800A1828300A1828300A1828300A1828300A1828300A1828300A18283007A1C
      1C007F2B28000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00824B4B00A94D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800CA4D4D00B645
      4500DDD4D5007916170079161700DCE0E000D7DADE00CED5D700BDBABD007610
      0F009A2D2D007F2B280000000000000000000000000000000000000000000000
      0000000000000000000008AD1800088410000884100008AD180031C66B000000
      0000000000000000000000000000000000000000000000000000824B4B00C24F
      5000C24F5000B24D4E00824B4B00824B4B00824B4B00824B4B00824B4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4B00B144
      4400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9DC00C1BDC1007611
      1100982D2D007F2B280000000000000000000000000000000000000000000000
      00000000000008841000088410000884100008841000088410000884100008AD
      1800000000000000000000000000000000000000000000000000D4585900C954
      5500C9545500B74F5200FE8B8C00FE8B8C00F8AAAB00F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00B042
      4200E6DCDC007916170079161700D5D3D500D8DEE100D7DDE000C6C2C500700F
      0F00962C2C007F2B280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031C66B0008AD18000884
      100008AD18000000000000000000000000000000000000000000D75C5D00CF59
      5A00CF595A00BD53560023B54A0023B54A0016BD4800F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00B041
      4100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8DA00CAC2C5007E17
      17009E3131007F2B280000000000000000000000000000000000000000000884
      10000000000000000000000000000000000000000000000000000000000008AD
      18000884100031C66B0000000000000000000000000000000000DD636400D55E
      5F00D55E5F00C2575A002AB44D002AB44D001EBC4C00F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BF474800B845
      4500BA4C4C00BD575700BB575600B64E4E00B4494900BD525100BB4B4C00B542
      4200BF4A4A007F2B2800000000000000000000000000000000000884100008AD
      18000884100000000000000000000000000000000000000000000000000031C6
      6B000884100008AD180000000000000000000000000000000000E3686900DA63
      6400DA636400C6595B0026B1490026B149001BBB4900F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800A33B3900B160
      5D00C6868400CB918F00CC919000CC908F00CB898800C9898800CB939100CC96
      9600BD4B4C007F2B28000000000000000000000000000884100031C66B0008AD
      180008AD18000884100000000000000000000000000000000000000000000000
      0000088410000884100000000000000000000000000000000000EB6D6E00E67E
      7F00E67E7F00CC6E7000A5D89700A5D8970042C96600F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B2800000000000000000008841000088410000884100008AD
      1800088410000884100008841000000000000000000000000000000000000000
      0000088410000884100000000000000000000000000000000000F2737400EB81
      8200EB818200CF6E7000FFF2CC00FFF2CC00FFFFD400F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000000000000000000008AD18000884
      100031C66B0000000000000000000000000000000000000000000000000031C6
      6B000884100008AD180000000000000000000000000000000000F8787900EE72
      7300EE727300D1656600FCEFC700FCEFC700FFFFD300F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B28000000000000000000000000000000000031C66B000884
      100008AD180000000000000000000000000000000000000000000000000008AD
      18000884100031C66B0000000000000000000000000000000000FE7F8000F679
      7A00F6797A00D76B6B00FCEFC700FCEFC700FFFFD300F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B2800000000000000000000000000000000000000000008AD
      18000884100008AD180031C66B00000000000000000031C66B0008AD18000884
      100008AD18000000000000000000000000000000000000000000FF838400FB7E
      7F00FB7E7F00DA6E6F00FCEFC700FCEFC700FFFFD300F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000000000000000
      000008AD180008841000088410000884100008841000088410000884100008AD
      1800000000000000000000000000000000000000000000000000FF888900FF81
      8200FF818200E0737400FCEFC700FCEFC700FFFFD300F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000000000000000
      00000000000031C66B0008AD1800088410000884100008AD180031C66B000000
      0000000000000000000000000000000000000000000000000000824B4B00FE81
      8200FE818200E5767700FAEBC500FAEBC500FCFBCF00F7B5B600F7B5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F2B2800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F7007F2B28000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C56
      57009C565700CF6E6E00824B4B00824B4B00824B4B00824B4B00824B4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000824B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000694731006947
      3100694731006947310069473100694731000000000000000000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      000000000000C8B3A400FCF9F900FAF6F600F8F4F200F6F1EF00F4EEEC00F2EC
      E800F0E9E500EEE6E2009D390C00E3A4810000000000C3734800C3734800B45D
      2E009F3F1200E0D1C800B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D2D2D200FCFCFC00FBFBFB0000000000F8F8F800F6F6F600F5F5
      F500F3F3F300F1F1F10074747400C9C9C900AEAEAE00A6A6A600A6A6A6009494
      94007A7A7A00E5E5E500C8C8C800808080000000000000000000EDE5E000E9DD
      D700E4D6CF00DECEC500DBC9BF00B7A293000000000000000000F1F1F100ECEC
      EC00E8E8E800E4E4E400E1E1E100C8C8C8000000000000000000000000000000
      000000000000C8B3A400FDFCFC00FCF9F900FAF6F600F8F4F200F6F1EF00F4EE
      EC00F2ECE8009B350600E4A58200E4A58200E4A58200C3734800C3734800C373
      4800B45D2E009F3E1200B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D2D2D200FEFEFE00FCFCFC00FBFBFB0000000000F8F8F800F6F6
      F600F5F5F50070707000C9C9C900C9C9C900C9C9C900A6A6A600A6A6A600A6A6
      A6009494940079797900C8C8C800808080000000000000000000F0E9E500EBE1
      DC00E6D9D200E0D1C800DBC9BF00B7A293000000000000000000F3F3F300EFEF
      EF00EAEAEA00E5E5E500E1E1E100C8C8C8000000000000000000000000000000
      000000000000C8B3A400FFFFFF00FDFCFC00FCF9F900FAF6F600F9F5F400F7F2
      F1009B3506009B3506009A3404009A340400E4A58200C3734800B35C2D00A040
      14009A3404009A340400B7A2930069473100FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D2D2D200FFFFFF00FEFEFE00FCFCFC00FBFBFB00FAFAFA00F8F8
      F80070707000707070006F6F6F006F6F6F00C9C9C900A6A6A600939393007B7B
      7B006F6F6F006F6F6F00C8C8C800808080000000000000000000F4EEEC00EEE6
      E200EADED900E4D6CF00DECEC500B7A293000000000000000000F6F6F600F1F1
      F100EDEDED00E8E8E800E4E4E400C8C8C800C8B3A40069473100694731006947
      3100694731006947310069473100694731006947310069473100694731006947
      31006947310069473100D4AB9900A0401300D6906900B45E2F009D3A0D00D7B5
      A600E9DDD700E7DAD400B7A2930069473100D2D2D20080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000CFCFCF007B7B7B00BCBCBC009595950075757500D5D5
      D500ECECEC00EBEBEB00C8C8C800808080000000000000000000F6F1EF00F0E9
      E500EBE1DC009C380900E0D1C800B7A293000000000000000000F8F8F800F3F3
      F300EFEFEF0073737300E5E5E500C8C8C800C8B3A400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0069473100B66B4800A2411400D6906900A03E1100B7704F00ECE2
      DE00EBE0DB00E9DDD700B7A2930069473100D2D2D200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000A1A1A1007C7C7C00BCBCBC0079797900A5A5A500EFEF
      EF00EEEEEE00ECECEC00C8C8C800808080000000000000000000FAF6F600F4EE
      EC00EEE6E200CA7E5500B45D2E00B7A293000000000000000000FBFBFB00F6F6
      F600F1F1F100AEAEAE0094949400C8C8C800C8B3A400FFFFFF0013912C000F86
      23000B7A1A00076F11000364090000570000036108000A77180006680C001D61
      0300FFFFFF00BF7C5D00A2421500D6906900B45D2E00A4471C00E5CFC400EDE5
      E000ECE2DE00EBE0DB00B7A2930069473100D2D2D200FFFFFF009E9E9E009696
      96008D8D8D00858585007B7B7B0070707000797979008B8B8B007F7F7F007B7B
      7B00FFFFFF00AEAEAE007D7D7D00BCBCBC009494940082828200E4E4E400F1F1
      F100EFEFEF00EEEEEE00C8C8C800808080000000000000000000FCF9F900F6F1
      EF009B350600E4A58200C3734800B7A293000000000000000000FCFCFC00F8F8
      F80070707000C9C9C900A6A6A600C8C8C800C8B3A400FFFFFF00189933001492
      2D000F8724000B7C1B0005690E00055B040018741A000C761800186408007876
      0900A84D2300A5451800D6906900B45E2F009E3C0E00D7B09E00F1EAE700EFE8
      E300EDE5E000ECE2DE00B7A2930069473100D2D2D200FFFFFF00A4A4A4009F9F
      9F00979797008F8F8F0080808000757575008B8B8B008A8A8A007E7E7E009393
      93008888880080808000BCBCBC009595950077777700D2D2D200F4F4F400F2F2
      F200F1F1F100EFEFEF00C8C8C800808080006947310069473100694731006947
      310069473100D6906900D7B5A600B7A293008080800080808000808080008080
      800080808000BCBCBC00D5D5D500C8C8C800C8B3A400FFFFFF0026933200189A
      340014932D000E832000046208004570170075892B00DC802000B3633E009932
      020098300000A03D10009F3F1200B05F3A00D9B5A300F5F0ED00F3EDEA00F1EA
      E700EFE8E300EDE5E000B7A2930069473100D2D2D200FFFFFF00A2A2A200A4A4
      A4009F9F9F00949494007A7A7A008D8D8D00A4A4A400A8A8A8009B9B9B006C6C
      6C006A6A6A00787878007A7A7A0098989800D5D5D500F7F7F700F5F5F500F4F4
      F400F2F2F200F1F1F100C8C8C80080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0069473100D6906900ECE2DE00B7A29300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000BCBCBC00EFEFEF00C8C8C800C8B3A400FFFFFF0086A15700318C
      30002093310012771B0014620B00CD9F4600E2A44400D1762300A94F2600923B
      1100B45E2F00C2826400DAB4A200EEDCD400F9F5F400F7F2F100F5F0ED00D5BF
      B100CAB5A600B7A29300B7A2930069473100D2D2D200FFFFFF00B9B9B9009F9F
      9F00A1A1A1008C8C8C007D7D7D00BCBCBC00BFBFBF00A2A2A2008A8A8A007575
      750095959500B3B3B300D4D4D400ECECEC00FAFAFA00F8F8F800F7F7F700DADA
      DA00D4D4D400C8C8C800C8C8C80080808000FFFFFF000F872400055B04001864
      0800A54518009E3C0E00EFE8E300B7A29300FFFFFF0097979700757575007E7E
      7E008080800077777700F2F2F200C8C8C800C8B3A400FFFFFF00F0C08B00CDB3
      780067944500357521009B934600F5B26200F0AE5B00E2A75900E3A44E00F0A2
      3900FFFFFF0069473100FEFDFE00FDFBFB00FBF8F700FAF6F600C8B3A4006947
      310069473100694731006947310069473100D2D2D200FFFFFF00D7D7D700CCCC
      CC00ADADAD0091919100B1B1B100CBCBCB00C8C8C800C3C3C300C0C0C000BDBD
      BD00FFFFFF0080808000FEFEFE00FDFDFD00FBFBFB00FBFBFB00D2D2D2008080
      800080808000808080008080800080808000FFFFFF0014932D0045701700B363
      3E00A03D1000D9B5A300F1EAE700B7A29300FFFFFF009F9F9F008D8D8D009B9B
      9B0078787800D5D5D500F4F4F400C8C8C800C8B3A400FFFFFF00F7C28F00F6C1
      8E00D5B57C00DCB47900F1B97900ECB574009FA89C00519AD0005295CD009E9C
      8700FFFFFF0069473100FFFFFF00FFFFFF00FDFCFC00FCF9F900C8B3A400F3EB
      E600EFE6E000E8DCD400DBC9BF0069473100D2D2D200FFFFFF00D9D9D900D8D8
      D800CECECE00CDCDCD00D2D2D200CFCFCF00C9C9C900C6C6C600C3C3C300C1C1
      C100FFFFFF0080808000FFFFFF00FFFFFF00FEFEFE00FCFCFC00D2D2D200F4F4
      F400F1F1F100ECECEC00E1E1E10080808000FFFFFF0067944500F5B26200E3A4
      4E0069473100FBF8F7006947310069473100FFFFFF00ADADAD00CBCBCB00C0C0
      C00080808000FBFBFB008080800080808000C8B3A400FFFFFF00F7C28F00F7C2
      8F00F7C18E00F7C08D00F7BF8700D4B78E0043ADDC001DA7F6002396F6004E94
      D100FFFFFF0069473100FFFFFF00FFFFFF00FFFFFF00FDFCFC00C8B3A400EFE6
      E000E8DCD400DBC9BF0069473100FF00FF00D2D2D200FFFFFF00D9D9D900D9D9
      D900D8D8D800D7D7D700D6D6D600D2D2D200CFCFCF00CDCDCD00C7C7C700C3C3
      C300FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FEFEFE00D2D2D200F1F1
      F100ECECEC00E1E1E10080808000FF00FF00FFFFFF00D5B57C00ECB574005295
      CD0069473100FDFCFC00F3EBE600DBC9BF00FFFFFF00CECECE00CFCFCF00C3C3
      C30080808000FEFEFE00F4F4F400E1E1E100C8B3A400FFFFFF00F7C28F00F7C2
      8F00F7C28F00F7C18E00F7C18D00CEBB9B0036BAE50015BDF6001CA9F600449B
      DA00FFFFFF0069473100FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8B3A400E8DC
      D400DBC9BF0069473100FF00FF00FF00FF00D2D2D200FFFFFF00D9D9D900D9D9
      D900D9D9D900D8D8D800D8D8D800D5D5D500D4D4D400D5D5D500CECECE00C7C7
      C700FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D2D200ECEC
      EC00E1E1E10080808000FF00FF00FF00FF00FFFFFF00F7C28F00CEBB9B001CA9
      F60069473100FFFFFF00E8DCD40000000000FFFFFF00D9D9D900D5D5D500CECE
      CE0080808000FFFFFF00ECECEC0000000000C8B3A400FFFFFF00F7C28F00F7C2
      8F00F7C28F00F7C28F00F7C28F00E6BF950080BBC30034BFE50038B2E30083A8
      B100FFFFFF0069473100FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8B3A400DBC9
      BF0069473100FF00FF00FF00FF00FF00FF00D2D2D200FFFFFF00D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D7D7D700D5D5D500D6D6D600D1D1D100CBCB
      CB00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D2D200E1E1
      E10080808000FF00FF00FF00FF00FF00FF00FFFFFF00F7C28F00E6BF950038B2
      E30069473100FFFFFF00DBC9BF0000000000FFFFFF00D9D9D900D7D7D700D1D1
      D10080808000FFFFFF00E1E1E10000000000C8B3A400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0069473100C8B3A400C8B3A400C8B3A400C8B3A400C8B3A4006947
      3100FF00FF00FF00FF00FF00FF00FF00FF00D2D2D200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000D2D2D200D2D2D200D2D2D200D2D2D200D2D2D2008080
      8000FF00FF00FF00FF00FF00FF00FF00FF00C8B3A400C8B3A400C8B3A400C8B3
      A400BBA59500000000000000000000000000D2D2D200D2D2D200D2D2D200D2D2
      D200C9C9C900000000000000000000000000C8B3A400C8B3A400C8B3A400C8B3
      A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3A400C8B3
      A400C8B3A400BBA595000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200C9C9C900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000007B7B7B00000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000AEAEAE00999C
      9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C
      9E00999C9E00999C9E00999C9E00000000000000000000008500000000000000
      0000000000000000000000000000000000000000000056565600000000000000
      000000000000000000000000000000000000BDBDBD007B7B7B00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000B7918400FEE9
      C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A4676900000000000000000000000000AEAEAE00F7F7
      F700F4F4F400F2F2F200EFEFEF00EDEDED00EAEAEA00E8E8E800E2E2E200DDDD
      DD00D7D7D700D2D2D2009C9FA10000000000000085000009AB00000000000000
      0000000000000000000000000000000085005656560069696900000000000000
      00000000000000000000000000005656560000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000B7918700FCEA
      CE00F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC28B00E9BD8100E9BD
      7F00E9BD7F00EFC48100A4676900000000000000000000000000AEAEAE00F9F9
      F900F2F2F200EBEBEB00F0F0F000EFEFEF00EDEDED00EAEAEA00E8E8E800E2E2
      E200DDDDDD00D7D7D7009C9FA100000000000F22C800000BAF00000000000000
      000000000000000000000000000007079A00838383006C6C6C00000000000000
      000000000000000000000000000064646400BDBDBD00BDBDBD007B7B7B000000
      0000000000007B7B7B0000000000000000000000000000000000000000007B7B
      7B0000000000000000007B7B7B007B7B7B000000000000000000B7938A00FEEF
      DA00F6E0C600F2DABC00F2D5B200EFD0A900EECB9E00EDC79600EBC28C00E9BD
      8200E9BD7F00EFC48100A4676900000000000000000000000000AEAEAE00F8F8
      F800DFDFDF00CCCCCC00DADADA00E6E6E600EDEDED00EDEDED00EAEAEA00E8E8
      E800E2E2E200DDDDDD009C9FA100000000002D50FF00000FB700000085000000
      00000000000000000000000098002332C800AAAAAA0071717100565656000000
      000000000000000000005D5D5D008F8F8F007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00000000000000000000000000BA978F00FFF4
      E500F7E5CF00F4E0C500F3DABB00F2D5B100F0D0A600EECB9E00EDC79500EBC2
      8A00EABF8100EFC48000A4676900000000000000000000000000AEAEAE00F9F9
      F9002D2D2D00ADADAD00AAAAAA00BEBEBE00D8D8D800E3E3E300EBEBEB00EAEA
      EA00E8E8E800E2E2E2009C9FA100000000002848F3000011BB00010CAF000000
      000000000000000085000000980000000000A4A4A400737373006C6C6C000000
      000000000000565656005D5D5D00000000007B7B7B0000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000BDBDBD00000000007B7B7B000000000000000000C09E9500FFFB
      F000F8EADC00F6E3CF00F4E0C600F2D9BC00F2D5B100F0D0A900EDCB9E00EDC6
      9500EBC28A00EFC58300A4676900000000000000000000000000AEAEAE00FCFC
      FC0058534E00454442005160610092929200A6A6A600BDBDBD00DBDBDB00EBEB
      EB00EAEAEA00E8E8E8009C9FA10000000000000000004059EE000010B8000000
      850000008500000098002332C8000000000000000000ADADAD00727272005656
      5600565656005D5D5D008F8F8F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00BDBDBD0000000000BDBDBD000000000000000000C6A49A00FFFF
      FC00FAF0E600F8EADA00F7E5CF00F4E0C500F2DABA00F2D5B100F0D0A700EECB
      9D00EBC79300F2C98C00A4676900000000000000000000000000AEAEAE00FFFF
      FF00A8A8A80054777B001A9CC20018556F00425A940094949400B8B8B800DBDB
      DB00EBEBEB00EAEAEA009C9FA1000000000000000000627AFD000012BC000A12
      AA000006A50000009A00000000000000000000000000C2C2C200747474007171
      7100656565005E5E5E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00000000007B7B7B000000000000000000CBA99E00FFFF
      FF00FEF7F200FAEFE600F8EAD900F7E3CF00F6E0C500F2DABB00F2D4B100F0D0
      A700EECC9E00F3CE9700A4676900000000000000000000000000AEAEAE00FFFF
      FF009A9A9A0054777B0029799A00947E75001A9CC200425A940093939300B8B8
      B800DCDCDC00EBEBEB009C9FA1000000000000000000000000000117C4000010
      B800000AAD002332C800000000000000000000000000000000007A7A7A007272
      72006B6B6B008F8F8F000000000000000000000000007B7B7B00000000000000
      00007B7B7B0000000000000000007B7B7B00000000007B7B7B00000000000000
      0000000000007B7B7B00BDBDBD00000000000000000000000000CFAC9F00FFFF
      FF00FFFEFC00FCF6F000FAEFE600F7EADA00F6E3CF00F4E0C500F3D9BB00F3D4
      B000F0D0A600F6D3A000A4676900000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00F6F6F6001A9CC20027D1FC0004B8EC001A9CC200425A94009393
      9300B8B8B800DCDCDC009B9EA0000000000000000000000000000B21C9000012
      BC00000CB1000000000000000000000000000000000000000000828282007474
      74006D6D6D000000000000000000000000007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000007B7B7B0000000000000000007B7B
      7B0000000000000000007B7B7B00BDBDBD000000000000000000D4B0A100FFFF
      FF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5CE00F6DEC400F3D9
      B800F4D8B100EBCFA400A4676900000000000000000000000000AEAEAE00FFFF
      FF00AEAEAE007A7A7A001A9CC200ACEDFC0027D1FC0004B8EC001A9CC200425A
      940093939300B2B2B2008F929400000000000000000000000000001BD0000016
      C4000010B90000000000000000000000000000000000000000007F7F7F007979
      79007272720000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B00000000000000
      00007B7B7B000000000000000000000000000000000000000000D9B5A100FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9D900F8E7D100FBEA
      CE00DECEB400B6AA9300A4676900000000000000000000000000AEAEAE00FFFF
      FF009B9B9B00B3B3B300DCDCDC001A9CC200ACEDFC0027D1FC0004B8EC001A9C
      C200425A94008585850077797A0000000000000000002332C800001ED4000018
      C8000012BD002332C8000000000000000000000000008F8F8F00828282007B7B
      7B00757575008F8F8F000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000DDB7A400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3E600EDD8C900B68A
      7B00A17B6F009C766700A4676900000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFAFA001A9CC200ACEDFC0027D1FC0004B8
      EC001A9CC200425A94005E60610000000000000000000028E7000022DC004B5E
      E6001733DF000011BA000000000000000000000000008C8C8C0086868600AFAF
      AF009393930073737300000000000000000000000000BDBDBD00000000007B7B
      7B007B7B7B007B7B7B00000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2BCA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00AD73
      5B00E19E5500E68F3100B56D4D00000000000000000000000000AEAEAE00FFFF
      FF00AEAEAE007B7B7B00969696008D8D8D00ABABAB001A9CC200ACEDFC0027D1
      FC0035A8F500222F9B0011087500000000002332C800002AEC000E31E6002332
      C8002332C8000013BE002332C800000000008F8F8F008E8E8E00929292008F8F
      8F008F8F8F00757575008F8F8F00000000007B7B7B00BDBDBD0000000000BDBD
      BD00000000007B7B7B00000000007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000E6BFA700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500B882
      6500F8B55C00BF7A5C0000000000000000000000000000000000AEAEAE00FFFF
      FF009B9B9B00B3B3B300EBEBEB00E0E0E000EBEBEB00DCDCDC001A9CC2004A9E
      ED000018C600455FC400222F9B00110875000127E3000532F5004B5FE7000000
      0000000000002332C8000011BA00000000008A8A8A0095959500B0B0B0000000
      0000000000008F8F8F00737373000000000000000000BDBDBD00000000007B7B
      7B00BDBDBD007B7B7B00000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4BCA400FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000B77F
      6200C1836C000000000000000000000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA000018
      C600889FE1008997DF000018C600000000002332C8003B5CFE002332C8000000
      000000000000000000002235CE002332C8008F8F8F00B1B1B1008F8F8F000000
      00000000000000000000929292008F8F8F00000000007B7B7B00BDBDBD000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8C4AD00EBCB
      B700EBCBB700EACBB700EACAB600EACAB600EACAB600EACAB600E3C2B100A56B
      5F00000000000000000000000000000000000000000000000000AEAEAE009B9B
      9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C00999C
      9E000018C6000018C6000000000000000000000000002332C800000000000000
      00000000000000000000000000002332C800000000008F8F8F00000000000000
      00000000000000000000000000008F8F8F00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFBFF0000C007FFFFE3FF0000
      8003FC1FC01F00008003F80FC01F00008003FF87C01F00008003EFE3C01F0000
      8003C7E3C01F0000800383F3C01F0000800301F3C01F00008003C7E3C01F0000
      8003C7E3C01F00008003E187C01F00008003F00FC01F00008003F81FC01F0000
      C007FFFFE01F0000FFFFFFFFFBFF0000C0C0F80080008000C0C0F80000004000
      C0C0F80000000000C0C0000000000000C0C0000000000000C0C0000000000000
      C0C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000101000000000000
      0101000000000000070700030000000081FEC001C001BFBF01E2C001C0013E3E
      07E0C001C0013E3E03E0C001C0011C1C03F0C001C001191923C0C001C0018181
      3FC0C001C0018383E3C0C001C001C3C32230C001C001C7C70020C001C001C7C7
      0020C001C00183830062C001C0018383001EC001C0010101001FC003C0001919
      001FC007C0011C1C007FC00FC003BEBE00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 464
    Top = 24
    object Novos: TAction
      Caption = 'F5-Ve'#237'culos &novos'
      ImageIndex = 1
      ShortCut = 116
    end
    object Usados: TAction
      Caption = 'F6-Ve'#237'culos &usados'
      ImageIndex = 2
      ShortCut = 117
      OnExecute = BtnUsadosClick
    end
    object Pecas: TAction
      Caption = 'F7-&Pecas'
      ImageIndex = 0
      ShortCut = 118
    end
    object Cancelar: TAction
      Caption = 'F9-&Cancelar'
      ImageIndex = 9
      ShortCut = 120
      OnExecute = BtnCancelarClick
    end
    object Salvar: TAction
      Caption = 'F10-&Salvar'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = BtnSalvarClick
    end
    object FecharLote: TAction
      Caption = 'F12-Fechar &Lote'
      ImageIndex = 10
      ShortCut = 123
      OnExecute = BtnFecharLoteClick
    end
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
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
      'select * from CLIENTES'
      'where Id_Clientes = :id')
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
    Left = 632
    Top = 48
    object tblPessoasID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CLIENTES"."ID_CLIENTES"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 5
    end
    object tblPessoasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object tblPessoasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CLIENTES"."ID_CONCESSIONARIA"'
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
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 632
    Top = 80
  end
  object tblConhecimento: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    DeleteSQL.Strings = (
      'delete from CONHECIMENTO'
      'where'
      '  ID_CONHECIMENTO = :OLD_ID_CONHECIMENTO')
    InsertSQL.Strings = (
      'insert into CONHECIMENTO'
      
        '  (ID_CONCESSIONARIA, ID_CONHECIMENTO, NUMERO_CONHECIMENTO, QTDE' +
        '_NFS, STATUS, '
      '   TRANSPORTADORA, VALOR_FRETE, VALOR_MERCADORIAS)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :ID_CONHECIMENTO, :NUMERO_CONHECIMENTO, :' +
        'QTDE_NFS, '
      '   :STATUS, :TRANSPORTADORA, :VALOR_FRETE, :VALOR_MERCADORIAS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CONHECIMENTO,'
      '  ID_CONCESSIONARIA,'
      '  NUMERO_CONHECIMENTO,'
      '  QTDE_NFS,'
      '  TRANSPORTADORA,'
      '  VALOR_FRETE,'
      '  VALOR_MERCADORIAS,'
      '  STATUS'
      'from CONHECIMENTO '
      'where'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO')
    SelectSQL.Strings = (
      'select * from CONHECIMENTO'
      'where transportadora = :idTransportadora'
      'and'
      'numero_conhecimento = :idConhecimento')
    ModifySQL.Strings = (
      'update CONHECIMENTO'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  NUMERO_CONHECIMENTO = :NUMERO_CONHECIMENTO,'
      '  QTDE_NFS = :QTDE_NFS,'
      '  STATUS = :STATUS,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_MERCADORIAS = :VALOR_MERCADORIAS'
      'where'
      '  ID_CONHECIMENTO = :OLD_ID_CONHECIMENTO')
    Left = 664
    Top = 48
    object tblConhecimentoID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"CONHECIMENTO"."ID_CONHECIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblConhecimentoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CONHECIMENTO"."ID_CONCESSIONARIA"'
    end
    object tblConhecimentoNUMERO_CONHECIMENTO: TIBStringField
      FieldName = 'NUMERO_CONHECIMENTO'
      Origin = '"CONHECIMENTO"."NUMERO_CONHECIMENTO"'
      Size = 12
    end
    object tblConhecimentoQTDE_NFS: TIBStringField
      FieldName = 'QTDE_NFS'
      Origin = '"CONHECIMENTO"."QTDE_NFS"'
      Size = 3
    end
    object tblConhecimentoTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CONHECIMENTO"."TRANSPORTADORA"'
      Size = 5
    end
    object tblConhecimentoVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = '"CONHECIMENTO"."VALOR_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblConhecimentoVALOR_MERCADORIAS: TIBBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"CONHECIMENTO"."VALOR_MERCADORIAS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblConhecimentoSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CONHECIMENTO"."STATUS"'
    end
  end
  object tblNofi: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    DeleteSQL.Strings = (
      'delete from NOFI'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    InsertSQL.Strings = (
      'insert into NOFI'
      
        '  (BASE_ICM_S, BASE_ICMS, CFOP, COD_TRANS, CODIGO, COFINS, COMIS' +
        'SAO, DADOS_AD01, '
      
        '   DADOS_AD02, DADOS_AD03, DADOS_AD04, DESC_OFI, DESC_PEC, EMISS' +
        'AO, ENT_SAI, '
      
        '   FRETE_TIPO, HORA, ICMS, ID_CLIENTES, ID_CONCESSIONARIA, ID_CO' +
        'NHECIMENTO, '
      
        '   ID_NOFI, IE_SUBS, ISSQN, NAT_OP, NUMERO, OBS, ORIGEM, PIS, PL' +
        'ACA, QTDE_PROD, '
      
        '   SAIDA, SERIE, STATUS, TOT_NOTA, TOT_PROD, VAL_COFINS, VAL_FRE' +
        'TE, VAL_ICMS, '
      
        '   VAL_ICMS_S, VAL_IPI, VAL_ISS, VAL_OUTROS, VAL_PIS, VAL_SEGURO' +
        ', VAL_SERV, '
      '   VENDEDOR)'
      'values'
      
        '  (:BASE_ICM_S, :BASE_ICMS, :CFOP, :COD_TRANS, :CODIGO, :COFINS,' +
        ' :COMISSAO, '
      
        '   :DADOS_AD01, :DADOS_AD02, :DADOS_AD03, :DADOS_AD04, :DESC_OFI' +
        ', :DESC_PEC, '
      
        '   :EMISSAO, :ENT_SAI, :FRETE_TIPO, :HORA, :ICMS, :ID_CLIENTES, ' +
        ':ID_CONCESSIONARIA, '
      
        '   :ID_CONHECIMENTO, :ID_NOFI, :IE_SUBS, :ISSQN, :NAT_OP, :NUMER' +
        'O, :OBS, '
      
        '   :ORIGEM, :PIS, :PLACA, :QTDE_PROD, :SAIDA, :SERIE, :STATUS, :' +
        'TOT_NOTA, '
      
        '   :TOT_PROD, :VAL_COFINS, :VAL_FRETE, :VAL_ICMS, :VAL_ICMS_S, :' +
        'VAL_IPI, '
      
        '   :VAL_ISS, :VAL_OUTROS, :VAL_PIS, :VAL_SEGURO, :VAL_SERV, :VEN' +
        'DEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_NOFI,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_CONHECIMENTO,'
      '  NUMERO,'
      '  SERIE,'
      '  EMISSAO,'
      '  CODIGO,'
      '  ORIGEM,'
      '  ENT_SAI,'
      '  VENDEDOR,'
      '  COMISSAO,'
      '  SAIDA,'
      '  HORA,'
      '  CFOP,'
      '  NAT_OP,'
      '  IE_SUBS,'
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
      '  VAL_PIS,'
      '  VAL_COFINS'
      'from NOFI '
      'where'
      '  ID_NOFI = :ID_NOFI')
    SelectSQL.Strings = (
      'select * from NOFI'
      'where numero = :idNotaFiscal'
      'and'
      'id_clientes = :idFornecedor')
    ModifySQL.Strings = (
      'update NOFI'
      'set'
      '  BASE_ICM_S = :BASE_ICM_S,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  COD_TRANS = :COD_TRANS,'
      '  CODIGO = :CODIGO,'
      '  COFINS = :COFINS,'
      '  COMISSAO = :COMISSAO,'
      '  DADOS_AD01 = :DADOS_AD01,'
      '  DADOS_AD02 = :DADOS_AD02,'
      '  DADOS_AD03 = :DADOS_AD03,'
      '  DADOS_AD04 = :DADOS_AD04,'
      '  DESC_OFI = :DESC_OFI,'
      '  DESC_PEC = :DESC_PEC,'
      '  EMISSAO = :EMISSAO,'
      '  ENT_SAI = :ENT_SAI,'
      '  FRETE_TIPO = :FRETE_TIPO,'
      '  HORA = :HORA,'
      '  ICMS = :ICMS,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  ID_NOFI = :ID_NOFI,'
      '  IE_SUBS = :IE_SUBS,'
      '  ISSQN = :ISSQN,'
      '  NAT_OP = :NAT_OP,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORIGEM = :ORIGEM,'
      '  PIS = :PIS,'
      '  PLACA = :PLACA,'
      '  QTDE_PROD = :QTDE_PROD,'
      '  SAIDA = :SAIDA,'
      '  SERIE = :SERIE,'
      '  STATUS = :STATUS,'
      '  TOT_NOTA = :TOT_NOTA,'
      '  TOT_PROD = :TOT_PROD,'
      '  VAL_COFINS = :VAL_COFINS,'
      '  VAL_FRETE = :VAL_FRETE,'
      '  VAL_ICMS = :VAL_ICMS,'
      '  VAL_ICMS_S = :VAL_ICMS_S,'
      '  VAL_IPI = :VAL_IPI,'
      '  VAL_ISS = :VAL_ISS,'
      '  VAL_OUTROS = :VAL_OUTROS,'
      '  VAL_PIS = :VAL_PIS,'
      '  VAL_SEGURO = :VAL_SEGURO,'
      '  VAL_SERV = :VAL_SERV,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_NOFI = :OLD_ID_NOFI')
    Left = 664
    Top = 120
    object tblNofiID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"NOFI"."ID_NOFI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofiID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFI"."ID_CONCESSIONARIA"'
    end
    object tblNofiID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFI"."ID_CLIENTES"'
    end
    object tblNofiID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"NOFI"."ID_CONHECIMENTO"'
    end
    object tblNofiNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"NOFI"."NUMERO"'
      FixedChar = True
      Size = 8
    end
    object tblNofiSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOFI"."SERIE"'
      FixedChar = True
      Size = 2
    end
    object tblNofiEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFI"."EMISSAO"'
    end
    object tblNofiCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"NOFI"."CODIGO"'
      FixedChar = True
      Size = 5
    end
    object tblNofiORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFI"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofiENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFI"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object tblNofiVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"NOFI"."VENDEDOR"'
      FixedChar = True
      Size = 3
    end
    object tblNofiCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"NOFI"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object tblNofiSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFI"."SAIDA"'
    end
    object tblNofiHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFI"."HORA"'
      FixedChar = True
      Size = 5
    end
    object tblNofiCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"NOFI"."CFOP"'
      FixedChar = True
      Size = 14
    end
    object tblNofiNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"NOFI"."NAT_OP"'
      FixedChar = True
      Size = 40
    end
    object tblNofiIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFI"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object tblNofiDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFI"."DESC_PEC"'
      Precision = 18
      Size = 2
    end
    object tblNofiDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFI"."DESC_OFI"'
      Precision = 18
      Size = 2
    end
    object tblNofiICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"NOFI"."ICMS"'
      Precision = 9
      Size = 2
    end
    object tblNofiBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFI"."BASE_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFI"."VAL_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFI"."BASE_ICM_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFI"."VAL_ICMS_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFI"."VAL_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFI"."VAL_SEGURO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFI"."VAL_OUTROS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFI"."VAL_IPI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFI"."VAL_SERV"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFI"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object tblNofiVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFI"."VAL_ISS"'
      Precision = 18
      Size = 2
    end
    object tblNofiTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFI"."TOT_PROD"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFI"."TOT_NOTA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFI"."PIS"'
      Precision = 18
      Size = 2
    end
    object tblNofiCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFI"."COFINS"'
      Precision = 18
      Size = 2
    end
    object tblNofiCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFI"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object tblNofiFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFI"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblNofiPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFI"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblNofiDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFI"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFI"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFI"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object tblNofiDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFI"."DADOS_AD04"'
      FixedChar = True
      Size = 30
    end
    object tblNofiOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFI"."OBS"'
      FixedChar = True
    end
    object tblNofiQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFI"."QTDE_PROD"'
    end
    object tblNofiSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFI"."STATUS"'
    end
    object tblNofiVAL_PIS: TIBBCDField
      FieldName = 'VAL_PIS'
      Origin = '"NOFI"."VAL_PIS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofiVAL_COFINS: TIBBCDField
      FieldName = 'VAL_COFINS'
      Origin = '"NOFI"."VAL_COFINS"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DataSourceConhecimento: TDataSource
    AutoEdit = False
    DataSet = tblConhecimento
    Left = 664
    Top = 80
  end
  object DataSourceNofi: TDataSource
    AutoEdit = False
    DataSet = tblNofi
    Left = 664
    Top = 152
  end
  object DataSourceNfda: TDataSource
    AutoEdit = False
    DataSet = tblNfDa
    Left = 312
    Top = 240
  end
  object DataSourceModelosVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblModelos
    Left = 664
    Top = 224
  end
  object tblModelos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    DeleteSQL.Strings = (
      'delete from MODVEIC'
      'where'
      '  ID_MODVEIC = :OLD_ID_MODVEIC')
    InsertSQL.Strings = (
      'insert into MODVEIC'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CILINDRADAS, CILINDROS, CLASSIF_F' +
        'ISCAL, '
      
        '   COMBUSTIVEL, CST, HP, ID_MODVEIC, MARCA, MODELO, PPS, PPS_ABR' +
        'ACY, PRECO_VENDA, '
      '   RENAVAM, VEICULO_NOVO)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CILINDRADAS, :CILINDROS, :CLAS' +
        'SIF_FISCAL, '
      
        '   :COMBUSTIVEL, :CST, :HP, :ID_MODVEIC, :MARCA, :MODELO, :PPS, ' +
        ':PPS_ABRACY, '
      '   :PRECO_VENDA, :RENAVAM, :VEICULO_NOVO)')
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
      '  PRECO_VENDA,'
      '  CST,'
      '  VEICULO_NOVO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO'
      'from MODVEIC '
      'where'
      '  ID_MODVEIC = :ID_MODVEIC')
    SelectSQL.Strings = (
      'select * from MODVEIC'
      'where VEICULO_NOVO = '#39'T'#39)
    ModifySQL.Strings = (
      'update MODVEIC'
      'set'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  CILINDRADAS = :CILINDRADAS,'
      '  CILINDROS = :CILINDROS,'
      '  CLASSIF_FISCAL = :CLASSIF_FISCAL,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  CST = :CST,'
      '  HP = :HP,'
      '  ID_MODVEIC = :ID_MODVEIC,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  PPS = :PPS,'
      '  PPS_ABRACY = :PPS_ABRACY,'
      '  PRECO_VENDA = :PRECO_VENDA,'
      '  RENAVAM = :RENAVAM,'
      '  VEICULO_NOVO = :VEICULO_NOVO'
      'where'
      '  ID_MODVEIC = :OLD_ID_MODVEIC')
    Left = 664
    Top = 192
    object tblModelosID_MODVEIC: TIntegerField
      FieldName = 'ID_MODVEIC'
      Origin = '"MODVEIC"."ID_MODVEIC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblModelosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"MODVEIC"."MARCA"'
      Size = 10
    end
    object tblModelosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"MODVEIC"."MODELO"'
    end
    object tblModelosCILINDROS: TIntegerField
      FieldName = 'CILINDROS'
      Origin = '"MODVEIC"."CILINDROS"'
    end
    object tblModelosCILINDRADAS: TIntegerField
      FieldName = 'CILINDRADAS'
      Origin = '"MODVEIC"."CILINDRADAS"'
    end
    object tblModelosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"MODVEIC"."COMBUSTIVEL"'
      Size = 10
    end
    object tblModelosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"MODVEIC"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object tblModelosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"MODVEIC"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblModelosPPS: TIBBCDField
      FieldName = 'PPS'
      Origin = '"MODVEIC"."PPS"'
      Precision = 18
      Size = 2
    end
    object tblModelosPPS_ABRACY: TIBBCDField
      FieldName = 'PPS_ABRACY'
      Origin = '"MODVEIC"."PPS_ABRACY"'
      Precision = 18
      Size = 2
    end
    object tblModelosPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = '"MODVEIC"."PRECO_VENDA"'
      Precision = 18
      Size = 2
    end
    object tblModelosCST: TIBStringField
      FieldName = 'CST'
      Origin = '"MODVEIC"."CST"'
    end
    object tblModelosVEICULO_NOVO: TIBStringField
      FieldName = 'VEICULO_NOVO'
      Origin = '"MODVEIC"."VEICULO_NOVO"'
      Size = 1
    end
    object tblModelosHP: TIBStringField
      FieldName = 'HP'
      Origin = '"MODVEIC"."HP"'
      Size = 6
    end
    object tblModelosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"MODVEIC"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblModelosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"MODVEIC"."ANO_MODELO"'
      Size = 4
    end
  end
  object tblNfDa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    DeleteSQL.Strings = (
      'delete from DADOS_NFE'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    InsertSQL.Strings = (
      'insert into DADOS_NFE'
      
        '  (ALIQ_ICMS, ANO_FABRICACAO, ANO_MODELO, BASE_ICMS, CFOP, COMBU' +
        'STIVEL, '
      
        '   COR, CST, ID_CONCESSIONARIA, ID_CONHECIMENTO, ID_DADOS_NFE, I' +
        'D_NOFI, '
      
        '   ITEM, MARCA, MODELO, MOTOR, NF, POTENCIA, PROD_NUMERO, QTDE, ' +
        'RENAVAM, '
      '   VLR_ICMS, VLR_IPI, VLR_UNIT)'
      'values'
      
        '  (:ALIQ_ICMS, :ANO_FABRICACAO, :ANO_MODELO, :BASE_ICMS, :CFOP, ' +
        ':COMBUSTIVEL, '
      
        '   :COR, :CST, :ID_CONCESSIONARIA, :ID_CONHECIMENTO, :ID_DADOS_N' +
        'FE, :ID_NOFI, '
      
        '   :ITEM, :MARCA, :MODELO, :MOTOR, :NF, :POTENCIA, :PROD_NUMERO,' +
        ' :QTDE, '
      '   :RENAVAM, :VLR_ICMS, :VLR_IPI, :VLR_UNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DADOS_NFE,'
      '  ID_CONCESSIONARIA,'
      '  ID_NOFI,'
      '  ID_CONHECIMENTO,'
      '  NF,'
      '  ITEM,'
      '  QTDE,'
      '  CST,'
      '  CFOP,'
      '  VLR_UNIT,'
      '  BASE_ICMS,'
      '  ALIQ_ICMS,'
      '  VLR_ICMS,'
      '  VLR_IPI,'
      '  MODELO,'
      '  ANO_FABRICACAO,'
      '  ANO_MODELO,'
      '  COR,'
      '  MOTOR,'
      '  COMBUSTIVEL,'
      '  MARCA,'
      '  POTENCIA,'
      '  RENAVAM,'
      '  PROD_NUMERO'
      'from DADOS_NFE '
      'where'
      '  ID_DADOS_NFE = :ID_DADOS_NFE')
    SelectSQL.Strings = (
      'select * from DADOS_NFE'
      'where id_nofi = :idNofi')
    ModifySQL.Strings = (
      'update DADOS_NFE'
      'set'
      '  ALIQ_ICMS = :ALIQ_ICMS,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ANO_MODELO = :ANO_MODELO,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  CFOP = :CFOP,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  CST = :CST,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CONHECIMENTO = :ID_CONHECIMENTO,'
      '  ID_DADOS_NFE = :ID_DADOS_NFE,'
      '  ID_NOFI = :ID_NOFI,'
      '  ITEM = :ITEM,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  MOTOR = :MOTOR,'
      '  NF = :NF,'
      '  POTENCIA = :POTENCIA,'
      '  PROD_NUMERO = :PROD_NUMERO,'
      '  QTDE = :QTDE,'
      '  RENAVAM = :RENAVAM,'
      '  VLR_ICMS = :VLR_ICMS,'
      '  VLR_IPI = :VLR_IPI,'
      '  VLR_UNIT = :VLR_UNIT'
      'where'
      '  ID_DADOS_NFE = :OLD_ID_DADOS_NFE')
    Left = 280
    Top = 240
    object tblNfDaID_DADOS_NFE: TIntegerField
      FieldName = 'ID_DADOS_NFE'
      Origin = '"DADOS_NFE"."ID_DADOS_NFE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNfDaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DADOS_NFE"."ID_CONCESSIONARIA"'
    end
    object tblNfDaID_NOFI: TIntegerField
      FieldName = 'ID_NOFI'
      Origin = '"DADOS_NFE"."ID_NOFI"'
    end
    object tblNfDaID_CONHECIMENTO: TIntegerField
      FieldName = 'ID_CONHECIMENTO'
      Origin = '"DADOS_NFE"."ID_CONHECIMENTO"'
    end
    object tblNfDaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"DADOS_NFE"."NF"'
      Size = 8
    end
    object tblNfDaITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"DADOS_NFE"."ITEM"'
    end
    object tblNfDaQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = '"DADOS_NFE"."QTDE"'
    end
    object tblNfDaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"DADOS_NFE"."CFOP"'
      Required = True
    end
    object tblNfDaVLR_UNIT: TIBBCDField
      FieldName = 'VLR_UNIT'
      Origin = '"DADOS_NFE"."VLR_UNIT"'
      Precision = 18
      Size = 2
    end
    object tblNfDaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"DADOS_NFE"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNfDaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"DADOS_NFE"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object tblNfDaVLR_ICMS: TIBBCDField
      FieldName = 'VLR_ICMS'
      Origin = '"DADOS_NFE"."VLR_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblNfDaVLR_IPI: TIBBCDField
      FieldName = 'VLR_IPI'
      Origin = '"DADOS_NFE"."VLR_IPI"'
      Precision = 18
      Size = 2
    end
    object tblNfDaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"DADOS_NFE"."MODELO"'
    end
    object tblNfDaANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"DADOS_NFE"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblNfDaANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"DADOS_NFE"."ANO_MODELO"'
      Size = 4
    end
    object tblNfDaCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"DADOS_NFE"."COR"'
      Size = 10
    end
    object tblNfDaMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"DADOS_NFE"."MOTOR"'
      Size = 15
    end
    object tblNfDaCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"DADOS_NFE"."COMBUSTIVEL"'
    end
    object tblNfDaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"DADOS_NFE"."MARCA"'
      Size = 10
    end
    object tblNfDaPOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"DADOS_NFE"."POTENCIA"'
      Size = 3
    end
    object tblNfDaRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"DADOS_NFE"."RENAVAM"'
      Size = 15
    end
    object tblNfDaPROD_NUMERO: TIntegerField
      FieldName = 'PROD_NUMERO'
      Origin = '"DADOS_NFE"."PROD_NUMERO"'
    end
    object tblNfDaCST: TIBStringField
      FieldName = 'CST'
      Origin = '"DADOS_NFE"."CST"'
      Size = 3
    end
  end
  object tblVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    DeleteSQL.Strings = (
      'delete from VEICULOS'
      'where'
      '  ID_VEICULOS = :OLD_ID_VEICULOS')
    InsertSQL.Strings = (
      'insert into VEICULOS'
      
        '  (ANO_FABRICACAO, ANO_MODELO, CHASSI, CLASSIF_FISCAL, CNY, COMB' +
        'USTIVEL, '
      
        '   CONSIG, COR, CST, CUSTO, CUSTO_ICMS, DATA_ENT, DATA_SAI, ESTO' +
        'QUE, FINANC_PRO, '
      
        '   FONE, FOTO, GRUPO, HP, ID_CLIENTES, ID_COMPRADOR, ID_CONCESSI' +
        'ONARIA, '
      
        '   ID_FORNECEDOR, ID_MODELO_VEICULO, ID_VEICULOS, KM, MARCA, MOD' +
        'ELO, MOTOR, '
      
        '   NF_SAIDA, NOTA_ENT, ORIGEM, PLACA, PRECO, RENAVAM, RESERVADA,' +
        ' RESERVADA_POR, '
      '   STATUS, VENDA)'
      'values'
      
        '  (:ANO_FABRICACAO, :ANO_MODELO, :CHASSI, :CLASSIF_FISCAL, :CNY,' +
        ' :COMBUSTIVEL, '
      
        '   :CONSIG, :COR, :CST, :CUSTO, :CUSTO_ICMS, :DATA_ENT, :DATA_SA' +
        'I, :ESTOQUE, '
      
        '   :FINANC_PRO, :FONE, :FOTO, :GRUPO, :HP, :ID_CLIENTES, :ID_COM' +
        'PRADOR, '
      
        '   :ID_CONCESSIONARIA, :ID_FORNECEDOR, :ID_MODELO_VEICULO, :ID_V' +
        'EICULOS, '
      
        '   :KM, :MARCA, :MODELO, :MOTOR, :NF_SAIDA, :NOTA_ENT, :ORIGEM, ' +
        ':PLACA, '
      
        '   :PRECO, :RENAVAM, :RESERVADA, :RESERVADA_POR, :STATUS, :VENDA' +
        ')')
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
      '  CST'
      'from VEICULOS '
      'where'
      '  ID_VEICULOS = :ID_VEICULOS')
    SelectSQL.Strings = (
      'select * from VEICULOS'
      'where (Chassi = :id) and'
      '(Status <> '#39'VENDIDO'#39')')
    ModifySQL.Strings = (
      'update VEICULOS'
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
    Left = 632
    Top = 16
    object tblVeiculosID_VEICULOS: TIntegerField
      FieldName = 'ID_VEICULOS'
      Origin = '"VEICULOS"."ID_VEICULOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblVeiculosID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"VEICULOS"."ID_CONCESSIONARIA"'
    end
    object tblVeiculosID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"VEICULOS"."ID_CLIENTES"'
    end
    object tblVeiculosID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = '"VEICULOS"."ID_FORNECEDOR"'
    end
    object tblVeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VEICULOS"."CHASSI"'
      FixedChar = True
      Size = 17
    end
    object tblVeiculosMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VEICULOS"."MARCA"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"VEICULOS"."MODELO"'
      FixedChar = True
    end
    object tblVeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"VEICULOS"."COR"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"VEICULOS"."ANO_FABRICACAO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"VEICULOS"."ANO_MODELO"'
      FixedChar = True
      Size = 4
    end
    object tblVeiculosGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VEICULOS"."GRUPO"'
      FixedChar = True
      Size = 3
    end
    object tblVeiculosHP: TIBStringField
      FieldName = 'HP'
      Origin = '"VEICULOS"."HP"'
      FixedChar = True
      Size = 6
    end
    object tblVeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VEICULOS"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblVeiculosCNY: TIBStringField
      FieldName = 'CNY'
      Origin = '"VEICULOS"."CNY"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosKM: TIntegerField
      FieldName = 'KM'
      Origin = '"VEICULOS"."KM"'
    end
    object tblVeiculosRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"VEICULOS"."RENAVAM"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCLASSIF_FISCAL: TIBStringField
      FieldName = 'CLASSIF_FISCAL'
      Origin = '"VEICULOS"."CLASSIF_FISCAL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosNOTA_ENT: TIBStringField
      FieldName = 'NOTA_ENT'
      Origin = '"VEICULOS"."NOTA_ENT"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
      Origin = '"VEICULOS"."DATA_ENT"'
    end
    object tblVeiculosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VEICULOS"."FONE"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosCONSIG: TIBStringField
      FieldName = 'CONSIG'
      Origin = '"VEICULOS"."CONSIG"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VEICULOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosCUSTO_ICMS: TIBBCDField
      FieldName = 'CUSTO_ICMS'
      Origin = '"VEICULOS"."CUSTO_ICMS"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"VEICULOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblVeiculosDATA_SAI: TDateField
      FieldName = 'DATA_SAI'
      Origin = '"VEICULOS"."DATA_SAI"'
    end
    object tblVeiculosNF_SAIDA: TIBStringField
      FieldName = 'NF_SAIDA'
      Origin = '"VEICULOS"."NF_SAIDA"'
      FixedChar = True
      Size = 8
    end
    object tblVeiculosVENDA: TIBStringField
      FieldName = 'VENDA'
      Origin = '"VEICULOS"."VENDA"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"VEICULOS"."MOTOR"'
      FixedChar = True
      Size = 15
    end
    object tblVeiculosFINANC_PRO: TIBStringField
      FieldName = 'FINANC_PRO'
      Origin = '"VEICULOS"."FINANC_PRO"'
      FixedChar = True
      Size = 1
    end
    object tblVeiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VEICULOS"."STATUS"'
    end
    object tblVeiculosRESERVADA: TDateField
      FieldName = 'RESERVADA'
      Origin = '"VEICULOS"."RESERVADA"'
    end
    object tblVeiculosFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"VEICULOS"."FOTO"'
      Size = 8
    end
    object tblVeiculosRESERVADA_POR: TIBStringField
      FieldName = 'RESERVADA_POR'
      Origin = '"VEICULOS"."RESERVADA_POR"'
    end
    object tblVeiculosESTOQUE: TIBStringField
      FieldName = 'ESTOQUE'
      Origin = '"VEICULOS"."ESTOQUE"'
    end
    object tblVeiculosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULOS"."COMBUSTIVEL"'
      FixedChar = True
      Size = 10
    end
    object tblVeiculosORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VEICULOS"."ORIGEM"'
      Size = 1
    end
    object tblVeiculosID_COMPRADOR: TIntegerField
      FieldName = 'ID_COMPRADOR'
      Origin = '"VEICULOS"."ID_COMPRADOR"'
    end
    object tblVeiculosCST: TIBStringField
      FieldName = 'CST'
      Origin = '"VEICULOS"."CST"'
      Size = 3
    end
    object tblVeiculosID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"VEICULOS"."ID_MODELO_VEICULO"'
    end
  end
  object DataSourceVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblVeiculos
    Left = 664
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblConhecimentoAfterCancel
    AfterDelete = tblConhecimentoAfterPost
    AfterPost = tblConhecimentoAfterPost
    SQL.Strings = (
      'SELECT GEN_ID(Seq_NotasFiscais_Id, 1) as'
      'Id_Nofi From RDB$DATABASE')
    Left = 632
    Top = 120
  end
  object validador: TJvValidators
    ErrorIndicator = JvErrorIndicator1
    Left = 600
    Top = 160
    object jvOutro: TJvCustomValidator
      ControlToValidate = outros
      ErrorMessage = 'A soma das mercadorias n'#227'o confrere'
    end
  end
  object JvValidationSummary1: TJvValidationSummary
    Left = 600
    Top = 224
  end
  object JvErrorIndicator1: TJvErrorIndicator
    ImageIndex = 0
    Left = 600
    Top = 192
  end
end
