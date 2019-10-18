// 
// Created by the DataSnap proxy generator.
// 17/10/2019 19:49:52
// 

unit uCC;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TRDMClient = class(TDSAdminClient)
  private
    FEchoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function Echo(Str: string): string;
  end;

implementation

function TRDMClient.Echo(Str: string): string;
begin
  if FEchoCommand = nil then
  begin
    FEchoCommand := FDBXConnection.CreateCommand;
    FEchoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoCommand.Text := 'TRDM.Echo';
    FEchoCommand.Prepare;
  end;
  FEchoCommand.Parameters[0].Value.SetWideString(Str);
  FEchoCommand.ExecuteUpdate;
  Result := FEchoCommand.Parameters[1].Value.GetWideString;
end;


constructor TRDMClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TRDMClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TRDMClient.Destroy;
begin
  FEchoCommand.DisposeOf;
  inherited;
end;

end.
