object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Hist'#243'rico Servidor'
  ClientHeight = 388
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LV: TListView
    Left = 233
    Top = 1
    Width = 377
    Height = 386
    BevelInner = bvNone
    BorderStyle = bsNone
    Columns = <
      item
        Width = 25
      end
      item
        Width = 122
      end
      item
        Width = 60
      end
      item
        Width = 149
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    MultiSelect = True
    ParentFont = False
    ShowColumnHeaders = False
    TabOrder = 0
    ViewStyle = vsReport
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 229
    Height = 388
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 1
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
        Date = 41894.755111759260000000
        DoubleBuffered = False
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
end
