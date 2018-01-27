unit u_cad_usu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_cad_usu = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_usu: Tfrm_cad_usu;

implementation

{$R *.dfm}

uses u_datamodule;

procedure Tfrm_cad_usu.Button1Click(Sender: TObject);
var
  proximo:string;
begin
  if edit4.Text = edit5.Text then
  begin
  with dm.IBQuery1 do
  begin
    //limpando o SQL do IBQuery
    SQL.Clear;

    //construindo o sql
    SQL.Add('INSERT INTO USUARIO ');
    SQL.Add('(COD_USU, NOME_COMPLETO, NOME_USU, SENHA)');
    SQL.Add('VALUES(:p_cod_usu, :p_nome_completo, ');
    SQL.Add(':p_nome_usu, :p_senha)');

    //Pegando o próximo registro
    dm.IBQuery2.SQL.Clear;
    dm.IBQuery2.SQL.Add('SELECT MAX(COD_USU)+1 AS PROX FROM USUARIO');
    dm.IBQuery2.Open;
    // Buscando o resultado da consulta

    proximo := dm.IBQuery2.FieldByName('PROX').Asstring;

    if proximo<>'' then
      proximo:= dm.IBQuery2.FieldByName('PROX').Asstring
    else
      proximo:= '1';


    //Associando os parâmetros

    Params.ParamByName('p_cod_usu').Value := strtoint(proximo);

    Params.ParamByName('p_nome_completo').Value := edit2.Text;
    Params.ParamByName('p_nome_usu').Value := edit3.Text;
    Params.ParamByName('p_senha').Value := edit4.Text;

    //Executar a query
    Open;

    // Confirmando a transação para não precisar fechar para realmente
    // gravar no banco de dados
    dm.IBTransaction1.CommitRetaining;

      end ;
      end

      else

      begin
      Showmessage (' Senha e confirmação da senha sao diferentes' ) ;
      Edit4.Color := Clyellow  ;
      Edit5.Color := Clyellow ;
      end;
   end ;


procedure Tfrm_cad_usu.Edit5Change(Sender: TObject);
begin
if edit4.Text = edit5.text then
edit5.Color := clgreen
else
edit5.Color := clred ;
end;

end.
