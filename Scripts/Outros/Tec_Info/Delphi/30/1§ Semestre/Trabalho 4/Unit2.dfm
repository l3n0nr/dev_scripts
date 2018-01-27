object Datamodule2: TDatamodule2
  OldCreateOrder = False
  Left = 846
  Top = 298
  Height = 191
  Width = 272
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:D:\Users\Lenon\Desktop\Trabalho 5\CADASTRO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 104
    Top = 56
  end
  object IBTCliente: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = IBTClienteNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'CLIENTE'
    Left = 168
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX(CODIGO) AS PROX FROM CLIENTE')
    Left = 32
    Top = 96
    object IBQuery1PROX: TIntegerField
      FieldName = 'PROX'
    end
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'MUNICIPIO'
    Left = 168
    Top = 88
  end
end
