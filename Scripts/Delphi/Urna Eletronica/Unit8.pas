unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;

implementation

uses Unit2, Unit7, Unit4, Unit3, Unit5;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var a ,b ,c ,d ,e : integer ;
begin
a := strtoint(Form2.Edit1.text);
b := strtoint(Form2.Edit6.Text) ;
c := strtoint(Form2.Edit2.Text) ;
d := strtoint(Form2.Edit3.Text) ;
e := strtoint(Form2.Edit4.Text) ;
c := c+1 ;
b := b+1 ;
Edit1.Text := inttostr(c);
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
Form8.Close;
Form2.Show;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
form8.close;
end;

end.
