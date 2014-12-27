unit Un_DataModule;

interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, IniFiles, Forms, Controls, Windows;

type
  TDBA = class(TDataModule)
    SQLite: TUniConnection;
    UniConnection: TUniConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function StartConnection:Boolean;
  end;

var
  DBA: TDBA;
  function OpenConnection(IP, Port, User, Password, SID: String):Boolean;

implementation

uses BaseUnit, AES;

{$R *.dfm}

{********************
 启动
********************}
procedure TDBA.DataModuleCreate(Sender: TObject);
begin
  SQLite.Connected := false;
  SQLite.Database := AppPath + '\CBuilder.db';
  SQLite.Connected := true;
end;

{********************
 启动时 UniConnection
********************}
function TDBA.StartConnection: Boolean;
var
  IniFile:TIniFile;
  IP, Port, User, Password, SID: String;
begin
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    IP := IniFile.ReadString('System', 'IP', '127.0.0.1');
    Port := IniFile.ReadString('System', 'Port', '1521');
    User := IniFile.ReadString('System', 'User', '');
    Password := DecryptString(IniFile.ReadString('System', 'Password', ''), 'XSH', kb128);
    SID := IniFile.ReadString('System', 'SID', '');
  finally
    IniFile.Destroy;
  end;

  result := OpenConnection(IP, Port, User, Password, SID);
end;

{********************
 打开 UniConnection
********************}
function OpenConnection(IP, Port, User, Password, SID: String):Boolean;
begin
  with DBA do
  begin
    UniConnection.Connected := False;
    UniConnection.ProviderName := 'Oracle';
    UniConnection.Server := IP + ':' + Port + ':' + SID;
    UniConnection.Port := StrToInt(Port);
    UniConnection.Username := User;
    UniConnection.Password := Password;
    //UniConnection.Database := SID;
    UniConnection.SpecificOptions.Values['Direct']  := 'true';

    try
      Screen.Cursor := crHourGlass;
      UniConnection.Connected := true;
    except
      on E: Exception do
        Application.MessageBox(PChar('连接失败.   原因: ' +E.Message), '连接失败...', MB_ICONERROR);
    end;
    Screen.Cursor := crDefault;
    result := Uniconnection.Connected;
  end;
end;

end.
