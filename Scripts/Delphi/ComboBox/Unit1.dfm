object Form1: TForm1
  Left = 192
  Top = 124
  Width = 625
  Height = 182
  Caption = 'Form1'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 32
    Top = 64
    Width = 529
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    Items.Strings = (
      'Aquario'
      'Escorpiao'
      'Peixes'
      'Sagitario'
      'Touro')
  end
  object Button1: TButton
    Left = 32
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Deletar '
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Apagar Tudo'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 320
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 392
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Mostrar Seguinte'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 488
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Contar '
    TabOrder = 7
    OnClick = Button7Click
  end
end
