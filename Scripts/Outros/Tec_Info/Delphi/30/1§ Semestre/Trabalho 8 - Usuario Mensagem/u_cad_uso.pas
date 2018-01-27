unit u_cad_uso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFRM_USUARIO = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_USUARIO: TFRM_USUARIO;

implementation

uses Unit2;

{$R *.dfm}

procedure TFRM_USUARIO.Button1Click(Sender: TObject);
var
  proximo:string ;
begin
//WITH dm.IBQ DO EVITA QUE SE REPITAM OS 'IBT'
//limpar o campo QUERY
dm.IBQ.SQL.clear ;
DM.IBQ.SQL.ADD('INSERT INTO USUARIO');
DM.IBQ.SQL.ADD('(COD_USU , NOME_COMPLETO,NOME_USU ,SENHA)');
DM.IBQ.SQL.ADD('VALUES(:p_cod_usu, :p_nomecompleto ,:p_nome_usu , :p_senha)') ;

//pegando o proximmo registro

dm.IBQuery1.SQL.Clear;
dm.IBQuery1.SQL.Add('SELECT MAX (COD_USU) +1 AS PROX FROM USUARIO');
dm.IBQuery1.Open;
//buscando o resultado da consulta
proximo := dm.IBQuery1.FieldByName('PROX').Asstring ;
  if proximo <> ' ' then
  proximo := dm.IBQuery1.FieldByName('PROX').AsString
  else
  proximo := '1' ;
//associando os parametros
dm.IBQ.params.parambyname('p_cod_usu').value := strtoint(proximo) ;
DM.IBQ.Params.ParamByName('p_nome_completo').value := edit2.text ;
DM.IBQ.Params.ParamByName('p_nome_usu').value := edit3.text ;
DM.IBQ.Params.ParamByName('p_senha').value := edit4.text ;

//executar a query
dm.IBQ.Open ;

//confirmar a transação sem precisar fechar o programa ;
dm.IBTS.CommitRetaining ;
end;

end.
