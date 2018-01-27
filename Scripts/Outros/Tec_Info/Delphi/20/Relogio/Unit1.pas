unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Button3: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
DateTime : TDateTime;
str : string;
begin
DateTime := Time;
str := TimeToStr(DateTime);
panel1.Caption := str;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.enabled:=True
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.enabled:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.close ;
end;

end.
