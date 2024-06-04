object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 137
  Height = 283
  Width = 461
  object ZKategori: TZQuery
    Connection = ZConnetion1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 104
    Top = 64
  end
  object ZConnetion1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ASUS\OneDrive\Documents\aat\s.4\Pemrograman Visual 2\li' +
      'bmysql\libmysql.dll'
    Left = 32
    Top = 56
  end
  object dsKategori: TDataSource
    DataSet = ZKategori
    Left = 104
    Top = 136
  end
  object ZSatuan: TZQuery
    Connection = ZConnetion1
    Active = True
    SQL.Strings = (
      'select*from satuan')
    Params = <>
    Left = 168
    Top = 56
  end
  object DsSatuan: TDataSource
    DataSet = ZSatuan
    Left = 168
    Top = 136
  end
  object ZSupplier: TZQuery
    Connection = ZConnetion1
    Active = True
    SQL.Strings = (
      'select*from supplier')
    Params = <>
    Left = 224
    Top = 56
  end
  object DsSupplier: TDataSource
    DataSet = ZSupplier
    Left = 224
    Top = 136
  end
  object ZKustomer: TZQuery
    Connection = ZConnetion1
    Active = True
    SQL.Strings = (
      'SELECT*FROM kustomer')
    Params = <>
    Left = 296
    Top = 56
  end
  object DsKustomer: TDataSource
    DataSet = ZKustomer
    Left = 296
    Top = 136
  end
  object zBarang: TZQuery
    Connection = ZConnetion1
    Active = True
    SQL.Strings = (
      'SELECT*FROM barang')
    Params = <>
    Left = 296
    Top = 56
  end
  object DsBarang: TDataSource
    DataSet = zBarang
    Left = 296
    Top = 136
  end
end
