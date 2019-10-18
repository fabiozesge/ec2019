unit uDM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDM = class(TDataModule)
    conEMPLOYEE: TDCOMConnection;
    cdsEmployee: TClientDataSet;
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
