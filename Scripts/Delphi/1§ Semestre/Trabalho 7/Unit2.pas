unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBTable;

type
  TDM = class(TDataModule)
    IBTable1: TIBTable;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTable1DATA: TDateField;
    IBTable1HORA: TTimeField;
    IBTable1USUARIO: TIBStringField;
    IBTable1MENSAGEM: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
