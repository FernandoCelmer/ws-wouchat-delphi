unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sEdit, Grids, Calendar, ExtCtrls;

type
  TForm3 = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel1: TCategoryPanel;
    MonthCalendar1: TMonthCalendar;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
Memo1.Text:= Form1.Memo_IPs.Text;
Memo2.Text:= Form1.Memo_Porta.Text;
Memo3.Text:= Form1.Memo_Data.Text;
end;

end.
