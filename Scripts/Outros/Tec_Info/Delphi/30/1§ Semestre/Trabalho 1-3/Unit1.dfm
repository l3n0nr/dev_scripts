object Form1: TForm1
  Left = 606
  Top = 200
  Width = 268
  Height = 495
  Caption = 'Produto'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 0
    Top = 48
    Width = 92
    Height = 13
    Caption = 'NOME_PRODUTO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 0
    Top = 88
    Width = 89
    Height = 13
    Caption = 'PRE'#199'O_COMPRA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 0
    Top = 128
    Width = 96
    Height = 13
    Caption = 'QUANT_ESTOQUE'
    FocusControl = DBEdit4
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 168
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 8
    Width = 177
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 48
    Width = 129
    Height = 21
    DataField = 'NOME_PRODUTO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 88
    Width = 129
    Height = 21
    DataField = 'PRE'#199'O_COMPRA'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 128
    Width = 129
    Height = 21
    DataField = 'QUANT_ESTOQUE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 240
    Width = 225
    Height = 73
    Caption = 'Pesquisar'
    TabOrder = 5
    Visible = False
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 136
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Mostrar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 8
      Top = 48
      Width = 209
      Height = 17
      Caption = 'Visualizar tudo'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Button2: TButton
    Left = 8
    Top = 200
    Width = 225
    Height = 33
    Caption = 'Pesquisar por Nome'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 320
    Width = 233
    Height = 121
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRE'#199'O_COMPRA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_ESTOQUE'
        Width = 64
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.IBT
    Left = 272
    Top = 168
  end
end
