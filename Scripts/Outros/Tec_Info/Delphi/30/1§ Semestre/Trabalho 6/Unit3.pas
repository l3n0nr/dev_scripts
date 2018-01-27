unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Menus,
  ComCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure MostrarTabela11Click(Sender: TObject);
    procedure MostrarTabela21Click(Sender: TObject);
    procedure MostrarTodas1Click(Sender: TObject);
    procedure DeixartodasInvisivel1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form1.Show ;
end;

procedure TForm3.MostrarTabela11Click(Sender: TObject);
begin
DbGrid1.Visible := True ;
end;

procedure TForm3.MostrarTabela21Click(Sender: TObject);
begin
DbGrid2.Visible := True ;
end;

procedure TForm3.MostrarTodas1Click(Sender: TObject);
begin
DbGrid1.Visible := True ;
DbGrid2.Visible := True ;
end;

procedure TForm3.DeixartodasInvisivel1Click(Sender: TObject);
begin
DbGrid1.Visible := True ;
DbGrid2.Visible := True ;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
dm.IBTCli.open ;
dm.IBTMU .open ; 
end;

end.
