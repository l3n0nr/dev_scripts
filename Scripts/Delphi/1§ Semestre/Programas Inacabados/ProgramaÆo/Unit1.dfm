object Form1: TForm1
  Left = 282
  Top = 335
  Width = 344
  Height = 298
  Caption = 'Viagens'
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
    Left = 0
    Top = 8
    Width = 116
    Height = 13
    Caption = 'NUMERO DE VIAGENS'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 29
    Height = 13
    Caption = 'DATA'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 232
    Top = 8
    Width = 31
    Height = 13
    Caption = 'HORA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 0
    Top = 48
    Width = 43
    Height = 13
    Caption = 'ORIGEM'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 144
    Top = 48
    Width = 48
    Height = 13
    Caption = 'DESTINO'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 24
    Width = 134
    Height = 21
    DataField = 'NUMERO DE VIAGENS'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 24
    Width = 89
    Height = 21
    DataField = 'DATA'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 24
    Width = 89
    Height = 21
    DataField = 'HORA'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 0
    Top = 64
    Width = 137
    Height = 21
    DataField = 'ORIGEM'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 64
    Width = 177
    Height = 21
    DataField = 'DESTINO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 104
    Width = 320
    Height = 120
    DataSource = DM.DSVIA
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 232
    Width = 310
    Height = 25
    DataSource = DM.DSVIA
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = DM.IBTVIA
    Left = 576
    Top = 88
  end
end
