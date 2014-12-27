unit InsertThread;

interface

uses
  Classes, SysUtils, Forms, Windows, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TInsertThread = Class(TThread)

protected
  FURL: String;
  FSkyid, FSkyname, FSkyposin, FSkyPassword, FAddress: String;
  procedure Execute;Override;
public
  constructor Create(URL, Skyid, Skyname, Skyposin, SkyPassword, Address: String);
end;

implementation

uses LogsThread, Un_Main;

constructor TInsertThread.Create(URL, Skyid, Skyname, Skyposin, SkyPassword, Address: String);//创建线程
begin
  inherited Create(Suspended);
  FURL := URL;
  FSkyid := Skyid;
  FSkyname := Skyname;
  FSkyposin := Skyposin;
  FSkyPassword := SkyPassword;
  FAddress := Address;
  FreeOnTerminate:=True;  {这可以让线程执行完毕后随即释放}
end;

procedure TInsertThread.Execute;//线程启动
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
    Param.Add('qtdlEntity.skyid=' + FSkyid);
    Param.Add('qtdlEntity.skyname=' + FSkyname);
    Param.Add('qtdlEntity.skyposin=' + FSkyposin);
    Param.Add('qtdlEntity.password=' + FSkyPassword);
    Param.Add('qtdlEntity.address=' + FAddress);

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
    TLogsThread.Create(1, Temp, '耗时:' + FormatDateTime('hh:nn:ss.zzz', TotalTick));
    FreeAndNil(IdHTTP);
    FreeAndNil(Param);
    FreeAndNil(RStream);
  end;
end;

end.


