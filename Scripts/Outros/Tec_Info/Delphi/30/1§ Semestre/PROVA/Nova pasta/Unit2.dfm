object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 479
  Top = 332
  Height = 150
  Width = 215
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 32
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 80
    Top = 24
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:C:\Users\IFFarroupilha\Desktop\Nova pasta\PROVA.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 136
    Top = 24
  end
end
