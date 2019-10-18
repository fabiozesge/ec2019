unit uCM;

interface

uses
  System.SysUtils, System.Classes, uCC;

type
  TCM = class(TDataModule)
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
  CM: TCM;

implementation

uses
  uDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TCM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TCM.Destroy;
begin
  FRDMClient.Free;
  inherited;
end;

function TCM.GetRDMClient: TRDMClient;
begin
  if FRDMClient = nil then
  begin
    DM.conDS.Open;
    FRDMClient:= TRDMClient.Create(DM.conDS.DBXConnection, FInstanceOwner);
  end;
  Result := FRDMClient;
end;

end.
