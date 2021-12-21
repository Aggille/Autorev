object BoxLogin: TBoxLogin
  Left = 0
  Top = 0
  Caption = 'Autorev'
  ClientHeight = 130
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 306
    Height = 130
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label2: TLabel
      Left = 48
      Top = 43
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Button1: TButton
      Left = 48
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 2
      OnClick = Button1Click
      OnKeyPress = FormKeyPress
    end
    object Button2: TButton
      Left = 152
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = Button2Click
      OnKeyPress = FormKeyPress
    end
    object Edusuario: TEdit
      Left = 101
      Top = 13
      Width = 126
      Height = 21
      Hint = 'Digite o login'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = EdusuarioKeyPress
    end
    object Edsenha: TEdit
      Left = 101
      Top = 40
      Width = 126
      Height = 21
      Hint = 'Digite a senha'
      CharCase = ecUpperCase
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 1
      OnKeyPress = EdsenhaKeyPress
    end
  end
  object DataSourceParametros: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 248
    Top = 24
  end
  object IBQuery1: TIBQuery
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from PARAMETROS')
    Left = 248
    Top = 56
  end
end
