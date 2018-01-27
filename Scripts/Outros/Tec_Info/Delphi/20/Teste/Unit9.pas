unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm9 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Button7: TButton;
    Button8: TButton;
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
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit10: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit11: TEdit;
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit10, Unit8;

{$R *.dfm}

procedure TForm9.Button6Click(Sender: TObject);
begin
Form1.close
end;

procedure TForm9.Button8Click(Sender: TObject);
begin
Form10.Show;
end;

procedure TForm9.Button7Click(Sender: TObject);
begin
Form8.show;
close
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Edit1.Clear ;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Edit2.Clear ;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
Edit3.Clear ;
end;

procedure TForm9.Button1Click(Sender: TObject);
var a,b,c : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 66) and (b = 150 ) and (c = 800 ) then
showmessage ( 'NIVEL 10');
Form10.Show ;

end;

end.
