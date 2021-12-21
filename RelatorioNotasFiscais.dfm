object BoxRelatorioNotasFiscais: TBoxRelatorioNotasFiscais
  Left = 15
  Top = 85
  Caption = 'Relat'#243'rio de NFs'
  ClientHeight = 114
  ClientWidth = 169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 73
    Caption = 'Nota Fiscal impressa'
    TabOrder = 0
  end
  object BtnOk: TBitBtn
    Left = 47
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = BtnOkClick
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
  end
  object frxReport1: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39944.484125173600000000
    ReportOptions.LastChange = 39953.672942847220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'If <tblRelNofisa."Ent_Sai"> = '#39'S'#39' then'
      '  begin            '
      '   Memo2.Text := '#39'X'#39';'
      '   Memo3.Text := '#39#39';                                         '
      '  end          '
      ' Else'
      '  begin             '
      '    Memo2.text := '#39#39';'
      '    Memo3.Text := '#39'X'#39';'
      '  end          '
      'end;'
      ''
      '{procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'with BoxRelatorioNotasFiscais.tblRelNofisaFaturas1 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura1.Text := <tblRelNofisaFaturas1."FATURA">'
      '  else'
      '    Fatura1.Text := '#39#39';            '
      ' end;'
      ''
      ' with BoxRelatorioNotasFiscais.tblRelNofisaFaturas2 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura2.Text := <tblRelNofisaFaturas2."FATURA">'
      '  else'
      '    Fatura2.Text := '#39#39';            '
      ' end;'
      ''
      ' with BoxRelatorioNotasFiscais.tblRelNofisaFaturas3 do'
      ' begin'
      '  First;'
      '  If recno = 1 then                                             '
      '    Fatura3.Text := <tblRelNofisaFaturas3."FATURA">'
      '  else'
      '    Fatura3.Text := '#39#39';            '
      ' end;'
      '               '
      'end;}  '
      'begin            '
      'end.')
    Left = 8
    Top = 8
    Datasets = <
      item
        DataSet = tblRelNofisa
        DataSetName = 'tblRelNofisa'
      end
      item
        DataSet = tblRelNofisaFaturas1
        DataSetName = 'tblRelNofisaFaturas1'
      end
      item
        DataSet = tblRelNofisaFaturas2
        DataSetName = 'tblRelNofisaFaturas2'
      end
      item
        DataSet = tblRelNofisaFaturas3
        DataSetName = 'tblRelNofisaFaturas3'
      end
      item
        DataSet = tblRelPessoas
        DataSetName = 'tblRelPessoas'
      end
      item
        DataSet = tblRelSada
        DataSetName = 'tblRelSada'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 213.000000000000000000
      PaperHeight = 304.000000000000000000
      PaperSize = 256
      object MasterData1: TfrxMasterData
        Height = 291.023810000000000000
        Top = 18.897650000000000000
        Width = 805.039890000000000000
        DataSet = tblRelNofisa
        DataSetName = 'tblRelNofisa'
        RowCount = 0
        object tblRelNofisaNUMERO: TfrxMemoView
          Left = 714.331170000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."NUMERO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 510.236550000000000000
          Top = 37.795300000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'X')
          ParentFont = False
        end
        object tblRelNofisaSAIDA: TfrxMemoView
          Left = 710.551640000000000000
          Top = 199.433210000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."SAIDA"]')
          ParentFont = False
        end
        object tblRelNofisaEMISSAO: TfrxMemoView
          Left = 710.551640000000000000
          Top = 176.756030000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EMISSAO'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."EMISSAO"]')
          ParentFont = False
        end
        object tblRelNofisaHORA: TfrxMemoView
          Left = 710.551640000000000000
          Top = 222.110390000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."HORA"]')
          ParentFont = False
        end
        object tblRelPessoasNOME: TfrxMemoView
          Left = 18.897650000000000000
          Top = 184.756030000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelPessoas."NOME"]')
          ParentFont = False
        end
        object tblRelPessoasENDERECO: TfrxMemoView
          Left = 18.897650000000000000
          Top = 222.992270000000000000
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
          Memo.UTF8 = (
            '[tblRelPessoas."ENDERECO"]')
          ParentFont = False
        end
        object tblRelPessoasBAIRRO: TfrxMemoView
          Left = 423.307360000000000000
          Top = 222.992270000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelPessoas."BAIRRO"]')
          ParentFont = False
        end
        object tblRelPessoasCIDADE: TfrxMemoView
          Left = 19.897650000000000000
          Top = 255.905690000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelPessoas."CIDADE"]')
          ParentFont = False
        end
        object tblRelPessoasESTADO: TfrxMemoView
          Left = 423.307360000000000000
          Top = 256.567100000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelPessoas."ESTADO"]')
          ParentFont = False
        end
        object tblRelPessoasNUM_CPF: TfrxMemoView
          Left = 525.354670000000000000
          Top = 184.756030000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'NUM_CPF'
          DataSet = tblRelPessoas
          DataSetName = 'tblRelPessoas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelPessoas."NUM_CPF"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 604.724800000000000000
          Top = 37.795300000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'X')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.897650000000000000
        Top = 332.598640000000000000
        Width = 805.039890000000000000
        DataSet = tblRelNofisaFaturas1
        DataSetName = 'tblRelNofisaFaturas1'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 276.905690000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas2
          DataSetName = 'tblRelNofisaFaturas2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas2."FATURA"]')
          ParentFont = False
        end
        object Fatura1: TfrxMemoView
          Left = 19.897650000000000000
          Top = 0.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas1
          DataSetName = 'tblRelNofisaFaturas1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas1."FATURA"]')
          ParentFont = False
        end
        object Vencimento1: TfrxMemoView
          Left = 91.708720000000000000
          Top = 0.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas1
          DataSetName = 'tblRelNofisaFaturas1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas1."VENCIMENTO"]')
          ParentFont = False
        end
        object Valor1: TfrxMemoView
          Left = 171.078850000000000000
          Top = 0.779530000000000000
          Width = 105.826771650000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas1
          DataSetName = 'tblRelNofisaFaturas1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas1."VALOR"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 348.716760000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas2
          DataSetName = 'tblRelNofisaFaturas2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas2."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 427.866420000000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas2
          DataSetName = 'tblRelNofisaFaturas2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas2."VALOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 612.283860000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas1
          DataSetName = 'tblRelNofisaFaturas1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas3."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 691.653990000000000000
          Width = 102.047244090000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas1
          DataSetName = 'tblRelNofisaFaturas1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas3."VALOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 541.472790000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = tblRelNofisaFaturas3
          DataSetName = 'tblRelNofisaFaturas3'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisaFaturas3."FATURA"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 22.677180000000000000
        Top = 445.984540000000000000
        Width = 805.039890000000000000
        DataSet = tblRelSada
        DataSetName = 'tblRelSada'
        RowCount = 0
        object tblRelSadaCODIGO: TfrxMemoView
          Left = 20.338590000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = tblRelSada
          DataSetName = 'tblRelSada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelSada."CODIGO"]')
          ParentFont = False
        end
        object tblRelSadaDESCRICAO: TfrxMemoView
          Left = 156.401670000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = tblRelSada
          DataSetName = 'tblRelSada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelSada."DESCRICAO"]')
          ParentFont = False
        end
        object tblRelSadaQTDE: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = tblRelSada
          DataSetName = 'tblRelSada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelSada."QTDE"]')
          ParentFont = False
        end
        object tblRelSadaPRECO: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'PRECO'
          DataSet = tblRelSada
          DataSetName = 'tblRelSada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelSada."PRECO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 517.795610000000000000
        Top = 529.134200000000000000
        Width = 805.039890000000000000
        object Memo1: TfrxMemoView
          Left = 706.772110000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."NUMERO"]')
          ParentFont = False
        end
        object tblRelNofisaTOT_PROD: TfrxMemoView
          Left = 638.740570000000000000
          Top = 86.929190000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOT_PROD'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."TOT_PROD"]')
          ParentFont = False
        end
        object tblRelNofisaTOT_NOTA: TfrxMemoView
          Left = 638.740570000000000000
          Top = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOT_NOTA'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."TOT_NOTA"]')
          ParentFont = False
        end
        object tblRelNofisaFRETE_TIPO: TfrxMemoView
          Left = 355.275820000000000000
          Top = 211.653680000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DataField = 'FRETE_TIPO'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."FRETE_TIPO"]')
          ParentFont = False
        end
        object tblRelNofisaCOD_TRANS: TfrxMemoView
          Left = 26.456710000000000000
          Top = 207.874150000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."COD_TRANS"]')
          ParentFont = False
        end
        object tblRelNofisaBASE_ICMS: TfrxMemoView
          Left = 20.897650000000000000
          Top = 90.708720000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'BASE_ICMS'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."BASE_ICMS"]')
          ParentFont = False
        end
        object tblRelNofisaVAL_ICMS: TfrxMemoView
          Left = 177.637910000000000000
          Top = 90.708720000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VAL_ICMS'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."VAL_ICMS"]')
          ParentFont = False
        end
        object tblRelNofisaVAL_SERV: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VAL_SERV'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."VAL_SERV"]')
          ParentFont = False
        end
        object tblRelNofisaISSQN: TfrxMemoView
          Left = 566.929500000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ISSQN'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."ISSQN"]')
          ParentFont = False
        end
        object tblRelNofisaVAL_ISS: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VAL_ISS'
          DataSet = tblRelNofisa
          DataSetName = 'tblRelNofisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[tblRelNofisa."VAL_ISS"]')
          ParentFont = False
        end
      end
      object Overlay1: TfrxOverlay
        Height = 52.913420000000000000
        Top = 370.393940000000000000
        Width = 805.039890000000000000
      end
    end
  end
  object tblRelNofisa: TfrxDBDataset
    UserName = 'tblRelNofisa'
    CloseDataSource = False
    DataSource = DataSourceNofisa
    Left = 8
    Top = 40
  end
  object tblRelNofisaFaturas1: TfrxDBDataset
    UserName = 'tblRelNofisaFaturas1'
    CloseDataSource = False
    DataSource = DataSourceNofisaFaturas1
    Left = 176
  end
  object tblRelSada: TfrxDBDataset
    UserName = 'tblRelSada'
    CloseDataSource = False
    DataSource = DataSourceSada
    Left = 72
    Top = 40
  end
  object tblRelPessoas: TfrxDBDataset
    UserName = 'tblRelPessoas'
    CloseDataSource = False
    DataSource = DataSourcePessoas
    Left = 40
    Top = 40
  end
  object DataSourceNofisa: TDataSource
    AutoEdit = False
    DataSet = tblNofisa
    Left = 8
    Top = 80
  end
  object DataSourceNofisaFaturas1: TDataSource
    AutoEdit = False
    DataSet = tblNofisaFaturas1
    Left = 176
    Top = 40
  end
  object DataSourceSada: TDataSource
    AutoEdit = False
    DataSet = tblSada
    Left = 72
    Top = 80
  end
  object DataSourcePessoas: TDataSource
    AutoEdit = False
    DataSet = tblPessoas
    Left = 40
    Top = 80
  end
  object tblNofisa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 112
    object tblNofisaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA"."ID_NOFISA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofisaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"NOFISA"."ID_CONCESSIONARIA"'
    end
    object tblNofisaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = '"NOFISA"."ID_CLIENTES"'
    end
    object tblNofisaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NOFISA"."NUMERO"'
    end
    object tblNofisaSERIENF: TIBStringField
      FieldName = 'SERIENF'
      Origin = '"NOFISA"."SERIENF"'
      Size = 2
    end
    object tblNofisaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"NOFISA"."EMISSAO"'
    end
    object tblNofisaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"NOFISA"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaENT_SAI: TIBStringField
      FieldName = 'ENT_SAI'
      Origin = '"NOFISA"."ENT_SAI"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"NOFISA"."VENDEDOR"'
    end
    object tblNofisaSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = '"NOFISA"."SAIDA"'
    end
    object tblNofisaHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"NOFISA"."HORA"'
      FixedChar = True
      Size = 5
    end
    object tblNofisaIE_SUBS: TIBStringField
      FieldName = 'IE_SUBS'
      Origin = '"NOFISA"."IE_SUBS"'
      FixedChar = True
      Size = 15
    end
    object tblNofisaDESC_PEC: TIBBCDField
      FieldName = 'DESC_PEC'
      Origin = '"NOFISA"."DESC_PEC"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaDESC_OFI: TIBBCDField
      FieldName = 'DESC_OFI'
      Origin = '"NOFISA"."DESC_OFI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"NOFISA"."BASE_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = '"NOFISA"."VAL_ICMS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaBASE_ICM_S: TIBBCDField
      FieldName = 'BASE_ICM_S'
      Origin = '"NOFISA"."BASE_ICM_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_ICMS_S: TIBBCDField
      FieldName = 'VAL_ICMS_S'
      Origin = '"NOFISA"."VAL_ICMS_S"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_FRETE: TIBBCDField
      FieldName = 'VAL_FRETE'
      Origin = '"NOFISA"."VAL_FRETE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SEGURO: TIBBCDField
      FieldName = 'VAL_SEGURO'
      Origin = '"NOFISA"."VAL_SEGURO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_OUTROS: TIBBCDField
      FieldName = 'VAL_OUTROS'
      Origin = '"NOFISA"."VAL_OUTROS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = '"NOFISA"."VAL_IPI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaVAL_SERV: TIBBCDField
      FieldName = 'VAL_SERV'
      Origin = '"NOFISA"."VAL_SERV"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaISSQN: TIBBCDField
      FieldName = 'ISSQN'
      Origin = '"NOFISA"."ISSQN"'
      Precision = 9
      Size = 2
    end
    object tblNofisaVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = '"NOFISA"."VAL_ISS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaTOT_PROD: TIBBCDField
      FieldName = 'TOT_PROD'
      Origin = '"NOFISA"."TOT_PROD"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaTOT_NOTA: TIBBCDField
      FieldName = 'TOT_NOTA'
      Origin = '"NOFISA"."TOT_NOTA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"NOFISA"."PIS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaCOFINS: TIBBCDField
      FieldName = 'COFINS'
      Origin = '"NOFISA"."COFINS"'
      Precision = 18
      Size = 2
    end
    object tblNofisaCOD_TRANS: TIBStringField
      FieldName = 'COD_TRANS'
      Origin = '"NOFISA"."COD_TRANS"'
      FixedChar = True
      Size = 3
    end
    object tblNofisaFRETE_TIPO: TIBStringField
      FieldName = 'FRETE_TIPO'
      Origin = '"NOFISA"."FRETE_TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblNofisaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"NOFISA"."PLACA"'
      FixedChar = True
      Size = 7
    end
    object tblNofisaDADOS_AD01: TIBStringField
      FieldName = 'DADOS_AD01'
      Origin = '"NOFISA"."DADOS_AD01"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD02: TIBStringField
      FieldName = 'DADOS_AD02'
      Origin = '"NOFISA"."DADOS_AD02"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD03: TIBStringField
      FieldName = 'DADOS_AD03'
      Origin = '"NOFISA"."DADOS_AD03"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaDADOS_AD04: TIBStringField
      FieldName = 'DADOS_AD04'
      Origin = '"NOFISA"."DADOS_AD04"'
      FixedChar = True
      Size = 30
    end
    object tblNofisaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"NOFISA"."OBS"'
      FixedChar = True
      Size = 50
    end
    object tblNofisaQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Origin = '"NOFISA"."QTDE_PROD"'
    end
    object tblNofisaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOFISA"."STATUS"'
    end
  end
  object tblNofisaFaturas1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 72
    Data = {
      B90000009619E0BD010000001800000006000000000003000000B9001149445F
      4E4F464953415F4641545552415304000100000000000949445F4E4F46495341
      0400010000000000064641545552410100490000000100055749445448020002
      000A000A56454E43494D454E544F04000600000000000556414C4F520B000500
      0000020008444543494D414C5302000200020005574944544802000200120013
      49445F464F524D41535F504147414D454E544F04000100000000000000}
    object tblNofisaFaturas1ID_NOFISA_FATURAS: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblNofisaFaturas1ID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
    end
    object tblNofisaFaturas1FATURA: TIBStringField
      FieldName = 'FATURA'
      Origin = '"NOFISA_FATURAS"."FATURA"'
      Size = 10
    end
    object tblNofisaFaturas1VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"NOFISA_FATURAS"."VENCIMENTO"'
    end
    object tblNofisaFaturas1VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NOFISA_FATURAS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblNofisaFaturas1ID_FORMAS_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
    end
  end
  object tblSada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 112
    object tblSadaID_SADA: TIntegerField
      FieldName = 'ID_SADA'
      Origin = '"SADA"."ID_SADA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblSadaID_NOFISA: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"SADA"."ID_NOFISA"'
    end
    object tblSadaID_CONCESSIONARIA: TIntegerField
      FieldName = 'ID_CONCESSIONARIA'
      Origin = '"SADA"."ID_CONCESSIONARIA"'
    end
    object tblSadaNF: TIBStringField
      FieldName = 'NF'
      Origin = '"SADA"."NF"'
      Size = 8
    end
    object tblSadaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"SADA"."CODIGO"'
      Size = 17
    end
    object tblSadaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SADA"."DESCRICAO"'
      Size = 80
    end
    object tblSadaQTDE: TSmallintField
      FieldName = 'QTDE'
      Origin = '"SADA"."QTDE"'
    end
    object tblSadaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"SADA"."UNIDADE"'
      Size = 3
    end
    object tblSadaCST: TIBStringField
      FieldName = 'CST'
      Origin = '"SADA"."CST"'
      Size = 3
    end
    object tblSadaSUBST: TIBStringField
      FieldName = 'SUBST'
      Origin = '"SADA"."SUBST"'
      Size = 1
    end
    object tblSadaALIQ_ICMS: TIBBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = '"SADA"."ALIQ_ICMS"'
      Precision = 9
      Size = 2
    end
    object tblSadaICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"SADA"."ICMS"'
      Precision = 18
      Size = 2
    end
    object tblSadaCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"SADA"."CUSTO"'
      Precision = 18
      Size = 2
    end
    object tblSadaPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SADA"."PRECO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object tblSadaCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"SADA"."CFOP"'
      Size = 4
    end
    object tblSadaNAT_OP: TIBStringField
      FieldName = 'NAT_OP'
      Origin = '"SADA"."NAT_OP"'
      Size = 40
    end
    object tblSadaST_COFINS: TIBStringField
      FieldName = 'ST_COFINS'
      Origin = '"SADA"."ST_COFINS"'
      Size = 1
    end
    object tblSadaANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"SADA"."ANO_MODELO"'
      Size = 4
    end
    object tblSadaANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = '"SADA"."ANO_FABRICACAO"'
      Size = 4
    end
    object tblSadaRENAVAM: TIBStringField
      FieldName = 'RENAVAM'
      Origin = '"SADA"."RENAVAM"'
      Size = 15
    end
    object tblSadaPOTENCIA: TIBStringField
      FieldName = 'POTENCIA'
      Origin = '"SADA"."POTENCIA"'
      Size = 3
    end
    object tblSadaCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"SADA"."COR"'
      Size = 80
    end
    object tblSadaCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"SADA"."COMBUSTIVEL"'
    end
    object tblSadaPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"SADA"."PLACA"'
      Size = 80
    end
    object tblSadaMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"SADA"."MOTOR"'
      Size = 15
    end
    object tblSadaCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"SADA"."CHASSI"'
    end
    object tblSadaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"SADA"."MARCA"'
      Size = 10
    end
    object tblSadaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SADA"."MODELO"'
    end
    object tblSadaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"SADA"."STATUS"'
    end
  end
  object tblPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 112
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
  object tblRelNofisaFaturas2: TfrxDBDataset
    UserName = 'tblRelNofisaFaturas2'
    CloseDataSource = False
    DataSource = DataSourceNofisaFaturas2
    Left = 208
  end
  object DataSourceNofisaFaturas2: TDataSource
    AutoEdit = False
    DataSet = tblNofisaFaturas2
    Left = 208
    Top = 40
  end
  object tblNofisaFaturas2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 72
    object IntegerField1: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'FATURA'
      Origin = '"NOFISA_FATURAS"."FATURA"'
      Size = 10
    end
    object DateField1: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"NOFISA_FATURAS"."VENCIMENTO"'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NOFISA_FATURAS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
    end
  end
  object tblRelNofisaFaturas3: TfrxDBDataset
    UserName = 'tblRelNofisaFaturas3'
    CloseDataSource = False
    DataSource = DataSourceNofisaFaturas3
    Left = 240
  end
  object DataSourceNofisaFaturas3: TDataSource
    AutoEdit = False
    DataSet = tblNofisaFaturas3
    Left = 240
    Top = 40
  end
  object tblNofisaFaturas3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 72
    object IntegerField4: TIntegerField
      FieldName = 'ID_NOFISA_FATURAS'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA_FATURAS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_NOFISA'
      Origin = '"NOFISA_FATURAS"."ID_NOFISA"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'FATURA'
      Origin = '"NOFISA_FATURAS"."FATURA"'
      Size = 10
    end
    object DateField2: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"NOFISA_FATURAS"."VENCIMENTO"'
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NOFISA_FATURAS"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_FORMAS_PAGAMENTO'
      Origin = '"NOFISA_FATURAS"."ID_FORMAS_PAGAMENTO"'
    end
  end
end
