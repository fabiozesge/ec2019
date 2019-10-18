unit uRDM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, StdVcl, DB, SqlExpr, FMTBcd,
  Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRDM = class(TDSServerModule)
    dspEmployee: TDataSetProvider;
    fdConnection: TFDConnection;
    qryEmployee: TFDQuery;
  public
    function Echo(const Str: string): string;
  end;

implementation

{$R *.DFM}


function TRDM.Echo(const Str: string): string;
begin
  result := Str;
end;
end.
