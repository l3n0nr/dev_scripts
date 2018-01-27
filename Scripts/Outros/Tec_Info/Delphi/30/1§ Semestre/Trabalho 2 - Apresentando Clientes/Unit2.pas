unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBQuery, IBTable;

type
  TDatamodule2 = class(TDataModule)
    IBTCad: TIBTable;
    IBQuery1: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTCadCODIGO: TIntegerField;
    IBTCadNOME: TIBStringField;
    IBTCadIDADE: TIntegerField;
    IBTCadCIDADE: TIBStringField;
    IBTCadSEXO: TIBStringField;
    IBTMun: TIBTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datamodule2: TDatamodule2;

implementation

{$R *.dfm}

end.
