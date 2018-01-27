object Form1: TForm1
  Left = 482
  Top = 310
  Width = 228
  Height = 214
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
    Top = 16
    Width = 42
    Height = 13
    Caption = 'Deposito'
  end
  object Label2: TLabel
    Left = 0
    Top = 48
    Width = 64
    Height = 13
    Caption = 'Taxa de juros'
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 57
    Height = 13
    Caption = 'Rendimento'
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 47
    Height = 13
    Caption = 'Valor total'
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
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 72
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 72
    Top = 64
    Width = 121
    Height = 41
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = Button1Click
  end
end
