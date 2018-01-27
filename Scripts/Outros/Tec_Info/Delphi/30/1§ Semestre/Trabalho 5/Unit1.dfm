object Form1: TForm1
  Left = 99
  Top = 12
  Caption = 'Calculadora'
  ClientHeight = 230
  ClientWidth = 560
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
    Left = 64
    Top = 184
    Width = 10
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 184
    Width = 10
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 272
    Top = 184
    Width = 10
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 368
    Top = 184
    Width = 20
    Height = 35
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 464
    Top = 184
    Width = 10
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RadioGroup2: TRadioGroup
    Left = 184
    Top = 0
    Width = 185
    Height = 105
    Cursor = crCross
    Caption = 'Calcular o Valor'
    Items.Strings = (
      '+'
      '-'
      'X'
      '/')
    TabOrder = 0
  end
  object RadioGroup3: TRadioGroup
    Left = 368
    Top = 0
    Width = 185
    Height = 169
    Cursor = crCross
    Caption = 'Segundo Valor'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 184
    Top = 104
    Width = 185
    Height = 65
    Cursor = crHandPoint
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 185
    Height = 169
    Cursor = crCross
    Caption = 'Primeiro Valor'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 32
    Top = 240
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Edit3: TEdit
    Left = 264
    Top = 240
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Edit4: TEdit
    Left = 432
    Top = 240
    Width = 57
    Height = 21
    TabOrder = 6
    Text = '0'
  end
end
