object BoxNFeEmissao: TBoxNFeEmissao
  Left = 15
  Top = 145
  Caption = 'NFe - Emissao'
  ClientHeight = 403
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 377
    Height = 19
    Panels = <>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 128
    Align = alTop
    TabOrder = 1
    object btnImprimir: TButton
      Left = 192
      Top = 36
      Width = 177
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object btnConsultar: TButton
      Left = 8
      Top = 66
      Width = 177
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
    end
    object btnValidarXML: TButton
      Left = 193
      Top = 6
      Width = 177
      Height = 25
      Caption = 'Validar XML'
      TabOrder = 1
    end
    object btnStatusServ: TButton
      Left = 9
      Top = 6
      Width = 177
      Height = 25
      Caption = 'Status Servi'#231'o'
      TabOrder = 0
    end
    object btnCancNF: TButton
      Left = 9
      Top = 96
      Width = 177
      Height = 25
      Caption = 'Cancelamento NF'
      TabOrder = 6
      OnClick = btnCancNFClick
    end
    object btnCriarEnviar: TButton
      Left = 8
      Top = 36
      Width = 177
      Height = 25
      Caption = 'Criar e Enviar'
      TabOrder = 2
    end
    object btnInutilizar: TButton
      Left = 192
      Top = 66
      Width = 177
      Height = 25
      Caption = 'Inutilizar NFe'
      TabOrder = 5
      OnClick = btnInutilizarClick
    end
    object btnGerarXMLNFe: TButton
      Left = 193
      Top = 95
      Width = 177
      Height = 25
      Caption = 'Gerar XML NFe'
      TabOrder = 7
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 128
    Width = 377
    Height = 256
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 2
    object TabSheet5: TTabSheet
      Caption = 'Respostas'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 369
        Height = 228
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'XML Resposta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 369
        Height = 228
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 362
        ExplicitHeight = 222
        ControlData = {
          4C00000023260000911700000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 8
    Top = 160
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 40
    Top = 160
  end
end
