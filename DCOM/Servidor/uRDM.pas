unit uRDM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, uServidor_TLB, StdVcl, DB, SqlExpr, FMTBcd,
  Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRDM = class(TRemoteDataModule, IRDM)
    dspEmployee: TDataSetProvider;
    fdConnection: TFDConnection;
    qryEmployee: TFDQuery;
  public
    function Echo(const Str: WideString): WideString; safecall;
  end;

implementation

{$R *.DFM}


function TRDM.Echo(const Str: WideString): WideString;
begin
  result := Str;
end;

initialization
  TComponentFactory.Create(ComServer, TRDM,
    Class_RDM, ciMultiInstance, tmApartment);
end.
