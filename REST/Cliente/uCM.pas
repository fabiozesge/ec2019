unit uCM;

interface

uses
  System.SysUtils, System.Classes, uCC, IPPeerClient,
  Datasnap.DSClientRest;

type
  TClientModule1 = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FRDMClient: TRDMClient;
    function GetRDMClient: TRDMClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property RDMClient: TRDMClient read GetRDMClient write FRDMClient;

end;

var
  ClientModule1: TClientModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule1.Destroy;
begin
  FRDMClient.Free;
  inherited;
end;

function TClientModule1.GetRDMClient: TRDMClient;
begin
  if FRDMClient = nil then
    FRDMClient:= TRDMClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FRDMClient;
end;

end.
