object Form3: TForm3
  Left = 354
  Top = 547
  Width = 498
  Height = 336
  Caption = 'Form3'
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
    Width = 52
    Height = 13
    Caption = 'COD_PRO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 152
    Top = 8
    Width = 89
    Height = 13
    Caption = 'PRECO_COMPRA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 152
    Top = 48
    Width = 59
    Height = 13
    Caption = 'COD_FORN'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'COD_PRO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 137
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 24
    Width = 129
    Height = 21
    DataField = 'PRECO_COMPRA'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 64
    Width = 134
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 281
    Height = 161
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 88
    Width = 280
    Height = 33
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 296
    Top = 64
    Width = 145
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    ListField = 'COD_FORN'
    ListSource = DataSource1
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = DM.IBT0
    Left = 352
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = DM.IBT
    Left = 320
    Top = 144
  end
end
