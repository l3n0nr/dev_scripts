unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, IBDatabase, DB, IBCustomDataSet, IBTable,
  StdCtrls, Mask, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    RadioButton6: TRadioButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
groupbox1.Visible := true ;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if radiobutton1.Checked = true then
  datamodule2.IBT.Filter := 'upper(placa)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
   if radiobutton2.Checked = true then
  datamodule2.IBT.Filter := 'upper(cor)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
   if radiobutton3.Checked = true then
  datamodule2.IBT.Filter := 'upper(ano)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
   if radiobutton4.Checked = true then
  datamodule2.IBT.Filter := 'upper(valor)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
   if radiobutton5.Checked = true then
  datamodule2.IBT.Filter := 'upper(modelo)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
   if radiobutton6.Checked = true then
  datamodule2.IBT.Filter := 'upper(marca)like ' + #39 + UpperCase (edit1.text) + '%' + #39 ;
  datamodule2.IBT.Filtered := true ;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  datamodule2.IBT.Filtered := false ;
  edit1.clear ;
  edit1.SetFocus;
end;

end.
