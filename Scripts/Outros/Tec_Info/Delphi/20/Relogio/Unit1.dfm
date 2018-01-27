object Form1: TForm1
  Left = 257
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '                    Relogio'
  ClientHeight = 49
  ClientWidth = 178
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 25
    TabOrder = 0
  end
  object Button3: TButton
    Left = 0
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 88
    Top = 128
  end
end
