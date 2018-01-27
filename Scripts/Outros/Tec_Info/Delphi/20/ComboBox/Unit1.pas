unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
begin
combobox1.Items.add(combobox1.text)  ;
combobox1.text := ' ' ;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
combobox1.DeleteSelected ; 
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
combobox1.Clear ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
combobox1.Items.SaveToFile('C:\Users\User\Desktop\Caminho.txt') ; 
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
combobox1.Items.Loadfromfile('C:\Users\User\Desktop\Caminho.txt') ;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Showmessage(combobox1.Items[1]) ;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Showmessage(inttostr(combobox1.Items.count)) ; 
end;

end.
