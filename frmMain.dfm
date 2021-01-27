object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panListView: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 428
    Align = alClient
    TabOrder = 0
    object lvCountries: TListView
      Left = 1
      Top = 1
      Width = 711
      Height = 426
      Align = alClient
      Columns = <>
      SmallImages = imglFlags
      TabOrder = 0
      ViewStyle = vsReport
      OnColumnClick = lvCountriesColumnClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 108
    Top = 9
    object Datei1: TMenuItem
      Caption = 'Datei'
      object ffnen1: TMenuItem
        Caption = #214'ffnen'
        OnClick = btnOeffnenClick
      end
    end
    object Bearbeiten1: TMenuItem
      Caption = 'Bearbeiten'
      object lschen1: TMenuItem
        Caption = 'l'#246'schen'
        OnClick = btnLoeschenClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object neuerEintrag1: TMenuItem
        Caption = 'neuer Eintrag'
        OnClick = neuerEintragClick
      end
    end
  end
  object imglFlags: TImageList
    Left = 416
    Top = 376
  end
end
