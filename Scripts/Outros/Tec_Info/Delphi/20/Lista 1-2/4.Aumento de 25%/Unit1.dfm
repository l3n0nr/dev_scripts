object Form1: TForm1
  Left = 451
  Top = 329
  Width = 229
  Height = 108
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
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Antigo Salario'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 42
    Height = 13
    Caption = 'Aumento'
  end
  object Edit1: TEdit
    Left = 80
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 32
    Width = 49
    Height = 33
    Caption = '+25%'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 2
  end
end
