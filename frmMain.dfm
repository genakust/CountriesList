object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 425
  ClientWidth = 685
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
  object panForm: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 425
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 661
    ExplicitHeight = 416
    object Splitter1: TSplitter
      Left = 385
      Top = 1
      Height = 423
      ExplicitLeft = 384
      ExplicitTop = 280
      ExplicitHeight = 100
    end
    object panListView: TPanel
      Left = 1
      Top = 1
      Width = 384
      Height = 423
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 414
      object lvCountries: TListView
        Left = 1
        Top = 1
        Width = 382
        Height = 421
        Align = alClient
        Columns = <>
        LargeImages = ImageList1
        SmallImages = ImageList1
        TabOrder = 0
        ViewStyle = vsReport
        ExplicitHeight = 412
      end
    end
    object panRight: TPanel
      Left = 388
      Top = 1
      Width = 296
      Height = 423
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 272
      ExplicitHeight = 414
      object Button1: TButton
        Left = 184
        Top = 360
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 294
        Height = 248
        Align = alTop
        Caption = 'neuen Eintrag hinzuf'#252'gen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 271
        object labCountryName: TLabel
          Left = 2
          Top = 21
          Width = 290
          Height = 19
          Margins.Top = 20
          Align = alTop
          Caption = 'Name:'
          ExplicitLeft = 5
          ExplicitTop = 31
          ExplicitWidth = 47
        end
        object labComment: TLabel
          Left = 2
          Top = 67
          Width = 290
          Height = 19
          Align = alTop
          Caption = 'Kommentar:'
          ExplicitLeft = 5
          ExplicitTop = 103
          ExplicitWidth = 88
        end
        object labFlag: TLabel
          Left = 2
          Top = 113
          Width = 290
          Height = 19
          Align = alTop
          Caption = 'Flag:'
          ExplicitWidth = 35
        end
        object imgFlag: TImage
          Left = 2
          Top = 132
          Width = 159
          Height = 114
          Align = alLeft
          ExplicitLeft = 3
          ExplicitTop = 138
        end
        object edtCountryName: TEdit
          Left = 2
          Top = 40
          Width = 290
          Height = 27
          Margins.Top = 10
          Align = alTop
          TabOrder = 0
          Text = 'Landesname eingeben'
          ExplicitLeft = 1
          ExplicitTop = 46
          ExplicitWidth = 267
        end
        object edtComment: TEdit
          Left = 2
          Top = 86
          Width = 290
          Height = 27
          Margins.Top = 10
          Align = alTop
          TabOrder = 1
          Text = 'Kommentar eingeben'
          ExplicitLeft = 5
          ExplicitTop = 128
          ExplicitWidth = 262
        end
        object btnLoadImage: TButton
          Left = 167
          Top = 208
          Width = 50
          Height = 37
          Align = alCustom
          Caption = '...'
          TabOrder = 2
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 492
    Top = 350
    Bitmap = {
      494C010109001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000327D6EB0C33E0F40D31
      DBF40E31D9F40F30D6F40F2ED3F40E2CD0F40D27CCF40B23C7F40A20C2F4071C
      BEF40518BBF40214B9F400069BEE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C36E8F53464FFFF3969
      FFFF3E6FFFFF4172FFFF4071FFFF3B6DFFFF3566FFFF2F60FFFF2659FFFF1E50
      FFFF1347FFFF0941FFFF0113BDF8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C30EBF5365EFFFF3C65
      FFFF436BFFFF4870FFFF456EFFFF3F66FFFF385EFFFF3159FFFF2852FFFF1E49
      FFFF1540FFFF0A39FFFF010FBFF8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000058FEEF613BCFFFF249D
      DCFF29B8F6FF2AB7FBFF29A2DBFF16C0FFFF14B8FFFF11B5FFFF0EAEFFFF0BA9
      FFFF07A2FFFF049DFFFF006FD0F9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000C9EFF700F6FFFF2CCE
      EAFF0260F0FF0059F6FF2ACEEBFF00F7FFFF00F1FFFF00EDFFFF00E7FFFF00E3
      FFFF00DDFFFF00D9FFFF00AADAFA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000C7EFF500F4FFFF40A0
      E7FF1439C4FFAD869AFF3AB5EFFF00F7FFFF00EEFFFF00EAFFFF00E5FFFF00E1
      FFFF00DAFFFF00D7FFFF00A9DBF8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000C9F0F500F4FFFF00D8
      EAFF0357D8FF40A6D0FF00DDE9FF00F7FFFF00F1FFFF00EBFFFF00E6FFFF00E2
      FFFF00DBFFFF00D8FFFF00ABDCF8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEF3F700F6FFFF01FE
      FFFF17BBE3FF0BCFF1FF00FFFFFF00FAFFFF00F5FFFF00F0FFFF00EBFFFF00E6
      FFFF00E0FFFF00DDFFFF00B1E1FA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000048CEFF614B7FFFF17BB
      FFFF18C2FFFF19C4FFFF1AC1FFFF18BAFFFF15B7FFFF12B0FFFF0FACFFFF0CA4
      FFFF089EFFFF049AFFFF006DD2F9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C30E9F5365EFFFF3C63
      FFFF4269FFFF476EFFFF456CFFFF3F66FFFF385EFFFF2F59FFFF2852FFFF1E4A
      FFFF1540FFFF0A39FFFF010FBDF8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C3AEEF53768FFFF3C6D
      FFFF4473FFFF4D7BFFFF4977FFFF4171FFFF386AFFFF3162FFFF295BFFFF2052
      FFFF1549FFFF0C42FFFF0118C5F8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000022FEBF10B39F2FA0C38
      EFFA0C36ECFA0D36E7FA0D34E4FA0B31E1FA0B2CDEFA0929DBFA0826D8FA0623
      D4FA051FD0FA021BCCFA0010B7F3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000028405EB0B9115F40B90
      15F40B8D15F40A8C12F4098810F408860EF406810EF4067F0BF4057C09F4037A
      08F4027705F4017502F4006500EE0000000000000000007401EB017C03F50177
      03F5007401F5047205F5B3AAB3F6A4A4A4F5A3A3A3F5ADABA0F60814AFF5010E
      B2F50211B4F50112B8F5000AA5EE0000000000000000022CE3EE0B35EAF70D33
      E7F70E31E2F70D30DFF70E2EDBF70C2CD5F70C29D1F70B25CDF70921C8F7061D
      C3F70516BEF70214BBF700069CF100000000000000000426D4EB0F35DFF40F31
      D9F40E30D6F40D2DD3F40D2AD0F40B26CBF40A22C9F40821C3F4071CC0F4051A
      BDF40316BAF40112B8F400069AEE00000000000000000C9815F52BC559FF2CC5
      58FF2BC456FF27C151FF24BE49FF1EB940FF1AB537FF16B12DFF12AD25FF0DA8
      1BFF09A412FF04A20AFF007601F80000000000000000038506F50AA615FF0AA5
      15FF08A411FF0CA313FFE7DCE7FFD7D7D7FFD7D7D7FFE3E0D2FF1649FFFF0E42
      FFFF0D42FFFF0C42FFFF021BC6F800000000000000000C39EDF53161FFFF3464
      FFFF3767FFFF396AFFFF3869FFFF3666FFFF3162FFFF2C5DFFFF2457FFFF1B4F
      FFFF1347FFFF0941FFFF0112B9F800000000000000000F39E7F54070FFFF3F6F
      FFFF3E6EFFFF3A6CFFFF3566FFFF2F60FFFF2859FFFF2055FFFF1A4EFFFF1448
      FFFF0D42FFFF063EFFFF0012BBF800000000000000000B9817F52EC75BFF2EC7
      5CFF2DC65AFF28C151FF25BE4AFF1FB840FF1AB337FF16AF2EFF11AA25FF0DA6
      1CFF09A213FF049F0AFF007701F80000000000000000058709F511AB24FF10A9
      21FF0DA71EFF11A51DFFEBDFE9FFDBDBDBFFDADADAFFE6E3D6FF204DFAFF174A
      FFFF1749FFFF1649FFFF051EC9F800000000000000000C3AEEF53161FFFF3565
      FFFF3B69FFFF3E6CFFFF3D6CFFFF3968FFFF3262FFFF2C5EFFFF2756FFFF1F50
      FFFF1547FFFF0D41FFFF0212B8F80000000000000000103BEAF54372FFFF4472
      FFFF4271FFFF3B6CFFFF3666FFFF2E5EFFFF2758FFFF2152FFFF1A4CFFFF1446
      FFFF0D40FFFF073BFFFF0013BEF8000000000000000000990CF523C557FF25C8
      5AFF23C655FF1DC04BFF17BA40FF14B737FF0EB12CFF09AC23FF06A91AFF00A3
      11FF00A007FF009D00FF007600F80000000000000000078A0CF518B332FF16AF
      30FF15AE2BFF17AB2AFFF0E5EFFFE1E1E1FFE0E0E0FFECE9DDFF2957FAFF2354
      FFFF2354FFFF1F53FFFF0925D0F800000000000000000C3AF0F53565FFFF3A68
      FFFF406FFFFF4473FFFF4271FFFF3D6CFFFF3565FFFF2E60FFFF2958FFFF1F52
      FFFF1648FFFF0D43FFFF0212BBF80000000000000000053AF5F53C73FFFF3E75
      FFFF3B72FFFF326BFFFF2B65FFFF245DFFFF1C58FFFF1550FFFF0F4AFFFF0844
      FFFF023EFFFF003AFFFF0012CCF800000000000000009EBDA0F6CCE6D3FFCEE8
      D6FFD0EAD8FFD2EAD7FFD1EAD6FFCCE7D2FFCAE3CEFFC4DDC9FFC1DAC3FFBBD3
      BDFFB4CDB6FFB2CBB3FF859D85F90000000000000000098C0FF51DB83FFF1CB5
      3BFF19B336FF1DB135FFF7ECF5FFE8E8E8FFE7E7E7FFF1EDE2FF315FFBFF2B5C
      FFFF2A5CFFFF295CFFFF0A2AD7F800000000000000000C3BF1F53565FFFF3A69
      FFFF4171FFFF4876FFFF4574FFFF3D6CFFFF3666FFFF2F5FFFFF2859FFFF2051
      FFFF1749FFFF0E43FFFF0213BBF80000000000000000A05C32F6D1832BFFD285
      2BFFD4872AFFD5872AFFD3862AFFCF812AFFCB7E2AFFC6792AFFC2752AFFBB6E
      2AFFB5682AFFB2652BFF853A26F90000000000000000CBC9CAF5F3F0F2FFF4F2
      F4FFF9F6F8FFFCF9FBFFFBF8FAFFF6F4F6FFF3F0F2FFEDEBEDFFE9E6E9FFE2E0
      E2FFDDDADDFFD8D5D8FFA8A7A8F80000000000000000098F11F524BE49FF21BA
      45FF1FB83FFF20B53DFFFCF0F9FFECECECFFEAEAEAFFF6F3E8FF3866FCFF3363
      FFFF3363FFFF3162FFFF0B2DDBF800000000000000000032F3F42B5DFEFE2F62
      FEFE3567FEFE396BFEFE3869FEFE3264FEFE2C5EFEFE2557FEFE1D52FEFE154B
      FEFE0C40FEFE033CFEFE000BBFF60000000000000000CA6700F5F28A00FFF58D
      00FFFA9100FFFC9300FFFB9200FFF78E00FFF18900FFEE8500FFE98000FFE27A
      00FFDD7400FFD86F00FFA84400F80000000000000000CDCCCAF5F4F3EFFFF8F6
      F3FFFDFCF8FFFFFFFDFFFFFFFBFFFAF9F5FFF5F3F0FFF0EEEBFFEBEAE6FFE5E4
      E0FFDEDCD9FFDAD9D4FFACACA9F800000000000000000B9514F529C354FF26BF
      4DFF23BC48FF25B944FFFFF5FEFFF1F1F1FFEFEFEFFFF8F4EAFF3F6CFCFF3B6B
      FFFF3A68FFFF3767FFFF0E32DFF80000000000000000CBC7BCF4F6F4E7FEF8F5
      E9FEFAF6EDFEFBF7EEFEFBF8ECFEF9F6ECFEF6F3E8FEF4F0E4FEEFEBE0FEEAE6
      DAFEE4E1D4FEE2DED0FEB1AFA3F60000000000000000CA6600F5F08800FFF38C
      00FFF99100FFFD9600FFFA9300FFF48D00FFEF8800FFEA8300FFE67E00FFDF78
      00FFD97200FFD66D00FFAA4500F80000000000000000A4AED1F6C3CEF2FFC5D0
      F5FFC8D3F8FFCAD4FBFFC7D2FAFFC3CEF6FFBFCAF3FFB8C3EFFFB4BFEBFFADB8
      E7FFA7B2E1FFA3B0DEFF898DAFF900000000000000000C9818F52FC85FFF2CC5
      57FF26BF4EFF27BB47FFFFFBFFFFF7F7F7FFF4F4F4FFFCF9EFFF4573FDFF4372
      FFFF406FFFFF3B6BFFFF0E35E3F80000000000000000C4C4C4F5EEEEEEFFF0F0
      EFFFF3F3F2FFF5F5F5FFF4F4F4FFF2F2F2FFEDEDEDFFE9E9E9FFE6E6E6FFDFDF
      DFFFD9D9D9FFD6D6D6FFA9A9A8F80000000000000000CB7B28F6EDA138FFF1A4
      3AFFF5A838FFF7AB3AFFF6A93AFFF2A539FFEDA038FFE99C37FFE49837FFDE91
      35FFD88B33FFD38632FFAC5D20F90000000000000000032EE7F53366FFFF3264
      FFFF3163FFFF2C60FFFF275AFFFF2154FFFF1A4DFFFF1447FFFF0E43FFFF083D
      FFFF0137FFFF0032FFFF0008BAF800000000000000000C9919F533CD68FF2EC7
      5CFF28C151FF27BD49FFFFFFFFFFFBFBFBFFF5F5F5FFFDFAF0FF4774FDFF4676
      FFFF4271FFFF3C6BFFFF0D35E6F80000000000000000C6C6C6F5F0F0F0FFF3F3
      F3FFF7F7F7FFF8F8F8FFF8F8F8FFF5F5F5FFEFEFEFFFEBEBEBFFE6E6E6FFE1E1
      E1FFDBDBDBFFD6D6D6FFAAAAAAF80000000000000000C6CBD1F5EEF5FCFFF0F6
      FEFFF4FAFFFFF6FCFFFFF5FBFFFFF2F8FFFFEEF5FCFFE9EFF7FFE4EBF2FFDEE4
      EBFFD8DEE5FFD4DBE1FFA6ABB0F80000000000000000103BEAF54372FFFF4372
      FFFF4270FFFF3B6AFFFF3666FFFF2E5EFFFF2758FFFF2152FFFF1A4CFFFF1446
      FFFF0D3FFFFF073BFFFF0013BCF800000000000000000C9B17F530C961FF2CC5
      58FF27C04FFF27BC48FFFFFFFFFFFBFBFBFFF5F5F5FFFDFAF0FF4370FDFF406E
      FFFF3E6DFFFF3969FFFF0F38ECF80000000000000000C8C8C8F5F0F0F0FFF3F3
      F3FFF9F9F9FFFDFDFDFFFBFBFBFFF5F5F5FFF0F0F0FFEDEDEDFFE7E7E7FFE1E1
      E1FFDBDBDBFFD8D8D8FFADADADF80000000000000000C8C8C8F5EFEFEFFFF2F2
      F2FFF8F8F8FFFBFBFBFFFAFAFAFFF4F4F4FFEFEFEFFFEAEAEAFFE5E5E5FFDFDF
      DFFFD9D9D9FFD6D6D6FFAAAAAAF80000000000000000113DEDF54877FFFF4C7A
      FFFF4977FFFF4171FFFF396BFFFF3263FFFF2B5DFFFF2355FFFF1D4FFFFF1549
      FFFF0F43FFFF073FFFFF0117C3F800000000000000000C9C18F52DC65AFF2AC3
      54FF24BF4CFF27BC47FFFFFDFFFFF9F9F9FFF6F6F6FFFFFCF0FF3F6DFEFF3A69
      FFFF3968FFFF3666FFFF0D39F0F80000000000000000CBCBCBF5F2F2F2FFF6F6
      F6FFFAFAFAFFFEFEFEFFFDFDFDFFF8F8F8FFF3F3F3FFEEEEEEFFEAEAEAFFE4E4
      E4FFDEDEDEFFD9D9D9FFB2B2B2F80000000000000000CBCBCBF5F1F1F1FFF6F6
      F6FFFAFAFAFFFFFFFFFFFEFEFEFFF8F8F8FFF3F3F3FFEEEEEEFFE9E9E9FFE3E3
      E3FFDCDCDCFFD8D8D8FFADADADF800000000000000000330ECF10F3BF1FA0E39
      EEFA0D36EAFA0C33E5FA0B30E1FA092BDFFA0928DBFA0724D7FA0522D2FA051E
      CDFA031CCAFA0119C8FA000EB1F30000000000000000029005F10B9C15FA0A9A
      13FA079610FA0E9615FADED4DCFCD0D0D0FACECECEFAD7D4CAFC1540EEFA0B3A
      F2FA0D3BF4FA0D3CF5FA0331EFF30000000000000000BEBEBEEECBCBCBF7C9C9
      C9F7C9C9C9F7C8C8C8F7C5C5C5F7C4C4C4F7C2C2C2F7BFBFBFF7BCBCBCF7BABA
      BAF7B6B6B6F7B4B4B4F7A6A6A6F10000000000000000C1C1C1F1CDCDCDFACACA
      CAFAC9C9C9FAC8C8C8FAC6C6C6FAC2C2C2FABFBFBFFABDBDBDFABABABAFAB6B6
      B6FAB4B4B4FAB1B1B1FAA3A3A3F3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0D00EB751300F57311
      00F5730F00F56D1206F500B2E7F600A5D5F500A3D4F500ABD4F6011AB9F50111
      B7F50111B3F50110B4F500069AEE0000000000000000042DE2EB0D37E9F40F37
      E5F41037E2F41136DEF41134D9F41031D6F40E2ED3F40C29CEF40B24C9F40820
      C3F4051BBFF40215BBF400079DEE00000000000000000216D1F10720D3F50820
      D0F50720CFF5091ECCF5071DC9F5081CC9F5061AC6F50719C4F50516C3F50414
      C0F50312C0F50110BFF50005ACE9000000000000000005B4E1EB1CC2EAF41DC1
      E9F41EC0E8F420BFE6F41FBDE5F41CBCE2F41AB7E0F418B4DEF412B2DBF40EAD
      D9F40AA9D7F405A6D6F40094C5EE00000000000000007E1C00F5A64000FFA33D
      00FFA33B00FF9B3E07FF00E3FFFF00D8FFFF00D7FFFF00E0FFFF0A46FFFF0C3F
      FFFF0A3FFFFF083FFFFF0214BDF800000000000000000C3BEEF52F5FFFFF3665
      FFFF3B6AFFFF3E6DFFFF3D6CFFFF3868FFFF3262FFFF2C5CFFFF2455FFFF1C4D
      FFFF1244FFFF093CFFFF0112BAF800000000000000000927E3FA2156FFFF2356
      FFFF2558FFFF2659FFFF2458FFFF2457FFFF2054FFFF1D51FFFF194CFFFF1449
      FFFF0F43FFFF083FFFFF0114C3F200000000000000001AC8EEF56EF2FFFF78F4
      FFFF82F7FFFF87FAFFFF84F9FFFF7AF6FFFF6DF0FFFF5FECFFFF50E7FFFF3CE1
      FFFF28DBFFFF14D7FFFF02A7DAF80000000000000000821F00F5A94300FFA640
      00FFA73F00FF9E3F07FF00E8FFFF00DCFFFF00DCFFFF00E4FFFF1149FDFF1444
      FFFF1143FFFF1044FFFF0418C1F800000000000000000D3CF0F53161FFFF3968
      FFFF406EFFFF4573FFFF4271FFFF3C6BFFFF3564FFFF2E5EFFFF2657FFFF1D4F
      FFFF1446FFFF0A3DFFFF0113BCF800000000000000000B2AE8FA2658FFFF2859
      FFFF2A59FFFF295AFFFF295AFFFF2958FFFF2556FFFF2354FFFF1D50FFFF184A
      FFFF1244FFFF0C42FFFF0217C7F2000000000000000019C9F0F56EF0FFFF78F4
      FFFF86F8FFFF8FFBFFFF88F9FFFF7BF5FFFF6DEFFFFF5DEAFFFF4FE6FFFF3DDF
      FFFF29D9FFFF16D6FFFF03AADBF80000000000000000862400F5AF4900FFAB45
      00FFAB4400FFA24507FF00F3FFFF00E7FFFF00E6FFFF00EDFFFF1850FDFF1A4C
      FFFF194CFFFF174BFFFF051CC5F800000000000000000D3DF1F53262FFFF3968
      FFFF406FFFFF4675FFFF4472FFFF3D6CFFFF3565FFFF2E5EFFFF2657FFFF1E4F
      FFFF1446FFFF0B3DFFFF0114BEF800000000000000000D2EEBFA2B5DFFFF2C5E
      FFFF2E5EFFFF2F5FFFFF2F5FFFFF2D5DFFFF2A5BFFFF2759FFFF2255FFFF1D4E
      FFFF1748FFFF1045FFFF031BCDF200000000000000001BD1F1F573F9FFFF7DFC
      FFFF8DFFFFFF99FFFFFF8FFFFFFF80FDFFFF72F8FFFF61F3FFFF52EFFFFF40E8
      FFFF2CE3FFFF17E0FFFF03B4DEF80000000000000000892700F5B44E00FFB14B
      00FFB04900FFA54D08FF04D0FFFF2695DFFF2190E0FF0ECCF2FF1F5AFEFF2253
      FFFF2052FFFF1E52FFFF0721CAF800000000000000009CA8D4F6C2CDEFFFC7D1
      F2FFCBD5F4FFCDD7F6FFCCD6F5FFC9D3F3FFC5CEF0FFC0CAECFFBBC5E8FFB4BE
      E4FFADB7DFFFA7B1DAFF7F84ADF900000000000000000D33F0FA3161FFFF3161
      FFFF3463FFFF3563FFFF3464FFFF3262FFFF2F5FFFFF2B5BFFFF2857FFFF2152
      FFFF1A4CFFFF1549FFFF041DD1F200000000000000000D56F1F63977FEFF3D7A
      FEFF4380FEFF4782FEFF4581FEFF3F7DFEFF3878FEFF3372FEFF2A6CFEFF2065
      FEFF155DFEFF0B56FFFF0130BEF900000000000000008B2900F5BA5400FFB650
      00FFB54E00FFA95509FF19AAFCFF1358FBFF6BABA5FF21B0EFFF2565FFFF2A5B
      FFFF2859FFFF2558FFFF0927D2F80000000000000000CBCBCBF5EDEDEDFFF1F1
      F1FFF5F5F5FFF8F8F8FFF7F7F7FFF3F3F3FFEFEFEFFFEAEAEAFFE5E5E5FFDFDF
      DFFFD9D9D9FFD2D2D2FFA7A7A7F800000000000000000E36F3FA3566FFFF3665
      FFFF3967FFFF3D8BFFFF3B68FFFF3767FFFF3363FFFF2F60FFFF2B5AFFFF2456
      FFFF1D4FFFFF174BFFFF0520D6F200000000000000000C37F0F53261FFFF3766
      FFFF3D6BFFFF416FFFFF406DFFFF3A69FFFF3462FFFF2D5CFFFF2555FFFF1D4D
      FFFF1344FFFF0A3CFFFF010EB5F800000000000000008F2D00F5BF5900FFBD57
      00FFBB5300FFAB5A0AFF2A96E9FF7684AFFF2471E8FF29A7ECFF2C6CFFFF3463
      FFFF3160FFFF2E5EFFFF0B2BD7F80000000000000000CCCCCCF5EEEEEEFFF3F3
      F3FFF8F8F8FFFCFCFCFFFAFAFAFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FFE0E0
      E0FFD9D9D9FFD3D3D3FFA8A8A8F800000000000000000F38F8FA3868FFFF3B69
      FFFF3E6DFFFF4378FFFF3F87FFFF3B6EFFFF3866FFFF3161FFFF2C5CFFFF2657
      FFFF2152FFFF194DFFFF0623DCF200000000000000000B3CF4F53365FFFF396A
      FFFF4170FFFF4877FFFF4573FFFF3D6DFFFF3566FFFF2E5FFFFF2658FFFF1E50
      FFFF1446FFFF0B40FFFF0112BCF80000000000000000953300F5C55F00FFC25C
      00FFBF5700FFAF5B09FF18B6EEFF6587A3FF1D71EFFF1AC2EFFF3673FFFF3C6B
      FFFF3868FFFF3363FFFF0D2DDBF800000000000000009DA9D5F6B8C5F2FFBCC9
      F5FFC1CEF9FFC4D1FBFFC3D0FAFFBFCBF6FFBAC7F3FFB4C1EFFFAFBCEBFFA8B5
      E7FFA1AFE2FF9BA8DDFF8085AEF90000000000000000113BFAFA3A75FFFF3C69
      FFFF3D7CFFFF4673FFFF467BFFFF3E6EFFFF3968FFFF3363FFFF2D5FFFFF2758
      FFFF2153FFFF1A4EFFFF0627E0F20000000000000000143ACDF63C61D7FF4163
      D6FF4669D5FF4A6CD6FF476AD5FF4265D4FF3C5ED3FF3458D2FF2F53D2FF274A
      D0FF1D42CFFF163CD2FF041295F90000000000000000973500F5CB6500FFC660
      00FFC25A00FFB45907FF00FFFFFF03EEFFFF05EBFAFF00FCFEFF3E75FEFF4572
      FFFF3D6CFFFF3766FFFF0E31DFF800000000000000000C3BEEF52F5FFFFF3565
      FFFF3B6AFFFF3E6DFFFF3D6CFFFF3867FFFF3262FFFF2B5CFFFF2455FFFF1C4D
      FFFF1244FFFF093BFFFF0112BAF80000000000000000103BFAFA3A6BFFFF3EE1
      FFFF39A6FFFF4873FFFF4676FFFF4392FFFF3969FFFF3363FFFF2F5EFFFF2958
      FFFF2152FFFF1B4DFFFF0629E5F20000000000000000373529F55E5B52FF5F5C
      53FF5F5D54FF5D5C53FF5A5950FF57564DFF545249FF4E4D43FF4C4940FF4543
      38FF413E33FF3D3A30FF121207F800000000000000009A3800F5CC6600FFC761
      00FFC25A00FFB55807FF00FFFFFF00FAFFFF00F5FFFF00F9FFFF4076FEFF4674
      FFFF3E6DFFFF3767FFFF0E32E3F800000000000000000D3CF0F53161FFFF3968
      FFFF3F6EFFFF4473FFFF4271FFFF3C6BFFFF3564FFFF2D5EFFFF2657FFFF1D4F
      FFFF1446FFFF0A3DFFFF0113BCF80000000000000000103DFAFA4A9EFFFF53E5
      FFFF40BAFFFF4276FFFF4171FFFF406FFFFF3867FFFF3262FFFF2E5DFFFF2759
      FFFF2053FFFF1A4EFFFF062AE8F20000000000000000383838F55E5E5EFF6060
      60FF626262FF606060FF5D5D5DFF575757FF535353FF4E4E4EFF4B4B4BFF4444
      44FF3E3E3EFF3C3C3CFF141414F800000000000000009C3A00F5C86200FFC55F
      00FFC25900FFB55907FF00FFFFFF00F6FFFF00F4FFFF00F9FFFF3C73FEFF416E
      FFFF3B6BFFFF3666FFFF0D35E7F800000000000000000D3DF1F53262FFFF3969
      FFFF406FFFFF4775FFFF4472FFFF3D6CFFFF3565FFFF2E5EFFFF2657FFFF1E4F
      FFFF1446FFFF0B3DFFFF0114BDF800000000000000001041FAFA3663FFFF4992
      FFFF3E68FFFF406CFFFF469BFFFF3C6AFFFF3868FFFF3363FFFF2E5EFFFF2759
      FFFF2152FFFF194CFFFF052EEDF200000000000000003A3A3AF5616161FF6363
      63FF676767FF656565FF5F5F5FFF5C5C5CFF565656FF525252FF4D4D4DFF4747
      47FF424242FF3E3E3EFF151515F80000000000000000912F00F19F3A00FA9D39
      00FA9C3600FA923807FA00D9FCFC00CFF6FA00CDF5FA00D3F5FC0F43F5FA0F3C
      F3FA0E3BF1FA0D39F0FA032BE4F300000000000000000330ECF10C3AF2FA0E39
      EEFA0F38EAFA1037E6FA1035E1FA0E30DEFA0D2DDAFA0B29D6FA0925D1FA0720
      CBFA051BC5FA0217BFFA000AA7F300000000000000000439F6F60F41FAFA0F3F
      FAFA1040FAFA1140FAFA103EFAFA113EFAFA0E3CFAFA0D3AFAFA0D38FAFA0B37
      FAFA0933FAFA0732FAFA0129EEEE00000000000000002F2F2FF1373737FA3535
      35FA343434FA323232FA2D2D2DFA2A2A2AFA282828FA252525FA232323FA1E1E
      1EFA1A1A1AFA191919FA0D0D0DF3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
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
    end
  end
  object imglFlags: TImageList
    Left = 424
    Top = 352
  end
end
