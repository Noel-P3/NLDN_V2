object DM: TDM
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 422
  Width = 750
  object DBNLND: TUniConnection
    ProviderName = 'sQL Server'
    Port = 1433
    Database = 'NLND_V2'
    SpecificOptions.Strings = (
      'sQL Server.ApplicationName=NLND')
    Username = 'pls'
    Server = 'NOELPCCLICKTECK'
    Connected = True
    AfterConnect = DBNLNDAfterConnect
    BeforeConnect = DBNLNDBeforeConnect
    OnError = DBNLNDError
    Left = 480
    Top = 152
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 480
    Top = 208
  end
  object XMLNLND: TXMLDocument
    FileName = 'DBProvider.xml'
    Left = 560
    Top = 144
  end
  object qBD: TUniQuery
    Connection = DBNLND
    SQL.Strings = (
      'SELECT * FROM BD')
    Left = 476
    Top = 96
    object qBDCONECTADO: TIntegerField
      FieldName = 'CONECTADO'
      Required = True
    end
    object qBDVERSION_1: TStringField
      FieldName = 'VERSION_1'
      Required = True
    end
    object qBDVERSION_2: TStringField
      FieldName = 'VERSION_2'
      Required = True
    end
    object qBDVERSION_3: TStringField
      FieldName = 'VERSION_3'
      Required = True
    end
  end
end
