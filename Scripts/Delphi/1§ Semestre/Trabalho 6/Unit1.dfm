object Form1: TForm1
  Left = 430
  Top = 366
  Width = 238
  Height = 220
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 72
    Top = 8
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 50
    Height = 13
    Caption = 'DT_NASC'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 104
    Top = 48
    Width = 38
    Height = 13
    Caption = 'COD_M'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 168
    Top = 48
    Width = 29
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 49
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 24
    Width = 137
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 64
    Width = 81
    Height = 21
    DataField = 'DT_NASC'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 64
    Width = 57
    Height = 21
    DataField = 'COD_MUNICIPIO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 168
    Top = 64
    Width = 33
    Height = 21
    DataField = 'SEXO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 96
    Width = 200
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object Button1: TButton
    Left = 48
    Top = 136
    Width = 129
    Height = 25
    Caption = 'Mestre - Detalhe'
    TabOrder = 6
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = dm.IBTCliente
    Left = 336
    Top = 224
  end
  object XPManifest1: TXPManifest
    Left = 536
  end
end
