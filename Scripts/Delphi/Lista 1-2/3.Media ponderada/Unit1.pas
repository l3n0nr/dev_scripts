unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label5: TLabel;
    Label6: TLabel;
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
 var n1,n2,n3,peso1,peso2,peso3, media : real ;{declara��o de variaveis}
begin
n1:=strtofloat(edit1.Text);
n2:=strtofloat(edit2.Text);
n3:=strtofloat(edit3.Text);
peso1:=strtofloat(edit5.Text);
peso2:=strtofloat(edit6.Text);
peso3:=strtofloat(edit7.Text);
media:= ((n1*peso1+n2*peso2+n3*peso3))/10;
edit4.Text:= floattostr(media);
end;

end.

