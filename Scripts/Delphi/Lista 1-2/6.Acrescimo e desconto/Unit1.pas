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
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
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
var n1,n2,aumento,salariofinal: real; {declaração de variaveis}
begin
n1:=strtofloat(edit1.Text);
n2:=strtofloat(edit2.Text);
aumento := ((n1*n2)/100) ;
salariofinal := n1+aumento;

edit3.Text:= floattostr(aumento);
edit4.Text:=floattostr(salariofinal);
end;

end.
