object Datamodule2: TDatamodule2
  OldCreateOrder = False
  Left = 857
  Top = 323
  Height = 150
  Width = 196
  object IBTCad: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IDADE'
        DataType = ftInteger
      end
      item
        Name = 'CIDADE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SEXO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end>
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 72
    Top = 56
    object IBTCadCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IBTCadNOME: TIBStringField
      FieldName = 'NOME'
      Size = 100
    end
    object IBTCadIDADE: TIntegerField
      FieldName = 'IDADE'
    end
    object IBTCadCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object IBTCadSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 2
    end
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX(CODIGO) AS UM FROM Cad'
      ''
      '')
    Left = 24
    Top = 56
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 
      'A:\IFF\Programa'#231#227'o Comercial\Trabalho 2 - Apresentando Clientes\' +
      'CADASTRO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 120
    Top = 8
  end
  object IBTMun: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    Left = 120
    Top = 56
  end
end
