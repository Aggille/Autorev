object fraImage: TfraImage
  Left = 0
  Top = 0
  Width = 145
  Height = 130
  Constraints.MaxHeight = 130
  Constraints.MaxWidth = 145
  Constraints.MinHeight = 60
  Constraints.MinWidth = 115
  TabOrder = 0
  DesignSize = (
    145
    130)
  object lblCaption: TLabel
    Left = 32
    Top = 1
    Width = 46
    Height = 13
    Caption = 'lblCaption'
  end
  object imgImagem: TDBImage
    Left = 32
    Top = 14
    Width = 111
    Height = 113
    Anchors = [akLeft, akTop, akRight, akBottom]
    Stretch = True
    TabOrder = 0
  end
  object btnDelete: TBitBtn
    Left = 2
    Top = 41
    Width = 30
    Height = 30
    Hint = 'Excluir Imagem'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnDeleteClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FF00FFFF00FF
      FF00FF000085000085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF565656565656FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000850209A8040AA43D43ACFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5656566969696969
      69959595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000085
      000CB0000BAF0009AB000085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000085000085FF
      00FFFF00FF5656566D6D6D6C6C6C696969565656FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF565656565656FF00FF0000850F22C8000FB6000DB3000BAF010AAA000085FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF00008508089B07079A0000855656568383837171716F6F6F6C6C
      6C6A6A6A565656FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF5656566565656464645656563D43AC2B4DFC
      081CC6000FB7000DB3000BAF040CA73D43ACFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF3D43AC00008501019700009804059900
      0085959595A9A9A97E7E7E7171716F6F6F6C6C6C6B6B6B959595FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9595955656565E5E
      5E5D5D5D6161615656562C40D42D50FF2242F00012BC000FB7000DB3000BAF00
      0085FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000085
      0A0B9C0000980000980303982332C8FF00FF9A9A9AAAAAAA9F9F9F7474747171
      716F6F6F6C6C6C565656FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF5656566868685D5D5D5D5D5D5F5F5F8F8F8FFF00FF3D43AC2848F3
      2D50FE1730DB0011BB000FB7000DB3010CAF000085FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FF3D43AC0000850101970000980000980202982332C8FF00FFFF
      00FF959595A4A4A4AAAAAA9191917373737171716F6F6F6C6C6C565656FF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF9595955656565E5E5E5D5D5D5D5D5D5F5F
      5F8F8F8FFF00FFFF00FFFF00FF4956C93353FB3D5CFB0B20C80011BB000FB700
      0EB4010BAD000085FF00FFFF00FFFF00FFFF00FF0000850B0C9B000098000098
      0000980202992332C8FF00FFFF00FFFF00FFFF00FFA5A5A5ABABABB1B1B18181
      817373737171717070706B6B6B565656FF00FFFF00FFFF00FFFF00FF56565669
      69695D5D5D5D5D5D5D5D5D5F5F5F8F8F8FFF00FFFF00FFFF00FFFF00FFFF00FF
      3140CC4C68FE4059EE0115C00012BB0010B8000EB4030DAB000085FF00FF3D43
      AC00008501039C00009A0000980000980101972332C8FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF999999B8B8B8ADADAD7777777474747272727070706C6C6C
      565656FF00FF9595955656566060605E5E5E5D5D5D5D5D5D5E5E5E8F8F8FFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3747D2627AFD2B41DA0014BF00
      12BC0010B8000EB40A12AA0000850E13A60006A50004A100029D00009A010197
      2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EC2C2
      C29C9C9C76767674747472727270707071717156565671717165656562626260
      60605E5E5E5E5E5E8F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF3B48CC6C80F70F25CA0014C00012BC0010B8000EB4010CAE000A
      AD0008A90006A50004A101039D2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF9D9D9DC3C3C3868686777777747474727272
      7070706C6C6C6B6B6B6868686565656262626060608F8F8FFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3843C25063E501
      17C40014C00012BC0010B8000EB5000CB1000AAD0008A90107A42332C8FF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF999999B1B1B17A7A7A7777777474747272727070706D6D6D6B6B6B68686867
      67678F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF3842BD0B21C90016C40014C00012BC0010B8000E
      B5000CB1010BAC2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898828282797979777777
      7474747272727070706D6D6D6B6B6B8F8F8FFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF404ABD00
      18C90018C80016C40014C00012BD0010B9000EB5191EABFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF9D9D9D7B7B7B7B7B7B7979797777777575757272727070707B7B7BFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF2332C8011CCE001BD0001ACC0018C80016C40014C00012
      BD0010B9010DB02332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F8F7F7F7F7F7F7F7D7D7D7B7B7B
      7979797777777575757272726D6D6D8F8F8FFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2332C8011ED1001FD800
      1ED4001CD0001ACC0018C80016C50014C10012BD0010B9030FB02332C8FF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F
      8F8181818383838282828080807D7D7D7B7B7B79797977777775757572727270
      70708F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF2332C8021FD30024E00022DC0020D8001ED4001CD01D37DD293ED70E28
      D50015C20013BD0011BA0711AF2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF8F8F8F828282898989868686848484828282808080
      9595959999998A8A8A7878787575757373737171718F8F8FFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF2332C80421D50028E70026E40024E000
      22DC0323DA314EED4B5EE62332C82332C81733DF0218C50013BE0011BA0A14AF
      2332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F8F8484848C8C
      8C8A8A8A898989868686878787A6A6A6AFAFAF8F8F8F8F8F8F9393937B7B7B75
      75757373737474748F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2332C8
      0927D5002CEF002AEC0028E80026E40E31E64360F84A5EE62332C8FF00FFFF00
      FF2332C81A34DD0820CC0013BE0011BA0812AF2332C8FF00FFFF00FFFF00FFFF
      00FFFF00FF8F8F8F8989899090908E8E8E8C8C8C8A8A8A929292B2B2B2AFAFAF
      8F8F8FFF00FFFF00FF8F8F8F9393938282827575757373737272728F8F8FFF00
      FFFF00FFFF00FFFF00FF2332C8112BD2002FF7002EF4002CF0002AEC1E42F24C
      69FD4B5EE72332C8FF00FFFF00FFFF00FFFF00FF2235D22332C81730D70013BE
      0011BA030FB02332C8FF00FFFF00FFFF00FF8F8F8F8B8B8B9393939292929191
      918E8E8E9F9F9FB8B8B8AFAFAF8F8F8FFF00FFFF00FFFF00FFFF00FF9292928F
      8F8F9090907575757373737070708F8F8FFF00FFFF00FFFF00FF2332C80127E3
      0030F8002FF70532F52F52FA4F6BFE4B5FE72332C8FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF2332C82B40D9091CC40011BA020FB22332C8FF00FFFF
      00FF8F8F8F8A8A8A949494939393959595ABABABB9B9B9B0B0B08F8F8FFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F8F9B9B9B7E7E7E7373737070
      708F8F8FFF00FFFF00FFFF00FF2332C8002BEE103CF93B5CFE4F6CFE4B61E823
      32C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2235D2
      2332C82235CE0012BB010FB32332C8FF00FFFF00FF8F8F8F8F8F8F9D9D9DB1B1
      B1BABABAB1B1B18F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF9292928F8F8F9292927474747070708F8F8FFF00FFFF00FFFF00FF
      2332C83046E04965FB4A5FE82332C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2332C83240CB0D1FC1010DAF23
      32C8FF00FFFF00FF8F8F8F9F9F9FB5B5B5B0B0B08F8F8FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F8F9999
      997F7F7F6D6D6D8F8F8FFF00FFFF00FFFF00FF2332C82332C82332C8FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF2332C82332C82332C8FF00FFFF00FFFF00FFFF00FF8F8F8F8F8F
      8F8F8F8FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF8F8F8F8F8F8F8F8F8FFF00FF}
    NumGlyphs = 2
  end
  object btnInsert: TBitBtn
    Left = 2
    Top = 13
    Width = 30
    Height = 28
    Hint = 'Inserir Imagem'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnInsertClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A46947316947316947316947316947316947316947
      3169473169473169473169473169473169473169473169473169473169473169
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2808080808080808080808080
      8080808080808080808080808080808080808080808080808080808080808080
      80808080808080808080FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4EDE5E0B7
      A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293
      B7A293B7A293B7A293B7A293B7A293694731FF00FFFF00FFFF00FFFF00FFFF00
      FFD2D2D2F1F1F1C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8808080FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A4EFE8E3EDE5E0ECE2DEEBE0DBE9DDD7E7DAD4E5D7
      D1E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFDBC9BFDBC9BFB7A29369
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2F2F2F2F1F1F1EFEFEFEEEEEE
      ECECECEBEBEBE8E8E8E8E8E8E6E6E6E5E5E5E4E4E4E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1C8C8C8808080FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F2ECE8F0
      E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DECEC5
      DCCBC2DBC9BFDBC9BFDBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00
      FFD2D2D2F5F5F5F3F3F3F1F1F1F0F0F0EFEFEFEDEDEDEBEBEBEAEAEAE8E8E8E6
      E6E6E5E5E5E4E4E4E1E1E1E1E1E1E1E1E1E1E1E1C8C8C8808080FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A4F4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADE
      D9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFB7A29369
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2F6F6F6F5F5F5F3F3F3F1F1F1
      F0F0F0EFEFEFEDEDEDEBEBEBEAEAEAE8E8E8E6E6E6E5E5E5E4E4E4E1E1E1E1E1
      E1E1E1E1C8C8C8808080FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F6F1EFF4
      EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CF9B3506
      E0D1C8DECEC5DCCBC2DBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00
      FFD2D2D2F8F8F8F6F6F6F5F5F5F3F3F3F1F1F1F0F0F0EFEFEFEDEDEDEBEBEBEA
      EAEAE8E8E8707070E5E5E5E4E4E4E1E1E1E1E1E1C8C8C8808080FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A4F8F4F2F6F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4
      DFEBE1DCEADED9E8DBD69C3809B45E2F9D3B0DE0D1C8DECEC5DCCBC2B7A29369
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2F9F9F9F8F8F8F6F6F6F5F5F5
      F3F3F3F1F1F1F0F0F0EFEFEFEDEDEDEBEBEB737373959595767676E5E5E5E4E4
      E4E1E1E1C8C8C8808080FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FAF6F6F8
      F4F2F6F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DC9C380AE3A481CA7E55
      B45E2F9D3B0DE0D1C8DECEC5B7A293694731FF00FFFF00FFFF00FFFF00FFFF00
      FFD2D2D2FBFBFBF9F9F9F8F8F8F6F6F6F5F5F5F3F3F3F1F1F1F0F0F0EFEFEF73
      7373C9C9C9AEAEAE959595767676E5E5E5E4E4E4C8C8C8808080FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A4FCF9F9FAF6F6F8F4F2F6F1EFF4EEECF2ECE8F0E9
      E5EEE6E29D390CE3A481CA7E55C37348C37348B45D2E9F3F12E0D1C8B7A29369
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2FCFCFCFBFBFBF9F9F9F8F8F8
      F6F6F6F5F5F5F3F3F3F1F1F1747474C9C9C9AEAEAEA6A6A6A6A6A69494947A7A
      7AE5E5E5C8C8C8808080FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FDFCFCFC
      F9F9FAF6F6F8F4F2F6F1EFF4EEECF2ECE89B3506E4A582E4A582E4A582C37348
      C37348C37348B45D2E9F3E12B7A293694731FF00FFFF00FFFF00FFFF00FFFF00
      FFD2D2D2FEFEFEFCFCFCFBFBFBF9F9F9F8F8F8F6F6F6F5F5F5707070C9C9C9C9
      C9C9C9C9C9A6A6A6A6A6A6A6A6A6949494797979C8C8C8808080FF00FFFF00FF
      FF00FFFF00FFFF00FFC8B3A4FFFFFFFDFCFCFCF9F9FAF6F6F9F5F4F7F2F19B35
      069B35069A34049A3404E4A582C37348B35C2DA040149A34049A3404B7A29369
      4731FF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2FFFFFFFEFEFEFCFCFCFBFBFB
      FAFAFAF8F8F87070707070706F6F6F6F6F6FC9C9C9A6A6A69393937B7B7B6F6F
      6F6F6F6FC8C8C8808080C8B3A469473169473169473169473169473169473169
      4731694731694731694731694731694731694731D4AB99A04013D69069B45E2F
      9D3A0DD7B5A6E9DDD7E7DAD4B7A293694731D2D2D28080808080808080808080
      80808080808080808080808080808080808080808080808080808080CFCFCF7B
      7B7BBCBCBC959595757575D5D5D5ECECECEBEBEBC8C8C8808080C8B3A4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF694731B66B48A24114D69069A03E11B7704FECE2DEEBE0DBE9DDD7B7A29369
      4731D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF808080A1A1A17C7C7CBCBCBC797979A5A5A5EFEFEFEEEE
      EEECECECC8C8C8808080C8B3A4FFFFFF13912C0F86230B7A1A076F1103640900
      57000361080A771806680C1D6103FFFFFFBF7C5DA24215D69069B45D2EA4471C
      E5CFC4EDE5E0ECE2DEEBE0DBB7A293694731D2D2D2FFFFFF9E9E9E9696968D8D
      8D8585857B7B7B7070707979798B8B8B7F7F7F7B7B7BFFFFFFAEAEAE7D7D7DBC
      BCBC949494828282E4E4E4F1F1F1EFEFEFEEEEEEC8C8C8808080C8B3A4FFFFFF
      18993314922D0F87240B7C1B05690E055B0418741A0C7618186408787609A84D
      23A54518D69069B45E2F9E3C0ED7B09EF1EAE7EFE8E3EDE5E0ECE2DEB7A29369
      4731D2D2D2FFFFFFA4A4A49F9F9F9797978F8F8F8080807575758B8B8B8A8A8A
      7E7E7E939393888888808080BCBCBC959595777777D2D2D2F4F4F4F2F2F2F1F1
      F1EFEFEFC8C8C8808080C8B3A4FFFFFF269332189A3414932D0E832004620845
      701775892BDC8020B3633E993202983000A03D109F3F12B05F3AD9B5A3F5F0ED
      F3EDEAF1EAE7EFE8E3EDE5E0B7A293694731D2D2D2FFFFFFA2A2A2A4A4A49F9F
      9F9494947A7A7A8D8D8DA4A4A4A8A8A89B9B9B6C6C6C6A6A6A7878787A7A7A98
      9898D5D5D5F7F7F7F5F5F5F4F4F4F2F2F2F1F1F1C8C8C8808080C8B3A4FFFFFF
      86A157318C3020933112771B14620BCD9F46E2A444D17623A94F26923B11B45E
      2FC28264DAB4A2EEDCD4F9F5F4F7F2F1F5F0EDD5BFB1CAB5A6B7A293B7A29369
      4731D2D2D2FFFFFFB9B9B99F9F9FA1A1A18C8C8C7D7D7DBCBCBCBFBFBFA2A2A2
      8A8A8A757575959595B3B3B3D4D4D4ECECECFAFAFAF8F8F8F7F7F7DADADAD4D4
      D4C8C8C8C8C8C8808080C8B3A4FFFFFFF0C08BCDB3786794453575219B9346F5
      B262F0AE5BE2A759E3A44EF0A239FFFFFF694731FEFDFEFDFBFBFBF8F7FAF6F6
      C8B3A4694731694731694731694731694731D2D2D2FFFFFFD7D7D7CCCCCCADAD
      AD919191B1B1B1CBCBCBC8C8C8C3C3C3C0C0C0BDBDBDFFFFFF808080FEFEFEFD
      FDFDFBFBFBFBFBFBD2D2D2808080808080808080808080808080C8B3A4FFFFFF
      F7C28FF6C18ED5B57CDCB479F1B979ECB5749FA89C519AD05295CD9E9C87FFFF
      FF694731FFFFFFFFFFFFFDFCFCFCF9F9C8B3A4F3EBE6EFE6E0E8DCD4DBC9BF69
      4731D2D2D2FFFFFFD9D9D9D8D8D8CECECECDCDCDD2D2D2CFCFCFC9C9C9C6C6C6
      C3C3C3C1C1C1FFFFFF808080FFFFFFFFFFFFFEFEFEFCFCFCD2D2D2F4F4F4F1F1
      F1ECECECE1E1E1808080C8B3A4FFFFFFF7C28FF7C28FF7C18EF7C08DF7BF87D4
      B78E43ADDC1DA7F62396F64E94D1FFFFFF694731FFFFFFFFFFFFFFFFFFFDFCFC
      C8B3A4EFE6E0E8DCD4DBC9BF694731FF00FFD2D2D2FFFFFFD9D9D9D9D9D9D8D8
      D8D7D7D7D6D6D6D2D2D2CFCFCFCDCDCDC7C7C7C3C3C3FFFFFF808080FFFFFFFF
      FFFFFFFFFFFEFEFED2D2D2F1F1F1ECECECE1E1E1808080FF00FFC8B3A4FFFFFF
      F7C28FF7C28FF7C28FF7C18EF7C18DCEBB9B36BAE515BDF61CA9F6449BDAFFFF
      FF694731FFFFFFFFFFFFFFFFFFFFFFFFC8B3A4E8DCD4DBC9BF694731FF00FFFF
      00FFD2D2D2FFFFFFD9D9D9D9D9D9D9D9D9D8D8D8D8D8D8D5D5D5D4D4D4D5D5D5
      CECECEC7C7C7FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFD2D2D2ECECECE1E1
      E1808080FF00FFFF00FFC8B3A4FFFFFFF7C28FF7C28FF7C28FF7C28FF7C28FE6
      BF9580BBC334BFE538B2E383A8B1FFFFFF694731FFFFFFFFFFFFFFFFFFFFFFFF
      C8B3A4DBC9BF694731FF00FFFF00FFFF00FFD2D2D2FFFFFFD9D9D9D9D9D9D9D9
      D9D9D9D9D9D9D9D7D7D7D5D5D5D6D6D6D1D1D1CBCBCBFFFFFF808080FFFFFFFF
      FFFFFFFFFFFFFFFFD2D2D2E1E1E1808080FF00FFFF00FFFF00FFC8B3A4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF694731C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4694731FF00FFFF00FFFF00FFFF
      00FFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF808080D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2808080FF00
      FFFF00FFFF00FFFF00FFC8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8
      B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4BBA595FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2D2D2D2D2D2D2D2D2D2D2D2
      D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2C9C9C9FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
  end
  object OpenPictureDialog: TOpenPictureDialog
    InitialDir = 'C:\'
    Title = 'Procurar Imagem...'
    Left = 48
    Top = 64
  end
end
