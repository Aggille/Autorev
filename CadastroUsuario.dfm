object BoxUsuarios: TBoxUsuarios
  Left = 5
  Top = 85
  Caption = 'Cadastro de Usuarios'
  ClientHeight = 628
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 1089
    Height = 580
    Align = alClient
    TabOrder = 1
    TabStop = True
    object DBCheckBoxAdministrador: TDBCheckBox
      Left = 24
      Top = 108
      Width = 97
      Height = 17
      Caption = 'Administrador'
      DataField = 'ADM'
      DataSource = DataSource1
      TabOrder = 11
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 243
      Top = 124
      Width = 153
      Height = 17
      Caption = '1.Categoria - altera'#231#245'es'
      DataField = 'ACESSO1'
      DataSource = DataSource1
      TabOrder = 13
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 243
      Top = 111
      Width = 161
      Height = 17
      Caption = '2.CFOP - altera'#231#245'es'
      DataField = 'ACESSO2'
      DataSource = DataSource1
      TabOrder = 12
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 24
      Top = 155
      Width = 177
      Height = 17
      Caption = '3.Concession'#225'ria - altera'#231#245'es'
      DataField = 'ACESSO3'
      DataSource = DataSource1
      TabOrder = 18
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 24
      Top = 168
      Width = 161
      Height = 17
      Caption = '4.Pe'#231'as - altera'#231#227'o localiza'#231#227'o'
      DataField = 'ACESSO4'
      DataSource = DataSource1
      TabOrder = 21
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 24
      Top = 182
      Width = 223
      Height = 17
      Caption = '5.Pe'#231'as - altera'#231#245'es de pre'#231'os e estoque'
      DataField = 'ACESSO5'
      DataSource = DataSource1
      TabOrder = 24
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 24
      Top = 196
      Width = 161
      Height = 17
      Caption = '6.Pe'#231'as - consulta cadastro'
      DataField = 'ACESSO6'
      DataSource = DataSource1
      TabOrder = 26
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 24
      Top = 258
      Width = 161
      Height = 17
      Caption = '24.Pessoas - altera'#231#245'es'
      DataField = 'ACESSO24'
      DataSource = DataSource1
      TabOrder = 38
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox8: TDBCheckBox
      Left = 243
      Top = 97
      Width = 161
      Height = 17
      Caption = '8.TMO - altera'#231#245'es'
      DataField = 'ACESSO8'
      DataSource = DataSource1
      TabOrder = 9
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox9: TDBCheckBox
      Left = 24
      Top = 328
      Width = 177
      Height = 17
      Caption = '9.Compras ve'#237'culos - efetiva'#231#227'o'
      DataField = 'ACESSO9'
      DataSource = DataSource1
      TabOrder = 54
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox10: TDBCheckBox
      Left = 24
      Top = 356
      Width = 177
      Height = 17
      Caption = '11.Vendas Ve'#237'culos - efetiva'#231#227'o'
      DataField = 'ACESSO11'
      DataSource = DataSource1
      TabOrder = 61
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox11: TDBCheckBox
      Left = 243
      Top = 30
      Width = 161
      Height = 17
      Caption = '15.P'#243's-venda - altera'#231#245'es'
      DataField = 'ACESSO15'
      DataSource = DataSource1
      TabOrder = 3
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox12: TDBCheckBox
      Left = 243
      Top = 44
      Width = 174
      Height = 17
      Caption = '16.P'#243's-venda - inclus'#227'o pe'#231'as'
      DataField = 'ACESSO16'
      DataSource = DataSource1
      TabOrder = 5
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox13: TDBCheckBox
      Left = 243
      Top = 59
      Width = 174
      Height = 17
      Caption = '17.P'#243's-venda - inclus'#227'o servi'#231'os'
      DataField = 'ACESSO17'
      DataSource = DataSource1
      TabOrder = 7
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox14: TDBCheckBox
      Left = 243
      Top = 74
      Width = 161
      Height = 17
      Caption = '18.P'#243's-Venda encer.direto'
      DataField = 'ACESSO18'
      DataSource = DataSource1
      TabOrder = 8
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox15: TDBCheckBox
      Left = 243
      Top = 146
      Width = 97
      Height = 17
      Caption = '19.Caixa'
      DataField = 'ACESSO19'
      DataSource = DataSource1
      TabOrder = 17
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox16: TDBCheckBox
      Left = 243
      Top = 174
      Width = 254
      Height = 17
      Caption = '20.Caixa - autorizar descontos al'#233'm do padr'#227'o'
      DataField = 'ACESSO20'
      DataSource = DataSource1
      TabOrder = 22
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox17: TDBCheckBox
      Left = 243
      Top = 207
      Width = 97
      Height = 17
      Caption = '21.Bancos'
      DataField = 'ACESSO21'
      DataSource = DataSource1
      TabOrder = 27
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox18: TDBCheckBox
      Left = 243
      Top = 220
      Width = 174
      Height = 17
      Caption = '22.Bancos - autorizar descontos'
      DataField = 'ACESSO22'
      DataSource = DataSource1
      TabOrder = 31
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox19: TDBCheckBox
      Left = 243
      Top = 267
      Width = 182
      Height = 17
      Caption = '26.Contas '#224' receber - altera'#231#245'es'
      DataField = 'ACESSO26'
      DataSource = DataSource1
      TabOrder = 40
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox20: TDBCheckBox
      Left = 243
      Top = 347
      Width = 174
      Height = 17
      Caption = '28.Contas '#224' pagar - altera'#231#245'es'
      DataField = 'ACESSO28'
      DataSource = DataSource1
      TabOrder = 59
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox21: TDBCheckBox
      Left = 24
      Top = 370
      Width = 177
      Height = 17
      Caption = '12.Vendas Pe'#231'as - efetiva'#231#227'o'
      DataField = 'ACESSO12'
      DataSource = DataSource1
      TabOrder = 64
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox22: TDBCheckBox
      Left = 24
      Top = 383
      Width = 132
      Height = 17
      Caption = '13.Consulta ve'#237'culos'
      DataField = 'ACESSO13'
      DataSource = DataSource1
      TabOrder = 67
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox23: TDBCheckBox
      Left = 24
      Top = 342
      Width = 177
      Height = 17
      Caption = '10.Compras pe'#231'as - efetiva'#231#227'o'
      DataField = 'ACESSO10'
      DataSource = DataSource1
      TabOrder = 58
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox24: TDBCheckBox
      Left = 24
      Top = 270
      Width = 193
      Height = 17
      Caption = '25.Pessoas - autorizar descontos'
      DataField = 'ACESSO25'
      DataSource = DataSource1
      TabOrder = 41
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox25: TDBCheckBox
      Left = 243
      Top = 333
      Width = 174
      Height = 17
      Caption = '27.Contas '#224' pagar - consultas'
      DataField = 'ACESSO27'
      DataSource = DataSource1
      TabOrder = 55
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox26: TDBCheckBox
      Left = 24
      Top = 244
      Width = 161
      Height = 17
      Caption = '7.Pessoas - consulta cadastro'
      DataField = 'ACESSO7'
      DataSource = DataSource1
      TabOrder = 35
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox27: TDBCheckBox
      Left = 243
      Top = 16
      Width = 161
      Height = 17
      Caption = '14.P'#243's-venda - consultas'
      DataField = 'ACESSO14'
      DataSource = DataSource1
      TabOrder = 2
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox28: TDBCheckBox
      Left = 243
      Top = 253
      Width = 174
      Height = 17
      Caption = '23.Contas '#224' receber - consultas'
      DataField = 'ACESSO23'
      DataSource = DataSource1
      TabOrder = 36
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox29: TDBCheckBox
      Left = 243
      Top = 403
      Width = 174
      Height = 17
      Caption = '29.Par'#226'metros'
      DataField = 'ACESSO29'
      DataSource = DataSource1
      TabOrder = 73
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox30: TDBCheckBox
      Left = 243
      Top = 417
      Width = 174
      Height = 17
      Caption = '30.Faturamento'
      DataField = 'ACESSO30'
      DataSource = DataSource1
      TabOrder = 75
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox31: TDBCheckBox
      Left = 243
      Top = 281
      Width = 182
      Height = 17
      Caption = '31.Contas '#224' receber - incluir'
      DataField = 'ACESSO31'
      DataSource = DataSource1
      TabOrder = 44
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox32: TDBCheckBox
      Left = 243
      Top = 295
      Width = 182
      Height = 17
      Caption = '32.Contas '#224' receber - excluir'
      DataField = 'ACESSO32'
      DataSource = DataSource1
      TabOrder = 47
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox33: TDBCheckBox
      Left = 243
      Top = 359
      Width = 182
      Height = 17
      Caption = '33.Contas '#224' pagar - incluir'
      DataField = 'ACESSO33'
      DataSource = DataSource1
      TabOrder = 62
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox34: TDBCheckBox
      Left = 243
      Top = 373
      Width = 182
      Height = 17
      Caption = '34.Contas '#224' pagar - excluir'
      DataField = 'ACESSO34'
      DataSource = DataSource1
      TabOrder = 66
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox35: TDBCheckBox
      Left = 243
      Top = 498
      Width = 182
      Height = 17
      Caption = '35.D'#233'bitos do cliente'
      DataField = 'ACESSO35'
      DataSource = DataSource1
      TabOrder = 93
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox36: TDBCheckBox
      Left = 243
      Top = 513
      Width = 182
      Height = 17
      Caption = '36.Pagamentos do cliente'
      DataField = 'ACESSO36'
      DataSource = DataSource1
      TabOrder = 98
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox37: TDBCheckBox
      Left = 491
      Top = 36
      Width = 182
      Height = 17
      Caption = '37.Importa'#231#227'o de arquivos'
      DataField = 'ACESSO37'
      DataSource = DataSource1
      TabOrder = 4
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox38: TDBCheckBox
      Left = 491
      Top = 50
      Width = 182
      Height = 17
      Caption = '38.Exporta'#231#227'o de arquivos'
      DataField = 'ACESSO38'
      DataSource = DataSource1
      TabOrder = 6
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox39: TDBCheckBox
      Left = 243
      Top = 309
      Width = 221
      Height = 17
      Caption = '39.Contas '#224' receber - altera'#231#245'es b'#225'sicas'
      DataField = 'ACESSO39'
      DataSource = DataSource1
      TabOrder = 48
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox40: TDBCheckBox
      Left = 491
      Top = 105
      Width = 182
      Height = 17
      Caption = '40.Fechamento de pedido'
      DataField = 'ACESSO40'
      DataSource = DataSource1
      TabOrder = 10
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox41: TDBCheckBox
      Left = 491
      Top = 128
      Width = 182
      Height = 17
      Caption = '41.Pe'#231'as f'#225'brica'
      DataField = 'ACESSO41'
      DataSource = DataSource1
      TabOrder = 15
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox42: TDBCheckBox
      Left = 24
      Top = 395
      Width = 182
      Height = 17
      Caption = '42.Ve'#237'culos Opera'#231#245'es'
      DataField = 'ACESSO42'
      DataSource = DataSource1
      TabOrder = 70
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox43: TDBCheckBox
      Left = 24
      Top = 209
      Width = 161
      Height = 17
      Caption = '43.Pe'#231'as - cadastro novo'
      DataField = 'ACESSO43'
      DataSource = DataSource1
      TabOrder = 28
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox44: TDBCheckBox
      Left = 491
      Top = 160
      Width = 161
      Height = 17
      Caption = '44.Tabela modelos ve'#237'culos'
      DataField = 'ACESSO44'
      DataSource = DataSource1
      TabOrder = 20
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox45: TDBCheckBox
      Left = 491
      Top = 219
      Width = 161
      Height = 17
      Caption = '45.NF de desconto de financeiras'
      DataField = 'ACESSO45'
      DataSource = DataSource1
      TabOrder = 30
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox46: TDBCheckBox
      Left = 491
      Top = 176
      Width = 161
      Height = 17
      Caption = '46.Financiamentos loja'
      DataField = 'ACESSO46'
      DataSource = DataSource1
      TabOrder = 23
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox47: TDBCheckBox
      Left = 491
      Top = 265
      Width = 161
      Height = 17
      Caption = '47.Renegocia'#231#227'o consulta'
      DataField = 'ACESSO47'
      DataSource = DataSource1
      TabOrder = 39
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox48: TDBCheckBox
      Left = 491
      Top = 277
      Width = 161
      Height = 17
      Caption = '48.Renegocia'#231#227'o efetiva'#231#227'o'
      DataField = 'ACESSO48'
      DataSource = DataSource1
      TabOrder = 42
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox49: TDBCheckBox
      Left = 491
      Top = 311
      Width = 161
      Height = 17
      Caption = '49.Emiss'#227'o de NFe'
      DataField = 'ACESSO49'
      DataSource = DataSource1
      TabOrder = 51
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox50: TDBCheckBox
      Left = 491
      Top = 325
      Width = 161
      Height = 17
      Caption = '50.Configura'#231#227'o de NFe'
      DataField = 'ACESSO50'
      DataSource = DataSource1
      TabOrder = 53
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox51: TDBCheckBox
      Left = 491
      Top = 364
      Width = 161
      Height = 17
      Caption = '51.Relat'#243'rios Gerais'
      DataField = 'ACESSO51'
      DataSource = DataSource1
      TabOrder = 63
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox52: TDBCheckBox
      Left = 491
      Top = 190
      Width = 161
      Height = 17
      Caption = '52.Cadastro s'#233'rie de NFs'
      DataField = 'ACESSO52'
      DataSource = DataSource1
      TabOrder = 25
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox53: TDBCheckBox
      Left = 491
      Top = 435
      Width = 198
      Height = 17
      Caption = '53.Autorizar faturamento de ve'#237'culos'
      DataField = 'ACESSO53'
      DataSource = DataSource1
      TabOrder = 80
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox54: TDBCheckBox
      Left = 491
      Top = 421
      Width = 161
      Height = 17
      Caption = '54.Relat'#243'rios Gerenciais'
      DataField = 'ACESSO54'
      DataSource = DataSource1
      TabOrder = 78
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox55: TDBCheckBox
      Left = 491
      Top = 449
      Width = 206
      Height = 17
      Caption = '55.Autor.vlr de parc.de financ.menor'
      DataField = 'ACESSO55'
      DataSource = DataSource1
      TabOrder = 83
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox56: TDBCheckBox
      Left = 491
      Top = 464
      Width = 206
      Height = 17
      Caption = '56.Autorizar faturamento p'#243's-venda'
      DataField = 'ACESSO56'
      DataSource = DataSource1
      TabOrder = 86
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox57: TDBCheckBox
      Left = 243
      Top = 160
      Width = 242
      Height = 17
      Caption = '57.Caixa - autorizar receber s'#243' 90% do valor'
      DataField = 'ACESSO57'
      DataSource = DataSource1
      TabOrder = 19
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox58: TDBCheckBox
      Left = 491
      Top = 495
      Width = 206
      Height = 17
      Caption = '58.NFe Imobilizado'
      DataField = 'ACESSO58'
      DataSource = DataSource1
      TabOrder = 92
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox59: TDBCheckBox
      Left = 491
      Top = 508
      Width = 206
      Height = 17
      Caption = '59.NFe Cred/Deb Estoque'
      DataField = 'ACESSO59'
      DataSource = DataSource1
      TabOrder = 96
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox60: TDBCheckBox
      Left = 491
      Top = 338
      Width = 146
      Height = 17
      Caption = '60.NFe Complementar'
      DataField = 'ACESSO60'
      DataSource = DataSource1
      TabOrder = 56
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox61: TDBCheckBox
      Left = 24
      Top = 295
      Width = 206
      Height = 17
      Caption = '61.Cadastro pessoas-reg.SPC'
      DataField = 'ACESSO61'
      DataSource = DataSource1
      TabOrder = 46
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox62: TDBCheckBox
      Left = 24
      Top = 282
      Width = 206
      Height = 17
      Caption = '62.Cadastro novos de pessoas'
      DataField = 'ACESSO62'
      DataSource = DataSource1
      TabOrder = 45
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox63: TDBCheckBox
      Left = 24
      Top = 409
      Width = 177
      Height = 17
      Caption = '63.Vendas ve'#237'culos - edi'#231#227'o'
      DataField = 'ACESSO63'
      DataSource = DataSource1
      TabOrder = 74
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox64: TDBCheckBox
      Left = 24
      Top = 513
      Width = 177
      Height = 17
      Caption = '64.Cancelamento de NFe'
      DataField = 'ACESSO64'
      DataSource = DataSource1
      TabOrder = 97
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox65: TDBCheckBox
      Left = 24
      Top = 435
      Width = 177
      Height = 17
      Caption = '65.Alterar valor ve'#237'culos usados'
      DataField = 'ACESSO65'
      DataSource = DataSource1
      TabOrder = 79
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox66: TDBCheckBox
      Left = 24
      Top = 141
      Width = 177
      Height = 17
      Caption = '66.Alterar c'#243'digo de pe'#231'a'
      DataField = 'ACESSO66'
      DataSource = DataSource1
      TabOrder = 16
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox67: TDBCheckBox
      Left = 24
      Top = 421
      Width = 177
      Height = 17
      Caption = '67.Devolucao de ve'#237'culos'
      DataField = 'ACESSO67'
      DataSource = DataSource1
      TabOrder = 77
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox68: TDBCheckBox
      Left = 24
      Top = 458
      Width = 177
      Height = 17
      Caption = '68.Trocar ID de pe'#231'as'
      DataField = 'ACESSO68'
      DataSource = DataSource1
      TabOrder = 85
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox69: TDBCheckBox
      Left = 24
      Top = 473
      Width = 177
      Height = 17
      Caption = '69.Relat'#243'rios de comiss'#245'es'
      DataField = 'ACESSO69'
      DataSource = DataSource1
      TabOrder = 89
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox70: TDBCheckBox
      Left = 24
      Top = 486
      Width = 177
      Height = 17
      Caption = '70.Cadastro de taxas'
      DataField = 'ACESSO69'
      DataSource = DataSource1
      TabOrder = 90
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox71: TDBCheckBox
      Left = 24
      Top = 499
      Width = 177
      Height = 17
      Caption = '71.Pagamento de taxas'
      DataField = 'ACESSO71'
      DataSource = DataSource1
      TabOrder = 94
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox72: TDBCheckBox
      Left = 243
      Top = 440
      Width = 177
      Height = 17
      Caption = '72.Cadastro de plano de contas'
      DataField = 'ACESSO72'
      DataSource = DataSource1
      TabOrder = 81
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox73: TDBCheckBox
      Left = 243
      Top = 454
      Width = 177
      Height = 17
      Caption = '73.Devolu'#231#227'o de pe'#231'as'
      DataField = 'ACESSO73'
      DataSource = DataSource1
      TabOrder = 84
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox74: TDBCheckBox
      Left = 243
      Top = 470
      Width = 230
      Height = 17
      Caption = '74.Recebimento de pe'#231'as em transfer'#234'ncia'
      DataField = 'ACESSO74'
      DataSource = DataSource1
      TabOrder = 88
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox75: TDBCheckBox
      Left = 24
      Top = 223
      Width = 145
      Height = 17
      Caption = '75.Cancelar pedido pe'#231'as'
      DataField = 'ACESSO75'
      DataSource = DataSource1
      TabOrder = 32
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox76: TDBCheckBox
      Left = 491
      Top = 387
      Width = 230
      Height = 17
      Caption = '76.Cadastro de situa'#231#245'es'
      DataField = 'ACESSO76'
      DataSource = DataSource1
      TabOrder = 69
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox77: TDBCheckBox
      Left = 491
      Top = 400
      Width = 198
      Height = 17
      Caption = '77.Autorizar faturamento de pe'#231'as'
      DataField = 'ACESSO77'
      DataSource = DataSource1
      TabOrder = 71
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox78: TDBCheckBox
      Left = 24
      Top = 126
      Width = 182
      Height = 17
      Caption = '78.Pe'#231'as - altera'#231#227'o cadastro'
      DataField = 'ACESSO78'
      DataSource = DataSource1
      TabOrder = 14
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object Panel2: TPanel
      Left = 10
      Top = 0
      Width = 209
      Height = 102
      TabOrder = 0
      object LabelSequencia: TLabel
        Left = 10
        Top = 6
        Width = 53
        Height = 13
        Caption = 'Sequ'#234'ncia:'
      end
      object DBText1: TDBText
        Left = 78
        Top = 6
        Width = 65
        Height = 17
        DataField = 'ID_USUARIOS'
        DataSource = DataSource1
      end
      object LabelUsuario: TLabel
        Left = 10
        Top = 29
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object LabelLogin: TLabel
        Left = 10
        Top = 56
        Width = 29
        Height = 13
        Caption = 'Login:'
      end
      object LabelSenha: TLabel
        Left = 10
        Top = 82
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object DBEditUsuario: TDBEdit
        Left = 56
        Top = 26
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'USUARIO'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object EditSenha: TEdit
        Left = 58
        Top = 80
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 2
        Text = 'EDITSENHA'
        OnExit = EditSenhaExit
        OnKeyPress = DBEditSenhaKeyPress
      end
      object DBEditLogin: TDBEdit
        Left = 58
        Top = 53
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGIN'
        DataSource = DataSource1
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
    end
    object Panel3: TPanel
      Left = 923
      Top = 6
      Width = 161
      Height = 432
      TabOrder = 1
      object DBCheckBox79: TDBCheckBox
        Left = 11
        Top = 12
        Width = 140
        Height = 17
        Caption = '101.Relat'#243'rio um'
        DataField = 'ACESSO101'
        DataSource = DataSource1
        TabOrder = 0
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox80: TDBCheckBox
        Left = 11
        Top = 29
        Width = 140
        Height = 17
        Caption = '102.Relat'#243'rio dois'
        DataField = 'ACESSO102'
        DataSource = DataSource1
        TabOrder = 1
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox81: TDBCheckBox
        Left = 11
        Top = 46
        Width = 140
        Height = 17
        Caption = '103.Relat'#243'rio tr'#234's'
        DataField = 'ACESSO103'
        DataSource = DataSource1
        TabOrder = 2
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox82: TDBCheckBox
        Left = 11
        Top = 63
        Width = 140
        Height = 17
        Caption = '104.Relat'#243'rio quatro'
        DataField = 'ACESSO104'
        DataSource = DataSource1
        TabOrder = 3
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox83: TDBCheckBox
        Left = 11
        Top = 80
        Width = 140
        Height = 17
        Caption = '105.Relat'#243'rio cinco'
        DataField = 'ACESSO105'
        DataSource = DataSource1
        TabOrder = 4
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox84: TDBCheckBox
        Left = 11
        Top = 97
        Width = 140
        Height = 17
        Caption = '106.Relat'#243'rio seis'
        DataField = 'ACESSO106'
        DataSource = DataSource1
        TabOrder = 5
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox85: TDBCheckBox
        Left = 11
        Top = 114
        Width = 140
        Height = 17
        Caption = '107.Relat'#243'rio sete'
        DataField = 'ACESSO107'
        DataSource = DataSource1
        TabOrder = 6
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox86: TDBCheckBox
        Left = 11
        Top = 131
        Width = 140
        Height = 17
        Caption = '108.Relat'#243'rio oito'
        DataField = 'ACESSO108'
        DataSource = DataSource1
        TabOrder = 7
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox87: TDBCheckBox
        Left = 11
        Top = 148
        Width = 140
        Height = 17
        Caption = '109.Relat'#243'rio nove'
        DataField = 'ACESSO109'
        DataSource = DataSource1
        TabOrder = 8
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox88: TDBCheckBox
        Left = 11
        Top = 165
        Width = 140
        Height = 17
        Caption = '110.Relat'#243'rio dez'
        DataField = 'ACESSO110'
        DataSource = DataSource1
        TabOrder = 9
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox89: TDBCheckBox
        Left = 11
        Top = 182
        Width = 140
        Height = 17
        Caption = '111.Relat'#243'rio onze'
        DataField = 'ACESSO111'
        DataSource = DataSource1
        TabOrder = 10
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox90: TDBCheckBox
        Left = 11
        Top = 199
        Width = 126
        Height = 17
        Caption = '112.Relat'#243'rio doze'
        DataField = 'ACESSO112'
        DataSource = DataSource1
        TabOrder = 11
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox98: TDBCheckBox
        Left = 11
        Top = 233
        Width = 126
        Height = 17
        Caption = '114.Relat'#243'rio quatorze'
        DataField = 'ACESSO114'
        DataSource = DataSource1
        TabOrder = 13
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox104: TDBCheckBox
        Left = 11
        Top = 250
        Width = 126
        Height = 17
        Caption = '115.Relat'#243'rio quinze'
        DataField = 'ACESSO115'
        DataSource = DataSource1
        TabOrder = 14
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox105: TDBCheckBox
        Left = 11
        Top = 267
        Width = 134
        Height = 17
        Caption = '116.Relat'#243'rio dezesseis'
        DataField = 'ACESSO116'
        DataSource = DataSource1
        TabOrder = 15
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox106: TDBCheckBox
        Left = 11
        Top = 284
        Width = 134
        Height = 17
        Caption = '117.Relat'#243'rio dezessete'
        DataField = 'ACESSO117'
        DataSource = DataSource1
        TabOrder = 16
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox107: TDBCheckBox
        Left = 11
        Top = 301
        Width = 126
        Height = 17
        Caption = '118.Relat'#243'rio dezoito'
        DataField = 'ACESSO118'
        DataSource = DataSource1
        TabOrder = 17
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox108: TDBCheckBox
        Left = 11
        Top = 216
        Width = 126
        Height = 17
        Caption = '113.Relat'#243'rio treze'
        DataField = 'ACESSO113'
        DataSource = DataSource1
        TabOrder = 12
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox109: TDBCheckBox
        Left = 11
        Top = 318
        Width = 126
        Height = 17
        Caption = '119.Relat'#243'rio dezenove'
        DataField = 'ACESSO119'
        DataSource = DataSource1
        TabOrder = 18
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox110: TDBCheckBox
        Left = 11
        Top = 335
        Width = 126
        Height = 17
        Caption = '120.Relat'#243'rio vinte'
        DataField = 'ACESSO120'
        DataSource = DataSource1
        TabOrder = 19
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox111: TDBCheckBox
        Left = 11
        Top = 352
        Width = 126
        Height = 17
        Caption = '121.Relat'#243'rio vinte e um'
        DataField = 'ACESSO121'
        DataSource = DataSource1
        TabOrder = 20
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBCheckBox112: TDBCheckBox
        Left = 11
        Top = 369
        Width = 126
        Height = 17
        Caption = '122.Relat'#243'rio vinte e um'
        DataField = 'ACESSO122'
        DataSource = DataSource1
        TabOrder = 21
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
    end
    object DBCheckBox91: TDBCheckBox
      Left = 24
      Top = 310
      Width = 145
      Height = 17
      Caption = '79.Pedido pe'#231'as f'#225'brica'
      DataField = 'ACESSO79'
      DataSource = DataSource1
      TabOrder = 50
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox92: TDBCheckBox
      Left = 492
      Top = 242
      Width = 145
      Height = 17
      Caption = '75.Registro de BAE'
      DataField = 'ACESSO80'
      DataSource = DataSource1
      TabOrder = 34
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox93: TDBCheckBox
      Left = 737
      Top = 309
      Width = 180
      Height = 17
      Caption = '81.Brindes'
      DataField = 'ACESSO81'
      DataSource = DataSource1
      TabOrder = 49
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox94: TDBCheckBox
      Left = 737
      Top = 323
      Width = 180
      Height = 17
      Caption = '82.Relat'#243'rio Venda Varejo'
      DataField = 'ACESSO82'
      DataSource = DataSource1
      TabOrder = 52
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox95: TDBCheckBox
      Left = 737
      Top = 338
      Width = 180
      Height = 17
      Caption = '83.Relat'#243'rio Mala Direta'
      DataField = 'ACESSO83'
      DataSource = DataSource1
      TabOrder = 57
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox96: TDBCheckBox
      Left = 737
      Top = 355
      Width = 180
      Height = 17
      Caption = '84.Pagamento de taxas'
      DataField = 'ACESSO84'
      DataSource = DataSource1
      TabOrder = 60
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox97: TDBCheckBox
      Left = 737
      Top = 370
      Width = 180
      Height = 17
      Caption = '85.Pagamento de taxas extras'
      DataField = 'ACESSO85'
      DataSource = DataSource1
      TabOrder = 65
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox99: TDBCheckBox
      Left = 737
      Top = 385
      Width = 168
      Height = 17
      Caption = '86-EFD-Escrit.Fiscal Digital'
      DataField = 'ACESSO86'
      DataSource = DataSource1
      TabOrder = 68
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox100: TDBCheckBox
      Left = 737
      Top = 402
      Width = 168
      Height = 17
      Caption = '87-NF de Cons'#243'rcio'
      DataField = 'ACESSO87'
      DataSource = DataSource1
      TabOrder = 72
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox101: TDBCheckBox
      Left = 737
      Top = 465
      Width = 180
      Height = 17
      Caption = '90-Registrar/cancelar Avaria'
      DataField = 'ACESSO90'
      DataSource = DataSource1
      TabOrder = 87
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox102: TDBCheckBox
      Left = 737
      Top = 419
      Width = 168
      Height = 17
      Caption = '88-SPED'
      DataField = 'ACESSO88'
      DataSource = DataSource1
      TabOrder = 76
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox103: TDBCheckBox
      Left = 737
      Top = 442
      Width = 168
      Height = 17
      Caption = '89-Ajuste NFentrada'
      DataField = 'ACESSO89'
      DataSource = DataSource1
      TabOrder = 82
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox113: TDBCheckBox
      Left = 737
      Top = 488
      Width = 180
      Height = 17
      Caption = '91-Nota Fiscal de Remessa'
      DataField = 'ACESSO91'
      DataSource = DataSource1
      TabOrder = 91
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox114: TDBCheckBox
      Left = 737
      Top = 503
      Width = 224
      Height = 17
      Caption = '92-Entrada Pedidos-cheque e boletos'
      DataField = 'ACESSO93'
      DataSource = DataSource1
      TabOrder = 95
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox115: TDBCheckBox
      Left = 737
      Top = 518
      Width = 216
      Height = 17
      Caption = '93-NFe Gerenciamento-consulta sintegra'
      DataField = 'ACESSO93'
      DataSource = DataSource1
      TabOrder = 99
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox116: TDBCheckBox
      Left = 737
      Top = 256
      Width = 180
      Height = 17
      Caption = '94-Lan'#231'a taxas c/vlr maior q.pedido'
      DataField = 'ACESSO94'
      DataSource = DataSource1
      TabOrder = 37
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox117: TDBCheckBox
      Left = 737
      Top = 279
      Width = 180
      Height = 17
      Caption = '95-Avalia'#231#227'o de ve'#237'culos'
      DataField = 'ACESSO95'
      DataSource = DataSource1
      TabOrder = 43
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox118: TDBCheckBox
      Left = 737
      Top = 233
      Width = 180
      Height = 17
      Caption = '96-Menu relat'#243'rio vendas'
      DataField = 'ACESSO96'
      DataSource = DataSource1
      TabOrder = 33
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox119: TDBCheckBox
      Left = 737
      Top = 210
      Width = 180
      Height = 17
      Caption = '97-Banco resumo restrito'
      DataField = 'ACESSO97'
      DataSource = DataSource1
      TabOrder = 29
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox120: TDBCheckBox
      Left = 737
      Top = 187
      Width = 180
      Height = 17
      Caption = '98-Caixa Geral'
      DataField = 'ACESSO97'
      DataSource = DataSource1
      TabOrder = 100
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox121: TDBCheckBox
      Left = 600
      Top = 64
      Width = 317
      Height = 22
      Caption = '99-Valor fatur.moto diferente pedido/Imprimir ped.sem editar'
      DataField = 'ACESSO99'
      DataSource = DataSource1
      TabOrder = 101
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DBCheckBox122: TDBCheckBox
      Left = 600
      Top = 86
      Width = 169
      Height = 17
      Caption = '100-Concilica'#231#227'o de cart'#245'es'
      DataField = 'ACESSO100'
      DataSource = DataSource1
      TabOrder = 102
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 609
    Width = 1089
    Height = 19
    AutoHint = True
    Panels = <>
    ParentShowHint = False
    ShowHint = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1089
    Height = 29
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 0
    object BtnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Action = Novo
      Caption = '&Novo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
        6900A4676900A4676900A4676900A4676900A4676900FF00FF00FF00FF00FF00
        FF00B7918400FEE9C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC1
        8200EBC17F00EBC18000EBC18000F2C78200A4676900FF00FF00FF00FF00FF00
        FF00B7918700FCEACE00F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC2
        8B00E9BD8100E9BD7F00E9BD7F00EFC48100A4676900FF00FF00FF00FF00FF00
        FF00B7938A00FEEFDA00F6E0C600F2DABC00F2D5B200EFD0A900EECB9E00EDC7
        9600EBC28C00E9BD8200E9BD7F00EFC48100A4676900FF00FF00FF00FF00FF00
        FF00BA978F00FFF4E500F7E5CF00F4E0C500F3DABB00F2D5B100F0D0A600EECB
        9E00EDC79500EBC28A00EABF8100EFC48000A4676900FF00FF00FF00FF00FF00
        FF00C09E9500FFFBF000F8EADC00F6E3CF00F4E0C600F2D9BC00F2D5B100F0D0
        A900EDCB9E00EDC69500EBC28A00EFC58300A4676900FF00FF00FF00FF00FF00
        FF00C6A49A00FFFFFC00FAF0E600F8EADA00F7E5CF00F4E0C500F2DABA00F2D5
        B100F0D0A700EECB9D00EBC79300F2C98C00A4676900FF00FF00FF00FF00FF00
        FF00CBA99E00FFFFFF00FEF7F200FAEFE600F8EAD900F7E3CF00F6E0C500F2DA
        BB00F2D4B100F0D0A700EECC9E00F3CE9700A4676900FF00FF00FF00FF00FF00
        FF00CFAC9F00FFFFFF00FFFEFC00FCF6F000FAEFE600F7EADA00F6E3CF00F4E0
        C500F3D9BB00F3D4B000F0D0A600F6D3A000A4676900FF00FF00FF00FF00FF00
        FF00D4B0A100FFFFFF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5
        CE00F6DEC400F3D9B800F4D8B100EBCFA400A4676900FF00FF00FF00FF00FF00
        FF00D9B5A100FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9
        D900F8E7D100FBEACE00DECEB400B6AA9300A4676900FF00FF00FF00FF00FF00
        FF00DDB7A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3
        E600EDD8C900B68A7B00A17B6F009C766700A4676900FF00FF00FF00FF00FF00
        FF00E2BCA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFE
        F700DAC1BA00AD735B00E19E5500E68F3100B56D4D00FF00FF00FF00FF00FF00
        FF00E6BFA700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DCC7C500B8826500F8B55C00BF7A5C00FF00FF00FF00FF00FF00FF00FF00
        FF00E4BCA400FBF4F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2
        EF00D8C2C000B77F6200C1836C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E8C4AD00EBCBB700EBCBB700EACBB700EACAB600EACAB600EACAB600EACA
        B600E3C2B100A56B5F00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object BtnEditar: TBitBtn
      Left = 75
      Top = 0
      Width = 75
      Height = 25
      Action = Editar
      Caption = '&Editar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00AEAEAE00999C9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C
        9E00999C9E00999C9E00999C9E00999C9E00999C9E00FF00FF00FF00FF00FF00
        FF00AEAEAE00F7F7F700F4F4F400F2F2F200EFEFEF00EDEDED00EAEAEA00E8E8
        E800E2E2E200DDDDDD00D7D7D700D2D2D2009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00F9F9F900F2F2F200EBEBEB00F0F0F000EFEFEF00EDEDED00EAEA
        EA00E8E8E800E2E2E200DDDDDD00D7D7D7009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00F8F8F800DFDFDF00CCCCCC00DADADA00E6E6E600EDEDED00EDED
        ED00EAEAEA00E8E8E800E2E2E200DDDDDD009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00F9F9F9002D2D2D00ADADAD00AAAAAA00BEBEBE00D8D8D800E3E3
        E300EBEBEB00EAEAEA00E8E8E800E2E2E2009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00FCFCFC0058534E00454442005160610092929200A6A6A600BDBD
        BD00DBDBDB00EBEBEB00EAEAEA00E8E8E8009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF00A8A8A80054777B001A9CC20018556F00425A94009494
        9400B8B8B800DBDBDB00EBEBEB00EAEAEA009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF009A9A9A0054777B0029799A00947E75001A9CC200425A
        940093939300B8B8B800DCDCDC00EBEBEB009C9FA100FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF00FFFFFF00F6F6F6001A9CC20027D1FC0004B8EC001A9C
        C200425A940093939300B8B8B800DCDCDC009B9EA000FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF00AEAEAE007A7A7A001A9CC200ACEDFC0027D1FC0004B8
        EC001A9CC200425A940093939300B2B2B2008F929400FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF009B9B9B00B3B3B300DCDCDC001A9CC200ACEDFC0027D1
        FC0004B8EC001A9CC200425A94008585850077797A00FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA001A9CC200ACED
        FC0027D1FC0004B8EC001A9CC200425A94005E606100FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF00AEAEAE007B7B7B00969696008D8D8D00ABABAB001A9C
        C200ACEDFC0027D1FC0035A8F500222F9B0011087500FF00FF00FF00FF00FF00
        FF00AEAEAE00FFFFFF009B9B9B00B3B3B300EBEBEB00E0E0E000EBEBEB00DCDC
        DC001A9CC2004A9EED000018C600455FC400222F9B0011087500FF00FF00FF00
        FF00AEAEAE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FAFAFA000018C600889FE1008997DF000018C600FF00FF00FF00FF00FF00
        FF00AEAEAE009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B
        9C009B9B9C00999C9E000018C6000018C600FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object BtnSalvar: TBitBtn
      Left = 150
      Top = 0
      Width = 75
      Height = 25
      Action = Salvar
      Caption = '&Salvar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007F2B28007F2B2800A1828300A1828300A1828300A1828300A1828300A182
        8300A18283007A1C1C007F2B2800FF00FF00FF00FF00FF00FF00FF00FF007F2B
        2800CA4D4D00B6454500DDD4D5007916170079161700DCE0E000D7DADE00CED5
        D700BDBABD0076100F009A2D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4B00B1444400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9
        DC00C1BDC10076111100982D2D007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0424200E6DCDC007916170079161700D5D3D500D8DEE100D7DD
        E000C6C2C500700F0F00962C2C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800C24A4A00B0414100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8
        DA00CAC2C5007E1717009E3131007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BF474800B8454500BA4C4C00BD575700BB575600B64E4E00B4494900BD52
        5100BB4B4C00B5424200BF4A4A007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800A33B3900B1605D00C6868400CB918F00CC919000CC908F00CB898800C989
        8800CB939100CC969600BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF007F2B
        2800BD4B4C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700BD4B4C007F2B2800FF00FF00FF00FF00FF00FF00FF00
        FF007F2B2800F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F7007F2B2800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object BtnExcluir: TBitBtn
      Left = 225
      Top = 0
      Width = 75
      Height = 25
      Action = Excluir
      Caption = 'E&xcluir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000005B7000005B700FF00FF000005
        B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000005B7000005B700FF00FF00FF00FF000005
        B7000005B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000005B7000005B700FF00FF00FF00FF00FF00FF000005
        B7000005B6000005B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000005B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000006D7000005BA000005B7000005B700FF00FF00FF00FF00FF00FF00FF00
        FF000005B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000005B7000005B7000005B600FF00FF000005B6000005
        B7000005B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000005B6000006C7000006C7000006CE000005
        B400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000006C1000005C1000006DA00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000005B6000006D7000006CE000006DA000006
        E900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000006E5000006DA000006D300FF00FF00FF00FF000006
        E5000006EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000006F8000006DA000006EF00FF00FF00FF00FF00FF00FF00FF00
        FF000006F8000006F600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000006F6000006F6000006F800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000006F6000006F600FF00FF00FF00FF00FF00FF00FF00FF000006
        F6000006F6000006F600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000006F600FF00FF00FF00FF000006F6000006
        F6000006F600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000006F6000006
        F600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object BtnCancelar: TBitBtn
      Left = 300
      Top = 0
      Width = 75
      Height = 25
      Action = Cancelar
      Caption = '&Cancelar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0008AD1800088410000884100008AD
        180031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00088410000884100008841000088410000884
        10000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031C6
        6B0008AD18000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00
        FF000884100008AD180008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF000884
        100031C66B0008AD180008AD180008841000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000884100008841000FF00FF00FF00FF00088410000884
        10000884100008AD1800088410000884100008841000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000884100008841000FF00FF00FF00FF00FF00FF00FF00
        FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF00FF00
        FF0031C66B000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100031C66B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0008AD18000884100008AD180031C66B00FF00FF00FF00FF0031C6
        6B0008AD18000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0008AD1800088410000884100008841000088410000884
        10000884100008AD1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0031C66B0008AD1800088410000884100008AD
        180031C66B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object BtnProcurar: TBitBtn
      Left = 375
      Top = 0
      Width = 75
      Height = 25
      Action = Procurar
      Caption = '&Procurar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00314B
        6200AC7D7E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005084B2000F6F
        E100325F8C00B87E7A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0032A0FE0037A1
        FF00106FE200325F8B00B67D7900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0037A4
        FE00379FFF000E6DDE00355F8900BB7F7900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0037A4FE00359EFF000F6FDE0035608B00A67B7F00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0038A5FE00329DFF00156DCE00444F5B00FF00FF009C6B6500AF88
        7B00AF887E00AA807500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF003BABFF00A1CAE700AD867900A9837300E0CFB100FFFF
        DA00FFFFDD00FCF8CF00CCB29F00A1746B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C0917D00FCE9AC00FFFFCC00FFFF
        CF00FFFFD000FFFFDE00FFFFFA00E3D3D10099696500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B0897800FAD19200FEF4C200FFFF
        D000FFFFDA00FFFFF600FFFFFC00FFFFFC00B6938400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B0897800FEDA9700EDB47800FBEEBB00FFFF
        D300FFFFDC00FFFFF400FFFFF400FFFFE200E9DDBC00A67B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B18A7800FFDE9900E9A16700F4D19900FEFC
        CC00FFFFD500FFFFDA00FFFFDC00FFFFD700EFE6C500A97E7500FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AA7F7300FAE0A400F0B77800EEBA7B00F6DD
        A600FEFBCC00FFFFD300FFFFD100FFFFD700D9C5A700A3756C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00CEB29300FFFEDD00F4D1A500EEBA
        7B00F2C78F00F8E1AB00FCF0BA00FCFACA00A3776F00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A1746B00E1D4D300FFFEEE00F7CC
        8C00F0B47300F7C78800FCE3A500C2A08800A5776C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0098686500BA958700EAD7
        A400EAD59E00E0C09700A5776C00A5776C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A77E
        7000A9807300A4786E00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object BtnPrimeiro: TBitBtn
      Left = 450
      Top = 0
      Width = 63
      Height = 25
      Action = Primeiro
      Caption = 'P&rimeiro'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00FF00FFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF0000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00000000000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF0000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FF00FF00FFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFF0000FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00FF00}
      TabOrder = 6
    end
    object BtnAnterior: TBitBtn
      Left = 513
      Top = 0
      Width = 63
      Height = 25
      Action = Anterior
      Caption = 'An&terior'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
        FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
    end
    object BtnProximo: TBitBtn
      Left = 576
      Top = 0
      Width = 61
      Height = 25
      Action = Proximo
      Caption = 'Pr'#243'x&imo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000000000000000000000000000000000000000FF000000FF000000
        FF000000FF000000FF000000000000000000FF00FF00FF00FF00000000000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000000000000000000000000000
        000000000000000000000000000000000000000000000000FF000000FF000000
        FF000000FF000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 8
    end
    object BtnUltimo: TBitBtn
      Left = 637
      Top = 0
      Width = 75
      Height = 25
      Action = Ultimo
      Caption = '&'#218'ltimo'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00FF00FFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF00000000000000
        000000000000FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007F7F7F0000000000FFFF0000FF00FF00FFFF00000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FF00FF00FFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFF0000FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
        0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00FF00}
      TabOrder = 9
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 430
    Top = 48
    object Novo: TAction
      Category = 'Dataset'
      Caption = '&Novo'
      ImageIndex = 0
      ShortCut = 117
      OnExecute = NovoExecute
    end
    object Editar: TAction
      Category = 'Dataset'
      Caption = '&Editar'
      Hint = 'Editar registro'
      ImageIndex = 5
      ShortCut = 118
      OnExecute = EditarExecute
    end
    object Salvar: TAction
      Category = 'Dataset'
      Caption = '&Salvar'
      Hint = 'Salvar registro'
      ImageIndex = 2
      ShortCut = 121
      OnExecute = SalvarExecute
    end
    object Cancelar: TAction
      Category = 'Dataset'
      Caption = '&Cancelar'
      Hint = 'Cancelar edi'#231#227'o de registro'
      ImageIndex = 3
      ShortCut = 120
      OnExecute = CancelarExecute
    end
    object Excluir: TAction
      Category = 'Dataset'
      Caption = 'E&xcluir'
      Hint = 'Excluir registro'
      ImageIndex = 1
      ShortCut = 119
      OnExecute = ExcluirExecute
    end
    object Procurar: TAction
      Caption = '&Procurar'
      Hint = 'Procurar registro'
      ImageIndex = 4
      ShortCut = 116
      OnExecute = ProcurarExecute
    end
    object Anterior: TAction
      Category = 'Dataset'
      Caption = 'An&terior'
      Hint = 'Registro anterior'
      ImageIndex = 6
      OnExecute = AnteriorExecute
    end
    object Proximo: TAction
      Category = 'Dataset'
      Caption = 'Pr'#243'x&imo'
      Hint = 'Pr'#243'ximo registro'
      ImageIndex = 8
      OnExecute = ProximoExecute
    end
    object Ultimo: TAction
      Category = 'Dataset'
      Caption = '&'#218'ltimo'
      Hint = #218'ltimo registro'
      ImageIndex = 9
      OnExecute = UltimoExecute
    end
    object Primeiro: TAction
      Category = 'Dataset'
      Caption = 'P&rimeiro'
      Hint = 'Primeiro registro'
      ImageIndex = 7
      OnExecute = PrimeiroExecute
    end
  end
  object ImageList1: TImageList
    Left = 368
    Top = 48
    Bitmap = {
      494C01010A000C00180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000314B6200AC7D7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE00999C
      9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C9E00999C
      9E00999C9E00999C9E00999C9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005084B2000F6FE100325F8C00B87E
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE00F7F7
      F700F4F4F400F2F2F200EFEFEF00EDEDED00EAEAEA00E8E8E800E2E2E200DDDD
      DD00D7D7D700D2D2D2009C9FA100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000032A0FE0037A1FF00106FE200325F
      8B00B67D79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE00F9F9
      F900F2F2F200EBEBEB00F0F0F000EFEFEF00EDEDED00EAEAEA00E8E8E800E2E2
      E200DDDDDD00D7D7D7009C9FA100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000037A4FE00379FFF000E6D
      DE00355F8900BB7F790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE00F8F8
      F800DFDFDF00CCCCCC00DADADA00E6E6E600EDEDED00EDEDED00EAEAEA00E8E8
      E800E2E2E200DDDDDD009C9FA100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000FFFF000000000000000000000000000037A4FE00359E
      FF000F6FDE0035608B00A67B7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE00F9F9
      F9002D2D2D00ADADAD00AAAAAA00BEBEBE00D8D8D800E3E3E300EBEBEB00EAEA
      EA00E8E8E800E2E2E2009C9FA100000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF00000000000000000000000000000000000038A5
      FE00329DFF00156DCE00444F5B00000000009C6B6500AF887B00AF887E00AA80
      7500000000000000000000000000000000000000000000000000AEAEAE00FCFC
      FC0058534E00454442005160610092929200A6A6A600BDBDBD00DBDBDB00EBEB
      EB00EAEAEA00E8E8E8009C9FA100000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      00003BABFF00A1CAE700AD867900A9837300E0CFB100FFFFDA00FFFFDD00FCF8
      CF00CCB29F00A1746B0000000000000000000000000000000000AEAEAE00FFFF
      FF00A8A8A80054777B001A9CC20018556F00425A940094949400B8B8B800DBDB
      DB00EBEBEB00EAEAEA009C9FA100000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000C0917D00FCE9AC00FFFFCC00FFFFCF00FFFFD000FFFF
      DE00FFFFFA00E3D3D10099696500000000000000000000000000AEAEAE00FFFF
      FF009A9A9A0054777B0029799A00947E75001A9CC200425A940093939300B8B8
      B800DCDCDC00EBEBEB009C9FA1000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000B0897800FAD19200FEF4C200FFFFD000FFFFDA00FFFF
      F600FFFFFC00FFFFFC00B6938400000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00F6F6F6001A9CC20027D1FC0004B8EC001A9CC200425A94009393
      9300B8B8B800DCDCDC009B9EA000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      000000000000B0897800FEDA9700EDB47800FBEEBB00FFFFD300FFFFDC00FFFF
      F400FFFFF400FFFFE200E9DDBC00A67B73000000000000000000AEAEAE00FFFF
      FF00AEAEAE007A7A7A001A9CC200ACEDFC0027D1FC0004B8EC001A9CC200425A
      940093939300B2B2B2008F929400000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      000000000000B18A7800FFDE9900E9A16700F4D19900FEFCCC00FFFFD500FFFF
      DA00FFFFDC00FFFFD700EFE6C500A97E75000000000000000000AEAEAE00FFFF
      FF009B9B9B00B3B3B300DCDCDC001A9CC200ACEDFC0027D1FC0004B8EC001A9C
      C200425A94008585850077797A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      000000000000AA7F7300FAE0A400F0B77800EEBA7B00F6DDA600FEFBCC00FFFF
      D300FFFFD100FFFFD700D9C5A700A3756C000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFAFA001A9CC200ACEDFC0027D1FC0004B8
      EC001A9CC200425A94005E606100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000CEB29300FFFEDD00F4D1A500EEBA7B00F2C78F00F8E1
      AB00FCF0BA00FCFACA00A3776F00000000000000000000000000AEAEAE00FFFF
      FF00AEAEAE007B7B7B00969696008D8D8D00ABABAB001A9CC200ACEDFC0027D1
      FC0035A8F500222F9B0011087500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000A1746B00E1D4D300FFFEEE00F7CC8C00F0B47300F7C7
      8800FCE3A500C2A08800A5776C00000000000000000000000000AEAEAE00FFFF
      FF009B9B9B00B3B3B300EBEBEB00E0E0E000EBEBEB00DCDCDC001A9CC2004A9E
      ED000018C600455FC400222F9B00110875000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000000000000000000000000000000000000000
      000000000000000000000000000098686500BA958700EAD7A400EAD59E00E0C0
      9700A5776C00A5776C0000000000000000000000000000000000AEAEAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA000018
      C600889FE1008997DF000018C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A77E7000A9807300A478
      6E00000000000000000000000000000000000000000000000000AEAEAE009B9B
      9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C009B9B9C00999C
      9E000018C6000018C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000005B7000005B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7918400FEE9
      C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A467690000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B7000000000000000000000000007F2B28007F2B
      2800A1828300A1828300A1828300A1828300A1828300A1828300A18283007A1C
      1C007F2B28000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7918700FCEA
      CE00F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC28B00E9BD8100E9BD
      7F00E9BD7F00EFC48100A467690000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B7000000000000000000000000007F2B2800CA4D4D00B645
      4500DDD4D5007916170079161700DCE0E000D7DADE00CED5D700BDBABD007610
      0F009A2D2D007F2B280000000000000000000000000000000000000000000000
      0000000000000000000008AD1800088410000884100008AD180031C66B000000
      0000000000000000000000000000000000000000000000000000B7938A00FEEF
      DA00F6E0C600F2DABC00F2D5B200EFD0A900EECB9E00EDC79600EBC28C00E9BD
      8200E9BD7F00EFC48100A467690000000000000000000005B7000005B6000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B700000000000000000000000000000000007F2B2800C24A4B00B144
      4400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9DC00C1BDC1007611
      1100982D2D007F2B280000000000000000000000000000000000000000000000
      00000000000008841000088410000884100008841000088410000884100008AD
      1800000000000000000000000000000000000000000000000000BA978F00FFF4
      E500F7E5CF00F4E0C500F3DABB00F2D5B100F0D0A600EECB9E00EDC79500EBC2
      8A00EABF8100EFC48000A46769000000000000000000000000000006D7000005
      BA000005B7000005B700000000000000000000000000000000000005B7000005
      B70000000000000000000000000000000000000000007F2B2800C24A4A00B042
      4200E6DCDC007916170079161700D5D3D500D8DEE100D7DDE000C6C2C500700F
      0F00962C2C007F2B280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031C66B0008AD18000884
      100008AD18000000000000000000000000000000000000000000C09E9500FFFB
      F000F8EADC00F6E3CF00F4E0C600F2D9BC00F2D5B100F0D0A900EDCB9E00EDC6
      9500EBC28A00EFC58300A4676900000000000000000000000000000000000000
      00000005B7000005B7000005B600000000000005B6000005B7000005B7000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00B041
      4100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8DA00CAC2C5007E17
      17009E3131007F2B280000000000000000000000000000000000000000000884
      10000000000000000000000000000000000000000000000000000000000008AD
      18000884100031C66B0000000000000000000000000000000000C6A49A00FFFF
      FC00FAF0E600F8EADA00F7E5CF00F4E0C500F2DABA00F2D5B100F0D0A700EECB
      9D00EBC79300F2C98C00A4676900000000000000000000000000000000000000
      0000000000000005B6000006C7000006C7000006CE000005B400000000000000
      000000000000000000000000000000000000000000007F2B2800BF474800B845
      4500BA4C4C00BD575700BB575600B64E4E00B4494900BD525100BB4B4C00B542
      4200BF4A4A007F2B2800000000000000000000000000000000000884100008AD
      18000884100000000000000000000000000000000000000000000000000031C6
      6B000884100008AD180000000000000000000000000000000000CBA99E00FFFF
      FF00FEF7F200FAEFE600F8EAD900F7E3CF00F6E0C500F2DABB00F2D4B100F0D0
      A700EECC9E00F3CE9700A4676900000000000000000000000000000000000000
      000000000000000000000006C1000005C1000006DA0000000000000000000000
      000000000000000000000000000000000000000000007F2B2800A33B3900B160
      5D00C6868400CB918F00CC919000CC908F00CB898800C9898800CB939100CC96
      9600BD4B4C007F2B28000000000000000000000000000884100031C66B0008AD
      180008AD18000884100000000000000000000000000000000000000000000000
      0000088410000884100000000000000000000000000000000000CFAC9F00FFFF
      FF00FFFEFC00FCF6F000FAEFE600F7EADA00F6E3CF00F4E0C500F3D9BB00F3D4
      B000F0D0A600F6D3A000A4676900000000000000000000000000000000000000
      0000000000000005B6000006D7000006CE000006DA000006E900000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B2800000000000000000008841000088410000884100008AD
      1800088410000884100008841000000000000000000000000000000000000000
      0000088410000884100000000000000000000000000000000000D4B0A100FFFF
      FF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5CE00F6DEC400F3D9
      B800F4D8B100EBCFA400A4676900000000000000000000000000000000000000
      00000006E5000006DA000006D30000000000000000000006E5000006EF000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000000000000000000008AD18000884
      100031C66B0000000000000000000000000000000000000000000000000031C6
      6B000884100008AD180000000000000000000000000000000000D9B5A100FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9D900F8E7D100FBEA
      CE00DECEB400B6AA9300A4676900000000000000000000000000000000000006
      F8000006DA000006EF00000000000000000000000000000000000006F8000006
      F60000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B28000000000000000000000000000000000031C66B000884
      100008AD180000000000000000000000000000000000000000000000000008AD
      18000884100031C66B0000000000000000000000000000000000DDB7A400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3E600EDD8C900B68A
      7B00A17B6F009C766700A46769000000000000000000000000000006F6000006
      F6000006F8000000000000000000000000000000000000000000000000000006
      F6000006F600000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B2800000000000000000000000000000000000000000008AD
      18000884100008AD180031C66B00000000000000000031C66B0008AD18000884
      100008AD18000000000000000000000000000000000000000000E2BCA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00AD73
      5B00E19E5500E68F3100B56D4D0000000000000000000006F6000006F6000006
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000006F6000000000000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000000000000000
      000008AD180008841000088410000884100008841000088410000884100008AD
      1800000000000000000000000000000000000000000000000000E6BFA700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500B882
      6500F8B55C00BF7A5C0000000000000000000006F6000006F6000006F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000000000000000
      00000000000031C66B0008AD1800088410000884100008AD180031C66B000000
      0000000000000000000000000000000000000000000000000000E4BCA400FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000B77F
      6200C1836C000000000000000000000000000006F6000006F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F2B2800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F7007F2B28000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8C4AD00EBCB
      B700EBCBB700EACBB700EACAB600EACAB600EACAB600EACAB600E3C2B100A56B
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFF000100000000
      FFFF000100000000FFFF000100000000FCFF1FF100000000FC3F1FF100000000
      FC0F197100000000000319310000000000001911000000000003193100000000
      FC0F197100000000FC3F1FF100000000FCFF1FF100000000FFFF000100000000
      FFFF000100000000FFFF0001000000009FFFC001FFFFFFFF0FFFC001FFFF0001
      07FFC001FFFF000183FFC001FF3F0001C1FFC001FC3F1FF1E10FC001F03F1FF1
      F003C001C0001D31FC01C00100001931FC01C001C0001131F800C001F03F1931
      F800C001FC3F1D31F800C001FF3F1FF1FC01C001FFFF1FF1FC01C000FFFF0001
      FE03C001FFFF0001FF8FC003FFFF0001C001FFFCFFFFFFFFC0019FF9C007FFFF
      C0018FF38003FC1FC00187E78003F80FC001C3CF8003FF87C001F11F8003EFE3
      C001F83F8003C7E3C001FC7F800383F3C001F83F800301F3C001F19F8003C7E3
      C001E3CF8003C7E3C001C7E78003E187C0018FFB8003F00FC0031FFF8003F81F
      C0073FFFC007FFFFC00FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tblUsuario
    Left = 400
    Top = 48
  end
  object tblUsuario: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
    AfterCancel = tblUsuarioAfterCancel
    AfterDelete = tblUsuarioAfterPost
    AfterPost = tblUsuarioAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (ACESSO1, ACESSO10, ACESSO100, ACESSO101, ACESSO102, ACESSO103' +
        ', ACESSO104, '
      
        '   ACESSO105, ACESSO106, ACESSO107, ACESSO108, ACESSO109, ACESSO' +
        '11, ACESSO110, '
      
        '   ACESSO111, ACESSO112, ACESSO113, ACESSO114, ACESSO115, ACESSO' +
        '116, ACESSO117, '
      
        '   ACESSO118, ACESSO119, ACESSO12, ACESSO120, ACESSO121, ACESSO1' +
        '22, ACESSO123, '
      
        '   ACESSO124, ACESSO125, ACESSO126, ACESSO127, ACESSO128, ACESSO' +
        '129, ACESSO13, '
      
        '   ACESSO130, ACESSO131, ACESSO132, ACESSO133, ACESSO134, ACESSO' +
        '135, ACESSO136, '
      
        '   ACESSO137, ACESSO138, ACESSO139, ACESSO14, ACESSO140, ACESSO1' +
        '41, ACESSO142, '
      
        '   ACESSO143, ACESSO144, ACESSO145, ACESSO146, ACESSO147, ACESSO' +
        '148, ACESSO149, '
      
        '   ACESSO15, ACESSO150, ACESSO151, ACESSO152, ACESSO153, ACESSO1' +
        '54, ACESSO155, '
      
        '   ACESSO156, ACESSO157, ACESSO158, ACESSO159, ACESSO16, ACESSO1' +
        '60, ACESSO17, '
      
        '   ACESSO18, ACESSO19, ACESSO2, ACESSO20, ACESSO21, ACESSO22, AC' +
        'ESSO23, '
      
        '   ACESSO24, ACESSO25, ACESSO26, ACESSO27, ACESSO28, ACESSO29, A' +
        'CESSO3, '
      
        '   ACESSO30, ACESSO31, ACESSO32, ACESSO33, ACESSO34, ACESSO35, A' +
        'CESSO36, '
      
        '   ACESSO37, ACESSO38, ACESSO39, ACESSO4, ACESSO40, ACESSO41, AC' +
        'ESSO42, '
      
        '   ACESSO43, ACESSO44, ACESSO45, ACESSO46, ACESSO47, ACESSO48, A' +
        'CESSO49, '
      
        '   ACESSO5, ACESSO50, ACESSO51, ACESSO52, ACESSO53, ACESSO54, AC' +
        'ESSO55, '
      
        '   ACESSO56, ACESSO57, ACESSO58, ACESSO59, ACESSO6, ACESSO60, AC' +
        'ESSO61, '
      
        '   ACESSO62, ACESSO63, ACESSO64, ACESSO65, ACESSO66, ACESSO67, A' +
        'CESSO68, '
      
        '   ACESSO69, ACESSO7, ACESSO70, ACESSO71, ACESSO72, ACESSO73, AC' +
        'ESSO74, '
      
        '   ACESSO75, ACESSO76, ACESSO77, ACESSO78, ACESSO79, ACESSO8, AC' +
        'ESSO80, '
      
        '   ACESSO81, ACESSO82, ACESSO83, ACESSO84, ACESSO85, ACESSO86, A' +
        'CESSO87, '
      
        '   ACESSO88, ACESSO89, ACESSO9, ACESSO90, ACESSO91, ACESSO92, AC' +
        'ESSO93, '
      
        '   ACESSO94, ACESSO95, ACESSO96, ACESSO97, ACESSO98, ACESSO99, A' +
        'DM, ID_USUARIOS, '
      '   LOGIN, SENHA, USUARIO)'
      'values'
      
        '  (:ACESSO1, :ACESSO10, :ACESSO100, :ACESSO101, :ACESSO102, :ACE' +
        'SSO103, '
      
        '   :ACESSO104, :ACESSO105, :ACESSO106, :ACESSO107, :ACESSO108, :' +
        'ACESSO109, '
      
        '   :ACESSO11, :ACESSO110, :ACESSO111, :ACESSO112, :ACESSO113, :A' +
        'CESSO114, '
      
        '   :ACESSO115, :ACESSO116, :ACESSO117, :ACESSO118, :ACESSO119, :' +
        'ACESSO12, '
      
        '   :ACESSO120, :ACESSO121, :ACESSO122, :ACESSO123, :ACESSO124, :' +
        'ACESSO125, '
      
        '   :ACESSO126, :ACESSO127, :ACESSO128, :ACESSO129, :ACESSO13, :A' +
        'CESSO130, '
      
        '   :ACESSO131, :ACESSO132, :ACESSO133, :ACESSO134, :ACESSO135, :' +
        'ACESSO136, '
      
        '   :ACESSO137, :ACESSO138, :ACESSO139, :ACESSO14, :ACESSO140, :A' +
        'CESSO141, '
      
        '   :ACESSO142, :ACESSO143, :ACESSO144, :ACESSO145, :ACESSO146, :' +
        'ACESSO147, '
      
        '   :ACESSO148, :ACESSO149, :ACESSO15, :ACESSO150, :ACESSO151, :A' +
        'CESSO152, '
      
        '   :ACESSO153, :ACESSO154, :ACESSO155, :ACESSO156, :ACESSO157, :' +
        'ACESSO158, '
      
        '   :ACESSO159, :ACESSO16, :ACESSO160, :ACESSO17, :ACESSO18, :ACE' +
        'SSO19, '
      
        '   :ACESSO2, :ACESSO20, :ACESSO21, :ACESSO22, :ACESSO23, :ACESSO' +
        '24, :ACESSO25, '
      
        '   :ACESSO26, :ACESSO27, :ACESSO28, :ACESSO29, :ACESSO3, :ACESSO' +
        '30, :ACESSO31, '
      
        '   :ACESSO32, :ACESSO33, :ACESSO34, :ACESSO35, :ACESSO36, :ACESS' +
        'O37, :ACESSO38, '
      
        '   :ACESSO39, :ACESSO4, :ACESSO40, :ACESSO41, :ACESSO42, :ACESSO' +
        '43, :ACESSO44, '
      
        '   :ACESSO45, :ACESSO46, :ACESSO47, :ACESSO48, :ACESSO49, :ACESS' +
        'O5, :ACESSO50, '
      
        '   :ACESSO51, :ACESSO52, :ACESSO53, :ACESSO54, :ACESSO55, :ACESS' +
        'O56, :ACESSO57, '
      
        '   :ACESSO58, :ACESSO59, :ACESSO6, :ACESSO60, :ACESSO61, :ACESSO' +
        '62, :ACESSO63, '
      
        '   :ACESSO64, :ACESSO65, :ACESSO66, :ACESSO67, :ACESSO68, :ACESS' +
        'O69, :ACESSO7, '
      
        '   :ACESSO70, :ACESSO71, :ACESSO72, :ACESSO73, :ACESSO74, :ACESS' +
        'O75, :ACESSO76, '
      
        '   :ACESSO77, :ACESSO78, :ACESSO79, :ACESSO8, :ACESSO80, :ACESSO' +
        '81, :ACESSO82, '
      
        '   :ACESSO83, :ACESSO84, :ACESSO85, :ACESSO86, :ACESSO87, :ACESS' +
        'O88, :ACESSO89, '
      
        '   :ACESSO9, :ACESSO90, :ACESSO91, :ACESSO92, :ACESSO93, :ACESSO' +
        '94, :ACESSO95, '
      
        '   :ACESSO96, :ACESSO97, :ACESSO98, :ACESSO99, :ADM, :ID_USUARIO' +
        'S, :LOGIN, '
      '   :SENHA, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS,'
      '  USUARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  ADM,'
      '  ACESSO1,'
      '  ACESSO2,'
      '  ACESSO3,'
      '  ACESSO4,'
      '  ACESSO5,'
      '  ACESSO6,'
      '  ACESSO7,'
      '  ACESSO8,'
      '  ACESSO9,'
      '  ACESSO10,'
      '  ACESSO11,'
      '  ACESSO12,'
      '  ACESSO13,'
      '  ACESSO14,'
      '  ACESSO15,'
      '  ACESSO16,'
      '  ACESSO17,'
      '  ACESSO18,'
      '  ACESSO19,'
      '  ACESSO20,'
      '  ACESSO21,'
      '  ACESSO22,'
      '  ACESSO23,'
      '  ACESSO24,'
      '  ACESSO25,'
      '  ACESSO26,'
      '  ACESSO27,'
      '  ACESSO28,'
      '  ACESSO29,'
      '  ACESSO30,'
      '  ACESSO31,'
      '  ACESSO32,'
      '  ACESSO33,'
      '  ACESSO34,'
      '  ACESSO35,'
      '  ACESSO36,'
      '  ACESSO37,'
      '  ACESSO38,'
      '  ACESSO39,'
      '  ACESSO40,'
      '  ACESSO41,'
      '  ACESSO42,'
      '  ACESSO43,'
      '  ACESSO44,'
      '  ACESSO45,'
      '  ACESSO46,'
      '  ACESSO47,'
      '  ACESSO48,'
      '  ACESSO49,'
      '  ACESSO50,'
      '  ACESSO51,'
      '  ACESSO52,'
      '  ACESSO53,'
      '  ACESSO54,'
      '  ACESSO55,'
      '  ACESSO56,'
      '  ACESSO57,'
      '  ACESSO58,'
      '  ACESSO59,'
      '  ACESSO60,'
      '  ACESSO61,'
      '  ACESSO62,'
      '  ACESSO63,'
      '  ACESSO64,'
      '  ACESSO65,'
      '  ACESSO66,'
      '  ACESSO67,'
      '  ACESSO68,'
      '  ACESSO69,'
      '  ACESSO70,'
      '  ACESSO71,'
      '  ACESSO72,'
      '  ACESSO73,'
      '  ACESSO74,'
      '  ACESSO75,'
      '  ACESSO76,'
      '  ACESSO77,'
      '  ACESSO78,'
      '  ACESSO79,'
      '  ACESSO80,'
      '  ACESSO81,'
      '  ACESSO82,'
      '  ACESSO83,'
      '  ACESSO84,'
      '  ACESSO85,'
      '  ACESSO86,'
      '  ACESSO87,'
      '  ACESSO88,'
      '  ACESSO89,'
      '  ACESSO90,'
      '  ACESSO91,'
      '  ACESSO92,'
      '  ACESSO93,'
      '  ACESSO94,'
      '  ACESSO95,'
      '  ACESSO96,'
      '  ACESSO97,'
      '  ACESSO98,'
      '  ACESSO99,'
      '  ACESSO100,'
      '  ACESSO101,'
      '  ACESSO102,'
      '  ACESSO103,'
      '  ACESSO104,'
      '  ACESSO105,'
      '  ACESSO106,'
      '  ACESSO107,'
      '  ACESSO108,'
      '  ACESSO109,'
      '  ACESSO110,'
      '  ACESSO111,'
      '  ACESSO112,'
      '  ACESSO113,'
      '  ACESSO114,'
      '  ACESSO115,'
      '  ACESSO116,'
      '  ACESSO117,'
      '  ACESSO118,'
      '  ACESSO119,'
      '  ACESSO120,'
      '  ACESSO121,'
      '  ACESSO122,'
      '  ACESSO123,'
      '  ACESSO124,'
      '  ACESSO125,'
      '  ACESSO126,'
      '  ACESSO127,'
      '  ACESSO128,'
      '  ACESSO129,'
      '  ACESSO130,'
      '  ACESSO131,'
      '  ACESSO132,'
      '  ACESSO133,'
      '  ACESSO134,'
      '  ACESSO135,'
      '  ACESSO136,'
      '  ACESSO137,'
      '  ACESSO138,'
      '  ACESSO139,'
      '  ACESSO140,'
      '  ACESSO141,'
      '  ACESSO142,'
      '  ACESSO143,'
      '  ACESSO144,'
      '  ACESSO145,'
      '  ACESSO146,'
      '  ACESSO147,'
      '  ACESSO148,'
      '  ACESSO149,'
      '  ACESSO150,'
      '  ACESSO151,'
      '  ACESSO152,'
      '  ACESSO153,'
      '  ACESSO154,'
      '  ACESSO155,'
      '  ACESSO156,'
      '  ACESSO157,'
      '  ACESSO158,'
      '  ACESSO159,'
      '  ACESSO160'
      'from USUARIOS '
      'where'
      '  ID_USUARIOS = :ID_USUARIOS')
    SelectSQL.Strings = (
      'select * from USUARIOS'
      'where id_usuarios = :id')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  ACESSO1 = :ACESSO1,'
      '  ACESSO10 = :ACESSO10,'
      '  ACESSO100 = :ACESSO100,'
      '  ACESSO101 = :ACESSO101,'
      '  ACESSO102 = :ACESSO102,'
      '  ACESSO103 = :ACESSO103,'
      '  ACESSO104 = :ACESSO104,'
      '  ACESSO105 = :ACESSO105,'
      '  ACESSO106 = :ACESSO106,'
      '  ACESSO107 = :ACESSO107,'
      '  ACESSO108 = :ACESSO108,'
      '  ACESSO109 = :ACESSO109,'
      '  ACESSO11 = :ACESSO11,'
      '  ACESSO110 = :ACESSO110,'
      '  ACESSO111 = :ACESSO111,'
      '  ACESSO112 = :ACESSO112,'
      '  ACESSO113 = :ACESSO113,'
      '  ACESSO114 = :ACESSO114,'
      '  ACESSO115 = :ACESSO115,'
      '  ACESSO116 = :ACESSO116,'
      '  ACESSO117 = :ACESSO117,'
      '  ACESSO118 = :ACESSO118,'
      '  ACESSO119 = :ACESSO119,'
      '  ACESSO12 = :ACESSO12,'
      '  ACESSO120 = :ACESSO120,'
      '  ACESSO121 = :ACESSO121,'
      '  ACESSO122 = :ACESSO122,'
      '  ACESSO123 = :ACESSO123,'
      '  ACESSO124 = :ACESSO124,'
      '  ACESSO125 = :ACESSO125,'
      '  ACESSO126 = :ACESSO126,'
      '  ACESSO127 = :ACESSO127,'
      '  ACESSO128 = :ACESSO128,'
      '  ACESSO129 = :ACESSO129,'
      '  ACESSO13 = :ACESSO13,'
      '  ACESSO130 = :ACESSO130,'
      '  ACESSO131 = :ACESSO131,'
      '  ACESSO132 = :ACESSO132,'
      '  ACESSO133 = :ACESSO133,'
      '  ACESSO134 = :ACESSO134,'
      '  ACESSO135 = :ACESSO135,'
      '  ACESSO136 = :ACESSO136,'
      '  ACESSO137 = :ACESSO137,'
      '  ACESSO138 = :ACESSO138,'
      '  ACESSO139 = :ACESSO139,'
      '  ACESSO14 = :ACESSO14,'
      '  ACESSO140 = :ACESSO140,'
      '  ACESSO141 = :ACESSO141,'
      '  ACESSO142 = :ACESSO142,'
      '  ACESSO143 = :ACESSO143,'
      '  ACESSO144 = :ACESSO144,'
      '  ACESSO145 = :ACESSO145,'
      '  ACESSO146 = :ACESSO146,'
      '  ACESSO147 = :ACESSO147,'
      '  ACESSO148 = :ACESSO148,'
      '  ACESSO149 = :ACESSO149,'
      '  ACESSO15 = :ACESSO15,'
      '  ACESSO150 = :ACESSO150,'
      '  ACESSO151 = :ACESSO151,'
      '  ACESSO152 = :ACESSO152,'
      '  ACESSO153 = :ACESSO153,'
      '  ACESSO154 = :ACESSO154,'
      '  ACESSO155 = :ACESSO155,'
      '  ACESSO156 = :ACESSO156,'
      '  ACESSO157 = :ACESSO157,'
      '  ACESSO158 = :ACESSO158,'
      '  ACESSO159 = :ACESSO159,'
      '  ACESSO16 = :ACESSO16,'
      '  ACESSO160 = :ACESSO160,'
      '  ACESSO17 = :ACESSO17,'
      '  ACESSO18 = :ACESSO18,'
      '  ACESSO19 = :ACESSO19,'
      '  ACESSO2 = :ACESSO2,'
      '  ACESSO20 = :ACESSO20,'
      '  ACESSO21 = :ACESSO21,'
      '  ACESSO22 = :ACESSO22,'
      '  ACESSO23 = :ACESSO23,'
      '  ACESSO24 = :ACESSO24,'
      '  ACESSO25 = :ACESSO25,'
      '  ACESSO26 = :ACESSO26,'
      '  ACESSO27 = :ACESSO27,'
      '  ACESSO28 = :ACESSO28,'
      '  ACESSO29 = :ACESSO29,'
      '  ACESSO3 = :ACESSO3,'
      '  ACESSO30 = :ACESSO30,'
      '  ACESSO31 = :ACESSO31,'
      '  ACESSO32 = :ACESSO32,'
      '  ACESSO33 = :ACESSO33,'
      '  ACESSO34 = :ACESSO34,'
      '  ACESSO35 = :ACESSO35,'
      '  ACESSO36 = :ACESSO36,'
      '  ACESSO37 = :ACESSO37,'
      '  ACESSO38 = :ACESSO38,'
      '  ACESSO39 = :ACESSO39,'
      '  ACESSO4 = :ACESSO4,'
      '  ACESSO40 = :ACESSO40,'
      '  ACESSO41 = :ACESSO41,'
      '  ACESSO42 = :ACESSO42,'
      '  ACESSO43 = :ACESSO43,'
      '  ACESSO44 = :ACESSO44,'
      '  ACESSO45 = :ACESSO45,'
      '  ACESSO46 = :ACESSO46,'
      '  ACESSO47 = :ACESSO47,'
      '  ACESSO48 = :ACESSO48,'
      '  ACESSO49 = :ACESSO49,'
      '  ACESSO5 = :ACESSO5,'
      '  ACESSO50 = :ACESSO50,'
      '  ACESSO51 = :ACESSO51,'
      '  ACESSO52 = :ACESSO52,'
      '  ACESSO53 = :ACESSO53,'
      '  ACESSO54 = :ACESSO54,'
      '  ACESSO55 = :ACESSO55,'
      '  ACESSO56 = :ACESSO56,'
      '  ACESSO57 = :ACESSO57,'
      '  ACESSO58 = :ACESSO58,'
      '  ACESSO59 = :ACESSO59,'
      '  ACESSO6 = :ACESSO6,'
      '  ACESSO60 = :ACESSO60,'
      '  ACESSO61 = :ACESSO61,'
      '  ACESSO62 = :ACESSO62,'
      '  ACESSO63 = :ACESSO63,'
      '  ACESSO64 = :ACESSO64,'
      '  ACESSO65 = :ACESSO65,'
      '  ACESSO66 = :ACESSO66,'
      '  ACESSO67 = :ACESSO67,'
      '  ACESSO68 = :ACESSO68,'
      '  ACESSO69 = :ACESSO69,'
      '  ACESSO7 = :ACESSO7,'
      '  ACESSO70 = :ACESSO70,'
      '  ACESSO71 = :ACESSO71,'
      '  ACESSO72 = :ACESSO72,'
      '  ACESSO73 = :ACESSO73,'
      '  ACESSO74 = :ACESSO74,'
      '  ACESSO75 = :ACESSO75,'
      '  ACESSO76 = :ACESSO76,'
      '  ACESSO77 = :ACESSO77,'
      '  ACESSO78 = :ACESSO78,'
      '  ACESSO79 = :ACESSO79,'
      '  ACESSO8 = :ACESSO8,'
      '  ACESSO80 = :ACESSO80,'
      '  ACESSO81 = :ACESSO81,'
      '  ACESSO82 = :ACESSO82,'
      '  ACESSO83 = :ACESSO83,'
      '  ACESSO84 = :ACESSO84,'
      '  ACESSO85 = :ACESSO85,'
      '  ACESSO86 = :ACESSO86,'
      '  ACESSO87 = :ACESSO87,'
      '  ACESSO88 = :ACESSO88,'
      '  ACESSO89 = :ACESSO89,'
      '  ACESSO9 = :ACESSO9,'
      '  ACESSO90 = :ACESSO90,'
      '  ACESSO91 = :ACESSO91,'
      '  ACESSO92 = :ACESSO92,'
      '  ACESSO93 = :ACESSO93,'
      '  ACESSO94 = :ACESSO94,'
      '  ACESSO95 = :ACESSO95,'
      '  ACESSO96 = :ACESSO96,'
      '  ACESSO97 = :ACESSO97,'
      '  ACESSO98 = :ACESSO98,'
      '  ACESSO99 = :ACESSO99,'
      '  ADM = :ADM,'
      '  ID_USUARIOS = :ID_USUARIOS,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  USUARIO = :USUARIO'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    ParamCheck = True
    UniDirectional = False
    Left = 456
    Top = 48
    object tblUsuarioID_USUARIOS: TIntegerField
      FieldName = 'ID_USUARIOS'
      Origin = '"USUARIOS"."ID_USUARIOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblUsuarioUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIOS"."USUARIO"'
      Required = True
      Size = 50
    end
    object tblUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object tblUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Required = True
      Size = 10
    end
    object tblUsuarioADM: TIBStringField
      FieldName = 'ADM'
      Origin = '"USUARIOS"."ADM"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO1: TIBStringField
      FieldName = 'ACESSO1'
      Origin = '"USUARIOS"."ACESSO1"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO2: TIBStringField
      FieldName = 'ACESSO2'
      Origin = '"USUARIOS"."ACESSO2"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO3: TIBStringField
      FieldName = 'ACESSO3'
      Origin = '"USUARIOS"."ACESSO3"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO4: TIBStringField
      FieldName = 'ACESSO4'
      Origin = '"USUARIOS"."ACESSO4"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO5: TIBStringField
      FieldName = 'ACESSO5'
      Origin = '"USUARIOS"."ACESSO5"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO6: TIBStringField
      FieldName = 'ACESSO6'
      Origin = '"USUARIOS"."ACESSO6"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO7: TIBStringField
      FieldName = 'ACESSO7'
      Origin = '"USUARIOS"."ACESSO7"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO8: TIBStringField
      FieldName = 'ACESSO8'
      Origin = '"USUARIOS"."ACESSO8"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO9: TIBStringField
      FieldName = 'ACESSO9'
      Origin = '"USUARIOS"."ACESSO9"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO10: TIBStringField
      FieldName = 'ACESSO10'
      Origin = '"USUARIOS"."ACESSO10"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO11: TIBStringField
      FieldName = 'ACESSO11'
      Origin = '"USUARIOS"."ACESSO11"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO12: TIBStringField
      FieldName = 'ACESSO12'
      Origin = '"USUARIOS"."ACESSO12"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO13: TIBStringField
      FieldName = 'ACESSO13'
      Origin = '"USUARIOS"."ACESSO13"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO14: TIBStringField
      FieldName = 'ACESSO14'
      Origin = '"USUARIOS"."ACESSO14"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO15: TIBStringField
      FieldName = 'ACESSO15'
      Origin = '"USUARIOS"."ACESSO15"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO16: TIBStringField
      FieldName = 'ACESSO16'
      Origin = '"USUARIOS"."ACESSO16"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO17: TIBStringField
      FieldName = 'ACESSO17'
      Origin = '"USUARIOS"."ACESSO17"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO18: TIBStringField
      FieldName = 'ACESSO18'
      Origin = '"USUARIOS"."ACESSO18"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO19: TIBStringField
      FieldName = 'ACESSO19'
      Origin = '"USUARIOS"."ACESSO19"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO20: TIBStringField
      FieldName = 'ACESSO20'
      Origin = '"USUARIOS"."ACESSO20"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO21: TIBStringField
      FieldName = 'ACESSO21'
      Origin = '"USUARIOS"."ACESSO21"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO22: TIBStringField
      FieldName = 'ACESSO22'
      Origin = '"USUARIOS"."ACESSO22"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO23: TIBStringField
      FieldName = 'ACESSO23'
      Origin = '"USUARIOS"."ACESSO23"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO24: TIBStringField
      FieldName = 'ACESSO24'
      Origin = '"USUARIOS"."ACESSO24"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO25: TIBStringField
      FieldName = 'ACESSO25'
      Origin = '"USUARIOS"."ACESSO25"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO26: TIBStringField
      FieldName = 'ACESSO26'
      Origin = '"USUARIOS"."ACESSO26"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO27: TIBStringField
      FieldName = 'ACESSO27'
      Origin = '"USUARIOS"."ACESSO27"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO28: TIBStringField
      FieldName = 'ACESSO28'
      Origin = '"USUARIOS"."ACESSO28"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO29: TIBStringField
      FieldName = 'ACESSO29'
      Origin = '"USUARIOS"."ACESSO29"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO30: TIBStringField
      FieldName = 'ACESSO30'
      Origin = '"USUARIOS"."ACESSO30"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO31: TIBStringField
      FieldName = 'ACESSO31'
      Origin = '"USUARIOS"."ACESSO31"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO32: TIBStringField
      FieldName = 'ACESSO32'
      Origin = '"USUARIOS"."ACESSO32"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO33: TIBStringField
      FieldName = 'ACESSO33'
      Origin = '"USUARIOS"."ACESSO33"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO34: TIBStringField
      FieldName = 'ACESSO34'
      Origin = '"USUARIOS"."ACESSO34"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO35: TIBStringField
      FieldName = 'ACESSO35'
      Origin = '"USUARIOS"."ACESSO35"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO36: TIBStringField
      FieldName = 'ACESSO36'
      Origin = '"USUARIOS"."ACESSO36"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO37: TIBStringField
      FieldName = 'ACESSO37'
      Origin = '"USUARIOS"."ACESSO37"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO38: TIBStringField
      FieldName = 'ACESSO38'
      Origin = '"USUARIOS"."ACESSO38"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO39: TIBStringField
      FieldName = 'ACESSO39'
      Origin = '"USUARIOS"."ACESSO39"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO40: TIBStringField
      FieldName = 'ACESSO40'
      Origin = '"USUARIOS"."ACESSO40"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO41: TIBStringField
      FieldName = 'ACESSO41'
      Origin = '"USUARIOS"."ACESSO41"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO42: TIBStringField
      FieldName = 'ACESSO42'
      Origin = '"USUARIOS"."ACESSO42"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO43: TIBStringField
      FieldName = 'ACESSO43'
      Origin = '"USUARIOS"."ACESSO43"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO44: TIBStringField
      FieldName = 'ACESSO44'
      Origin = '"USUARIOS"."ACESSO44"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO45: TIBStringField
      FieldName = 'ACESSO45'
      Origin = '"USUARIOS"."ACESSO45"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO46: TIBStringField
      FieldName = 'ACESSO46'
      Origin = '"USUARIOS"."ACESSO46"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO47: TIBStringField
      FieldName = 'ACESSO47'
      Origin = '"USUARIOS"."ACESSO47"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO48: TIBStringField
      FieldName = 'ACESSO48'
      Origin = '"USUARIOS"."ACESSO48"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO49: TIBStringField
      FieldName = 'ACESSO49'
      Origin = '"USUARIOS"."ACESSO49"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO50: TIBStringField
      FieldName = 'ACESSO50'
      Origin = '"USUARIOS"."ACESSO50"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO51: TIBStringField
      FieldName = 'ACESSO51'
      Origin = '"USUARIOS"."ACESSO51"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO52: TIBStringField
      FieldName = 'ACESSO52'
      Origin = '"USUARIOS"."ACESSO52"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO53: TIBStringField
      FieldName = 'ACESSO53'
      Origin = '"USUARIOS"."ACESSO53"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO54: TIBStringField
      FieldName = 'ACESSO54'
      Origin = '"USUARIOS"."ACESSO54"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO55: TIBStringField
      FieldName = 'ACESSO55'
      Origin = '"USUARIOS"."ACESSO55"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO56: TIBStringField
      FieldName = 'ACESSO56'
      Origin = '"USUARIOS"."ACESSO56"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO57: TIBStringField
      FieldName = 'ACESSO57'
      Origin = '"USUARIOS"."ACESSO57"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO58: TIBStringField
      FieldName = 'ACESSO58'
      Origin = '"USUARIOS"."ACESSO58"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO59: TIBStringField
      FieldName = 'ACESSO59'
      Origin = '"USUARIOS"."ACESSO59"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO60: TIBStringField
      FieldName = 'ACESSO60'
      Origin = '"USUARIOS"."ACESSO60"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO61: TIBStringField
      FieldName = 'ACESSO61'
      Origin = '"USUARIOS"."ACESSO61"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO62: TIBStringField
      FieldName = 'ACESSO62'
      Origin = '"USUARIOS"."ACESSO62"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO63: TIBStringField
      FieldName = 'ACESSO63'
      Origin = '"USUARIOS"."ACESSO63"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO64: TIBStringField
      FieldName = 'ACESSO64'
      Origin = '"USUARIOS"."ACESSO64"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO65: TIBStringField
      FieldName = 'ACESSO65'
      Origin = '"USUARIOS"."ACESSO65"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO66: TIBStringField
      FieldName = 'ACESSO66'
      Origin = '"USUARIOS"."ACESSO66"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO67: TIBStringField
      FieldName = 'ACESSO67'
      Origin = '"USUARIOS"."ACESSO67"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO68: TIBStringField
      FieldName = 'ACESSO68'
      Origin = '"USUARIOS"."ACESSO68"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO69: TIBStringField
      FieldName = 'ACESSO69'
      Origin = '"USUARIOS"."ACESSO69"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO70: TIBStringField
      FieldName = 'ACESSO70'
      Origin = '"USUARIOS"."ACESSO70"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO71: TIBStringField
      FieldName = 'ACESSO71'
      Origin = '"USUARIOS"."ACESSO71"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO72: TIBStringField
      FieldName = 'ACESSO72'
      Origin = '"USUARIOS"."ACESSO72"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO73: TIBStringField
      FieldName = 'ACESSO73'
      Origin = '"USUARIOS"."ACESSO73"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO74: TIBStringField
      FieldName = 'ACESSO74'
      Origin = '"USUARIOS"."ACESSO74"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO75: TIBStringField
      FieldName = 'ACESSO75'
      Origin = '"USUARIOS"."ACESSO75"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO76: TIBStringField
      FieldName = 'ACESSO76'
      Origin = '"USUARIOS"."ACESSO76"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO77: TIBStringField
      FieldName = 'ACESSO77'
      Origin = '"USUARIOS"."ACESSO77"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO78: TIBStringField
      FieldName = 'ACESSO78'
      Origin = '"USUARIOS"."ACESSO78"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO79: TIBStringField
      FieldName = 'ACESSO79'
      Origin = '"USUARIOS"."ACESSO79"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO80: TIBStringField
      FieldName = 'ACESSO80'
      Origin = '"USUARIOS"."ACESSO80"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO81: TIBStringField
      FieldName = 'ACESSO81'
      Origin = '"USUARIOS"."ACESSO81"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO82: TIBStringField
      FieldName = 'ACESSO82'
      Origin = '"USUARIOS"."ACESSO82"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO83: TIBStringField
      FieldName = 'ACESSO83'
      Origin = '"USUARIOS"."ACESSO83"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO84: TIBStringField
      FieldName = 'ACESSO84'
      Origin = '"USUARIOS"."ACESSO84"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO85: TIBStringField
      FieldName = 'ACESSO85'
      Origin = '"USUARIOS"."ACESSO85"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO86: TIBStringField
      FieldName = 'ACESSO86'
      Origin = '"USUARIOS"."ACESSO86"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO87: TIBStringField
      FieldName = 'ACESSO87'
      Origin = '"USUARIOS"."ACESSO87"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO88: TIBStringField
      FieldName = 'ACESSO88'
      Origin = '"USUARIOS"."ACESSO88"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO89: TIBStringField
      FieldName = 'ACESSO89'
      Origin = '"USUARIOS"."ACESSO89"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO90: TIBStringField
      FieldName = 'ACESSO90'
      Origin = '"USUARIOS"."ACESSO90"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO91: TIBStringField
      FieldName = 'ACESSO91'
      Origin = '"USUARIOS"."ACESSO91"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO92: TIBStringField
      FieldName = 'ACESSO92'
      Origin = '"USUARIOS"."ACESSO92"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO93: TIBStringField
      FieldName = 'ACESSO93'
      Origin = '"USUARIOS"."ACESSO93"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO94: TIBStringField
      FieldName = 'ACESSO94'
      Origin = '"USUARIOS"."ACESSO94"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO95: TIBStringField
      FieldName = 'ACESSO95'
      Origin = '"USUARIOS"."ACESSO95"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO96: TIBStringField
      FieldName = 'ACESSO96'
      Origin = '"USUARIOS"."ACESSO96"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO97: TIBStringField
      FieldName = 'ACESSO97'
      Origin = '"USUARIOS"."ACESSO97"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO98: TIBStringField
      FieldName = 'ACESSO98'
      Origin = '"USUARIOS"."ACESSO98"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO99: TIBStringField
      FieldName = 'ACESSO99'
      Origin = '"USUARIOS"."ACESSO99"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO100: TIBStringField
      FieldName = 'ACESSO100'
      Origin = '"USUARIOS"."ACESSO100"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO101: TIBStringField
      FieldName = 'ACESSO101'
      Origin = '"USUARIOS"."ACESSO101"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO102: TIBStringField
      FieldName = 'ACESSO102'
      Origin = '"USUARIOS"."ACESSO102"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO103: TIBStringField
      FieldName = 'ACESSO103'
      Origin = '"USUARIOS"."ACESSO103"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO104: TIBStringField
      FieldName = 'ACESSO104'
      Origin = '"USUARIOS"."ACESSO104"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO105: TIBStringField
      FieldName = 'ACESSO105'
      Origin = '"USUARIOS"."ACESSO105"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO106: TIBStringField
      FieldName = 'ACESSO106'
      Origin = '"USUARIOS"."ACESSO106"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO107: TIBStringField
      FieldName = 'ACESSO107'
      Origin = '"USUARIOS"."ACESSO107"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO108: TIBStringField
      FieldName = 'ACESSO108'
      Origin = '"USUARIOS"."ACESSO108"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO109: TIBStringField
      FieldName = 'ACESSO109'
      Origin = '"USUARIOS"."ACESSO109"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO110: TIBStringField
      FieldName = 'ACESSO110'
      Origin = '"USUARIOS"."ACESSO110"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO111: TIBStringField
      FieldName = 'ACESSO111'
      Origin = '"USUARIOS"."ACESSO111"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO112: TIBStringField
      FieldName = 'ACESSO112'
      Origin = '"USUARIOS"."ACESSO112"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO113: TIBStringField
      FieldName = 'ACESSO113'
      Origin = '"USUARIOS"."ACESSO113"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO114: TIBStringField
      FieldName = 'ACESSO114'
      Origin = '"USUARIOS"."ACESSO114"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO115: TIBStringField
      FieldName = 'ACESSO115'
      Origin = '"USUARIOS"."ACESSO115"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO116: TIBStringField
      FieldName = 'ACESSO116'
      Origin = '"USUARIOS"."ACESSO116"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO117: TIBStringField
      FieldName = 'ACESSO117'
      Origin = '"USUARIOS"."ACESSO117"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO118: TIBStringField
      FieldName = 'ACESSO118'
      Origin = '"USUARIOS"."ACESSO118"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO119: TIBStringField
      FieldName = 'ACESSO119'
      Origin = '"USUARIOS"."ACESSO119"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO120: TIBStringField
      FieldName = 'ACESSO120'
      Origin = '"USUARIOS"."ACESSO120"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO121: TIBStringField
      FieldName = 'ACESSO121'
      Origin = '"USUARIOS"."ACESSO121"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO122: TIBStringField
      FieldName = 'ACESSO122'
      Origin = '"USUARIOS"."ACESSO122"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO123: TIBStringField
      FieldName = 'ACESSO123'
      Origin = '"USUARIOS"."ACESSO123"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO124: TIBStringField
      FieldName = 'ACESSO124'
      Origin = '"USUARIOS"."ACESSO124"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO125: TIBStringField
      FieldName = 'ACESSO125'
      Origin = '"USUARIOS"."ACESSO125"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO126: TIBStringField
      FieldName = 'ACESSO126'
      Origin = '"USUARIOS"."ACESSO126"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO127: TIBStringField
      FieldName = 'ACESSO127'
      Origin = '"USUARIOS"."ACESSO127"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO128: TIBStringField
      FieldName = 'ACESSO128'
      Origin = '"USUARIOS"."ACESSO128"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO129: TIBStringField
      FieldName = 'ACESSO129'
      Origin = '"USUARIOS"."ACESSO129"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO130: TIBStringField
      FieldName = 'ACESSO130'
      Origin = '"USUARIOS"."ACESSO130"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO131: TIBStringField
      FieldName = 'ACESSO131'
      Origin = '"USUARIOS"."ACESSO131"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO132: TIBStringField
      FieldName = 'ACESSO132'
      Origin = '"USUARIOS"."ACESSO132"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO133: TIBStringField
      FieldName = 'ACESSO133'
      Origin = '"USUARIOS"."ACESSO133"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO134: TIBStringField
      FieldName = 'ACESSO134'
      Origin = '"USUARIOS"."ACESSO134"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO135: TIBStringField
      FieldName = 'ACESSO135'
      Origin = '"USUARIOS"."ACESSO135"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO136: TIBStringField
      FieldName = 'ACESSO136'
      Origin = '"USUARIOS"."ACESSO136"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO137: TIBStringField
      FieldName = 'ACESSO137'
      Origin = '"USUARIOS"."ACESSO137"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO138: TIBStringField
      FieldName = 'ACESSO138'
      Origin = '"USUARIOS"."ACESSO138"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO139: TIBStringField
      FieldName = 'ACESSO139'
      Origin = '"USUARIOS"."ACESSO139"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO140: TIBStringField
      FieldName = 'ACESSO140'
      Origin = '"USUARIOS"."ACESSO140"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO141: TIBStringField
      FieldName = 'ACESSO141'
      Origin = '"USUARIOS"."ACESSO141"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO142: TIBStringField
      FieldName = 'ACESSO142'
      Origin = '"USUARIOS"."ACESSO142"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO143: TIBStringField
      FieldName = 'ACESSO143'
      Origin = '"USUARIOS"."ACESSO143"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO144: TIBStringField
      FieldName = 'ACESSO144'
      Origin = '"USUARIOS"."ACESSO144"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO145: TIBStringField
      FieldName = 'ACESSO145'
      Origin = '"USUARIOS"."ACESSO145"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO146: TIBStringField
      FieldName = 'ACESSO146'
      Origin = '"USUARIOS"."ACESSO146"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO147: TIBStringField
      FieldName = 'ACESSO147'
      Origin = '"USUARIOS"."ACESSO147"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO148: TIBStringField
      FieldName = 'ACESSO148'
      Origin = '"USUARIOS"."ACESSO148"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO149: TIBStringField
      FieldName = 'ACESSO149'
      Origin = '"USUARIOS"."ACESSO149"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO150: TIBStringField
      FieldName = 'ACESSO150'
      Origin = '"USUARIOS"."ACESSO150"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO151: TIBStringField
      FieldName = 'ACESSO151'
      Origin = '"USUARIOS"."ACESSO151"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO152: TIBStringField
      FieldName = 'ACESSO152'
      Origin = '"USUARIOS"."ACESSO152"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO153: TIBStringField
      FieldName = 'ACESSO153'
      Origin = '"USUARIOS"."ACESSO153"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO154: TIBStringField
      FieldName = 'ACESSO154'
      Origin = '"USUARIOS"."ACESSO154"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO155: TIBStringField
      FieldName = 'ACESSO155'
      Origin = '"USUARIOS"."ACESSO155"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO156: TIBStringField
      FieldName = 'ACESSO156'
      Origin = '"USUARIOS"."ACESSO156"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO157: TIBStringField
      FieldName = 'ACESSO157'
      Origin = '"USUARIOS"."ACESSO157"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO158: TIBStringField
      FieldName = 'ACESSO158'
      Origin = '"USUARIOS"."ACESSO158"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO159: TIBStringField
      FieldName = 'ACESSO159'
      Origin = '"USUARIOS"."ACESSO159"'
      FixedChar = True
      Size = 1
    end
    object tblUsuarioACESSO160: TIBStringField
      FieldName = 'ACESSO160'
      Origin = '"USUARIOS"."ACESSO160"'
      FixedChar = True
      Size = 1
    end
  end
end
