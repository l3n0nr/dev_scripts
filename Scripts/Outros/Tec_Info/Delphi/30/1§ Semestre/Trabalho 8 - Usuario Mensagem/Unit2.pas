unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBTable, IBQuery;

type
  TDM = class(TDataModule)
    IBDB: TIBDatabase;
    IBTS: TIBTransaction;
    IBQ: TIBQuery;
    IBQuery1: TIBQuery;
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
