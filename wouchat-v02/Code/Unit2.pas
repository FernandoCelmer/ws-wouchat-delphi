unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWGrids, IWCompCalendar, Grids, Calendar, ComCtrls, StdCtrls, sEdit, pngimage,
  ExtCtrls, Buttons, Menus;

type
  TForm2 = class(TForm)
    LV: TListView;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    MonthCalendar1: TMonthCalendar;
    CategoryPanel2: TCategoryPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
