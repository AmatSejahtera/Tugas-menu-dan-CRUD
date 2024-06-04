object Form4: TForm4
  Left = 216
  Top = 198
  Width = 1044
  Height = 540
  Caption = 'barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 32
    Width = 57
    Height = 19
    Caption = 'barkode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 224
    Top = 456
    Width = 133
    Height = 19
    Caption = 'MASUKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 72
    Width = 45
    Height = 19
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 112
    Width = 96
    Height = 19
    Caption = 'HARGA JUAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 40
    Top = 152
    Width = 91
    Height = 19
    Caption = 'HARGA BELI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 184
    Width = 40
    Height = 19
    Caption = 'STOK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 256
    Width = 85
    Height = 19
    Caption = 'SATUAN ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 216
    Width = 100
    Height = 19
    Caption = 'KATEGORI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 424
    Top = 104
    Width = 61
    Height = 19
    Caption = 'USER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 408
    Top = 136
    Width = 93
    Height = 19
    Caption = 'SUPPLIER ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 152
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 224
    Top = 288
    Width = 89
    Height = 33
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 344
    Top = 288
    Width = 81
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 456
    Top = 288
    Width = 81
    Height = 33
    Caption = 'DELETE'
    TabOrder = 11
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 336
    Width = 761
    Height = 105
    DataSource = DataModule1.DsBarang
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt10: TEdit
    Left = 368
    Top = 456
    Width = 137
    Height = 21
    TabOrder = 13
  end
  object btn4: TButton
    Left = 520
    Top = 456
    Width = 65
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = btn4Click
  end
  object edt3: TEdit
    Left = 152
    Top = 112
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object edt2: TEdit
    Left = 152
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 152
    Top = 152
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 152
    Top = 184
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 152
    Top = 216
    Width = 241
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 152
    Top = 256
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 536
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 536
    Top = 136
    Width = 241
    Height = 21
    TabOrder = 8
  end
end
