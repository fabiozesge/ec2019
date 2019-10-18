program Servidor;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmServidor in 'uFrmServidor.pas' {Form1},
  uWM in 'uWM.pas' {WebModule1: TWebModule},
  uRDM in 'uRDM.pas' {RDM: TRemoteDataModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
