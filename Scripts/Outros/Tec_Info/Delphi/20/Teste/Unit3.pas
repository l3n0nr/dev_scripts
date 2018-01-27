unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
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
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
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
  Form3: TForm3;

implementation

uses Unit4, Unit2, Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var a,b,c,d,e : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 66) and (b = 35 ) and (c = 800 ) and (d=132) and (e=168) then
showmessage ( 'NIVEL 4');
Form4.Show ;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
Form2.Show;
close
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Edit4.Clear
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Edit5.Clear ;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Edit3.Clear ;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
Edit4.Clear ;
Edit5.clear ;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form1.Close
end;

end.
