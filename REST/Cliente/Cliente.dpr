program Cliente;

uses
  Forms,
  uFrmCliente in 'uFrmCliente.pas' {FrmMain},
  uCC in 'uCC.pas',
  uCM in 'uCM.pas' {ClientModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
