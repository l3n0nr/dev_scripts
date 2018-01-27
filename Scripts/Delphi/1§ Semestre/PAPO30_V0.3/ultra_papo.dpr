program ultra_papo;

uses
  Vcl.Forms,
  u_principal in 'u_principal.pas' {frm_principal},
  u_datamodule in 'u_datamodule.pas' {dm: TDataModule},
  u_cad_usu in 'u_cad_usu.pas' {frm_cad_usu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_cad_usu, frm_cad_usu);
  Application.Run;
end.
