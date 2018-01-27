unit Unit5;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBTable;

type
  TDM = class(TDataModule)
    IBT: TIBTable;
    IBDB: TIBDatabase;
    IBT0: TIBTable;
    IBTS: TIBTransaction;
    IBTCOD_FORN: TIntegerField;
    IBTNOME: TIBStringField;
    IBTFONE: TIBStringField;
    IBT0COD_PRO: TIntegerField;
    IBT0NOME: TIBStringField;
    IBT0PRECO_COMPRA: TIBBCDField;
    IBT0COD_FORN: TIntegerField;
    IBT0nome_fornecedor: TStringField;
    DS: TDataSource;
    DS1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Unit4;

{$R *.dfm}

end.
