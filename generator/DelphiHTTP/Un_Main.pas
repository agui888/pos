unit Un_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sPageControl, sSkinManager, StdCtrls, sButton, sLabel,
  sMemo, sEdit, sSpinEdit, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, sStatusBar, ExtCtrls, UniProvider, OracleUniProvider, DB,
  MemDS, DBAccess, Uni;

type
  TFm_Main = class(TForm)
    sSkinManager: TsSkinManager;
    Panel1: TPanel;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    PageTable: TsPageControl;
    Table1: TsTabSheet;
    HttpLable: TsLabelFX;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    EditLoginURL: TsEdit;
    EditLoginUser: TsEdit;
    EditLoginPassword: TsEdit;
    MemoLogin: TsMemo;
    Table2: TsTabSheet;
    Table3: TsTabSheet;
    ButtonStart: TsButton;
    ThreadNumber: TsSpinEdit;
    StoreID: TsEdit;
    StatusBar: TsStatusBar;
    Panel2: TPanel;
    UniConnection: TUniConnection;
    UniQuery: TUniQuery;
    sLabelFX5: TsLabelFX;
    EditUser: TsEdit;
    LabelStatus1: TLabel;
    LabelStatus2: TLabel;
    Timer: TTimer;
    ButtonF5: TsButton;
    sLabelFX6: TsLabelFX;
    UniConnNum: TsSpinEdit;
    ButtonCreateUni: TsButton;
    ButtonDestroyUni: TsButton;
    LabelConn: TsLabelFX;
    ButtonUnConn: TsButton;
    MemoInsert: TsMemo;
    EditSaveURL: TsEdit;
    sLabelFX7: TsLabelFX;
    sLabelFX8: TsLabelFX;
    sLabelFX9: TsLabelFX;
    sLabelFX10: TsLabelFX;
    EditSkyposin: TsEdit;
    sLabelFX11: TsLabelFX;
    EditSkyname: TsEdit;
    EditPassword: TsEdit;
    ButtonTestLogin: TsButton;
    ButtonInsert: TsButton;
    sButton3: TsButton;
    EditSkyid: TsSpinEdit;
    sLabelFX12: TsLabelFX;
    sLabelFX13: TsLabelFX;
    EditAddress: TsEdit;
    procedure ButtonTestLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ButtonF5Click(Sender: TObject);
    procedure ButtonCreateUniClick(Sender: TObject);
    procedure ButtonDestroyUniClick(Sender: TObject);
    procedure ButtonUnConnClick(Sender: TObject);
    procedure ButtonInsertClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LoginInc, LoginSuccess, LoginError, LoginExcept: Integer;
    InsertInc, InsertSuccess, InsertError, InsertExcept: Integer;
  end;

var
  TRL_CS_Logs: TRTLCriticalSection;     //全局临界区变量 LogsThread

var
  Fm_Main: TFm_Main;

implementation

uses LoginThread, InsertThread;

{$R *.dfm}

procedure TFm_Main.FormCreate(Sender: TObject);
begin
  InitializeCriticalSection(TRL_CS_Logs);  //初始化临界区变量  LogsThread
end;

procedure TFm_Main.FormDestroy(Sender: TObject);
begin
  DeleteCriticalSection(TRL_CS_Logs); //删除临界区变量  LogsThread
end;

procedure TFm_Main.TimerTimer(Sender: TObject);
begin
  UniQuery.Close;
  if (Trim(EditUser.Text) <> '') then
  UniQuery.SQL.Text := 'select status, count(*) as num from ( ' +
                          'select sid,serial# serial,username,program,machine,status from v$session where username = ''' + EditUser.Text + '''' +
                       ') temp group by status'
  else
  UniQuery.SQL.Text := 'select status, count(*) as num from ( ' +
                          'select sid,serial# serial,username,program,machine,status from v$session ' +
                       ') temp group by status';
  UniQuery.Open;
  while not UniQuery.Eof do
  begin
    if (UniQuery.FieldByName('STATUS').AsString = 'INACTIVE') then
      LabelStatus1.Caption := '当前连接数:' + UniQuery.FieldByName('NUM').AsString
    else
      LabelStatus2.Caption := '并发连接数:' + UniQuery.FieldByName('NUM').AsString;
      UniQuery.Next;
  end;
end;

procedure TFm_Main.ButtonCreateUniClick(Sender: TObject);
var
  i: Integer;
  UniConn: TUniConnection;
begin
  for i := 0 to UniConnNum.Value - 1 do
  begin
    UniConn := TUniConnection.Create(Self);
    UniConn.Tag := 4;
    UniConn.ProviderName := 'Oracle';
    UniConn.SpecificOptions.Values['Direct'] := 'true';
    UniConn.Server := '192.168.0.220:1521:orcl';
    UniConn.Port := 1521;
    UniConn.Username := 'erp';
    UniConn.Password := 'erp';
    UniConn.Database := 'orcl';
    UniConn.Connected := true;
    LabelConn.Caption := '创建' + IntToStr(i + 1) + '连接';
    TimerTimer(nil);
    Application.ProcessMessages;
  end;
end;

procedure TFm_Main.ButtonDestroyUniClick(Sender: TObject);
var
  i, j: Integer;
begin
  j := UniConnNum.Value;
  for i := Self.ComponentCount - 1 downto 0 do
  begin
     if (Self.Components[i] is TUniConnection) then
        if (TUniConnection(Self.Components[i]).Tag = 4) then
        begin
           TUniConnection(Self.Components[i]).Free;
           j := j - 1;
           LabelConn.Caption := '销毁' + IntToStr(j) + '连接';
           TimerTimer(nil);
           Application.ProcessMessages;
        end;
  end;
end;

procedure TFm_Main.ButtonUnConnClick(Sender: TObject);
var
  i, j: Integer;
begin
  j := UniConnNum.Value;
  for i := Self.ComponentCount - 1 downto 0 do
  begin
     if (Self.Components[i] is TUniConnection) then
        if (TUniConnection(Self.Components[i]).Tag = 4) then
        begin
           TUniConnection(Self.Components[i]).Connected := false;
           j := j - 1;
           LabelConn.Caption := '断开' + IntToStr(j) + '连接';
           TimerTimer(nil);
           Application.ProcessMessages;
        end;
  end;
end;

procedure TFm_Main.ButtonF5Click(Sender: TObject);
begin
  TimerTimer(nil);
end;

procedure TFm_Main.ButtonStartClick(Sender: TObject);
begin
  ButtonTestLoginClick(nil);
  ButtonInsertClick(nil);
end;

procedure TFm_Main.ButtonTestLoginClick(Sender: TObject);
var
  i: Integer;
begin
  ButtonTestLogin.Enabled := false;

  LoginInc := 0;
  LoginSuccess := 0;
  LoginError := 0;
  LoginExcept := 0;
  MemoLogin.Clear;

  for i := 0 to ThreadNumber.Value - 1 do
  begin
    TloginThread.Create(EditLoginURL.Text + '&storeid=' + StoreID.Text, EditLoginUser.Text, EditLoginPassword.Text);
    Application.ProcessMessages;
  end;

  ButtonTestLogin.Enabled := True;
end;

procedure TFm_Main.ButtonInsertClick(Sender: TObject);
var
  i, j: Integer;
begin
  ButtonInsert.Enabled := false;

  InsertInc := 0;
  InsertSuccess := 0;
  InsertError := 0;
  InsertExcept := 0;
  MemoLogin.Clear;

  for i := 0 to ThreadNumber.Value - 1 do
  begin
    j := EditSkyid.Value;
    TInsertThread.Create(EditSaveURL.Text + '&storeid=' + StoreID.Text, IntToStr(j), EditSkyname.Text, EditSkyposin.Text, EditPassword.Text, EditAddress.Text);
    EditSkyid.Value := j + 1;
    Application.ProcessMessages;
  end;

  ButtonInsert.Enabled := True;
end;


end.
