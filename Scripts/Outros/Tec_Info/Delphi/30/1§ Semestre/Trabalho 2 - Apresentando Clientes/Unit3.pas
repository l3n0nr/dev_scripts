unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
Form1.Show ;
Form3.Close ;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if radiogroup1.itemindex=0 then
  datamodule2.IBTCad.Filter := 'upper(codigo)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBTCad.Filtered := true ;
   if radiogroup1.itemindex=1 then
  datamodule2.IBTCad.Filter := 'upper(sexo)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBTCad.Filtered := true ;
   if radiogroup1.itemindex=2 then
  datamodule2.IBTCad.Filter := 'upper(idade)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBTCad.Filtered := true ;
   if radiogroup1.itemindex=3 then
  datamodule2.IBTCad.Filter := 'upper(nome)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBTCad.Filtered := true ;
   if radiogroup1.itemindex=4 then
  datamodule2.IBTCad.Filter := 'upper(cidade)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBTCad.Filtered := true ;
  end;

end.
