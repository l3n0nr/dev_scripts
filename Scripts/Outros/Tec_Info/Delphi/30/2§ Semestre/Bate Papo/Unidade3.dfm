object Cadastrar: TCadastrar
  Left = 223
  Top = 124
  Caption = 'Cadastrar'
  ClientHeight = 141
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 18
    Top = 16
    Width = 51
    Height = 18
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 224
    Top = 19
    Width = 49
    Height = 18
    Caption = 'Login:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 57
    Width = 56
    Height = 18
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 218
    Top = 57
    Width = 107
    Height = 18
    Caption = 'Confirma'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 75
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 108
    Width = 445
    Height = 25
    Caption = 'Cadastrar'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Modern'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 331
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 75
    Top = 58
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 331
    Top = 58
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object XPManifest1: TXPManifest
    Left = 240
    Top = 168
  end
end
