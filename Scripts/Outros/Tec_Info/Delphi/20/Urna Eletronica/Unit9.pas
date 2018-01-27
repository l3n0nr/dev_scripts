unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit2, Unit5, Unit3, Unit7, Unit4;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var a ,b ,c ,d ,e : integer ;
begin
a := strtoint(Form2.Edit1.text);
b := strtoint(Form2.Edit6.Text) ;
c := strtoint(Form2.Edit2.Text) ;
d := strtoint(Form2.Edit3.Text) ;
e := strtoint(Form2.Edit4.Text) ;
d := d+1 ;
b := b+1 ;
Edit1.Text := inttostr(a);
Form2.Edit6.Text := inttostr(b);
Form2.Edit1.Text := Form7.Edit1.Text ;

if (form2.edit6.text = form2.edit5.text) then
begin
showmessage ('Votação encerrada');
if (a>c) then
form3.show ;
if (c>a)  then
form4.show ;
if (a=c) then
showmessage('hOUVE EMPATe')  ;

end;
 Form9.Close;
Form2.Show;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form9.close;
end;

end.
 