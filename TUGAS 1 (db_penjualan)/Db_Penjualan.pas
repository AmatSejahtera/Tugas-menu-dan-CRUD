unit Db_Penjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl10: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt10: TEdit;
    btn4: TButton;
    edt3: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a: string;

implementation

uses
  Zdb_penjualan;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('insert into barang values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
DataModule1.zBarang.ExecSQL;

DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('Select*From barang');
DataModule1.zBarang.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('update barang set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule1.zBarang.ExecSQL;

DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('Select*From barang');
DataModule1.zBarang.Open;
ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.zBarang.Fields[1].AsString;
  edt2.Text := DataModule1.zBarang.Fields[2].AsString;
  edt3.Text := DataModule1.zBarang.Fields[3].AsString;
  edt4.Text := DataModule1.zBarang.Fields[4].AsString;
  edt5.Text := DataModule1.zBarang.Fields[5].AsString;
  edt6.Text := DataModule1.zBarang.Fields[6].AsString;
  edt7.Text := DataModule1.zBarang.Fields[7].AsString;
  edt8.Text := DataModule1.zBarang.Fields[8].AsString;
  edt9.Text := DataModule1.zBarang.Fields[9].AsString;
  a := DataModule1.zBarang.Fields[0].AsString;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('DELETE from barang where id= "'+a+'"');
DataModule1.zBarang.ExecSQL;

DataModule1.zBarang.SQL.Clear;
DataModule1.zBarang.SQL.Add ('Select*From barang');
DataModule1.zBarang.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm4.btn4Click(Sender: TObject);
var
  SearchName: string;
begin
  SearchName := edt10.Text;

  if SearchName = '' then
  begin
    DataModule1.zBarang.SQL.Clear;
    DataModule1.zBarang.SQL.Add ('Select*From barang');
    DataModule1.zBarang.Open;
    ShowMessage('Silakan masukkan nama untuk dicari.');
    Exit;
  end;

  DataModule1.zBarang.Close;
  DataModule1.zBarang.SQL.Clear;
  DataModule1.zBarang.SQL.Add('SELECT * FROM barang WHERE name LIKE :SearchName');
  DataModule1.zBarang.ParamByName('SearchName').Value := '%' + SearchName + '%';
  DataModule1.zBarang.Open;

  if DataModule1.zBarang.RecordCount = 0 then
  begin
    ShowMessage('Nama tidak ditemukan.');
  end;
end;

end.
