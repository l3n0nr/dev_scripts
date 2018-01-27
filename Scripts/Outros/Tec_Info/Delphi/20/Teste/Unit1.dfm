object Form1: TForm1
  Left = 306
  Top = 121
  Width = 348
  Height = 135
  Caption = 'Nivel 1'
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
    Top = 24
    Width = 6
    Height = 13
    Caption = '2'
  end
  object Label2: TLabel
    Left = 56
    Top = 24
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label3: TLabel
    Left = 104
    Top = 24
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label4: TLabel
    Left = 8
    Top = 48
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label5: TLabel
    Left = 56
    Top = 48
    Width = 3
    Height = 13
    Caption = '-'
  end
  object Label6: TLabel
    Left = 104
    Top = 48
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label7: TLabel
    Left = 8
    Top = 72
    Width = 6
    Height = 13
    Caption = '7'
  end
  object Label8: TLabel
    Left = 56
    Top = 72
    Width = 6
    Height = 13
    Caption = '+'
  end
  object Label9: TLabel
    Left = 104
    Top = 72
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Button1: TButton
    Left = 128
    Top = 24
    Width = 41
    Height = 65
    Caption = '='
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 184
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button7: TButton
    Left = 0
    Top = 0
    Width = 73
    Height = 17
    Cursor = crHandPoint
    Caption = 'Limpar A'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button8: TButton
    Left = 72
    Top = 0
    Width = 65
    Height = 17
    Caption = 'Limpar B'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button9: TButton
    Left = 136
    Top = 0
    Width = 65
    Height = 17
    Caption = 'Limpar C'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button10: TButton
    Left = 198
    Top = 0
    Width = 75
    Height = 17
    Caption = 'Limpar Todos'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button11: TButton
    Left = 272
    Top = 0
    Width = 57
    Height = 17
    Cursor = crCross
    Caption = 'Sair'
    TabOrder = 8
    OnClick = Button6Click
  end
end
