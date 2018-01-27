unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
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
var a,b : real ;
begin
If Edit1.text = '' then
begin
showmessage('Por favor, digite algum valor no NUMERO 1 ');
abort;
end;
If Edit2.text = '' then
begin
showmessage('Por favor, digite algum valor no NUMERO 2 ');
abort;
end;
a := strtofloat(Edit1.Text);
b := strtofloat(Edit2.Text);
if (a<>0) and (b<>0) then
if a > b  then
Edit5.Text:=floattostr(a);
if b > a then
Edit5.Text:=floattostr(b);
if a=b then
Edit5.Text:=floattostr(a);








end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.clear ;
Edit2.clear ;
Edit5.clear ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close
end;

end.
