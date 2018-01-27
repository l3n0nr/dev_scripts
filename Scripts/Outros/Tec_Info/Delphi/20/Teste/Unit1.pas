unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 16) and (b = 0 ) and (c = 15 ) then
showmessage ( 'NIVEL 2');
Form2.Show ;
end ;


procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit2.Clear
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit3.Clear
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear  ;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Form1.close ;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Form2.Show;
end;

end.


