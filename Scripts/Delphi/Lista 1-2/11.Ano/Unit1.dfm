object Form1: TForm1
  Left = 1556
  Top = 395
  Width = 275
  Height = 187
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Nascimento'
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 46
    Height = 13
    Caption = 'Ano Atual'
  end
  object Label3: TLabel
    Left = 160
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Idade'
  end
  object Label4: TLabel
    Left = 160
    Top = 88
    Width = 71
    Height = 13
    Caption = 'Idade em 2017'
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 80
    Top = 40
    Width = 75
    Height = 49
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 160
    Top = 40
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 160
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 4
  end
end
