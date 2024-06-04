object Form5: TForm5
  Left = 192
  Top = 137
  Width = 1044
  Height = 540
  Caption = 'satuan'
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
  object lbl2: TLabel
    Left = 32
    Top = 280
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
    Width = 75
    Height = 19
    Caption = 'DISKRIPSI'
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
    Left = 88
    Top = 112
    Width = 65
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 112
    Width = 65
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 112
    Width = 65
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 160
    Width = 321
    Height = 105
    DataSource = DataModule1.DsSatuan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 176
    Top = 280
    Width = 137
    Height = 21
    TabOrder = 6
  end
  object btn4: TButton
    Left = 328
    Top = 280
    Width = 65
    Height = 25
    Caption = 'CARI'
    TabOrder = 7
    OnClick = btn4Click
  end
  object edt2: TEdit
    Left = 112
    Top = 64
    Width = 241
    Height = 21
    TabOrder = 1
  end
end
