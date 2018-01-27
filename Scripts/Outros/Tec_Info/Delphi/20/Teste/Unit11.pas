unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
form1.show ;
form2.close ;
form3.close ;
form4.close ;
form5.close ;
form6.close ;
form7.close ;
form8.close ;
form9.close ;
form10.close ;
form11.close ;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
form1.close
end;

end.
