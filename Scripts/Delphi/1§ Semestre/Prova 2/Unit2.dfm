object Form2: TForm2
  Left = 413
  Top = 346
  Width = 320
  Height = 334
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario de Fornecedores'
  Color = clSilver
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
    Width = 59
    Height = 13
    Caption = 'COD_FORN'
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
    Width = 29
    Height = 13
    Caption = 'FONE'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 289
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 24
    Width = 147
    Height = 21
    DataField = 'FONE'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 96
    Width = 290
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 289
    Height = 153
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_FORN'
        Title.Caption = 'Cod_F'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Caption = 'Contato'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 90
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM.IBT
    Left = 344
    Top = 96
  end
  object XPManifest1: TXPManifest
    Left = 144
    Top = 224
  end
end
