object BoxOperacoesTaxasPagamento: TBoxOperacoesTaxasPagamento
  Left = 15
  Top = 225
  Caption = 'Pagamento de taxas'
  ClientHeight = 329
  ClientWidth = 613
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
    Top = 0
    Width = 613
    Height = 329
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 11
      Width = 50
      Height = 13
      Caption = 'Pedido n'#186':'
    end
    object SpeedButton4: TSpeedButton
      Left = 128
      Top = 7
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
      OnClick = SpeedButton4Click
    end
    object Label7: TLabel
      Left = 12
      Top = 38
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 12
      Top = 65
      Width = 37
      Height = 13
      Caption = 'Ve'#237'culo:'
    end
    object SpeedButton1: TSpeedButton
      Left = 128
      Top = 34
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
    object Label5: TLabel
      Left = 172
      Top = 92
      Width = 110
      Height = 13
      Caption = 'Valor para pagamento:'
    end
    object Label3: TLabel
      Left = 12
      Top = 92
      Width = 49
      Height = 13
      Caption = 'Renavam:'
    end
    object Label4: TLabel
      Left = 12
      Top = 119
      Width = 29
      Height = 13
      Caption = 'Placa:'
    end
    object Label6: TLabel
      Left = 6
      Top = 279
      Width = 55
      Height = 13
      Caption = 'Valor pago:'
    end
    object Label8: TLabel
      Left = 6
      Top = 221
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object Bevel1: TBevel
      Left = 6
      Top = 144
      Width = 595
      Height = 9
    end
    object Label9: TLabel
      Left = 166
      Top = 279
      Width = 99
      Height = 13
      Caption = 'Data de pagamento:'
    end
    object Label11: TLabel
      Left = 6
      Top = 248
      Width = 33
      Height = 13
      Caption = 'Conta:'
    end
    object SpeedButton2: TSpeedButton
      Left = 114
      Top = 244
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
    object Label10: TLabel
      Left = 196
      Top = 167
      Width = 181
      Height = 13
      Caption = 'Lan'#231'ar as depesas na concession'#225'ria:'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 308
      Width = 611
      Height = 20
      Panels = <>
    end
    object CodigoCliente: TJvDBMaskEdit
      Left = 78
      Top = 35
      Width = 44
      Height = 21
      DataField = 'ID_CLIENTES'
      DataSource = DataSourcePedidoVeiculos
      Enabled = False
      MaxLength = 6
      TabOrder = 1
      EditMask = 'cccccc;0; '
    end
    object Marca: TJvDBMaskEdit
      Left = 78
      Top = 62
      Width = 69
      Height = 21
      DataField = 'MARCA'
      DataSource = DataSourcePedidoVeiculos
      Enabled = False
      TabOrder = 3
      EditMask = ''
    end
    object Modelo: TJvDBMaskEdit
      Left = 157
      Top = 62
      Width = 108
      Height = 21
      DataField = 'MODELO'
      DataSource = DataSourcePedidoVeiculos
      Enabled = False
      TabOrder = 4
      EditMask = ''
    end
    object NomeCliente: TJvDBMaskEdit
      Left = 157
      Top = 35
      Width = 413
      Height = 21
      DataField = 'NOME'
      Enabled = False
      TabOrder = 2
      EditMask = ''
    end
    object ChassiVeiculo: TJvDBMaskEdit
      Left = 275
      Top = 62
      Width = 112
      Height = 21
      DataField = 'CHASSI'
      DataSource = DataSourcePedidoVeiculos
      Enabled = False
      MaxLength = 20
      TabOrder = 5
      EditMask = 'cccccccccccccccccccc;0; '
    end
    object Renavam: TJvDBMaskEdit
      Left = 78
      Top = 89
      Width = 70
      Height = 21
      DataField = 'RENAVAM'
      DataSource = DataSourcePedidoVeiculos
      TabOrder = 6
      EditMask = ''
      OnKeyPress = FormKeyPress
    end
    object Placa: TJvDBMaskEdit
      Left = 78
      Top = 116
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA'
      DataSource = DataSourcePedidoVeiculos
      TabOrder = 7
      EditMask = ''
      OnKeyPress = FormKeyPress
    end
    object Valor: TJvDBMaskEdit
      Left = 67
      Top = 276
      Width = 93
      Height = 21
      DataField = 'VALOR'
      DataSource = DataSourceVeiculosTaxas
      TabOrder = 13
      EditMask = ''
      OnKeyPress = FormKeyPress
    end
    object Banco: TDBLookupComboBox
      Left = 67
      Top = 217
      Width = 167
      Height = 21
      KeyField = 'CONTA'
      ListField = 'DESCRICAO'
      ListSource = DataSourcePlaconBanco
      TabOrder = 10
      OnKeyPress = FormKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 67
      Top = 157
      Width = 110
      Height = 54
      Caption = 'Tipo de pagamento'
      ItemIndex = 1
      Items.Strings = (
        'pelo caixa'
        'pelo banco')
      TabOrder = 8
      OnClick = RadioGroup1Click
    end
    object BtnConfirma: TBitBtn
      Left = 411
      Top = 276
      Width = 110
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
      TabOrder = 15
      OnClick = BtnConfirmaClick
      OnKeyPress = FormKeyPress
    end
    object DataPagamento: TJvDBDateEdit
      Left = 271
      Top = 276
      Width = 121
      Height = 21
      DataField = 'DATA_PAGAMENTO'
      DataSource = DataSourceVeiculosTaxas
      ShowNullDate = False
      TabOrder = 14
      OnKeyPress = FormKeyPress
    end
    object NomeConta: TDBEdit
      Left = 143
      Top = 245
      Width = 203
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object Pedido: TJvEdit
      Left = 78
      Top = 8
      Width = 44
      Height = 21
      TabOrder = 0
      Text = ''
      OnExit = PedidoExit
      OnKeyPress = FormKeyPress
    end
    object CodigoConta: TJvEdit
      Left = 67
      Top = 244
      Width = 41
      Height = 21
      TabOrder = 11
      Text = ''
      OnExit = CodigoConta1Exit
      OnKeyPress = FormKeyPress
    end
    object Concessionaria: TJvDBLookupCombo
      Left = 196
      Top = 186
      Width = 254
      Height = 21
      LookupField = 'ID_CONCESSIONARIA'
      LookupDisplay = 'EMPRESA'
      LookupSource = DataSourceConcessionaria
      TabOrder = 9
      OnChange = ConcessionariaChange
      OnKeyPress = FormKeyPress
    end
  end
  object tblPedidoVeiculosAcessorios: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS_ACESSORIOS'
      'where'
      
        '  ID_PEDIDO_VEICULOS_ACESSORIOS = :OLD_ID_PEDIDO_VEICULOS_ACESSO' +
        'RIOS')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS_ACESSORIOS'
      
        '  (CUSTO, DESCRICAO_ACESSORIO, ENTREGA, ENTREGUE_POR, ID_PEDIDO_' +
        'VEICULOS, '
      
        '   ID_PEDIDO_VEICULOS_ACESSORIOS, ID_VEICULOS_ACESSORIOS, VALOR_' +
        'ACESSORIO)'
      'values'
      
        '  (:CUSTO, :DESCRICAO_ACESSORIO, :ENTREGA, :ENTREGUE_POR, :ID_PE' +
        'DIDO_VEICULOS, '
      
        '   :ID_PEDIDO_VEICULOS_ACESSORIOS, :ID_VEICULOS_ACESSORIOS, :VAL' +
        'OR_ACESSORIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS_ACESSORIOS,'
      '  ID_PEDIDO_VEICULOS,'
      '  ID_VEICULOS_ACESSORIOS,'
      '  DESCRICAO_ACESSORIO,'
      '  VALOR_ACESSORIO,'
      '  ENTREGA,'
      '  CUSTO,'
      '  ENTREGUE_POR'
      'from PEDIDO_VEICULOS_ACESSORIOS '
      'where'
      '  ID_PEDIDO_VEICULOS_ACESSORIOS = :ID_PEDIDO_VEICULOS_ACESSORIOS')
    SelectSQL.Strings = (
      'select * from PEDIDO_VEICULOS_ACESSORIOS'
      'where id_Pedido_veiculos = :idPedidoVeiculos'
      'and'
      '(descricao_acessorio = '#39'EMPLACAMENTO'#39' or'
      'descricao_acessorio = '#39'TRANSFER'#202'NCIA'#39')')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS_ACESSORIOS'
      'set'
      '  CUSTO = :CUSTO,'
      '  DESCRICAO_ACESSORIO = :DESCRICAO_ACESSORIO,'
      '  ENTREGA = :ENTREGA,'
      '  ENTREGUE_POR = :ENTREGUE_POR,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      
        '  ID_PEDIDO_VEICULOS_ACESSORIOS = :ID_PEDIDO_VEICULOS_ACESSORIOS' +
        ','
      '  ID_VEICULOS_ACESSORIOS = :ID_VEICULOS_ACESSORIOS,'
      '  VALOR_ACESSORIO = :VALOR_ACESSORIO'
      'where'
      
        '  ID_PEDIDO_VEICULOS_ACESSORIOS = :OLD_ID_PEDIDO_VEICULOS_ACESSO' +
        'RIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 328
    Top = 32
    object tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS_ACESSORIOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_ACESSORIOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_PEDIDO_VEICULOS_ACESSORIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPedidoVeiculosAcessoriosID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_PEDIDO_VEICULOS"'
    end
    object tblPedidoVeiculosAcessoriosID_VEICULOS_ACESSORIOS: TIntegerField
      FieldName = 'ID_VEICULOS_ACESSORIOS'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ID_VEICULOS_ACESSORIOS"'
    end
    object tblPedidoVeiculosAcessoriosDESCRICAO_ACESSORIO: TIBStringField
      FieldName = 'DESCRICAO_ACESSORIO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."DESCRICAO_ACESSORIO"'
      Size = 50
    end
    object tblPedidoVeiculosAcessoriosVALOR_ACESSORIO: TIBBCDField
      FieldName = 'VALOR_ACESSORIO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."VALOR_ACESSORIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosAcessoriosENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ENTREGA"'
    end
    object tblPedidoVeiculosAcessoriosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosAcessoriosENTREGUE_POR: TIBStringField
      FieldName = 'ENTREGUE_POR'
      Origin = '"PEDIDO_VEICULOS_ACESSORIOS"."ENTREGUE_POR"'
      Size = 10
    end
  end
  object DataSourcePedidoVeiculosAcessorios: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculosAcessorios
    Left = 360
    Top = 32
  end
  object tblPessoas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
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
      
        '   IDENTIDADE, MAE, MECANICO, NASCIMENTO, NOME, NOME_VENDEDOR, N' +
        'UM_CPF, '
      
        '   PAI, REF_AG_BANC, REF_BANC, REF_COML_FONE1, REF_COML_FONE2, R' +
        'EF_COML1, '
      
        '   REF_COML2, REF_CTA_BANC, REF_FONE1, REF_FONE2, REF_NOME1, REF' +
        '_NOME2, '
      '   REG_SPC, SALARIO, SPC, TRANSPORTADORA, VENDEDOR)'
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
      
        '   :NOME, :NOME_VENDEDOR, :NUM_CPF, :PAI, :REF_AG_BANC, :REF_BAN' +
        'C, :REF_COML_FONE1, '
      
        '   :REF_COML_FONE2, :REF_COML1, :REF_COML2, :REF_CTA_BANC, :REF_' +
        'FONE1, '
      
        '   :REF_FONE2, :REF_NOME1, :REF_NOME2, :REG_SPC, :SALARIO, :SPC,' +
        ' :TRANSPORTADORA, '
      '   :VENDEDOR)')
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
      '  NOME_VENDEDOR'
      'from CLIENTES '
      'where'
      '  ID_CLIENTES = :ID_CLIENTES')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'where id_clientes = :id')
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
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  ID_CLIENTES = :OLD_ID_CLIENTES')
    ParamCheck = True
    UniDirectional = False
    Left = 328
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
    object tblPessoasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CLIENTES"."NOME_VENDEDOR"'
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
  end
  object DataSourceClientes: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 360
  end
  object tblPedidoVeiculos: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'select * from PEDIDO_VEICULOS'
      'where id_pedido_veiculos = :id')
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
    ParamCheck = True
    UniDirectional = False
    Left = 400
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
    object tblPedidoVeiculosID_MODELO_VEICULO: TIntegerField
      FieldName = 'ID_MODELO_VEICULO'
      Origin = '"PEDIDO_VEICULOS"."ID_MODELO_VEICULO"'
    end
  end
  object DataSourcePedidoVeiculos: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculos
    Left = 432
  end
  object tblCaixa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (CONTA, DATA_LANCAMENTO, DATA_RECEBIMENTO, DOCUMENTO, FORMA_PA' +
        'G, HISTORICO, '
      
        '   ID_CAIXA, ID_CLIENTES, ID_CONCESSIONARIA, JUROS, NATUREZA, OR' +
        'IGEM, STATUS, '
      '   VALOR)'
      'values'
      
        '  (:CONTA, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :DOCUMENTO, :FOR' +
        'MA_PAG, '
      
        '   :HISTORICO, :ID_CAIXA, :ID_CLIENTES, :ID_CONCESSIONARIA, :JUR' +
        'OS, :NATUREZA, '
      '   :ORIGEM, :STATUS, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CAIXA,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  DOCUMENTO,'
      '  ORIGEM,'
      '  NATUREZA,'
      '  FORMA_PAG,'
      '  DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO,'
      '  VALOR,'
      '  CONTA,'
      '  HISTORICO,'
      '  STATUS,'
      '  JUROS'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select * from CAIXA'
      'where DATA_RECEBIMENTO = :id'
      'and'
      'id_concessionaria = :idConcessionaria'
      'and Status = '#39'Processado'#39)
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
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    ParamCheck = True
    UniDirectional = False
    Left = 400
    Top = 72
    object tblCaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = '"CAIXA"."ID_CAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCaixaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CAIXA"."ID_CONCESSIONARIA"'
      Required = True
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
    object tblCaixaJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"CAIXA"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 60
    end
    object tblCaixaSTATUS_BANCO: TIBStringField
      FieldName = 'STATUS_BANCO'
      Origin = '"CAIXA"."STATUS_BANCO"'
    end
    object tblCaixaID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = '"CAIXA"."ID_DEPOSITO"'
    end
  end
  object DataSourceCaixa: TDataSource
    AutoEdit = False
    DataSet = tblCaixa
    Left = 432
    Top = 72
  end
  object tblBanco: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BANCO'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    InsertSQL.Strings = (
      'insert into BANCO'
      
        '  (BANCO, CONTA, DATA, DOCUMENTO, HISTORICO, ID_AVALISTA, ID_BAN' +
        'CO, ID_CLIENTES, '
      
        '   ID_CONCESSIONARIA, ID_CRECEBER, ID_DESPESAS, JUROS, NATUREZA,' +
        ' ORIGEM, '
      '   VALOR)'
      'values'
      
        '  (:BANCO, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :ID_AVALISTA, ' +
        ':ID_BANCO, '
      
        '   :ID_CLIENTES, :ID_CONCESSIONARIA, :ID_CRECEBER, :ID_DESPESAS,' +
        ' :JUROS, '
      '   :NATUREZA, :ORIGEM, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_BANCO,'
      '  ID_CONCESSIONARIA,'
      '  ID_CLIENTES,'
      '  ID_AVALISTA,'
      '  DOCUMENTO,'
      '  NATUREZA,'
      '  DATA,'
      '  VALOR,'
      '  BANCO,'
      '  CONTA,'
      '  HISTORICO,'
      '  JUROS,'
      '  ORIGEM,'
      '  ID_CRECEBER,'
      '  ID_DESPESAS'
      'from BANCO '
      'where'
      '  ID_BANCO = :ID_BANCO')
    SelectSQL.Strings = (
      'select * from BANCO'
      'where DATA >= :idData1'
      'and'
      'DATA <= :idData2'
      'and'
      'id_concessionaria = :idConcessionaria'
      'and'
      'banco = :idBanco'
      'and Natureza <> '#39'P'#39
      ''
      'order by data')
    ModifySQL.Strings = (
      'update BANCO'
      'set'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  ID_AVALISTA = :ID_AVALISTA,'
      '  ID_BANCO = :ID_BANCO,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CRECEBER = :ID_CRECEBER,'
      '  ID_DESPESAS = :ID_DESPESAS,'
      '  JUROS = :JUROS,'
      '  NATUREZA = :NATUREZA,'
      '  ORIGEM = :ORIGEM,'
      '  VALOR = :VALOR'
      'where'
      '  ID_BANCO = :OLD_ID_BANCO')
    ParamCheck = True
    UniDirectional = False
    Left = 400
    Top = 104
    object tblBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = '"BANCO"."ID_BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblBancoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"BANCO"."ID_CONCESSIONARIA"'
    end
    object tblBancoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"BANCO"."ID_CLIENTES"'
    end
    object tblBancoID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"BANCO"."ID_AVALISTA"'
    end
    object tblBancoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"BANCO"."DOCUMENTO"'
      Size = 13
    end
    object tblBancoNATUREZA: TIBStringField
      FieldName = 'NATUREZA'
      Origin = '"BANCO"."NATUREZA"'
      Size = 1
    end
    object tblBancoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"BANCO"."DATA"'
    end
    object tblBancoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BANCO"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblBancoBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"BANCO"."BANCO"'
      Size = 4
    end
    object tblBancoCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"BANCO"."CONTA"'
      Size = 4
    end
    object tblBancoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BANCO"."HISTORICO"'
      Size = 60
    end
    object tblBancoJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"BANCO"."JUROS"'
      Precision = 18
      Size = 2
    end
    object tblBancoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"BANCO"."ORIGEM"'
      Size = 1
    end
    object tblBancoID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"BANCO"."ID_CRECEBER"'
    end
    object tblBancoID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"BANCO"."ID_DESPESAS"'
    end
  end
  object DataSourceBanco: TDataSource
    AutoEdit = False
    DataSet = tblBanco
    Left = 432
    Top = 104
  end
  object tblPlaconBanco: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PLACON'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    InsertSQL.Strings = (
      'insert into PLACON'
      
        '  (CLASSIFICACAO, CONTA, CONTA_BANCARIA, DESCRICAO, ID_PLACON, N' +
        'IVEL, TIPO)'
      'values'
      
        '  (:CLASSIFICACAO, :CONTA, :CONTA_BANCARIA, :DESCRICAO, :ID_PLAC' +
        'ON, :NIVEL, '
      '   :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PLACON,'
      '  CONTA,'
      '  DESCRICAO,'
      '  TIPO,'
      '  NIVEL,'
      '  CLASSIFICACAO,'
      '  CONTA_BANCARIA'
      'from PLACON '
      'where'
      '  ID_PLACON = :ID_PLACON')
    SelectSQL.Strings = (
      'select * from PLACON'
      'where Conta_bancaria = '#39'T'#39)
    ModifySQL.Strings = (
      'update PLACON'
      'set'
      '  CLASSIFICACAO = :CLASSIFICACAO,'
      '  CONTA = :CONTA,'
      '  CONTA_BANCARIA = :CONTA_BANCARIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_PLACON = :ID_PLACON,'
      '  NIVEL = :NIVEL,'
      '  TIPO = :TIPO'
      'where'
      '  ID_PLACON = :OLD_ID_PLACON')
    ParamCheck = True
    UniDirectional = False
    Left = 145
    Top = 216
    object IntegerField1: TIntegerField
      FieldName = 'ID_PLACON'
      Origin = '"PLACON"."ID_PLACON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBStringField1: TIBStringField
      FieldName = 'CONTA'
      Origin = '"PLACON"."CONTA"'
      Size = 4
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PLACON"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PLACON"."TIPO"'
      Size = 1
    end
    object IBStringField4: TIBStringField
      FieldName = 'NIVEL'
      Origin = '"PLACON"."NIVEL"'
      Size = 1
    end
    object IBStringField5: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"PLACON"."CLASSIFICACAO"'
      Size = 1
    end
    object tblPlaconCONTA_BANCARIA: TIBStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = '"PLACON"."CONTA_BANCARIA"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourcePlaconBanco: TDataSource
    AutoEdit = False
    DataSet = tblPlaconBanco
    Left = 113
    Top = 216
  end
  object tblPedidoVeiculosTaxas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PEDIDO_VEICULOS_TAXAS'
      'where'
      '  ID_PEDIDO_VEICULOS_TAXAS = :OLD_ID_PEDIDO_VEICULOS_TAXAS')
    InsertSQL.Strings = (
      'insert into PEDIDO_VEICULOS_TAXAS'
      
        '  (DATA_PAGAMENTO, ID_PEDIDO_VEICULOS, ID_PEDIDO_VEICULOS_TAXAS,' +
        ' TIPO_PAGAMENTO, '
      '   VALOR)'
      'values'
      
        '  (:DATA_PAGAMENTO, :ID_PEDIDO_VEICULOS, :ID_PEDIDO_VEICULOS_TAX' +
        'AS, :TIPO_PAGAMENTO, '
      '   :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PEDIDO_VEICULOS_TAXAS,'
      '  ID_PEDIDO_VEICULOS,'
      '  DATA_PAGAMENTO,'
      '  VALOR,'
      '  TIPO_PAGAMENTO'
      'from PEDIDO_VEICULOS_TAXAS '
      'where'
      '  ID_PEDIDO_VEICULOS_TAXAS = :ID_PEDIDO_VEICULOS_TAXAS')
    SelectSQL.Strings = (
      'select * from PEDIDO_VEICULOS_TAXAS'
      'where id_Pedido_veiculos = :idPedidoVeiculos')
    ModifySQL.Strings = (
      'update PEDIDO_VEICULOS_TAXAS'
      'set'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  ID_PEDIDO_VEICULOS = :ID_PEDIDO_VEICULOS,'
      '  ID_PEDIDO_VEICULOS_TAXAS = :ID_PEDIDO_VEICULOS_TAXAS,'
      '  TIPO_PAGAMENTO = :TIPO_PAGAMENTO,'
      '  VALOR = :VALOR'
      'where'
      '  ID_PEDIDO_VEICULOS_TAXAS = :OLD_ID_PEDIDO_VEICULOS_TAXAS')
    ParamCheck = True
    UniDirectional = False
    Left = 328
    Top = 64
    object tblPedidoVeiculosTaxasID_PEDIDO_VEICULOS_TAXAS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS_TAXAS'
      Origin = '"PEDIDO_VEICULOS_TAXAS"."ID_PEDIDO_VEICULOS_TAXAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblPedidoVeiculosTaxasID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"PEDIDO_VEICULOS_TAXAS"."ID_PEDIDO_VEICULOS"'
      Required = True
    end
    object tblPedidoVeiculosTaxasDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_TAXAS"."DATA_PAGAMENTO"'
    end
    object tblPedidoVeiculosTaxasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_VEICULOS_TAXAS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblPedidoVeiculosTaxasTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"PEDIDO_VEICULOS_TAXAS"."TIPO_PAGAMENTO"'
      Size = 5
    end
  end
  object DataSourceVeiculosTaxas: TDataSource
    AutoEdit = False
    DataSet = tblPedidoVeiculosTaxas
    Left = 360
    Top = 64
  end
  object tblPlacon: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'where CONTA = :id')
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
    ParamCheck = True
    UniDirectional = False
    Left = 249
    Top = 240
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
    Left = 281
    Top = 240
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(VALOR) as Valor from Pedido_Veiculos_Taxas'
      'where'
      'id_pedido_veiculos = :idPedidoVeiculos')
    Left = 536
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idPedidoVeiculos'
        ParamType = ptUnknown
      end>
  end
  object tblDespesas: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblPedidoVeiculosAfterCancel
    AfterDelete = tblPedidoVeiculosAfterPost
    AfterPost = tblPedidoVeiculosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
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
      'select * from DESPESAS')
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
    ParamCheck = True
    UniDirectional = False
    Left = 392
    Top = 192
    object tblDespesasID_DESPESAS: TIntegerField
      FieldName = 'ID_DESPESAS'
      Origin = '"DESPESAS"."ID_DESPESAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblDespesasID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"DESPESAS"."ID_CONCESSIONARIA"'
    end
    object tblDespesasCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"DESPESAS"."CONTA"'
      Size = 4
    end
    object tblDespesasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"DESPESAS"."HISTORICO"'
      Size = 60
    end
    object tblDespesasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DESPESAS"."DATA"'
    end
    object tblDespesasSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = '"DESPESAS"."SETOR"'
      Size = 1
    end
    object tblDespesasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"DESPESAS"."VALOR"'
      Precision = 18
      Size = 2
    end
  end
  object DataSourceDespesas: TDataSource
    AutoEdit = False
    DataSet = tblDespesas
    Left = 424
    Top = 192
  end
  object IBQuery2: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Despesas_Id, 1) as'
      'Id_Despesas From RDB$DATABASE')
    Left = 40
    Top = 72
  end
  object tblConcessionaria: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONCESSIONARIA'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into CONCESSIONARIA'
      
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
      'from CONCESSIONARIA '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from CONCESSIONARIA'
      'where ativa = '#39'T'#39)
    ModifySQL.Strings = (
      'update CONCESSIONARIA'
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
    ParamCheck = True
    UniDirectional = False
    Left = 472
    Top = 160
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
    Left = 520
    Top = 160
  end
end
