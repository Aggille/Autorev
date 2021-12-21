object frmMalaDireta: TfrmMalaDireta
  Left = 139
  Top = 143
  BorderStyle = bsToolWindow
  Caption = 'Mala direta'
  ClientHeight = 446
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagClientes: TPageControl
    Left = 0
    Top = 0
    Width = 794
    Height = 446
    ActivePage = tabclientes
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tabclientes: TTabSheet
      Caption = 'Selecionar clientes'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 786
        Height = 409
        DisableThemes = False
        ControlType.Strings = (
          'imprime;CheckBox;True;False'
          'TITULO;CheckBox;S;N')
        Selected.Strings = (
          'NOME'#9'40'#9'Nome'#9#9
          'CIDADE'#9'30'#9'Cidade'#9#9
          'EMAIL'#9'42'#9'Email'#9#9
          'TITULO'#9'10'#9'Enviar'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dtsClientes
        EditCalculated = True
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16250871
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados do email'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Assunto:'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 30
        Height = 13
        Caption = 'Anexo'
      end
      object Label3: TLabel
        Left = 56
        Top = 72
        Width = 52
        Height = 13
        Caption = 'Mensagem'
      end
      object lblMensagem: TLabel
        Left = 56
        Top = 344
        Width = 585
        Height = 13
        AutoSize = False
        Caption = 'Mensagem: '
      end
      object edtAssunto: TEdit
        Left = 56
        Top = 16
        Width = 393
        Height = 21
        TabOrder = 0
      end
      object edtAnexo: TLMDFileOpenEdit
        Left = 56
        Top = 48
        Width = 393
        Height = 21
        Bevel.Mode = bmStandard
        Caret.BlinkRate = 530
        TabOrder = 1
        CustomButtonWidth = 18
        FilenameOnly = False
      end
      object edtMensagem: TwwDBRichEdit
        Left = 56
        Top = 96
        Width = 729
        Height = 241
        AutoURLDetect = False
        PrintJobName = 'Delphi 7'
        TabOrder = 2
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        RichEditVersion = 2
        Data = {
          730000007B5C727466315C616E73695C616E7369637067313235325C64656666
          305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
          4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
          5C706172645C66305C667331365C7061720D0A7D0D0A00}
      end
      object BitBtn1: TBitBtn
        Left = 664
        Top = 368
        Width = 113
        Height = 43
        Caption = 'Enviar'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          46070000424D460700000000000036040000280000001C0000001C0000000100
          0800000000001003000000000000000000000001000000000000FFFFFF002929
          2900C0C0C00039393900424242004A4A4A00525252005A5A5A00636363006B6B
          6B00737373007B7B7B00848484008C8C8C00949494009C9C9C00A5A5A500ADAD
          AD00B5B5B500BDBDBD00C6C6C600CECECE00D6D6D600DEDEDE00EFEFEF00F7F7
          F700B5B5BD00E7E7F700C6C6DE00CECEE700C6C6E7009C9CF7009C9CFF005252
          D6001818D6000000B50010218400ADBDE70000298C0010A5CE0029CEE700F7FF
          FF00CED6D600A5ADAD00BDC6C600BDCECE00525A5A004A525200E7FFFF009CAD
          AD0094A5A500CEE7E700ADC6C60039424200D6F7F7009CB5B500ADCECE002129
          290094BDBD00A5DEDE00739C9C009CD6D6007BADAD00638C8C0073A5A5009CE7
          E70010181800A5FFFF005A8C8C0084CECE008CDEDE009CF7F70094EFEF009CFF
          FF004A7B7B007BCECE0094FFFF0063B5B5008CFFFF0073D6D6005AADAD006BCE
          CE0084FFFF00081010005AB5B50073E7E700183131007BFFFF00295A5A0073FF
          FF006BEFEF0063E7E7006BFFFF005ADEDE0042A5A50063F7F70052CECE0063FF
          FF005AEFEF00215A5A005AF7F7005AFFFF0039A5A5003194940052F7F7001031
          31004AF7F70018525200217B7B0042F7F7000821210031DEDE000829290029EF
          EF000831310021DEDE0018CECE0010D6D6000894940000080800001010000018
          1800002121000029290000313100003939000042420000525200005A5A000063
          6300006B6B0000737300007B7B0000848400008C8C0000949400009C9C0000A5
          A50000B5B50000BDBD00FFFFF700B5B5AD00C6C6BD0094948C0084847B006B6B
          6300FFFFE7006B635A00F7EFEF00FFF7F700BDB5B500C6BDBD00948C8C009C94
          94007B737300FFEFEF00736B6B00847B7B006B636300BDADAD005A525200635A
          5A00524A4A00FFE7E7004A424200D6BDBD00CEB5B50084737300C6ADAD003931
          3100A58C8C00D6B5B500FFD6D6006352520029212100FFCECE004A393900EFB5
          B500FFBDBD00FFB5B500FFADAD0018101000FFA5A500FF9C9C00FF949400FF8C
          8C00FF848400FF7B7B00FF737300FF6B6B00FF636300FF525200FF4A4A00FF39
          3900FF000000947BB50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202020202
          02020202020202020202962E770B020202020202020202020202020202020202
          02020202990979807D789D02020202020202020202020202020202020202989C
          797D86877A807C9D020202020202020202020202020202020F08727C86858586
          7A80867CA70202020202020202020202020211A4B57A858685858485787F8685
          7C9A0202020202020202020297A956817A7F86848483885B6086848681C49D02
          0202020202131435428182877D7E85856748684E496A8685807A7E9D02020202
          02085380848585867A6B8871475C4C575F496D887F7B857A9D02020202A07E86
          858483865899624C614E5C574E65496A587887857C0B020202AD7E8683845E74
          4C513C624159525261365A403F8084858677020202AD7E848A45524E59306635
          7C46525F33324450756187838578020202A42E734E594E614F077A08A1724F54
          4A8B4B594C526287847702020212B03E6147543C422F981895A1703A6F525C47
          5C4E4E6287770202020213B0406C53A41117000000199E693B5C496543272425
          6D6E02020202120EAE39132A00292919190019AD7D3D61432826C35B509F0202
          12980401131729A3AF29291929190019A17C3D614E5DA69D1202029A2EA93218
          2929B9BDB4B1AC29291919008C937D3876981002020205050C191929BBBEBABB
          BCBDA3BBBD298C92201D93AEA702020202020912000000BDB9B8BEBCB7BCBFBB
          B719001F23221B080902020202020210130029B2C0BFB1B9C0BAB4292929001C
          2221158E03070202020202020F120029ACB6C1BDAF192929951995002D1A8F0D
          1210020202020202020F140095BFA39429292929190019188D0B121302020202
          0202020202020F140000292929AFB4950017130B110202020202020202020202
          0202020F1300A3B7B9BEBFA52C0D0F0202020202020202020202020202020202
          0E2DB4C2BCAB340F0E020202020202020202020202020202020202020232A8B1
          37100F02020202020202020202020202020202020202020202022B3110960202
          0202020202020202020202020202020202020202020213120202020202020202
          02020202020202020202}
      end
      object Progresso: TProgressBar
        Left = 56
        Top = 360
        Width = 289
        Height = 17
        TabOrder = 4
      end
    end
  end
  object dtsClientes: TDataSource
    DataSet = tblClientes
    Left = 80
    Top = 8
  end
  object tblClientes: TClientDataSet
    Aggregates = <>
    Filter = 'titulo='#39'S'#39
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspClientes'
    Left = 64
    Top = 8
    object tblClientesNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME'
      Size = 40
    end
    object tblClientesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Size = 30
    end
    object tblClientesEMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 42
      FieldName = 'EMAIL'
      Size = 50
    end
    object tblClientesTITULO: TStringField
      DisplayLabel = 'Enviar'
      DisplayWidth = 10
      FieldName = 'TITULO'
      FixedChar = True
      Size = 3
    end
    object tblClientesCONJUGE: TStringField
      DisplayLabel = 'C'#244'njuge'
      DisplayWidth = 40
      FieldName = 'CONJUGE'
      Visible = False
      Size = 40
    end
    object tblClientesID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object tblClientesENDERECO: TStringField
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Visible = False
      Size = 50
    end
    object tblClientesBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object tblClientesCEP: TStringField
      DisplayWidth = 8
      FieldName = 'CEP'
      Visible = False
      EditMask = '#####-###;0; '
      Size = 8
    end
    object tblClientesUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object tblClientesTELEFONE: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      Visible = False
    end
    object tblClientesFAX: TStringField
      DisplayWidth = 20
      FieldName = 'FAX'
      Visible = False
    end
    object tblClientesANIVERSARIO: TDateField
      DisplayWidth = 10
      FieldName = 'ANIVERSARIO'
      Visible = False
    end
    object tblClientesANIV_CONJUGE: TDateField
      DisplayWidth = 10
      FieldName = 'ANIV_CONJUGE'
      Visible = False
    end
    object tblClientesOBS: TGraphicField
      DisplayWidth = 10
      FieldName = 'OBS'
      Visible = False
      BlobType = ftGraphic
    end
    object tblClientesANIV_CASAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'ANIV_CASAMENTO'
      Visible = False
    end
    object tblClientesCPF: TStringField
      DisplayWidth = 11
      FieldName = 'CPF'
      Visible = False
      Size = 11
    end
    object tblClientesRG: TStringField
      DisplayWidth = 30
      FieldName = 'RG'
      Visible = False
      Size = 30
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = sqlClientes
    Left = 48
    Top = 8
  end
  object sqlClientes: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'CLIENTES'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbVanith
    Left = 24
    Top = 8
  end
  object lmdINI: TLMDIniCtrl
    IniFile = 'vanity.INI'
    IniPrefix = ppProgram
    Target = itIniFile
    Left = 116
    Top = 8
  end
  object smtp: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 156
    Top = 8
  end
  object pop: TIdPOP3
    MaxLineAction = maException
    ReadTimeout = 0
    Left = 188
    Top = 8
  end
  object Mensagem: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 220
    Top = 8
  end
end
