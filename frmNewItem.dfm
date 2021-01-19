object frmPrepareNewItem: TfrmPrepareNewItem
  Left = 0
  Top = 0
  Caption = 'Neuer Eintrag'
  ClientHeight = 366
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panNewItem: TPanel
    Left = 0
    Top = 0
    Width = 482
    Height = 366
    Align = alClient
    TabOrder = 0
    ExplicitTop = 22
    ExplicitWidth = 513
    ExplicitHeight = 350
    object labCountryName: TLabel
      Left = 9
      Top = 28
      Width = 44
      Height = 18
      Margins.Top = 20
      Align = alCustom
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labComment: TLabel
      Left = 9
      Top = 87
      Width = 82
      Height = 18
      Align = alCustom
      Caption = 'Kommentar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labFlag: TLabel
      Left = 9
      Top = 157
      Width = 31
      Height = 18
      Align = alCustom
      Caption = 'Flag:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object imgNewFlag: TImage
      Left = 9
      Top = 181
      Width = 81
      Height = 73
      Align = alCustom
    end
    object edtCountryName: TEdit
      Left = 9
      Top = 57
      Width = 256
      Height = 24
      Margins.Top = 10
      Align = alCustom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Landesname eingeben'
    end
    object edtComment: TEdit
      Left = 9
      Top = 116
      Width = 256
      Height = 24
      Margins.Top = 10
      Align = alCustom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Kommentar eingeben'
    end
    object panBottom: TPanel
      Left = 1
      Top = 312
      Width = 480
      Height = 53
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 296
      ExplicitWidth = 511
      object btnAddItemToList: TButton
        Left = 321
        Top = 1
        Width = 83
        Height = 51
        Align = alRight
        Caption = 'hinzuf'#252'egen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAddItemToListClick
        ExplicitLeft = 352
      end
      object btnCancel: TButton
        Left = 404
        Top = 1
        Width = 75
        Height = 51
        Align = alRight
        Caption = 'Abbrechen'
        TabOrder = 1
        OnClick = btnCancelClick
        ExplicitLeft = 437
        ExplicitTop = 161
        ExplicitHeight = 151
      end
    end
    object btnLoadImage: TButton
      Left = 9
      Top = 260
      Width = 81
      Height = 46
      Align = alCustom
      Caption = 'Flag laden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnLoadImageClick
    end
  end
end
