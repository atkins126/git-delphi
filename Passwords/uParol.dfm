object fParol: TfParol
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1086#1083#1100
  ClientHeight = 148
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 37
    Height = 13
    Caption = #1051#1086#1075#1080#1085' :'
  end
  object Label2: TLabel
    Left = 16
    Top = 43
    Width = 44
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100' :'
  end
  object Label3: TLabel
    Left = 16
    Top = 70
    Width = 56
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 107
    Width = 583
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 183
    object bbSave: TBitBtn
      Left = 120
      Top = 8
      Width = 113
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 328
      Top = 8
      Width = 113
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object eLogin: TEdit
    Left = 72
    Top = 13
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object eParol: TEdit
    Left = 72
    Top = 40
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object eOpis: TEdit
    Left = 72
    Top = 67
    Width = 497
    Height = 21
    TabOrder = 3
  end
end
