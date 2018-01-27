object Form6: TForm6
  Left = 994
  Top = 145
  Width = 232
  Height = 198
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario de Produtos'
  Color = clActiveCaption
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
    Left = 112
    Top = 8
    Width = 89
    Height = 13
    Caption = 'PRECO_COMPRA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 112
    Top = 48
    Width = 59
    Height = 13
    Caption = 'COD_FORN'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 100
    Height = 21
    DataField = 'COD_PRO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 100
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 24
    Width = 100
    Height = 21
    DataField = 'PRECO_COMPRA'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 64
    Width = 97
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 128
    Width = 200
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 96
    Width = 201
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    KeyField = 'COD_FORN'
    ListField = 'NOME'
    ListSource = DataSource2
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = DM.IBT0
    Left = 240
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = DM.IBT
    Left = 280
    Top = 24
  end
  object XPManifest1: TXPManifest
    Left = 88
    Top = 8
  end
end
