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
{ ��־�̹߳����� - �ٽ���  }
{**************************}
constructor TLogsThread.Create(APage: Integer; AMessage:String; AUseTime: String);
begin
  inherited Create(Suspended);
  FreeOnTerminate := True; {��������߳�ִ����Ϻ��漴�ͷ�}

  FPage := APage;
  FMessage := AMessage;
  FUseTime := AUseTime;
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
    LogsMessageProcess;
  finally
    with Fm_Main do
    begin
      if (FPage = 0) then
        StatusBar.Panels[0].Text := '��¼����:' + IntToStr(LoginInc) + '  �ɹ�:' + IntToStr(LoginSuccess) + '/ʧ��:' + IntToStr(LoginError) + '/�쳣:' + IntToStr(LoginExcept);
      if (FPage = 1) then
        StatusBar.Panels[1].Text := '��¼����:' + IntToStr(InsertInc) + '  �ɹ�:' + IntToStr(InsertSuccess) + '/ʧ��:' + IntToStr(InsertError) + '/�쳣:' + IntToStr(InsertExcept);
    end;
    LeaveCriticalSection(TRL_CS_Logs); //�뿪�ٽ���
  end;
end;

procedure TLogsThread.LogsMessageProcess;
begin
  try
    if (FPage = 0) then
    begin
      Inc(Fm_Main.LoginInc);
      if (Pos('��¼�ɹ�', FMessage) > 0) then
        Inc(Fm_Main.LoginSuccess)
      else
        Inc(Fm_Main.LoginError);
      Fm_Main.MemoLogin.Lines.Append(FormatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - ' + FMessage + ' - ' + FUseTime);
    end;

    if (FPage = 1) then
    begin
      Inc(Fm_Main.InsertInc);
      if (Pos('����ɹ�', FMessage) > 0) then
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

