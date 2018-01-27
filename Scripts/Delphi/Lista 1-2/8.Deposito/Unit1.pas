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
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
var deposito,taxadejuros,rendimento,valortotal : real ; {declaraçao de variaveis}
begin
deposito:=strtofloat(edit1.Text);
taxadejuros:=strtofloat(edit2.Text);
rendimento := (deposito*taxadejuros)/100 ;
valortotal := (rendimento+deposito);
edit3.Text := floattostr(rendimento);
edit4.Text := floattostr(valortotal);
end;

end.
