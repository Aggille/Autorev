object BoxEntregas: TBoxEntregas
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Entregas'
  ClientHeight = 377
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtResultado: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 124
    Width = 513
    Height = 203
    Align = alClient
    ReadOnly = True
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 304
    ExplicitWidth = 635
    ExplicitHeight = 68
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 333
    Width = 513
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -29
    ExplicitTop = 364
    object btnSair: TBitBtn
      AlignWithMargins = True
      Left = 435
      Top = 3
      Width = 75
      Height = 35
      Align = alRight
      Caption = 'Sair'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 554
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object tabMain: TPageControl
    Left = 0
    Top = 0
    Width = 519
    Height = 121
    ActivePage = tabSolicitação
    Align = alTop
    TabOrder = 2
    object tabConsulta: TTabSheet
      Caption = 'Consulta'
      ExplicitWidth = 627
      ExplicitHeight = 77
      object Label1: TLabel
        Left = 239
        Top = 51
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object EdtChassi: TLabeledEdit
        Left = 3
        Top = 69
        Width = 230
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Chassi'
        LabelSpacing = 8
        TabOrder = 0
      end
      object btnConsultar: TBitBtn
        AlignWithMargins = True
        Left = 395
        Top = 58
        Width = 110
        Height = 35
        Caption = 'Consultar'
        TabOrder = 1
        OnClick = btnConsultarClick
      end
      object edtCnpjEntregador: TLabeledEdit
        Left = 199
        Top = 24
        Width = 158
        Height = 21
        EditLabel.Width = 82
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ Entregador'
        LabelSpacing = 8
        TabOrder = 2
      end
      object edtCnpjVendedor: TLabeledEdit
        Left = 363
        Top = 24
        Width = 142
        Height = 21
        EditLabel.Width = 74
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ Vendedor'
        LabelSpacing = 8
        TabOrder = 3
      end
      object edtCnpjMontadora: TLabeledEdit
        Left = 3
        Top = 24
        Width = 190
        Height = 21
        EditLabel.Width = 80
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ Montadora'
        LabelSpacing = 8
        TabOrder = 4
      end
      object edtStatus: TComboBox
        Left = 239
        Top = 69
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 5
        Items.Strings = (
          ''
          'PENDENTE'
          'REALIZADA'
          'CANCELADA')
      end
    end
    object tabSolicitação: TTabSheet
      Caption = 'Realiza'#231#227'o / Cancelamento'
      ImageIndex = 1
      ExplicitWidth = 627
      ExplicitHeight = 81
      object Label2: TLabel
        Left = 154
        Top = 13
        Width = 52
        Height = 13
        Caption = 'ID Entrega'
      end
      object edtCpfOperador: TLabeledEdit
        Left = 3
        Top = 32
        Width = 145
        Height = 21
        EditLabel.Width = 83
        EditLabel.Height = 13
        EditLabel.Caption = 'CPF do Operador'
        LabelSpacing = 8
        TabOrder = 0
      end
      object btnRealizar: TBitBtn
        AlignWithMargins = True
        Left = 281
        Top = 30
        Width = 107
        Height = 25
        Caption = 'Realizar Entrega'
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object edtId: TJvSpinEdit
        Left = 154
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object btnCancelar: TBitBtn
        AlignWithMargins = True
        Left = 394
        Top = 30
        Width = 114
        Height = 25
        Caption = 'Cancelar Entrega'
        TabOrder = 3
        OnClick = btnCancelarClick
      end
    end
  end
end
