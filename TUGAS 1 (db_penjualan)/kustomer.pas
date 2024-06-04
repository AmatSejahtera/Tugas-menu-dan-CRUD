unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    lbl3: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    lbl1: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a: string;

implementation

uses
  Zdb_penjualan;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('Select*From kustomer');
DataModule1.ZKustomer.Open;
ShowMessage('Data Berhasil Disimpan!');

end;

procedure TForm7.btn3Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('DELETE from kustomer where id= "'+a+'"');
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('Select*From kustomer');
DataModule1.ZKustomer.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('UPDATE kustomer set nik="'+edt1.Text+'",name="'+edt2.Text+'",telp="'+edt3.Text+'",email="'+edt4.Text+'",alamat="'+edt5.Text+'" where id= "'+a+'"');
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add ('Select*From kustomer');
DataModule1.ZKustomer.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.ZKustomer.Fields[1].AsString;
  edt2.Text := DataModule1.ZKustomer.Fields[2].AsString;
  edt3.Text := DataModule1.ZKustomer.Fields[3].AsString;
  edt4.Text := DataModule1.ZKustomer.Fields[4].AsString;
  edt5.Text := DataModule1.ZKustomer.Fields[5].AsString;
  a := DataModule1.ZKustomer.Fields[0].AsString;
end;


procedure TForm7.btn4Click(Sender: TObject);
var
  SearchName: string;
begin
  SearchName := edt6.Text;

  if SearchName = '' then
  begin
    DataModule1.ZKustomer.SQL.Clear;
    DataModule1.ZKustomer.SQL.Add ('Select*From kustomer');
    DataModule1.ZKustomer.Open;
    ShowMessage('Silakan masukkan nama untuk dicari.');
    Exit;
  end;

  DataModule1.ZKustomer.Close;
  DataModule1.ZKustomer.SQL.Clear;
  DataModule1.ZKustomer.SQL.Add('SELECT * FROM kustomer WHERE name LIKE :SearchName');
  DataModule1.ZKustomer.ParamByName('SearchName').Value := '%' + SearchName + '%';
  DataModule1.ZKustomer.Open;

  if DataModule1.ZKustomer.RecordCount = 0 then
  begin
    ShowMessage('Nama tidak ditemukan.');
  end;
end;

end.
