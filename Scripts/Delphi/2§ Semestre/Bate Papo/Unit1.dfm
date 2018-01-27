object DM: TDM
  OldCreateOrder = False
  Height = 180
  Width = 205
  object IBQ: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'Login'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
  end
  object IBDB: TIBDatabase
    Connected = True
    DatabaseName = '200.132.44.222:c:\PAPO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT
    ServerType = 'IBServer'
    Left = 88
    Top = 8
  end
  object IBT: TIBTransaction
    Active = True
    DefaultDatabase = IBDB
    Left = 48
    Top = 8
  end
  object IBQ1: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 8
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
  end
  object IBQM: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 48
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_men'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'texto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usu_ori'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usu_des'
        ParamType = ptUnknown
      end>
  end
  object IBQPROX: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 8
    Top = 120
  end
  object IBQMMSG: TIBQuery
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM MENSAGEM'
      'WHERE COD_USU_ORI = :p_usu_log'
      'OR COD_USU_DEST =:p_usu_log')
    Left = 88
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_usu_log'
        ParamType = ptUnknown
      end>
    object IBQMMSGNOME_ORI: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_ORI'
      LookupDataSet = IBT_USU
      LookupKeyFields = 'COD_USU'
      LookupResultField = 'NOME_USU'
      KeyFields = 'COD_USU_ORI'
      Lookup = True
    end
    object IBQMMSGNOME_DEST: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_DEST'
      LookupDataSet = IBT_USU
      LookupKeyFields = 'COD_USU'
      LookupResultField = 'NOME_USU'
      KeyFields = 'COD_USU_DEST'
      Lookup = True
    end
    object IBQMMSGTEXTO: TIBStringField
      FieldName = 'TEXTO'
      Origin = '"MENSAGEM"."TEXTO"'
      Size = 140
    end
    object IBQMMSGDATA: TDateField
      FieldName = 'DATA'
      Origin = '"MENSAGEM"."DATA"'
    end
    object IBQMMSGHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"MENSAGEM"."HORA"'
    end
    object IBQMMSGCOD_MENSAGEM: TIntegerField
      FieldName = 'COD_MENSAGEM'
      Origin = '"MENSAGEM"."COD_MENSAGEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBQMMSGCOD_USU_DEST: TIntegerField
      FieldName = 'COD_USU_DEST'
      Origin = '"MENSAGEM"."COD_USU_DEST"'
      Visible = False
    end
    object IBQMMSGCOD_USU_ORI: TIntegerField
      FieldName = 'COD_USU_ORI'
      Origin = '"MENSAGEM"."COD_USU_ORI"'
      Visible = False
    end
  end
  object IBT_USU: TIBTable
    Database = IBDB
    Transaction = IBT
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'USUARIO'
    UniDirectional = False
    Left = 88
    Top = 64
  end
end
