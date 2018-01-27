unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
      if checkbox1.checked=true then
      form1.color:=clmoneygreen
      else
      form1.color:=clskyblue;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
      if checkbox2.state=cbchecked then
      showmessage('marcado')
      else
      if checkbox2.state=cbunchecked then
      showmessage('desmarcado')
      else
      if checkbox2.state=cbgrayed then
      showmessage('semi-marcado');
end;

end.
