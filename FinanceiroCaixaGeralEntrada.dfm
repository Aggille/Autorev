object BoxFinanceiroCaixaGeralEntrada: TBoxFinanceiroCaixaGeralEntrada
  Left = 15
  Top = 150
  Caption = 'Caixa Geral Entrada'
  ClientHeight = 195
  ClientWidth = 361
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 176
    Width = 361
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 177
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 12
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object LabelData: TLabel
      Left = 4
      Top = 39
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label11: TLabel
      Left = 4
      Top = 66
      Width = 59
      Height = 13
      Caption = 'Caixa sa'#237'da:'
    end
    object Label12: TLabel
      Left = 4
      Top = 120
      Width = 45
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SpeedButton1: TSpeedButton
      Left = 121
      Top = 62
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
    object Label5: TLabel
      Left = 4
      Top = 146
      Width = 43
      Height = 13
      Caption = 'Dinheiro:'
    end
    object Label7: TLabel
      Left = 4
      Top = 93
      Width = 72
      Height = 13
      Caption = 'Caixa entrada:'
    end
    object SpeedButton2: TSpeedButton
      Left = 121
      Top = 90
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
    object Documento: TDBEdit
      Left = 79
      Top = 9
      Width = 65
      Height = 21
      DataField = 'DOCUMENTO'
      DataSource = DataSourceCaixa
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object Data: TJvDBDateEdit
      Left = 79
      Top = 36
      Width = 121
      Height = 21
      DataField = 'DATA_RECEBIMENTO'
      DataSource = DataSourceCaixa
      ShowNullDate = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object idConcessionaria: TDBEdit
      Left = 79
      Top = 63
      Width = 36
      Height = 21
      DataField = 'ID_CONCESSIONARIA'
      DataSource = DataSourceCaixa
      TabOrder = 2
      OnExit = idConcessionariaExit
      OnKeyPress = FormKeyPress
    end
    object Historico: TDBEdit
      Left = 79
      Top = 117
      Width = 274
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DataSourceCaixa
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object NomeConta: TDBEdit
      Left = 150
      Top = 63
      Width = 203
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object Dinheiro: TCurrencyEdit
      Left = 79
      Top = 143
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object BtnConfirma: TBitBtn
      Left = 243
      Top = 144
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
      TabOrder = 8
      OnClick = BtnConfirmaClick
    end
    object CodigoBanco: TDBEdit
      Left = 79
      Top = 91
      Width = 36
      Height = 21
      Hint = 'Digite o c'#243'digo da conta banc'#225'ria'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object NomeBanco: TJvDBMaskEdit
      Left = 150
      Top = 90
      Width = 203
      Height = 21
      Enabled = False
      TabOrder = 4
      EditMask = ''
    end
  end
  object tblConcessionaria: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONCESSIONARIA'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into CONCESSIONARIA'
      
        '  (ID_CONCESSIONARIA, EMPRESA, ENDERECO, CIDADE, ESTADO, CNPJ, I' +
        'E, CONCESSION, '
      
        '   TELEFONE, COD_CONCES, ALIQUOTA_ISS, ALIQUOTA_ICMS1, ALIQUOTA_' +
        'ICMS2, '
      
        '   CODIGO_EMPRESA_JB, IM, CNAE, FANTASIA, CEP, NUMERO, COMPLEMEN' +
        'TO, CODIGO_MUNICIPIO, '
      
        '   BAIRRO, HOST, PORT, USUARIO, PASS, CERTIFICADO, LOGO, DIVIDIR' +
        '_NF_GARANTIA, '
      
        '   ID_BANCO_CONCESSIONARIA, FEIRA, ENDERECO_FEIRA, DIVIDIR_NF_SE' +
        'RVICO, '
      '   LOGO_PREFEITURA, ATIVA)'
      'values'
      
        '  (:ID_CONCESSIONARIA, :EMPRESA, :ENDERECO, :CIDADE, :ESTADO, :C' +
        'NPJ, :IE, '
      
        '   :CONCESSION, :TELEFONE, :COD_CONCES, :ALIQUOTA_ISS, :ALIQUOTA' +
        '_ICMS1, '
      
        '   :ALIQUOTA_ICMS2, :CODIGO_EMPRESA_JB, :IM, :CNAE, :FANTASIA, :' +
        'CEP, :NUMERO, '
      
        '   :COMPLEMENTO, :CODIGO_MUNICIPIO, :BAIRRO, :HOST, :PORT, :USUA' +
        'RIO, :PASS, '
      
        '   :CERTIFICADO, :LOGO, :DIVIDIR_NF_GARANTIA, :ID_BANCO_CONCESSI' +
        'ONARIA, '
      
        '   :FEIRA, :ENDERECO_FEIRA, :DIVIDIR_NF_SERVICO, :LOGO_PREFEITUR' +
        'A, :ATIVA)')
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
      '  PASS,'
      '  CERTIFICADO,'
      '  LOGO,'
      '  DIVIDIR_NF_GARANTIA,'
      '  ID_BANCO_CONCESSIONARIA,'
      '  FEIRA,'
      '  ENDERECO_FEIRA,'
      '  DIVIDIR_NF_SERVICO,'
      '  LOGO_PREFEITURA,'
      '  ATIVA'
      'from CONCESSIONARIA '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from CONCESSIONARIA'
      'where ID_CONCESSIONARIA = :id'
      'and'
      'ATIVA = '#39'T'#39)
    ModifySQL.Strings = (
      'update CONCESSIONARIA'
      'set'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  ESTADO = :ESTADO,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  CONCESSION = :CONCESSION,'
      '  TELEFONE = :TELEFONE,'
      '  COD_CONCES = :COD_CONCES,'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  ALIQUOTA_ICMS1 = :ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2 = :ALIQUOTA_ICMS2,'
      '  CODIGO_EMPRESA_JB = :CODIGO_EMPRESA_JB,'
      '  IM = :IM,'
      '  CNAE = :CNAE,'
      '  FANTASIA = :FANTASIA,'
      '  CEP = :CEP,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CODIGO_MUNICIPIO = :CODIGO_MUNICIPIO,'
      '  BAIRRO = :BAIRRO,'
      '  HOST = :HOST,'
      '  PORT = :PORT,'
      '  USUARIO = :USUARIO,'
      '  PASS = :PASS,'
      '  CERTIFICADO = :CERTIFICADO,'
      '  LOGO = :LOGO,'
      '  DIVIDIR_NF_GARANTIA = :DIVIDIR_NF_GARANTIA,'
      '  ID_BANCO_CONCESSIONARIA = :ID_BANCO_CONCESSIONARIA,'
      '  FEIRA = :FEIRA,'
      '  ENDERECO_FEIRA = :ENDERECO_FEIRA,'
      '  DIVIDIR_NF_SERVICO = :DIVIDIR_NF_SERVICO,'
      '  LOGO_PREFEITURA = :LOGO_PREFEITURA,'
      '  ATIVA = :ATIVA'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    ParamCheck = True
    UniDirectional = False
    Left = 241
    Top = 56
  end
  object DataSourceConcessionaria: TDataSource
    AutoEdit = False
    DataSet = tblConcessionaria
    Left = 273
    Top = 56
  end
  object tblCaixa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblCaixaAfterCancel
    AfterDelete = tblCaixaAfterPost
    AfterPost = tblCaixaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (ID_CAIXA, ID_CONCESSIONARIA, ID_CLIENTES, DOCUMENTO, ORIGEM, ' +
        'NATUREZA, '
      
        '   FORMA_PAG, DATA_LANCAMENTO, DATA_RECEBIMENTO, VALOR, CONTA, H' +
        'ISTORICO, '
      '   STATUS, JUROS, STATUS_BANCO, ID_DEPOSITO)'
      'values'
      
        '  (:ID_CAIXA, :ID_CONCESSIONARIA, :ID_CLIENTES, :DOCUMENTO, :ORI' +
        'GEM, :NATUREZA, '
      
        '   :FORMA_PAG, :DATA_LANCAMENTO, :DATA_RECEBIMENTO, :VALOR, :CON' +
        'TA, :HISTORICO, '
      '   :STATUS, :JUROS, :STATUS_BANCO, :ID_DEPOSITO)')
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
      '  JUROS,'
      '  STATUS_BANCO,'
      '  ID_DEPOSITO'
      'from CAIXA '
      'where'
      '  ID_CAIXA = :ID_CAIXA')
    SelectSQL.Strings = (
      'select * from CAIXA')
    ModifySQL.Strings = (
      'update CAIXA'
      'set'
      '  ID_CAIXA = :ID_CAIXA,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_CLIENTES = :ID_CLIENTES,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  ORIGEM = :ORIGEM,'
      '  NATUREZA = :NATUREZA,'
      '  FORMA_PAG = :FORMA_PAG,'
      '  DATA_LANCAMENTO = :DATA_LANCAMENTO,'
      '  DATA_RECEBIMENTO = :DATA_RECEBIMENTO,'
      '  VALOR = :VALOR,'
      '  CONTA = :CONTA,'
      '  HISTORICO = :HISTORICO,'
      '  STATUS = :STATUS,'
      '  JUROS = :JUROS,'
      '  STATUS_BANCO = :STATUS_BANCO,'
      '  ID_DEPOSITO = :ID_DEPOSITO'
      'where'
      '  ID_CAIXA = :OLD_ID_CAIXA')
    ParamCheck = True
    UniDirectional = False
    Left = 208
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
      Precision = 18
      Size = 2
    end
    object tblCaixaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CAIXA"."CONTA"'
      Size = 5
    end
    object tblCaixaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Required = True
      Size = 60
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
    Left = 240
  end
end
