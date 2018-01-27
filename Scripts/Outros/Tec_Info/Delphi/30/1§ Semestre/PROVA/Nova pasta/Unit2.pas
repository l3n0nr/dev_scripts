unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBTable;

type
  TDataModule2 = class(TDataModule)
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
