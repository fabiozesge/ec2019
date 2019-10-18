object FrmMain: TFrmMain
  Left = 225
  Top = 145
  Caption = 'Employee'
  ClientHeight = 49
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Remote Echo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Texto'
  end
  object Edit2: TEdit
    Left = 287
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
