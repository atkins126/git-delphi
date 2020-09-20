object dm1: Tdm1
  OldCreateOrder = False
  Height = 320
  Width = 435
  object fc1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'Password=1972')
    BeforeConnect = fc1BeforeConnect
    Left = 55
    Top = 40
  end
  object fqPassw: TFDQuery
    Connection = fc1
    SQL.Strings = (
      'select * from '#1055#1072#1088#1086#1083#1080)
    Left = 104
    Top = 40
    object fqPasswКод_пароля: TFDAutoIncField
      FieldName = #1050#1086#1076'_'#1087#1072#1088#1086#1083#1103
      Origin = '"'#1050#1086#1076'_'#1087#1072#1088#1086#1083#1103'"'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object fqPasswОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '"'#1054#1087#1080#1089#1072#1085#1080#1077'"'
      OnGetText = fqPasswОписаниеGetText
      BlobType = ftWideMemo
    end
  end
  object dsPassw: TDataSource
    DataSet = fqPassw
    Left = 152
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #1060#1072#1081#1083#1099' '#1041#1044' SQLite ( *.db; *.sqlite; *.db3; *.sqlite3 )|*.db; *.sql' +
      'ite; *.db3; *.sqlite3|'#1042#1089#1077' '#1092#1072#1081#1083#1099' ( *.* )|*.*'
    Left = 280
    Top = 48
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'db'
    Filter = 
      #1060#1072#1081#1083#1099' '#1041#1044' SQLite ( *.db; *.sqlite; *.db3; *.sqlite3 )|*.db; *.sql' +
      'ite; *.db3; *.sqlite3|'#1042#1089#1077' '#1092#1072#1081#1083#1099' ( *.* )|*.*'
    Title = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1092#1072#1081#1083#1072' '#1041#1044' SQLite'
    Left = 352
    Top = 48
  end
  object fq1: TFDQuery
    Connection = fc1
    Left = 56
    Top = 88
  end
  object FDSQLiteSecurity1: TFDSQLiteSecurity
    DriverLink = FDPhysSQLiteDriverLink1
    Left = 304
    Top = 192
  end
end
