object frmPrepareNewItem: TfrmPrepareNewItem
  Left = 0
  Top = 0
  Caption = 'Neuer Eintrag'
  ClientHeight = 333
  ClientWidth = 316
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
    Width = 316
    Height = 333
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 482
    ExplicitHeight = 366
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
      Width = 64
      Height = 52
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
      Top = 295
      Width = 314
      Height = 37
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 328
      ExplicitWidth = 480
      object btnAddItemToList: TButton
        Left = 155
        Top = 1
        Width = 83
        Height = 35
        Align = alRight
        Caption = 'hinzuf'#252'egen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        OnClick = btnAddItemToListClick
        ExplicitLeft = 321
        ExplicitHeight = 51
      end
      object btnCancel: TButton
        Left = 238
        Top = 1
        Width = 75
        Height = 35
        Align = alRight
        Caption = 'Abbrechen'
        ModalResult = 2
        TabOrder = 1
        OnClick = btnCancelClick
        ExplicitLeft = 410
      end
    end
    object btnLoadImage: TButton
      Left = 9
      Top = 239
      Width = 64
      Height = 42
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
