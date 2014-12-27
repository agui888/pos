program CBuilder;

uses
  Forms,
  Windows,
  SysUtils,
  Un_Main in 'Lib\Un_Main.pas' {Fm_Main},
  BaseUnit in 'Lib\BaseUnit.pas',
  Un_ClassBox in 'Lib\Un_ClassBox.pas' {Fm_ClassBox},
  Un_Config in 'Lib\Un_Config.pas' {Fm_Config},
  Un_Code in 'Lib\Un_Code.pas' {Fm_Code},
  Un_Wait in 'Lib\Un_Wait.pas' {Fm_Wait},
  Un_Progress in 'Lib\Un_Progress.pas' {Fm_Progress},
  Un_Menu in 'Lib\Un_Menu.pas' {Fm_Menu},
  Un_DataModule in 'Lib\Un_DataModule.pas' {DBA: TDataModule},
  AES in 'Lib\AES.pas',
  Un_Test in 'Lib\Un_Test.pas' {Fm_Test},
  TestThread in 'Lib\TestThread.pas',
  LogsThread in 'Lib\LogsThread.pas',
  Un_Regedit in 'Lib\Un_Regedit.pas' {Fm_Regedit};

{$R *.res}

begin
  BaseUnit.AppPath := ExtractFileDir(Application.ExeName) + '\';
  BaseUnit.AppName := ChangeFileExt(ExtractFileName(Application.ExeName), '');

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'CBuilder ';

  Application.CreateForm(TDBA, DBA);
  Fm_Config := TFm_Config.Create(Application);
  Fm_Config.Caption := '登录';
  Fm_Config.LabelCaption.Caption := '欢迎使用 CBuilder 代码生成器';
  Fm_Config.ShowModal;
  Fm_Config.Update;

  try
    if DBA.UniConnection.Connected = True then
      Application.CreateForm(TFm_Main, Fm_Main)
    else
      Application.Terminate;
  finally
    Fm_Config.Free;
    Fm_Config := nil;
  end;
  Application.Run;
end.
