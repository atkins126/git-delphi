unit uParol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfParol = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
    cod1 : integer;
  public
    { Public declarations }
  end;

var
  fParol: TfParol;

function EditParol( hWnd : THandle; cod : integer ) : TModalResult;

implementation

{$R *.dfm}

function EditParol( hWnd : THandle; cod : integer ) : TModalResult;
begin
 Application.Handle := hWnd;
 fParol := TfParol.Create(Application);
 with fParol do begin
  try
   cod1 := cod;
   if ShowModal = mrOk then
    ;
  finally
   Result := ModalResult;
   Free;
  end;
 end;
end;

end.
