program Passwords;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fPassw},
  dm in 'dm.pas' {dm1: TDataModule},
  uParol in 'uParol.pas' {fParol};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPassw, fPassw);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TfParol, fParol);
  Application.Run;
end.
