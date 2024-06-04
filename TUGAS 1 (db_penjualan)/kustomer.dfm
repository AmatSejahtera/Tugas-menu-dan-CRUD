object Form7: TForm7
  Left = 192
  Top = 137
  Width = 1044
  Height = 540
  Caption = 'kustomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 32
    Top = 32
    Width = 26
    Height = 19
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 384
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
  object lbl1: TLabel
    Left = 32
    Top = 64
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
    Left = 32
    Top = 96
    Width = 36
    Height = 19
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 32
    Top = 128
    Width = 46
    Height = 19
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 32
    Top = 160
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 112
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 96
    Top = 216
    Width = 65
    Height = 25
    Caption = 'INSERT'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 216
    Width = 65
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 216
    Width = 65
    Height = 25
    Caption = 'DELETE'
    TabOrder = 7
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 264
    Width = 385
    Height = 105
    DataSource = DataModule1.DsKustomer
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 112
    Top = 64
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btn4: TButton
    Left = 336
    Top = 384
    Width = 65
    Height = 25
    Caption = 'CARI'
    TabOrder = 10
    OnClick = btn4Click
  end
  object edt3: TEdit
    Left = 112
    Top = 96
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 128
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 112
    Top = 160
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 176
    Top = 384
    Width = 153
    Height = 21
    TabOrder = 9
  end
end
