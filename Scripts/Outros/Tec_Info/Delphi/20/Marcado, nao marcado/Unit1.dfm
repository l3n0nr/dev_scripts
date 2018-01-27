object Form1: TForm1
  Left = 204
  Top = 129
  Width = 312
  Height = 235
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
  object CheckBox1: TCheckBox
    Left = 40
    Top = 64
    Width = 193
    Height = 17
    Caption = 'CheckBox1'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 40
    Top = 96
    Width = 193
    Height = 17
    AllowGrayed = True
    Caption = 'CheckBox2'
    TabOrder = 1
    OnClick = CheckBox2Click
  end
end
