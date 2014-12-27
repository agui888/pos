unit LogsThread;

interface

uses
  Windows, Classes, SysUtils;

type
  TLogsThread = class(TThread)
  private
    { private declarations }
    FPage: Integer;
    FMessage: String;
    FUseTime: String;
    procedure LogsMessageProcess;
  public
    { public declarations }
    constructor Create(APage: Integer; AMessage:String; AUseTime: String);
    procedure Execute; override;
    destructor Destroy; override;
  end;

implementation

uses Un_Main;

{ TLogsThread }

{**************************}
{ 日志线程构造器 - 临界区  }
{**************************}
constructor TLogsThread.Create(APage: Integer; AMessage:String; AUseTime: String);
begin
  inherited Create(Suspended);
  FreeOnTerminate := True; {这可以让线程执行完毕后随即释放}

  FPage := APage;
  FMessage := AMessage;
  FUseTime := AUseTime;
end;

{**************************}
{ 日志线程销毁 - 临界区    }
{**************************}
destructor TLogsThread.Destroy;
begin
  inherited;
end;

{**************************}
{ 日志线程执行区 - 临界区  }
{**************************}
procedure TLogsThread.Execute;
begin
  EnterCriticalSection(TRL_CS_Logs); //进入临界区
  try
    LogsMessageProcess;
  finally
    with Fm_Main do
    begin
      if (FPage = 0) then
        StatusBar.Panels[0].Text := '登录次数:' + IntToStr(LoginInc) + '  成功:' + IntToStr(LoginSuccess) + '/失败:' + IntToStr(LoginError) + '/异常:' + IntToStr(LoginExcept);
      if (FPage = 1) then
        StatusBar.Panels[1].Text := '登录次数:' + IntToStr(InsertInc) + '  成功:' + IntToStr(InsertSuccess) + '/失败:' + IntToStr(InsertError) + '/异常:' + IntToStr(InsertExcept);
    end;
    LeaveCriticalSection(TRL_CS_Logs); //离开临界区
  end;
end;

procedure TLogsThread.LogsMessageProcess;
begin
  try
    if (FPage = 0) then
    begin
      Inc(Fm_Main.LoginInc);
      if (Pos('登录成功', FMessage) > 0) then
        Inc(Fm_Main.LoginSuccess)
      else
        Inc(Fm_Main.LoginError);
      Fm_Main.MemoLogin.Lines.Append(FormatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - ' + FMessage + ' - ' + FUseTime);
    end;

    if (FPage = 1) then
    begin
      Inc(Fm_Main.InsertInc);
      if (Pos('保存成功', FMessage) > 0) then
        Inc(Fm_Main.InsertSuccess)
      else
        Inc(Fm_Main.InsertError);
      Fm_Main.MemoInsert.Lines.Append(FormatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - ' + FMessage + ' - ' + FUseTime);
    end;
  except
    Inc(Fm_Main.LoginExcept);
    Inc(Fm_Main.InsertExcept);
  end;
end;

end.

