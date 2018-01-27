unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var a,b,c,d : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
d := strtofloat (Edit4.Text) ;
if (a = 6) and (b = 16 ) and (c = 9 ) and (d=1000) then
showmessage ( 'NIVEL 3');
Form3.Show ;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Form1.show;
close
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Edit4.Clear ;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Edit3.Clear ;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Form1.close ;
end;

end.
 