object Form1: TForm1
  Left = 1379
  Top = 450
  Width = 327
  Height = 191
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
    Left = 48
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Primeiro numero'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Segundo numero'
  end
  object Label3: TLabel
    Left = 112
    Top = 128
    Width = 91
    Height = 13
    Caption = 'Primeiro x Segundo'
  end
  object Edit1: TEdit
    Left = 48
    Top = 24
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 24
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 48
    Top = 48
    Width = 201
    Height = 41
    Caption = 'Elevar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 48
    Top = 96
    Width = 201
    Height = 25
    TabOrder = 3
  end
end
