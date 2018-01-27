unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button7: TButton;
    Label1: TLabel;

    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm1.Button7Click(Sender: TObject);
var a : integer ;
begin
a := strtoint(Edit1.Text) ;
if a = 0 then
showmessage ('Redigite os valores') ;
Form2.Show ;
Button7.Visible := False  ;

Form2.Label3.Caption := Form1.Edit1.Text ;
Form2.Edit5.Text := Form2.Label3.Caption ;







end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Clear   ;
Button7.Visible:=True ;
Form2.Close ;                   
Form3.Close ;
Form4.Close ;
Form5.Close ;
form6.close;
form7.close;
form8.close;
form9.close;
form10.close;
Form2.Edit1.Text := '0' ;
Form2.Edit2.Text := '0' ;
Form2.Edit3.Text := '0' ;
Form2.Edit4.Text := '0' ;
Form2.Edit5.Text := '0' ;
Form2.Edit6.Text := '0' ;
end;

end.
