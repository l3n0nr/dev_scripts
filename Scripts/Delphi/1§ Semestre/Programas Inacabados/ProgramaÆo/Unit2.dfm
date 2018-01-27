object DM: TDM
  OldCreateOrder = False
  Left = 519
  Top = 492
  Height = 256
  Width = 337
  object IBTONI: TIBTable
    Database = Onibus
    Transaction = IBTSONI
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 16
    Top = 8
  end
  object Onibus: TIBDatabase
    DatabaseName = 
      '127.0.0.1:J:\Exercicios para fazer\Programa'#231#227'o\Novo Banco de Dad' +
      'os\COMPANHIA.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTSONI
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 56
  end
  object Passageiros: TIBDatabase
    Connected = True
    DatabaseName = 
      '127.0.0.1:C:\Users\IFFarroupilha\Desktop\Novo Banco de Dados\PAS' +
      'SAGEIROS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTSOPAS
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 80
    Top = 56
  end
  object Viagens: TIBDatabase
    DatabaseName = 
      '127.0.0.1:J:\Exercicios para fazer\Programa'#231#227'o\Novo Banco de Dad' +
      'os\VIAGENS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTSOVIA
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 56
  end
  object IBTSONI: TIBTransaction
    Active = False
    DefaultDatabase = Onibus
    AutoStopAction = saNone
    Left = 16
    Top = 112
  end
  object DSONI: TDataSource
    DataSet = IBTONI
    Left = 8
    Top = 160
  end
  object DSPAS: TDataSource
    DataSet = IBTPAS
    Left = 80
    Top = 160
  end
  object DSVIA: TDataSource
    DataSet = IBTVIA
    Left = 144
    Top = 160
  end
  object IBTPAS: TIBTable
    Database = Passageiros
    Transaction = IBTSOPAS
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'RG'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end>
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 80
    Top = 8
    object IBTPASRG: TIntegerField
      FieldName = 'RG'
    end
    object IBTPASNOME: TIBStringField
      FieldName = 'NOME'
      Size = 100
    end
    object IBTPASCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object IBTVIA: TIBTable
    Database = Viagens
    Transaction = IBTSOVIA
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 144
    Top = 8
    object IBTVIANUMERODEVIAGENS: TIntegerField
      FieldName = 'NUMERO DE VIAGENS'
    end
    object IBTVIADATA: TDateField
      FieldName = 'DATA'
    end
    object IBTVIAHORA: TIntegerField
      FieldName = 'HORA'
    end
    object IBTVIAORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Size = 100
    end
    object IBTVIADESTINO: TIBStringField
      FieldName = 'DESTINO'
      Size = 100
    end
  end
  object IBTAGE: TIBTable
    Database = Agendar
    Transaction = IBTOSOAGE
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
    Top = 8
  end
  object Agendar: TIBDatabase
    DatabaseName = 
      '127.0.0.1:J:\Exercicios para fazer\Programa'#231#227'o\Novo Banco de Dad' +
      'os\AGENDAR.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTOSOAGE
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 208
    Top = 56
  end
  object DSAGE: TDataSource
    DataSet = IBTAGE
    Left = 208
    Top = 160
  end
  object Local: TIBDatabase
    DatabaseName = 
      '127.0.0.1:J:\Exercicios para fazer\Programa'#231#227'o\Novo Banco de Dad' +
      'os\LOCALIDADE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTOSOLO
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 264
    Top = 56
  end
  object IBLOC: TIBTable
    Database = Local
    Transaction = IBTOSOLO
    BufferChunks = 1000
    CachedUpdates = False
    Left = 264
    Top = 8
  end
  object DSLOC: TDataSource
    DataSet = IBLOC
    Left = 272
    Top = 160
  end
  object IBTSOPAS: TIBTransaction
    Active = False
    DefaultDatabase = Passageiros
    AutoStopAction = saNone
    Left = 80
    Top = 112
  end
  object IBTSOVIA: TIBTransaction
    Active = False
    DefaultDatabase = Viagens
    AutoStopAction = saNone
    Left = 144
    Top = 112
  end
  object IBTOSOAGE: TIBTransaction
    Active = False
    DefaultDatabase = Agendar
    AutoStopAction = saNone
    Left = 208
    Top = 112
  end
  object IBTOSOLO: TIBTransaction
    Active = False
    DefaultDatabase = Local
    AutoStopAction = saNone
    Left = 272
    Top = 112
  end
end
