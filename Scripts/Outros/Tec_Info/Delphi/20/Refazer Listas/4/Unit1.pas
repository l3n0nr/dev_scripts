unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
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
var n1,n2,aumento : real; {declaração de variaveis}
var vezes,total  : integer ;
begin
n1:=strtofloat(edit1.Text);
vezes:=strtoint(edit3.text);
total:= strtoint(edit4.Text);
total:= total+ 1 ;
if vezes = total then
Form1.Close ;
aumento := ((n1*25)/100)+n1 ;
edit2.Text:= floattostr(aumento);
Edit3.Text:=inttostr(vezes);
edit4.Text:=inttostr(total);

end;

end.
