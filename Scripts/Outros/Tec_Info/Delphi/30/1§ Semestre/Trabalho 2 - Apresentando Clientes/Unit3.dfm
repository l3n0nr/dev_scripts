object Form3: TForm3
  Left = 396
  Top = 391
  Width = 250
  Height = 139
  Caption = 'Genero'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 0
    Width = 217
    Height = 65
    Columns = 3
    Items.Strings = (
      'Codigo'
      'Sexo'
      'Idade'
      'Nome'
      'Cidade')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 72
    Width = 81
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 3
  end
end
