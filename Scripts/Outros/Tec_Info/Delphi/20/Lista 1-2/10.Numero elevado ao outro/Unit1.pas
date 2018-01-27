unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Math, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
var prim,seg,resultado : real ; {declaraçao de variaveis}
begin
prim:=strtofloat(edit1.Text);
seg:=strtofloat(edit2.text);
if(prim<1)or (seg<1)then
begin
showmessage('Digitar um valor Maior do que 0');
edit1.clear;
edit2.Clear;
end
else
begin
resultado:=power(prim,seg);
edit3.text:=floattostr(resultado);
end;
end;


end.
