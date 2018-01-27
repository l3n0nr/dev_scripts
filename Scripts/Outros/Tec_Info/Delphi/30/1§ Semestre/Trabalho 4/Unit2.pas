unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBTable, IBDatabase, IBQuery;

type
  TDatamodule2 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTCliente: TIBTable;
    IBQuery1: TIBQuery;
    IBTable1: TIBTable;
    IBQuery1PROX: TIntegerField;
    procedure IBTClienteNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datamodule2: TDatamodule2;

implementation

{$R *.dfm}

procedure TDatamodule2.IBTClienteNewRecord(DataSet: TDataSet);
begin
IBQuery1.close ;
IBQuery1.Open ;
IBTClienteCODIGO.Value := IBQuery1PROX.Value + 1 ;
if datamodule2.IBTCliente.FieldByName('PROX').AsString = ' ' then
IBTClienteCODIGO.Value := 1 ;

end;

end.
