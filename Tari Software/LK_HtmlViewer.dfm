object Form1: TForm1
  Left = 230
  Top = 117
  Width = 771
  Height = 591
  Caption = '21 Parables'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object HTMLViewer1: THTMLViewer
    Left = 0
    Top = 29
    Width = 763
    Height = 535
    Cursor = 2
    ViewImages = False
    TabOrder = 0
    Align = alClient
    DefBackground = clHighlightText
    BorderStyle = htFocused
    HistoryMaxCount = 0
    DefFontName = 'Times New Roman'
    DefPreFontName = 'Courier New'
    NoSelect = False
    CharSet = DEFAULT_CHARSET
    PrintMarginLeft = 2
    PrintMarginRight = 2
    PrintMarginTop = 2
    PrintMarginBottom = 2
    htOptions = []
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 763
    Height = 29
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 0
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Back'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 75
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Printer Setup'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      Left = 150
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Print'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 225
      Top = 2
      Width = 75
      Height = 22
      TabOrder = 2
      Kind = bkClose
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 536
    Top = 10
  end
end
