object Form4: TForm4
  Left = 927
  Top = 125
  Width = 403
  Height = 248
  Caption = 'Passageiros'
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
    Left = 88
    Top = 8
    Width = 16
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 232
    Top = 8
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 24
    Width = 134
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 232
    Top = 24
    Width = 145
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 48
    Width = 360
    Height = 25
    DataSource = DM.DSPAS
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 385
    Height = 120
    DataSource = DM.DSPAS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 24
    Width = 73
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = DM.IBTPAS
    Left = 248
    Top = 184
  end
end
