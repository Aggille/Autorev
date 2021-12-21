object BoxSenha: TBoxSenha
  Left = 15
  Top = 85
  Caption = 'Senha'
  ClientHeight = 150
  ClientWidth = 208
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 131
    Width = 208
    Height = 19
    Panels = <>
    ExplicitTop = 104
    ExplicitWidth = 196
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 208
    Height = 131
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 196
    ExplicitHeight = 104
    object LabelSenha: TLabel
      Left = 16
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Nova senha:'
    end
    object LabelLogin: TLabel
      Left = 16
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Login:'
    end
    object Label1: TLabel
      Left = 16
      Top = 70
      Width = 71
      Height = 13
      Caption = 'Repetir senha:'
    end
    object EditSenha: TEdit
      Left = 96
      Top = 40
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 0
      Text = 'EDITSENHA'
    end
    object BtnConfirma: TBitBtn
      Left = 16
      Top = 94
      Width = 177
      Height = 26
      Caption = 'Confirma nova senha'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnConfirmaClick
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
    object DBEditLogin: TDBEdit
      Left = 96
      Top = 13
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object EditSenha1: TEdit
      Left = 96
      Top = 67
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 1
      Text = 'EDITSENHA'
    end
  end
  object tblUsuario: TIBDataSet
    Database = FDB1.IBDatabase
    Transaction = FDB1.IBTransaction
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
      '   LOGIN, SENHA, TROCAR_SENHA, USUARIO)'
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
      '   :SENHA, :TROCAR_SENHA, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIOS,'
      '  USUARIO,'
      '  LOGIN,'
      '  SENHA,'
      '  ADM,'
      '  TROCAR_SENHA,'
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
      '  TROCAR_SENHA = :TROCAR_SENHA,'
      '  USUARIO = :USUARIO'
      'where'
      '  ID_USUARIOS = :OLD_ID_USUARIOS')
    Left = 136
    Top = 40
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
    object tblUsuarioTROCAR_SENHA: TIBStringField
      FieldName = 'TROCAR_SENHA'
      Origin = '"USUARIOS"."TROCAR_SENHA"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tblUsuario
    Left = 168
    Top = 40
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 152
    Top = 8
  end
end
