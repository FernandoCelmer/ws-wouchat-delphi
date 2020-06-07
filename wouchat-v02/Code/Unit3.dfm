object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Hist'#243'rico Cliente'
  ClientHeight = 389
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 229
    Height = 389
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    ExplicitHeight = 388
    object CategoryPanel2: TCategoryPanel
      Top = 186
      Caption = 'Procurar Dia'
      TabOrder = 0
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 186
      Caption = 'Calend'#225'rio'
      TabOrder = 1
      object MonthCalendar1: TMonthCalendar
        Left = 0
        Top = 0
        Width = 225
        Height = 160
        Align = alClient
        Date = 41894.592810023150000000
        DoubleBuffered = False
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
  object Memo1: TMemo
    Left = 235
    Top = 8
    Width = 150
    Height = 375
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 385
    Top = 8
    Width = 75
    Height = 375
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Memo3: TMemo
    Left = 460
    Top = 8
    Width = 150
    Height = 375
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
