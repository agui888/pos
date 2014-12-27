unit Un_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, cxCustomData,
  cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL,
  cxSplitter, ExtCtrls, DB, MemDS, DBAccess, Uni, cxMaskEdit, cxTextEdit,
  cxCheckBox, cxGridTableView, cxClasses, StdCtrls, cxContainer, cxEdit,
  cxRadioGroup, cxGroupBox, cxDBEdit, cxSpinEdit, ActnList, dxRibbonForm,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbon;

type
  TFm_Menu = class(TdxRibbonForm)
    PanelBody: TPanel;
    Panel: TPanel;
    Splitter: TcxSplitter;
    DBTreeList: TcxDBTreeList;
    UniQueryMenu: TUniQuery;
    DataSourceMenu: TDataSource;
    UniQueryMenuID: TFloatField;
    UniQueryMenuSID: TFloatField;
    UniQueryMenuTYPE: TStringField;
    UniQueryMenuCOLID: TFloatField;
    UniQueryMenuMENU: TStringField;
    UniQueryMenuURL: TStringField;
    UniQueryMenuICO: TStringField;
    UniQueryMenuPOWER: TFloatField;
    UniQueryMenuWRITE: TFloatField;
    UniQueryMenuMENUGROUPID: TFloatField;
    UniQueryMenuMENUGROUPNAME: TStringField;
    UniQueryMenuDESCRIPTION: TStringField;
    UniQueryMenuDELFLAG: TFloatField;
    UniQueryMenuDIRICO: TStringField;
    DBTreeListID: TcxDBTreeListColumn;
    DBTreeListSID: TcxDBTreeListColumn;
    DBTreeListTYPE: TcxDBTreeListColumn;
    DBTreeListCOLID: TcxDBTreeListColumn;
    DBTreeListMENU: TcxDBTreeListColumn;
    DBTreeListURL: TcxDBTreeListColumn;
    DBTreeListICO: TcxDBTreeListColumn;
    DBTreeListPOWER: TcxDBTreeListColumn;
    DBTreeListWRITE: TcxDBTreeListColumn;
    DBTreeListMENUGROUPID: TcxDBTreeListColumn;
    DBTreeListMENUGROUPNAME: TcxDBTreeListColumn;
    DBTreeListDESCRIPTION: TcxDBTreeListColumn;
    DBTreeListDELFLAG: TcxDBTreeListColumn;
    DBTreeListDIRICO: TcxDBTreeListColumn;
    ClassStyleRepository: TcxStyleRepository;
    Row1: TcxStyle;
    Row2: TcxStyle;
    IndicatorNumber: TcxStyle;
    None: TcxStyle;
    Select: TcxStyle;
    HereStyle: TcxStyle;
    TopStyle: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    ActionList: TActionList;
    ActionAppend: TAction;
    ActionModify: TAction;
    ActionDelete: TAction;
    ActionSave: TAction;
    ActionCanel: TAction;
    ActionExp: TAction;
    ActionColl: TAction;
    UniQueryType: TUniQuery;
    UniQueryTypeTYPE: TStringField;
    Ribbon: TdxRibbon;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionAppendExecute(Sender: TObject);
    procedure ActionModifyExecute(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionSaveExecute(Sender: TObject);
    procedure ActionCanelExecute(Sender: TObject);
    procedure ActionExpExecute(Sender: TObject);
    procedure ActionCollExecute(Sender: TObject);
    procedure ActionAppendUpdate(Sender: TObject);
    procedure ActionSaveUpdate(Sender: TObject);
    procedure UniQueryMenuNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenQuery(types: String);
  end;

var
  Fm_Menu: TFm_Menu;

implementation

uses Un_Main, Un_Wait, Un_DataModule;

{$R *.dfm}

{********************
  �����ݱ�
********************}
procedure TFm_Menu.OpenQuery(types: String);
begin
  Screen.Cursor := crHourGlass;
  try
    UniQueryMenu.Close;
    if (types = '��������') then
    begin
      UniQueryMenu.SQL.Text := 'select * from system_menu order by id,colid';
    end
    else
    begin
      UniQueryMenu.SQL.Text := 'select * from system_menu where type = :type order by id,colid';
      UniQueryMenu.ParamByName('type').AsString := types;
    end;
    UniQueryMenu.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

{********************
 ���� Form
********************}
procedure TFm_Menu.FormCreate(Sender: TObject);
begin
  Fm_Main.BarComboType.Items.Clear;
  Fm_Main.BarComboType.Items.Append('��������');
  UniQueryType.Open;
  while not UniQueryType.Eof do
  begin
    Fm_Main.BarComboType.Items.Append(UniQueryType.FieldByName('TYPE').AsString);
    UniQueryType.Next;
  end;
  Fm_Main.BarComboType.Text := '��������';
  OpenQuery(Fm_Main.BarComboType.Text);
end;

{********************
 ���� Form
********************}
procedure TFm_Menu.FormActivate(Sender: TObject);
begin
  with Fm_Main do
  begin
    Ribbon.Contexts[1].Caption := Self.Caption;
    Ribbon.Contexts[1].DisplayName := Self.Caption + ' - ����';
    Ribbon.Contexts[1].Activate(True);
  end;
end;

{********************
 �ر� Form
********************}
procedure TFm_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Fm_Main do
    Ribbon.Contexts[1].Visible := False;

  Action := caFree;
end;

{********************
 �½� Action
********************}
procedure TFm_Menu.ActionAppendExecute(Sender: TObject);
begin
  UniQueryMenu.ReadOnly := false;
  DBTreeList.Enabled := false;
  UniQueryMenu.Append;
  if (Fm_Main.BarComboType.Text <> '��������') then
  begin
    UniQueryMenu.FieldByName('type').AsString := Fm_Main.BarComboType.Text;
  end;
end;

{********************
 �޸� Action
********************}
procedure TFm_Menu.ActionModifyExecute(Sender: TObject);
begin
  UniQueryMenu.ReadOnly := false;
  DBTreeList.Enabled := false;
  UniQueryMenu.Edit;
end;

{********************
 ɾ�� Action
********************}
procedure TFm_Menu.ActionDeleteExecute(Sender: TObject);
begin
  if (MessageBox(Handle, '�Ƿ�ȷ��ɾ����ǰ�˵�? ɾ�����ָܻ�, ������!', '��ʾ', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK) then
    UniQueryMenu.Delete;
end;

{********************
 ���� Action
********************}
procedure TFm_Menu.ActionSaveExecute(Sender: TObject);
begin
  UniQueryMenu.ReadOnly := true;
  DBTreeList.Enabled := true;
  UniQueryMenu.Post;
end;

{********************
 ȡ�� Action
********************}
procedure TFm_Menu.ActionCanelExecute(Sender: TObject);
begin
  if (MessageBox(Handle, '�Ƿ�ȷ��ȡ��?', '��ʾ', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK) then
  begin
    UniQueryMenu.ReadOnly := true;
    DBTreeList.Enabled := true;
    UniQueryMenu.Cancel;
  end;
end;

{********************
 չ�� Action
********************}
procedure TFm_Menu.ActionExpExecute(Sender: TObject);
begin
  DBTreeList.FullExpand;
end;

{********************
 ���� Action
********************}
procedure TFm_Menu.ActionCollExecute(Sender: TObject);
begin
  DBTreeList.FullCollapse;
end;

{********************
 �½� Update
********************}
procedure TFm_Menu.ActionAppendUpdate(Sender: TObject);
begin
  if (UniQueryMenu.Active) and (DataSourceMenu.DataSet.State in [dsBrowse]) then
    TAction(Sender).Enabled := true
  else
    TAction(Sender).Enabled := false;
end;

{********************
 ���� Update
********************}
procedure TFm_Menu.ActionSaveUpdate(Sender: TObject);
begin
  if (UniQueryMenu.Active) and (DataSourceMenu.DataSet.State in [dsInsert, dsEdit]) then
    TAction(Sender).Enabled := true
  else
    TAction(Sender).Enabled := false;
end;

{********************
 �½�����
********************}
procedure TFm_Menu.UniQueryMenuNewRecord(DataSet: TDataSet);
begin
  UniQueryMenu.FieldByName('delflag').AsInteger := 0;
  UniQueryMenu.FieldByName('power').AsInteger := 0;
  UniQueryMenu.FieldByName('write').AsInteger := 0;
end;

end.
