object Form4: TForm4
  Left = 728
  Top = 335
  Width = 363
  Height = 323
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario fornecedores de produtos'
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNone
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
  object Label3: TLabel
    Left = 168
    Top = 8
    Width = 29
    Height = 13
    Caption = 'FONE'
    FocusControl = DBEdit3
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    DataField = 'COD_FORN'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 313
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 168
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
    Width = 320
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 329
    Height = 120
    DataSource = DataSource2
    FixedColor = clLime
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNone
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_FORN'
        Title.Caption = 'Cod_Forn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_COMPRA'
        Title.Caption = 'Valor da compra'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PRO'
        Title.Caption = 'Cod_P'
        Width = 45
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 256
    Width = 330
    Height = 25
    DataSource = DataSource2
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = DM.IBT
    Left = 288
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = DM.IBT0
    Left = 320
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 256
    Top = 8
  end
end
