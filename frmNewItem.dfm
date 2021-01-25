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
      Top = 92
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
      Top = 162
      Width = 103
      Height = 18
      Align = alCustom
      Caption = 'Flag ausw'#228'hlen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object imgNewFlag: TImage
      Left = 119
      Top = 162
      Width = 31
      Height = 24
      Align = alCustom
    end
    object edtCountryName: TEdit
      Left = 9
      Top = 60
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
      Top = 124
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
      end
    end
    object btnLoadImage: TButton
      Left = 156
      Top = 160
      Width = 31
      Height = 26
      Align = alCustom
      Caption = '...'
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
