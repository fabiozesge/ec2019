program Cliente;

uses
  Forms,
  uFrmCliente in 'uFrmCliente.pas' {FrmMain},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
