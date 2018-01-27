object Form1: TForm1
  Left = 260
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 148
  ClientWidth = 194
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
    Top = 16
    Width = 57
    Height = 13
    Caption = 'NUMERO 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 57
    Height = 13
    Caption = 'NUMERO 2'
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 8
    Top = 96
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 56
    Width = 185
    Height = 33
    Caption = 'CALCULAR'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 120
    Width = 89
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 120
    Width = 91
    Height = 25
    Caption = 'SAIR'
    TabOrder = 5
    OnClick = Button3Click
  end
end
