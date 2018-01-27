object Form1: TForm1
  Left = 626
  Top = 235
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 125
  ClientWidth = 170
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
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'RAIO'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 29
    Height = 13
    Caption = 'AREA'
  end
  object Button1: TButton
    Left = 8
    Top = 32
    Width = 153
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 48
    Top = 64
    Width = 113
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 88
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = Button3Click
  end
end
