unit kategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
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
  Form3: TForm3;
  a : string;

implementation

uses
  mainMenu, Zdb_penjualan;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('insert into kategori values(null,"'+edt1.Text+'")');
DataModule1.ZKategori.ExecSQL;

DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('Select*From kategori');
DataModule1.ZKategori.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule1.ZKategori.ExecSQL;

DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('Select*From kategori');
DataModule1.ZKategori.Open;
ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.ZKategori.Fields[1].AsString;
  a := DataModule1.ZKategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('delete from kategori where id= "'+a+'"');
DataModule1.ZKategori.ExecSQL;

DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add ('Select*From kategori');
DataModule1.ZKategori.Open;
ShowMessage('Data Berhasil Dihapus');
end;

procedure TForm3.btn4Click(Sender: TObject);
var
  SearchName: string;
begin
  SearchName := edt2.Text;

  if SearchName = '' then
  begin
    DataModule1.ZKategori.SQL.Clear;
    DataModule1.ZKategori.SQL.Add ('Select*From kategori');
    DataModule1.ZKategori.Open;
    ShowMessage('Silakan masukkan nama untuk dicari.');
    Exit;
  end;

  DataModule1.ZKategori.Close;
  DataModule1.ZKategori.SQL.Clear;
  DataModule1.ZKategori.SQL.Add('SELECT * FROM kategori WHERE name LIKE :SearchName');
  DataModule1.ZKategori.ParamByName('SearchName').Value := '%' + SearchName + '%';
  DataModule1.ZKategori.Open;

  if DataModule1.ZKategori.RecordCount = 0 then
  begin
    ShowMessage('Nama tidak ditemukan.');
  end;
end;
end.
