unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, IOUtils;

type
  TfPassw = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetDB;
  public
    { Public declarations }
  end;

var
  fPassw: TfPassw;

implementation

{$R *.dfm}

uses dm, uParol;

procedure TfPassw.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TfPassw.Button2Click(Sender: TObject);
begin
 if dm1.OpenDialog1.Execute then begin
  dm1.fc1.Params.Database := dm1.OpenDialog1.FileName;
  dm1.fc1.Params.Password := '1972';
  dm1.fqPassw.Active := True;
 end;
end;

procedure TfPassw.Button3Click(Sender: TObject);
begin
 if dm1.SaveDialog1.Execute then
  dm1.fc1.Params.Database := dm1.SaveDialog1.FileName;
  with dm1.fq1 do begin
   Active := False;
   SQL.Clear;
   SQL.Append('CREATE TABLE Пароли (');
   SQL.Append('Код_пароля	INTEGER NOT NULL,');
	 SQL.Append('Логин	TEXT,');
   SQL.Append('Пароль	TEXT,');
   SQL.Append('Описание	TEXT,');
   SQL.Append('PRIMARY KEY(Код_пароля AUTOINCREMENT))');
   ExecSQL;
  end;
  dm1.FDSQLiteSecurity1.Database := dm1.SaveDialog1.FileName;
  dm1.FDSQLiteSecurity1.Password := '1972';
  dm1.FDSQLiteSecurity1.SetPassword;
  ShowMessage( dm1.FDSQLiteSecurity1.CheckEncryption );

  dm1.fqPassw.Active := True;
end;

procedure TfPassw.Button4Click(Sender: TObject);
begin
 EditParol( Self.Handle, 0 );
end;

procedure TfPassw.DBGrid1DblClick(Sender: TObject);
begin
 if dm1.fqPassw.Eof then
  exit;
 EditParol( Self.Handle, dm1.fqPassw.FieldByName('Код_пароля').AsInteger );
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
 dm1.fc1.Params.Password := '1972';
 if not TFile.Exists( fn ) then begin
  with dm1.fq1 do begin
   Active := False;
   SQL.Clear;
   SQL.Append('CREATE TABLE Пароли (');
   SQL.Append('Код_пароля	INTEGER NOT NULL,');
	 SQL.Append('Логин	TEXT,');
   SQL.Append('Пароль	TEXT,');
   SQL.Append('Описание	TEXT,');
   SQL.Append('PRIMARY KEY(Код_пароля AUTOINCREMENT))');
   ExecSQL;
  end;
  dm1.FDSQLiteSecurity1.Database := fn;
  dm1.FDSQLiteSecurity1.Password := '1972';
  dm1.FDSQLiteSecurity1.SetPassword;
 end;
 dm1.fqPassw.Active := True;
end;

end.
