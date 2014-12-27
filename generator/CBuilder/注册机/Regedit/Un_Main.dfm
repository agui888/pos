object Fm_Main: TFm_Main
  Left = 249
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = #27880#20876#26426
  ClientHeight = 345
  ClientWidth = 529
  Color = 4934475
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 5
    Top = 30
    Width = 516
    Height = 275
    Brush.Color = clBlack
    Pen.Color = clGray
    Pen.Mode = pmMerge
  end
  object Label3: TLabel
    Left = 12
    Top = 9
    Width = 399
    Height = 12
    Caption = 'CBuilder - '#27880#20876#26426' ('#29992#25143#30003#35831#27880#20876#20449#24687#22312'1349594420@qq.com'#37038#31665')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape4: TShape
    Left = 454
    Top = 311
    Width = 67
    Height = 24
    Brush.Color = clBlack
    Pen.Color = clGray
    Pen.Mode = pmMerge
  end
  object Shape3: TShape
    Left = 241
    Top = 269
    Width = 67
    Height = 24
    Brush.Color = clBlack
    Pen.Color = clGray
    Pen.Mode = pmMerge
  end
  object Label1: TLabel
    Left = 18
    Top = 44
    Width = 42
    Height = 12
    Caption = #26426#22120#30721':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 159
    Width = 42
    Height = 12
    Caption = #27880#20876#30721':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object But_Execute: TSpeedButton
    Left = 241
    Top = 269
    Width = 67
    Height = 24
    Caption = #29983'  '#25104
    Flat = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    OnClick = But_ExecuteClick
  end
  object ButClose: TSpeedButton
    Left = 454
    Top = 311
    Width = 67
    Height = 24
    Caption = #36864'  '#20986
    Flat = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    OnClick = ButCloseClick
  end
  object TopShape: TShape
    Left = 6
    Top = 5
    Width = 516
    Height = 20
    Brush.Color = clBlack
    Pen.Color = clGray
    Pen.Mode = pmMerge
    OnMouseMove = TopShapeMouseMove
  end
  object LabelMac: TLabel
    Left = 8
    Top = 311
    Width = 6
    Height = 12
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 67
    Top = 43
    Width = 441
    Height = 97
    Color = clSilver
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 67
    Top = 157
    Width = 441
    Height = 104
    Color = clSilver
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
end
