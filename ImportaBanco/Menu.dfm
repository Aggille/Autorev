object Menu1: TMenu1
  Left = 0
  Top = 0
  Caption = 'Importador de banco de dados'
  ClientHeight = 198
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 206
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 116
      Height = 13
      Caption = 'Novo Id_Concessionaria'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 116
      Height = 13
      Caption = 'Novo Id_Concessionaria'
    end
    object NovoIdConcessionaria: TEdit
      Left = 138
      Top = 13
      Width = 55
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 328
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Receita'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object IBQuery1: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Veiculos_Id, 1) as'
      'Id From RDB$DATABASE')
    Left = 200
    Top = 104
  end
  object IBQuery2: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Pedido_VEICULOS, 1) as'
      'Id From RDB$DATABASE')
    Left = 232
    Top = 104
  end
  object IBQuery3: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Clientes_Id, 1) as'
      'Id From RDB$DATABASE')
    Left = 264
    Top = 104
  end
  object IBQuery4: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Pecas_Id, 1) as'
      'Id From RDB$DATABASE')
    Left = 296
    Top = 104
  end
  object IBQuery5: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Atendimento_Id, 1) as'
      'Id From RDB$DATABASE')
    Left = 328
    Top = 104
  end
  object IBQuery6: TIBQuery
    Database = FDBNovo1.IBDatabase
    Transaction = FDBNovo1.IBTransaction1
    SQL.Strings = (
      'SELECT GEN_ID(Seq_Notasfiscais_Saida_Id, 1) as'
      'Id From RDB$DATABASE')
    Left = 360
    Top = 104
  end
end
