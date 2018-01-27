unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, IBDatabase, DB, IBCustomDataSet, IBTable,
  StdCtrls, Mask, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
begin
groupbox1.Visible := true ;
DBGrid1.visible := true ;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  datamodule2.IBT.Filter := 'upper(nome_produto)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  datamodule2.IBT.Filtered := false ;
  edit1.clear ;
  edit1.SetFocus;
end;

end.
