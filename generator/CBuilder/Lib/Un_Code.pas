unit Un_Code;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, SQLiteUniProvider,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  ecSyntMemo, StdCtrls, ecSyntAnal, ImgList, cxPC, Mask, sMaskEdit, dxRibbonForm,
  sCustomComboEdit, sTooledit, acImage, UniProvider, OracleUniProvider, DB,
  DBAccess, Uni, MySQLUniProvider, MemDS, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxTextEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  cxClasses, IniFiles, dxSkinDevExpressStyle, dxSkinDevExpressDarkStyle,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbon, cxContainer, cxMaskEdit;

type
  TFm_Code = class(TdxRibbonForm)
    CodePage: TcxPageControl;
    Entity: TcxTabSheet;
    cxSmallImages: TcxImageList;
    SyntAnalyzerJSP: TSyntAnalyzer;
    SyntAnalyzerXML: TSyntAnalyzer;
    SyntAnalyzerJava: TSyntAnalyzer;
    Dao: TcxTabSheet;
    Service: TcxTabSheet;
    Action: TcxTabSheet;
    Spring: TcxTabSheet;
    Struts: TcxTabSheet;
    MyBatis: TcxTabSheet;
    JSPList: TcxTabSheet;
    JSPEdit: TcxTabSheet;
    EntityMemo: TSyntaxMemo;
    DaoMemo: TSyntaxMemo;
    ServiceImplMemo: TSyntaxMemo;
    ActionMemo: TSyntaxMemo;
    SpringMemo: TSyntaxMemo;
    StrutsMemo: TSyntaxMemo;
    MyBatisMemo: TSyntaxMemo;
    ListMemo: TSyntaxMemo;
    EditMemo: TSyntaxMemo;
    sImage1: TsImage;
    Table: TcxTabSheet;
    ClassStyleRepository: TcxStyleRepository;
    Row1: TcxStyle;
    Row2: TcxStyle;
    IndicatorNumber: TcxStyle;
    None: TcxStyle;
    Select: TcxStyle;
    HereStyle: TcxStyle;
    TopStyle: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    UniQueryColumn: TUniQuery;
    UniQueryColumnFieldName: TStringField;
    UniQueryColumnFieldType: TStringField;
    UniQueryColumnField: TBooleanField;
    UniQueryColumnSearch: TBooleanField;
    UniQueryColumnImport: TBooleanField;
    UniQueryColumnExport: TBooleanField;
    DataSourceColumn: TDataSource;
    Grid: TcxGrid;
    GridDBBandedTableView: TcxGridDBBandedTableView;
    GridDBBandedTableViewField: TcxGridDBBandedColumn;
    GridDBBandedTableViewFieldName: TcxGridDBBandedColumn;
    GridDBBandedTableViewFieldType: TcxGridDBBandedColumn;
    GridDBBandedTableViewDisplay: TcxGridDBBandedColumn;
    GridDBBandedTableViewSearch: TcxGridDBBandedColumn;
    GridDBBandedTableViewImport: TcxGridDBBandedColumn;
    GridDBBandedTableViewExport: TcxGridDBBandedColumn;
    GridDBBandedTableViewValidate_NotRepeat: TcxGridDBBandedColumn;
    GridDBBandedTableViewValidate_NotNull: TcxGridDBBandedColumn;
    GridDBBandedTableViewValidate_Length: TcxGridDBBandedColumn;
    GridDBBandedTableViewValidate_Email: TcxGridDBBandedColumn;
    GridLevel: TcxGridLevel;
    UniQueryColumnTitle: TStringField;
    UniQueryColumnValidate_NotRepeat: TBooleanField;
    UniQueryColumnValidate_NotNull: TBooleanField;
    UniQueryColumnValidate_Length: TIntegerField;
    UniQueryColumnValidate_Email: TBooleanField;
    UniQueryColumnList_Out: TBooleanField;
    UniQueryColumnEdit_Out: TBooleanField;
    UniQueryColumnList_FixOut: TBooleanField;
    GridDBBandedTableViewList_Out: TcxGridDBBandedColumn;
    GridDBBandedTableViewList_FixOut: TcxGridDBBandedColumn;
    GridDBBandedTableViewEdit_Out: TcxGridDBBandedColumn;
    Panel2: TPanel;
    ServiceMemo: TSyntaxMemo;
    Splitter1: TSplitter;
    UniQueryDelete: TUniQuery;
    UniQueryColumnTableName: TStringField;
    UniQueryColumnID: TIntegerField;
    TabSheetBootstrap: TcxTabSheet;
    BootstrapMemo: TSyntaxMemo;
    PanelID: TPanel;
    Label6: TLabel;
    Ribbon: TdxRibbon;
    CheckBoxGuiMe: TCheckBox;
    ComboBoxKey: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GridDBBandedTableViewList_OutPropertiesEditValueChanged(
      Sender: TObject);
    procedure GridDBBandedTableViewList_FixOutPropertiesEditValueChanged(
      Sender: TObject);
    procedure GridDBBandedTableViewValidate_NotRepeatPropertiesChange(
      Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridDBBandedTableViewCustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    isKey: Boolean;
    EntityIDType:String;
    ExistsField:String;
    DelflagField:String;
    procedure GetOracleColumn(dbName: String; TableName: String);

    procedure BuilderEntity(clazz:String);
    procedure BuilderDao(clazz:String);
    procedure BuilderService(clazz:String);
    procedure BuilderAction(clazz:String);
    procedure BuilderSpring(clazz:String);
    procedure BuilderStruts(clazz:String);
    procedure BuilderMyBatis(clazz:String);
    procedure BuilderList(clazz:String);
    procedure BuilderEdit(clazz:String);
    procedure BuilderForm(clazz:String);

    procedure BuilderDetailEntity(clazz:String);
    procedure BuilderDetailDao(clazz:String);
    procedure BuilderDetailService(clazz:String);
    procedure BuilderDetailAction(clazz:String);
    procedure BuilderDetailSpring(clazz:String);
    procedure BuilderDetailStruts(clazz:String);
    procedure BuilderDetailMyBatis(clazz:String);
    procedure BuilderDetailList(clazz:String);
    procedure BuilderDetailEdit(clazz:String);
    procedure BuilderDetailForm(clazz:String);
  public
    { Public declarations }
    FPackage: String;
    FEditType: String;
    FEditUser: String;
    FEditTable: String;
    FEditTables: TStrings;
    FEditClassName: String;
    FEditPath: String;

    procedure ReadFieldsEvent(OracleUser: String);
    procedure ClearDataBaseEvent;
    procedure BuilderCodeEvent;
  end;

var
  Fm_Code: TFm_Code;

implementation

uses Un_Main, BaseUnit, Un_Wait, Un_Progress, Un_DataModule;

{$R *.dfm}

{********************
 读取表字段事件
********************}
procedure TFm_Code.ReadFieldsEvent(OracleUser: String);
  procedure SaveConfig;
  var
    IniFile:TIniFile;
  begin
    IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
    try
      IniFile.WriteString('Code', 'Package', FEditPath);
      IniFile.WriteString('Code', 'ClassName', FEditClassName);
      IniFile.WriteString('Code', 'TableName', FEditTable);
      IniFile.WriteString('Code', 'Author', FEditUser);
    finally
      IniFile.Destroy;
    end;
  end;
begin
  TFm_Wait.Execute('正在加载表信息,请稍后......');

  isKey := False;
  EntityIDType := '';
  ExistsField := '';
  DelflagField := '';

  Fm_Main.StatusBar.Panels[0].Text := '正在读取......';
  Fm_Main.ProgressBar.Visible := true;

  CodePage.ActivePageIndex := 0;
  if (UniQueryColumn.Active) then
    if (DataSourceColumn.DataSet.State in [dsEdit, dsInsert]) then
      DataSourceColumn.DataSet.Post;

  UniQueryColumn.Close;
  UniQueryColumn.SQL.Text := 'select * from sys_column where tablename = ''' + FEditTable + '''';
  UniQueryColumn.Open;
  if (UniQueryColumn.IsEmpty) then
  begin
    GetOracleColumn(OracleUser, FEditTable);
  end
  else
  begin
    Fm_Main.ProgressBar.Properties.Max := UniQueryColumn.RecordCount;
    ComboBoxKey.Properties.Items.Clear;
    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        isKey := True;
        if (UniQueryColumn.FieldByName('FieldType').AsString = 'NUMBER') then
            EntityIDType := 'BigDecimal'
        else
            EntityIDType := 'String';
      end;
      ComboBoxKey.Properties.Items.Append(UpperCase(UniQueryColumn.FieldByName('FieldName').AsString));
      Fm_Main.ProgressBar.Position := UniQueryColumn.RecNo;
      UniQueryColumn.Next;
    end;
  end;
  UniQueryColumn.First;
  PanelID.Visible := not isKey;

  Fm_Main.ProgressBar.Visible := False;
  Fm_Main.StatusBar.Panels[0].Text := '读取完成.';
  SaveConfig;
end;

{********************
 清除表字段事件
********************}
procedure TFm_Code.ClearDataBaseEvent;
begin
  Fm_Main.StatusBar.Panels[0].Text := '';
  if (MessageBox(Handle, '是否确定清空当前表的历史配置信息?', '提示', MB_ICONQUESTION or MB_OKCANCEL) = ID_OK) then
  begin
    UniQueryColumn.Close;

    UniQueryDelete.Close;
    UniQueryDelete.SQL.Text := 'delete from sys_column where tablename = ''' + FEditTable + '''';
    UniQueryDelete.Execute;

    Fm_Main.StatusBar.Panels[0].Text := '清除完成.';
  end;
end;

{********************
 生成代码事件
********************}
procedure TFm_Code.BuilderCodeEvent;
var
  clazz: String;
begin
  if (not UniQueryColumn.Active) or (UniQueryColumn.isEmpty) then
      Exit;

  if (PanelID.Visible) and (ComboBoxKey.Text = '') then
  begin
    Application.MessageBox(PChar('您尚未选择主键.'), '提示...', MB_ICONINFORMATION);
    ComboBoxKey.SetFocus;
  end;

  Fm_Main.StatusBar.Panels[0].Text := '正在生成代码......';
  if (DataSourceColumn.DataSet.State in [dsEdit, dsInsert]) then
      DataSourceColumn.DataSet.Post;

  BeginShowProgress(Self, 9);

  Fm_Main.ProgressBar.Visible := true;
  clazz := FEditClassName;
  if (FEditType = '0') then
  begin
      Fm_Main.ProgressBar.Properties.Max := 9;

      BuilderEntity(clazz);
      Fm_Main.ProgressBar.Position := 1;
      Fm_Progress.UpdatePosition(1);
      Application.ProcessMessages;

      BuilderDao(clazz);
      Fm_Main.ProgressBar.Position := 2;
      Fm_Progress.UpdatePosition(2);
      Application.ProcessMessages;

      BuilderService(clazz);
      Fm_Main.ProgressBar.Position := 3;
      Fm_Progress.UpdatePosition(3);
      Application.ProcessMessages;

      BuilderAction(clazz);
      Fm_Main.ProgressBar.Position := 4;
      Fm_Progress.UpdatePosition(4);
      Application.ProcessMessages;

      BuilderSpring(clazz);
      Fm_Main.ProgressBar.Position := 5;
      Fm_Progress.UpdatePosition(5);
      Application.ProcessMessages;

      BuilderStruts(clazz);
      Fm_Main.ProgressBar.Position := 6;
      Fm_Progress.UpdatePosition(6);
      Application.ProcessMessages;

      BuilderMyBatis(clazz);
      Fm_Main.ProgressBar.Position := 7;
      Fm_Progress.UpdatePosition(7);
      Application.ProcessMessages;

      BuilderList(clazz);
      Fm_Main.ProgressBar.Position := 8;
      Fm_Progress.UpdatePosition(8);
      Application.ProcessMessages;

      BuilderEdit(clazz);
      BuilderForm(clazz);

      Fm_Main.ProgressBar.Position := 9;
      Fm_Progress.UpdatePosition(9);
      Application.ProcessMessages;
  end
  else if (FEditType = '1') then
  begin
      Fm_Main.ProgressBar.Properties.Max := 9;

      BuilderDetailEntity(clazz);
      Fm_Main.ProgressBar.Position := 1;
      Fm_Progress.UpdatePosition(1);
      Application.ProcessMessages;

      BuilderDetailDao(clazz);
      Fm_Main.ProgressBar.Position := 2;
      Fm_Progress.UpdatePosition(2);
      Application.ProcessMessages;

      BuilderDetailService(clazz);
      Fm_Main.ProgressBar.Position := 3;
      Fm_Progress.UpdatePosition(3);
      Application.ProcessMessages;

      BuilderDetailAction(clazz);
      Fm_Main.ProgressBar.Position := 4;
      Fm_Progress.UpdatePosition(4);
      Application.ProcessMessages;

      BuilderDetailSpring(clazz);
      Fm_Main.ProgressBar.Position := 5;
      Fm_Progress.UpdatePosition(5);
      Application.ProcessMessages;

      BuilderDetailStruts(clazz);
      Fm_Main.ProgressBar.Position := 6;
      Fm_Progress.UpdatePosition(6);
      Application.ProcessMessages;

      BuilderDetailMyBatis(clazz);
      Fm_Main.ProgressBar.Position := 7;
      Fm_Progress.UpdatePosition(7);
      Application.ProcessMessages;

      BuilderDetailList(clazz);
      Fm_Main.ProgressBar.Position := 8;
      Fm_Progress.UpdatePosition(8);
      Application.ProcessMessages;

      BuilderDetailEdit(clazz);
      BuilderDetailForm(clazz);

      Fm_Main.ProgressBar.Position := 9;
      Fm_Progress.UpdatePosition(9);
      Application.ProcessMessages;
  end;
  EndShowProgress;

  Fm_Main.ProgressBar.Visible := false;
  Fm_Main.StatusBar.Panels[0].Text := '代码生成完成.';
end;

{********************
 获取Oracle字段
********************}
procedure TFm_Code.GetOracleColumn(dbName: String; TableName: String);
const
   sql1 = 'select COLUMN_NAME, DATA_TYPE,DATA_LENGTH, DATA_PRECISION, DATA_SCALE, upper(NULLABLE) as NULLABLE, CHAR_COL_DECL_LENGTH ' +
          'from ALL_TAB_COLUMNS where upper(OWNER) = upper(''%s'') and upper(TABLE_NAME) = upper(''%s'') order by COLUMN_ID';
   sql2 = 'select CONSTRAINT_NAME, COLUMN_NAME from ALL_CONS_COLUMNS where upper(OWNER) = upper(''%s'') and upper(TABLE_NAME) = upper(''%s'')';
var
  fieldname, typename, length, nullable, key: string;
  Query, KQuery:TUniQuery;
  checkbox, null: Boolean;
  len: Integer;

  function getComments(ColumnName: string): String;
  var
     Q: TUniQuery;
  begin
    result := '';
    Q  := TUniQuery.Create(nil);
    try
        Q.Connection := DBA.UniConnection;
        Q.Close;
        Q.SQL.Text := 'select comments from user_col_comments b where b.table_name = ''' + TableName + ''' and b.column_name = ''' + ColumnName + '''';
        Q.Open;
        while not Q.Eof do
        begin
            result := Q.FieldByName('comments').AsString;
            Q.Next;
        end;
    finally
        Q.Free;
    end;
  end;
begin
  ComboBoxKey.Properties.Items.Clear;
  UniQueryColumn.Open;

  Query  := TUniQuery.Create(nil);
  KQuery := TUniQuery.Create(nil);
  try
      KQuery.Connection := DBA.UniConnection;
      KQuery.Close;
      KQuery.SQL.Text := Format(sql2 , [dbName, TableName]);
      KQuery.Open;

      Query.Connection := DBA.UniConnection;
      Query.Close;
      Query.SQL.Text := Format(sql1 , [dbName, TableName]);
      Query.Open;

      Fm_Main.ProgressBar.Properties.Max := Query.RecordCount;
      while not Query.Eof do
      begin
          fieldname := Query.FieldByName('COLUMN_NAME').AsString;
          typename  := Query.FieldByName('DATA_TYPE').AsString;
          length    := Query.FieldByName('CHAR_COL_DECL_LENGTH').AsString;
          len       := Query.FieldByName('CHAR_COL_DECL_LENGTH').AsInteger;
          if (Trim(length) = '') then
             length := Query.FieldByName('DATA_PRECISION').AsString + ',' + Query.FieldByName('DATA_SCALE').AsString;
          nullable  := Query.FieldByName('NULLABLE').AsString;

          if (UpperCase(fieldname) <> 'ID') then
            if (nullable = 'N') then
               null := true
            else
               null := false;

          KQuery.Filtered := False;
          KQuery.Filter   := 'COLUMN_NAME = ''' + fieldname + '''';
          KQuery.Filtered := True;
          key := '';
          if (not KQuery.IsEmpty) then
              key := Copy(KQuery.FieldByName('CONSTRAINT_NAME').AsString, 1, 2) + ', ';


          if (UpperCase(fieldname) = 'ID') then
          begin
            isKey := true;
            if (typename = 'NUMBER') then
                EntityIDType := 'BigDecimal'
            else
                EntityIDType := 'String';
          end;

          if (len = 0) then
          begin
            if (typename = 'NUMBER') then
              len := 8
            else if (typename = 'DATA') then
              len := 20
            else
              len := 10;
          end;


          checkbox := ((not (UpperCase(fieldname) = 'ID')) and
                       (not (UpperCase(fieldname) = 'DELFLAG')) and
                       (not (UpperCase(fieldname) = 'ROWTIME')) and
                       (not (UpperCase(fieldname) = 'ROWVER')));
          UniQueryColumn.Append;
          UniQueryColumn.FieldByName('TableName').AsString := FEditTable;
          UniQueryColumn.FieldByName('FieldName').AsString := LowerCase(fieldname);
          UniQueryColumn.FieldByName('FieldType').AsString := typename;
          UniQueryColumn.FieldByName('Field').AsBoolean := true;
          UniQueryColumn.FieldByName('Title').AsString := getComments(fieldname);
          UniQueryColumn.FieldByName('Import').AsBoolean := checkbox;
          UniQueryColumn.FieldByName('Export').AsBoolean := checkbox;
          UniQueryColumn.FieldByName('Search').AsBoolean := checkbox;
          UniQueryColumn.FieldByName('Validate_NotRepeat').AsBoolean := false;
          UniQueryColumn.FieldByName('Validate_NotNull').AsBoolean := null;
          UniQueryColumn.FieldByName('Validate_Length').AsInteger := len;
          UniQueryColumn.FieldByName('Validate_Email').AsBoolean := false;
          UniQueryColumn.FieldByName('List_FixOut').AsBoolean := false;
          UniQueryColumn.FieldByName('List_Out').AsBoolean := checkbox;
          UniQueryColumn.FieldByName('Edit_Out').AsBoolean := checkbox;
          UniQueryColumn.Post;

          Fm_Main.ProgressBar.Position := Query.RecNo;
          ComboBoxKey.Properties.Items.Append(UpperCase(Query.FieldByName('COLUMN_NAME').AsString));
          Application.ProcessMessages;

          Query.Next;
      end;
  finally
      UniQueryColumn.First;
      Query.Free;
      KQuery.Free;
  end;

end;

{********************
 创建 Form
********************}
procedure TFm_Code.FormCreate(Sender: TObject);
  procedure OpenConfig;
  var
    IniFile:TIniFile;
  begin
    IniFile := TInifile.Create(AppPath + '\' + AppName + '.ini');
    try
      FEditPath := IniFile.ReadString('Code', 'Package', '');
      FEditClassName := IniFile.ReadString('Code', 'ClassName', '');
      FEditTable := IniFile.ReadString('Code', 'TableName', '');
      FEditUser := IniFile.ReadString('Code', 'Author', '');
    finally
      IniFile.Destroy;
    end;
    FPackage := Copy(FEditPath, Pos('src', FEditPath) + 4, Length(FEditPath));
    FPackage := StringReplace(FPackage, '\', '.', [rfReplaceAll]);
    Fm_Main.StatusBar.Panels[1].Text := 'Package: ' + FPackage;
  end;
begin
  FEditTables := TStringList.Create;
  FEditType := '0';
  OpenConfig;
  DBA.UniConnection.GetTableNames(FEditTables);
  FEditTables := FEditTables;
end;

{********************
 激活 Form
********************}
procedure TFm_Code.FormActivate(Sender: TObject);
begin
  with Fm_Main do
  begin
    Ribbon.Contexts[0].Caption := Self.Caption;
    Ribbon.Contexts[0].DisplayName := Self.Caption + ' - 操作';
    Ribbon.Contexts[0].Activate(True);

    EditType.EditValue := FEditType;
    EditUser.EditValue := FEditUser;
    EditTable.Items.Text := FEditTables.Text;
    EditTable.Text := FEditTable;
    EditClassName.EditValue := FEditClassName;
    EditPath.EditValue := FEditPath;
  end;
end;

{********************
 关闭 Form
********************}
procedure TFm_Code.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Fm_Main do
    Ribbon.Contexts[0].Visible := False;

  FEditTables.Free;
  Action := caFree;
end;

{********************
 Grid 序号
********************}
procedure TFm_Code.GridDBBandedTableViewCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetRowNumber(Sender, AViewInfo, ACanvas, ADone, False);
end;

{********************
 Grid 固定/活动字段切换
********************}
procedure TFm_Code.GridDBBandedTableViewList_FixOutPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (TcxCheckBox(Sender).Checked) then
  begin
    UniQueryColumn.FieldByName('List_FixOut').AsBoolean := true;
    UniQueryColumn.FieldByName('List_Out').AsBoolean := false;
  end;
end;

{********************
 Grid 固定/活动字段切换
********************}
procedure TFm_Code.GridDBBandedTableViewList_OutPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (TcxCheckBox(Sender).Checked) then
  begin
    UniQueryColumn.FieldByName('List_FixOut').AsBoolean := false;
    UniQueryColumn.FieldByName('List_Out').AsBoolean := true;
  end;
end;

{********************
 Grid 不能重复字段
********************}
procedure TFm_Code.GridDBBandedTableViewValidate_NotRepeatPropertiesChange(
  Sender: TObject);
var
  id: String;
  book: TBookmark;
begin
  if (TcxCheckBox(Sender).Checked) then
  begin
    id := UniQueryColumn.FieldByName('id').AsString;
    book := UniQueryColumn.Bookmark;

    Screen.Cursor := crHourGlass;
    UniQueryColumn.DisableControls;
    try
      UniQueryColumn.First;
      while not UniQueryColumn.Eof do
      begin
        UniQueryColumn.Edit;
        UniQueryColumn.FieldByName('Validate_NotRepeat').AsBoolean := (id = UniQueryColumn.FieldByName('id').AsString);
        UniQueryColumn.Post;
        UniQueryColumn.Next;
      end;
    finally
      UniQueryColumn.EnableControls;
      UniQueryColumn.First;
      UniQueryColumn.GotoBookmark(book);
      Screen.Cursor := crDefault;
    end;
  end;
end;

{********************
 BuilderCode 编译 Entity
********************}
procedure TFm_Code.BuilderEntity(clazz:String);
var
  TempKey: String;
  fieldsLs: TStrings;
  getsetLs: TStrings;
  ANotEmpty, AExcel, ALength, AEmail: String;

  function getType(xtype:String):String;
  begin
    if (xtype = 'NUMBER') then
      result := 'BigDecimal'
    else if (xtype = 'DATE') then
      result := 'Date'
    else if (xtype = 'VARCHAR2') then
      result := 'String'
    else if (xtype = 'CHAR') then
      result := 'String'
    else
      result := '<人工定义>';
  end;

  function getLine(str:String):String;
  var
    s, t: String;
  begin
    s := Trim(str);
    t := copy(str, length(str) - 1, 1);
    if (t = ',') then
       result := copy(s, 0, length(s) - 1)
    else
       result := s;
  end;

begin
  fieldsLs := TStringList.Create;
  getsetLs := TStringList.Create;

  fieldsLs.Append('');
  fieldsLs.Append('    @Excel(Export=true, Title="序列")');
  fieldsLs.Append('    private BigDecimal rowno;');

  with UniQueryColumn do
  begin
    First;
    DisableControls;
    try
      // 1 开始循环
      while not Eof do
      begin
        if (UpperCase(FieldByName('FieldName').AsString) = 'DELFLAG') then
           DelflagField := 'delflag';

        if (FieldByName('Validate_NotRepeat').AsBoolean) then
           ExistsField := FieldByName('FieldName').AsString;

        // Field 默认 false
        if (not FieldByName('Field').AsBoolean) then
        begin
          Next;
          Continue;
        end;

        // Import 默认 false & Export 默认 false & Title 默认 ""
        if (FieldByName('Import').AsBoolean) or (FieldByName('Export').AsBoolean) then
        begin
          if (FieldByName('Import').AsBoolean) then
             AExcel := AExcel + 'Import=true, ';
          if (FieldByName('Export').AsBoolean) then
             AExcel := AExcel + 'Export=true, ';
          if (FieldByName('Title').AsString <> '') then
             AExcel := AExcel + 'Title="' + FieldByName('Title').AsString + '", ';
        end;

        // Length 默认 -1
        if (UpperCase(FieldByName('FieldType').AsString) = 'VARCHAR2') then
           if (FieldByName('Validate_Length').AsInteger <> -1) then
              ALength := ALength + 'min=0, max=' + FieldByName('Validate_Length').AsString + ', message="#' + getTopLowerChar(FieldByName('FieldName').AsString) + '#' + FieldByName('Title').AsString + '长度需要在0和' + FieldByName('Validate_Length').AsString + '之间.", ';

        // NotNull 默认 false
        if (FieldByName('Validate_NotNull').AsBoolean) then
          ANotEmpty := ANotEmpty + 'message="#' + getTopLowerChar(FieldByName('FieldName').AsString) + '#' + FieldByName('Title').AsString + '不能为空!"';

        if (FieldByName('Validate_Email').AsBoolean) then
          AEmail := 'message="#' + getTopLowerChar(FieldByName('FieldName').AsString) + '#' + FieldByName('Title').AsString + '非法Email地址!"';

        // 生成 Java 属性
        fieldsLs.Append('');

        // Private注解
        if (UpperCase(FieldByName('FieldName').AsString) <> 'ID') then
        begin
          if (AExcel <> '') then
            fieldsLs.Append('    @Excel(' + getLine(AExcel) + ')');
          if (ANotEmpty <> '') then
            fieldsLs.Append('    @NotEmpty(' + getLine(ANotEmpty) + ')');
          if (ALength <> '') then
            fieldsLs.Append('    @Length(' + getLine(ALength) + ')');
          if (FieldByName('Validate_Email').AsBoolean) then
            fieldsLs.Append('    @Email(' + AEmail + ')');
        end;

        fieldsLs.Append('    private ' + getType(FieldByName('FieldType').AsString) + ' ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');

        // 生成 Java get/set 方法
        getsetLs.Append('');
        getsetLs.Append('    public ' + getType(FieldByName('FieldType').AsString) + ' get' + getTopUpperChar(FieldByName('FieldName').AsString) + '() { ');
    		getsetLs.Append('        return ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');
        getsetLs.Append('    }');
        getsetLs.Append('');
        getsetLs.Append('    public void set' + getTopUpperChar(FieldByName('FieldName').AsString) + '(' + getType(FieldByName('FieldType').AsString) + ' ' + getTopLowerChar(FieldByName('FieldName').AsString) + ') { ');
    		getsetLs.Append('        this.' + getTopLowerChar(FieldByName('FieldName').AsString) + ' = ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');
        getsetLs.Append('    }');

        ANotEmpty := '';
        AExcel := '';
        ALength := '';

        if (PanelID.Visible) then
          if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = ComboBoxKey.Text) then
          begin
            TempKey := getType(FieldByName('FieldType').AsString);
            EntityIDType := TempKey;
          end;

        Next;
      end;

      getsetLs.Append('');
      getsetLs.Append('    public BigDecimal getRowno() { ');
      getsetLs.Append('        return rowno;');
      getsetLs.Append('    }');
      getsetLs.Append('');
      getsetLs.Append('    public void setRowno(BigDecimal rowno) { ');
      getsetLs.Append('        this.rowno = rowno;');
      getsetLs.Append('    }');

      // 3 编译成 Entity 代码
      with EntityMemo do
      begin
         getAuthor(EntityMemo, FEditUser);
         Lines.Append('package ' + FPackage + '.entity;');
         Lines.Append('');
         Lines.Append('import java.math.BigDecimal;');
         Lines.Append('import java.util.Date;');
         Lines.Append('');
         Lines.Append('import org.apache.ibatis.type.Alias;');
         Lines.Append('import org.hibernate.validator.constraints.Length;');
         Lines.Append('import org.hibernate.validator.constraints.NotEmpty;');
         Lines.Append('');
         Lines.Append('import com.web.api.core.entity.TEntity;');
         Lines.Append('import com.web.api.core.entity.template.annotation.Excel;');
         Lines.Append('');
         Lines.Append('@Alias("' + clazz + 'Entity")');
         Lines.Append('public class ' + clazz + 'Entity implements TEntity<' + EntityIDType + '> {');
         Lines.Append('');
         Lines.Append('    private static final long serialVersionUID = 1L;');
         if (PanelID.Visible) then
         begin
           Lines.Append('');
           Lines.Append('    private ' + TempKey + ' id;');
         end;
         Lines.Append(fieldsLs.Text);

         if (PanelID.Visible) then
         begin
           Lines.Append('');
           Lines.Append('    public ' + TempKey + ' getId() { ');
           Lines.Append('        id = ' + LowerCase(ComboBoxKey.Text) + ';');
           Lines.Append('        return id;');
           Lines.Append('    }');
           Lines.Append('');
           Lines.Append('    public void setId(' + TempKey + ' id) { ');
           Lines.Append('        this.id = ' + LowerCase(ComboBoxKey.Text) + ';');
           Lines.Append('    }');
         end;
         Lines.Append(getsetLs.Text);
         Lines.Append('}');
      end;
    finally
      fieldsLs.Free;
      getsetLs.Free;
      UniQueryColumn.First;
      UniQueryColumn.EnableControls;
    end;
  end;
end;

{********************
 BuilderCode 编译 Dao
********************}
procedure TFm_Code.BuilderDao(clazz: String);
begin
  with DaoMemo do
  begin
    getAuthor(DaoMemo, FEditUser);
    Lines.Append('package ' + FPackage + '.dao;');
    Lines.Append('');
    Lines.Append('import com.web.api.core.dao.BaseDao;');
    Lines.Append('import ' + FPackage + '.entity.' + clazz + 'Entity;');
    Lines.Append('');
    Lines.Append('public interface ' + clazz + 'Dao extends BaseDao<' + clazz + 'Entity, ' + EntityIDType + '> {');
    Lines.Append('');
    Lines.Append('}');
  end;
end;

{********************
 BuilderCode 编译 Service
********************}
procedure TFm_Code.BuilderService(clazz: String);
begin
  with ServiceMemo do
  begin
    getAuthor(ServiceMemo, FEditUser);
    Lines.Append('package ' + FPackage + '.service;');
    Lines.Append('');
    Lines.Append('import com.web.api.core.service.template.TemplateService;');
    Lines.Append('');
    Lines.Append('public interface ' + clazz + 'Service extends TemplateService {');
    Lines.Append('');
    Lines.Append('}');
  end;

  with ServiceImplMemo do
  begin
    getAuthor(ServiceImplMemo, FEditUser);
    Lines.Append('package ' + FPackage + '.service.impl;');
    Lines.Append('');
    Lines.Append('import com.web.api.core.service.template.impl.TemplateServiceImpl;');
    Lines.Append('import ' + FPackage + '.dao.' + clazz + 'Dao;');
    Lines.Append('import ' + FPackage + '.service.' + clazz + 'Service;');
    Lines.Append('');
    Lines.Append('public class ' + clazz + 'ServiceImpl extends TemplateServiceImpl');
    Lines.Append('        implements ' + clazz + 'Service { ');
    Lines.Append('');
    Lines.Append('    private ' + clazz + 'Dao ' + getTopLowerChar(clazz) + 'Dao;');
    Lines.Append('');
    Lines.Append('    public ' + clazz + 'Dao get' + clazz + 'Dao() {');
    Lines.Append('        return ' + getTopLowerChar(clazz) + 'Dao;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public void set' + clazz + 'Dao(' + clazz + 'Dao ' + getTopLowerChar(clazz) + 'Dao) {');
    Lines.Append('        this.' + getTopLowerChar(clazz) + 'Dao = ' + getTopLowerChar(clazz) + 'Dao;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('}');
  end;
end;

{********************
 BuilderCode 编译 Action
********************}
procedure TFm_Code.BuilderAction(clazz: String);
begin
  with ActionMemo do
  begin
    getAuthor(ActionMemo, FEditUser);
    Lines.Append('package ' + FPackage + '.action;');
    Lines.Append('');
    Lines.Append('import org.springframework.beans.factory.annotation.Autowired;');
    Lines.Append('');
    Lines.Append('import com.web.api.core.action.annotation.Menu;');
    Lines.Append('import com.web.api.core.action.template.TemplateAction;');
    Lines.Append('import com.web.api.core.action.template.annotation.TemplateEntity;');
    Lines.Append('import com.web.api.core.action.template.annotation.TemplateService;');
    Lines.Append('');
    Lines.Append('import ' + FPackage + '.entity.' + clazz + 'Entity;');
    Lines.Append('import ' + FPackage + '.service.' + clazz + 'Service;');
    Lines.Append('');
    Lines.Append('@Menu(menuid = "<SYSTEM.ID>")');
    Lines.Append('public class ' + clazz + 'Action extends TemplateAction {');
    Lines.Append('');
    Lines.Append('    private static final long serialVersionUID = 1L;');
    Lines.Append('');
    Lines.Append('    public ' + clazz + 'Action() {');
    Lines.Append('        this.setGoListJsp("<PATH>/<FILE>.jsp");');
    Lines.Append('        this.setGoEditJsp("<PATH>/<FILE>.jsp");');
    Lines.Append('    }');
    Lines.Append('');
    if (CheckBoxGuiMe.Checked) then
    begin
    Lines.Append('    private String storeid;');
    Lines.Append('');
    end;
    Lines.Append('    @Autowired');
    Lines.Append('    @TemplateService');
    Lines.Append('    private ' + clazz + 'Service ' + getTopLowerChar(clazz) + 'Service;');
    Lines.Append('');
    Lines.Append('    @TemplateEntity');
    Lines.Append('    private ' + clazz + 'Entity ' + getTopLowerChar(clazz) + 'Entity;');
    Lines.Append('');
    Lines.Append('    public ' + clazz + 'Service get' + clazz + 'Service() {');
    Lines.Append('        return ' + getTopLowerChar(clazz) + 'Service;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public void set' + clazz + 'Service(' + clazz + 'Service ' + getTopLowerChar(clazz) + 'Service) {');
    Lines.Append('        this.' + getTopLowerChar(clazz) + 'Service = ' + getTopLowerChar(clazz) + 'Service;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public ' + clazz + 'Entity get' + clazz + 'Entity() {');
    Lines.Append('        return ' + getTopLowerChar(clazz) + 'Entity;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public void set' + clazz + 'Entity(' + clazz + 'Entity ' + getTopLowerChar(clazz) + 'Entity) {');
    Lines.Append('        this.' + getTopLowerChar(clazz) + 'Entity = ' + getTopLowerChar(clazz) + 'Entity;');
    Lines.Append('    }');
    Lines.Append('');
    if (CheckBoxGuiMe.Checked) then
    begin
    Lines.Append('    public String getStoreid() {');
    Lines.Append('        return storeid;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public void setStoreid(String storeid) {');
    Lines.Append('        this.storeid = storeid;');
    Lines.Append('    }');
    Lines.Append('');
    end;
    Lines.Append('}');
  end;
end;

{********************
 BuilderCode 编译 Spring
********************}
procedure TFm_Code.BuilderSpring(clazz: String);
begin
  SpringMemo.Clear;
  SpringMemo.Lines.Append('');
  SpringMemo.Lines.Append('<bean id="' + clazz + 'Service" class="' + FPackage + '.service.impl.' + clazz + 'ServiceImpl" p:baseDao-ref="' + getTopLowerChar(clazz) + 'Dao" p:' + getTopLowerChar(clazz) + 'Dao-ref="' + getTopLowerChar(clazz) + 'Dao" />');
end;

{********************
 BuilderCode 编译 Struts
********************}
procedure TFm_Code.BuilderStruts(clazz: String);
begin
  with StrutsMemo do
  begin
    Clear;
    Lines.Append('------------------ List / Edit 页方式 ------------------');
    Lines.Append('    <action name="' + LowerCase(clazz) + '_*" class="' + FPackage + '.action.' + clazz + 'Action" method="{1}">');
    Lines.Append('        <result name="enter">/web/ace/index.jsp</result>');
    Lines.Append('        <result name="append">/web/ace/index.jsp</result>');
    Lines.Append('        <result name="modify">/web/ace/index.jsp</result>');
    Lines.Append('        <result name="view">/web/ace/index.jsp</result>');
    Lines.Append('');
    if (CheckBoxGuiMe.Checked) then
    begin
      Lines.Append('        <result name="savelist" type="redirect">/<namespace>/' + LowerCase(clazz) + '_enter.action?menuid=${menuid}&amp;storeid=${storeid}</result>');
      Lines.Append('        <result name="saveappend" type="redirect">/<namespace>/' + LowerCase(clazz) + '_append.action?menuid=${menuid}&amp;storeid=${storeid}</result>');
    end
    else
    begin
      Lines.Append('        <result name="savelist" type="redirect">/<namespace>/' + LowerCase(clazz) + '_enter.action?menuid=${menuid}</result>');
      Lines.Append('        <result name="saveappend" type="redirect">/<namespace>/' + LowerCase(clazz) + '_append.action?menuid=${menuid}</result>');
    end;
    Lines.Append('        <result name="checkform">/web/ace/index.jsp</result>');
    Lines.Append('    </action>');
  end;

  if (CheckBoxGuiMe.Checked) then
    Exit;

  with StrutsMemo do
  begin
    Lines.Append('');
    Lines.Append('');
    Lines.Append('');
    Lines.Append('------------------ Form 页方式 ------------------');
    Lines.Append('    <action name="' + LowerCase(clazz) + '_*" class="' + FPackage + '.action.' + clazz + 'Action" method="{1}">');
    Lines.Append('        <result name="enter">/web/ace/index.jsp</result>');
    Lines.Append('    </action>');
  end;
end;

{********************
 BuilderCode 编译 MyBatis
********************}
procedure TFm_Code.BuilderMyBatis(clazz: String);
begin
  with MyBatisMemo do
  begin
    Clear;
    Lines.Append('<?xml version="1.0" encoding="UTF-8"?>');
    Lines.Append('');
    Lines.Append('<!DOCTYPE mapper');
    Lines.Append('PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"');
    Lines.Append('"http://mybatis.org/dtd/mybatis-3-mapper.dtd">');
    Lines.Append('<mapper namespace="' + FPackage + '.dao.' + clazz + 'Dao">');
    Lines.Append('');
    if (PanelID.Visible = false) then
    begin
    Lines.Append('    <insert id="insert" parameterType="' + clazz + 'Entity" useGeneratedKeys="true" keyProperty="id">');
    Lines.Append('        <selectKey resultType="String" keyProperty="id" order="BEFORE">');
    if (CheckBoxGuiMe.Checked) then
    Lines.Append('            select to_char(sysdate, ''yymmdd'') || java_seq.nextval from dual')
    else
    Lines.Append('            select to_char(sysdate, ''yymmdd'') || ' + LowerCase(FEditTable) + '_seq.nextval from dual');
    Lines.Append('        </selectKey>');
    end
    else
    begin
    Lines.Append('    <insert id="insert" parameterType="' + clazz + 'Entity">');
    end;
    Lines.Append('        insert into ' + LowerCase(FEditTable));
    Lines.Append('        <trim prefix="(" suffix=")" suffixOverrides=",">');

    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        Lines.Append('            id,');
        UniQueryColumn.Next;
        Continue;
      end;

      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'DELFLAG') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ','));
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ',');
      Lines.Append('            </if>');

      UniQueryColumn.Next;
    end;

    Lines.Append('        </trim>');
    Lines.Append('        <trim prefix="values (" suffix=")" suffixOverrides=",">');
    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        Lines.Append('            #{id},');
        UniQueryColumn.Next;
        Continue;
      end;

      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'DELFLAG')then
      begin
        Lines.Append('            0,');
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME')then
      begin
        Lines.Append('            sysdate,');
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            0,');
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                #{' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + '},');
      Lines.Append('            </if>');

      UniQueryColumn.Next;
    end;
    Lines.Append('        </trim>');
    Lines.Append('    </insert>');

    Lines.Append('');
    Lines.Append('    <update id="update" parameterType="' + clazz + 'Entity">');
    Lines.Append('        update ' + LowerCase(FEditTable));
    Lines.Append('        <set>');
    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'DELFLAG') then
      begin
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME')then
      begin
        Lines.Append('            rowtime = sysdate,');
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            rowver = rowver + 1,');
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ' = #{' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + '},');
      Lines.Append('            </if>');
      UniQueryColumn.Next;
    end;
    Lines.Append('        </set>');
    if (PanelID.Visible = false) then
      Lines.Append('        where id = #{id}')
    else
      Lines.Append('        where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
    Lines.Append('    </update>');
    Lines.Append('');

    if (Trim(ExistsField) <> '') then
    begin
      Lines.Append('    <select id="validate" resultType="int">');
      Lines.Append('        select count(*) as count from ' + LowerCase(FEditTable));
      Lines.Append('        <where>');
      Lines.Append('            <if test="idValue != null and idValue != ''''">');
      if (PanelID.Visible = false) then
        Lines.Append('                 and id &lt;&gt; #{idValue}')
      else
        Lines.Append('                 and ' + LowerCase(ComboBoxKey.Text) + ' &lt;&gt; #{idValue}');
      Lines.Append('            </if>');
      Lines.Append('            and ${name} = #{value}');
      if (DelflagField <> '') then
        Lines.Append('            and delflag = 0');
      Lines.Append('        </where>');
      Lines.Append('    </select>');
      Lines.Append('');
      Lines.Append('    <select id="exists" parameterType="' + clazz + 'Entity" resultType="int">');
      Lines.Append('        select count(*) as count from ' + LowerCase(FEditTable));
      Lines.Append('        <where>');

      if (PanelID.Visible = false) then
      begin
        Lines.Append('            <if test="id != null and id != ''''">');
        Lines.Append('                and id &lt;&gt; #{id}');
      end
      else
      begin
        Lines.Append('            <if test="' + LowerCase(ComboBoxKey.Text) + ' != null and ' + LowerCase(ComboBoxKey.Text) + ' != ''''">');
        Lines.Append('                and ' + LowerCase(ComboBoxKey.Text) + ' &lt;&gt; #{' + LowerCase(ComboBoxKey.Text) + '}');
      end;
      Lines.Append('            </if>');
      Lines.Append('            and ' + LowerCase(ExistsField) + ' = #{' + LowerCase(ExistsField) + '} ');
      if (DelflagField <> '') then
        Lines.Append('            and delflag = 0');
      Lines.Append('        </where>');
      Lines.Append('    </select>');
      Lines.Append('');
    end
    else
    begin
      Lines.Append('    <select id="validate" resultType="int">');
      Lines.Append('        select 0 as count from dual');
      Lines.Append('    </select>');
      Lines.Append('');
      Lines.Append('    <select id="exists" parameterType="' + clazz + 'Entity" resultType="int">');
      Lines.Append('        select 0 as count from dual');
      Lines.Append('    </select>');
      Lines.Append('');
    end;

    if (DelflagField = '') then
    begin
      Lines.Append('    <delete id="deleteById" parameterType="String">');
      if (PanelID.Visible = false) then
        Lines.Append('        delete from ' + LowerCase(FEditTable) + ' where id = #{id}')
      else
        Lines.Append('        delete from ' + LowerCase(FEditTable) + ' where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
      Lines.Append('    </delete>');
      Lines.Append('');
    end
    else
    begin
      Lines.Append('    <delete id="deleteById" parameterType="String">');
      if (PanelID.Visible = false) then
        Lines.Append('        update ' + LowerCase(FEditTable) + ' set delflag = 1 where id = #{id}')
      else
        Lines.Append('        update ' + LowerCase(FEditTable) + ' set delflag = 1 where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
      Lines.Append('    </delete>');
      Lines.Append('');
    end;

    Lines.Append('    <select id="selectById" parameterType="String" resultType="' + clazz + 'Entity">');
    if (PanelID.Visible = false) then
      Lines.Append('        select * from ' + LowerCase(FEditTable) + ' where id = #{id}')
    else
      Lines.Append('        select * from ' + LowerCase(FEditTable) + ' where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
    Lines.Append('    </select>');
    Lines.Append('');

    Lines.Append('    <select id="selectAll" parameterType="Map" resultType="' + clazz + 'Entity">');
    Lines.Append('        select * from ' + LowerCase(FEditTable));
    Lines.Append('        <include refid="whereSearch" />');
    Lines.Append('    </select>');
    Lines.Append('');

    Lines.Append('    <select id="count" parameterType="Map" resultType="int">');
    Lines.Append('        select count(*) from ' + LowerCase(FEditTable));
    Lines.Append('        <include refid="whereSearch" />');
    Lines.Append('    </select>');
    Lines.Append('');

    Lines.Append('    <sql id="whereSearch">');
    Lines.Append('        <where>');
    if (DelflagField <> '') then
      Lines.Append('            delflag = 0');

    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'DELFLAG') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ' != null and ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != ''''">'));
      Lines.Append('                and ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ' like ''%${' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + '}%''');
      Lines.Append('            </if>');
      UniQueryColumn.Next;
    end;
    Lines.Append('        </where>');
    Lines.Append('    </sql>');
    Lines.Append('');
    Lines.Append('</mapper>');
  end;
end;

{********************
 BuilderCode 编译 List.jsp
********************}
procedure TFm_Code.BuilderList(clazz:String);
var
  i: Integer;
  fieldname, display: String;
  temp1, temp2, temp3: TStrings;
  t1, isUrl: Boolean;
begin
  i := 0;
  with UniQueryColumn do
  begin
    temp1 := TStringList.Create;
    temp2 := TStringList.Create;
    temp3 := TStringList.Create;

    First;
    DisableControls;
    try
      isUrl := false;
      while not Eof do
      begin
         fieldname := getTopLowerChar(FieldByName('FieldName').AsString);
         display := FieldByName('Title').AsString;

          // ListJSP Begin
         if (FieldByName('List_FixOut').AsBoolean) then
         begin
             if (isUrl = false) then
             begin
               temp1.Append('                                    {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>,');
               temp1.Append('                                          formatter:function(value, row) {');
               if (CheckBoxGuiMe.Checked) then
               temp1.Append('                                              return "<a href=''${URI}_view.action?menuid=${menuid}&storeid=${storeid}&selectid=" + row.id + "&rowno=" + row.rowno + "''>" + value + "</a>";')
               else
               temp1.Append('                                              return "<a href=''${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "''>" + value + "</a>";');
               temp1.Append('                                          }');
               temp1.Append('                                    },');
               isUrl := true;
             end
             else
             begin
               temp1.Append('                                    {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>},');
             end;
             Edit;
             FieldByName('List_Out').AsBoolean := False;
             Post;
         end
         else if (FieldByName('List_Out').AsBoolean) then
         begin
             if (isUrl = false) then
             begin
               temp2.Append('                              {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>,');
               temp2.Append('                                    formatter:function(value, row) {');
               if (CheckBoxGuiMe.Checked) then
               temp2.Append('                                        return "<a href=''${URI}_view.action?menuid=${menuid}&storeid=${storeid}&selectid=" + row.id + "&rowno=" + row.rowno + "''>" + value + "</a>";')
               else
               temp2.Append('                                        return "<a href=''${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "''>" + value + "</a>";');
               temp2.Append('                                    }');
               temp2.Append('                              },');
               isUrl := true;
             end
             else
             begin
               temp2.Append('                              {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>},');
             end;
         end;

         if (FieldByName('Search').AsBoolean) then
         begin
             temp3.Append('                            <tr>');

             if (i = 0) then
             temp3.Append('                                <td width="70" align="right">' + display + '</td>')
             else
             temp3.Append('                                <td align="right">' + display + '</td>');
             Inc(i);

             temp3.Append('                                <td class="input-group-xs">');
             temp3.Append('                                    <input name="' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>');
             temp3.Append('                                </td>');

             if (i = 1) then
             begin
                temp3.Append('                                <td width="180" align="center" rowspan="@rowspan@">');
                temp3.Append('                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >');
                temp3.Append('                                        <span class="glyphicon glyphicon-search"></span> 查 询 ');
                temp3.Append('                                    </button>');
                if (CheckBoxGuiMe.Checked) then
                temp3.Append('                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="appendAction(''${menuid}'', ''${storeid}'', ''${URI}'');">')
                else
                temp3.Append('                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="appendAction(''${menuid}'', ''${URI}'');">');
                temp3.Append('                                        <span class="glyphicon glyphicon-repeat"></span> 新 建');
                temp3.Append('                                    </button>');
                temp3.Append('                                </td>');
             end;
             temp3.Append('                            </tr>');
         end;
         // ListJSP End

         Next;
      end;

      if (Trim(temp1.Text) <> '') then
      begin
        temp1.Text := Copy(temp1.Text, 1, Length(temp1.Text) - 3);
        t1 := true;
      end;

      temp3.Text := StringReplace(temp3.Text, '@rowspan@', IntToStr(i), [rfReplaceAll]);

      with ListMemo do
      begin
        Clear;
        Lines.Append('   	<%@page language="java" contentType="text/html;charset=UTF-8"%>');
        Lines.Append('   	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>');
        Lines.Append('    <%@taglib prefix="e" uri="/easyui"%>');
        Lines.Append('');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('    <script src="${path}/global/js/template-guime.js"></script>');
        Lines.Append('');
        Lines.Append('    <script>');
        Lines.Append('        var grid = null;');
        Lines.Append('');
        Lines.Append('        window.onresize = function () {');
        Lines.Append('            $("#cxGrid").datagrid("resize");');
        Lines.Append('        }');
        Lines.Append('');
        Lines.Append('        $(function() {');
        Lines.Append('              grid = $("#cxGrid").datagrid({');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                    url: "${URI}_list.action?menuid=${menuid}&storeid=${storeid}",')
        else
        Lines.Append('                    url: "${URI}_list.action?menuid=${menuid}",');
        Lines.Append('                    width: document.getElementById("gridPanel").width,');
        Lines.Append('                    height: Number(document.documentElement.clientHeight) - 200,');
        Lines.Append('                    fitColumns: false,');
        Lines.Append('                    rownumbers: false,');
        Lines.Append('                    singleSelect: false,');
        Lines.Append('                    pagination: true,');
        Lines.Append('                    border: true,');
        Lines.Append('                    frozenColumns:[[');
        Lines.Append('                                    {title:"ID", field:"id", width:100, hidden:true},');
        Lines.Append('                                    {field:"rowno", title:"", width:35, align:"center"},');

        if (t1) then
        Lines.Append('                                    {field:"ck", checkbox:true},')
        else
        Lines.Append('                                    {field:"ck", checkbox:true}');

        Lines.Append(temp1.Text);

        Lines.Append('                                   ]],');
        Lines.Append('                    columns:[[');

        Lines.Append(temp2.Text);

        Lines.Append('                              {title:"操作", field:"option", width:100, align:"center", resizable:false,');
        Lines.Append('                                    formatter:function(value, row) {');
        Lines.Append('                                        <c:if test="${writePower ne true}">');
        Lines.Append('                                            var str = "<div class=''hidden-sm hidden-xs action-buttons''>" +');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                                                           "<a class=''green'' href=''#'' onclick=''modifyAction(\"${menuid}\", \"${storeid}\", \"${URI}\",\"" + row.id + "\")''>" +')
        else
        Lines.Append('                                                           "<a class=''green'' href=''#'' onclick=''modifyAction(\"${menuid}\", \"${URI}\",\"" + row.id + "\")''>" +');
        Lines.Append('                                                              "<i class=''ace-icon fa fa-pencil bigger-130''></i>" +');
        Lines.Append('                                                           "</a>" +');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                                                           "<a class=''red'' href=''#'' onclick=''deleteAction(\"${menuid}\", \"${storeid}\", \"${URI}\", \"" + row.id + "\", grid)''>" +')
        else
        Lines.Append('                                                           "<a class=''red'' href=''#'' onclick=''deleteAction(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)''>" +');
        Lines.Append('                                                              "<i class=''ace-icon fa fa-trash-o bigger-130''></i>" +');
        Lines.Append('                                                           "</a>" +');
        Lines.Append('                                                      "</div>";');
        Lines.Append('                                        </c:if>');
        Lines.Append('                                        <c:if test="${writePower eq true}">');
        Lines.Append('                                            var str = "无操作权限";');
        Lines.Append('                                        </c:if>');
        Lines.Append('                                        return str;');
        Lines.Append('                                    }');
        Lines.Append('                              }');
        Lines.Append('                             ]],');

        Lines.Append('                    onResizeColumn: function(field, width) {');
        Lines.Append('                        $.ajax({');
        Lines.Append('                            type: "post",');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                            url: "${path}/system/grid_width.action?formtag=${menuid}&storeid=${storeid}&gridtag=grid1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width')
        else
        Lines.Append('                            url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=grid1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width');
        Lines.Append('                        });');
        Lines.Append('                    },');
        Lines.Append('                    onLoadError: function(none) {');
        Lines.Append('                        alertBootstrap(none.responseText);  // The bootstrap alert (loading EasyUI Grid Data errors).');
        Lines.Append('                    }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('              // 分页事件');
        Lines.Append('              var page = grid.datagrid("getPager");');
        Lines.Append('              page.pagination({');
        Lines.Append('                   showPageList:false,');
        Lines.Append('                   pageSize:${pageSize},');
        Lines.Append('                   onSelectPage:function(pageNum, pageSize) {');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                       var pageURL = "${URI}_page.action?menuid=${menuid}&storeid=${storeid}&pageParam.page=" + pageNum;  // + "&pageParam.sizePage=" + pageSize;')
        else
        Lines.Append('                       var pageURL = "${URI}_page.action?menuid=${menuid}&pageParam.page=" + pageNum;  // + "&pageParam.sizePage=" + pageSize;');
        Lines.Append('                       $.ajax({');
        Lines.Append('                           type: "post",');
        Lines.Append('                           url: pageURL,');
        Lines.Append('                           success: function(data){');
        Lines.Append('                               try {');
        Lines.Append('                                   var griddata = eval("(" + data + ")");');
        Lines.Append('                                   if(griddata.rows!=null)');
        Lines.Append('                                       grid.datagrid("loadData",griddata);');
        Lines.Append('                                } catch(e) {');
        Lines.Append('                                   alertBootstrap("分页错误:" + e);  // The bootstrap alert (loading EasyUI Grid Page errors).');
        Lines.Append('                                }');
        Lines.Append('                           },');
        Lines.Append('                           error: function(){');
        Lines.Append('                                alertBootstrap("发生系统故障,请与系统管理员联系!");  // The bootstrap alert (system errors).');
        Lines.Append('                           }');
        Lines.Append('                       });');
        Lines.Append('                   }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('              // 普通查询 Ajax');
        Lines.Append('              $("#searchForm").form({');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                  url: "${URI}_search.action?menuid=${menuid}&storeid=${storeid}",')
        else
        Lines.Append('                  url: "${URI}_search.action?menuid=${menuid}",');
        Lines.Append('                  success: function(data) {');
        Lines.Append('                     try {');
        Lines.Append('                        var griddata = eval("(" + data + ")");');
        Lines.Append('                        if(griddata.rows!=null)');
        Lines.Append('                            grid.datagrid("loadData",griddata);');
        Lines.Append('                     } catch(e) {');
        Lines.Append('                        closeProgressBootstrap();  // Close the Bootstrap process window');
        Lines.Append('                        alertBootstrap("查询错误,错误原因:" + e);  // The bootstrap alert (search errors).');
        Lines.Append('                     }');
        Lines.Append('');
        Lines.Append('                     window.setTimeout(function() {');
        Lines.Append('                        closeProgressBootstrap();  // Close the Bootstrap process window');
        Lines.Append('                     }, 500);');
        Lines.Append('                  }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('        });');
        Lines.Append('    </script>');
        Lines.Append('');
        Lines.Append('');
        Lines.Append('    <div id="searchPanel" class="widget-box">');
        Lines.Append('        <div class="widget-header widget-header-small">');
        Lines.Append('            <h4 class="widget-title">');
        Lines.Append('                <i class="ace-icon fa fa-search"></i>查询条件');
        Lines.Append('            </h4>');
        Lines.Append('        </div>');
        Lines.Append('');
        Lines.Append('        <div class="widget-body" style="background-color: #fff">');
        Lines.Append('            <div class="widget-main">');
        Lines.Append('                <div class="clearfix">');
        Lines.Append('                    <%-- Search Begin --%>');
        Lines.Append('                    <form id="searchForm" method="post">');
        Lines.Append('                        <table class="table-xs">');
        Lines.Append(temp3.Text);
        Lines.Append('                        </table>');
        Lines.Append('                    </form>');
        Lines.Append('                    <%-- Search End --%>');
        Lines.Append('                </div>');
        Lines.Append('            </div>');
        Lines.Append('        </div>');
        Lines.Append('    </div>');
        Lines.Append('');
        Lines.Append('    <div id="gridPanel" class="widget-box" style="margin-top: 10px;">');
        Lines.Append('        <div class="widget-header">');
        Lines.Append('            <h4 class="widget-title">');
        Lines.Append('                <i class="ace-icon fa fa-table"></i>查询列表');
        Lines.Append('            </h4>');
        Lines.Append('            <span class="widget-toolbar">');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-pink" data-rel="tooltip" data-placement="bottom" title="导出数据" onclick="exportExcel(''${menuid}'', ''${storeid}'', ''${URI}'')" >')
        else
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-pink" data-rel="tooltip" data-placement="bottom" title="导出数据" onclick="exportExcel(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-export"></span> 导 出');
        Lines.Append('                </button>');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-purple" data-rel="tooltip" data-placement="bottom" title="导入数据" onclick="importExcel(''${menuid}'', ''${storeid}'', ''${URI}'')" >')
        else
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-purple" data-rel="tooltip" data-placement="bottom" title="导入数据" onclick="importExcel(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-import"></span> 导 入');
        Lines.Append('                </button>');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-success" data-rel="tooltip" data-placement="bottom" title="刷新数据" onclick="refreshPage(''${menuid}'', ''${storeid}'', ''${URI}'')" >')
        else
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-success" data-rel="tooltip" data-placement="bottom" title="刷新数据" onclick="refreshPage(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-refresh"></span> 刷 新');
        Lines.Append('                </button>');
        Lines.Append('            </span>');
        Lines.Append('        </div>');
        Lines.Append('');
        Lines.Append('        <div class="widget-body">');
        Lines.Append('            <div class="widget-main">');
        Lines.Append('                <%-- Grid 对象 --%>');
        Lines.Append('                <div style="margin: -14px -13px -13px -13px">');
        Lines.Append('                    <div id="cxGrid"></div>');
        Lines.Append('                </div>');
        Lines.Append('                <%-- Grid End --%>');
        Lines.Append('            </div>');
        Lines.Append('        </div>');
        Lines.Append('    </div>');
        Lines.Append('');
        Lines.Append('');
      end;

    finally
      UniQueryColumn.First;
      UniQueryColumn.EnableControls;
      temp1.Free;
      temp2.Free;
      temp3.Free;
    end;
  end;
end;

{********************
 BuilderCode 编译 Edit.jsp
********************}
procedure TFm_Code.BuilderEdit(clazz:String);
var
  j, e: Integer;
  fieldname, display, max: String;
  temp, javascript: TStrings;

  notReplace, notNull, isEmail: Boolean;
  validate: Boolean;
begin
  with UniQueryColumn do
  begin
    temp := TStringList.Create;
    javascript := TStringList.Create;

    First;
    DisableControls;
    try
      j := 0;
      e := 0;

      // While Do Begin
      while not Eof do
      begin
         Inc(e);

         fieldname := getTopLowerChar(FieldByName('FieldName').AsString);
         display := FieldByName('Title').AsString;
         max := FieldByName('Validate_Length').AsString;

         notReplace := FieldByName('Validate_NotRepeat').AsBoolean;
         notNull := FieldByName('Validate_NotNull').AsBoolean;
         isEmail := FieldByName('Validate_Email').AsBoolean;

         validate := (FieldByName('Validate_NotRepeat').AsBoolean or FieldByName('Validate_NotNull').AsBoolean or FieldByName('Validate_Email').AsBoolean);

         // EditJSP Begin
         if (FieldByName('Edit_Out').AsBoolean) then
         begin

            // Validate Begin
            if (notReplace) or (notNull) or (isEmail) then
            begin
                javascript.Append('                {');
                javascript.Append('                    ele:"#' + fieldname + '",');

                if (notNull) and (isEmail = false) then
                begin
                  javascript.Append('                    datatype:"*2-' + max + '",');
                  javascript.Append('                    errormsg:"提示:' + display + '至少2个字符,最多' + max + '个字符!",');
                  javascript.Append('                    nullmsg:"提示:请输入' + display + '!",');
                end
                else if (isEmail) then
                begin
                  javascript.Append('                    datatype:"e",');
                  javascript.Append('                    errormsg:"请输入正确的邮件格式!",');
                  javascript.Append('                    nullmsg:"提示:请输入' + display + '!",');
                end;

                if (notReplace) then
                begin
                  if (CheckBoxGuiMe.Checked) then
                    javascript.Append('                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&storeid=${storeid}&idValue=${' + getTopLowerChar(clazz) + 'Entity.id}",')
                  else
                    javascript.Append('                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${' + getTopLowerChar(clazz) + 'Entity.id}",');
                end;

                javascript.Append('                    sucmsg:"提示:当前' + display + '验证通过!"');
                javascript.Append('                },');
            end;
            // Validate End

            if (j = 0) then
            begin
              temp.Append('                <tr>');
              temp.Append('                    <td width="75" bgcolor="#f4f9ff" align="right">');

              if validate then
              temp.Append('                        <div style="width:75px;"><span class="RText">* </span>' + display + '</div>')
              else
              temp.Append('                        <div style="width:75px;">' + display + '</div>');

              temp.Append('                    </td>');
              temp.Append('                    <td width="50%" class="input-group-xs">');
              temp.Append('                        <input class="form-control" type="text" id="' + fieldname + '" name="' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '" style="width: 99%;" maxlength="' + max + '" value="${' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '}" <c:if test="${method eq ''view''}">readonly</c:if> />');

              if validate then
              temp.Append('                        <span class="Validform_checktip"><v:value value="${errors.' + fieldname + '}"/></span>');

              temp.Append('                    </td>');
              j := 1;
              Next;
              Continue;
            end;

            if (j = 1) then
            begin
              temp.Append('                    <td width="75" bgcolor="#f4f9ff" align="right">');

              if validate then
              temp.Append('                        <div style="width:75px;"><span class="RText">* </span>' + display + '</div>')
              else
              temp.Append('                        <div style="width:75px;">' + display + '</div>');

              temp.Append('                    </td>');
              temp.Append('                    <td width="50%" class="input-group-xs">');
              temp.Append('                        <input class="form-control" type="text" id="' + fieldname + '" name="' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '" style="width: 99%;" maxlength="' + max + '" value="${' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '}" <c:if test="${method eq ''view''}">readonly</c:if> />');

              if validate then
              temp.Append('                        <span class="Validform_checktip"><v:value value="${errors.' + fieldname + '}"/></span>');

              temp.Append('                    </td>');
              temp.Append('                </tr>');
              j := 0;
              Next;
              Continue;
            end;
         end
         else
         begin
            Next;
         end;
         // EditJSP End
      end;
      // While Do Dnd

      // 如果缺少 TD, 就补上一个 TD.
      if (e mod 2 <> 0) then
      begin
        temp.Append('                    <td width="75" bgcolor="#f4f9ff" align="right">');
        temp.Append('                        &nbsp;');
        temp.Append('                    </td>');
        temp.Append('                    <td width="50%" class="input-group-xs">');
        temp.Append('                        &nbsp;');
        temp.Append('                    </td>');
        temp.Append('                </tr>');
        j := 0;
        Next;
      end;

      if (Trim(javascript.Text) <> '') then
      begin
        javascript.Text := Copy(javascript.Text, 1, Length(javascript.Text) - 3);
      end;

      with EditMemo do
      begin
        Clear;
        Lines.Append('        <%@page language="java" contentType="text/html;charset=UTF-8"%>');
        Lines.Append('        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>');
        Lines.Append('        <%@taglib prefix="v" uri="/errors"%>');
        Lines.Append('');
        Lines.Append('        <script src="${path}/global/js/template-guime.js"></script>');
        Lines.Append('');
        Lines.Append('        <script>');
        Lines.Append('        $(document).ready(function() {');
        Lines.Append('            var tip = function(msg,o,cssctl){');
        Lines.Append('                var objtip=$("#msg");');
        Lines.Append('                cssctl(objtip,o.type);');
        Lines.Append('                objtip.text(msg);');
        Lines.Append('                return true;');
        Lines.Append('            };');
        Lines.Append('');
        Lines.Append('            var validForm = getPostValidForm("${menuid}", "${URI}", tip);');
        Lines.Append('            validForm.addRule([');
        Lines.Append(javascript.Text);
        Lines.Append('            ]);');
        Lines.Append('');
        Lines.Append('        });');
        Lines.Append('        </script>');
        Lines.Append('');
        Lines.Append('        <form class="saveCalss form-horizontal" id="saveForm" method="post" action="${URI}_save.action" role="form" style="margin-top: 10px;">');
        Lines.Append('            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />');
        Lines.Append('            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('            <input type="hidden" id="storeid" name="storeid" value="${storeid}" />');
        Lines.Append('            <input type="hidden" name="' + getTopLowerChar(clazz) + 'Entity.id" value="${' + getTopLowerChar(clazz) + 'Entity.id}" />');
        Lines.Append('            <!-- 添加自己需要的 hidden 字段 -->');
        Lines.Append('');
        Lines.Append('');
        Lines.Append('            <%-- Edit Page Begin --%>');
        Lines.Append('            <table width="100%" class="table-xs table-bo">');
        Lines.Append(temp.Text);
        Lines.Append('            </table>');
        Lines.Append('        </form>');
        Lines.Append('');
        Lines.Append('        <span id="msg" style="margin-left:10px;"><v:value value="${errors.validateError}"/></span>');
        Lines.Append('');
        Lines.Append('        <div align="center" style="margin: 20px;">');
        Lines.Append('            <c:if test="${method eq ''append'' || method eq ''modify''}">');
        Lines.Append('                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="保存数据" onclick="saveAction(''savelist'');" >');
        Lines.Append('                    <span class="glyphicon glyphicon-floppy-disk"></span> 保 存');
        Lines.Append('                </button>');
        Lines.Append('                <button type="button" class="btn btn-sm btn-success" data-rel="tooltip" data-placement="bottom" title="保存并新建" onclick="saveAction(''saveappend'');" >');
        Lines.Append('                    <span class="glyphicon glyphicon-floppy-saved"></span> 保存并新建');
        Lines.Append('                </button>');
        Lines.Append('            </c:if>');
        Lines.Append('');
        Lines.Append('            <c:if test="${method eq ''view''}">');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据" onclick="modifyAction(''${menuid}'', ''${storeid}'', ''${URI}'', ''${selectid}'')" >')
        else
        Lines.Append('                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据" onclick="modifyAction(''${menuid}'', ''${URI}'', ''${selectid}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-pencil"></span> 修 改');
        Lines.Append('                </button>');
        Lines.Append('            </c:if>');
        Lines.Append('');
        if (CheckBoxGuiMe.Checked) then
        Lines.Append('            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel(''${menuid}'', ''${storeid}'', ''${URI}'')">')
        else
        Lines.Append('            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel(''${menuid}'', ''${URI}'')">');
        Lines.Append('                <span class="glyphicon glyphicon-share-alt"></span> 取 消');
        Lines.Append('            </button>');
        Lines.Append('        </div>');
        Lines.Append('');
      end;
    finally
      UniQueryColumn.First;
      UniQueryColumn.EnableControls;
      temp.Free;
      javascript.Free;
    end;
  end;
end;

{********************
 BuilderCode 编译 Form.jsp
********************}
procedure TFm_Code.BuilderForm(clazz: String);
var
  str255:String;
var
  i: Integer;
  validField1, validField2, fieldname, display: String;
  temp1, temp2, temp3: TStrings;
  t1, isUrl: Boolean;
var
  j: Integer;
  max: String;
  temp: TStrings;
  notReplace, notNull: Boolean;
  validFormStr, validFormTip: String;
begin
  if (CheckBoxGuiMe.Checked) then
  begin
     BootstrapMemo.Clear;
     Exit;
  end;

  i := 0;
  j := 0;
  with UniQueryColumn do
  begin
    temp  := TStringList.Create;
    temp1 := TStringList.Create;
    temp2 := TStringList.Create;
    temp3 := TStringList.Create;

    First;
    DisableControls;
    try
      isUrl := false;
      while not Eof do
      begin
         fieldname := getTopLowerChar(FieldByName('FieldName').AsString);
         display := FieldByName('Title').AsString;
         max := FieldByName('Validate_Length').AsString;
         notReplace := FieldByName('Validate_NotRepeat').AsBoolean;
         notNull := FieldByName('Validate_NotNull').AsBoolean;

         validFormStr := '';
         validFormTip := '&nbsp;';

         if (notReplace) or (notNull) then
         begin
            validFormStr := ' sucmsg="当前' + display + '验证通过!" ';
            if (notNull) then
            begin
              validFormStr := validFormStr + 'nullmsg="请输入' + display + '!" ';
              validFormStr := validFormStr + 'datatype="*1-' + max + '" ';
              validFormStr := validFormStr + 'errormsg="' + display + '至少1个字符,最多' + max + '个字符!" ';
            end;
            if (notReplace) then
            begin
              validFormStr := validFormStr + 'ajaxurl="" ';
              if (validField1 = '') then
                validField1 := '$(''#' + fieldname + ''')';
              if (validField2 = '') then
                validField2 := '$(\"#' + fieldname + '\")';
            end;

            validFormTip := '<span class="Validform_checktip">' + display + '为1~' + max + '个字符</span>';
         end;

        if (validField1 = '') then
          validField1 := 'null';

        if (validField2 = '') then
          validField2 := 'null';

          // ListJSP Begin
         if (FieldByName('List_FixOut').AsBoolean) then
         begin
             if (isUrl = false) then
             begin
               temp1.Append('                                    {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>,');
               temp1.Append('                                          formatter:function(value, row) {');
               temp1.Append('                                              return "<a href=''###'' onclick=''ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, @validField2@, true)''>" + value + "</a>";');
               temp1.Append('                                          }');
               temp1.Append('                                    },');
               isUrl := true;
             end
             else
             begin
               temp1.Append('                                    {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>},');
             end;
             Edit;
             FieldByName('List_Out').AsBoolean := False;
             Post;
         end
         else if (FieldByName('List_Out').AsBoolean) then
         begin
             if (isUrl = false) then
             begin
               temp2.Append('                              {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>,');
               temp2.Append('                                    formatter:function(value, row) {');
               temp2.Append('                                        return "<a href=''###'' onclick=''ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, @validField2@, true)''>" + value + "</a>";');
               temp2.Append('                                    }');
               temp2.Append('                              },');
               isUrl := true;
             end
             else
             begin
               temp2.Append('                              {field:"' + fieldname + '", title:"' + display + '", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="' + fieldname + '" initial="200"/>},');
             end;
         end;

         if (FieldByName('Search').AsBoolean) then
         begin
             temp3.Append('                            <tr>');

             if (i = 0) then
             temp3.Append('                                <td width="70" align="right">' + display + '</td>')
             else
             temp3.Append('                                <td align="right">' + display + '</td>');
             Inc(i);

             temp3.Append('                                <td class="input-group-xs">');
             temp3.Append('                                    <input name="' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>');
             temp3.Append('                                </td>');

             if (i = 1) then
             begin
                temp3.Append('                                <td width="180" align="center" rowspan="@rowspan@">');
                temp3.Append('                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >');
                temp3.Append('                                        <span class="glyphicon glyphicon-search"></span> 查 询 ');
                temp3.Append('                                    </button>');
                temp3.Append('                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="ajaxAppend(''${menuid}'', ''${URI}'', validForm, ' + validField1 + ');">');
                temp3.Append('                                        <span class="glyphicon glyphicon-repeat"></span> 新 建');
                temp3.Append('                                    </button>');
                temp3.Append('                                </td>');
             end;

             temp3.Append('                            </tr>');
         end;
         // ListJSP End

         // EditJSP Begin
         if (FieldByName('Edit_Out').AsBoolean) then
         begin
            temp.Append('                       <tr>');

            if (j = 0) then
            begin
              temp.Append('                           <td width="15%" height="30" align="right"><span class="RText">* </span>' + display + '</td>');
              temp.Append('                           <td width="53%" class="input-group-xs">');
            end
            else
            begin
              temp.Append('                           <td height="30" align="right"><span class="RText">* </span>' + display + '</td>');
              temp.Append('                           <td class="input-group-xs">');
            end;
            Inc(j);

            temp.Append('                               <input class="form-control" type="text" id="' + fieldname + '" name="' + getTopLowerChar(clazz) + 'Entity.' +  fieldname + '" style="width: 300px;" maxlength="' + max + '"' + validFormStr + ' />');
            temp.Append('                           </td>');
            temp.Append('                           <td>');
            temp.Append('                               ' + validFormTip);
            temp.Append('                           </td>');
            temp.Append('                       </tr>');
         end;
         // EditJSP End

         Next;
      end;

      if (Trim(temp1.Text) <> '') then
      begin
        temp1.Text := Copy(temp1.Text, 1, Length(temp1.Text) - 3);
        t1 := true;
      end;

      temp1.Text := StringReplace(temp1.Text, '@validField2@', validField2, [rfReplaceAll]);
      temp2.Text := StringReplace(temp2.Text, '@validField2@', validField2, [rfReplaceAll]);
      temp3.Text := StringReplace(temp3.Text, '@rowspan@', IntToStr(i), [rfReplaceAll]);

      with BootstrapMemo do
      begin
        Clear;
        Lines.Append('	<%@page language="java" contentType="text/html;charset=UTF-8"%>');
        Lines.Append('	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>');
        Lines.Append('	<%@taglib prefix="e" uri="/easyui"%>');
        Lines.Append('');
        Lines.Append('    <script>');
        Lines.Append('        var validForm = null;');
        Lines.Append('        var grid = null;');
        Lines.Append('');
        Lines.Append('        $(document).ready(function() {');
        Lines.Append('            validForm = getAjaxValidForm();');
        Lines.Append('        });');
        Lines.Append('');
        Lines.Append('        window.onresize = function () {');
        Lines.Append('            $("#cxGrid").datagrid("resize");');
        Lines.Append('        }');
        Lines.Append('');
        Lines.Append('        $(function() {');
        Lines.Append('              grid = $("#cxGrid").datagrid({');
        Lines.Append('                    url: "${URI}_list.action?menuid=${menuid}",');
        Lines.Append('                    width: document.getElementById("gridPanel").width,');
        Lines.Append('                    height: Number(document.documentElement.clientHeight) - 200,');
        Lines.Append('                    fitColumns: false,');
        Lines.Append('                    rownumbers: false,');
        Lines.Append('                    singleSelect: false,');
        Lines.Append('                    pagination: true,');
        Lines.Append('                    border: true,');
        Lines.Append('                    frozenColumns:[[');
        Lines.Append('                                    {title:"ID", field:"id", width:100, hidden:true},');
        Lines.Append('                                    {field:"rowno", title:"", width:35, align:"center"},');

        if (t1) then
        Lines.Append('                                    {field:"ck", checkbox:true},')
        else
        Lines.Append('                                    {field:"ck", checkbox:true}');

        Lines.Append(temp1.Text);

        Lines.Append('                                   ]],');
        Lines.Append('                    columns:[[');

        Lines.Append(temp2.Text);

        Lines.Append('                              {title:"操作", field:"option", width:100, align:"center", resizable:false,');
        Lines.Append('                                    formatter:function(value, row) {');
        Lines.Append('                                        <c:if test="${writePower ne true}">');
        Lines.Append('                                            var str = "<div class=''hidden-sm hidden-xs action-buttons''>" +');
        Lines.Append('                                                           "<a class=''green'' href=''#'' onclick=''ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, ' + validField2 + ', false)''>" +');
        Lines.Append('                                                              "<i class=''ace-icon fa fa-pencil bigger-130''></i>" +');
        Lines.Append('                                                           "</a>" +');
        Lines.Append('                                                           "<a class=''red'' href=''#'' onclick=''ajaxDelete(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)''>" +');
        Lines.Append('                                                              "<i class=''ace-icon fa fa-trash-o bigger-130''></i>" +');
        Lines.Append('                                                           "</a>" +');
        Lines.Append('                                                      "</div>";');
        Lines.Append('                                        </c:if>');
        Lines.Append('                                        <c:if test="${writePower eq true}">');
        Lines.Append('                                            var str = "无操作权限";');
        Lines.Append('                                        </c:if>');
        Lines.Append('                                        return str;');
        Lines.Append('                                    }');
        Lines.Append('                              }');
        Lines.Append('                             ]],');

        Lines.Append('                    onResizeColumn: function(field, width) {');
        Lines.Append('                        $.ajax({');
        Lines.Append('                            type: "post",');
        Lines.Append('                            url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=grid1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width');
        Lines.Append('                        });');
        Lines.Append('                    },');
        Lines.Append('                    onLoadError: function(none) {');
        Lines.Append('                        alertBootstrap(none.responseText);  // The bootstrap alert (loading EasyUI Grid Data errors).');
        Lines.Append('                    }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('              // 分页事件');
        Lines.Append('              var page = grid.datagrid("getPager");');
        Lines.Append('              page.pagination({');
        Lines.Append('                   showPageList:false,');
        Lines.Append('                   pageSize:${pageSize},');
        Lines.Append('                   onSelectPage:function(pageNum, pageSize) {');
        Lines.Append('                       var pageURL = "${URI}_page.action?menuid=${menuid}&pageParam.page=" + pageNum;  // + "&pageParam.sizePage=" + pageSize;');
        Lines.Append('                       $.ajax({');
        Lines.Append('                           type: "post",');
        Lines.Append('                           url: pageURL,');
        Lines.Append('                           success: function(data){');
        Lines.Append('                               try {');
        Lines.Append('                                   var griddata = eval("(" + data + ")");');
        Lines.Append('                                   if(griddata.rows!=null)');
        Lines.Append('                                       grid.datagrid("loadData",griddata);');
        Lines.Append('                                } catch(e) {');
        Lines.Append('                                   alertBootstrap("分页错误:" + e);  // The bootstrap alert (loading EasyUI Grid Page errors).');
        Lines.Append('                                }');
        Lines.Append('                           },');
        Lines.Append('                           error: function(){');
        Lines.Append('                                alertBootstrap("发生系统故障,请与系统管理员联系!");  // The bootstrap alert (system errors).');
        Lines.Append('                           }');
        Lines.Append('                       });');
        Lines.Append('                   }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('              // 普通查询 Ajax');
        Lines.Append('              $("#searchForm").form({');
        Lines.Append('                  url: "${URI}_search.action?menuid=${menuid}",');
        Lines.Append('                  success: function(data) {');
        Lines.Append('                     try {');
        Lines.Append('                        var griddata = eval("(" + data + ")");');
        Lines.Append('                        if(griddata.rows!=null)');
        Lines.Append('                            grid.datagrid("loadData",griddata);');
        Lines.Append('                     } catch(e) {');
        Lines.Append('                        closeProgressBootstrap();  // Close the Bootstrap process window');
        Lines.Append('                        alertBootstrap("查询错误,错误原因:" + e);  // The bootstrap alert (search errors).');
        Lines.Append('                     }');
        Lines.Append('');
        Lines.Append('                     window.setTimeout(function() {');
        Lines.Append('                        closeProgressBootstrap();  // Close the Bootstrap process window');
        Lines.Append('                     }, 500);');
        Lines.Append('                  }');
        Lines.Append('              });');
        Lines.Append('');
        Lines.Append('        });');
        Lines.Append('');
        Lines.Append('        function ajaxBindForm(row) {');
        Lines.Append('        }');
        Lines.Append('    </script>');
        Lines.Append('');
        Lines.Append('');
        Lines.Append('    <div id="searchPanel" class="widget-box">');
        Lines.Append('        <div class="widget-header widget-header-small">');
        Lines.Append('            <h4 class="widget-title">');
        Lines.Append('                <i class="ace-icon fa fa-search"></i>查询条件');
        Lines.Append('            </h4>');
        Lines.Append('        </div>');
        Lines.Append('');
        Lines.Append('        <div class="widget-body" style="background-color: #fff">');
        Lines.Append('            <div class="widget-main">');
        Lines.Append('                <div class="clearfix">');
        Lines.Append('                    <%-- Search Begin --%>');
        Lines.Append('                    <form id="searchForm" method="post">');
        Lines.Append('                        <table class="table-xs">');
        Lines.Append(temp3.Text);
        Lines.Append('                        </table>');
        Lines.Append('                    </form>');
        Lines.Append('                    <%-- Search End --%>');
        Lines.Append('                </div>');
        Lines.Append('            </div>');
        Lines.Append('        </div>');
        Lines.Append('    </div>');
        Lines.Append('');
        Lines.Append('    <div id="gridPanel" class="widget-box" style="margin-top: 10px;">');
        Lines.Append('        <div class="widget-header">');
        Lines.Append('            <h4 class="widget-title">');
        Lines.Append('                <i class="ace-icon fa fa-table"></i>查询列表');
        Lines.Append('            </h4>');
        Lines.Append('            <span class="widget-toolbar">');
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-pink" data-rel="tooltip" data-placement="bottom" title="导出数据" onclick="exportExcel(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-export"></span> 导 出');
        Lines.Append('                </button>');
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-purple" data-rel="tooltip" data-placement="bottom" title="导入数据" onclick="importExcel(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-import"></span> 导 入');
        Lines.Append('                </button>');
        Lines.Append('                <button type="button" class="btn btn-xs btn-white btn-success" data-rel="tooltip" data-placement="bottom" title="刷新数据" onclick="refreshPage(''${menuid}'', ''${URI}'')" >');
        Lines.Append('                    <span class="glyphicon glyphicon-refresh"></span> 刷 新');
        Lines.Append('                </button>');
        Lines.Append('            </span>');
        Lines.Append('        </div>');
        Lines.Append('');
        Lines.Append('        <div class="widget-body">');
        Lines.Append('            <div class="widget-main">');
        Lines.Append('                <%-- Grid 对象 --%>');
        Lines.Append('                <div style="margin: -14px -13px -13px -13px">');
        Lines.Append('                    <div id="cxGrid"></div>');
        Lines.Append('                </div>');
        Lines.Append('                <%-- Grid End --%>');
        Lines.Append('            </div>');
        Lines.Append('        </div>');
        Lines.Append('    </div>');
        Lines.Append('');
        Lines.Append('');
        Lines.Append('    <%-- Edit Page Begin --%>');
        Lines.Append('    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">');
        Lines.Append('        <div class="modal-dialog">');
        Lines.Append('           <div class="modal-content">');
        Lines.Append('               <div class="modal-header">');
        Lines.Append('                   <a class="close" onclick="$(''#editModal'').modal(''hide'')" href="#">×</a>');
        Lines.Append('                   <div style="width:30px; text-align:center; valign:middle; float:left;">');
        Lines.Append('                       <img src="${path}/global/images/base/node32.png"/>');
        Lines.Append('                   </div>');
        Lines.Append('                   <h4 class="modal-title" id="editModalLabel"><标题></h4>');
        Lines.Append('               </div>');
        Lines.Append('               <div class="modal-body">');
        Lines.Append('                   <form id="saveForm" method="post" action="${URI}_save.action?ajax=true&menuid=${menuid}" class="saveCalss form-horizontal" role="form">');
        Lines.Append('                       <input type="hidden" name="' + getTopLowerChar(clazz) + 'Entity.id" value="${' + getTopLowerChar(clazz) + 'Entity.id}" />');
        Lines.Append('                       <!-- 添加自己需要的 hidden 字段 -->');
        Lines.Append('');
        Lines.Append('                       <table width="100%" class="table-xs" style="table-layout:fixed;">');
        Lines.Append(temp.Text);
        Lines.Append('                       </table>');
        Lines.Append('                   </form>');
        Lines.Append('');
        Lines.Append('                   <!-- Alert Begin -->');
        Lines.Append('                   <div class="alert alert-danger alert-dismissible fade in" style="margin-top: 10px;">');
        Lines.Append('                       <a class="close" onclick="$(''.alert'').hide();" href="#">×</a>');
        Lines.Append('                       <span id="alertMessage"></span>');
        Lines.Append('                   </div>');
        Lines.Append('                   <!-- Alert End -->');
        Lines.Append('               </div>');
        Lines.Append('');
        Lines.Append('               <div id="footerBar" class="modal-footer">');
        Lines.Append('                   <button id="saveButton" type="button" class="btn btn-sm btn-primary" data-loading-text="处理中..." onclick="ajaxSave();"><span class="glyphicon glyphicon-ok"></span> 保 存</button>');
        Lines.Append('                   <button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 取 消</button>');
        Lines.Append('               </div>');
        Lines.Append('');
        Lines.Append('               <div id="footerCloseBar" class="modal-footer" style="display: none">');
        Lines.Append('                   <button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 关 闭</button>');
        Lines.Append('               </div>');
        Lines.Append('            </div>');
        Lines.Append('        </div>');
        Lines.Append('    </div>');
        Lines.Append('    <%-- Edit Page End --%>');
        Lines.Append('');
      end;

    finally
      UniQueryColumn.First;
      UniQueryColumn.EnableControls;
      temp.Free;
      temp1.Free;
      temp2.Free;
      temp3.Free;
    end;
  end;
end;


{********************
 BuilderCode 编译子表 Entity
********************}
procedure TFm_Code.BuilderDetailEntity(clazz:String);
var
  fieldsLs: TStrings;
  getsetLs: TStrings;

  function getType(xtype:String):String;
  begin
    if (xtype = 'NUMBER') then
      result := 'BigDecimal'
    else if (xtype = 'DATE') then
      result := 'Date'
    else if (xtype = 'VARCHAR2') then
      result := 'String'
    else
      result := '<人工定义>';
  end;

  function getLine(str:String):String;
  var
    l: Integer;
    s, t: String;
  begin
    s := Trim(str);
    t := copy(str, length(str) - 1, 1);
    if (t = ',') then
       result := copy(s, 0, length(s) - 1)
    else
       result := s;
  end;

begin
  fieldsLs := TStringList.Create;
  getsetLs := TStringList.Create;

  fieldsLs.Append('');
  fieldsLs.Append('    private BigDecimal rowno;');

  with UniQueryColumn do
  begin
    First;
    DisableControls;
    try
      // 1 开始循环
      while not Eof do
      begin
        // Field 默认 false
        if (not FieldByName('Field').AsBoolean) then
        begin
          Next;
          Continue;
        end;

        // 生成 Java 属性
        fieldsLs.Append('');
        fieldsLs.Append('    private ' + getType(FieldByName('FieldType').AsString) + ' ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');

        // 生成 Java get/set 方法
        getsetLs.Append('');
        getsetLs.Append('    public ' + getType(FieldByName('FieldType').AsString) + ' get' + getTopUpperChar(FieldByName('FieldName').AsString) + '() { ');
    		getsetLs.Append('        return ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');
        getsetLs.Append('    }');
        getsetLs.Append('');
        getsetLs.Append('    public void set' + getTopUpperChar(FieldByName('FieldName').AsString) + '(' + getType(FieldByName('FieldType').AsString) + ' ' + getTopLowerChar(FieldByName('FieldName').AsString) + ') { ');
    		getsetLs.Append('        this.' + getTopLowerChar(FieldByName('FieldName').AsString) + ' = ' + getTopLowerChar(FieldByName('FieldName').AsString) + ';');
        getsetLs.Append('    }');

        Next;
      end;

      getsetLs.Append('');
      getsetLs.Append('    public BigDecimal getRowno() { ');
      getsetLs.Append('        return rowno;');
      getsetLs.Append('    }');
      getsetLs.Append('');
      getsetLs.Append('    public void setRowno(BigDecimal rowno) { ');
      getsetLs.Append('        this.rowno = rowno;');
      getsetLs.Append('    }');

      // 3 编译成 Entity 代码
      with EntityMemo do
      begin
         getAuthor(EntityMemo, FEditUser);
         Lines.Append('package ' + FPackage + '.entity;');
         Lines.Append('');
         Lines.Append('import java.math.BigDecimal;');
         Lines.Append('');
         Lines.Append('import org.apache.ibatis.type.Alias;');
         Lines.Append('');
         Lines.Append('import com.web.api.core.entity.TEntity;');
         Lines.Append('import com.web.api.core.entity.template.annotation.DetailDaoRef;');
         Lines.Append('');
         Lines.Append('@Alias("' + clazz + 'DetailEntity")');
         Lines.Append('@DetailDaoRef(DaoName="' + getTopLowerChar(clazz) + 'DetailDao")');
         Lines.Append('public class ' + clazz + 'DetailEntity implements TEntity<' + EntityIDType + '> {');
         Lines.Append('');
         Lines.Append('    private static final long serialVersionUID = 1L;');
         Lines.Append(fieldsLs.Text);
         Lines.Append(getsetLs.Text);
         Lines.Append('}');
      end;
    finally
      fieldsLs.Free;
      getsetLs.Free;
      UniQueryColumn.First;
      UniQueryColumn.EnableControls;
    end;
  end;
end;

{********************
 BuilderCode 编译子表 Dao
********************}
procedure TFm_Code.BuilderDetailDao(clazz: String);
begin
  with DaoMemo do
  begin
    getAuthor(DaoMemo, FEditUser);
    Lines.Append('package ' + FPackage + '.dao;');
    Lines.Append('');
    Lines.Append('import com.web.api.core.dao.DetailDao;');
    Lines.Append('import ' + FPackage + '.entity.' + clazz + 'DetailEntity;');
    Lines.Append('');
    Lines.Append('public interface ' + clazz + 'DetailDao extends DetailDao<' + clazz + 'DetailEntity, ' + EntityIDType + '> {');
    Lines.Append('');
    Lines.Append('}');
  end;
end;

{********************
 BuilderCode 编译子表 Service
********************}
procedure TFm_Code.BuilderDetailService(clazz: String);
begin
  with ServiceMemo do
  begin
    getAuthor(ServiceMemo, FEditUser);
    Lines.Append('<无>');
  end;

  with ServiceImplMemo do
  begin
    getAuthor(ServiceImplMemo, FEditUser);
    Lines.Append('<无>');
  end;
end;

{********************
 BuilderCode 编译子表 Action
********************}
procedure TFm_Code.BuilderDetailAction(clazz: String);
begin
  with ActionMemo do
  begin
    getAuthor(ActionMemo, FEditUser);
    Lines.Append('< Action 片段代码>');
    Lines.Append('');
    Lines.Append('    @TemplateDetailEntity');
    Lines.Append('    private List<' + clazz + 'DetailEntity> ' + getTopLowerChar(clazz) + 'DetailEntity = new ArrayList<' + clazz + 'DetailEntity>();');
    Lines.Append('');
    Lines.Append('    public List<' + clazz + 'DetailEntity> get' + clazz + 'DetailEntity() {');
    Lines.Append('        return ' + getTopLowerChar(clazz) + 'DetailEntity;');
    Lines.Append('    }');
    Lines.Append('');
    Lines.Append('    public void set' + clazz + 'DetailEntity(');
    Lines.Append('            List<' + clazz + 'DetailEntity> ' + getTopLowerChar(clazz) + 'DetailEntity) {');
    Lines.Append('        this.' + getTopLowerChar(clazz) + 'DetailEntity = ' + getTopLowerChar(clazz) + 'DetailEntity;');
    Lines.Append('    }');
    Lines.Append('');
  end;
end;

{********************
 BuilderCode 编译子表 Spring
********************}
procedure TFm_Code.BuilderDetailSpring(clazz:String);
begin
  SpringMemo.Clear;
  SpringMemo.Lines.Append('');
  SpringMemo.Lines.Append('<无>');
end;

{********************
 BuilderCode 编译子表 Struts
********************}
procedure TFm_Code.BuilderDetailStruts(clazz: String);
begin
  with StrutsMemo do
  begin
    Clear;
    Lines.Append('');
    Lines.Append('<无>');
  end;
end;

{********************
 BuilderCode 编译子表 MyBatis
********************}
procedure TFm_Code.BuilderDetailMyBatis(clazz: String);
begin
  with MyBatisMemo do
  begin
    Clear;
    Lines.Append('<?xml version="1.0" encoding="UTF-8"?>');
    Lines.Append('');
    Lines.Append('<!DOCTYPE mapper');
    Lines.Append('PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"');
    Lines.Append('"http://mybatis.org/dtd/mybatis-3-mapper.dtd">');
    Lines.Append('<mapper namespace="' + FPackage + '.dao.' + clazz + 'DetailDao">');
    Lines.Append('');
    Lines.Append('    <select id="selectAll" parameterType="String" resultType="' + clazz + 'DetailEntity">');
    Lines.Append('        select * from ' + LowerCase(FEditTable) + ' where pid = #{pid}');
    Lines.Append('    </select>');
    Lines.Append('');
    if (PanelID.Visible = false) then
    begin
    Lines.Append('    <insert id="insert" parameterType="' + clazz + 'DetailEntity" useGeneratedKeys="true" keyProperty="id">');
    Lines.Append('        <selectKey resultType="String" keyProperty="id" order="BEFORE">');
    if (CheckBoxGuiMe.Checked) then
    Lines.Append('            select to_char(sysdate, ''yymmdd'') || ' + LowerCase(FEditTable) + '_seq.nextval from dual')
    else
    Lines.Append('            select to_char(sysdate, ''yymmdd'') || java_seq.nextval from dual');
    Lines.Append('        </selectKey>');
    end
    else
    begin
    Lines.Append('    <insert id="insert" parameterType="' + clazz + 'DetailEntity">');
    end;
    Lines.Append('        insert into ' + LowerCase(FEditTable));
    Lines.Append('        <trim prefix="(" suffix=")" suffixOverrides=",">');

    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        Lines.Append('            id,');
        UniQueryColumn.Next;
        Continue;
      end;

      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME') or
         (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ','));
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ',');
      Lines.Append('            </if>');

      UniQueryColumn.Next;
    end;

    Lines.Append('        </trim>');
    Lines.Append('        <trim prefix="values (" suffix=")" suffixOverrides=",">');
    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        Lines.Append('            #{id},');
        UniQueryColumn.Next;
        Continue;
      end;

      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME')then
      begin
        Lines.Append('            sysdate,');
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            0,');
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                #{' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + '},');
      Lines.Append('            </if>');

      UniQueryColumn.Next;
    end;
    Lines.Append('        </trim>');
    Lines.Append('    </insert>');

    Lines.Append('');
    Lines.Append('    <update id="update" parameterType="' + clazz + 'DetailEntity">');
    Lines.Append('        update ' + LowerCase(FEditTable));
    Lines.Append('        <set>');
    UniQueryColumn.First;
    while not UniQueryColumn.Eof do
    begin
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ID') then
      begin
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWTIME')then
      begin
        Lines.Append('            rowtime = sysdate,');
        UniQueryColumn.Next;
        Continue;
      end;
      if (UpperCase(UniQueryColumn.FieldByName('FieldName').AsString) = 'ROWVER') then
      begin
        Lines.Append('            rowver = rowver + 1,');
        UniQueryColumn.Next;
        Continue;
      end;

      Lines.Append('            <if test="' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString + ' != null">'));
      Lines.Append('                ' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + ' = #{' + LowerCase(UniQueryColumn.FieldByName('FieldName').AsString) + '},');
      Lines.Append('            </if>');
      UniQueryColumn.Next;
    end;
    Lines.Append('        </set>');
    if (PanelID.Visible = false) then
      Lines.Append('        where id = #{id}')
    else
      Lines.Append('        where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
    Lines.Append('    </update>');
    Lines.Append('');

    Lines.Append('    <select id="selectArrayId" resultType="Map">');
    Lines.Append('        select * from ' + LowerCase(FEditTable) + ' where pid = #{pid}');
    Lines.Append('    </select>');
    Lines.Append('');
    Lines.Append('    <delete id="deleteById" parameterType="String">');
    if (PanelID.Visible = false) then
      Lines.Append('        delete from ' + LowerCase(FEditTable) + ' where id = #{id}')
    else
      Lines.Append('        delete from ' + LowerCase(FEditTable) + ' where ' + LowerCase(ComboBoxKey.Text) + ' = #{' + LowerCase(ComboBoxKey.Text) + '}');
    Lines.Append('    </delete>');
    Lines.Append('');
    Lines.Append('</mapper>');
  end;
end;

{********************
 BuilderCode 编译子表 List.jsp
********************}
procedure TFm_Code.BuilderDetailList(clazz:String);
begin
  with ListMemo do
  begin
    Clear;
    Lines.Append('');
    Lines.Append('<无>');
  end;
end;

{********************
 BuilderCode 编译子表 Edit.jsp
********************}
procedure TFm_Code.BuilderDetailEdit(clazz:String);
begin
  with EditMemo do
  begin
    Clear;
    Lines.Append('');
    Lines.Append('<无>');
  end;
end;

{********************
 BuilderCode 编译子表 Form.jsp
********************}
procedure TFm_Code.BuilderDetailForm(clazz:String);
begin
  with BootstrapMemo do
  begin
    Clear;
    Lines.Append('');
    Lines.Append('<Bootstrap 方式不支持子表展现>');
  end;
end;

end.
