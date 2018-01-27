object Form1: TForm1
  Left = 334
  Top = 260
  Width = 245
  Height = 314
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
    Left = 16
    Top = 104
    Width = 59
    Height = 13
    Caption = 'Salario Atual'
  end
  object Label4: TLabel
    Left = 24
    Top = 176
    Width = 54
    Height = 13
    Caption = 'Salario final'
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Vezes'
  end
  object Edit1: TEdit
    Left = 88
    Top = 96
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 136
    Width = 57
    Height = 17
    Caption = 'Acrescimo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 88
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
end
