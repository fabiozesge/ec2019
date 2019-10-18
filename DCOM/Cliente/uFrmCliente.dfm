object FrmMain: TFrmMain
  Left = 225
  Top = 145
  Caption = 'Employee'
  ClientHeight = 312
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 733
    Height = 249
    Align = alTop
    DataSource = dsEmployee
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 25
    Top = 270
    Width = 121
    Height = 25
    Caption = 'Remote Echo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Texto'
  end
  object Edit2: TEdit
    Left = 279
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object dsEmployee: TDataSource
    DataSet = DM.cdsEmployee
    Left = 144
    Top = 64
  end
end
