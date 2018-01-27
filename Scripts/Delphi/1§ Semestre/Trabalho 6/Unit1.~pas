unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, XPMan;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    XPManifest1: TXPManifest;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
   if dm.IBDatabase1.connected = false then
     dm.IBDatabase1.Connected := true;

   if dm.IBTransaction1.active = true then
   begin
     dm.IBTransaction1.active := false;
     dm.IBTransaction1.StartTransaction;
   end;
   dm.IBTCliente.Open;   

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.IBTransaction1.Commit;
  dm.IBTCliente.Close;
end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var proximo : string;
begin
{
Quando o usuário pressiona um dos botões do
dbNavigator a variável local Button que está 
declarada no cabeçalho do Evento OnClick deste
componente recebe valores, veja quais:

Primeiro = nbfirst
Anterior = nbprior
Próximo = nbnext
Último = nblast
Inserir = nbinsert
Deletar = nbdelete
Editar = nbedit
Salvar = nbpost
Cancelar = nbcancel
Atualizar = nbrefresh

}

// Verifica se o botão pressionado no DBNavigator foi Insert
  if button = nbinsert then
  begin
    // Inicia o tratamento de Exceções
    try
      dm.IBTCliente.Post;
      dm.IBTransaction1.CommitRetaining;
    except
    // se gerar exceção(der problema) neste caso não precisa fazer nada
    end;

    // Executa a Query
    dm.IBQuery1.Open;
    // Busca da query executado o campo Prox como variável String
    proximo := dm.IBQuery1.FieldbyName('PROX').AsString;
    // Se a variável proximo for '' então quer dizer que não há ninguém 
    // cadastrado ainda e então o proximo é 1
    if proximo = '' then
       proximo := '1';
    // Mostro no DBEdit1 o proximo
    DBEdit1.EditText:=proximo;
    DBEdit2.SetFocus;
    // Fecho a Query
    dm.IBQuery1.Close;
  end;//fim do if
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form3.showmodal ;
end;

end.
