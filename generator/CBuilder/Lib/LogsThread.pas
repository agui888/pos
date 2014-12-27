unit LogsThread;

interface

uses
  Windows, Classes, SysUtils;

type
  TLogsThread = class(TThread)
  private
    { private declarations }
    FTimer: String;
    FMessage: String;
    FError: String;
    FSuccessText: String;
  public
    { public declarations }
    constructor Create(ATimer: String; AMessage: String; AError: String; ASuccessText: String);
    procedure Execute; override;
    destructor Destroy; override;
  end;

implementation

uses Un_Main, Un_Test;

{ TLogsThread }

{**************************}
{ 日志线程构造器 - 临界区  }
{**************************}
constructor TLogsThread.Create(ATimer: String; AMessage: String; AError: String; ASuccessText: String);
begin
  inherited Create(Suspended);
  FTimer := ATimer;
  FMessage := AMessage;
  FError := AError;
  FSuccessText := ASuccessText;
  FreeOnTerminate := True; {这可以让线程执行完毕后随即释放}
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
    ThreadNumber := ThreadNumber + 1;

    if (MaxTimer = '') then
      MaxTimer := FTimer
    else
    begin
      if (FTimer > MaxTimer) then
        MaxTimer := FTimer;
    end;

    if (MinTimer = '') then
      MinTimer := FTimer
    else
    begin
      if (FTimer < MinTimer) then
        MinTimer := FTimer;
    end;


    if (Trim(FError) <> '') then
      ThreadExcept := ThreadExcept + 1;

    if (Pos(FSuccessText, FMessage) > 0) then
      ThreadSuccess := ThreadSuccess + 1
    else
      ThreadError := ThreadError + 1;
  finally
    LeaveCriticalSection(TRL_CS_Logs); //离开临界区
  end;
end;

end.

