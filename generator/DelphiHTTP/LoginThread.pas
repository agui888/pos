unit LoginThread;

interface

uses
  Classes, SysUtils, Forms, Windows, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TloginThread = Class(TThread)

protected
  FURL: String;
  FUser: String;
  FPassword: String;
  procedure Execute;Override;
public
  constructor Create(URL, User, Password: String);
end;

implementation

uses LogsThread, Un_Main;

constructor TloginThread.Create(URL, User, Password: String);//�����߳�
begin
  inherited Create(Suspended);
  FURL := URL;
  FUser := User;
  FPassword := Password;
  FreeOnTerminate:=True;  {��������߳�ִ����Ϻ��漴�ͷ�}
end;

procedure TloginThread.Execute;//�߳�����
var
  Temp: String;
  IdHTTP: TIdHTTP;
  Param:TStringList;
  RStream:TStringStream;

  OldTick, NewTick, TotalTick: TDateTime;
begin
  IdHTTP := TIdHTTP.Create(nil);
  Param:=TStringList.Create;
  RStream:=TStringStream.Create('');
  try
    Param.Add('qtdlEntity.skyid=' + FUser);
    Param.Add('qtdlEntity.password=' + FPassword);

    IdHTTP.HandleRedirects:=true;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.AcceptCharSet := 'UTF-8';
    IdHTTP.Request.AcceptEncoding := 'UTF-8';
    IdHTTP.Request.AcceptLanguage := 'UTF-8';

    OldTick := Now;
    try
      IdHTTP.Post(FURL, Param, RStream);
    except
      on E: Exception do
        Temp := E.Message;
    end;
    NewTick := Now;
    TotalTick := NewTick - OldTick;

    Temp := RStream.DataString;
    Temp := Utf8ToAnsi(Temp);
  finally
    TLogsThread.Create(0, Temp, '��ʱ:' + FormatDateTime('hh:nn:ss.zzz', TotalTick));
    FreeAndNil(IdHTTP);
    FreeAndNil(Param);
    FreeAndNil(RStream);
  end;
end;

end.


