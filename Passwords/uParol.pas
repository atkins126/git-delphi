unit uParol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfParol = class(TForm)
    Panel1: TPanel;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    Label1: TLabel;
    eLogin: TEdit;
    Label2: TLabel;
    eParol: TEdit;
    Label3: TLabel;
    eOpis: TEdit;
  private
    { Private declarations }
    cod1 : integer;
    procedure LoadParol;
    procedure WriteToDB;
  public
    { Public declarations }
  end;

var
  fParol: TfParol;

function EditParol( hWnd : THandle; cod : integer ) : TModalResult;

implementation

{$R *.dfm}

uses dm;

function EditParol( hWnd : THandle; cod : integer ) : TModalResult;
begin
 Application.Handle := hWnd;
 fParol := TfParol.Create(Application);
 with fParol do begin
  try
   cod1 := cod;
   if cod > 0 then
    LoadParol;
   if ShowModal = mrOk then
    ;
  finally
   Result := ModalResult;
   if Result = mrOk then
    WriteToDB;
   Free;
  end;
 end;
end;

procedure TfParol.LoadParol;
begin
 with dm1.fq1 do begin
  Active := False;
  SQL.Clear;
  SQL.Append('select �����, ������, ��������');
  SQL.Append('from ������');
  SQL.Append( Format('where ���_������ = %d', [ cod1 ]));
  Active := True;
  if not Eof then begin
   eLogin.Text := FieldByName('�����').AsString;
   eParol.Text := FieldByName('������').AsString;
   eOpis.Text  := FieldByName('��������').AsString;
  end;
 end;
end;

procedure TfParol.WriteToDB;
begin
 with dm1.fq1 do begin
  Active := False;
  SQL.Clear;
  if cod1 = 0 then begin
   SQL.Append('insert into ������ ( �����, ������, �������� )');
   SQL.Append('VALUES ( :Par1, :Par2, :Par3 )');
  end
  else begin
   SQL.Append('update ������ set ����� = :Par1, ������ = :Par2, �������� = :Par3');
   SQL.Append( Format('where ���_������ = %d', [ cod1 ]));
  end;
  Params.ParamByName('Par1').Value := eLogin.Text;
  Params.ParamByName('Par2').Value := eParol.Text;
  Params.ParamByName('Par3').Value := eOpis.Text;
  ExecSQL;
 end;
end;

end.
