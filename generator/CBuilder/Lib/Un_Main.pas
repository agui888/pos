unit Un_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxRibbonForm, dxSkinsCore, dxSkinDevExpressDarkStyle, IniFiles,
  dxSkinDevExpressStyle, dxSkinsdxBarPainter, cxDropDownEdit, cxCalendar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxStatusBar, dxRibbonStatusBar, jpeg, ExtCtrls,
  dxRibbonBackstageView, dxRibbon, ImgList, dxBar, cxBarEditItem, cxClasses,
  cxContainer, cxEdit, cxProgressBar, cxRadioGroup, cxTextEdit, cxButtonEdit,
  cxCheckBox, DB, DBAccess, Uni, FileCtrl, cxSpinEdit, dxBarExtItems, Menus,
  StdCtrls, cxButtons;

type
  TFm_Main = class(TdxRibbonForm)
    BarManager: TdxBarManager;
    BarManagerBarTools: TdxBar;
    BarManagerBar1: TdxBar;
    BarManagerBar2: TdxBar;
    BarLargeButtonExit: TdxBarLargeButton;
    BarSubItemSkin: TdxBarSubItem;
    BarButtonBlue: TdxBarButton;
    BarButtonSilver: TdxBarButton;
    BarLargeButtonDB: TdxBarLargeButton;
    BarLargeButtonCode: TdxBarLargeButton;
    BarLargeButtonSystemExit: TdxBarLargeButton;
    cxLargeImages: TcxImageList;
    cxSmallImages: TcxImageList;
    Ribbon: TdxRibbon;
    RibbonTab1: TdxRibbonTab;
    RibbonTab5: TdxRibbonTab;
    RibbonBackstageView: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheetNew: TdxRibbonBackstageViewTabSheet;
    ImageLogo1: TImage;
    StatusBar: TdxRibbonStatusBar;
    BarLargeButtonMenu: TdxBarLargeButton;
    dxStatusBarContainer2: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    RibbonTab3: TdxRibbonTab;
    BarManagerBar3: TdxBar;
    BarManagerBar4: TdxBar;
    EditType: TcxBarEditItem;
    EditUser: TcxBarEditItem;
    EditClassName: TcxBarEditItem;
    EditPath: TcxBarEditItem;
    BarLargeButtonReadDataBase: TdxBarLargeButton;
    BarLargeButtonBuilderCode: TdxBarLargeButton;
    BarButtonClear: TdxBarButton;
    BarButtonQuit: TdxBarButton;
    EditTable: TdxBarCombo;
    RibbonTab4: TdxRibbonTab;
    BarButtonExpand: TdxBarButton;
    BarButtonCollect: TdxBarButton;
    BarManagerBar5: TdxBar;
    BarLargeButtonAppend: TdxBarLargeButton;
    BarLargeButtonModify: TdxBarLargeButton;
    BarLargeButtonDelete: TdxBarLargeButton;
    BarLargeButtonSave: TdxBarLargeButton;
    BarLargeButtonCanel: TdxBarLargeButton;
    BarComboType: TdxBarCombo;
    BarLargeButtonQuit: TdxBarLargeButton;
    BarManagerBar6: TdxBar;
    BarLargeButtonCreateThread: TdxBarLargeButton;
    BarLargeButtonStartThread: TdxBarLargeButton;
    BarLargeButtonStopThread: TdxBarLargeButton;
    BarManagerBar7: TdxBar;
    BarLargeButtonSavePlan: TdxBarLargeButton;
    BarLargeButtonDeletePlan: TdxBarLargeButton;
    EditThread: TdxBarSpinEdit;
    ComboBoxPlan: TdxBarCombo;
    Timer: TTimer;
    TimerRegedit: TTimer;
    ButtonRegister: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BarLargeButtonDBClick(Sender: TObject);
    procedure BarLargeButtonCodeClick(Sender: TObject);
    procedure EditTypeCurChange(Sender: TObject);
    procedure EditUserCurChange(Sender: TObject);
    procedure EditClassNameCurChange(Sender: TObject);
    procedure EditPathCurChange(Sender: TObject);
    procedure BarLargeButtonReadDataBaseClick(Sender: TObject);
    procedure BarLargeButtonBuilderCodeClick(Sender: TObject);
    procedure BarLargeButtonSystemExitClick(Sender: TObject);
    procedure BarButtonClearClick(Sender: TObject);
    procedure BarButtonQuitClick(Sender: TObject);
    procedure EditTableCurChange(Sender: TObject);
    procedure BarLargeButtonMenuClick(Sender: TObject);
    procedure BarComboTypeCurChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BarLargeButtonQuitClick(Sender: TObject);
    procedure EditPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BarLargeButtonCreateThreadClick(Sender: TObject);
    procedure ComboBoxPlanCurChange(Sender: TObject);
    procedure EditThreadCurChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure TimerRegeditTimer(Sender: TObject);
    procedure ButtonRegisterClick(Sender: TObject);
  private
    { Private declarations }
    function isExistForm(FormName:String):Boolean;
  public
    { Public declarations }
  end;

var
  Fm_Main: TFm_Main;

var
  MaxTimer: String;
  MinTimer: String;
  ThreadNumber, ThreadSuccess, ThreadError, ThreadExcept: Integer;
  isStopThread: Boolean;
  TRL_CS_Logs: TRTLCriticalSection;     //全局临界区变量 LogsThread

implementation

uses Un_Config, BaseUnit, Un_Code, Un_Wait, Un_Menu, Un_Test, Un_Regedit;

{$R *.dfm}

{********************
 检查 Form
********************}
function TFm_Main.isExistForm(FormName:String):Boolean;
var
  i:Integer;
  Open:Boolean;
begin
  Open := False;

  for i := Fm_Main.MdiChildCount-1 downto 0 do
     if (UpperCase(Fm_Main.MdiChildren[i].Name) = UpperCase(FormName)) or (UpperCase('T' + Fm_Main.MdiChildren[i].Name) = UpperCase(FormName)) then
     begin
        Fm_Main.MdiChildren[i].BringToFront;
        Open := True;
        Break;
     end;

  result := Open;
end;

{********************
 创建 Form
********************}
procedure TFm_Main.FormCreate(Sender: TObject);
begin
  Fm_Regedit := TFm_Regedit.Create(Self);

  Fm_Main.Left := 0;
  Fm_Main.Top := 0;
  Fm_Main.Width := Screen.Width;
  Fm_Main.Height := Screen.Height - 10;

  RibbonTab1.Active := true;
  RibbonTab3.Context := Ribbon.Contexts.Items[0];
  RibbonTab4.Context := Ribbon.Contexts.Items[1];
  RibbonTab5.Context := Ribbon.Contexts.Items[2];

  InitializeCriticalSection(TRL_CS_Logs);  //初始化临界区变量  LogsThread
end;

{********************
 销毁 Form
********************}
procedure TFm_Main.FormDestroy(Sender: TObject);
begin
  DeleteCriticalSection(TRL_CS_Logs); //删除临界区变量  LogsThread
end;

{********************
 关闭 Form
********************}
procedure TFm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (MessageBox(Handle, '是否确定退出?', '提示', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK) then
    Action := caFree
  else
    Action := caNone;
end;

{********************
 调整 Form
********************}
procedure TFm_Main.FormResize(Sender: TObject);
begin
  dxRibbonBackstageViewTabSheetNew.Width := Self.Width;
  dxRibbonBackstageViewTabSheetNew.Height := Self.Height;
  ImageLogo1.Top := Self.Height - ImageLogo1.Height;
  ImageLogo1.Left := Self.Width - ImageLogo1.Width;
end;

{********************
 Timer
********************}
procedure TFm_Main.TimerTimer(Sender: TObject);
begin
  if (Fm_Test <> nil) and (Fm_Test.Showing) then
  begin
    Fm_Test.LabelMaxTimer.Caption := '最大耗时: ' + MaxTimer;
    Fm_Test.LabelMinTimer.Caption := '最小耗时: ' + MinTimer;
    StatusBar.Panels[0].Text := '线程数:' + IntToStr(ThreadNumber) + ' (成功:' + IntToStr(ThreadSuccess) + '/失败:' + IntToStr(ThreadError) + '/异常:' + IntToStr(ThreadExcept) + ')';
  end
  else
  begin
    StatusBar.Panels[0].Text := '';
  end;
end;

{********************
 Timer
********************}
procedure TFm_Main.TimerRegeditTimer(Sender: TObject);
begin
  UseApplicationInc;
  TimerRegedit.Enabled := False;
end;

{********************
 打开配置数据源
********************}
procedure TFm_Main.BarLargeButtonDBClick(Sender: TObject);
begin
  Fm_Config := TFm_Config.Create(Self);
  Fm_Config.ShowModal;
end;

{********************
 打开代码 Form
********************}
procedure TFm_Main.BarLargeButtonCodeClick(Sender: TObject);
begin
  TFm_Wait.Execute('正在加载数据,请稍后.......');
  Fm_Code := TFm_Code.Create(Self);
end;

{********************
 打开菜单 Form
********************}
procedure TFm_Main.BarLargeButtonMenuClick(Sender: TObject);
begin
  if (isExistForm('TFm_Menu')) then
     System.Exit;

  TFm_Wait.Execute('正在加载数据,请稍后.......');
  Fm_Menu := TFm_Menu.Create(Self);
end;

{********************
 退出系统
********************}
procedure TFm_Main.BarLargeButtonSystemExitClick(Sender: TObject);
begin
  Self.Close;
end;

{********************
 类型修改事件
********************}
procedure TFm_Main.EditTypeCurChange(Sender: TObject);
begin
  EditType.EditValue := EditType.CurEditValue;

  if (Self.ActiveMDIChild is TFm_Code) then
  begin
    if (EditType.EditValue = 0) then
    begin
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[1].Visible := true;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[2].Visible := true;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[3].Visible := true;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[4].Visible := true;
    end
    else
    begin
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[1].Visible := false;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[2].Visible := false;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[3].Visible := false;
      TFm_Code(Self.ActiveMDIChild).GridDBBandedTableView.Bands[4].Visible := false;
    end;
    TFm_Code(Self.ActiveMDIChild).FEditType := EditType.EditValue;
  end;
end;

{********************
 作者修改事件
********************}
procedure TFm_Main.EditUserCurChange(Sender: TObject);
begin
  EditUser.EditValue := EditUser.CurEditValue;
  if (Self.ActiveMDIChild is TFm_Code) then
      TFm_Code(Self.ActiveMDIChild).FEditUser := EditUser.EditValue;
end;

{********************
 表名修改事件
********************}
procedure TFm_Main.EditTableCurChange(Sender: TObject);
begin
  EditTable.Text := EditTable.CurText;
  if (Self.ActiveMDIChild is TFm_Code) then
      TFm_Code(Self.ActiveMDIChild).FEditTable := EditTable.Text;
end;

{********************
 前缀修改事件
********************}
procedure TFm_Main.EditClassNameCurChange(Sender: TObject);
begin
  EditClassName.EditValue := EditClassName.CurEditValue;
  if (Self.ActiveMDIChild is TFm_Code) then
      TFm_Code(Self.ActiveMDIChild).FEditClassName := EditClassName.EditValue;
end;

{********************
 存储目录修改事件
********************}
procedure TFm_Main.EditPathCurChange(Sender: TObject);
var
  Str, Package :String;
begin
  if (EditPath.CurEditValue <> '') then
     EditPath.EditValue := EditPath.CurEditValue;

  Str := EditPath.EditValue;
  if (Trim(Str) = '') then
     Exit;

  if (DirectoryExists(Str + '\action')) and
     (DirectoryExists(Str + '\service')) and
     (DirectoryExists(Str + '\entity')) and
     (DirectoryExists(Str + '\dao')) then
  begin
      Package := Copy(Str, Pos('src', Str) + 4, Length(Str));
      Package := StringReplace(Package, '\', '.', [rfReplaceAll]);
      StatusBar.Panels[1].Text := 'Package: ' + Package;

      if (Self.ActiveMDIChild is TFm_Code) then
      begin
          TFm_Code(Self.ActiveMDIChild).FPackage := Package;
          TFm_Code(Self.ActiveMDIChild).FEditPath := EditPath.EditValue;
      end;
  end
  else
  begin
      Application.MessageBox(PChar('当前目录无效,原因是当前目录缺少规定的四个文件夹!'), '信息...', MB_ICONSTOP);
  end;
end;

{********************
 存储目录选择事件
********************}
procedure TFm_Main.EditPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  Dir: String;
begin
  SelectDirectory('选择含有4个Java相关目录.', '', Dir);
  EditPath.EditValue := Dir;
  EditPathCurChange(nil);
end;

{********************
 读取表字段事件
********************}
procedure TFm_Main.BarLargeButtonReadDataBaseClick(Sender: TObject);
var
  IniFile:TIniFile;
  User: String;
begin
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    User := IniFile.ReadString('System', 'User', '');
  finally
    IniFile.Destroy;
  end;

  if (Self.ActiveMDIChild is TFm_Code) then
    TFm_Code(Self.ActiveMDIChild).ReadFieldsEvent(User);
end;

{********************
 清除表字段事件
********************}
procedure TFm_Main.BarButtonClearClick(Sender: TObject);
begin
  if (Self.ActiveMDIChild is TFm_Code) then
      TFm_Code(Self.ActiveMDIChild).ClearDataBaseEvent;
end;

{********************
 生成代码事件
********************}
procedure TFm_Main.BarLargeButtonBuilderCodeClick(Sender: TObject);
begin
  if (Self.ActiveMDIChild is TFm_Code) then
  begin
    TFm_Code(Self.ActiveMDIChild).BuilderCodeEvent;
  end;
end;

{********************
 退出代码Fm_Code & Fm_Test
********************}
procedure TFm_Main.BarButtonQuitClick(Sender: TObject);
begin
  if (Self.ActiveMDIChild <> nil) then
     TForm(Self.ActiveMDIChild).Close;
end;

{********************
 菜单类型事件
********************}
procedure TFm_Main.BarComboTypeCurChange(Sender: TObject);
begin
  BarComboType.Text := BarComboType.CurText;
  if (Self.ActiveMDIChild is TFm_Menu) then
      TFm_Menu(Self.ActiveMDIChild).OpenQuery(BarComboType.Text);
end;

{********************
 退出代码Fm_Menu
********************}
procedure TFm_Main.BarLargeButtonQuitClick(Sender: TObject);
begin
  TForm(Self.ActiveMDIChild).Close;
end;

{********************
 打开测试
********************}
procedure TFm_Main.BarLargeButtonCreateThreadClick(Sender: TObject);
begin
  if (isExistForm('TFm_Test')) then
     System.Exit;

  TFm_Wait.Execute('正在加载数据,请稍后.......');
  Fm_Test := TFm_Test.Create(Self);
end;

{********************
 测试线程数
********************}
procedure TFm_Main.EditThreadCurChange(Sender: TObject);
begin
  EditThread.Text := EditThread.CurText;
end;

{********************
 测试计划事件
********************}
procedure TFm_Main.ComboBoxPlanCurChange(Sender: TObject);
begin
  ComboBoxPlan.Text := ComboBoxPlan.CurText;
  if (Self.ActiveMDIChild is TFm_Test) then
      TFm_Test(Self.ActiveMDIChild).OpenTestQuery(ComboBoxPlan.Text);
end;

{********************
 注册
********************}
procedure TFm_Main.ButtonRegisterClick(Sender: TObject);
begin
  UseApplicationInc(true);
end;

end.
