object Fm_Menu: TFm_Menu
  Left = 0
  Top = 0
  Caption = #33756#21333#31649#29702
  ClientHeight = 477
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBody: TPanel
    Left = 0
    Top = 24
    Width = 497
    Height = 453
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object DBTreeList: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 497
      Height = 453
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = DataSourceMenu
      DataController.ParentField = 'SID'
      DataController.KeyField = 'ID'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      Navigator.Buttons.CustomButtons = <>
      OptionsSelection.CellSelect = False
      OptionsView.BandLineHeight = 24
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      Styles.Background = Row2
      Styles.Selection = Select
      Styles.ContentEven = Row2
      Styles.ContentOdd = Row1
      TabOrder = 0
      object DBTreeListID: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'ID'
        Width = 120
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListSID: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'SID'
        Width = 75
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListTYPE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'TYPE'
        Width = 77
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListCOLID: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'COLID'
        Width = 69
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListMENU: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'MENU'
        Width = 95
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListURL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'URL'
        Width = 281
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListICO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'ICO'
        Width = 203
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListPOWER: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        DataBinding.FieldName = 'POWER'
        Width = 60
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListWRITE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        DataBinding.FieldName = 'WRITE'
        Width = 61
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListMENUGROUPID: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'MENUGROUPID'
        Width = 61
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListMENUGROUPNAME: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'MENUGROUPNAME'
        Width = 104
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListDESCRIPTION: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 120
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListDELFLAG: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        DataBinding.FieldName = 'DELFLAG'
        Width = 57
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DBTreeListDIRICO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        DataBinding.FieldName = 'DIRICO'
        Width = 216
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object Panel: TPanel
    Left = 505
    Top = 24
    Width = 332
    Height = 453
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      332
      453)
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 21
      Height = 13
      Caption = 'PID:'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 28
      Height = 13
      Caption = #31867#22411':'
    end
    object Label4: TLabel
      Left = 209
      Top = 88
      Width = 28
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #24207#21015':'
    end
    object Label5: TLabel
      Left = 16
      Top = 120
      Width = 52
      Height = 13
      Caption = #33756#21333#21517#31216':'
    end
    object Label6: TLabel
      Left = 16
      Top = 152
      Width = 28
      Height = 13
      Caption = #22320#22336':'
    end
    object Label7: TLabel
      Left = 16
      Top = 184
      Width = 28
      Height = 13
      Caption = #22270#26631':'
    end
    object Label10: TLabel
      Left = 16
      Top = 216
      Width = 52
      Height = 13
      Caption = #30446#24405#22320#22336':'
    end
    object cxGroupBox2: TcxGroupBox
      Left = 16
      Top = 349
      Anchors = [akLeft, akTop, akRight]
      Caption = #20998#32452
      TabOrder = 10
      DesignSize = (
        296
        95)
      Height = 95
      Width = 296
      object Label8: TLabel
        Left = 24
        Top = 30
        Width = 27
        Height = 13
        Caption = #32452'ID:'
      end
      object Label9: TLabel
        Left = 24
        Top = 62
        Width = 40
        Height = 13
        Caption = #32452#21517#31216':'
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 70
        Top = 26
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataSource = DataSourceMenu
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 0
        Width = 214
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 70
        Top = 59
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataSource = DataSourceMenu
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 1
        Width = 214
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 16
      Top = 244
      Caption = #21024#38500#26631#35760
      DataBinding.DataField = 'DELFLAG'
      DataBinding.DataSource = DataSourceMenu
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 8
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 72
      Top = 21
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DataSourceMenu
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
      Width = 232
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 72
      Top = 53
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'SID'
      DataBinding.DataSource = DataSourceMenu
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 1
      Width = 232
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 72
      Top = 85
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'TYPE'
      DataBinding.DataSource = DataSourceMenu
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 2
      Width = 123
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 240
      Top = 85
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'COLID'
      DataBinding.DataSource = DataSourceMenu
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 3
      Width = 64
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 72
      Top = 117
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'MENU'
      DataBinding.DataSource = DataSourceMenu
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 4
      Width = 232
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 72
      Top = 149
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'URL'
      DataBinding.DataSource = DataSourceMenu
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 5
      Width = 232
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 72
      Top = 181
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'ICO'
      DataBinding.DataSource = DataSourceMenu
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 6
      Width = 232
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 72
      Top = 213
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'DIRICO'
      DataBinding.DataSource = DataSourceMenu
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 7
      Width = 232
    end
    object cxGroupBox1: TcxGroupBox
      Left = 16
      Top = 273
      Anchors = [akLeft, akTop, akRight]
      Caption = #26435#38480
      TabOrder = 9
      Height = 66
      Width = 296
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 29
        Caption = #35775#38382#26435#38480
        DataBinding.DataField = 'POWER'
        DataBinding.DataSource = DataSourceMenu
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 0
        Width = 81
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 152
        Top = 29
        Caption = #20889#20837#26435#38480
        DataBinding.DataField = 'WRITE'
        DataBinding.DataSource = DataSourceMenu
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 1
        Width = 81
      end
    end
  end
  object Splitter: TcxSplitter
    Left = 497
    Top = 24
    Width = 8
    Height = 453
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salRight
    Control = Panel
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 837
    Height = 24
    BarManager = Fm_Main.BarManager
    ColorSchemeName = 'Office2010Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    Style = rs2010
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 3
    TabStop = False
  end
  object UniQueryMenu: TUniQuery
    Connection = DBA.UniConnection
    SQL.Strings = (
      'select * from system_menu order by id,colid')
    ReadOnly = True
    OnNewRecord = UniQueryMenuNewRecord
    Left = 128
    Top = 136
    object UniQueryMenuID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object UniQueryMenuSID: TFloatField
      DisplayLabel = 'PID'
      FieldName = 'SID'
    end
    object UniQueryMenuTYPE: TStringField
      DisplayLabel = #31867#22411
      FieldName = 'TYPE'
      Size = 10
    end
    object UniQueryMenuCOLID: TFloatField
      DisplayLabel = #24207#21015
      FieldName = 'COLID'
    end
    object UniQueryMenuMENU: TStringField
      DisplayLabel = #33756#21333#21517#31216
      FieldName = 'MENU'
      Size = 50
    end
    object UniQueryMenuURL: TStringField
      DisplayLabel = #22320#22336
      FieldName = 'URL'
      Size = 1000
    end
    object UniQueryMenuICO: TStringField
      DisplayLabel = #22270#26631
      FieldName = 'ICO'
      Size = 1000
    end
    object UniQueryMenuPOWER: TFloatField
      DisplayLabel = #35775#38382#26435#38480
      FieldName = 'POWER'
    end
    object UniQueryMenuWRITE: TFloatField
      DisplayLabel = #20889#20837#26435#38480
      FieldName = 'WRITE'
    end
    object UniQueryMenuMENUGROUPID: TFloatField
      DisplayLabel = #32452'ID'
      FieldName = 'MENUGROUPID'
    end
    object UniQueryMenuMENUGROUPNAME: TStringField
      DisplayLabel = #32452#21517#31216
      FieldName = 'MENUGROUPNAME'
      Size = 50
    end
    object UniQueryMenuDESCRIPTION: TStringField
      DisplayLabel = #25551#36848
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object UniQueryMenuDELFLAG: TFloatField
      DisplayLabel = #21024#38500#26631#35760
      FieldName = 'DELFLAG'
    end
    object UniQueryMenuDIRICO: TStringField
      DisplayLabel = #30446#24405#22270#26631
      FieldName = 'DIRICO'
      Size = 1000
    end
  end
  object DataSourceMenu: TDataSource
    DataSet = UniQueryMenu
    Left = 224
    Top = 136
  end
  object ClassStyleRepository: TcxStyleRepository
    Left = 333
    Top = 136
    PixelsPerInch = 96
    object Row1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object Row2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object IndicatorNumber: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clRed
    end
    object None: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object Select: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16767935
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object HereStyle: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object TopStyle: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 553645035
      TextColor = clBlack
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = Row1
      Styles.Content = Row2
      BuiltIn = True
    end
  end
  object ActionList: TActionList
    Images = Fm_Main.cxLargeImages
    Left = 424
    Top = 136
    object ActionAppend: TAction
      Caption = #26032#24314
      ImageIndex = 0
      OnExecute = ActionAppendExecute
      OnUpdate = ActionAppendUpdate
    end
    object ActionModify: TAction
      Caption = #20462#25913
      ImageIndex = 71
      OnExecute = ActionModifyExecute
      OnUpdate = ActionAppendUpdate
    end
    object ActionDelete: TAction
      Caption = #21024#38500
      ImageIndex = 10
      OnExecute = ActionDeleteExecute
      OnUpdate = ActionAppendUpdate
    end
    object ActionSave: TAction
      Caption = #20445#23384
      ImageIndex = 2
      OnExecute = ActionSaveExecute
      OnUpdate = ActionSaveUpdate
    end
    object ActionCanel: TAction
      Caption = #21462#28040
      ImageIndex = 11
      OnExecute = ActionCanelExecute
      OnUpdate = ActionSaveUpdate
    end
    object ActionExp: TAction
      Caption = #23637#24320#33756#21333
      ImageIndex = 17
      OnExecute = ActionExpExecute
    end
    object ActionColl: TAction
      Caption = #25910#32553#33756#21333
      ImageIndex = 18
      OnExecute = ActionCollExecute
    end
  end
  object UniQueryType: TUniQuery
    Connection = DBA.UniConnection
    SQL.Strings = (
      'select type from system_menu group by type order by 1')
    ReadOnly = True
    Left = 128
    Top = 216
    object UniQueryTypeTYPE: TStringField
      FieldName = 'TYPE'
      Size = 10
    end
  end
end
