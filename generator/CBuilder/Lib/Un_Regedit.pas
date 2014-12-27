unit Un_Regedit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdBaseComponent, IdMessage, Inifiles, nb30, WinInet;

const
  UseTotalCount: Integer = 20;
  MACFILE: String = '\system\metcom.dat';

const
  ID_BIT = $200000; // EFLAGS ID bit
type
  TCPUID = array[1..4] of Longint;
  TVendor = array [0..11] of char;

type
  TFm_Regedit = class(TForm)
    MainPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ButtonFinish: TSpeedButton;
    ButtonExit: TSpeedButton;
    Panel1: TPanel;
    TopImage: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EditCorp: TEdit;
    MemoInfor: TMemo;
    RadioButton2: TRadioButton;
    ButtonSend: TSpeedButton;
    Label7: TLabel;
    EditEmail: TEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    IdMessageBox: TIdMessage;
    IdSMTPBox: TIdSMTP;
    MemoSN: TMemo;
    procedure ButtonExitClick(Sender: TObject);
    procedure ButtonSendClick(Sender: TObject);
    procedure ButtonFinishClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateMac:Boolean;
  end;

var
  Fm_Regedit: TFm_Regedit;
  procedure UseApplicationInc(Show:Boolean = false);

implementation

uses AES, Un_Main;

{$R *.dfm}

function IsCPUID_Available : Boolean; register;
asm
  PUSHFD {direct access to flags no possible, only via stack}
  POP EAX {flags to EAX}
  MOV EDX,EAX {save current flags}
  XOR EAX,ID_BIT {not ID bit}
  PUSH EAX {onto stack}
  POPFD {from stack to flags, with not ID bit}
  PUSHFD {back to stack}
  POP EAX {get back to EAX}
  XOR EAX,EDX {check if ID bit affected}
  JZ @exit {no, CPUID not availavle}
  MOV AL,True {Result=True}
  @exit:
end;

function GetCPUID : TCPUID; assembler; register;
asm
  PUSH EBX {Save affected register}
  PUSH EDI
  MOV EDI,EAX {@Resukt}
  MOV EAX,1
  DW $A20F {CPUID Command}
  STOSD {CPUID[1]}
  MOV EAX,EBX
  STOSD {CPUID[2]}
  MOV EAX,ECX
  STOSD {CPUID[3]}
  MOV EAX,EDX
  STOSD {CPUID[4]}
  POP EDI {Restore registers}
  POP EBX
end;

function GetCPUVendor : TVendor; assembler; register;
asm
  PUSH EBX {Save affected register}
  PUSH EDI
  MOV EDI,EAX {@Result (TVendor)}
  MOV EAX,0
  DW $A20F {CPUID Command}
  MOV EAX,EBX
  XCHG EBX,ECX {save ECX result}
  MOV ECX,4
  @1:
  STOSB
  SHR EAX,8
  LOOP @1
  MOV EAX,EDX
  MOV ECX,4
  @2:
  STOSB
  SHR EAX,8
  LOOP @2
  MOV EAX,EBX
  MOV ECX,4
  @3:
  STOSB
  SHR EAX,8
  LOOP @3
  POP EDI {Restore registers}
  POP EBX
end;

function GetCPU:String;
var
  CPUID : TCPUID;
  I : Integer;
  S : TVendor;
  RS: String;
begin
  RS := '';
  for I := Low(CPUID) to High(CPUID) do CPUID[I] := -1;
  begin
    if IsCPUID_Available then
    begin
      CPUID := GetCPUID;
      RS := IntToHex(CPUID[1],8); // + '-' + IntToHex(CPUID[2],8) + '-' + IntToHex(CPUID[3],8) + '-' + IntToHex(CPUID[4],8);
    end;
  end;
  result := RS;
end;

// ��ȡ MAC ��ַ
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
    If Ord(cRC) <> 0 Then
      Exit;
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBRESET);
    NCB.ncb_lana_num := LANAENUM.lana[a];
    cRC := NetBios(@NCB);
    If Ord(cRC) <> 0 Then
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

// ��֤�Ƿ�ע��
function TFm_Regedit.ValidateMac: Boolean;
var
  Path: array [0 .. 255] of char;
  FileName: String;
  CPU, Mac0, Mac1, Mac2, Mac3: String;
  MyIniFile: TIniFile;
  i: Integer;
begin
  result := false;
  MemoInfor.Clear;
  GetWindowsDirectory(Path, 256);
  FileName := StrPas(Path) + MACFILE;
  SetFileAttributes(PChar(FileName), FILE_ATTRIBUTE_HIDDEN + FILE_ATTRIBUTE_SYSTEM);
  MyIniFile := TIniFile.Create(FileName);
  try
      CPU := AES.DecryptString(MyIniFile.ReadString('Windows', 'CPU', ''), 'XSH', kb128);  // ����
      Mac0 := AES.DecryptString(MyIniFile.ReadString('Windows', 'ADDRESS0', ''), 'XSH', kb128);  // ����
      Mac1 := AES.DecryptString(MyIniFile.ReadString('Windows', 'ADDRESS1', ''), 'XSH', kb128);  // ����
      Mac2 := AES.DecryptString(MyIniFile.ReadString('Windows', 'ADDRESS2', ''), 'XSH', kb128);  // ����
      Mac3 := AES.DecryptString(MyIniFile.ReadString('Windows', 'ADDRESS3', ''), 'XSH', kb128);  // ����

      for i := 0 to 3 do
      begin
        if Trim(NBGetAdapterAddress(i)) = '' then
            Continue;

        // MemoInfor.Lines.Append(AES.EncryptString(NBGetAdapterAddress(i), 'LCX', kb128));  // ����

        if (Mac0 = NBGetAdapterAddress(i)) then
           result := True;
        if (Mac1 = NBGetAdapterAddress(i)) then
           result := True;
        if (Mac2 = NBGetAdapterAddress(i)) then
           result := True;
        if (Mac3 = NBGetAdapterAddress(i)) then
           result := True;
      end;

      MemoInfor.Lines.Append(AES.EncryptString(GetCPU, 'LCX', kb128));  // ����
      if (CPU = GetCPU) then
         result := True;

  finally
      MyIniFile.Destroy;
  end;
end;

// ÿ10���м��һ��
procedure UseApplicationInc(Show:Boolean = false);
var
  Path: array [0 .. 255] of char;
  FileName: String;
  i, UseInc: Integer;
  MyIniFile: TIniFile;
  isMacOK: Boolean;
begin
  Fm_Main.TimerRegedit.Enabled := False;
  if (Fm_Regedit.Showing) then
     Exit;

  isMacOK := Fm_Regedit.ValidateMac;

  try
     GetWindowsDirectory(Path, 256);
     FileName := StrPas(Path) + MACFILE;
     SetFileAttributes(PChar(FileName), FILE_ATTRIBUTE_HIDDEN + FILE_ATTRIBUTE_SYSTEM);
     MyIniFile := TIniFile.Create(FileName);
     try

        UseInc := MyIniFile.ReadInteger('Windows', 'ID', 0);

        if (isMacOK = false) Then
        begin
            if UseInc >= UseTotalCount then
            begin
                Application.MessageBox('ϵͳ�ѹ���.����ϵͳ��������ϵ.', '��Ϣ...', MB_ICONERROR);
                Fm_Regedit.Caption := 'ϵͳ�ѹ���,��ע��!';
                Fm_Regedit.Update;
                Fm_Regedit.ShowModal;
                Application.Terminate;
            end
            else
            begin
                UseInc := UseInc + 1;
                MyIniFile.WriteInteger('Windows', 'ID', UseInc);

                Fm_Regedit.Caption := 'δע�� ʹ������� ' + IntToStr(UseTotalCount - UseInc) + ' �� ';
                Fm_Regedit.Update;
                Fm_Regedit.ShowModal;
            end;
        end
        else
        begin
            if (Show) then
            begin
              with Fm_Regedit do
              begin
                Caption := 'ע��ɹ�.';
                ButtonFinish.Visible := False;
                RadioButton2.Enabled := False;
                MemoInfor.Enabled := False;
                MemoSN.Enabled := False;
                EditCorp.Enabled := False;
                EditEmail.Enabled := False;
                ButtonSend.Enabled := False;
                ShowModal;
              end;
            end;
        end;
     finally
         MyIniFile.Destroy;
     end;
  except
     Application.MessageBox('ϵͳ�ѹ���.����ϵͳ��������ϵ.', '��Ϣ...', MB_ICONERROR);
     Application.Terminate;
  end;
end;

// ���͵��ʼ�
procedure TFm_Regedit.ButtonSendClick(Sender: TObject);
begin
  if (Trim(EditCorp.Text) = '') then
  begin
    MessageBox(Handle, pchar('�û����Ʋ���Ϊ��.'), pchar('����'), MB_ICONERROR or MB_OK);
    EditCorp.SetFocus;
    Exit;
  end;

  if (Length(Trim(EditCorp.Text)) < 2) then
  begin
    MessageBox(Handle, pchar('�û����Ƴ��Ȳ�������2λ.'), pchar('����'), MB_ICONERROR or MB_OK);
    EditCorp.SetFocus;
    Exit;
  end;

  if (Trim(EditEmail.Text) = '') then
  begin
    MessageBox(Handle, pchar('ע��������ʼ�����Ϊ��.'), pchar('����'), MB_ICONERROR or MB_OK);
    EditEmail.SetFocus;
    Exit;
  end;

  try
    IdSMTPBox.Host := 'smtp.163.com';
    IdSMTPBox.Port := 25;
    IdSMTPBox.HeloName := '����������ע��';
    IdSMTPBox.Username := 'cbuilder_java'; // ����������
    IdSMTPBox.Password := 'cbuilder'; // ��������������

    IdMessageBox.CharSet := 'gb2312';
    IdMessageBox.Subject := Trim(EditCorp.Text) + 'ע��������'; // �ʼ���Ŀ
    IdMessageBox.From.Address := 'cbuilder_java@163.com'; // ���ķ��ģ�Ӧ�ÿ���������ƭ
    IdMessageBox.Recipients.EMailAddresses := '1349594420@qq.com'; // �����ĸ�����
    IdMessageBox.Body.Clear;
    IdMessageBox.Body.Append('������:');
    IdMessageBox.Body.Append(MemoInfor.Text);
    IdMessageBox.Body.Append('');
    IdMessageBox.Body.Append('ע������ظ��� [' + EditEmail.Text + '] �ͻ�����.');
    IdMessageBox.Body.Append('');
    IdMessageBox.Body.Append('');
    IdMessageBox.Body.Append('***����ظ����ʼ�***');
    try
      IdSMTPBox.Connect();
      IdSMTPBox.Authenticate;
      IdSMTPBox.Send(IdMessageBox);
      MessageBox(Handle, pchar('�����뷢�ͳɹ�! ��֤�ɹ���, ϵͳ����24Сʱ�ڷ���ע���뵽�� ' + EditEmail.Text + ' ������.'), pchar('��Ϣ'), MB_ICONINFORMATION or MB_OK);
    except
      on E: Exception do
        MessageBox(Handle, pchar('�ʼ�����ʧ��.' + E.Message), pchar('����'), MB_ICONERROR or MB_OK);
    end;
  finally
    IdSMTPBox.Disconnect;
  end;
end;

procedure TFm_Regedit.FormClose(Sender: TObject; var Action: TCloseAction);
begin

end;

// ע��
procedure TFm_Regedit.ButtonFinishClick(Sender: TObject);
var
  Path: array [0 .. 255] of char;
  FileName: String;
  MyIniFile: TIniFile;
  i: Integer;
  s: String;
begin
  GetWindowsDirectory(Path, 256);
  FileName := StrPas(Path) + MACFILE;
  SetFileAttributes(PChar(FileName), FILE_ATTRIBUTE_HIDDEN + FILE_ATTRIBUTE_SYSTEM);
  MyIniFile := TIniFile.Create(FileName);
  try
    for i := 0 to MemoSN.Lines.Count - 1 do
    begin
       s := AES.DecryptString(MemoSN.Lines.Strings[i], 'XSH', kb128);
       case i of
          0 : MyIniFile.WriteString('Windows', 'ADDRESS0', AES.EncryptString(s, 'XSH', kb128));  // ����
          1 : MyIniFile.WriteString('Windows', 'ADDRESS1', AES.EncryptString(s, 'XSH', kb128));  // ����
          2 : MyIniFile.WriteString('Windows', 'ADDRESS2', AES.EncryptString(s, 'XSH', kb128));  // ����
          3 : MyIniFile.WriteString('Windows', 'ADDRESS3', AES.EncryptString(s, 'XSH', kb128));  // ����
       end;
    end;

    // CPU
    s := AES.DecryptString(Trim(MemoSN.Text), 'XSH', kb128);
    MyIniFile.WriteString('Windows', 'CPU', AES.EncryptString(s, 'XSH', kb128));  // ����
  finally
    MyIniFile.Destroy;
  end;

  if not ValidateMac then
     Application.MessageBox('ע��ʧ��!', '��Ϣ...', MB_ICONERROR)
  else
  begin
     Application.MessageBox('ע��ɹ�!', '��Ϣ...', MB_ICONINFORMATION);
     Close;
  end;
end;

// �˳�
procedure TFm_Regedit.ButtonExitClick(Sender: TObject);
begin
  Close;
end;

end.
