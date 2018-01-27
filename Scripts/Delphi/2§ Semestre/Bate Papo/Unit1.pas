unit Unit1;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery, IBTable;

type
  TDM = class(TDataModule)
    IBQ: TIBQuery;
    IBDB: TIBDatabase;
    IBT: TIBTransaction;
    IBQ1: TIBQuery;
    IBQM: TIBQuery;
    IBQPROX: TIBQuery;
    IBQMMSG: TIBQuery;
    IBQMMSGCOD_MENSAGEM: TIntegerField;
    IBQMMSGDATA: TDateField;
    IBQMMSGHORA: TTimeField;
    IBQMMSGTEXTO: TIBStringField;
    IBQMMSGCOD_USU_ORI: TIntegerField;
    IBQMMSGCOD_USU_DEST: TIntegerField;
    IBT_USU: TIBTable;
    IBQMMSGNOME_ORI: TStringField;
    IBQMMSGNOME_DEST: TStringField;
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
