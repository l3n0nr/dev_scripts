unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
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
var n1,n2,n3,n4,result : real ;{declaração de variaveis}
var vezes,total  : integer ;
begin
n1:=strtofloat(edit1.Text);
n2:=strtofloat(edit2.Text);
n3:=strtofloat(edit3.Text);
n4:=strtofloat(edit4.Text);
vezes:=strtoint(edit6.text);
total:= strtoint(edit7.Text);
total:= total+ 1 ;
if vezes = total then
Form1.Close ;
result:= (n1+n2+n3+n4);
edit5.Text:= floattostr(result);
Edit6.Text:=inttostr(vezes);
edit7.Text:=inttostr(total);
end;

end.
