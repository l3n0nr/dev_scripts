unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var a,b : integer    ;
begin
a := strtoint(Edit1.Text) ;
For b:= 0 to a do
memo1.lines.Add('Lenon') ;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a:integer;
begin
a := strtoint(edit1.text) ;
repeat
a := a+1 ;
memo1.Lines.Add(inttostr(a));
Until (a >= 15) ;
end;

end.
