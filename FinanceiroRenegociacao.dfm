object BoxFinanceiroRenegociacao: TBoxFinanceiroRenegociacao
  Left = 15
  Top = 85
  Caption = 'Renegocia'#231#227'o de d'#237'vidas'
  ClientHeight = 27
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnEfetuar: TBitBtn
    Left = 110
    Top = 0
    Width = 110
    Height = 26
    Caption = 'Efetuar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnEfetuarClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF5EA660FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3
      E6B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF5EA6608ADA925EA660FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5EA66073D27C6A
      CF7478D4815EA660FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF50C25956C96158C9625FA9625ACA645ECB6850C259FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5EA66039C0463AC147FF
      00FF3FC14B43C34F5EA660FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF5EA6605EA6605EA6605FA96229BB362ABC395EA660FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5EA66011
      B32014B42416B52550C259FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF5EA66051C75D1FB82D5EA6605EA660FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF50C2597FD68880D6885D
      C5666CB971FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF5EA66091DB9890DB98FF00FF5EA6605EA6605EA660FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF50C259A1E1A7A0E0A65F
      A9629CDFA2A0E0A65EA660FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF90D495AFE5B497DC9DAFE5B45EA660FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF50C2595EA660B3
      E6B85EA660FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFB3E6B8FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5E
      A660FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object BtnConsulta: TBitBtn
    Left = 0
    Top = 0
    Width = 110
    Height = 26
    Caption = 'Consultar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BtnConsultaClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0008426300084263000842
      630008426300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002184C600FFFFFF0073C6DE0042A5
      C6002184C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002184C600084263000842
      630008426300FFFFFF0073C6DE0042A5C6002184C600FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0073C6DE00FFFFFF0073C6
      DE0042A5C600084263004ABDFF004ABDFF004ABDFF00FF00FF00FF00FF00FFFF
      FF00B7A29300B7A29300B7A29300B7A29300B7A2930008426300084263000842
      630008426300FFFFFF0073C6DE0042A5C6002184C60069473100FF00FF00FFFF
      FF00FFFFFF00FEFCFB00FCF9F800F8F3F1002184C600FFFFFF0073C6DE0042A5
      C6002184C6004ABDFF004ABDFF004ABDFF004ABDFF0069473100FF00FF00FFFF
      FF0030C8600030C8600030C860007BB57B00F8F8F700F3F3F200F0F0EF00EAEA
      E900E8E8E700069E0C00039B0600009800000098000069473100FF00FF00FFFF
      FF0030C8600030C8600030C86000FEFEFD00FBFBFA0000C8000000990000CDFF
      CD00ECECEB0039A54200069E0C00009800000098000069473100FF00FF00FFFF
      FF0030C8600030C860007BB57B0000A50000FEFEFD00CDFFCD0000A500000099
      0000F1F1F000E9E9E80039A54200069E0C00039B060069473100FF00FF00FFFF
      FF0030C8600030C860007BB57B0000C80000FEFEFD0000A10000CDFFCD0000C8
      0000F4F4F300ECECEB0039A5420009A11200069E0C0069473100FF00FF00FFFF
      FF0030C8600030C8600030C860007BB57B00FEFEFD00FEFEFD00FEFEFD00FCFC
      FB00FAFAF90019B1330017AF2D0010A821000DA51B0069473100FF00FF00FFFF
      FF0030C8600030C8600030C8600030C8600030C8600030C860002FC75D0028C0
      510025BD4B001CB4390019B1330014AC270010A8210069473100FF00FF00CAB4
      A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4
      A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4A600CAB4A600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
end
