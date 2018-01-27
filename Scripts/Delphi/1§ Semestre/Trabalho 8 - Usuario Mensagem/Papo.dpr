program Papo;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FRM_PRINCIPAL},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  u_cad_uso in 'u_cad_uso.pas' {FRM_USUARIO};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_PRINCIPAL, FRM_PRINCIPAL);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFRM_USUARIO, FRM_USUARIO);
  Application.Run;
end.
