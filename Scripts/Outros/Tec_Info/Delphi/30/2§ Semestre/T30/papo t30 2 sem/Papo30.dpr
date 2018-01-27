program Papo30;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  datamodule in 'datamodule.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
