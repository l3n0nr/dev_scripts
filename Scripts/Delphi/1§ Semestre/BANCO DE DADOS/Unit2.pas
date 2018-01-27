unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBTable, IBDatabase;

type
  TDM = class(TDataModule)
    IBDB1: TIBDatabase;
    IBTrans1: TIBTransaction;
    IBTab1: TIBTable;
    IBTab1COD_CLIENTE: TIntegerField;
    IBTab1NOME: TIBStringField;
    IBTab1DATA_NASCIMENTO: TDateField;
    IBTab1FONE: TIBStringField;
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
