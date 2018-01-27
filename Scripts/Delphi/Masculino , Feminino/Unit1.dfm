object Form1: TForm1
  Left = 586
  Top = 300
  Width = 247
  Height = 167
  Caption = 'Form1'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Genero'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Masculino'
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Feminino'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
end
