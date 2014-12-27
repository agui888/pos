unit Un_Test;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinsdxRibbonPainter, dxRibbon, dxRibbonForm, ExtCtrls, StdCtrls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxClasses, cxCheckBox,
  Menus, cxButtons, MemDS, DBAccess, Uni, cxPCdxBarPopupMenu, cxPC, cxMemo,
  cxRichEdit, ActnList, sMemo, IniFiles;

type
  TFm_Test = class(TdxRibbonForm)
    Ribbon: TdxRibbon;
    PanelTop: TPanel;
    PanelOracle: TPanel;
    PanelConfig: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    PanelLogs: TPanel;
    PanelTitle1: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBTextEditName: TcxDBTextEdit;
    DBTextEditURL: TcxDBTextEdit;
    ClassStyleRepository: TcxStyleRepository;
    Row1: TcxStyle;
    Row2: TcxStyle;
    IndicatorNumber: TcxStyle;
    None: TcxStyle;
    Select: TcxStyle;
    HereStyle: TcxStyle;
    TopStyle: TcxStyle;
    WhiteStyle: TcxStyle;
    ErrorStyle: TcxStyle;
    StyleTotal: TcxStyle;
    StyleDate: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    G: TcxGrid;
    D: TcxGridDBBandedTableView;
    L: TcxGridLevel;
    Label7: TLabel;
    Label8: TLabel;
    ButtonAdd: TcxButton;
    UniQueryPlan: TUniQuery;
    UniQueryPlanParam: TUniQuery;
    DataSourcePlan: TDataSource;
    DataSourcePlanParam: TDataSource;
    TextEditParamName: TcxTextEdit;
    TextEditParamValue: TcxTextEdit;
    CheckBoxAuto: TcxCheckBox;
    UniQuery: TUniQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ActionListTest: TActionList;
    ActionStartThread: TAction;
    ActionStopThread: TAction;
    ActionSavePlan: TAction;
    ActionDeletePlan: TAction;
    UniQueryPlanID: TIntegerField;
    UniQueryPlanPLANNAME: TStringField;
    UniQueryPlanURL: TStringField;
    UniQueryPlanSAVE: TIntegerField;
    DPARAMNAME: TcxGridDBBandedColumn;
    DPARAMVALUE: TcxGridDBBandedColumn;
    DAUTO: TcxGridDBBandedColumn;
    UniQueryPlanParamID: TIntegerField;
    UniQueryPlanParamPID: TIntegerField;
    UniQueryPlanParamPARAMNAME: TStringField;
    UniQueryPlanParamPARAMVALUE: TStringField;
    UniQueryPlanParamAUTO: TIntegerField;
    LabelMaxTimer: TLabel;
    LabelMinTimer: TLabel;
    TextSuccess: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    UniQueryOracle: TUniQuery;
    Timer: TTimer;
    LabelStatus2: TLabel;
    LabelStatus1: TLabel;
    LabelStatus3: TLabel;
    EditLog: TsMemo;
    SysMemo: TsMemo;
    LogsCheckBox: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ActionStartThreadExecute(Sender: TObject);
    procedure ActionStartThreadUpdate(Sender: TObject);
    procedure ActionStopThreadUpdate(Sender: TObject);
    procedure ActionStopThreadExecute(Sender: TObject);
    procedure ActionSavePlanExecute(Sender: TObject);
    procedure ActionSavePlanUpdate(Sender: TObject);
    procedure ActionDeletePlanExecute(Sender: TObject);
    procedure ActionDeletePlanUpdate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure DCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    FParamName: TStrings;
    FParamValue: TStrings;
    FAutoName: String;
  public
    { Public declarations }
    FPlanList: TStrings;
    procedure OpenTestQuery(planName: String = '');
    procedure OpenPlanList;
  end;

var
  Fm_Test: TFm_Test;

implementation

uses Un_Main, Un_DataModule, Un_Menu, TestThread, BaseUnit;

{$R *.dfm}

{********************
 打开计划信息
********************}
procedure TFm_Test.OpenPlanList;
begin
  UniQuery.Close;
  UniQuery.SQL.Text := 'select planname from test_plan where save = 1 order by id desc';
  UniQuery.Open;

  while not UniQuery.Eof do
  begin
    FPlanList.Append(UniQuery.FieldByName('planname').AsString);
    UniQuery.Next;
  end;
end;

{********************
 打开测试表
********************}
procedure TFm_Test.OpenTestQuery(planName: String);
var
  id: String;
begin
  UniQuery.Close;
  UniQuery.SQL.Text := 'delete from test_plan where save = 0';
  UniQuery.Execute;

  UniQuery.Close;
  UniQuery.SQL.Text := 'delete from test_plan_param where pid = ''''';
  UniQuery.Execute;

  UniQueryPlan.Close;
  UniQueryPlan.SQL.Text := 'select * from test_plan where planname = :planname';
  UniQueryPlan.ParamByName('planname').AsString := planName;
  UniQueryPlan.Open;
  id := UniQueryPlan.FieldByName('id').AsString;

  UniQueryPlanParam.Close;
  UniQueryPlanParam.SQL.Text := 'select * from test_plan_param where pid = :pid';
  UniQueryPlanParam.ParamByName('pid').AsString := id;
  UniQueryPlanParam.Open;
end;

{********************
 创建 Form
********************}
procedure TFm_Test.FormCreate(Sender: TObject);
var
  IniFile:TIniFile;
begin
  inherited;
  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    Fm_Main.EditThread.Text := IniFile.ReadString('Thread', 'Number', '1000');
    TextSuccess.Text := IniFile.ReadString('Thread', 'SuccessText', '');
  finally
    IniFile.Destroy;
  end;

  FPlanList := TStringList.Create;
  OpenTestQuery();
  OpenPlanList();
  TimerTimer(nil);
end;

{********************
 激活 Form
********************}
procedure TFm_Test.FormActivate(Sender: TObject);
begin
  with Fm_Main do
  begin
    Ribbon.Contexts[2].Caption := Self.Caption;
    Ribbon.Contexts[2].DisplayName := Self.Caption + ' - 操作';
    Ribbon.Contexts[2].Activate(True);

    BarLargeButtonStartThread.Action := Self.ActionStartThread;
    BarLargeButtonStopThread.Action := Self.ActionStopThread;
    BarLargeButtonSavePlan.Action := Self.ActionSavePlan;
    BarLargeButtonDeletePlan.Action := Self.ActionDeletePlan;

    ComboBoxPlan.Items.Text := FPlanList.Text;
  end;
end;

{********************
 关闭 Form
********************}
procedure TFm_Test.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Fm_Main do
  begin
    Ribbon.Contexts[2].Visible := False;
    ComboBoxPlan.Items.Text := '';
  end;

  FreeAndNil(FPlanList);
  Action := caFree;
end;

{********************
 刷新 Form
********************}
procedure TFm_Test.Splitter1Moved(Sender: TObject);
begin
  PanelConfig.Refresh;
end;

{********************
 Grid 序号
********************}
procedure TFm_Test.DCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  SetRowNumber(Sender, AViewInfo, ACanvas, ADone, False);
end;

{********************
 添加参数
********************}
procedure TFm_Test.ButtonAddClick(Sender: TObject);
begin
  if (TextEditParamName.Text = '') then
    Exit;

  UniQueryPlanParam.Append;
  UniQueryPlanParam.FieldByName('paramname').AsString := TextEditParamName.Text;
  UniQueryPlanParam.FieldByName('paramvalue').AsString := TextEditParamValue.Text;
  if (CheckBoxAuto.Checked) then
  UniQueryPlanParam.FieldByName('auto').AsInteger := 1
  else
  UniQueryPlanParam.FieldByName('auto').AsInteger := 0;
  UniQueryPlanParam.Post;

  TextEditParamName.Text := '';
  TextEditParamValue.Text := '';
  CheckBoxAuto.Checked := false;

  TextEditParamName.SetFocus;
end;

{********************
 开启线程 Action
********************}
procedure TFm_Test.ActionStartThreadExecute(Sender: TObject);
var
  i, j: Integer;
  IniFile:TIniFile;
begin
  inherited;

  IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
  try
    IniFile.WriteString('Thread', 'Number', Fm_Main.EditThread.Text);
    IniFile.WriteString('Thread', 'SuccessText', TextSuccess.Text);
  finally
    IniFile.Destroy;
  end;

  isStopThread := false;

  ThreadNumber := 0;
  ThreadSuccess := 0;
  ThreadError := 0;
  ThreadExcept := 0;
  MaxTimer := '';
  MinTimer := '';

  EditLog.Clear;
  SysMemo.Clear;

  FreeAndNil(FParamName);
  FreeAndNil(FParamValue);
  FParamName := TStringList.Create;
  FParamValue := TStringList.Create;
  FAutoName := '';

  UniQueryPlanParam.First;
  while not UniQueryPlanParam.Eof do
  begin
    FParamName.Append(UniQueryPlanParam.FieldByName('paramname').AsString);
    FParamValue.Append(UniQueryPlanParam.FieldByName('paramvalue').AsString);
    if (UniQueryPlanParam.FieldByName('auto').AsInteger = 1) then
      FAutoName := UniQueryPlanParam.FieldByName('paramname').AsString;
    UniQueryPlanParam.Next;
  end;

  j := StrToInt(Fm_Main.EditThread.Text);
  for i := 0 to j - 1 do
  begin
    TTestThread.Create(DBTextEditURL.Text, FParamName, FParamValue, FAutoName, IntToStr(i), TextSuccess.Text);
    Application.ProcessMessages;
  end;
end;

{********************
 开始线程 Update
********************}
procedure TFm_Test.ActionStartThreadUpdate(Sender: TObject);
begin
  if (DBTextEditName.Text = '') and (DBTextEditURL.Text = '') then
     ActionStartThread.Enabled := false
  else
     ActionStartThread.Enabled := true;
end;

{********************
 停止线程 Action
********************}
procedure TFm_Test.ActionStopThreadExecute(Sender: TObject);
begin
  isStopThread := true;
end;

{********************
 停止线程 Update
********************}
procedure TFm_Test.ActionStopThreadUpdate(Sender: TObject);
begin
  if (DBTextEditName.Text = '') and (DBTextEditURL.Text = '') then
     ActionStopThread.Enabled := false
  else
     ActionStopThread.Enabled := not ActionStartThread.Enabled;
end;

{********************
 保存计划 Action
********************}
procedure TFm_Test.ActionSavePlanExecute(Sender: TObject);
var
  id :String;
begin
  if (DataSourcePlan.DataSet.State in [dsInsert, dsEdit]) then
    UniQueryPlan.Post;

  UniQueryPlan.Edit;
  UniQueryPlan.FieldByName('save').AsInteger := 1;
  UniQueryPlan.Post;
  UniQueryPlan.RefreshRecord;
  id := UniQueryPlan.FieldByName('id').AsString;

  if (DataSourcePlanParam.DataSet.State in [dsInsert, dsEdit]) then
    UniQueryPlanParam.Post;

  UniQueryPlanParam.First;
  while not UniQueryPlanParam.Eof do
  begin
    UniQueryPlanParam.Edit;
    UniQueryPlanParam.FieldByName('pid').AsString := id;
    UniQueryPlanParam.Post;
    UniQueryPlanParam.Next;
  end;

  Application.MessageBox(PChar('保存成功!'), '提示...', MB_ICONINFORMATION);
end;

{********************
 保存计划 Update
********************}
procedure TFm_Test.ActionSavePlanUpdate(Sender: TObject);
begin
  //if (DataSourcePlan.DataSet.State in [dsBrowse]) or (DataSourcePlanParam.DataSet.State in [dsBrowse]) then
  if (DBTextEditName.Text = '') and (DBTextEditURL.Text = '') then
     ActionSavePlan.Enabled := false
  else
     ActionSavePlan.Enabled := true;
end;

{********************
 删除计划 Action
********************}
procedure TFm_Test.ActionDeletePlanExecute(Sender: TObject);
begin
  if (MessageBox(Handle, '是否确定删除当前测试计划!', '提示', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK) then
  begin
    UniQueryPlanParam.Last;
    while not UniQueryPlanParam.Bof do
    begin
      UniQueryPlanParam.Delete;
      UniQueryPlanParam.Prior;
    end;

    UniQueryPlan.Delete;

    OpenPlanList;

  end;
end;

{********************
 删除计划 Update
********************}
procedure TFm_Test.ActionDeletePlanUpdate(Sender: TObject);
begin
  if (DBTextEditName.Text = '') and (DBTextEditURL.Text = '') then
     ActionDeletePlan.Enabled := false
  else
     ActionDeletePlan.Enabled := true;
end;

{********************
 Oracle 管理
********************}
procedure TFm_Test.TimerTimer(Sender: TObject);
begin
  UniQueryOracle.Close;
  UniQueryOracle.SQL.Text := 'select status, count(*) as num from ( ' +
                          'select sid,serial# serial,username,program,machine,status from v$session ' +
                       ') temp group by status';
  UniQueryOracle.Open;
  while not UniQueryOracle.Eof do
  begin
    if (UniQueryOracle.FieldByName('STATUS').AsString = 'INACTIVE') then
      LabelStatus1.Caption := '当前连接数:' + UniQueryOracle.FieldByName('NUM').AsString
    else
      LabelStatus2.Caption := '并发连接数:' + UniQueryOracle.FieldByName('NUM').AsString;
      UniQueryOracle.Next;
  end;

  UniQueryOracle.Close;
  UniQueryOracle.SQL.Text := 'select to_char(value) as value from v$parameter where name = ''processes''';
  UniQueryOracle.Open;
  if (not UniQueryOracle.IsEmpty) then
  begin
    LabelStatus3.Caption := 'Oracle 最大进程数:' + UniQueryOracle.FieldByName('value').AsString;
  end;
end;

end.
