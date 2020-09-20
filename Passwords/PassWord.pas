unit PASSWORD;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

function GetParol( hWnd : THandle ) : boolean;

implementation

{$R *.dfm}

uses dm;

function GetParol( hWnd : THandle ) : boolean;
begin
 Application.Handle := hWnd;
 PasswordDlg := TPasswordDlg.Create(Application);
 with PasswordDlg do begin
  try
   if ShowModal = mrOk then
    ;
  finally
   Result := (ModalResult = mrOk) and ( Password.Text = pass);
   Free;
  end;
 end;
end;

end.

