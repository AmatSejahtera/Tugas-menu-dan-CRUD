unit satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    lbl3: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt3: TEdit;
    btn4: TButton;
    lbl1: TLabel;
    edt2: TEdit;
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
  Form5: TForm5;
  a: string;

implementation

uses
  Zdb_penjualan;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('insert into satuan values(null,"'+edt1.Text+'","'+edt2.Text+'")');
DataModule1.ZSatuan.ExecSQL;

DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('Select*From satuan');
DataModule1.ZSatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('UPDATE satuan set name="'+edt1.Text+'", diskripsi="'+edt2.Text+'" where id= "'+a+'"');
DataModule1.ZSatuan.ExecSQL;

DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('Select*From satuan');
DataModule1.ZSatuan.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.ZSatuan.Fields[1].AsString;
  edt2.Text := DataModule1.ZSatuan.Fields[2].AsString;
  a := DataModule1.ZSatuan.Fields[0].AsString;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('DELETE from satuan where id= "'+a+'"');
DataModule1.ZSatuan.ExecSQL;

DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add ('Select*From satuan');
DataModule1.ZSatuan.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm5.btn4Click(Sender: TObject);
var
  SearchName: string;
begin
  SearchName := edt3.Text;

  if SearchName = '' then
  begin
    DataModule1.ZSatuan.SQL.Clear;
    DataModule1.ZSatuan.SQL.Add ('Select*From satuan');
    DataModule1.ZSatuan.Open;
    ShowMessage('Silakan masukkan nama untuk dicari.');
    Exit;
  end;

  DataModule1.ZSatuan.Close;
  DataModule1.ZSatuan.SQL.Clear;
  DataModule1.ZSatuan.SQL.Add('SELECT * FROM satuan WHERE name LIKE :SearchName');
  DataModule1.ZSatuan.ParamByName('SearchName').Value := '%' + SearchName + '%';
  DataModule1.ZSatuan.Open;

  if DataModule1.ZSatuan.RecordCount = 0 then
  begin
    ShowMessage('Nama tidak ditemukan.');
  end;
end;

end.
