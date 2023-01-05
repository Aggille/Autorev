object BoxConsultaTransferencias: TBoxConsultaTransferencias
  Left = 0
  Top = 0
  Caption = 'Consulta de Transferencias'
  ClientHeight = 369
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 64
    Width = 317
    Height = 13
    Caption = 
      'Chassi do ve'#237'culo ( em branco para consultar ve'#237'culos dispon'#237'vei' +
      's )'
  end
  object Label2: TLabel
    Left = 11
    Top = 144
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 8
    Width = 230
    Height = 33
    Caption = 'Pesquisa Ve'#237'culo'
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 347
    Top = 64
    Width = 108
    Height = 13
    Caption = 'Estado da Autoriza'#231#227'o'
  end
  object edtchassi: TEdit
    Left = 11
    Top = 83
    Width = 317
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 401
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Sair'
    ModalResult = 2
    TabOrder = 3
  end
  object edtResultado: TMemo
    Left = 8
    Top = 163
    Width = 465
    Height = 194
    ReadOnly = True
    TabOrder = 4
  end
  object edtEstado: TComboBox
    Left = 347
    Top = 83
    Width = 132
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      ''
      'CRIADA'
      'CONSUMIDA'
      'CANCELADA')
  end
end
