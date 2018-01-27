unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
      form1.color := clHotLight ;
      form2.show ;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
      form1.color := clFuchsia;
      form3.show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.Show;
end;

end.
