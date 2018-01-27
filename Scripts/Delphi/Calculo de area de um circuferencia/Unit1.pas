unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var raio , area , pi : real ;
begin
raio := strtofloat(Edit1.Text) ;
pi := 3.14 ;
area := (pi*raio) ;
Edit2.Text:=floattostr(area);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.clear;
Edit2.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

end.
