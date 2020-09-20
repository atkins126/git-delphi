unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, IOUtils, Vcl.Buttons;

type
  TfPassw = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbDelClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetDB;
    procedure OpenParol;
  public
    { Public declarations }
  end;

var
  fPassw: TfPassw;

implementation

{$R *.dfm}

uses dm, uParol;

procedure TfPassw.bbAddClick(Sender: TObject);
begin
 if EditParol( Self.Handle, 0 ) = mrOk then
  OpenParol;
end;

procedure TfPassw.bbDelClick(Sender: TObject);
begin
 if dm1.fqPassw.Eof then
  exit;
 if MessageBox( Application.Handle, PChar('������� ������?'), PChar('������'),
  MB_YESNO + MB_ICONINFORMATION + MB_APPLMODAL) = IDNO then
  exit;
 with dm1.fq1 do begin
  Active := False;
  SQL.Clear;
  SQL.Append('delete from ������');
  SQL.Append( Format('where ���_������ = %d', [dm1.fqPassw.FieldByName('���_������').AsInteger]));
  ExecSQL;
 end;
 OpenParol;
end;

procedure TfPassw.bbEditClick(Sender: TObject);
begin
 if dm1.fqPassw.Eof then
  exit;
 if EditParol( Self.Handle, dm1.fqPassw.FieldByName('���_������').AsInteger ) = mrOk then
  OpenParol;
end;

procedure TfPassw.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{ if Assigned(Column) then begin
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.AsString);
 end;}
end;

procedure TfPassw.FormShow(Sender: TObject);
begin
 GetDB;
end;

procedure TfPassw.GetDB;
var
 fn : string;
begin
// fn := TPath.GetExtension( Application.ExeName ) + 'registration.db';
 fn := TPath.GetDirectoryName ( Application.ExeName );
 fn := fn + '\registration.db';
 dm1.fc1.Params.Database := fn;
 dm1.fc1.Params.Password := pass;
 if not TFile.Exists( fn ) then begin
  with dm1.fq1 do begin
   Active := False;
   SQL.Clear;
   SQL.Append('CREATE TABLE ������ (');
   SQL.Append('���_������	INTEGER NOT NULL,');
	 SQL.Append('�����	TEXT,');
   SQL.Append('������	TEXT,');
   SQL.Append('��������	TEXT,');
   SQL.Append('PRIMARY KEY(���_������ AUTOINCREMENT))');
   ExecSQL;
  end;
  dm1.FDSQLiteSecurity1.Database := fn;
  dm1.FDSQLiteSecurity1.Password := pass;
  dm1.FDSQLiteSecurity1.SetPassword;
 end;
 OpenParol;
end;

procedure TfPassw.OpenParol;
begin
 dm1.fqPassw.Active := False;
 dm1.fqPassw.Active := True;
end;

end.
