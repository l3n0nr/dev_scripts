object Form1: TForm1
  Left = 233
  Top = 322
  Width = 300
  Height = 239
  Caption = 'Aplica'#231#227'o 1'
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
    Top = 0
    Width = 74
    Height = 13
    Caption = 'COD_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 106
    Height = 13
    Caption = 'DATA_NASCIMENTO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 29
    Height = 13
    Caption = 'FONE'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 16
    Width = 265
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 56
    Width = 265
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 96
    Width = 265
    Height = 21
    DataField = 'DATA_NASCIMENTO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 136
    Width = 265
    Height = 21
    DataField = 'FONE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 168
    Width = 270
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = DM.IBTab1
    Left = 424
    Top = 304
  end
end
