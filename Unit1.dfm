object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ShakerSort'
  ClientHeight = 140
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 90
    Height = 13
    Caption = 'Originales Array: 0'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 90
    Height = 13
    Caption = 'Sortiertes Array: 0'
  end
  object Button1: TButton
    Left = 32
    Top = 100
    Width = 481
    Height = 25
    Caption = 'BERECHNEN'
    TabOrder = 0
    OnClick = Button1Click
  end
end
