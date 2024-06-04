unit supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt10: TEdit;
    btn4: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt2: TEdit;
    Label1: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    lbl8: TLabel;
    edt8: TEdit;
    lbl9: TLabel;
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
  Form6: TForm6;
  a: string;

implementation

uses
  Zdb_penjualan;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('insert into supplier values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
DataModule1.ZSupplier.ExecSQL;

DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('Select*From supplier');
DataModule1.ZSupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('UPDATE supplier set nik="'+edt1.Text+'",name="'+edt2.Text+'",telp="'+edt3.Text+'",alamat="'+edt4.Text+'",email="'+edt5.Text+'",perusahaan="'+edt6.Text+'",nama_bank="'+edt7.Text+'",akun_bank="'+edt8.Text+'",no_akun_bank="'+edt9.Text+'" where id= "'+a+'"');
DataModule1.ZSupplier.ExecSQL;

DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('Select*From supplier');
DataModule1.ZSupplier.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.ZSupplier.Fields[1].AsString;
  edt2.Text := DataModule1.ZSupplier.Fields[2].AsString;
  edt3.Text := DataModule1.ZSupplier.Fields[3].AsString;
  edt4.Text := DataModule1.ZSupplier.Fields[4].AsString;
  edt5.Text := DataModule1.ZSupplier.Fields[5].AsString;
  edt6.Text := DataModule1.ZSupplier.Fields[6].AsString;
  edt7.Text := DataModule1.ZSupplier.Fields[7].AsString;
  edt8.Text := DataModule1.ZSupplier.Fields[8].AsString;
  edt9.Text := DataModule1.ZSupplier.Fields[9].AsString;
  a := DataModule1.ZSupplier.Fields[0].AsString;
end;


procedure TForm6.btn3Click(Sender: TObject);
begin
DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('DELETE from supplier where id= "'+a+'"');
DataModule1.ZSupplier.ExecSQL;

DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add ('Select*From supplier');
DataModule1.ZSupplier.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm6.btn4Click(Sender: TObject);
var
  SearchName: string;
begin
  SearchName := edt10.Text;

  if SearchName = '' then
  begin
    DataModule1.ZSupplier.SQL.Clear;
    DataModule1.ZSupplier.SQL.Add ('Select*From supplier');
    DataModule1.ZSupplier.Open;
    ShowMessage('Silakan masukkan nama untuk dicari.');
    Exit;
  end;

  DataModule1.ZSupplier.Close;
  DataModule1.ZSupplier.SQL.Clear;
  DataModule1.ZSupplier.SQL.Add('SELECT * FROM supplier WHERE name LIKE :SearchName');
  DataModule1.ZSupplier.ParamByName('SearchName').Value := '%' + SearchName + '%';
  DataModule1.ZSupplier.Open;

  if DataModule1.ZSupplier.RecordCount = 0 then
  begin
    ShowMessage('Nama tidak ditemukan.');
  end;
end;

end.
