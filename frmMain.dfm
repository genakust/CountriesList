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
      OnClick = ActionListViewClickExecute
      OnColumnClick = lvCountriesColumnClick
      ExplicitLeft = 0
      ExplicitTop = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 108
    Top = 9
    object Datei1: TMenuItem
      Caption = 'Datei'
      object ffnen1: TMenuItem
        Action = ActionFileOeffnen
        Caption = #246'ffnen'
      end
    end
    object Bearbeiten1: TMenuItem
      Caption = 'Bearbeiten'
      object loeschen: TMenuItem
        Action = ActionItemLoeschen
        Caption = 'item l'#246'schen'
        Enabled = False
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object neuerEintrag1: TMenuItem
        Action = ActionAddItem
        Caption = 'neuer Eintrag'
      end
    end
  end
  object imglFlags: TImageList
    Left = 112
    Top = 136
  end
  object ActionList1: TActionList
    Left = 112
    Top = 72
    object ActionFileOeffnen: TAction
      Caption = 'ActionFileOeffnen'
      OnExecute = ActionFileOeffnenExecute
    end
    object ActionItemLoeschen: TAction
      Caption = 'ActionItemLoeschen'
      OnExecute = ActionItemLoeschenExecute
    end
    object ActionAddItem: TAction
      Caption = 'ActionAddItem'
      OnExecute = ActionAddItemExecute
    end
    object ActionListViewClick: TAction
      Caption = 'ActionListViewClick'
      OnExecute = ActionListViewClickExecute
    end
  end
end
