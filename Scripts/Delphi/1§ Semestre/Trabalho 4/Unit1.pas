unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, XPMan;

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
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    DBRadioGroup1: TDBRadioGroup;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

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
   datamodule2.IBTCliente.Open;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule2.IBTransaction1.Commit;
  datamodule2.IBTCliente.Close;
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
      datamodule2.IBTCliente.Post;
      datamodule2.IBTransaction1.CommitRetaining;
    except
    // se gerar exceção(der problema) neste caso não precisa fazer nada
    end;

    // Executa a Query
    datamodule2.IBQuery1.Open;
    // Busca da query executado o campo Prox como variável String
    proximo := datamodule2.IBQuery1.FieldbyName('PROX').AsString;
    // Se a variável proximo for '' então quer dizer que não há ninguém 
    // cadastrado ainda e então o proximo é 1
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
var s:string [15] ;
    n:string ;
begin
datamodule2.IBTCliente.Open;
while not(datamodule2.IBTCliente.Eof) do
	begin
		n := datamodule2.IBTCliente.Fieldbyname('nome') . Asstring ;
		s:=  datamodule2.IBTCliente.Fieldbyname('nome') . Asstring ;
    if s='M' then
    s := 'Masculino'
    else
    if s='F' then
    s := 'Feminino'
    else
      s := 'Nao Informado' ;
		showmessage(n+'é do sexo') ;
    datamodule2.IBTCliente.next ;
end;

end;
end.
