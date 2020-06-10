object Form1: TForm1
  Left = 359
  Top = 175
  Caption = #1044#1077#1088#1077#1074#1100#1103
  ClientHeight = 481
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object resulPnl: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 155
    Width = 608
    Height = 316
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    Padding.Left = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    object tv1: TTreeView
      Left = 12
      Top = 41
      Width = 584
      Height = 263
      Align = alClient
      Indent = 19
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 12
      Top = 15
      Width = 584
      Height = 26
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object resultLbl: TLabel
        Left = 0
        Top = 0
        Width = 105
        Height = 13
        Caption = #1042#1089#1077#1075#1086' '#1087#1072#1083#1080#1085#1076#1088#1086#1084#1086#1074': '
      end
    end
  end
  object inputPnl: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 608
    Height = 135
    Hint = '0'
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1081' '#1090#1077#1082#1089#1090
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object btnPanel: TPanel
      Left = 396
      Top = 25
      Width = 200
      Height = 98
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      BevelOuter = bvNone
      Padding.Bottom = 10
      TabOrder = 0
      object checkBtn: TButton
        Left = 32
        Top = 16
        Width = 145
        Height = 25
        Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1087#1072#1083#1080#1085#1076#1088#1086#1084#1099
        Enabled = False
        TabOrder = 0
        OnClick = MainBtnClick
      end
      object clearBtn: TButton
        Left = 32
        Top = 53
        Width = 145
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        Enabled = False
        TabOrder = 1
        OnClick = clearBtnClick
      end
    end
    object memoPnl: TPanel
      Left = 12
      Top = 25
      Width = 384
      Height = 98
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object inputMemo: TMemo
        Left = 0
        Top = 0
        Width = 384
        Height = 98
        Align = alClient
        TabOrder = 0
        OnChange = inputMemoChange
        OnKeyPress = edtInputKeyPress
      end
    end
  end
end
