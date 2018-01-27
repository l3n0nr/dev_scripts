unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBTable;

type
  TDM = class(TDataModule)
    IBTONI: TIBTable;
    Onibus: TIBDatabase;
    Passageiros: TIBDatabase;
    Viagens: TIBDatabase;
    IBTSONI: TIBTransaction;
    DSONI: TDataSource;
    DSPAS: TDataSource;
    DSVIA: TDataSource;
    IBTPAS: TIBTable;
    IBTVIA: TIBTable;
    IBTPASRG: TIntegerField;
    IBTPASNOME: TIBStringField;
    IBTVIANUMERODEVIAGENS: TIntegerField;
    IBTVIADATA: TDateField;
    IBTVIAHORA: TIntegerField;
    IBTVIAORIGEM: TIBStringField;
    IBTVIADESTINO: TIBStringField;
    IBTAGE: TIBTable;
    Agendar: TIBDatabase;
    DSAGE: TDataSource;
    IBTPASCODIGO: TIntegerField;
    Local: TIBDatabase;
    IBLOC: TIBTable;
    DSLOC: TDataSource;
    IBTSOPAS: TIBTransaction;
    IBTSOVIA: TIBTransaction;
    IBTOSOAGE: TIBTransaction;
    IBTOSOLO: TIBTransaction;
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
