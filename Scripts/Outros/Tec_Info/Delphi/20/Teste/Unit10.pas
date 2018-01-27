unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
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
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit7: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit8: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit9: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit10: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit11: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Edit12: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit13: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Edit14: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Edit15: TEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Edit16: TEdit;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    procedure Button6Click(Sender: TObject);
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
  Form10: TForm10;

implementation

uses Unit1, Unit9, Unit11;

{$R *.dfm}

procedure TForm10.Button6Click(Sender: TObject);
begin
Form1.close 
end;

procedure TForm10.Button7Click(Sender: TObject);
begin
Form9.show;
close
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
Edit1.Clear ;
Edit2.Clear ;
Edit3.Clear ;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Edit1.Clear ;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
Edit2.Clear ;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
Edit3.Clear ;
end;

procedure TForm10.Button1Click(Sender: TObject);
var a,b,c : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
if (a = 66) and (b = 150 ) and (c = 800 ) then
showmessage ( 'PARABENS VOCE GANHOU' );
Form11.Show ;

end;

end.
