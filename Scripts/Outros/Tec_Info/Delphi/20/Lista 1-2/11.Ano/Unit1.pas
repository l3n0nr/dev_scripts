unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
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
var nascimento,anoatual,idade,idadeem : real ; {declaraçao de variaveis}
begin
nascimento:=strtofloat(edit1.Text);
anoatual:=strtofloat(edit2.Text);
idade:=anoatual-nascimento;
idadeem:=2017-nascimento ;
edit3.Text:=floattostr(idade);
edit4.Text:=floattostr(idadeem);
end;

end.
