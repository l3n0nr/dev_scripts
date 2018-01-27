unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Visualizar1: TMenuItem;
    Sair1: TMenuItem;
    Fornecedoresdosprodutos1: TMenuItem;
    Image1: TImage;
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Fornecedoresdosprodutos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.Fornecedor1Click(Sender: TObject);
begin
form2.showmodal ;
end;

procedure TForm1.Produto1Click(Sender: TObject);
begin
form6.showmodal ;
end;

procedure TForm1.Fornecedoresdosprodutos1Click(Sender: TObject);
begin
form4.showmodal ;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
form1.close ;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dm.IBTS.commit;
  dm.IBT.close;
  dm.IBT0.close;
end;


end.
