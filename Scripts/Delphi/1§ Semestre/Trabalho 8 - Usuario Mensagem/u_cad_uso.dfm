object FRM_USUARIO: TFRM_USUARIO
  Left = 757
  Top = 131
  Caption = 'CADASTRO DE USUARIO'
  ClientHeight = 138
  ClientWidth = 471
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
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 82
    Height = 13
    Caption = 'Nome do Usuario'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 108
    Height = 13
    Caption = 'Confirma'#231#227'o de Senha'
  end
  object Edit1: TEdit
    Left = 160
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 56
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 160
    Top = 80
    Width = 169
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 104
    Width = 113
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 368
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Avan'#231'ar'
    TabOrder = 5
    OnClick = Button1Click
  end
end
