program Passwords;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fPassw},
  dm in 'dm.pas' {dm1: TDataModule},
  uParol in 'uParol.pas' {fParol},
  PassWord in 'PassWord.pas' {PasswordDlg};

{$R *.res}

begin
  Application.Initialize;
  if not GetParol( Application.Handle ) then begin
   Application.Terminate;
   exit;
  end;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPassw, fPassw);
  Application.CreateForm(Tdm1, dm1);
  Application.Run;
end.
