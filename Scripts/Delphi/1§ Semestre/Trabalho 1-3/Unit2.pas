unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBTable, IBQuery;

type
  TDataModule2 = class(TDataModule)
    IBT: TIBTable;
    IBTrans: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBTCODIGO: TIntegerField;
    IBTNOME_PRODUTO: TIBStringField;
    IBTPREO_COMPRA: TIBBCDField;
    IBTQUANT_ESTOQUE: TIBBCDField;
    IBQuery1: TIBQuery;
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
