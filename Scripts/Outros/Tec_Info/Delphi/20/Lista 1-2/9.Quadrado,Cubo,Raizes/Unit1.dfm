object Form1: TForm1
  Left = 705
  Top = 417
  Width = 245
  Height = 252
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
    Left = 24
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 47
    Height = 13
    Caption = 'Quadrado'
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 25
    Height = 13
    Caption = 'Cubo'
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 71
    Height = 13
    Caption = 'Raiz Quadrada'
  end
  object Label5: TLabel
    Left = 8
    Top = 184
    Width = 57
    Height = 13
    Caption = 'Raiz Cubica'
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 88
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 16
    Top = 40
    Width = 193
    Height = 33
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = Button1Click
  end
end
