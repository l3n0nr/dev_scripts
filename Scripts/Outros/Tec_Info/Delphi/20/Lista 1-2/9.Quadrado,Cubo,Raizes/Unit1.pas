unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Math, StdCtrls;

type
  TForm1 = class(TForm)
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
    Button1: TButton;
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
var numero:real;{declaraçao de variaveis}
begin
numero:=strtofloat(edit1.Text);
if (numero<=1) then
begin
showmessage('Digitar um Valor Maior do Que 0');
edit1.clear;
end
else
begin
numero :=power(numero,2);
edit2.Text:=floattostr(numero);
end;
begin
numero :=strtofloat(edit1.Text);
numero :=power(numero,3);
edit3.Text:=floattostr(numero);
end;
begin
numero:=strtofloat(edit1.Text);
numero:=sqrt(numero);
edit4.Text:=floattostr(numero);
end;
begin
numero:=strtofloat(edit2.text);
numero:=power(numero,1/3);
edit5.Text:=floattostr(numero);
end;
end;
end.
