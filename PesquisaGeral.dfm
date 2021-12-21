object BoxPesquisar: TBoxPesquisar
  Left = 15
  Top = 85
  ActiveControl = DBGrid_Pesq
  Caption = 'Localizar'
  ClientHeight = 328
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 309
    Align = alClient
    TabOrder = 0
    object DBGrid_Pesq: TDBGrid
      Left = 8
      Top = 71
      Width = 641
      Height = 186
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawDataCell = DBGrid_PesqDrawDataCell
      OnDrawColumnCell = DBGrid_PesqDrawColumnCell
      OnDblClick = DBGrid_PesqDblClick
      OnKeyPress = DBGrid_PesqKeyPress
      OnTitleClick = DBGrid_PesqTitleClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 641
      Height = 65
      Caption = '[Filtro para pesquisa]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
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
      object Label3: TLabel
        Left = 266
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
      object Label2: TLabel
        Left = 8
        Top = 40
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
      object cmbCampos: TComboBox
        Left = 100
        Top = 13
        Width = 81
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnCloseUp = cmbCamposCloseUp
        OnKeyPress = cmbCamposKeyPress
      end
      object cmbTipo: TComboBox
        Left = 352
        Top = 13
        Width = 113
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Contendo'
        OnKeyPress = cmbTipoKeyPress
        Items.Strings = (
          'Contendo'
          'Iniciando com'
          'Exatamente')
      end
      object EditTexto: TEdit
        Left = 100
        Top = 37
        Width = 525
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnEnter = EditTextoEnter
        OnExit = EditTextoExit
        OnKeyPress = EditTextoKeyPress
      end
    end
  end
  object BtnOK: TBitBtn
    Left = 239
    Top = 278
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 1
    OnClick = BtnOKClick
    OnKeyPress = EditTextoKeyPress
  end
  object BtnCancelar: TBitBtn
    Left = 325
    Top = 278
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
    OnKeyPress = FormKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 309
    Width = 660
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Esc] - Sair sem pesquisar'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = '[Enter] - Confirma o registro corrente'
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
    SimplePanel = True
    SimpleText = 
      '                            [Esc] - Sair sem pesquisar        [E' +
      'nter] - Confirma o registro corrente'
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = cdsPesquisa
    Left = 224
    Top = 176
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 296
    Top = 176
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = tblPesquisa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 176
  end
  object tblPesquisa: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 448
    Top = 176
  end
end
