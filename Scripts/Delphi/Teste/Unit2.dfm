object Form2: TForm2
  Left = 250
  Top = 258
  Width = 319
  Height = 178
  Caption = 'Nivel 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 40
    Width = 3
    Height = 13
    Caption = '-'
  end
  object Label3: TLabel
    Left = 104
    Top = 40
    Width = 6
    Height = 13
    Caption = '3'
  end
  object Label5: TLabel
    Left = 56
    Top = 64
    Width = 6
    Height = 13
    Caption = '+'
  end
  object Label6: TLabel
    Left = 104
    Top = 64
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label8: TLabel
    Left = 56
    Top = 88
    Width = 6
    Height = 13
    Caption = '+'
  end
  object Label9: TLabel
    Left = 104
    Top = 88
    Width = 6
    Height = 13
    Caption = '5'
  end
  object Label11: TLabel
    Left = 56
    Top = 112
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label12: TLabel
    Left = 96
    Top = 112
    Width = 18
    Height = 13
    Caption = '100'
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 6
    Height = 13
    Caption = '9'
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label7: TLabel
    Left = 8
    Top = 88
    Width = 6
    Height = 13
    Caption = '4'
  end
  object Label10: TLabel
    Left = 8
    Top = 112
    Width = 12
    Height = 13
    Caption = '10'
  end
  object Button1: TButton
    Left = 128
    Top = 40
    Width = 41
    Height = 89
    Caption = '='
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 177
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 177
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 177
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button8: TButton
    Left = 0
    Top = 0
    Width = 105
    Height = 17
    Cursor = crHandPoint
    Caption = 'Limpar A'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button9: TButton
    Left = 104
    Top = 0
    Width = 97
    Height = 17
    Caption = 'Limpar B'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button10: TButton
    Left = 200
    Top = 0
    Width = 97
    Height = 17
    Caption = 'Limpar C'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button11: TButton
    Left = 128
    Top = 16
    Width = 113
    Height = 17
    Caption = 'Limpar Todos'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button12: TButton
    Left = 240
    Top = 16
    Width = 57
    Height = 17
    Cursor = crCross
    Caption = 'Sair'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button13: TButton
    Left = 0
    Top = 16
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'Limpar D'
    TabOrder = 10
    OnClick = Button2Click
  end
end
