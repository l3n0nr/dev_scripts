object dm: Tdm
  OldCreateOrder = False
  Height = 284
  Width = 349
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '200.132.44.222:c:\PAPO_30_1.5.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 32
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 112
    Top = 32
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 192
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptUnknown
      end>
  end
end
