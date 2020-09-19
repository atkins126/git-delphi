object fPassw: TfPassw
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1086#1083#1080
  ClientHeight = 510
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 628
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 8
      Width = 99
      Height = 25
      Caption = #1055#1088#1086#1095#1080#1090#1072#1090#1100' '#1080#1079' '#1041#1044
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 72
      Top = 8
      Width = 81
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1041#1044
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 384
      Top = 8
      Width = 89
      Height = 25
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 628
    Height = 469
    Align = alClient
    DataSource = dm1.dsPassw
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
        ReadOnly = True
        Width = 620
        Visible = True
      end>
  end
end
