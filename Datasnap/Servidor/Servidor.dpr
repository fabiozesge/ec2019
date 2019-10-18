program Servidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmServidor in 'uFrmServidor.pas' {Form1},
  uSC in 'uSC.pas' {ServerContainer1: TDataModule},
  uRDM in 'uRDM.pas' {RDM: TDSSereverModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

