object Form3: TForm3
  Left = 650
  Top = 357
  Width = 354
  Height = 510
  Caption = 'Formulario MESTRE - DETALHE '
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 208
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 200
    Top = 256
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 80
    Top = 256
    Width = 50
    Height = 13
    Caption = 'DT_NASC'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 192
    Top = 208
    Width = 38
    Height = 13
    Caption = 'COD_M'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 256
    Width = 29
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 13
    Caption = 'COD_MUNICIPIO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 152
    Top = 8
    Width = 62
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 224
    Width = 169
    Height = 21
    DataField = 'CODIGO'
    DataSource = dm.DSC
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 272
    Width = 129
    Height = 21
    DataField = 'NOME'
    DataSource = dm.DSC
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 272
    Width = 113
    Height = 21
    DataField = 'DT_NASC'
    DataSource = dm.DSC
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 192
    Top = 224
    Width = 137
    Height = 21
    DataField = 'COD_MUNICIPIO'
    DataSource = dm.DSC
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 272
    Width = 57
    Height = 21
    DataField = 'SEXO'
    DataSource = dm.DSC
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'COD_MUNICIPIO'
    DataSource = dm.DSM
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 152
    Top = 24
    Width = 177
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dm.DSM
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 312
    Width = 320
    Height = 25
    DataSource = dm.DSC
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 344
    Width = 320
    Height = 120
    DataSource = dm.DSC
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 56
    Width = 320
    Height = 25
    DataSource = dm.DSM
    TabOrder = 9
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 88
    Width = 320
    Height = 120
    DataSource = dm.DSM
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Timer1: TTimer
    Left = 376
    Top = 40
  end
end
