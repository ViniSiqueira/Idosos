object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object conexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    HostName = 'DESKTOP-1H3B8MV\SQLEXPRESS'
    Port = 1433
    Database = 'VINICIUS_PRD'
    User = ''
    Password = ''
    Protocol = 'mssql'
    LibraryLocation = 'C:\Users\vinic\Documents\Delphi\Idosos\ntwdblib.dll'
    Left = 128
    Top = 128
  end
end