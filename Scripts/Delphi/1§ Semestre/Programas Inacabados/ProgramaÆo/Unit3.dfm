object Form3: TForm3
  Left = 279
  Top = 124
  Width = 626
  Height = 209
  Caption = 'Onibus'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 144
    Top = 8
    Width = 23
    Height = 13
    Caption = 'ANO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 64
    Height = 13
    Caption = 'COMPANHIA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 144
    Top = 88
    Width = 58
    Height = 13
    Caption = 'ASSENTOS'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = DM.DSONI
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 24
    Width = 134
    Height = 21
    DataField = 'ANO'
    DataSource = DM.DSONI
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 64
    Width = 273
    Height = 21
    DataField = 'NOME'
    DataSource = DM.DSONI
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 104
    Width = 105
    Height = 21
    DataField = 'COMPANHIA'
    DataSource = DM.DSONI
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 288
    Top = 0
    Width = 320
    Height = 161
    DataSource = DM.DSONI
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 136
    Width = 270
    Height = 25
    DataSource = DM.DSONI
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ASSENTOS'
    DataSource = DM.DSONI
    TabOrder = 6
  end
end
