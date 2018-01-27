unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses datamodule;

procedure TForm1.Button1Click(Sender: TObject);
begin

//Buscar na tabela para ver se tem o usuario e a senha
//digitada

//procurar o usuário
//achar o usuário ver se a senha confere
// caso afirmativo entrar no sistema
// caso negativo mostrar mensagem de "usuario invalido"

dm.IBQuery1.Close;
dm.IBQuery1.sql.Clear;
dm.IBQuery1.SQL.add('SELECT COD_USU, NOME_USU FROM USUARIO ');
dm.IBQuery1.SQL.add('WHERE LOGIN_USU = :login AND ');
dm.IBQuery1.SQL.add('SENHA_USU = :senha');

dm.IBQuery1.Params.ParamByName('login').asstring := edit1.Text;
dm.IBQuery1.Params.ParamByName('senha').AsString := edit2.Text;

dm.IBQuery1.Open;

if dm.IBQuery1.FieldByName('COD_USU').AsString <>'' then
  showmessage('achei')
else
  showmessage('não achei');



end;

end.
