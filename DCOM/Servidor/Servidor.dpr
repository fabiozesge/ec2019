program Servidor;

uses
  Forms,
  uFrmServidor in 'uFrmServidor.pas' {FrmMain},
  uServidor_TLB in 'uServidor_TLB.pas',
  uRDM in 'uRDM.pas' {RDM: TRemoteDataModule} {RDM: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
