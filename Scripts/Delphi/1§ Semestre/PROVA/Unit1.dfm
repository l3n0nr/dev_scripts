object Form1: TForm1
  Left = 507
  Top = 234
  Width = 274
  Height = 490
  Caption = 'CARRO'
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
    Left = 8
    Top = 120
    Width = 34
    Height = 13
    Caption = 'PLACA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 160
    Width = 23
    Height = 13
    Caption = 'COR'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 200
    Width = 38
    Height = 13
    Caption = 'MARCA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 152
    Top = 120
    Width = 46
    Height = 13
    Caption = 'MODELO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 152
    Top = 160
    Width = 23
    Height = 13
    Caption = 'ANO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 152
    Top = 200
    Width = 36
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEdit6
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 248
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 136
    Width = 95
    Height = 21
    DataField = 'PLACA'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 176
    Width = 97
    Height = 21
    DataField = 'COR'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 216
    Width = 97
    Height = 21
    DataField = 'MARCA'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 136
    Width = 97
    Height = 21
    DataField = 'MODELO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 176
    Width = 97
    Height = 21
    DataField = 'ANO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 152
    Top = 216
    Width = 97
    Height = 21
    DataField = 'VALOR'
    DataSource = DataSource1
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 241
    Height = 105
    Caption = 'Pesquisar'
    TabOrder = 7
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Placa'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Cor'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Ano'
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 120
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Valor'
      TabOrder = 3
    end
    object RadioButton5: TRadioButton
      Left = 120
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Modelo'
      TabOrder = 4
    end
    object RadioButton6: TRadioButton
      Left = 120
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Marca'
      TabOrder = 5
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 152
    Top = 288
    Width = 97
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.IBT
    Left = 272
    Top = 360
  end
end
