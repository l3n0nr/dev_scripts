object Form1: TForm1
  Left = 232
  Top = 256
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vota'#231#227'o'
  ClientHeight = 72
  ClientWidth = 294
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
    Top = 8
    Width = 129
    Height = 13
    Caption = 'Numero Totais de Votantes'
  end
  object Edit1: TEdit
    Left = 144
    Top = 8
    Width = 145
    Height = 21
    Cursor = crIBeam
    TabOrder = 0
  end
  object Button7: TButton
    Left = 8
    Top = 40
    Width = 281
    Height = 25
    Caption = 'Confirmar Votantes'
    TabOrder = 1
    OnClick = Button7Click
  end
end
