object BoxEmpresas: TBoxEmpresas
  Left = 0
  Top = 0
  Caption = 'Empresas'
  ClientHeight = 179
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 505
    Height = 161
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 133
      Height = 13
      Caption = 'Selecione a Concessionaria:'
    end
    object ID_ConcessionariaEmUso: TEdit
      Left = 406
      Top = 2
      Width = 75
      Height = 21
      TabOrder = 2
      Text = 'ID_ConcessionariaEmUso'
      Visible = False
    end
    object ListBox1: TListBox
      Left = 8
      Top = 24
      Width = 392
      Height = 129
      ItemHeight = 13
      TabOrder = 3
      OnClick = ListBox1Click
      OnDblClick = BtnOKClick
      OnKeyPress = ListBox1KeyPress
      OnMouseEnter = ListBox1Click
    end
    object BtnOK: TBitBtn
      Left = 406
      Top = 51
      Width = 75
      Height = 25
      Caption = '&Ok'
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
      TabOrder = 6
      OnClick = BtnOKClick
    end
    object BtnCancelar: TBitBtn
      Left = 406
      Top = 82
      Width = 75
      Height = 25
      Caption = '&Cancelar'
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
      TabOrder = 9
      OnClick = BtnCancelarClick
    end
    object ConcessionariaEmUso: TEdit
      Left = 406
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 4
      Text = 'ConcessionariaEmUso'
      Visible = False
    end
    object Aliquota_ICMS2: TEdit
      Left = 215
      Top = 2
      Width = 62
      Height = 21
      TabOrder = 0
      Text = 'Aliquota_ICMS1'
      Visible = False
    end
    object Aliquota_ISS: TEdit
      Left = 283
      Top = 2
      Width = 62
      Height = 21
      TabOrder = 1
      Text = 'Aliquota_ICMS1'
      Visible = False
    end
    object Aliquota_ICMS1: TCurrencyEdit
      Left = 88
      Top = 53
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DecimalPlaces = 3
      DisplayFormat = 'R$ ,0.000;-R$ ,0.000'
      TabOrder = 7
      Visible = False
    end
    object NumeroEmpresa: TEdit
      Left = 215
      Top = 29
      Width = 170
      Height = 21
      TabOrder = 5
      Text = 'N'#186' empresa na contabilidade JB'
      Visible = False
    end
    object ConcessionariaEndereco: TEdit
      Left = 215
      Top = 63
      Width = 170
      Height = 21
      TabOrder = 8
      Text = 'ConcessionariaEndereco'
      Visible = False
    end
    object ConcessionariaEstado: TEdit
      Left = 215
      Top = 90
      Width = 170
      Height = 21
      TabOrder = 10
      Text = 'ConcessionariaEstado'
      Visible = False
    end
    object ConcessionariaCidade: TEdit
      Left = 215
      Top = 117
      Width = 170
      Height = 21
      TabOrder = 11
      Text = 'ConcessionariaCidade'
      Visible = False
    end
    object ConcessionariaFantasia: TEdit
      Left = 215
      Top = 144
      Width = 170
      Height = 21
      TabOrder = 12
      Text = 'ConcessionariaFantasia'
      Visible = False
    end
    object ConcessionariaNome: TEdit
      Left = 47
      Top = 90
      Width = 170
      Height = 21
      TabOrder = 13
      Text = 'ConcessionariaNome'
      Visible = False
    end
    object Despachante: TEdit
      Left = 47
      Top = 117
      Width = 82
      Height = 21
      TabOrder = 14
      Text = 'Despachante'
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 160
    Width = 521
    Height = 19
    Panels = <>
  end
  object DataSource1: TDataSource
    DataSet = FDB1.IBDataSetLogin
    Left = 416
    Top = 128
  end
  object DataSourceConcessionaria: TDataSource
    DataSet = FDB1.IBDataSetConcessionaria
    Left = 448
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = FDB1.IBDataSetUsuariosConcessionarias
    Left = 480
    Top = 128
  end
  object DataSource4: TDataSource
    AutoEdit = False
    DataSet = FDB1.IBDataSetParametros
    Left = 384
    Top = 128
  end
end
