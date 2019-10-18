object DM: TDM
  OldCreateOrder = False
  Height = 174
  Width = 349
  object conEMPLOYEE: TDCOMConnection
    ServerGUID = '{B64C8329-2A04-447F-9009-FFAA70B886F8}'
    ServerName = 'PrjDCOMServer.RDM'
    Left = 56
    Top = 24
  end
  object cdsEmployee: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmployee'
    RemoteServer = conEMPLOYEE
    Left = 160
    Top = 32
  end
end
