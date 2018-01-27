unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, XPMan, Menus;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    XPManifest2: TXPManifest;
    MainMenu1: TMainMenu;
    abela1: TMenuItem;
    Mostrar1: TMenuItem;
    NaoMostrar1: TMenuItem;
    PesquisaGenro1: TMenuItem;
    ApresentarClientes1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Mostrar1Click(Sender: TObject);
    procedure NaoMostrar1Click(Sender: TObject);
    procedure PesquisaGenro1Click(Sender: TObject);
    procedure ApresentarClientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
   if datamodule2.IBDatabase1.connected = false then
     datamodule2.IBDatabase1.Connected := true;

   if datamodule2.IBTransaction1.active = true then
   begin
     datamodule2.IBTransaction1.active := false;
     datamodule2.IBTransaction1.StartTransaction;
   end;
   datamodule2.IBTCad.Open;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule2.IBTransaction1.Commit;
  datamodule2.IBTCad.Close;
end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var proximo : string;
begin
{
Quando o usu�rio pressiona um dos bot�es do
dbNavigator a vari�vel local Button que est� 
declarada no cabe�alho do Evento OnClick deste
componente recebe valores, veja quais:

Primeiro = nbfirst
Anterior = nbprior
Pr�ximo = nbnext
�ltimo = nblast
Inserir = nbinsert
Deletar = nbdelete
Editar = nbedit
Salvar = nbpost
Cancelar = nbcancel
Atualizar = nbrefresh

}

// Verifica se o bot�o pressionado no DBNavigator foi Insert
  if button = nbinsert then
  begin
    // Inicia o tratamento de Exce��es
    try
      datamodule2.IBTCad.Post;
      datamodule2.IBTransaction1.CommitRetaining;
    except
    // se gerar exce��o(der problema) neste caso n�o precisa fazer nada
    end;

    // Executa a Query
    datamodule2.IBQuery1.Open;
    // Busca da query executado o campo Prox como vari�vel String
    proximo := datamodule2.IBQuery1.FieldbyName('PROX').AsString;
    // Se a vari�vel proximo for '' ent�o quer dizer que n�o h� ningu�m 
    // cadastrado ainda e ent�o o proximo � 1
    if proximo = '' then
       proximo := '1';
    // Mostro no DBEdit1 o proximo
    DBEdit1.EditText:=proximo;
    DBEdit2.SetFocus;
    // Fecho a Query
    datamodule2.IBQuery1.Close;
  end;//fim do if
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels [1].Text := ' '+formatdatetime ('DDDD',now);// para data
  statusbar1.Panels [0].Text := ' '+formatdatetime ('hh:mm:ss',now);//para hora
end;

procedure TForm1.Button1Click(Sender: TObject);
var s:string [9] ;
    n:string ;
begin
datamodule2.IBTCad.Open;
while not(datamodule2.IBTCad.Eof) do
	begin
		n := datamodule2.IBTCad.Fieldbyname('nome') . Asstring ;
		s:=  datamodule2.IBTCad.Fieldbyname('nome') . Asstring ;
    if s='M' then
    s := 'Masculino'
    else
    if s='F' then
    s := 'Feminino'
    else
      s := 'Nao Informado' ;
		showmessage(n + ' � do sexo ' +  Dbedit5.Text ) ;
    datamodule2.IBTCad.next ;
end;

end;
procedure TForm1.Mostrar1Click(Sender: TObject);
begin
DbGrid1.visible := true;
end;

procedure TForm1.NaoMostrar1Click(Sender: TObject);
begin
DbGrid1.visible := false;
end;

procedure TForm1.PesquisaGenro1Click(Sender: TObject);
begin
Form3.Show ;
end;

procedure TForm1.ApresentarClientes1Click(Sender: TObject);
begin
datamodule2.IBTCad.Open;
while not(datamodule2.IBTCad.Eof) do
	begin
Showmessage ('O '+ trim(Dbedit2.text ) + 'que � do sexo ' + Dbedit5.text + ',tem '+ Dbedit3.text+ ' anos e mora em ' +Dbedit4.text + 'tem seu cadastro com o numero ' + Dbedit1.text);
 datamodule2.IBTCad.next ;
end;
end ;

end.
