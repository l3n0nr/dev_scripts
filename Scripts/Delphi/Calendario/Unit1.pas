unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button1: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  //  procedure Edit1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var dianasc,mesnasc,anonasc,diaatual,mesatual,anoatual,idade,dias,meses,anos,diasdomes: real ; {declaraçao de variaveis }
begin
dianasc:=strtofloat(edit1.Text);   //dia de nascimento//
mesnasc:=strtofloat(edit2.Text);   //mes de nascimento//
anonasc:=strtofloat(edit3.Text);   //ano de nascimento//
diaatual:=strtofloat(edit4.Text);  //dia atual//
mesatual:=strtofloat(edit5.Text);  //mes atual//
anoatual:=strtofloat(edit6.Text);  //data atual//
idade:=anoatual-anonasc;           //descobrindo a idade//
if dias  > 30 then                 //se o numero digitado for maior que 30//
showmessage ('DIGITE UM VALOR MENOR QUE 31 , O NUMERO MAXIMO DE DIAS É 30')
else
dias:=diaatual-dianasc;            //descobrindo os dias que a pessoa tem//
if meses > 12 then                 //se o numero digitado for maior que 12//
showmessage ('DIGITE UM VALOR MENOR QUE 13 , O NUMERO MAXIMO DE MESES É 12')
else
meses:=mesnasc-mesatual;           //descobrindo os dias que a pessoa tem//
diasdomes:=30 ;                     //dizendo a quantidade de dias do mes que a pessoa nasceu//
Edit7.Text:=floattostr(idade);     //reconvertendo o valor adiquirido//
Edit11.Text:=floattostr(dias);     //reconvertendo o valor adiquirido//
Edit12.Text:=floattostr(meses);    //reconvertendo o valor adiquirido//
Edit10.Text:=floattostr(anos);     //reconvertendo o valor adiquirido//
Edit9.Text:=floattostr(diasdomes);     //reconvertendo o valor adiquirido//
if (dianasc >= 21) and (mesnasc = 3) then //se o dia de nascimento for maior ou igual a 21 e o numero do mes foi igual a 3//
if (dianasc <= 20) and (mesnasc = 4) then  //se o dia de nascimento for menor ou igual a 20 e o numero do mes foi igual a 4//
edit8.Text:= 'ARIES' ;
if (dianasc >= 21) and (mesnasc = 4) then //se o dia de nascimento for maior ou igual a 21 e o numero do mes foi igual a 4//
if (dianasc <= 21) and (mesnasc = 5) then  //se o dia de nascimento for menor ou igual a 21 e o numero do mes foi igual a 5//
edit8.Text:= 'TOURO' ;
if (dianasc >= 22) and (mesnasc = 5) then //se o dia de nascimento for maior ou igual a 22 e o numero do mes foi igual a 5//
if (dianasc <= 21) and (mesnasc = 6) then  //se o dia de nascimento for menor ou igual a 21 e o numero do mes foi igual a 6//
edit8.Text:= 'GEMEOS' ;
if (dianasc >= 21) and (mesnasc = 6) then //se o dia de nascimento for maior ou igual a 21 e o numero do mes foi igual a 6//
if (dianasc <= 23) and (mesnasc = 7) then  //se o dia de nascimento for menor ou igual a 23 e o numero do mes foi igual a 7//
edit8.Text:='CANCER';
if (dianasc >= 24) and (mesnasc = 7) then //se o dia de nascimento for maior ou igual a 24 e o numero do mes foi igual a 7//
if (dianasc <= 23) and (mesnasc = 8) then  //se o dia de nascimento for menor ou igual a 23 e o numero do mes foi igual a 8//
edit8.Text:='LEAO';
if (dianasc >= 24) and (mesnasc = 8) then //se o dia de nascimento for maior ou igual a 24 e o numero do mes foi igual a 8//
if (dianasc <= 23) and (mesnasc = 9) then  //se o dia de nascimento for menor ou igual a 23 e o numero do mes foi igual a 9//
edit8.Text:='VIRGEM';
if (dianasc >= 24) and (mesnasc = 9) then //se o dia de nascimento for maior ou igual a 24 e o numero do mes foi igual a 9//
if (dianasc <= 23) and (mesnasc = 10) then  //se o dia de nascimento for menor ou igual a 23 e o numero do mes foi igual a 10//
edit8.Text:='LIBRA';
if (dianasc >= 24) and (mesnasc = 10) then //se o dia de nascimento for maior ou igual a 21 e o numero do mes foi igual a 10//
if (dianasc <= 22) and (mesnasc = 11) then  //se o dia de nascimento for menor ou igual a 22 e o numero do mes foi igual a 11//
edit8.Text:='ESCORPIAO';
if (dianasc >= 23) and (mesnasc = 11) then //se o dia de nascimento for maior ou igual a 23 e o numero do mes foi igual a 11//
if (dianasc <= 21) and (mesnasc = 12) then  //se o dia de nascimento for menor ou igual a 21 e o numero do mes foi igual a 12//
edit8.Text:='SAGITARIO';
if (dianasc >= 22) and (mesnasc = 12) then //se o dia de nascimento for maior ou igual a 22 e o numero do mes foi igual a 12//
if (dianasc <= 20) and (mesnasc = 1) then  //se o dia de nascimento for menor ou igual a 20 e o numero do mes foi igual a 1//
edit8.Text:='CAPRICORNIO';
if (dianasc >= 21) and (mesnasc = 1) then //se o dia de nascimento for maior ou igual a 21 e o numero do mes foi igual a 1//
if (dianasc <= 19) and (mesnasc = 2) then  //se o dia de nascimento for menor ou igual a 19 e o numero do mes foi igual a 2//
edit8.Text:='AQUARIO';
if (dianasc >= 20) and (mesnasc = 2) then //se o dia de nascimento for maior ou igual a 20 e o numero do mes foi igual a 2//
if (dianasc <= 20) and (mesnasc = 3) then  //se o dia de nascimento for menor ou igual a 20 e o numero do mes foi igual a 3//
edit8.Text:='PEIXES';




end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit4.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit5.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit3.Clear;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
Edit11.Clear;
Edit12.Clear;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit2.Clear;
end;
 {
procedure TForm1.Edit1Change(Sender: TObject);
begin
Edit1.Clear;
end;
  }
procedure TForm1.Button7Click(Sender: TObject);
begin
Edit6.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.clear;
end;

end.
