unit TestThread;

interface

uses
  Classes, SysUtils, Forms, Windows, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TTestThread = Class(TThread)

protected
  FURL: String;
  FParamName: TStrings;
  FParamValue: TStrings;
  FAutoName: String;
  FNumber: String;
  FSuccessText: String;
  procedure Execute;Override;
public
  constructor Create(AURL:String; AParamName, AParamValue: TStrings; AAutoName: String; ANumber, ASuccessText: String);
  destructor Destroy; override;
end;

implementation

uses Un_Main, Un_Test, LogsThread;

constructor TTestThread.Create(AURL: String; AParamName, AParamValue: TStrings; AAutoName: String; ANumber, ASuccessText: String);
var
  i: Integer;
begin
  inherited Create(Suspended);
  FURL := AURL;

  FParamName := TStringList.Create;
  FParamName.Text := AParamName.Text;

  FParamValue := TStringList.Create;
  FParamValue.Text := AParamValue.Text;

  FAutoName := AAutoName;
  FNumber := ANumber;

  FSuccessText := ASuccessText;

  FreeOnTerminate:=True;  {这可以让线程执行完毕后随即释放}
end;

destructor TTestThread.Destroy;
begin
  FreeAndNil(FParamName);
  FreeAndNil(FParamValue);
  inherited;
end;

procedure TTestThread.Execute;//线程启动
var
  i: Integer;
  Value, Return, Error, Timer, MessageText: String;
  IdHTTP: TIdHTTP;
  Param:TStringList;
  RStream:TStringStream;

  OldTick, NewTick, TotalTick: TDateTime;
begin
  if (isStopThread) then
    Exit;

  IdHTTP := TIdHTTP.Create(nil);
  IdHTTP.HandleRedirects:=true;
  IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
  IdHTTP.Request.AcceptCharSet := 'UTF-8';
  IdHTTP.Request.AcceptEncoding := 'UTF-8';
  IdHTTP.Request.AcceptLanguage := 'UTF-8';

  Param:=TStringList.Create;
  RStream:=TStringStream.Create('');
  try

    for i := 0 to FParamName.Count - 1 do
    begin
      if (FParamName.Strings[i] = FAutoName) then
          Value := FParamValue.Strings[i] + FNumber
      else
          Value := FParamValue.Strings[i];
      Param.Add(FParamName.Strings[i] + '=' + Value);
    end;

    OldTick := Now;
    try
      IdHTTP.Post(FURL, Param, RStream);
    except
      on E: Exception do
      begin
        Error := E.Message;
      end;
    end;
    NewTick := Now;
    TotalTick := NewTick - OldTick;

    Return := RStream.DataString;
    Return := Utf8ToAnsi(Return);

    Timer := FormatDateTime('hh:nn:ss.zzz', TotalTick);

    try
      MessageText := Return + Error;
      if (not Fm_Test.LogsCheckBox.Checked) then
        Fm_Test.EditLog.Lines.Append(FormatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - 耗时:' + Timer + '  结果:' + MessageText);

      Fm_Test.SysMemo.Lines.Append(FormatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - 第 ' + FNumber + ' 线程已执行 耗时:' + Timer);
    except
      Fm_Test.SysMemo.Lines.Append('系统结果出错异常!');
    end;
  finally
    TLogsThread.Create(Timer, MessageText, Error, FSuccessText);
    FreeAndNil(IdHTTP);
    FreeAndNil(Param);
    FreeAndNil(RStream);
  end;
end;

end.


