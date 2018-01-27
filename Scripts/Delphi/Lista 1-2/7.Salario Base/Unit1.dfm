object Form1: TForm1
  Left = 209
  Top = 189
  Width = 218
  Height = 156
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
    Left = 8
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 57
    Height = 13
    Caption = 'Salario Final'
  end
  object Edit1: TEdit
    Left = 48
    Top = 16
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 80
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 48
    Width = 177
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
