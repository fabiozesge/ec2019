unit uDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, IPPeerClient, Datasnap.DSClientRest;

type
  TDM = class(TDataModule)
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
