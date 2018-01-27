unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, ExtCtrls, DBCtrls, DB, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
dm.IBTable1.Open ;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
dm.IBTable1.close ;
dm.IBTable1.Open ;
end;

end.
