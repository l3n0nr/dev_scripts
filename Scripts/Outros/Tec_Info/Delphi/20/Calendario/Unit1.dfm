object Form1: TForm1
  Left = 1153
  Top = 263
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Calendario '
  ClientHeight = 247
  ClientWidth = 410
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 177
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 16
      Height = 13
      Caption = 'Dia'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 22
      Height = 13
      Caption = 'Ano '
    end
    object Label7: TLabel
      Left = 336
      Top = 40
      Width = 27
      Height = 13
      Caption = 'Idade'
    end
    object Label8: TLabel
      Left = 336
      Top = 72
      Width = 27
      Height = 13
      Caption = 'Signo'
    end
    object Label9: TLabel
      Left = 64
      Top = 152
      Width = 21
      Height = 13
      Caption = 'Dias'
    end
    object Label10: TLabel
      Left = 176
      Top = 152
      Width = 31
      Height = 13
      Caption = 'Meses'
    end
    object Label11: TLabel
      Left = 296
      Top = 152
      Width = 27
      Height = 13
      Caption = 'Anos '
    end
    object Label12: TLabel
      Left = 16
      Top = 16
      Width = 82
      Height = 13
      Caption = 'Data Nascimento'
    end
    object Label13: TLabel
      Left = 104
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Ano Atual'
    end
    object Label14: TLabel
      Left = 336
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Dias Do Mes'
    end
    object Edit9: TEdit
      Left = 240
      Top = 96
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 48
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 48
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 48
      Top = 96
      Width = 49
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 104
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 104
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 104
      Top = 96
      Width = 49
      Height = 21
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 240
      Top = 32
      Width = 89
      Height = 21
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 240
      Top = 64
      Width = 89
      Height = 21
      TabOrder = 8
    end
    object Edit10: TEdit
      Left = 288
      Top = 128
      Width = 41
      Height = 21
      TabOrder = 9
    end
    object Edit11: TEdit
      Left = 56
      Top = 128
      Width = 33
      Height = 21
      TabOrder = 10
    end
    object Edit12: TEdit
      Left = 176
      Top = 128
      Width = 33
      Height = 21
      TabOrder = 11
    end
    object Button1: TButton
      Left = 160
      Top = 32
      Width = 75
      Height = 89
      Caption = 'Calcular'
      TabOrder = 12
      OnClick = Button1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 184
    Width = 409
    Height = 49
    TabOrder = 1
    object Button9: TButton
      Left = 216
      Top = 16
      Width = 193
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button9Click
    end
    object Button8: TButton
      Left = 0
      Top = 16
      Width = 201
      Height = 25
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = Button8Click
    end
  end
end
