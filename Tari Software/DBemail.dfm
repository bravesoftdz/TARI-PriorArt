object DBEmailF: TDBEmailF
  Left = 442
  Top = 362
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Send Database by email'
  ClientHeight = 396
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  Font.Quality = fqAntialiased
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object cxLabel1: TcxLabel
    Left = 16
    Top = 8
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    AutoSize = False
    Caption = 'Email  Zipped Database'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.Font.Quality = fqAntialiased
    Style.StyleController = DMRep1.cxEditStyleLabelLarge
    Style.IsFontAssigned = True
    Transparent = True
    Height = 24
    Width = 201
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 40
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    Caption = 'Email Address'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.Font.Quality = fqAntialiased
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
    Width = 91
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 68
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    Caption = 'Subject'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.Font.Quality = fqAntialiased
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
    Width = 50
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 280
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    Caption = 'Attachment'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.Font.Quality = fqAntialiased
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
    Width = 77
  end
  object AttachedFile: TcxLabel
    Left = 128
    Top = 280
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    AutoSize = False
    Caption = 'Message'
    ParentColor = False
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Transparent = True
    Height = 41
    Width = 457
  end
  object cxLabel6: TcxLabel
    Left = 16
    Top = 104
    RepositoryItem = DMRep1.cxEditRepository1Label1WithWrap
    Caption = 'Message'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.Font.Quality = fqAntialiased
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = DMRep1.cxEditStyleLabelSmall
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
    Width = 58
  end
  object Memo1: TcxMemo
    Left = 128
    Top = 105
    Lines.Strings = (
      'TARI for Business Database Attached.'
      '')
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Calibri'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Height = 152
    Width = 460
  end
  object Sendemailbtn: TcxButton
    Left = 128
    Top = 342
    Width = 129
    Height = 41
    Caption = 'Send Email'
    OptionsImage.Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      18000000000030090000330B0000330B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF983000FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF983000983000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFD3BDAF694731694731694731694731694731694731694731694731
      694731694731694731694731694731694731D767339830009830009830009830
      00983000C16E39983000FF00FFFF00FFFF00FFFF00FFFF00FFD3BDAFFCF9F8B7
      A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293
      B7A293B7A293D76733FBC4A1DD9865D48B58D48B58CE824EC77843C16E399830
      00FF00FFFF00FFFF00FFFF00FFD3BDAFFEFCFBFCF9F8FAF6F4F8F3F1F6F0EEF4
      EEEAF2EBE7F0E8E4EEE5E0ECE3DDEAE0DAE8DCD6E6D9D2E4D6CFD76733FBC4A1
      DD9865DD9865D48B58D78F5CD18753CB7D49C16E39983000FF00FFFF00FFFF00
      FFD3BDAFFFFFFFFEFCFBFCF9F8FAF6F4F8F3F1F6F0EEF4EEEAF2EBE7F0E8E4EE
      E5E0ECE3DDEAE0DAE8DCD6E6D9D2D76733FBC4A1E3A16EDD9865DD9865D48B58
      D78F5CD18753CB7D49C16E39983000FF00FFFF00FFD3BDAFFFFFFFFFFFFFFEFC
      FBFCF9F8E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7
      B986D76733FBC4A1E3A16EE3A16EDD9865DD9865D48B58D78F5CC16E39983000
      FF00FFFF00FFFF00FFD3BDAFFFFFFFFFFFFFFFFFFFFEFCFBFCF9F8FAF6F4F8F3
      F1F6F0EEF4EEEAF2EBE7F0E8E4EEE5E0ECE3DDEAE0DAD76733FBC4A1FBC4A1FB
      C4A1FBC4A1FBC4A1FBC4A1C16E39983000FF00FFFF00FFFF00FFFF00FFD3BDAF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFAFBF8F6F9F5F3F7F2EFF5EFECF3EC
      E9F0E8E4EEE5E0ECE3DDD76733D76733D76733D76733D76733D76733FBC4A198
      3000FF00FFFF00FFFF00FFFF00FFFF00FFD3BDAFFFFFFFFFFFFFFFFFFFFFFFFF
      E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7B986E7B986EDE4
      DFEBE1DBE9DED8E7DBD4E5D8D1D76733983000694731694731694731694731FF
      00FFFF00FFD3BDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFA
      FBF8F6F9F5F3F7F2EFF5EFECF3ECE9F1E9E5EFE6E2EDE4DFEBE1DBE9DED8E7DB
      D4983000B7A293694731B7A293B7A293694731FF00FFFF00FFD3BDAFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFAFBF8F6F9F5F3F7F2EF
      F5EFECF3ECE9F1E9E5EFE6E2EDE4DFEBE1DBE9DED8E7DBD4B7A293694731DBC9
      BFB7A293694731FF00FFFF00FFD3BDAFFFFFFFFFFFFFFFFFFFFFFFFF983000FF
      FFFFFFFFFFFFFFFFFFFDFDFDFBFAFBF8F6F9F5F3F7F2EFF5EFECF3ECE9F1E9E5
      EFE6E2EDE4DFEBE1DBE9DED8B7A293694731DBC9BFB7A293694731FF00FFFF00
      FFD3BDAFFFFFFFFFFFFFFFFFFF983000983000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FDFDFDFBFAFBF8F6F9F5F3F7F2EFF5EFECF3ECE9316ADC316ADC316ADCEBE1DB
      B7A293694731DCCAC0B7A293694731FF00FFFF00FFD3BDAFFFFFFFFFFFFF9830
      00C16E39983000983000983000983000983000983000FFFDFDFDFBFAFBF8F6F9
      F5F3F7F2EFF5EFEC314A8060A2FA316ADCEDE4DFB7A293694731DECDC4B7A293
      694731FF00FFFF00FFD3BDAFFFFFFF983000CB7D49D58B57C16E39C16E39C16E
      39C16E39C16E39983000FFFFFFFFFFFFFEFCFBFCF9F8FAF6F4F8F3F1396EE360
      A2FA316ADCEFE6E2B7A293694731E0D0C8B7A293694731FF00FFFF00FFD3BDAF
      983000CB7D49E19C6ADB9461D58B57D28753CD7F4AC77641C16E39983000FFFF
      FFFFFFFFFFFFFFFEFCFBFCF9F8FAF6F4F8F3F1F6F0EEF4EEEAF2EBE7F0E8E469
      4731E3D5CDB7A293694731FF00FFFF00FF983000FBC4A1E3A16EE3A16EE3A16E
      DE9865D88F5CD28753CD7F4AC16E39983000D3BDAFD3BDAFD3BDAFD3BDAFD3BD
      AFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFE5D8D1B7A293694731FF
      00FFFF00FFFF00FFD76733FBC4A1E3A16EE3A16EE3A16EDE9865D88F5CD28753
      C16E39983000FFFDFDFDFBFAFBF8F6F9F5F3F7F2EFF5EFECF3ECE9F1E9E5EFE6
      E2EDE4DFEBE1DBE9DED8E7DBD4B7A293694731FF00FFFF00FFFF00FFFF00FFD7
      6733FBC4A1E3A16EFBC4A1FBC4A1FBC4A1FBC4A1FBC4A1983000FFFFFFFFFDFD
      FDFBFAFBF8F6F9F5F3F7F2EFF5EFECF3ECE9F1E9E5EFE6E2EDE4DFEBE1DBE9DE
      D8B7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFD76733FBC4A1D76733D7
      6733D76733D76733D76733D76733FFFFFFFFFFFFFFFDFDFDFBFAFBF8F6F9F5F3
      F7F2EFF5EFECF3ECE9316ADC316ADC316ADCEBE1DBB7A293694731FF00FFFF00
      FFFF00FFFF00FFFF00FFD3BDAFD76733D76733FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFAFBF8F6F9F5F3F7F2EFF5EFEC314A80
      60A2FA316ADCEDE4DFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFD3BD
      AFFFFFFFD76733FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFCFBFCF9F8FAF6F4F8F3F1396EE360A2FA316ADCEFE6E2B7A293
      694731FF00FFFF00FFFF00FFFF00FFFF00FFD3BDAFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBFC
      F9F8FAF6F4F8F3F1F6F0EEF4EEEAF2EBE7F0E8E4694731FF00FFFF00FFFF00FF
      FF00FFFF00FFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BD
      AFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3BDAFD3
      BDAFD3BDAFD3BDAFD3BDAFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF}
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = SendemailbtnClick
  end
  object EmailAddresseb: TcxTextEdit
    Left = 128
    Top = 40
    TabOrder = 8
    Width = 273
  end
  object EmailSubject: TcxTextEdit
    Left = 128
    Top = 68
    TabOrder = 9
    Width = 273
  end
  object CloseBtn: TcxButton
    Left = 451
    Top = 342
    Width = 137
    Height = 41
    Caption = '&Close'
    ModalResult = 1
    TabOrder = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = CloseBtnClick
  end
end
