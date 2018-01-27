unit Unidade1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    XPManifest1: TXPManifest;
    Label3: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses Unidade3, Unidade2, Unit1, global;

{$R *.dfm}

procedure TLogin.Label3Click(Sender: TObject);
begin

Cadastrar.Showmodal;
end;

procedure TLogin.Button1Click(Sender: TObject);
begin
//pesquisar para ver na tabela se tem o usuario e a senha
//digitada
//abrir o bando de dados
//se achar o usuario ver se a senha confere
//caso afirmativo entrar no sistema
//caso negativo mostrar mensagens de "usuario invalido
//procurando usuario

dm.IBQ.Close;
dm.IBQ.sql.clear ;
dm.IBQ.SQL.Add('SELECT COD_USU , LOGIN_USU , SENHA_USU FROM USUARIO');
dm.IBQ.SQL.Add(' WHERE LOGIN_USU =:login AND');
dm.IBQ.SQL.Add('SENHA_USU =:senha');
dm.IBQ.params.parambyname('login').asstring := edit1.text ;
dm.IBQ.params.parambyname('senha').asstring := edit2.text ;
dm.IBQ.Open ;
if dm.IBQ.fieldbyname('LOGIN_USU').Asstring <> '' then

begin
   g_login    := dm.IBQ.fieldbyname('LOGIN_USU').Asstring;
   g_cod_us_or:= dm.IBQ.fieldbyname('COD_USU').asstring ;
   showmessage('Seja Bem Vindo!')  ;
   Formulario.Showmodal ;
end
else
showmessage('Ops! Você deve se cadastrar antes de continuar.') ;
//mostrando formulario 3


end;

end.
