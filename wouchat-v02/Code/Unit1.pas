unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, ComCtrls, Buttons, ExtCtrls,IdBaseComponent, IdComponent, IdIPWatch,
  IdTCPConnection, IdTCPClient, IdHTTP, OleCtrls, SHDocVw, Menus, ImgList,
  pngimage, DB, DBClient,ShellAPI, IdAntiFreezeBase, IdAntiFreeze,MMSystem,
  sSkinManager, acTitleBar, sListBox, sCheckListBox, sBitBtn, sEdit;

type
  TForm1 = class(TForm)
    S_Server: TServerSocket;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BitBtn2: TBitBtn;
    IdHTTP1: TIdHTTP;
    WebBrowser1: TWebBrowser;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MainMenu1: TMainMenu;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    S_Cliente: TClientSocket;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Apelido1: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Lbl_Servidor: TLabel;
    Panel3: TPanel;
    Painel: TMemo;
    Image2: TImage;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Host1: TEdit;
    Label5: TLabel;
    Apelido2: TEdit;
    SpeedButton6: TSpeedButton;
    Timer2: TTimer;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Crditos1: TMenuItem;
    Panel6: TPanel;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    C_Texto: TEdit;
    Status: TMemo;
    Timer3: TTimer;
    SalvarConversa1: TMenuItem;
    LimparChat1: TMenuItem;
    Ajuda1: TMenuItem;
    Bevel1: TBevel;
    Servidor1: TMenuItem;
    Cliente1: TMenuItem;
    SalvarConversa2: TMenuItem;
    LimparChat2: TMenuItem;
    SalvarUsurio1: TMenuItem;
    SalvarUsurio2: TMenuItem;
    Host: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Abir1: TMenuItem;
    Fechar1: TMenuItem;
    IdAntiFreeze1: TIdAntiFreeze;
    ExluirUsurio1: TMenuItem;
    ExcluirUsurio1: TMenuItem;
    Idioma1: TMenuItem;
    Ingls1: TMenuItem;
    PortugusBrasil1: TMenuItem;
    Memo_Ingles: TMemo;
    WebBrowser2: TWebBrowser;
    Memo_Portugues: TMemo;
    StaticText2: TStaticText;
    Timer_Reiniciar: TTimer;
    PopupMenu2: TPopupMenu;
    Copiar1: TMenuItem;
    SalvarConversa3: TMenuItem;
    LimparChat3: TMenuItem;
    ListBox1: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    Apelido: TEdit;
    Memo3: TMemo;
    Memo_Idioma: TMemo;
    Edit4: TEdit;
    Panel8: TPanel;
    Image3: TImage;
    StaticText3: TStaticText;
    Panel7: TPanel;
    LV: TListView;
    Idioma: TMemo;
    Edit_Server: TEdit;
    Edit_Cliente: TEdit;
    Edit_User: TEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Edit_User1: TEdit;
    Edit5: TEdit;
    BitBtn3: TBitBtn;
    ImageList2: TImageList;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit6: TEdit;
    ImageList3: TImageList;
    Memo_IPs: TMemo;
    Memo_Porta: TMemo;
    Memo_Data: TMemo;
    LV1: TListView;
    ListBox2: TListBox;
    Timer4: TTimer;
    Memo_Theme: TMemo;
    ema1: TMenuItem;
    Normal1: TMenuItem;
    GPlus1: TMenuItem;
    Edit10: TEdit;
    Image1: TImage;
    StaticText1: TStaticText;
    ComboBox1: TComboBox;
    BitBtn_salvar_cript: TBitBtn;
    sSkinManager1: TsSkinManager;
    BitBtn4: TBitBtn;
    Histrico1: TMenuItem;
    Servidor2: TMenuItem;
    Cliente2: TMenuItem;
    procedure S_ClienteConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ClienteDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ClienteError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure S_ServerClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ServerClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure S_ServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ServerListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure S_ServerClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure BitBtn_copiar_criptClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure S_ClienteRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure Crditos1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure SalvarUsurio1Click(Sender: TObject);
    procedure SalvarUsurio2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Abir1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure ExluirUsurio1Click(Sender: TObject);
    procedure ExcluirUsurio1Click(Sender: TObject);
    procedure Ingls1Click(Sender: TObject);
    procedure PortugusBrasil1Click(Sender: TObject);
    procedure Timer_ReiniciarTimer(Sender: TObject);
    procedure PainelKeyPress(Sender: TObject; var Key: Char);
    procedure Copiar1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure LV1Click(Sender: TObject);
    procedure C_TextoKeyPress(Sender: TObject; var Key: Char);
    procedure GPlus1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Nid : TNotifyIconData;
  public
    { Public declarations }
      procedure IconTray(Msg: TMessage);
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.IconTray(Msg: TMessage);
    var Pt:Tpoint;
    begin
        if (Msg.LParamHi = wm_rbuttondown) then begin
            GetCursorPos(Pt);
            PopupMenu1.Popup(Pt.x,Pt.y);
        end;
    end;

procedure TForm1.Ingls1Click(Sender: TObject);
var
arq:TextFile;
begin

AssignFile(Arq, 'language.ini');
  Rewrite(Arq);
              Writeln(Arq, 'Settings');                                    //0
              Writeln(Arq, 'Developer');                                   //1
              Writeln(Arq, 'Sign Out');                                    //2
              Writeln(Arq, 'Server');                                      //3
              Writeln(Arq, 'Cliente');                                     //4
              Writeln(Arq, 'Help');                                        //5
              Writeln(Arq, 'Save Conversation');                           //6
              Writeln(Arq, 'Save User');                                   //7
              Writeln(Arq, 'Clear Chat');                                  //8
              Writeln(Arq, 'Delete User');                                 //9
              Writeln(Arq, 'Language');                                    //10
              Writeln(Arq, 'IP server:');                                  //11
              Writeln(Arq, 'Port:');                                       //12
              Writeln(Arq, 'My Name:');                                    //13
              Writeln(Arq, 'Local IP');                                    //14
              Writeln(Arq, 'Web IP');                                      //15
              Writeln(Arq, 'My IP');                                       //16
              Writeln(Arq, 'Port');                                        //17
              Writeln(Arq, 'Start Server');                                //18
              Writeln(Arq, 'Write Message');                               //19
              Writeln(Arq, 'Messages:');                                   //20
              Writeln(Arq, 'Developed by: WouSoftware.com');               //21
              Writeln(Arq, 'Incoming Messages');                           //22
              Writeln(Arq, 'Start Server');                                //23
              Writeln(Arq, 'Stop Server');                                 //24
              Writeln(Arq, 'Connect');                                     //25
              Writeln(Arq, 'Disconnect');                                  //26
              Writeln(Arq, ' Wrote: ');                                     //27
              Writeln(Arq, 'Server ::> On Server!');                       //28
              Writeln(Arq, 'Client ::> Connected to: ');                   //29
              Writeln(Arq, 'Server ::> User Connected => ');               //30
              Writeln(Arq, 'Server ::>  ');                                //31
              Writeln(Arq, 'Server ::> Off Server!');                      //32
              Writeln(Arq, 'Client ::> Offline ');                         //33
              Writeln(Arq, 'Client ::> Error when trying to connect to: ');//34
              Writeln(Arq, 'Open');                                        //35
              Writeln(Arq, 'Close');                                       //36
              Writeln(Arq, 'Server ::> User Offline => ');                 //37
              Writeln(Arq, 'Users Logged In');                             //38
              Writeln(Arq, 'Recently Connected IPs');                      //39
              Writeln(Arq, 'Theme');                                       //40
              Writeln(Arq, 'Standard');                                    //41



              CloseFile(Arq);

     //Reinicia o Programa para Tradução
     sSkinManager1.Active:=false;
     ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName)+Edit4.Text), '','',SW_SHOWNORMAL);
     Timer_Reiniciar.Enabled:=true;



end;

procedure TForm1.LV1Click(Sender: TObject);
begin
//Host1.Text:=ComboBox1.Text;
end;

procedure TForm1.Normal1Click(Sender: TObject);
var
arq:TextFile;
begin
AssignFile(Arq, 'theme.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
              CloseFile(Arq);

     //Reinicia o Programa Mudar o Tema
     sSkinManager1.Active:=false;
     ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName)+Edit4.Text), '','',SW_SHOWNORMAL);
     Timer_Reiniciar.Enabled:=true;

end;

procedure TForm1.PainelKeyPress(Sender: TObject; var Key: Char);
begin
Key := #0;
end;

procedure TForm1.PortugusBrasil1Click(Sender: TObject);
var
arq:TextFile;
begin

AssignFile(Arq, 'language.ini');
  Rewrite(Arq);
              Writeln(Arq, 'Configurações');                              //0
              Writeln(Arq, 'Desenvolvedor');                              //1
              Writeln(Arq, 'Sair');                                       //2
              Writeln(Arq, 'Servidor');                                   //3
              Writeln(Arq, 'Cliente');                                    //4
              Writeln(Arq, 'Ajuda');                                      //5
              Writeln(Arq, 'Salvar Conversa');                            //6
              Writeln(Arq, 'Salvar Usuario');                             //7
              Writeln(Arq, 'Limpar Chat');                                //8
              Writeln(Arq, 'Excluir Usuario');                            //9
              Writeln(Arq, 'Idioma');                                     //10
              Writeln(Arq, 'Servidor IP:');                               //11
              Writeln(Arq, 'Porta:');                                     //12
              Writeln(Arq, 'Meu Nome:');                                  //13
              Writeln(Arq, 'IP Local');                                   //14
              Writeln(Arq, 'IP Web');                                     //15
              Writeln(Arq, 'Meu IP');                                     //16
              Writeln(Arq, 'Porta');                                      //17
              Writeln(Arq, 'Iniciar Servidor');                           //18
              Writeln(Arq, 'Escrever Mensagem');                          //19
              Writeln(Arq, 'Mensagens:');                                 //20
              Writeln(Arq, 'Desenvolvido por: WouSoftware.com');          //21
              Writeln(Arq, 'Mensagens Recebidas');                        //22
              Writeln(Arq, 'Iniciar Servidor');                           //23
              Writeln(Arq, 'Parar Servidor');                             //24
              Writeln(Arq, 'Conectar');                                   //25
              Writeln(Arq, 'Desconectar');                                //26
              Writeln(Arq, ' Escreveu: ');                                //27
              Writeln(Arq, 'Servidor ::> Servidor Ligado!');              //28
              Writeln(Arq, 'Cliente  ::> Conectado a: ');                 //29
              Writeln(Arq, 'Servidor ::> Usuário Conectado => ');         //30
              Writeln(Arq, 'Servidor ::> ');                              //31
              Writeln(Arq, 'Servidor ::> Servidor Desligado!');           //32
              Writeln(Arq, 'Cliente  ::> Desconectado ');                 //33
              Writeln(Arq, 'Cliente  ::> ERRO ao tentar conectar a: ');   //34
              Writeln(Arq, 'Abrir');                                      //35
              Writeln(Arq, 'Fechar');                                     //36
              Writeln(Arq, 'Servidor ::> Usuário Desconectado => ');      //37
              Writeln(Arq, 'Usuários Conectados');                        //38
              Writeln(Arq, 'IPs Conectados Recentemente');                //39
              Writeln(Arq, 'Tema');                                       //40
              Writeln(Arq, 'Normal');                                     //41
              CloseFile(Arq);

     //Reinicia o Programa para Tradução
     sSkinManager1.Active:=false;
     ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName)+Edit4.Text), '','',SW_SHOWNORMAL);
     Timer_Reiniciar.Enabled:=true;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.SalvarUsurio1Click(Sender: TObject);
var
arq:TextFile;
host:string;
porta:string;
nome:string;
begin
  host:= edit2.Text;
  porta:= Edit1.Text;
  nome:= Apelido1.Text;

AssignFile(Arq,Edit9.Text + 'servidor_user.ini');
  Rewrite(Arq);
  Writeln(Arq, host);
    Writeln(Arq, porta);
      Writeln(Arq, nome);
  CloseFile(Arq);

  ShowMessage('Dados Salvos');

end;

procedure TForm1.SalvarUsurio2Click(Sender: TObject);
var
arq:TextFile;
host:string;
porta:string;
nome:string;
begin
  host:= host1.Text;
  porta:= Edit3.Text;
  nome:= Apelido2.Text;

AssignFile(Arq,Edit7.Text + 'cliente_user.ini');
  Rewrite(Arq);
  Writeln(Arq, host);
    Writeln(Arq, porta);
      Writeln(Arq, nome);
  CloseFile(Arq);

  ShowMessage('Dados Salvos');

end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
  C_Texto.SetFocus;
      S_Cliente.Socket.SendText(C_Texto.Text + '::::' + Apelido.Text);
      C_Texto.Text := '';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
///
Apelido.Text:=Apelido1.Text;
///

if S_Server.Active = True then
 begin
 //quando desconecta
   LV.Clear;

   S_Server.Active := False;
   Status.Lines.Add(Idioma.Lines[32]);
   SpeedButton1.Caption := Idioma.Lines[23];
   S_Cliente.Active := False;

   Edit2.Enabled := True;
   Edit3.Enabled:=true;
   Apelido1.Enabled:=true;
   Edit1.Enabled :=true;
   //
   TabSheet2.Enabled:=true;
   SpeedButton6.Enabled:=true;

   SpeedButton4.Enabled:=false;
   SpeedButton5.Enabled:=false;
   BitBtn4.Enabled:=false;
   //SpeedButton7.Enabled:=false;
   //SpeedButton8.Enabled:=false;
   SpeedButton2.Enabled:=true;
   SpeedButton3.Enabled:=true;


      //menu
   Servidor1.Enabled:=true;
   SalvarConversa1.Enabled:=false;
   SalvarUsurio1.Enabled:=false;
   LimparChat1.Enabled:=false;

 end
   else begin
    //quando conecta
        S_Server.Active := True;
        SpeedButton1.Caption := Idioma.Lines[24];

        Edit2.Enabled := False;
        Edit3.Enabled:=false;
        Apelido1.Enabled := False;
        Edit1.Enabled := False;

        SpeedButton1.Enabled := False;
        SpeedButton2.Enabled:=false;
        SpeedButton3.Enabled:=false;
        S_Cliente.Host := Edit2.Text;
        S_Cliente.Active := True;
        //
        TabSheet2.Enabled:=false;
        SpeedButton6.Enabled:=false;


   SpeedButton4.Enabled:=true;
   SpeedButton5.Enabled:=true;
   BitBtn4.Enabled:=true;
   //SpeedButton7.Enabled:=true;
   //SpeedButton8.Enabled:=true;

   //menu
   Servidor1.Enabled:=true;
   SalvarConversa1.Enabled:=true;
   SalvarUsurio1.Enabled:=true;
   LimparChat1.Enabled:=true;


   end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
r : TIdIPWatch;
begin
begin
if RadioButton1.Checked=false then
SpeedButton2.Enabled:=false
end;
begin
if RadioButton1.Checked=true then
begin
SpeedButton2.Enabled:=true;
 r := TIdIPWatch.Create(nil);
 Edit2.Text := r.LocalIP;
 r.free;
end
else

if RadioButton2.Checked=false then
begin
SpeedButton2.Enabled:=false
end
else

if RadioButton2.Checked=true then
begin
SpeedButton2.Enabled:=true;
Edit2.Text:= WebBrowser1.OleObject.Document.documentElement.innerText;
end;
end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Edit1.Text:=ListBox1.Items[Random(Listbox1.items.count)]
+ ListBox1.Items[Random(Listbox1.items.count)]
+ ListBox1.Items[Random(Listbox1.items.count)]
+ ListBox1.Items[Random(Listbox1.items.count)]
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
C_Texto.SelectAll;
C_Texto.CopyToClipboard;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
C_Texto.PasteFromClipboard;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var
     l : Tlistitem;
begin
///
Apelido.Text:=Apelido2.Text;
///

if S_Cliente.Active then
 begin
 S_Cliente.Active := False;
   bitbtn2.Caption := 'Conectar';

   LV.Clear;

     //quando desconecta
      //server
      TabSheet1.Enabled:=true;
      SpeedButton1.Enabled:=true;
      SpeedButton2.Enabled:=true;
      SpeedButton3.Enabled:=true;
      Edit2.Enabled:=true;
      Apelido.Enabled:=true;
      Apelido1.Enabled:=true;
      edit1.Enabled:=true;
      RadioButton1.Enabled:=true;
      RadioButton2.Enabled:=true;

      //geral
        SpeedButton4.Enabled:=false;
        SpeedButton5.Enabled:=false;
        BitBtn4.Enabled:=false;
       // SpeedButton7.Enabled:=false;
      //  SpeedButton8.Enabled:=false;

        //cliente
      ComboBox1.Enabled:=true;
      Host1.Enabled:=true;
      Apelido2.Enabled:=true;
      edit3.Enabled:=true;

            //menu
      Cliente1.Enabled:=true;
      SalvarConversa2.Enabled:=false;
      SalvarUsurio2.Enabled:=false;
      LimparChat2.Enabled:=false;

 end
   else begin
   //quando conecta

     //////
     ///
     ///
     ///
     /// GERA AS DATAS E COLOCA O IP NO MEMO // MANDA PRO LISTVIEW
     Memo_IPs.Lines.Insert(0,Host1.Text);
     Memo_Porta.Lines.Insert(0,Edit3.Text);
     Memo_Data.Lines.Insert(0, DateToStr(date) +' - ' +(FormatDateTime('hh:mm',now)));
     //Memo_IPs.Lines.Add(Edit2.Text);
     //Memo_Data.Lines.Add(DateToStr(date) +' - ' +(FormatDateTime('hh:mm',now)));
     //LV1.Columns[0].Caption:=Memo_IPs.Text;

      //ListBox2.Items.Add(Host1.Text + Edit3.Text);
//ListBox2.Items.Insert(0,Host1.Text +'   |   '+ Edit3.Text +'   |   '+ DateToStr(date) +' - ' +(FormatDateTime('hh:mm',now)));

      L := LV1.Items.Insert(0);
      l.SubItems.Add(Memo_IPs.Lines[0]);
      l.SubItems.Add(Memo_Porta.Lines[0]);
      l.SubItems.Add(Memo_Data.Lines[0]);
      LV1.Items.Delete(16);
      ///
      ///
      ///
      ///
      Memo_IPs.Lines.SaveToFile(Edit7.Text + 'cliente_ips.ini');
      Memo_Porta.Lines.SaveToFile(Edit7.Text + 'cliente_porta.ini');
      Memo_Data.Lines.SaveToFile(Edit7.Text + 'cliente_data.ini');
      //////


      S_Cliente.Host := Host1.Text;
      S_Cliente.Address:=Host1.Text;
      S_Cliente.Active := True;
      C_Texto.Enabled:=true;

       //server
      TabSheet1.Enabled:=false;
      SpeedButton1.Enabled:=false;
      SpeedButton2.Enabled:=false;
      SpeedButton3.Enabled:=false;
      Edit2.Enabled:=false;
      Apelido.Enabled:=false;
      Apelido1.Enabled:=false;
      edit1.Enabled:=false;
      RadioButton1.Enabled:=false;
      RadioButton2.Enabled:=false;

      //geral
        SpeedButton4.Enabled:=true;
        SpeedButton5.Enabled:=true;
        BitBtn4.Enabled:=true;
      //  SpeedButton7.Enabled:=true;
      //  SpeedButton8.Enabled:=true;

        //cliente
      Host1.Enabled:=false;
      Apelido2.Enabled:=false;
      edit3.Enabled:=false;

      //menu
      Cliente1.Enabled:=true;
      SalvarConversa2.Enabled:=true;
      SalvarUsurio2.Enabled:=true;
      LimparChat2.Enabled:=true;



   end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
Painel.Clear;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
SaveDialog1.DefaultExt:= 'txt';
  { Execute a save file dialog. }
  if SaveDialog1.Execute then
    { First check if the file exists. }
      { Otherwise, save the memo box lines into the file. }
      Painel.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Abir1Click(Sender: TObject);
begin
Form1.Show;
Form1.WindowState:=wsMaximized;
ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TForm1.Ajuda1Click(Sender: TObject);
begin
ShellExecute(handle, 'open',Pchar('chrome.exe'),Pchar('http://www.wousoftware.com/'), Nil, SW_SHOWNORMAL);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
//ShowMessage(ExtractFileName(form1.Caption) );
edit4.Text:=(ExtractFileName(Application.ExeName)); //mostra o nome da aplicação

 //ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Project2.exe'), '','',SW_SHOWNORMAL);
  Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'servidor_user.ini');
  Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'cliente_user.ini');
PlaySound(PChar('Som.wav'), 0, SND_ASYNC);
//SndPlaySound(ExtractFilePath(Application.ExeName)+'Som2.wav';
//AssignFile(Arq, 'servidor_user.txt');
//PlaySound('C:\WouSoftware\Softwares\WouSoftware\WouChat\WouChat 1.0\Debug\Win32\Som2.wav', 1, SND_ASYNC);
//ExtractFilePath(Application.ExeName)+'Som2.wav';
Edit2.Text:= WebBrowser1.OleObject.Document.documentElement.innerText;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
//WinExec('netsh.exe"firewall add portopening protocol=TCP port=777 name=""Firebird""mode=ENABLE scope=SUBNET"', SW_SHOW);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
//form2.show;
form3.show;
//sSkinManager1.Active:=false;
//Memo4.Lines.Add(LV.Selected.SubItems[5]);
//Memo4.Text:=(LV.Items.Item[1].Caption);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  C_Texto.SetFocus;
      S_Cliente.Socket.SendText(C_Texto.Text + '::::' + Apelido.Text);
      C_Texto.Text := '';
end;

procedure TForm1.BitBtn_copiar_criptClick(Sender: TObject);
begin
C_Texto.SelectAll;
C_Texto.CopyToClipboard;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
Host1.Text:=ComboBox1.Text;
end;

procedure TForm1.Copiar1Click(Sender: TObject);
begin
Painel.CopyToClipboard;
end;

procedure TForm1.Crditos1Click(Sender: TObject);
begin
ShellExecute(handle, 'open',Pchar('chrome.exe'),Pchar('http://www.wousoftware.com/'), Nil, SW_SHOWNORMAL);
end;

procedure TForm1.C_TextoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0; // elimina o som irritante
	SelectNext(ActiveControl,True,True);
  C_Texto.SetFocus;
      S_Cliente.Socket.SendText(C_Texto.Text + '::::' + Apelido.Text);
      C_Texto.Text := '';
  end;
end;

procedure TForm1.ExcluirUsurio1Click(Sender: TObject);
var
arq:TextFile;
begin
  AssignFile(Arq, 'cliente_user.ini');  //exclui usuario do do cliente
  Rewrite(Arq);
  Writeln(Arq, '');
    Writeln(Arq, '');
      Writeln(Arq, '');
  CloseFile(Arq);
end;

procedure TForm1.ExluirUsurio1Click(Sender: TObject);
var
arq:TextFile;
begin
AssignFile(Arq, 'servidor_user.ini'); //exclui usuario do servidor
  Rewrite(Arq);
  Writeln(Arq, '');
    Writeln(Arq, '');
      Writeln(Arq, '');
  CloseFile(Arq);
end;

procedure TForm1.Fechar1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   sSkinManager1.Active:=false;
   //if CanClose then { se o comando para fechar for acionado }
   //Form1.WindowState:=wsMinimized;
   //CanClose := false; { cancela o comando }
   //h:= FindWindow(nil,'TrayIcon'); { acha o ponteiro da aplicação no sistema}
   //ShowWindow(h,SW_HIDE); { esconde a aplicação da barra de tarefas}
   //RxTrayIcon1.Active := true; { coloca ícone no tray icon}
   //hide; { esconde o form }
end;

procedure TForm1.FormCreate(Sender: TObject);
var
arq:TextFile;
vdiretorio : string;
l : Tlistitem;
begin
  vDiretorio:=extractfilepath(Application.ExeName);
  edit5.Text:=vdiretorio; //mostra o diretório da aplicação

  edit4.Text:=(ExtractFileName(Application.ExeName)); //mostra o nome da aplicação
  WebBrowser1.Navigate('http://wousoftware.com/softwares/wouchat/ip.php'); //gera o ip
  WebBrowser2.Navigate('http://wousoftware.com/softwares/wouchat/Mensagem.html'); //Carrega a Mensagem

  ///////////
    If not(fileexists('theme.ini')) then
     begin
          AssignFile(Arq,'theme.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit7.Text +'theme.ini')) then
     Memo_Theme.Lines.LoadFromFile('theme.ini');
    ///
    sSkinManager1.SkinDirectory:=Edit5.Text;
    //sSkinManager1.SkinName:='GPlus';
    sSkinManager1.SkinName:=Memo_Theme.Lines[0];
  //////////

     //Cliente
     ///////////////////////////////////////////////////////////////////////////
     //Salva Ciente
     if not DirectoryExists(Edit4.Text +'\Cliente') then
     ForceDirectories(Edit5.Text +'\Cliente');
     Edit7.Text:=Edit5.Text + Edit6.Text;
     ///////////////////////////////////////////////////////////////////////////

     //Servidor
     ///////////////////////////////////////////////////////////////////////////
     //Salva Servidor
     if not DirectoryExists(Edit4.Text +'\Servidor') then
     ForceDirectories(Edit5.Text +'\Servidor');
     Edit9.Text:=Edit5.Text + Edit8.Text;
     ///////////////////////////////////////////////////////////////////////////
     ///
     ///
     ///
     ///  Servidor
     begin
     If not(fileexists(Edit9.Text + 'servidor_user.ini')) then
     begin
     AssignFile(Arq,Edit9.Text + 'servidor_user.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
              Writeln(Arq, '');
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit9.Text + 'servidor_user.ini')) then
     Memo1.Lines.LoadFromFile(Edit9.Text + 'servidor_user.ini');
     Edit2.Text:=Memo1.Lines[0];
     Edit1.Text:=Memo1.Lines[1];
     Apelido1.Text:=Memo1.Lines[2];
     end;
     ///
     ///
     ///
     ///  Cliente
     begin
     If not(fileexists(Edit7.Text + 'cliente_user.ini')) then
     begin
          AssignFile(Arq,Edit7.Text + 'cliente_user.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
              Writeln(Arq, '');
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit7.Text +'cliente_user.ini')) then
     Memo2.Lines.LoadFromFile(Edit7.Text +'cliente_user.ini');
     Host1.Text:=Memo2.Lines[0];
     Edit3.Text:=Memo2.Lines[1];
     Apelido2.Text:=Memo2.Lines[2];
     end;
     ///////////////////////////////////////////////////////////////////////////

     begin
     If not(fileexists(ExtractFilePath(Application.ExeName)+'language.ini')) then
     begin
     end
     else
     If (fileexists(ExtractFilePath(Application.ExeName)+'language.ini')) then
     Idioma.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'language.ini');

           //menu
           Configuraes1.Caption:=Idioma.Lines[0];
           Crditos1.Caption:=Idioma.Lines[1];
           Sair1.Caption:=Idioma.Lines[2];
           Servidor1.Caption:=Idioma.Lines[3];
           Cliente1.Caption:=Idioma.Lines[4];
           Idioma1.Caption:=Idioma.Lines[10];
           Ajuda1.Caption:=Idioma.Lines[5];
           SalvarConversa1.Caption:=Idioma.Lines[6];
           SalvarUsurio1.Caption:=Idioma.Lines[7];
           LimparChat1.Caption:=Idioma.Lines[8];
           ExluirUsurio1.Caption:=Idioma.Lines[9];
           SalvarConversa2.Caption:=Idioma.Lines[6];
           SalvarUsurio2.Caption:=Idioma.Lines[7];
           LimparChat2.Caption:=Idioma.Lines[8];
           ExcluirUsurio1.Caption:=Idioma.Lines[9];
           ema1.Caption:=Idioma.Lines[40];
           Normal1.Caption:=Idioma.Lines[41];
           //
             StaticText2.Caption:=Idioma.Lines[22];
           //
           //Painel Servidor
           Lbl_Servidor.Caption:=Idioma.Lines[11];
           Label1.Caption:=Idioma.Lines[12];
           Label2.Caption:=Idioma.Lines[13];
           RadioButton1.Caption:=Idioma.Lines[14];
           RadioButton2.Caption:=Idioma.Lines[15];
           SpeedButton2.Caption:=Idioma.Lines[16];
           SpeedButton3.Caption:=Idioma.Lines[17];
           SpeedButton1.Caption:=Idioma.Lines[18];
           StaticText1.Caption:=Idioma.Lines[39];
           SpeedButton1.Caption:=Idioma.Lines[23];
           //Painel Cliente
           Label3.Caption:=Idioma.Lines[11];
           Label4.Caption:=Idioma.Lines[12];
           Label5.Caption:=Idioma.Lines[13];
           SpeedButton6.Caption:=Idioma.Lines[25];
           StaticText3.Caption:=Idioma.Lines[39];
           //Chat
           C_Texto.Text:=Idioma.Lines[19];
           StatusBar1.Panels[0].Text:=Idioma.Lines[20];
           StatusBar1.Panels[2].Text:=Idioma.Lines[21];
           //Main Menu
           Abir1.Caption:=Idioma.Lines[35];
           Fechar1.Caption:=idioma.Lines[36];
     end;

     If not(fileexists(Edit7.Text + 'cliente_ips.ini')) then
     begin
          AssignFile(Arq,Edit7.Text + 'cliente_ips.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit7.Text +'cliente_ips.ini')) then
     Memo_IPs.Lines.LoadFromFile(Edit7.Text +'cliente_ips.ini');
     ComboBox1.Items.Text:= Memo_IPs.Text;
     ///////////////////////////////////////////////////////////////////////////
     ///
     ///////////////////////////////////////////////////////////////////////////
     If not(fileexists(Edit7.Text + 'cliente_data.ini')) then
     begin
          AssignFile(Arq,Edit7.Text + 'cliente_data.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit7.Text +'cliente_data.ini')) then
     Memo_Data.Lines.LoadFromFile(Edit7.Text +'cliente_data.ini');
     ///////////////////////////////////////////////////////////////////////////
     ///
     ///////////////////////////////////////////////////////////////////////////
     If not(fileexists(Edit7.Text + 'cliente_porta.ini')) then
     begin
          AssignFile(Arq,Edit7.Text + 'cliente_porta.ini');
  Rewrite(Arq);
              Writeln(Arq, '');
  CloseFile(Arq);
     end
     else
     If (fileexists(Edit7.Text +'cliente_porta.ini')) then
     Memo_Porta.Lines.LoadFromFile(Edit7.Text +'cliente_porta.ini');
     ///////////////////////////////////////////////////////////////////////////
     ///
     ///

       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[0]);
l.SubItems.Add(Memo_Porta.Lines[0]);
l.SubItems.Add(Memo_Data.Lines[0]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[1]);
l.SubItems.Add(Memo_Porta.Lines[1]);
l.SubItems.Add(Memo_Data.Lines[1]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[2]);
l.SubItems.Add(Memo_Porta.Lines[2]);
l.SubItems.Add(Memo_Data.Lines[2]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[3]);
l.SubItems.Add(Memo_Porta.Lines[3]);
l.SubItems.Add(Memo_Data.Lines[3]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[4]);
l.SubItems.Add(Memo_Porta.Lines[4]);
l.SubItems.Add(Memo_Data.Lines[4]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[4]);
l.SubItems.Add(Memo_Porta.Lines[4]);
l.SubItems.Add(Memo_Data.Lines[4]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[5]);
l.SubItems.Add(Memo_Porta.Lines[5]);
l.SubItems.Add(Memo_Data.Lines[5]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[6]);
l.SubItems.Add(Memo_Porta.Lines[6]);
l.SubItems.Add(Memo_Data.Lines[6]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[7]);
l.SubItems.Add(Memo_Porta.Lines[7]);
l.SubItems.Add(Memo_Data.Lines[7]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[8]);
l.SubItems.Add(Memo_Porta.Lines[8]);
l.SubItems.Add(Memo_Data.Lines[8]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[9]);
l.SubItems.Add(Memo_Porta.Lines[9]);
l.SubItems.Add(Memo_Data.Lines[9]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[10]);
l.SubItems.Add(Memo_Porta.Lines[10]);
l.SubItems.Add(Memo_Data.Lines[10]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[11]);
l.SubItems.Add(Memo_Porta.Lines[11]);
l.SubItems.Add(Memo_Data.Lines[11]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[12]);
l.SubItems.Add(Memo_Porta.Lines[12]);
l.SubItems.Add(Memo_Data.Lines[12]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[13]);
l.SubItems.Add(Memo_Porta.Lines[13]);
l.SubItems.Add(Memo_Data.Lines[13]);
       L := LV1.Items.Add;
l.SubItems.Add(Memo_IPs.Lines[14]);
l.SubItems.Add(Memo_Porta.Lines[14]);
l.SubItems.Add(Memo_Data.Lines[14]);

end;

procedure TForm1.GPlus1Click(Sender: TObject);
var
arq:TextFile;
begin
AssignFile(Arq, 'theme.ini');
  Rewrite(Arq);
              Writeln(Arq, 'GPlus');
              CloseFile(Arq);

     //Reinicia o Programa Mudar o Tema
     sSkinManager1.Active:=false;
     ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName)+Edit4.Text), '','',SW_SHOWNORMAL);
     Timer_Reiniciar.Enabled:=true;

end;

procedure TForm1.S_ClienteConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
Status.Lines.Add(Idioma.Lines[29] + S_Cliente.Host);
 SpeedButton6.Caption := Idioma.Lines[26];
  Apelido2.Enabled := False;
  Host1.Enabled:=false;
  S_Cliente.Socket.SendText('   ' + Apelido.Text);

  C_Texto.Enabled:=true;
  painel.Enabled:=true;
  //
 // TabSheet1.Enabled:=false;
 // SpeedButton1.Enabled:=false;
 // SpeedButton2.Enabled:=false;
 // RadioButton1.Enabled:=false;
 // RadioButton2.Enabled:=false;
end;

procedure TForm1.S_ClienteDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
 Status.Lines.Add(Idioma.Lines[33]);
  SpeedButton6.Caption := Idioma.Lines[25];
    Apelido2.Enabled := True;
    Host1.Enabled:=true;

    C_Texto.Enabled:=false;
      painel.Enabled:=false;;
    //
   // TabSheet1.Enabled:=true;
   // SpeedButton1.Enabled:=true;
   // SpeedButton2.Enabled:=true;
   // RadioButton1.Enabled:=true;
   // RadioButton2.Enabled:=true;
     LV.Columns[0].ImageIndex:=1;
end;

procedure TForm1.S_ClienteError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
Status.Lines.Add(Idioma.Lines[34] + S_Cliente.Host);

   case ErrorCode of
10004: ShowMessage(Socket.RemoteAddress + 'A Operação foi cancelada');
10013: ShowMessage(Socket.RemoteAddress + 'O endereço solicitado é um endereço de broadcast, mas bandeira não está definido');
10014: ShowMessage(Socket.RemoteAddress + 'Argumento invalido');
10022: ShowMessage(Socket.RemoteAddress + 'Socket não vinculados ao endereço, ou inválida ao ouvir ou não é invocado antes de aceitar');
10024: ShowMessage(Socket.RemoteAddress + 'Não mais descritores de arquivo disponíveis, aceitar fila está vazia');
10035: ShowMessage(Socket.RemoteAddress + 'Socket não-bloqueado e a operação especificada irá bloquear');
10036: ShowMessage(Socket.RemoteAddress + 'A operação de bloqueio Winsock está em andamento');
10037: ShowMessage(Socket.RemoteAddress + 'A operação foi concluída. Nenhuma operação de bloqueio está em progresso');
10038: ShowMessage(Socket.RemoteAddress + 'O Descritor não é um socket');
10039: ShowMessage(Socket.RemoteAddress + 'Endereço de destino requerido');
10040: ShowMessage(Socket.RemoteAddress + 'O datagrama é muito grande para caber no buffer e é truncada');
10041: ShowMessage(Socket.RemoteAddress + 'The specified port is the wrong type for this socket');
10042: ShowMessage(Socket.RemoteAddress + 'Opção desconhecida ou não suportada');
10043: ShowMessage(Socket.RemoteAddress + 'A porta especificada não é suportada');
10044: ShowMessage(Socket.RemoteAddress + 'O tipo do socket não é suportado nessa familia de endereços');
10045: ShowMessage(Socket.RemoteAddress + 'Socket não é um serviço do tipo orientada');
10047: ShowMessage(Socket.RemoteAddress + 'Familida de endereço não suportada');
10048: ShowMessage(Socket.RemoteAddress + 'Endereço em uso');
10049: ShowMessage(Socket.RemoteAddress + 'Endereço não disponivel na maquina local');
10050: ShowMessage(Socket.RemoteAddress + 'Subsistema de rede falhou');
10051: ShowMessage(Socket.RemoteAddress + 'A rede não pode ser alcançado a partir deste host neste momento');
10052: ShowMessage(Socket.RemoteAddress + 'Conexão expirou quando SO_KEEPALIVE está definido');
10053: ShowMessage(Socket.RemoteAddress + 'Conexão é abortada devido a uma falha de tempo limite ou outros');
10054: ShowMessage(Socket.RemoteAddress + 'A conexão foi reset pelo ponto remoto');
10055: ShowMessage(Socket.RemoteAddress + 'Sem espaço disponível no buffer');
10056: ShowMessage(Socket.RemoteAddress + 'O soqcket já está conectado');
10057: ShowMessage(Socket.RemoteAddress + 'O socket não está conectado');
10058: ShowMessage(Socket.RemoteAddress + 'Socket desconectado');
10060: ShowMessage(Socket.RemoteAddress + 'A tentativa de conexão expirou');
10061: ShowMessage(Socket.RemoteAddress + 'Conexão Rejeitada');
10201: ShowMessage(Socket.RemoteAddress + 'Socket já criado para este objeto');
10202: ShowMessage(Socket.RemoteAddress + 'Socket não criado para este objeto');
11001: ShowMessage(Socket.RemoteAddress + 'Autorização de resposta : Host não encontrado');
11003: ShowMessage(Socket.RemoteAddress + 'Erro não recuperado');
11004: ShowMessage(Socket.RemoteAddress + 'nome válido, nenhum registro de dados do tipo solicitado');
// fim tratamento de erro
end;
ErrorCode := 0;

   {
if errorcode=10061 then
ShowMessage('Servidor Desconectado ou Inexistente');
}
end;

procedure TForm1.S_ClienteRead(Sender: TObject; Socket: TCustomWinSocket);
begin
Painel.Lines.Add(Socket.ReceiveText);

if form1.WindowState=wsMinimized then
begin
PlaySound(PChar('Som.wav'), 0, SND_ASYNC);
end
else
if form1.WindowState=wsMaximized then

end;

procedure TForm1.S_ServerClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
  var
l : Tlistitem;
begin
  C_Texto.Enabled:=true;
  painel.Enabled:=true;

L := LV.Items.Add;
//l.SubItems.Add(Edit_User.Text);
//l.SubItems.Add(Socket.ReceiveText);
//l.SubItems.Add(socket.LocalHost);
l.SubItems.Add(socket.RemoteAddress);
l.SubItems.Add(Edit1.Text);
l.SubItems.Add(DateToStr(date) +' - ' +(FormatDateTime('hh:mm',now)));


Status.Lines.Add(Idioma.Lines[30] + Socket.RemoteAddress);
end;

procedure TForm1.S_ServerClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
  var
l : Tlistitem;
begin
  C_Texto.Enabled:=true;
  painel.Enabled:=true;

  LV.Columns[0].ImageIndex:=1;

Status.Lines.Add(Idioma.Lines[37]+ Socket.RemoteAddress);
end;

procedure TForm1.S_ServerClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
ErrorCode :=0;

if errorcode=10061 then

ShowMessage('Servidor Desconectado ou Inexistente');

end;

procedure TForm1.S_ServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
var texto: array[0..1] of string;
    temptexto: string;
    Index: integer;
     l : Tlistitem;
begin
   temptexto := Socket.ReceiveText;
   texto[0] := Copy(temptexto, 1,Pos('::::', temptexto) -1);
   texto[1] := Copy(temptexto, Pos('::::', temptexto) + Length('::::'),Length(temptexto));
   if texto[0] = 'NICK' then {Verifica se a mensagem eh de entrada}
   begin

    WITH S_Server.Socket DO BEGIN {Se a msg for de entrada avisa a todos os clientes quem entrou }
      FOR Index := 0 TO ActiveConnections-1 DO BEGIN
        Connections[Index].SendText(texto[1] + ' Entrou no Chat: ');

      END;
    END;
   end

   else
   begin
    WITH S_Server.Socket DO BEGIN {Se nao for de entrada, então eh msg normal, no caso passa para todos a msg}
      FOR Index := 0 TO ActiveConnections-1 DO BEGIN
       Connections[Index].SendText('(' + texto[1] + ')'+ Idioma.Lines[27]  + texto[0]);
      END;
    END;
 // Status.Lines.Add(Idioma.Lines[31] + texto[1] + ' (' + Socket.RemoteAddress + ') ' + Idioma.Lines[27]+ texto[0]);
 //Edit_User.Text:=texto[1];

             {
Edit_User.Text:=texto[1];
L := LV.Items.Add;
l.SubItems.Add(Edit_User.Text);
l.SubItems.Add(socket.RemoteAddress );
l.SubItems.Add(Edit1.Text);
         }
   end;

end;

procedure TForm1.S_ServerListen(Sender: TObject; Socket: TCustomWinSocket);
begin
Status.Lines.Add(Idioma.Lines[28]);
//Status.Lines.Add('Servidor ::> Servidor Ligado!');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if apelido1.Text='' then
begin
SpeedButton1.Enabled:=false;
Painel.Enabled:=false;
end
else
if apelido1.Text<>'' then
begin
SpeedButton1.Enabled:=true;
Painel.Enabled:=true;
end;
end;


procedure TForm1.Timer2Timer(Sender: TObject);
begin
if apelido2.Text='' then
begin
SpeedButton6.Enabled:=false;
end
else
if apelido2.Text<>'' then
begin
SpeedButton6.Enabled:=true;
end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
StatusBar1.Panels[1].Text:=IntToStr(Painel.Lines.Capacity);
end;

procedure TForm1.Timer_ReiniciarTimer(Sender: TObject);
begin
//sSkinManager1.Active:=false;
Application.Terminate;
end;

end.
