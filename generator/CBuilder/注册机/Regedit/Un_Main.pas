unit Un_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, WinSock, nb30;

type
  TFm_Main = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    But_Execute: TSpeedButton;
    ButClose: TSpeedButton;
    TopShape: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Memo2: TMemo;
    LabelMac: TLabel;
    procedure ButCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure But_ExecuteClick(Sender: TObject);
    procedure TopShapeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    Mac: String;
  public
    { Public declarations }
  end;

var
  Fm_Main: TFm_Main;
  function NBGetAdapterAddress(a: Integer): String;

implementation

uses AES;

{$R *.dfm}

function NBGetAdapterAddress(a: Integer): String;
var
  NCB: TNCB;
  ADAPTER: TADAPTERSTATUS;
  LANAENUM: TLANAENUM;
  intIdx: Integer;
  cRC: AnsiChar;
  strTemp: String;
begin
  Result := '';
  try
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBENUM);
    cRC := NetBios(@NCB);
    NCB.ncb_buffer := @LANAENUM;
    NCB.ncb_length := SizeOf(LANAENUM);
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      Exit;
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBRESET);
    NCB.ncb_lana_num := LANAENUM.lana[a];
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      Exit;
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBASTAT);
    NCB.ncb_lana_num := LANAENUM.lana[a];
    StrPCopy(NCB.ncb_callname, '*');
    NCB.ncb_buffer := @ADAPTER;
    NCB.ncb_length := SizeOf(ADAPTER);
    cRC := NetBios(@NCB);
    strTemp := '';
    for intIdx := 0 to 5 do
      strTemp := strTemp + InttoHex(Integer(ADAPTER.adapter_address[intIdx]), 2);
    Result := strTemp;
  except
  end;
end;

procedure TFm_Main.But_ExecuteClick(Sender: TObject);
var
  i: Integer;
  s: String;
  b: Boolean;
  MacList: TStrings;
begin
  if (Trim(Memo1.Text) = '') then
     Exit;

  if (Mac = '') then
  begin
    MessageBox(handle, '对不起,校验机器码失败.您的计算机无权使用!', '系统提示', MB_ICONERROR);
    Exit;
  end;

  MacList := TStringList.Create;
  try
      MacList.Append('005056C00001');  // 公司   MAC 地址

      for i := 0 to MacList.Count - 1 do
          if (Mac = MacList.Strings[i]) then
          begin
            b := true;
            break;
          end;

      if not b then
      begin
        MessageBox(handle, '对不起,校验机器码失败.您的计算机无权使用!', '系统提示', MB_ICONERROR);
        Exit;
      end;

      Memo2.Clear;
      for i := 0 to Memo1.Lines.Count - 1 do
      begin
        s := AES.DecryptString(Memo1.Lines.Strings[i], 'LCX', kb128);   // 解密
        Memo2.Lines.Append(AES.EncryptString(s, 'XSH', kb128));  // 加密
      end;

  finally
    MacList.Free;
  end;
end;

procedure TFm_Main.FormCreate(Sender: TObject);
begin
  try
    Mac := NBGetAdapterAddress(0);
    LabelMac.Caption := '本机第一个网址MAC地址:' + Mac;
  except
    Application.MessageBox('获取Mac地址时,发生严重错误. 请与系统开发员联系. ', '信息', MB_ICONERROR);
    Application.Terminate;
  end;
end;

procedure TFm_Main.ButCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFm_Main.TopShapeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F017 , 0);
end;

end.
