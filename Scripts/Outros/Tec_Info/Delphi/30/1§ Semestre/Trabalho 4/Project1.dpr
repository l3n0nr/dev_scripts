program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'D:\Users\Lenon\Desktop\Trabalho 5\Unit2.pas' {Datamodule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDatamodule2, Datamodule2);
  Application.Run;
end.
