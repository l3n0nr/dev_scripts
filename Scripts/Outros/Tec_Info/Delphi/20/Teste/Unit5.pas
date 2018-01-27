unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
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
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit6, Unit4, Unit8;

{$R *.dfm}

procedure TForm5.Button6Click(Sender: TObject);
begin
Form1.close
end;

procedure TForm5.Button8Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
Form4.show;
close
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Edit7.Clear ;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Edit5.Clear ;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Edit6.Clear ;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
Edit4.Clear ;
Edit5.clear ;
Edit6.clear ;
Edit7.clear ;
end;

procedure TForm5.FormCreate(Sender: TObject);
var a,b,c : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 66) and (b = 150 ) and (c = 800 ) then
showmessage ( 'NIVEL 6');
Form6.Show ;

end;

procedure TForm5.Button1Click(Sender: TObject);
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
