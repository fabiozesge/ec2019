unit uDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.Provider, Data.SqlExpr, Datasnap.DSConnect;

type
  TDM = class(TDataModule)
    cdsEmployee: TClientDataSet;
    conDS: TSQLConnection;
    DSCon: TDSProviderConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
