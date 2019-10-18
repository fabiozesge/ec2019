// 
// Created by the DataSnap proxy generator.
// 18/10/2019 12:03:43
// 

unit uCC;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TRDMClient = class(TDSAdminRestClient)
  private
    FEchoCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function Echo(Str: string; const ARequestFilter: string = ''): string;
  end;

const
  TRDM_Echo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Str'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

implementation

function TRDMClient.Echo(Str: string; const ARequestFilter: string): string;
begin
  if FEchoCommand = nil then
  begin
    FEchoCommand := FConnection.CreateCommand;
    FEchoCommand.RequestType := 'GET';
    FEchoCommand.Text := 'TRDM.Echo';
    FEchoCommand.Prepare(TRDM_Echo);
  end;
  FEchoCommand.Parameters[0].Value.SetWideString(Str);
  FEchoCommand.Execute(ARequestFilter);
  Result := FEchoCommand.Parameters[1].Value.GetWideString;
end;

constructor TRDMClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TRDMClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TRDMClient.Destroy;
begin
  FEchoCommand.DisposeOf;
  inherited;
end;

end.
