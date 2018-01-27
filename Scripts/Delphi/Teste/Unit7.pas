unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit7: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit8: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit9: TEdit;
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit8, Unit6;

{$R *.dfm}

procedure TForm7.Button6Click(Sender: TObject);
begin
Form1.close
end;

procedure TForm7.Button8Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
Form6.show;
close
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Edit1.Clear ;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Edit2.Clear ;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
Edit3.Clear ;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
end;

procedure TForm7.Button1Click(Sender: TObject);
var a,b,c : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 66) and (b = 150 ) and (c = 800 ) then
showmessage ( 'NIVEL 8');
Form8.Show ;

end;

end.
