object frmPesquisa: TfrmPesquisa
  Left = 268
  Top = 122
  ActiveControl = GroupBox1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Pesquisar'
  ClientHeight = 273
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 3
    Width = 513
    Height = 98
    Caption = '[Filtro para Pesquisa]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Pesquisar por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 86
      Height = 13
      Caption = 'Texto '#224' pesquisar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Tipo da Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cmbCampos: TComboBox
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnCloseUp = cmbCamposCloseUp
    end
    object EdTexto: TEdit
      Left = 8
      Top = 70
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = EdTextoEnter
      OnExit = BitBtn1Click
    end
    object cmbTipo: TComboBox
      Left = 208
      Top = 32
      Width = 297
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnCloseUp = cmbCamposCloseUp
      Items.Strings = (
        'Pelas Iniciais'
        'Em qualquer parte do texto'
        'Exata')
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 69
      Width = 85
      Height = 23
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 3
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000C30E0000C30E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
        1D007666280000450000013E450013286A006A39850085324A00040404000808
        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
        0000000039009B00000000250000000049003B111100002F000000005D004517
        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
        0F0F0F0F0F0F0F000000}
    end
  end
  object DBGrid_Pesq: TDBGrid
    Left = 4
    Top = 99
    Width = 513
    Height = 145
    DataSource = dsPesq
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 254
    Width = 522
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Esc] - Sair sem pesquisar'
        Width = 176
      end
      item
        Alignment = taCenter
        Text = '[F5] - Confirma o registro corrente'
        Width = 176
      end
      item
        Alignment = taCenter
        Text = '[Enter] - Efetua pesquisa'
        Width = 176
      end>
  end
  object dsPesq: TDataSource
    DataSet = tblPesquisa
    Left = 464
    Top = 112
  end
  object tblPesquisa: TSimpleDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 424
    Top = 112
  end
end
