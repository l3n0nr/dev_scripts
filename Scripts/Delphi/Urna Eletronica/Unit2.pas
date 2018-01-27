unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel1: TPanel;
    Label2: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;


{$R *.dfm}

procedure TForm2.Button4Click(Sender: TObject);
var a : integer ;
begin
a := strtoint(edit1.Text);

Panel1.color := clRed ;
Form7.Show ;



end;

procedure TForm2.Button5Click(Sender: TObject);
var a,b : integer ;
begin
Panel1.color := clHotLight ;
a := strtoint(Edit2.Text) ;
a := a+1 ;
Edit2.Text := inttostr(a);
Form8.Show ;



end;

procedure TForm2.Button6Click(Sender: TObject);

begin

Panel1.color := clBlack ;
Form9.Show ;



end;

procedure TForm2.Button1Click(Sender: TObject);

begin
Panel1.color := clBtnHighlight ;
Form10.Show ;


end;

procedure TForm2.Button2Click(Sender: TObject);
var a,b,c,d : integer ;
begin


end;

end.
