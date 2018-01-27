object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 143
  Width = 196
  object IBT: TIBTable
    Database = IBDatabase1
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_PRODUTO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRE'#199'O_COMPRA'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'QUANT_ESTOQUE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY6'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'NEW_TABLE'
    UniDirectional = False
    Left = 16
    Top = 16
    object IBTCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IBTNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object IBTPREO_COMPRA: TIBBCDField
      FieldName = 'PRE'#199'O_COMPRA'
      Precision = 18
      Size = 2
    end
    object IBTQUANT_ESTOQUE: TIBBCDField
      FieldName = 'QUANT_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object IBTrans: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 56
    Top = 16
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:E:\IFF\Programa'#231#227'o Comercial\Trabalho 1-3\TRABALHO.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans
    ServerType = 'IBServer'
    Left = 112
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 16
    Top = 72
  end
end
