object RDM: TRDM
  OldCreateOrder = False
  Height = 215
  Width = 441
  object dspEmployee: TDataSetProvider
    DataSet = qryEmployee
    Left = 328
    Top = 56
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Program Files\Firebird\Firebird_2_5\examples\empbuil' +
        'd\EMPLOYEE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3054'
      'Server=127.0.0.1'
      'CharacterSet=WIN1255'
      'ConnectionDef=conFDEMPLOYEE')
    LoginPrompt = False
    Left = 91
    Top = 60
  end
  object qryEmployee: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'select * from EMPLOYEE')
    Left = 216
    Top = 32
  end
end
