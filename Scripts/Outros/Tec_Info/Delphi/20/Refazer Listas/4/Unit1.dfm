object Form1: TForm1
  Left = 632
  Top = 445
  Width = 254
  Height = 225
  Caption = 'Form1'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 65
    Height = 13
    Caption = 'Antigo Salario'
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 42
    Height = 13
    Caption = 'Aumento'
  end
  object Label3: TLabel
    Left = 32
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Vezes'
  end
  object Edit1: TEdit
    Left = 80
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 104
    Width = 49
    Height = 33
    Caption = '+25%'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 104
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 72
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 72
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '0'
  end
end
