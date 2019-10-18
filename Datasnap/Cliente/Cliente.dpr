program Cliente;

uses
  Forms,
  uFrmCliente in 'uFrmCliente.pas' {FrmMain},
  uDM in 'uDM.pas' {DM: TDataModule},
  uCC in 'uCC.pas',
  uCM in 'uCM.pas' {CM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCM, CM);
  Application.Run;
end.
