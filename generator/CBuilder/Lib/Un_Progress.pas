unit Un_Progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxProgressBar, ExtCtrls, cxGraphics, cxLookAndFeels, acPNG,
  GIFImg, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  cxControls, cxLookAndFeelPainters, cxContainer, cxEdit;

type
  TFm_Progress = class(TForm)
    LabelInfo: TLabel;
    Timer: TTimer;
    ImageInfo: TImage;
    LabelTimer: TLabel;
    ImageBg: TImage;
    LoadImage: TImage;
    ProgressBarShow: TcxProgressBar;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
    FChangePor: Integer;
    FisOnShow: Boolean;
    FStartTime: TDateTime;
    FParentForm: TCustomForm;

    procedure ResetChangePor(NewMax: Integer);
  public
    { Public declarations }
    procedure UpdateMax(NewMax: Integer);
    procedure UpdatePosition(NewPosition: Integer);
    procedure ReSetMax(Max: Integer);
    procedure SetLabelInfo(NewLabel: String);
    property isOnShow: Boolean read FisOnShow;
  end;

  function BeginShowProgress(ParentFrm: TCustomForm; Max: Integer; ALableCaption: String = ''; NewCaption: String = ''): Integer;
  procedure EndShowProgress;

var
  Fm_Progress: TFm_Progress;

implementation

uses Un_Main;

var
  HookMouseHandle: HHOOK;
  HookKBHandle: HHOOK;
  CapStr: String;

{$R *.dfm}

function GetModuleHandleFromInstance: THandle;
var
  FileNameStr: array [0 .. 512] of Char;
begin
  GetModuleFileName(hInstance, FileNameStr, sizeof(FileNameStr) - 1);
  Result := GetModuleHandle(FileNameStr);
end;

function MouseHookCallBack(Code: Integer; Msg: WPARAM; MouseHook: LPARAM): LRESULT; stdcall;
begin
  if Code >= 0 then
  begin
    case Msg of
      WM_LBUTTONDOWN:
        begin
        end;
      WM_LBUTTONUP:
        begin
        end;
      WM_LBUTTONDBLCLK:
        begin
        end;
      WM_RBUTTONDOWN:
        begin
        end;
      WM_RBUTTONUP:
        begin
        end;
      WM_RBUTTONDBLCLK:
        begin
        end;
      WM_MBUTTONDOWN:
        begin
        end;
      WM_MBUTTONUP:
        begin
        end;
      WM_MBUTTONDBLCLK:
        begin
        end;
    end;
  end
  else
    Result := CallNextHookEx(HookMouseHandle, Code, Msg, MouseHook);
end;

function KBHookCallBack(Code: Integer; Msg: WPARAM; KBHook: LPARAM): LRESULT; stdcall;
begin
  if Code < 0 then
    Result := CallNextHookEx(HookKBHandle, Code, Msg, KBHook);
end;

Procedure ControlCursor(ControlFlag: Boolean);
begin
  if ControlFlag then
  begin
    HookMouseHandle := 0;
    HookKBHandle := 0;
    HookMouseHandle := SetWindowsHookEx(WH_MOUSE, @MouseHookCallBack, GetModuleHandleFromInstance, GetCurrentThreadId);
  end
  else
  begin
    UnhookWindowsHookEx(HookMouseHandle);
  end;
end;

{ Fm_Progress }
function BeginShowProgress(ParentFrm: TCustomForm; Max: Integer;
  ALableCaption: String; NewCaption: String): Integer;
begin
  Screen.Cursor:=crHourGlass;

  if Fm_Progress = nil then
    Application.CreateForm(TFm_Progress, Fm_Progress);

  with Fm_Progress do
  begin
    TGIFImage(LoadImage.Picture.Graphic).AnimationSpeed := 100;
    TGIFImage(LoadImage.Picture.Graphic).Animate := True;

    if NewCaption <> '' then
      Caption := NewCaption;

    if ALableCaption <> '' then
      LabelInfo.Caption := ALableCaption;

    ProgressBarShow.Properties.Max := Max;
    ResetChangePor(Max);
    ProgressBarShow.Position := 0;
    FParentForm := ParentFrm;
    FormStyle := fsStayOnTop;
    FStartTime := Now;
    Timer.Enabled := True;

    if not Visible then
    begin
      FisOnShow := True;
      Show;
    end;

    if IsIconic(Application.Handle) then
      Hide;

    if FParentForm <> nil then
      LockWindowUpdate(FParentForm.Handle);

    ControlCursor(True);
  end;
end;

procedure EndShowProgress;
begin
  if Fm_Progress <> nil then
    with Fm_Progress do
    begin
      ControlCursor(False);
      LockWindowUpdate(0);
      FisOnShow := False;
      Timer.Enabled := False;
      Close;
      FreeAndNil(Fm_Progress);
    end;
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TFm_Progress.ResetChangePor(NewMax: Integer);
var
  Count: Integer;
begin
  if NewMax >= 10000 then
    Count := 200
  else if NewMax >= 20000 then
    Count := 500
  else
    Count := 100;

  FChangePor := NewMax div Count;
  if FChangePor < 1 then
    FChangePor := 1;
end;

procedure TFm_Progress.UpdatePosition(NewPosition: Integer);
begin
  if (Self <> nil) then
  begin
    if not Self.isOnShow then
      Exit;

    if NewPosition mod FChangePor = 0 then
    begin
      Self.ProgressBarShow.Position := NewPosition;
      Application.ProcessMessages;
    end;
  end;
end;

procedure TFm_Progress.UpdateMax(NewMax: Integer);
begin
  Self.ProgressBarShow.Properties.Max := NewMax;
  Application.ProcessMessages;
  ResetChangePor(NewMax);
end;

procedure TFm_Progress.ReSetMax(Max: Integer);
begin
  Self.ProgressBarShow.Properties.Max := Max;
  Self.ProgressBarShow.Position := 0;
  ResetChangePor(Max);
end;

procedure TFm_Progress.SetLabelInfo(NewLabel: String);
begin
  LabelInfo.Caption := NewLabel;
end;

procedure TFm_Progress.TimerTimer(Sender: TObject);
var
  ExtTime: TDateTime;
  HNumber, Mnumber, SNumber: integer;
begin
  CapStr := '';
  ExtTime := Now - FStartTime;
  HNumber := StrToInt(FormatDateTime('h', ExtTime));
  Mnumber := StrToInt(FormatDateTime('n', ExtTime));
  SNumber := StrToInt(FormatDateTime('s', ExtTime));

  if HNumber > 0 then
  begin
    CapStr := IntToStr(HNumber) + '小时';
    CapStr := CapStr + IntToStr(Mnumber) + '分'
  end
  else if Mnumber > 0 then
    CapStr := IntToStr(Mnumber) + '分';

  CapStr := CapStr + IntToStr(SNumber) + '秒';
  LabelTimer.Caption := '耗时:' + CapStr;
end;

end.
