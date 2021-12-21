object BoxRelatorioBoleto: TBoxRelatorioBoleto
  Left = 15
  Top = 85
  Caption = 'Impress'#227'o  de boleto'
  ClientHeight = 233
  ClientWidth = 306
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 307
    Height = 218
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 46
      Width = 33
      Height = 13
      Caption = 'Banco:'
      FocusControl = Banco
    end
    object Label2: TLabel
      Left = 11
      Top = 73
      Width = 49
      Height = 13
      Caption = 'Conv'#234'nio:'
      FocusControl = Convenio
    end
    object Label3: TLabel
      Left = 11
      Top = 101
      Width = 43
      Height = 13
      Caption = 'Carteira:'
      FocusControl = Carteira
    end
    object Label4: TLabel
      Left = 11
      Top = 127
      Width = 72
      Height = 13
      Caption = 'Nosso n'#250'mero:'
    end
    object Label5: TLabel
      Left = 11
      Top = 154
      Width = 42
      Height = 13
      Caption = 'Ag'#234'ncia:'
      FocusControl = Agencia
    end
    object Label6: TLabel
      Left = 11
      Top = 181
      Width = 33
      Height = 13
      Caption = 'Conta:'
      FocusControl = Conta
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 305
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 0
      object BtnPreImpresso: TBitBtn
        Left = 0
        Top = 0
        Width = 100
        Height = 22
        Caption = '&Pr'#233'-impresso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FF00FFFF00FF
          6C6C6C6A6A6A6969696767676565656464646262626060605F5F5F5D5D5D5B5B
          5B5A5A5AFF00FFFF00FFFF00FFFF00FF6C6C6C6A6A6A69696967676765656564
          64646262626060605F5F5F5D5D5D5B5B5B5A5A5AFF00FFFF00FFFF00FFA9AAAB
          9C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9FA19C9F
          A15B5B5BFF00FFFF00FFFF00FFAAAAAA9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
          9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E5B5B5BFF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
          A15D5D5DFF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E5D5D5DFF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
          A15F5F5FFF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E5F5F5FFF00FFFF00FFFF00FFA9AAAB
          FFFFFFC9C9C92D2D2D58534EC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9F
          A1606060FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C92D2D2D535353C9C9C9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E606060FF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFF58534E454442516061C9C9C9FFFFFFFFFFFFFFFFFFFFFFFF9C9F
          A1626262FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFF535353434343595959C9
          C9C9FFFFFFFFFFFFFFFFFFFFFFFF9E9E9E626262FF00FFFF00FFFF00FFA9AAAB
          FFFFFFC9C9C9C9C9C954777B1A9CC218556F425A94C9C9C9C9C9C9FFFFFF9C9F
          A1646464FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C96767676E6E6E43
          43436B6B6BC9C9C9C9C9C9FFFFFF9E9E9E646464FF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFF54777B29799A947E751A9CC2425A94FFFFFFFFFFFF9C9F
          A1666666FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFF67676761616184
          84846E6E6E6B6B6BFFFFFFFFFFFF9E9E9E666666FF00FFFF00FFFF00FFA9AAAB
          FFFFFFC9C9C9C9C9C9C9C9C998B9D727D1FC04B8EC1A9CC2425A94FFFFFF9C9F
          A1686868FF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C9C9C9C9B7B7B791
          91917878786E6E6E6B6B6BFFFFFF9E9E9E686868FF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFFFFFFFF98B9D7ACEDFC27D1FC04B8EC1A9CC2425A949C9F
          A1696969FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7D4
          D4D49191917878786E6E6E6B6B6B9E9E9E696969FF00FFFF00FFFF00FFA9AAAB
          FFFFFFC9C9C9C9C9C9C9C9C9C9C9C998B9D7ACEDFC27D1FC04B8EC1A9CC2425A
          946B6B6BFF00FFFF00FFFF00FFAAAAAAFFFFFFC9C9C9C9C9C9C9C9C9C9C9C9B7
          B7B7D4D4D49191917878786E6E6E6B6B6B6B6B6BFF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE98B9D7ACEDFC27D1FC04B8EC1A9C
          C2425A94FF00FFFF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEB7B7B7D4D4D49191917878786E6E6E6B6B6BFF00FFFF00FFFF00FFA9AAAB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE98B9D7ACEDFC27D1FC35A8
          F5222F9B110875FF00FFFF00FFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFEFEFEB7B7B7D4D4D49191919595955E5E5E3C3B41FF00FFFF00FFA9AAAB
          8E3E08C8C8C88E3E08C8C8C88E3E08C8C8C88E3E08C8C8C898B9D74A9EED455F
          C4455FC4222F9B110875FF00FFAAAAAA4B4B4BC8C8C84B4B4BC8C8C84B4B4BC8
          C8C84B4B4BC8C8C8B7B7B79B9B9B8484848484845E5E5E3C3B41FF00FFA9AAAB
          BD5A109C9FA1BD5A109C9FA1BD5A109C9FA1BD5A109C9FA1BD5A10455FC4889F
          E18997DF455FC4FF00FFFF00FFAAAAAA6666669E9E9E6666669E9E9E6666669E
          9E9E6666669E9E9E666666848484B4B4B4B4B4B4848484FF00FFFF00FFFF00FF
          FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10FF00FFBD5A10455F
          C4455FC4FF00FFFF00FFFF00FFFF00FFFF00FF666666FF00FF666666FF00FF66
          6666FF00FF666666FF00FF666666848484848484FF00FFFF00FF}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnPreImpressoClick
      end
      object BtnCompleto: TBitBtn
        Left = 100
        Top = 0
        Width = 100
        Height = 22
        Caption = '&Completo'
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
        TabOrder = 1
        OnClick = BtnCompletoClick
      end
      object BtnSalvar: TBitBtn
        Left = 200
        Top = 0
        Width = 100
        Height = 22
        Caption = '&Salvar'
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
        TabOrder = 2
        OnClick = BtnSalvarClick
      end
    end
    object Banco: TDBEdit
      Left = 89
      Top = 43
      Width = 43
      Height = 21
      DataField = 'CODIGO_BANCO'
      DataSource = DataSourceBoleto
      Enabled = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object Convenio: TDBEdit
      Left = 89
      Top = 70
      Width = 95
      Height = 21
      DataField = 'CONVENIO'
      DataSource = DataSourceBoleto
      Enabled = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object Carteira: TDBEdit
      Left = 89
      Top = 97
      Width = 30
      Height = 21
      DataField = 'CARTEIRA'
      DataSource = DataSourceBoleto
      Enabled = False
      TabOrder = 3
    end
    object Agencia: TDBEdit
      Left = 89
      Top = 151
      Width = 43
      Height = 21
      DataField = 'AGENCIA'
      DataSource = DataSourceBoleto
      Enabled = False
      TabOrder = 5
    end
    object Conta: TDBEdit
      Left = 89
      Top = 178
      Width = 59
      Height = 21
      DataField = 'CONTA'
      DataSource = DataSourceBoleto
      Enabled = False
      TabOrder = 6
    end
    object NossoNumero: TEdit
      Left = 89
      Top = 124
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'NossoNumero'
      OnExit = NossoNumeroExit
      OnKeyPress = FormKeyPress
    end
    object DigitoConta: TJvDBMaskEdit
      Left = 154
      Top = 178
      Width = 23
      Height = 21
      DataField = 'DIGITO_CONTA'
      DataSource = DataSourceBoleto
      TabOrder = 7
      EditMask = ''
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 214
    Width = 306
    Height = 19
    Panels = <>
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39947.581715729160000000
    ReportOptions.LastChange = 40000.412387881940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Datasets = <
      item
        DataSet = tblRelBoleto
        DataSetName = 'tblRelBoleto'
      end
      item
        DataSet = tblRelCreceber
        DataSetName = 'tblRelCreceber'
      end
      item
        DataSet = tblRelPessoas
        DataSetName = 'tblRelPessoas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 176.000000000000000000
      PaperHeight = 106.000000000000000000
      PaperSize = 256
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 328.819110000000000000
        Top = 18.897650000000000000
        Width = 665.197280000000000000
        DataSet = tblRelCreceber
        DataSetName = 'tblRelCreceber'
        RowCount = 0
        object tblRelCreceberVALOR: TfrxMemoView
          Left = 434.645950000000000000
          Top = 86.692950000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[tblRelCreceber."VALOR"]')
          ParentFont = False
        end
        object tblRelCreceberEMISSAO: TfrxMemoView
          Left = 22.118120000000000000
          Top = 60.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelCreceber."EMISSAO"]')
          ParentFont = False
        end
        object tblRelCreceberDOCUMENTO: TfrxMemoView
          Left = 105.826840000000000000
          Top = 60.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelCreceber."DOCUMENTO"]')
          ParentFont = False
        end
        object tblRelCreceberPARCELA: TfrxMemoView
          Left = 186.669450000000000000
          Top = 60.015770000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA'
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelCreceber."PARCELA"]')
          ParentFont = False
        end
        object tblRelCreceberVEZES: TfrxMemoView
          Left = 213.126160000000000000
          Top = 60.015770000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'VEZES'
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelCreceber."VEZES"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 201.787570000000000000
          Top = 60.015770000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '/')
          ParentFont = False
        end
        object tblRelPessoasNOME: TfrxMemoView
          Left = 72.031540000000000000
          Top = 229.874150000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."NOME"]')
          ParentFont = False
        end
        object tblRelPessoasID_CLIENTES: TfrxMemoView
          Left = 22.118120000000000000
          Top = 229.756030000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTES'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."ID_CLIENTES"]')
          ParentFont = False
        end
        object tblRelPessoasENDERECO: TfrxMemoView
          Left = 22.118120000000000000
          Top = 247.771800000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."ENDERECO"]')
          ParentFont = False
        end
        object tblRelPessoasBAIRRO: TfrxMemoView
          Left = 419.748300000000000000
          Top = 229.771800000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."BAIRRO"]')
          ParentFont = False
        end
        object tblRelPessoasCIDADE: TfrxMemoView
          Left = 93.929190000000000000
          Top = 268.669450000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."CIDADE"]')
          ParentFont = False
        end
        object tblRelPessoasCEP: TfrxMemoView
          Left = 22.118120000000000000
          Top = 268.669450000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."CEP"]')
          ParentFont = False
        end
        object tblRelPessoasESTADO: TfrxMemoView
          Left = 426.527830000000000000
          Top = 268.669450000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelPessoas."ESTADO"]')
          ParentFont = False
        end
        object tblRelCreceberTEXTO1: TfrxMemoView
          Left = 22.118120000000000000
          Top = 146.283550000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'TEXTO1'
          DataSet = tblRelBoleto
          DataSetName = 'tblRelBoleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelBoleto."TEXTO1"]')
          ParentFont = False
        end
        object tblRelCreceberTEXTO2: TfrxMemoView
          Left = 22.118120000000000000
          Top = 164.960730000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'TEXTO2'
          DataSet = tblRelBoleto
          DataSetName = 'tblRelBoleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelBoleto."TEXTO2"]')
          ParentFont = False
        end
        object tblRelCreceberTEXTO3: TfrxMemoView
          Left = 22.118120000000000000
          Top = 185.637910000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'TEXTO3'
          DataSet = tblRelBoleto
          DataSetName = 'tblRelBoleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelBoleto."TEXTO3"]')
          ParentFont = False
        end
        object tblRelCreceberVALOR_LAMINA: TfrxMemoView
          Left = 506.457020000000000000
          Top = 162.622140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_LAMINA'
          DataSet = tblRelBoleto
          DataSetName = 'tblRelBoleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[tblRelBoleto."VALOR_LAMINA"]')
          ParentFont = False
        end
        object tblRelCreceberVALOR_LAMINA1: TfrxMemoView
          Left = 506.457020000000000000
          Top = 205.417440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = tblRelBoleto
          DataSetName = 'tblRelBoleto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<tblRelCreceber."VALOR">)+(<tblRelBoleto."VALOR_LAMINA">)]'
            '')
          ParentFont = False
        end
        object tblRelCreceberVENCIMENTO: TfrxMemoView
          Left = 506.457020000000000000
          Top = 13.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VENCIMENTO'
          DataSet = tblRelCreceber
          DataSetName = 'tblRelCreceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[tblRelCreceber."VENCIMENTO"]')
          ParentFont = False
        end
      end
    end
  end
  object tblRelPessoas: TfrxDBDataset
    UserName = 'tblRelPessoas'
    CloseDataSource = False
    DataSource = dtsPessoas
    BCDToCurrency = False
    Left = 48
  end
  object tblRelCreceber: TfrxDBDataset
    UserName = 'tblRelCreceber'
    CloseDataSource = False
    DataSource = dtsCReceber
    BCDToCurrency = False
    Left = 80
  end
  object dtsPessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 184
    Top = 32
  end
  object dtsCReceber: TDataSource
    AutoEdit = False
    DataSet = tblCReceber
    Left = 216
    Top = 32
  end
  object tblCReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = tblBoletoAfterPost
    AfterCancel = tblBoletoAfterCancel
    AfterDelete = tblBoletoAfterPost
    Left = 216
    object tblCReceberBOLETO_EMITIDO: TIBStringField
      FieldName = 'BOLETO_EMITIDO'
      Origin = '"CRECEBER"."BOLETO_EMITIDO"'
      FixedChar = True
      Size = 1
    end
    object tblCReceberID_CRECEBER: TIntegerField
      FieldName = 'ID_CRECEBER'
      Origin = '"CRECEBER"."ID_CRECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblCReceberID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"CRECEBER"."ID_CONCESSIONARIA"'
    end
    object tblCReceberID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"CRECEBER"."ID_CLIENTES"'
    end
    object tblCReceberID_AVALISTA: TIntegerField
      FieldName = 'ID_AVALISTA'
      Origin = '"CRECEBER"."ID_AVALISTA"'
    end
    object tblCReceberID_PEDIDO_VEICULOS: TIntegerField
      FieldName = 'ID_PEDIDO_VEICULOS'
      Origin = '"CRECEBER"."ID_PEDIDO_VEICULOS"'
    end
    object tblCReceberDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CRECEBER"."DOCUMENTO"'
      Size = 10
    end
    object tblCReceberPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"CRECEBER"."PARCELA"'
      FixedChar = True
      Size = 2
    end
    object tblCReceberVEZES: TIBStringField
      FieldName = 'VEZES'
      Origin = '"CRECEBER"."VEZES"'
      FixedChar = True
      Size = 2
    end
    object tblCReceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Origin = '"CRECEBER"."ID_FORMA_PAGAMENTO"'
      Required = True
    end
    object tblCReceberORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"CRECEBER"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblCReceberCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"CRECEBER"."CONTA"'
      Size = 4
    end
    object tblCReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"CRECEBER"."VENCIMENTO"'
    end
    object tblCReceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CRECEBER"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CRECEBER"."EMISSAO"'
    end
    object tblCReceberTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CRECEBER"."TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"CRECEBER"."PAGAMENTO"'
    end
    object tblCReceberVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CRECEBER"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblCReceberBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CRECEBER"."BANCO"'
      Size = 4
    end
    object tblCReceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CRECEBER"."HISTORICO"'
      Size = 50
    end
    object tblCReceberSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CRECEBER"."STATUS"'
    end
  end
  object tblPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = tblBoletoAfterPost
    AfterCancel = tblBoletoAfterCancel
    AfterDelete = tblBoletoAfterPost
    Left = 184
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
  end
  object tblBoleto: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBoletoAfterCancel
    AfterDelete = tblBoletoAfterPost
    AfterPost = tblBoletoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MODELO_BOLETO'
      'where'
      '  ID_MODELO_BOLETO = :OLD_ID_MODELO_BOLETO')
    InsertSQL.Strings = (
      'insert into MODELO_BOLETO'
      
        '  (AGENCIA, CARTEIRA, CODIGO_BANCO, CONTA, CONVENIO, DIGITO_CONT' +
        'A, ID_CONCESSIONARIA, '
      
        '   ID_MODELO_BOLETO, TEXTO1, TEXTO2, TEXTO3, ULTIMO_BOLETO, VALO' +
        'R_LAMINA)'
      'values'
      
        '  (:AGENCIA, :CARTEIRA, :CODIGO_BANCO, :CONTA, :CONVENIO, :DIGIT' +
        'O_CONTA, '
      
        '   :ID_CONCESSIONARIA, :ID_MODELO_BOLETO, :TEXTO1, :TEXTO2, :TEX' +
        'TO3, :ULTIMO_BOLETO, '
      '   :VALOR_LAMINA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_MODELO_BOLETO,'
      '  ULTIMO_BOLETO,'
      '  VALOR_LAMINA,'
      '  TEXTO1,'
      '  TEXTO2,'
      '  TEXTO3,'
      '  CODIGO_BANCO,'
      '  CONVENIO,'
      '  CARTEIRA,'
      '  AGENCIA,'
      '  CONTA,'
      '  ID_CONCESSIONARIA,'
      '  DIGITO_CONTA'
      'from MODELO_BOLETO '
      'where'
      '  ID_MODELO_BOLETO = :ID_MODELO_BOLETO')
    SelectSQL.Strings = (
      'select * from MODELO_BOLETO'
      'where id_Concessionaria = :idConcessionaria')
    ModifySQL.Strings = (
      'update MODELO_BOLETO'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  CARTEIRA = :CARTEIRA,'
      '  CODIGO_BANCO = :CODIGO_BANCO,'
      '  CONTA = :CONTA,'
      '  CONVENIO = :CONVENIO,'
      '  DIGITO_CONTA = :DIGITO_CONTA,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  ID_MODELO_BOLETO = :ID_MODELO_BOLETO,'
      '  TEXTO1 = :TEXTO1,'
      '  TEXTO2 = :TEXTO2,'
      '  TEXTO3 = :TEXTO3,'
      '  ULTIMO_BOLETO = :ULTIMO_BOLETO,'
      '  VALOR_LAMINA = :VALOR_LAMINA'
      'where'
      '  ID_MODELO_BOLETO = :OLD_ID_MODELO_BOLETO')
    ParamCheck = True
    UniDirectional = False
    Left = 152
    object tblBoletoID_MODELO_BOLETO: TIntegerField
      FieldName = 'ID_MODELO_BOLETO'
      Origin = '"MODELO_BOLETO"."ID_MODELO_BOLETO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblBoletoVALOR_LAMINA: TIBBCDField
      FieldName = 'VALOR_LAMINA'
      Origin = '"MODELO_BOLETO"."VALOR_LAMINA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblBoletoTEXTO1: TIBStringField
      FieldName = 'TEXTO1'
      Origin = '"MODELO_BOLETO"."TEXTO1"'
      Required = True
      Size = 50
    end
    object tblBoletoTEXTO2: TIBStringField
      FieldName = 'TEXTO2'
      Origin = '"MODELO_BOLETO"."TEXTO2"'
      Required = True
      Size = 50
    end
    object tblBoletoTEXTO3: TIBStringField
      FieldName = 'TEXTO3'
      Origin = '"MODELO_BOLETO"."TEXTO3"'
      Required = True
      Size = 50
    end
    object tblBoletoCODIGO_BANCO: TIBStringField
      FieldName = 'CODIGO_BANCO'
      Origin = '"MODELO_BOLETO"."CODIGO_BANCO"'
      Size = 3
    end
    object tblBoletoCONVENIO: TIBStringField
      FieldName = 'CONVENIO'
      Origin = '"MODELO_BOLETO"."CONVENIO"'
      Size = 7
    end
    object tblBoletoAGENCIA: TIBStringField
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Origin = '"MODELO_BOLETO"."AGENCIA"'
      Size = 6
    end
    object tblBoletoID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"MODELO_BOLETO"."ID_CONCESSIONARIA"'
      Required = True
    end
    object tblBoletoDIGITO_CONTA: TIBStringField
      FieldName = 'DIGITO_CONTA'
      Origin = '"MODELO_BOLETO"."DIGITO_CONTA"'
      Size = 1
    end
    object tblBoletoULTIMO_BOLETO: TIBStringField
      FieldName = 'ULTIMO_BOLETO'
      Origin = '"MODELO_BOLETO"."ULTIMO_BOLETO"'
      Size = 10
    end
    object tblBoletoCARTEIRA: TIBStringField
      FieldName = 'CARTEIRA'
      Origin = '"MODELO_BOLETO"."CARTEIRA"'
      Size = 6
    end
    object tblBoletoCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"MODELO_BOLETO"."CONTA"'
      Size = 10
    end
  end
  object tblRelBoleto: TfrxDBDataset
    UserName = 'tblRelBoleto'
    CloseDataSource = False
    DataSet = tblBoleto
    BCDToCurrency = False
    Left = 112
  end
  object DataSourceBoleto: TDataSource
    AutoEdit = False
    DataSet = tblBoleto
    Left = 152
    Top = 32
  end
  object tblConcessionaria: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblBoletoAfterCancel
    AfterDelete = tblBoletoAfterPost
    AfterPost = tblBoletoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Concessionaria'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    InsertSQL.Strings = (
      'insert into Concessionaria'
      
        '  (ALIQUOTA_ICMS1, ALIQUOTA_ICMS2, ALIQUOTA_ISS, CIDADE, CNPJ, C' +
        'OD_CONCES, '
      
        '   CONCESSION, EMPRESA, ENDERECO, ESTADO, ID_CONCESSIONARIA, IE,' +
        ' TELEFONE)'
      'values'
      
        '  (:ALIQUOTA_ICMS1, :ALIQUOTA_ICMS2, :ALIQUOTA_ISS, :CIDADE, :CN' +
        'PJ, :COD_CONCES, '
      
        '   :CONCESSION, :EMPRESA, :ENDERECO, :ESTADO, :ID_CONCESSIONARIA' +
        ', :IE, '
      '   :TELEFONE)')
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
      '  ALIQUOTA_ICMS2'
      'from Concessionaria '
      'where'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA')
    SelectSQL.Strings = (
      'select * from Concessionaria '
      'where id_concessionaria = :idConcessionaria'
      ''
      '')
    ModifySQL.Strings = (
      'update Concessionaria'
      'set'
      '  ALIQUOTA_ICMS1 = :ALIQUOTA_ICMS1,'
      '  ALIQUOTA_ICMS2 = :ALIQUOTA_ICMS2,'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  COD_CONCES = :COD_CONCES,'
      '  CONCESSION = :CONCESSION,'
      '  EMPRESA = :EMPRESA,'
      '  ENDERECO = :ENDERECO,'
      '  ESTADO = :ESTADO,'
      '  ID_CONCESSIONARIA = :ID_CONCESSIONARIA,'
      '  IE = :IE,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  ID_CONCESSIONARIA = :OLD_ID_CONCESSIONARIA')
    ParamCheck = True
    UniDirectional = False
    Left = 248
    Top = 32
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
  end
end
