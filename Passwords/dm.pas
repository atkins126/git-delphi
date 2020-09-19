unit dm;

interface

uses
  Vcl.Forms, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.Dialogs;

type
  Tdm1 = class(TDataModule)
    fc1: TFDConnection;
    fqPassw: TFDQuery;
    dsPassw: TDataSource;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    fq1: TFDQuery;
    FDSQLiteSecurity1: TFDSQLiteSecurity;
    procedure fc1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm1.fc1BeforeConnect(Sender: TObject);
begin
// fc1.Params.Database := ExtractFilePath( Application.ExeName ) + 'passwords.sqlite';
end;

end.
