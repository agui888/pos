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
{ ��־�̹߳����� - �ٽ���  }
{**************************}
constructor TLogsThread.Create(ATimer: String; AMessage: String; AError: String; ASuccessText: String);
begin
  inherited Create(Suspended);
  FTimer := ATimer;
  FMessage := AMessage;
  FError := AError;
  FSuccessText := ASuccessText;
  FreeOnTerminate := True; {��������߳�ִ����Ϻ��漴�ͷ�}
end;

{**************************}
{ ��־�߳����� - �ٽ���    }
{**************************}
destructor TLogsThread.Destroy;
begin
  inherited;
end;

{**************************}
{ ��־�߳�ִ���� - �ٽ���  }
{**************************}
procedure TLogsThread.Execute;
begin
  EnterCriticalSection(TRL_CS_Logs); //�����ٽ���
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
    LeaveCriticalSection(TRL_CS_Logs); //�뿪�ٽ���
  end;
end;

end.

