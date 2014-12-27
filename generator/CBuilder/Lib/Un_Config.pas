unit Un_Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Un_ClassBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  StdCtrls, cxButtons, jpeg, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, IniFiles, GIFImg;

type
  TFm_Config = class(TFm_ClassBox)
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    EditIP: TcxTextEdit;
    EditUser: TcxTextEdit;
    EditPassword: TcxTextEdit;
    EditSID: TcxTextEdit;
    EditPort: TcxSpinEdit;
    OracleImage: TImage;
    Image2: TImage;
    procedure ButtonEnterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateParams(var params : TCreateParams);override;
  end;

var
  Fm_Config: TFm_Config;

implementation

uses Un_Main, BaseUnit, Un_DataModule, Un_Wait, AES;

{$R *.dfm}

{********************
 Form Bug
********************}
procedure TFm_Config.CreateParams(var params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent := GetDesktopWindow;
  // ���������һ��  Application.MainFormOnTaskBar := True; ��Ȼ�������ϻ�����������
  // ���� GetDesktopWindow��Ϊ�˷�ֹ��С���Ͳ��������, ֻ�н����̲߳����˳�����
end;

{********************
 ���� Form
********************}
procedure TFm_Config.FormCreate(Sender: TObject);
var
  IniFile:TIniFile;
begin
  inherited;
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    EditIP.Text := IniFile.ReadString('System', 'IP', '127.0.0.1');
    EditPort.Text := IniFile.ReadString('System', 'Port', '1521');
    EditUser.Text := IniFile.ReadString('System', 'User', '');
    EditPassword.Text := DecryptString(IniFile.ReadString('System', 'Password', ''), 'XSH', kb128);
    EditSID.Text := IniFile.ReadString('System', 'SID', '');
  finally
    IniFile.Destroy;
  end;
end;

{********************
 �����¼� Form
********************}
procedure TFm_Config.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
   13, 40:
       Perform(wm_nextdlgctl, 0, 0);
   38:
       Perform(wm_nextdlgctl, 1, 0);
  end;
end;

{********************
 �ر� Form
********************}
procedure TFm_Config.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

{********************
 ��¼
********************}
procedure TFm_Config.ButtonEnterClick(Sender: TObject);
var
  IniFile:TIniFile;
begin
  inherited;
  if (Self.Caption = '��¼') then
     TFm_Wait.Execute('������֤���,���Ժ�.......');

  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    IniFile.WriteString('System', 'IP', EditIP.Text);
    IniFile.WriteString('System', 'Port', EditPort.Text);
    IniFile.WriteString('System', 'User', EditUser.Text);
    IniFile.WriteString('System', 'Password', EncryptString(EditPassword.Text, 'XSH', kb128));
    IniFile.WriteString('System', 'SID', EditSID.Text);
  finally
    IniFile.Destroy;
  end;

  ButtonEnter.Enabled := false;
  try
    if (DBA.StartConnection) then
    begin
      Close;
    end;
  finally
    ButtonEnter.Enabled := true;
  end;
end;

end.
