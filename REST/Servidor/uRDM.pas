unit uRDM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, StdVcl, DB, SqlExpr, FMTBcd,
  Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.Intf,
  FireDAC.Phys.FBDef, FireDAC.DApt.Intf;

type
{$METHODINFO ON}
  TRDM = class(TDataModule)
    dspEmployee: TDataSetProvider;
    fdConnection: TFDConnection;
    qryEmployee: TFDQuery;
  public
    function Echo(const Str: String): String;
  end;
{$METHODINFO OFF}

implementation

{$R *.DFM}


function TRDM.Echo(const Str: String): String;
begin
  result := Str;
end;

end.
