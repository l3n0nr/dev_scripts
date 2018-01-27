unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TFRM_PRINCIPAL = class(TForm)
    XPManifest1: TXPManifest;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PRINCIPAL: TFRM_PRINCIPAL;

implementation

uses Unit2, u_cad_uso;

{$R *.dfm}

procedure TFRM_PRINCIPAL.Button1Click(Sender: TObject);
begin
FRM_USUARIO.show ;

end;

end.
