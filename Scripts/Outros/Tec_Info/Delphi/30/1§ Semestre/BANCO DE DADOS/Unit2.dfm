object DM: TDM
  OldCreateOrder = False
  Left = 278
  Top = 128
  Height = 127
  Width = 164
  object IBDB1: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:E:\IFF\Programa'#231#227'o Comercial\BANCO DE DADOS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 16
  end
  object IBTrans1: TIBTransaction
    Active = True
    DefaultDatabase = IBDB1
    AutoStopAction = saNone
    Left = 96
    Top = 16
  end
  object IBTab1: TIBTable
    Database = IBDB1
    Transaction = IBTrans1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'COD_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DATA_NASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'FONE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'COD_CLIENTE'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 56
    Top = 16
    object IBTab1COD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object IBTab1NOME: TIBStringField
      FieldName = 'NOME'
      Size = 80
    end
    object IBTab1DATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object IBTab1FONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
  end
end
