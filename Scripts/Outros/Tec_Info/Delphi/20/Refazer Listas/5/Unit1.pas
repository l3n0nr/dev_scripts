unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
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
var n1,acrescimo,salariofinal: real; {declaração de variaveis}
var vezes,total  : integer ;
begin
n1:=strtofloat(edit1.Text);
vezes:=strtoint(edit2.text);
total:= strtoint(edit4.Text);
total:= total+1 ;
if vezes < total then
Form1.Close ;
acrescimo := ((n1*5)/100)+n1 ;
salariofinal := acrescimo-((n1*7)/100) ;
edit3.Text:= floattostr(salariofinal);
Edit2.Text:=inttostr(vezes);
edit4.Text:=inttostr(total);
end;

end.
