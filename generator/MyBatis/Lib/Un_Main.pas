unit Un_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sTooledit, sLabel,
  sGroupBox, ComCtrls, sComboBoxes, sEdit, sSkinManager, sButton, sPageControl,
  IniFiles, ecSyntMemo, ecSyntAnal, ImgList, cxGraphics, ExtCtrls, ecSyntDlg;

type
  TFm_Main = class(TForm)
    sGroupBox1: TsGroupBox;
    sLabel1: TsLabel;
    EditJdbc: TsFilenameEdit;
    sLabel2: TsLabel;
    EditDriverClass: TsComboBoxEx;
    sLabel3: TsLabel;
    EditURL: TsEdit;
    sLabel4: TsLabel;
    EditUser: TsEdit;
    EditPassword: TsEdit;
    sLabel5: TsLabel;
    ButtonBuiler: TsButton;
    sLabel6: TsLabel;
    EditTable: TsEdit;
    sLabel7: TsLabel;
    EditJavaClass: TsEdit;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    cxSmallImages: TcxImageList;
    SyntAnalyzerJava: TSyntAnalyzer;
    SyntAnalyzerXML: TSyntAnalyzer;
    SyntAnalyzerJSP: TSyntAnalyzer;
    MemoMapping: TSyntaxMemo;
    MemoModel: TSyntaxMemo;
    MemoDAO: TSyntaxMemo;
    sTabSheet4: TsTabSheet;
    MemoXML: TSyntaxMemo;
    sLabel8: TsLabel;
    EditJDK: TsFilenameEdit;
    TimerLoad: TTimer;
    sSkinManager1: TsSkinManager;
    ButtonModel: TsButton;
    sTabSheet5: TsTabSheet;
    MemoExample: TSyntaxMemo;
    SyntFindDialog1: TSyntFindDialog;
    SyntFindDialog2: TSyntFindDialog;
    SyntFindDialog3: TSyntFindDialog;
    SyntFindDialog4: TSyntFindDialog;
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuilerClick(Sender: TObject);
    procedure TimerLoadTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonModelClick(Sender: TObject);
  private
    { Private declarations }
    OLDModel: TStrings;
    procedure OpenConfig;
    procedure SaveConfig;
  public
    { Public declarations }
  end;

var
  Fm_Main: TFm_Main;
  AppPath, AppName:String;

implementation

{$R *.dfm}

procedure TFm_Main.OpenConfig;
var
  IniFile:TIniFile;
begin
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    EditJDK.Text := IniFile.ReadString('System', 'JDK', '');
    EditJdbc.Text := IniFile.ReadString('System', 'JDBC', '');
    EditDriverClass.Text := IniFile.ReadString('System', 'DriverClass', '');
    EditURL.Text := IniFile.ReadString('System', 'URL', '');
    EditUser.Text := IniFile.ReadString('System', 'User', '');
    EditPassword.Text := IniFile.ReadString('System', 'Password', '');
    EditTable.Text := IniFile.ReadString('System', 'Table', '');
    EditJavaClass.Text := IniFile.ReadString('System', 'JavaClass', '');
  finally
    IniFile.Destroy;
  end;
end;


procedure TFm_Main.SaveConfig;
var
  IniFile:TIniFile;
begin
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    IniFile.WriteString('System', 'JDK', EditJDK.Text);
    IniFile.WriteString('System', 'JDBC', EditJdbc.Text);
    IniFile.WriteString('System', 'DriverClass', EditDriverClass.Text);
    IniFile.WriteString('System', 'URL', EditURL.Text);
    IniFile.WriteString('System', 'User', EditUser.Text);
    IniFile.WriteString('System', 'Password', EditPassword.Text);
    IniFile.WriteString('System', 'Table', EditTable.Text);
    IniFile.WriteString('System', 'JavaClass', EditJavaClass.Text);
  finally
    IniFile.Destroy;
  end;
end;

procedure TFm_Main.FormCreate(Sender: TObject);
begin
  OLDModel := TStringList.Create;
  OLDModel.Text := MemoXML.Lines.Text;
  AppPath := ExtractFileDir(Application.ExeName);
  AppName := ChangeFileExt(ExtractFileName(Application.ExeName), '');
  OpenConfig;

  Self.Top := 0;
  Self.Left := 0;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height - 40;

  if (FileExists(AppPath + '\generator.xml')) then
    MemoXML.LoadFromFile(AppPath + '\generator.xml');
end;

procedure TFm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OLDModel.Free;
end;

procedure TFm_Main.ButtonModelClick(Sender: TObject);
begin
  MemoXML.Show;
  MemoXML.Lines.Text := OLDModel.Text;
end;

procedure TFm_Main.ButtonBuilerClick(Sender: TObject);
var
  Path, Java, Command: String;
  MemoText, Bat: TStrings;
begin
  Screen.Cursor := crHourGlass;
  try
    MemoMapping.Clear;
    MemoModel.Clear;
    MemoDAO.Clear;

    MemoXML.SaveToFile(AppPath + '\generator.xml');

    Path := AppPath + '\Temp';
    if DirectoryExists(Path)=false then
      ForceDirectories(Path);

    SaveConfig();
    MemoText := TStringList.Create;
    try
      MemoText.Text := MemoXML.Lines.Text;
      MemoText.Text := StringReplace(MemoText.Text, '@location', EditJdbc.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@driverClass', EditDriverClass.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@connectionURL', EditURL.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@userId', EditUser.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@password', EditPassword.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@targetProject', Path, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@tableName', EditTable.Text, [rfReplaceAll]);
      MemoText.Text := StringReplace(MemoText.Text, '@domainObjectName', EditJavaClass.Text, [rfReplaceAll]);
      MemoText.SaveToFile(Path + '\generator.xml');
    finally
      MemoText.Free;
    end;

    Bat := TStringList.Create;
    try
      Java := EditJDK.Text;
      Java := StringReplace(Java, ' ', '" "', [rfReplaceAll]);
      Java := StringReplace(Java, '(', '^(', [rfReplaceAll]);
      Java := StringReplace(Java, ')', '^)', [rfReplaceAll]);

      Bat.Append('@echo off');
      Bat.Append('set filepath=' + Java);
      Bat.Append('%filepath% -jar ' + AppPath + '\Jar\mybatis-generator-core-1.3.2.jar -configfile ' + Path + '\generator.xml -overwrite');
      Bat.Append('Pause');
      Command := Path + '\generator.bat';
      Bat.SaveToFile(Command);
    finally
      Bat.Free;
    end;
    WinExec(PAnsiChar(AnsiString('cmd /c ' +Command)), SW_SHOW);

    Sleep(3000);
  finally
    Screen.Cursor := crDefault;
    TimerLoad.Enabled := True;
  end;
end;

procedure TFm_Main.TimerLoadTimer(Sender: TObject);
var
  Command, File1, File2, File3, File4: String;
begin
  File1 := AppPath + '\Temp\mapping\' + EditJavaClass.Text + 'Mapper.xml';
  File2 := AppPath + '\Temp\model\' + EditJavaClass.Text + '.java';
  File3 := AppPath + '\Temp\dao\' + EditJavaClass.Text + 'Mapper.java';
  File4 := AppPath + '\Temp\model\' + EditJavaClass.Text + 'Example.java';

  if (Trim(MemoMapping.Text) = '') and FileExists(File1) then
    MemoMapping.LoadFromFile(File1);

  if (Trim(MemoModel.Text) = '') and FileExists(File2) then
    MemoModel.LoadFromFile(File2);

  if (Trim(MemoDAO.Text) = '') and FileExists(File3) then
    MemoDAO.LoadFromFile(File3);

  if (Trim(MemoExample.Text) = '') and FileExists(File4) then
    MemoExample.LoadFromFile(File4);

  if (Trim(MemoMapping.Text) <> '') and (Trim(MemoModel.Text) <> '') and (Trim(MemoDAO.Text) <> '') then
  begin
    MemoMapping.Show;
    TimerLoad.Enabled := false;

    //Command := 'cmd /c del ' + AppPath + '\Temp\*.* /q /s';
    //WinExec(PAnsiChar(AnsiString(Command)), SW_HIDE);

    Command := 'cmd /c rd ' + AppPath + '\Temp /q /s';
    WinExec(PAnsiChar(AnsiString(Command)), SW_HIDE);
  end;
end;

end.
