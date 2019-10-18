unit uFrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls;

type
  TFrmMain = class(TForm)
    dsEmployee: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  uCM;

{$R *.dfm}

procedure TFrmMain.Button1Click(Sender: TObject);
begin
//  Edit2.Text := DM.conDS.AppServer.Echo(Edit1.Text);
  Edit2.Text := CM.RDMClient.Echo(Edit1.Text);
end;

end.
