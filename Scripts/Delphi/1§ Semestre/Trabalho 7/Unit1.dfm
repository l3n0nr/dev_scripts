object Form1: TForm1
  Left = 559
  Top = 586
  Width = 601
  Height = 397
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 569
    Height = 305
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 328
    Width = 560
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object XPManifest1: TXPManifest
    Left = 648
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = DM.IBTable1
    Left = 592
    Top = 24
  end
  object Timer1: TTimer
    Interval = 3200000
    OnTimer = Timer1Timer
    Left = 592
    Top = 56
  end
end
