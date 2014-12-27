object DBA: TDBA
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 321
  Width = 481
  object SQLite: TUniConnection
    ProviderName = 'SQLite'
    Database = 'I:\CBuilder\Bin\CBuilder.db'
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'SQLite.Direct=True')
    LoginPrompt = False
    Left = 152
    Top = 80
  end
  object UniConnection: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True')
    Username = 'erp'
    Password = 'erp'
    LoginPrompt = False
    Left = 257
    Top = 80
  end
end
