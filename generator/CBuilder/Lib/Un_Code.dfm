object Fm_Code: TFm_Code
  Left = 0
  Top = 0
  Caption = #29983#25104#20195#30721
  ClientHeight = 742
  ClientWidth = 1222
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object sImage1: TsImage
    Left = 104
    Top = 121
    Width = 105
    Height = 105
    Picture.Data = {07544269746D617000000000}
    SkinData.SkinSection = 'CHECKBOX'
  end
  object CodePage: TcxPageControl
    Left = 0
    Top = 24
    Width = 1222
    Height = 718
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Table
    Properties.CustomButtons.Buttons = <>
    Properties.Images = cxSmallImages
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    ClientRectBottom = 712
    ClientRectLeft = 2
    ClientRectRight = 1216
    ClientRectTop = 31
    object Table: TcxTabSheet
      Caption = #20195#30721#29983#25104#21069#30340#34920#37197#32622'  '
      ImageIndex = 22
      object Grid: TcxGrid
        Left = 0
        Top = 35
        Width = 1214
        Height = 646
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object GridDBBandedTableView: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DataSourceColumn
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 24
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 24
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OptionsView.BandHeaderHeight = 24
          OptionsView.FixedBandSeparatorColor = clGray
          OptionsView.FixedBandSeparatorWidth = 1
          Styles.Background = Row2
          Styles.Content = Row1
          Styles.ContentEven = Row2
          Styles.Selection = Select
          OnCustomDrawIndicatorCell = GridDBBandedTableViewCustomDrawIndicatorCell
          Bands = <
            item
              Caption = #23383#27573
              FixedKind = fkLeft
              Width = 304
            end
            item
              Caption = #22522#26412#20449#24687
              Width = 390
            end
            item
              Caption = #39564#35777' Hibernate Validtor'
              Width = 256
            end
            item
              Caption = 'JSP'#37197#32622'(list.jsp)'
              Width = 148
            end
            item
              Caption = 'JSP'#37197#32622'(edit.jsp)'
              Width = 106
            end>
          object GridDBBandedTableViewField: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Field'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 55
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewFieldName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FieldName'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewDisplay: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Title'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 138
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewFieldType: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FieldType'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewSearch: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Search'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 66
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewImport: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Import'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 66
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewExport: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Export'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewValidate_NotRepeat: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Validate_NotRepeat'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = GridDBBandedTableViewValidate_NotRepeatPropertiesChange
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 60
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewValidate_NotNull: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Validate_NotNull'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 61
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewValidate_Length: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Validate_Length'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 62
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewValidate_Email: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Validate_Email'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Options.Sorting = False
            Width = 64
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewList_FixOut: TcxGridDBBandedColumn
            DataBinding.FieldName = 'List_FixOut'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = GridDBBandedTableViewList_FixOutPropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 86
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewList_Out: TcxGridDBBandedColumn
            DataBinding.FieldName = 'List_Out'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = GridDBBandedTableViewList_OutPropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableViewEdit_Out: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Edit_Out'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object GridLevel: TcxGridLevel
          GridView = GridDBBandedTableView
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1214
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = clInfoBk
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          1214
          35)
        object PanelID: TPanel
          Left = 0
          Top = 0
          Width = 377
          Height = 35
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          object Label6: TLabel
            Left = 14
            Top = 9
            Width = 27
            Height = 17
            Caption = #20027#38190':'
          end
          object ComboBoxKey: TcxComboBox
            Left = 47
            Top = 5
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
            TabOrder = 0
            Width = 160
          end
        end
        object CheckBoxGuiMe: TCheckBox
          Left = 1042
          Top = 9
          Width = 167
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #30789#31859#21151#33021' (StoreID'#12289#24207#21015')'
          TabOrder = 1
        end
      end
    end
    object Entity: TcxTabSheet
      Caption = 'Entity  '
      ImageIndex = 32
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object EntityMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJava
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Dao: TcxTabSheet
      Caption = 'Dao  '
      ImageIndex = 32
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DaoMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJava
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Service: TcxTabSheet
      Caption = 'Service  '
      ImageIndex = 32
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 177
        Width = 1214
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 195
      end
      object ServiceImplMemo: TSyntaxMemo
        Left = 0
        Top = 180
        Width = 1214
        Height = 501
        SyntaxAnalyzer = SyntAnalyzerJava
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object ServiceMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 177
        SyntaxAnalyzer = SyntAnalyzerJava
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
    end
    object Action: TcxTabSheet
      Caption = 'Action  '
      ImageIndex = 32
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ActionMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJava
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Spring: TcxTabSheet
      Caption = 'Spring '#37197#32622#25991#20214'  '
      ImageIndex = 37
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SpringMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerXML
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Struts: TcxTabSheet
      Caption = 'Struts '#37197#32622#25991#20214'  '
      ImageIndex = 33
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object StrutsMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerXML
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object MyBatis: TcxTabSheet
      Caption = 'MyBatis '#26144#20687#25991#20214'  '
      ImageIndex = 38
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MyBatisMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerXML
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object JSPList: TcxTabSheet
      Caption = 'JSP(list.jsp)  '
      ImageIndex = 34
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ListMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJSP
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object JSPEdit: TcxTabSheet
      Caption = 'JSP(edit.jsp)  '
      ImageIndex = 34
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object EditMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJSP
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object TabSheetBootstrap: TcxTabSheet
      Caption = 'JSP(form.jsp)  '
      ImageIndex = 34
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object BootstrapMemo: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 681
        SyntaxAnalyzer = SyntAnalyzerJSP
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'MS Sans Serif'
        NonPrinted.Font.Style = []
        LineNumbers.UnderColor = clActiveCaption
        LineNumbers.Margin = 0
        LineNumbers.Alignment = taCenter
        LineNumbers.Font.Charset = ANSI_CHARSET
        LineNumbers.Font.Color = clGray
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Tahoma'
        LineNumbers.Font.Style = []
        LineNumbers.Band = 0
        Gutter.Width = 47
        Gutter.Color = 13408665
        Gutter.ExpandButtons.Data = {
          4E030000424D4E030000000000003600000028000000180000000B0000000100
          18000000000018030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC9999F4F4F4
          CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4CC9999CC9999CC9999CC9999CC99
          99F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4
          F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4F4F4F4F4
          CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4F4F4F4F4
          F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFFCC9999F4
          F4F4F4F4F4F4F4F4CC9999F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFFFFFFFFFF
          CC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FFFFFFFFFF
          FFFFFFFFCC9999F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4CC9999FF
          FFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC9999CC9999
          CC9999FFFFFFFFFFFFFFFFFFCC9999CC9999CC9999CC9999CC9999CC9999CC99
          99CC9999CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Gutter.Bands = <
          item
            Width = 30
            Color = 16053492
            Gradient = True
            GradientRight = 16053492
          end
          item
            Width = 3
            Color = 15790320
          end
          item
            Width = 14
            Color = clCream
          end>
        Gutter.Objects = <
          item
            Tag = 0
          end>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = 13408665
        Gutter.SeparatorColor = clWhite
        Gutter.AutoSize = True
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'MS Sans Serif'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        StaplePen.Color = clGray
        StapleOffset = 4
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Courier New'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Courier New'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Courier New'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.BgColor = 15138815
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Courier New'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        LineStateDisplay.Band = 1
        LineStateDisplay.NewColor = clSkyBlue
        LineStateDisplay.SavedColor = clLime
        DefaultPopup = False
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret]
        BorderStyle = bsNone
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Tahoma'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1222
    Height = 24
    BarManager = Fm_Main.BarManager
    ColorSchemeName = 'Office2010Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    Style = rs2010
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 1
    TabStop = False
  end
  object cxSmallImages: TcxImageList
    FormatVersion = 1
    DesignInfo = 15204799
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFFFDF4EBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1E6FFFCF0
          E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FFFFF7F0FFFFF7EFFFFEF7EEFFFEF6ECFFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          002900000029000000290000002000000009000000010000000018577FBB0D61
          96FF075B92FF075A92FF065A92FF065A92FF065A92FF065A92FF065A93FF065A
          92FF075A92FF065A92FF065C93FE010A103C00000005000000000C6199FB4198
          C2FF6BB5D3FF38C7ECFF0BB8E6FF0BB4E5FF0BB0E3FF0BADE1FF0AA9DFFF09A7
          DDFF09A2DCFF099DDAFF0980B7FF065277C20000000E0000000009679EFF5CBA
          E6FF2686B2FF90E7F8FF1BCCF3FF1CC9F1FF19C6EFFF15C1ECFF0DBCEAFF0CB8
          E8FF0BB4E6FF0BAFE4FF0BA2D9FF0A75A8FC0003041D000000000B75AAFF6CC8
          F2FF3994BEFF97CEE2FF59DFF8FF3CD7F6FF39D4F5FF31D0F3FF26CAF0FF19C4
          EEFF11BFEBFF11BBEAFF10B7E8FF0C83B6FF06476190000000000D82B6FF83D4
          F6FF3EAEDEFF3F8EB7FFB3F3FDFF62E3FAFF5EE1F9FF53DDF8FF45D9F5FF33D3
          F3FF22CCF1FF16C7EFFF16C4EDFF12ACD9FF0A73A4F200000000108CBFFF9DE2
          F9FF27BBF1FF3485B3FFBDDBE9FF9AF0FDFF86ECFCFF78E9FBFF65E3F9FF4EDE
          F7FF38D8F5FF26D1F2FF1DCEF2FF1CCBF1FF0C7CAFFF06384C65108FC4FFB8ED
          FCFF3BCAF5FF52B1D8FF5B98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFFA6F0FCFF88EBFBFF6BE3F9FF59DEF7FF32B0D6FF12709CE11093C8FFD0F6
          FEFF56DBF9FF4BD4F7FF2170A4FF065E98FF075E98FF065E98FF075E98FF075E
          98FF075E98FF075F98FF075F98FF075E98FF075E98FF076099FF1197CDFFE3FB
          FFFF77EBFDFF6AE7FCFF5CE1FBFF50DBF9FF45D6F9FF3AD0F8FF32CBF6FF2BC6
          F5FF26C2F3FF22BDF2FF1FB9F1FF0C70A2FF0000000900000000129BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7CEFFEFF6DEAFDFF6DE8FCFFB3F2FDFFA1ECFCFF8DE6
          FBFF77DFFAFF63D8F8FF48C5EEFF0C74A6FF0000000600000000129ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7EE7F8FF1091C5FF108EC2FF0F8BBEFF0E87BBFF0E85
          B7FF0E82B4FF0D7FB1FF1683B3FB186988B200000002000000002BA7D7FBE0F3
          FAFFF2F8FAFBD9F2F9FF28A0CEFB000000020000000200000002000000030000
          000300000003000000030000000300000002000000000000000047879DAF2BA8
          D7FB12A0D5FF29A4D4FB44829AAF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000001000000010000000100000001000000010000000100000000
          000000000000000000000001000000010000000100000003000007FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A8E6B
          45C9B57039FFB36D35FF252525FF202020FF1D1D1DFF191919FF151515FF1212
          12FF0F0F0FFF0C0C0CFFA1551BFFA05319FF805428D20000001300000011BC78
          41FFEEC18FFFEFCA9FFF343434FF2F2F2FFF2B2B2BFF282828FF232323FF2020
          20FFE7BE90FF181818FFE5BD8DFFDDAA6FFFA1541AFF0000002000000011C07E
          48FFF1C694FFF1CDA5FF454545FF404040FF3C3C3CFF373737FF333333FF2E2E
          2EFFE9C092FF272727FFE6BD8FFFDFAE71FFA3571CFF000000220000000FC583
          4EFFF3CA9AFFF3D1A8FF585858FF535353FF4E4E4EFF494949FF444444FF3F3F
          3FFFE9C293FF363636FFE8BF91FFE1AE74FFA55A20FF000000200000000EC988
          53FFF5CEA1FFF5D5AEFF6B6B6BFF666666FF616161FF5C5C5CFF575757FF5252
          52FF4D4D4DFF484848FFE9C292FFE3B077FFA85E25FF0000001E0000000CCE8D
          59FFF8D4A8FFF8D8B3FFF5D5ADFFF4D0A6FFF1CDA1FFEFCA9DFFEEC89BFFEDC8
          9AFFEDC598FFECC496FFEAC495FFE4B378FFAA6128FF0000001C0000000BD292
          5EFFFBD7AEFFF8D1A7FFF6CE9EFFF3C997FFF0C490FFEEC08AFFECBD84FFEBBB
          83FFE9BA81FFE9B880FFE8B67DFFE7B57CFFAE662DFF0000001B00000009D797
          64FFFDDCB4FFDBA36CFFDAA26BFFD9A16AFFD9A069FFD89E67FFD69D66FFD69C
          65FFD59A63FFD49962FFD39760FFE8B77EFFB16A32FF0000001900000008DA9C
          69FFFFDFBBFFD99F68FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FFD0935CFFE9BA81FFB56F38FF0000001700000006DEA0
          6EFFFFE5C1FFD69B65FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FFCD8F58FFEBBC83FFB9743DFF0000001500000005E1A4
          71FFFFE7C7FFD39760FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FFCA8B55FFEEBD86FFBD7943FF0000001400000004E3A6
          74FFFFEACDFFD1925DFFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFFC88751FFEFC089FFC27E48FF0000001200000002E5A8
          76FFFFF0D2FFCE8E59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC6844EFFF1C28BFFC6834EFF0000000E00000001AA94
          75C0E5A876FFCB8B56FFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFFC4814CFFCD8C58FF95764FC500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000700000010000000180000
          00210000001D0000000E00000002000000000000000000000000000000000000
          0002000000060000000C000000130202022A0A0A0A550C0C0C980F0E0EBE3131
          31EE0E0E0EE404040470000000190000000400000000000000000000000A0303
          03210C0C0C5213131390232323BC3A3A3AEC3A3939FB848584FFC0C8C4FFBDBF
          BFFF4D4D4DFF262626FB060606A1000000240000000900000001474747AF7979
          79ED2E2E2EFC393939FF434343FF535353FF706E70FFB9C2BDFF70D09DFFC8CF
          CCFF585556FF6D6D6DFF424242FF101010CB020202450000000F9E9E9EFCF9F9
          F9FF7F7F7FFF828282FFB2B2B2FFDDDDDDFFEAEAEBFFEDEFEDFFE0E6E3FFD8D9
          D8FF606060FF6E6E6EFF787878FF616161FF1C1C1CE90707076EB1B1B1F3FFFF
          FFFFF7F7F7FFFBFBFBFFF3F3F3FFE5E5E5FFDBDBDBFFCCCCCCFFC3C2C3FFBBBB
          BBFF979797FF696969FF7A7A7AFF808080FF808080FF252525F5BCBCBCF7F1F1
          F1FFE4E4E4FFDBDBDBFFD5D5D5FFCDCDCDFFCBCBCBFFCACACAFFC7C8C8FFBCBC
          BDFFAEB1B5FF8D8F91FF757373FF828282FF929292FF3A3A3AF96D6D6D94D6D6
          D6FFE0E0E0FFDBDDDDFFD4D6D9FFCDCDCDFFBBBBB9FFA0A09FFF95918CFF8F8A
          80FF63472DFF3C3228FF949799FF808080FF949494FF454545F0020202026F6F
          6F96D3D3D4FFD4D3D1FFBB9A77FFC2B8ACFFC7BDAFFFCDC0ACFFCBBBA3FFD1C2
          A9FFC2955EFF87603CFFB2B7BBFFA8A8A8FF999999FF4D4D4DF7000000000000
          00005C5C5D7BBEBDBDF4DAAF7FFFF3E6D9FFEFE7DDFFE9E0D1FFE5D9C8FFE1D4
          C2FFD9C6ABFFA8733DFF908F8DFB797B7DF26E6E6EEB454545C8000000000000
          0000000000002A2B2B37A18D78C8F1DDC6FFF6F4F1FFF0EAE1FFECE3D9FFE7DE
          D1FFE6DECFFFBD8D53FF41322379090909170404050E03030307000000000000
          000000000000000000001714121BDDBB91ECFDFEFEFFF9F7F3FFF4F0EAFFF0EA
          E1FFEDE7DDFFDFCDB7FF693D179E000000000000000000000000000000000000
          0000000000000000000000000000866D4E91FAF0E6FFFFFFFFFFFBFBF9FFF8F7
          F3FFF4F1EBFFF3F1ECFFC3996AF8261709380000000000000000000000000000
          0000000000000000000000000000221C1524E5C8A7F1FFFFFFFFFFFFFFFFFEFD
          FDFFFAF9F7FFF8F3EFFFEADDCCFF885220C80806030B00000000000000000000
          00000000000000000000000000000000000076624B7CE4C29DEFDCBA93EACEA9
          7EDEC9A172DCB48956C9A87A48C67E4F20AF261E163000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80700008003000000000000000000000000000000000000000000000000
          000000000000C0000000E0000000F0070000F8030000F8010000FC010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000700000010000000190000001D0000001F0000002000000021000000230000
          0024000000250000002500000023000000180000000B00000002000000060102
          1B4F04044BB806066EF5060674FF060673FF050572FF060571FF060571FF0505
          70FF050570FF050570FF05056AF7030346C50101195F0000000A0000000D0405
          4DB50C1594FF0F23AFFF0E25B6FF0C23B3FF0A22B2FF0A22B1FF0A22B0FF0A22
          B0FF0A22AFFF0A21AFFF091DA4FF080F86FF040346C40000001800000011080A
          79F4182FBFFF1733CAFF1833C7FF1F39C8FF112DC3FF0C28C0FF0B27BFFF0E2B
          C0FF1C37C4FF1530C0FF1029BAFF091DA4FF05056AF700000022000000110A0E
          87FF203DD4FF1F3CD2FF8C9AE4FFE2E5F5FF354ED0FF1230C8FF102EC7FF2F48
          CDFFE3E7F8FF8A99E3FF132FC0FF0A21AFFF050570FF000000240000000F0C12
          8FFF2945DBFF2A44D8FFD0D3EFFFFCFAF8FFE1E4F5FF344DD1FF304AD0FFE2E6
          F7FFFFFEFFFFD0D5F3FF1733C2FF0A21B0FF050572FF000000220000000D0F17
          99FF3752E2FF2D4AE0FF344DD7FFCFD2EEFFFCF9F7FFE5E6F4FFE6E8F4FFFEFC
          FCFFCFD5F2FF243ECBFF0E2AC2FF0A22B2FF050674FF000000210000000B131D
          A3FF4A63E9FF3856EAFF2E4BE1FF354ED7FFD4D6EDFFFBF9F5FFFCF9F6FFD5D9
          F0FF2640CEFF102DCAFF0B29C2FF0A23B3FF060775FF0000001F0000000A1723
          ADFF7F90F0FF6B80F2FF5D72E6FF6375DDFFE5E4EEFFFAF6F2FFFAF7F3FFE3E3
          F1FF364ED2FF1332CCFF0E2AC5FF0B23B5FF060777FF0000001D000000081C2B
          B8FF8E9DF4FF677AEBFF6B7BDFFFE4E1EAFFF8F3EDFFD7D8EBFFD6D7EBFFFAF6
          F2FFE1E2F0FF354ED1FF1330C8FF0E25B8FF07077BFF0000001B000000072032
          C1FFA3B0F7FF6E7FE6FFE3E0E6FFF6EFE8FFD5D4E7FF5367DCFF4C61DAFFD2D3
          EAFFF9F5F1FFE0E0EEFF233CCBFF1028BDFF090A82FF00000019000000062539
          CBFFB8C2FAFF7282E6FFA9AEE0FFD6D3E3FF5D6FDDFF536AEBFF4963EAFF495F
          D9FFD1D2E8FF919CE1FF1C38CCFF132CC0FF0B0E88FF0000001700000004283C
          C7F1B6BFF6FF9BA7F1FF7080E5FF6576E5FF6076ECFF5D76F6FF536DF3FF465F
          E7FF4058DEFF344DDAFF233ED4FF162CBDFF0C1186F400000013000000021E2B
          8AA47886E6FFBBC4F6FFC2CBFBFFB2BEFAFF9EACF8FF8A9AF6FF7589F3FF657B
          EFFF526BEBFF415CE5FF2941D2FF1625ADFF0A0E5EB10000000C000000010B11
          323B202E8DA42E44D0F12F45D9FF2D42D5FF2B3FD0FF293BCBFF2637C5FF2332
          C0FF1F2DB9FF1D29B3FF1822A1F30D1367AE0406234800000005000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          0008000000090000000B0000000B000000080000000400000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BA7C4AFFB87A47FFB778
          45FFB57643FFB47441FFB2723FFFB2713EFFB06E3BFFAF6E3AFF000000050000
          000C0000001100000014000000170000001A0000001DBE824FFFFFF4E9FFFEF3
          E8FFFEF3E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB2723EFF02273F7B044B
          7CE505558CFF04528AFF055088FF044F86FF044E85FFC28756FFFFF5EBFFCB8E
          5FFFC88C5CFFC68959FFC48656FFC18453FFFDF0E2FFB67743FF055181E31A8E
          BEFF18B9E6FF16B3E2FF14AFDEFF12ABDBFF1298C5FFC68D5DFFFFF7EDFFFFF6
          ECFFFFF6ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB97B49FF066097FF38CA
          EFFF1EBEE9FF1BB9E6FF17B5E2FF15B1DFFF13A0CDFFCB9363FFFFF7EFFFE0A5
          78FFDDA375FFDAA072FFD89D6FFFD59A6CFFFAEADBFFBE804EFF07659CFF49D1
          F3FF24C3EDFF20BFEAFF1EBBE7FF1BB8E5FF19AAD5FFCF996AFFFFF9F1FFFFF8
          F1FFFFF8F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC18654FF086AA0FF5AD8
          F6FF2AC9F1FF28C5EEFF24C2ECFF23C0EAFF1FB5DFFFD39F71FFFFFAF4FFFFF9
          F2FFFEF5EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC68C5BFF0970A6FF73E0
          F9FF3BD0F5FF35CDF2FF2FC9F0FF2AC6EEFF27BEE6FFD7A578FFFFFAF5FFFEF7
          EFFFFCF2EAFFFAEDE2FFF7E9DAFFCE9768FFCB9464FFC99261FF0A76ACFF8EE8
          FCFF4FD9F9FF49D6F7FF42D2F5FF3ACFF3FF31C9EEFFDBAB7FFFFEF8F1FFFCF3
          EBFFFAEEE4FFF7E9DBFFF5E4D4FFD19D6FFFFFF9F3FFD5D0CAD50B7CB2FFA7EE
          FDFF64E0FCFF5FDDFBFF56DAF9FF4DD7F8FF44CFF2FFDFB186FFDEAF82FFDCAD
          80FFDAAA7EFFD9A87BFFD7A577FFD6A375FFD5D1CDD5171716170C84B7FFBCF3
          FEFF7CE7FEFF75E5FDFF6ADCF5FF5AC3DDFF50B4D0FF49B7D3FF41BEDDFF39C5
          E6FF35CBEEFF085D93FF000000150000000000000000000000000E8BBEFFCFF7
          FFFF92ECFFFF78C8DBFF62A8BDFF5CA4B9FF59ABC3FF54B5CEFF4DBDD9FF44C6
          E4FF3CCDEFFF096297FF000000110000000000000000000000001092C4FFDFFA
          FFFFC1864BFFBE8146FFBC7D40FFB9793BFFB67636FFB47233FFB27030FFB06D
          2EFF44D1F1FF09679DFF0000000E000000000000000000000000119ACBFFEAFB
          FFFFE9C190FFE6BA87FFE2B47EFFDFAE75FFDCA86DFFD9A267FFD69E60FFBA7A
          3DFF4EDFFEFF086DA2FF0000000B000000000000000000000000118EB8E084CD
          E7FFEEFCFFFFEAFAFDFFF0D5B0FFEFCB9EFFECC595FFE5C294FFA9EFFDFF95ED
          FEFF46B0D5FF096594E300000007000000000000000000000000094A5F701291
          BBE013A2D1FF129CCDFF7CBCC8FFFCE5C2FFF0DBB9FF7EA4A4FF0E86BAFF0D82
          B6FF0B6F9CE105364D7500000003000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000070000000700000007000000070000000700000007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001000000016000000110000000800000002000000020000
          0009000000160000001E000000170000000A0000000200000000000000000000
          0005270F014C6B2803B29E3A03F2672502A2240D01460000000800000008240F
          0255632804B9903803F35E2402A3200D004C0000000A00000000000000000000
          000B783308AF441C03770A0400133F17025F682502A200000011000000127031
          07B73F1B0384090400153A17025F5F2502A30000001700000000000000000000
          000DC35D10F20C050127000000060B040013A23D05F20000001700000019BA57
          11F40B050138000000080A040014943C06F30000001D00000000000000000000
          00088B470EAB502708720C05012859270694923E09DE0E0601350E060138A851
          12E5572909960B050137431D05836A2D06B80000001500000000000000000000
          0003321B06448C480FABC96413F3B25714EDB45F21FF3E1B068B45230B8DB35A
          1DFFAB5313E5C15C13F479380BB6281203530000000800000000000000000000
          00010000000300000008000000103D260F64683617E3572C12F1733E20F18E51
          24E537210E700000001B00000010000000070000000200000000000000000000
          00000000000000000000000000041C140D3C322217D25E4637FF714D3AFF4622
          0FD61B0F06480000000700000000000000000000000000000000000000000000
          00000000000000000000000000095E5552C6DEDCDCFF9B8D85FF655A53FFCBC0
          B9FF41261ACB0000001100000001000000000000000000000000000000000000
          0000000000000000000228252350B9B2AFFBDAD9D7FF2F2723AA302F2FACDEDF
          E0FF8D827DFB13100D5D00000006000000000000000000000000000000000000
          00000000000000000004635F5BA9DBD9D9FF5A514BCE0605051A0707071C6A65
          64D1D1D1D1FF2F2E2CB40000000D000000010000000000000000000000000000
          0000000000011E1D1C2DBEB9B7FC948C8AF012100F3800000003000000031B18
          183EA39D99F28B8986FD1110103D000000040000000000000000000000000000
          0000000000016B696794B0ACABFF322F2E6A0000000300000000000000000000
          0005443C3973ABA098FF48423FA00000000A0000000100000000000000000000
          0000191918219D9B96ED5755539E000000030000000000000000000000000000
          0001000000076C5F57A6847368F01312112F0000000300000000000000000000
          00006765627F83827BD00909080F000000000000000000000000000000000000
          0000000000010A0909168C7362D4564A438A0000000700000000000000000909
          090A938E85B92625243300000000000000000000000000000000000000000000
          000000000000000000022924213B7F604DBD0807071000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000800100008001000080010000800100008001000080010000F00F
          0000F0070000E0070000E0030000C0030000C1810000C3810000C7C100008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000050000
          0012000000190000001A0000001B0000001C0000001D0000001E0000001F0000
          001900000007000000000000000000000000000000000000000000000010C185
          54FFC08453FFBE8351FFBE8250FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B
          48FF00000019000000000000000000000000000000000000000000000013C389
          58FFFDF4EBFFFDF3E9FFFDF3E8FFFCF2E7FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E
          4BFF0000001E000000000000000000000000000000000000000000000011C78E
          5DFFFFF8F0FFFEF7EFFFFEF6EEFFFEF5EDFFFEF5ECFFFEF4EBFFFDF3E9FFBE81
          4FFF000000320000001E0000001F000000200000001A000000070000000FC991
          61FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7EFFFFDF4EBFFC185
          54FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B48FF000000190000000ECC95
          66FFFFFAF4FFFFFAF5FFFFF9F3FFFFFAF4FFFFF9F2FFFEF5EDFFFCF1E7FFC389
          58FFE5D3C3FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E4BFF0000001E0000000CCF99
          6BFFFFFBF7FFFFFBF6FFFFFAF5FFFFFAF5FFFEF7F0FFFCF2EAFFFAEEE2FFC78D
          5CFFE3D1C1FFFEF5ECFFFEF4EBFFFDF3E9FFBE814FFF0000001C0000000BD29E
          6FFFFFFCF8FFFFFCF8FFFFFBF7FFFEF8F2FFFCF3EBFFFAEFE5FFF7E9DCFFC991
          61FFE2D1C2FFFFF8F1FFFFF7EFFFFDF4EBFFC18554FF0000001B00000009D5A2
          74FFFFFCFAFFFFFCF9FFFEF9F5FFFCF5EDFFFAEFE6FFF6E8DBFFF4E2D1FFCC95
          65FFE3D4C6FFFFF9F2FFFEF5EDFFFCF1E7FFC38958FF0000001900000008D8A6
          78FFFFFDFBFFFEFAF6FFFCF5EFFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF99
          6AFFEBDED3FFFEF7F0FFFCF2EAFFFAEEE2FFC78D5CFF0000001700000006DAAA
          7EFFFEFBF7FFFCF6F1FFFAF1E9FFF7EBE0FFF5E6D8FFD3A072FFF3EBE4FFDFD0
          C2FFF8EFE7FFFCF3EBFFFAEFE5FFF7E9DCFFC99161FF0000001500000004DDAE
          82FFDCAD80FFDBAB7FFFDAAA7DFFD8A87BFFD8A679FFD7A476FFE6DACFFFF7EF
          E9FFFBF4ECFFFAEFE6FFF6E8DBFFF4E2D1FFCC9565FF00000013000000010000
          00040000000500000006000000070000000ED8A678FFF4EEE9FFFAF4EFFFFBF4
          EEFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF996AFF0000000D000000000000
          000000000000000000000000000000000006DAAA7EFFFEFBF7FFFCF6F1FFFAF1
          E9FFF7EBE0FFF5E6D8FFD3A072FFD5D3D0DC1717172900000004000000000000
          000000000000000000000000000000000004DDAE82FFDCAD80FFDBAB7FFFDAAA
          7DFFD8A87BFFD8A679FFD7A476FF171717260000000400000000000000000000
          0000000000000000000000000000000000010000000400000005000000060000
          0007000000080000000900000007000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00001F0000001F0000001F0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8000000F8010000F803
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0000001A0000002000000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C0E0C096337271EDE422D20F60B0909B6000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000040807073F6D5B4FF2F2CDABFFFFD1A4FF543D2EFF101111D30303
          03470000000E0000000100000000000000000000000000000000000000050000
          000B000000121716158CD5C4B6FFFFE9D2FFFFE5C9FF90745FFF424445FF1D1E
          1EE90505056200000014000000030000000000000000000000000808083F1A17
          14C60F0E0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA29386FF8D8D8DFF7979
          79FF292929F8070707880000001A000000040000000000000000343333D0E7D7
          C7FF685648FF303030FFBBB9B8FFFFFFFDFFE6DFD9FFBDB9B6FFCBCBCBFFB6B6
          B6FF8D8D8DFF1E1E1EFF131313A90000002100000007000000017C7D7CF8FFFF
          FFFFA99D94FF8B8B8BFF666666FF8B8A8AFFBBBBBBFFE1E3E3FFE7E7E7FFE1E1
          E1FFBDBDBDFF6E6E6EFF696969FF222222C6040404350000000B757575F0E3E4
          E4FFD0D0D0FFE0E0E0FFC4C4C4FF6B6B6BFF656565FFA9A9A9FFE0E0E0FFF0F0
          F0FFD4D4D4FFD1D1D1FFC5C5C5FF9D9D9DFF474747E20E0E0E523C3C3C657070
          70DABDBDBDFFDCDCDCFFF0F0F0FFC5C5C5FF797979FF595959FF717171FFAFAF
          AFFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E5000000000303
          0305292929494D4D4D86888888D7BDBDBDFBD9D9D9FFC5C5C5FF9C9C9CFF9F9F
          9FFF9F9F9FFFC0C0C0FFE9E9E9FFF3F3F3FFF3F3F3FFAAAAAAFB000000000000
          00000000000000000000000000012424243D464646798E8E8ECCB8B8B8F4D4D4
          D4FFCCCCCCFFA9A9A9FF8F8F8FEDC4C4C4F9DADADAFF818181BD000000000000
          00000000000000000000000000000000000000000000020202031B1B1B294242
          42717D7D7DBB979797DC2727273D25252539474747721414141C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E07F0000C01F0000C00F00000007000000030000000000000000
          0000000000000000000080000000F0000000FE000000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000070752700D0D
          AFF000000000000000000000000001010C100E0EBAFF05054660000000000000
          0000035B11C0047515FF037215FF036F14FF024B0DB00014033001010C100F11
          BBFF04053A500000000000000000050546600E0EBAFF01010C10000000000000
          0000035F11C0036413D0011E054001240650025B10D002510EC0000000000C10
          83B00E11A5E00B0C8DC00B0B8CC00C0CA3E00A0A80B000000000000000000000
          0000046312C0036011C0000000000000000002330970037014FF00000000070B
          49601119BEFF080B5F80080A6A900E0EBAFF0505466000000000000000000000
          0000046613C0046413C00008021001200640036312D0036011D0000000000102
          0C101420C0FF06083C50060847600F11BBFF01010C1000000000000000000000
          0000056B14C0068A1AFF058719FF058218FF047816F0010F0320000000000000
          00000F1C87B00D1579A00C1284B00B0E82B00000000000000000000000000000
          0000056F15C0056C14C00000000001110320047416E002390B70000000000000
          000009124B601525B8F0141FC0FF060948600000000000000000000000000000
          0000057217C0056F16C00000000000000000047115D0035C11B0000000000000
          000002030D10182CC5FF1523C2FF01020C100000000000000000000000000000
          0000067517C008981EFF07951DFF07931BFF068E1BFF022C0850000000000000
          0000000000000509253004072530000000000000000000000000000000000000
          0000021E06300227084002270840022607400009021000000000000000000000
          0000000000000000000300000006000000030000000000000000000000000000
          0001000000050000000D000000100000000B0000000300000000000000000000
          0000000000022D11014C471A027C000000110000000400000001000000000000
          00050B04012D2606008220040088200400780000000B00000000000000000000
          000067360E8CCF8533FBD88F37FF562305940903002500000012000000120000
          001F2E0F0180A73703FFDB710DFFA83703FF0000001200000000000000000000
          0000B67730E5FFE4C1FFFFDFADFFE5AA60FF9A4C11DE682B06AD592204A3772C
          05CCBA580EFAEB9523FFF6A125FFC15B0CFD0000000C00000000000000000000
          0000281A0A32BF8C4EE0F8DFC0FFFFECD0FFFEDDB3FFEFC084FFE9B369FFF0BC
          6BFFFBC56DFFF1B04DFFD8872BFFA25014E80000000400000000000000000000
          0000000000001D1308238A5A24A9DEB279FCF0D3ADFFFAE0C1FFFADDB7FFF1CA
          97FFDCA259FFA1591EDB3615045E150802240000000000000000000000000000
          000000000000000000000201000239230B477D52219A935A1FBA90531BBC854C
          1AB0502C106E150B041E00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0038C0000018C0000081CC000081C0000081C00000C3C80000C3CC0000C3C0
          0000E7C10000E3810000C0810000C0010000C0010000C0010000E0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000800000F4200000B3300000007000000010000000000000000000000000000
          0000000000000000000000000002000000080000000800000002000000040000
          1B68030357DD020242BE00000C3D000000060000000000000000000000000000
          00000000000000000002000000120000176B000017690000000D0000020B0303
          3D8A0E0EBFFF0B0BAAFF02023EB4000008300000000500000000000000000000
          0000000000030000001201011C81040465E9030358D300000830000000020101
          0D210B0B7DA41112D7FF0A0AA3FF010135A90000052300000004000000000000
          00020000001001011E8304046FEB0909B7F903034D8F0000000E000000000000
          000301010C200B0B7BA11312D7FF0A0A9EFF01012FA000000217000000050000
          000F01011F85050574EE090AC1FF0505629A0000001400000003000000000000
          00000000000201010A1C0B0B779C1414D9FF0B0B98FF010128970000001B0101
          228A06067AF10C0CC6FF06066EA1000001150000000300000000000000000000
          00000000000000000002010106160B0B73951414DAFF0B0B91FD010138CA0808
          83F70E0ECAFF080878A60000061E000000030000000000000000000000000000
          00000000000000000000000000020000010F0B0B71961415D6FD0F10B3FF1212
          D2FF0B0B80AD01010C2700000004000000000000000000000000000000000000
          000000000000000000000000000300000725080855A01616DBFF1515DBFF1414
          D5FB06064F940000000F00000002000000000000000000000000000000000000
          0000000000000000000300000C2E030339A811119FFF1B1BDFFF1313AFD21414
          C6ED090A88F00000207D0000000B000000020000000000000000000000000000
          0000000000020101143C06064CB41515ACFF1F1FE1FF131390AE03031A330909
          4E6F1212B2DE08087DEC00001F790000000A0000000100000000000000000000
          00020303214C0C0C64C11C1CBDFF2323E5FF161693AE03031A2F000000040000
          00060808405F1313A6D109097BEB00001F770000000900000001000000010707
          335D141485D22121CCFF2828E7FF1A1A96AC04041C2E00000002000000000000
          0001000000050606324F13129AC30A0A7BEB00002075000000060303141F1717
          8BBF2828DBFF2B2BE9FF1B1B96A804041C2B0000000200000000000000000000
          000000000000000000040404253D11118DB1090969C800000923000000000F0F
          4C5A2626C4D61B1B94A305051B26000000010000000000000000000000000000
          0000000000000000000000000002020213220505283B00000003000000000000
          00000707252A0303111600000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0003F0000003E0000001C000000080000080000000C0010000E0030000F007
          0000F0070000E0030000C0010000800000000080000001E0000083F00000CFF9
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010A0401246329
          0ADA230F03630000000A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001030100156028
          0BD271300CEE0C05013300000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000072A12
          056F8A3E12FF4F2009B801000014000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010502
          011B7A3711E9944315FF1F0D035C000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000A4A210CA4A9511CFF572509C2000000120000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00052B13076BAD5721FF873C13F41107023B0000000400000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          00031C0D0546994C20F9AE531CFF3014057B0000000800000000000000000000
          0000000000010000000200000003000000050603011309040217030101070000
          00020B06032282411CE7C26223FF401A07980000000C0000000000000000100A
          0717331E114B3E211069462410796F3B1CB1924E25E17D3E1BD7130A05230000
          00020B06031F85441EE6CB6A27FF56250BB60000000D00000000000000019761
          3BC7CE8B59FEDA9257FFE19A5CFFE49A5BFFB46937F93C221266000000050000
          00041E0F0743A45624F8D46F2AFF622C0EC20000000D00000000000000009C6B
          48C1F9D1A6FFFFC98EFFFFC889FFD9935AFF5D3319950201010D0C07031A150A
          0432673316B8DC7D36FFD4752FFF52260DA50000000A00000000000000006948
          2F80F2CFACFFFDD7AAFFFDCF9AFFF2BA80FFB57243EB884E2AC898582EDDB669
          37FBDC8948FFF79E4DFFC56C2FFF391B0A74000000060000000000000000573C
          2766F1CFADFFFFE5C6FFF4CB9EFFFFE4C0FFFFD7A9FFF7BD84FFF7B97BFFFFBC
          75FFFFB66BFFF9A558FFA15728F3160C062E0000000200000000000000004834
          2350F1CEA9FFEEC8A4FEA26F49C7DBAE86FAECC9A6FFF2CCA5FFF4C99BFFECB3
          7DFFDF9E68FFB46F41F53D231369000000050000000000000000000000001E18
          1220E9B580FCB88B64CD0806040A271A10355D3E2879895D3FB0906140C27C52
          35AC432716701D11093400000004000000010000000000000000000000000000
          0000A97E55B353402D5A00000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE070000FE070000FF030000FF030000FF810000FF810000FE810000C001
          000080010000000100008001000080010000800100008003000080030000CE0F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1D1D36323434856A6E6FF5575858F55656
          56F55B5B5BF5636363F56E6F6FF5808484F55E6061BF2D2E2F4D000000000000
          00000000000000000000000000005D5E5FB9616161FF616161FF797979FF9090
          90FFA9A9A9FFBCBCBCFFC8C8C8FFCAC9C9FFBDBDBCFF7E8080FF000000000000
          0000000000000000000000000000565656ADC8C8C8FF6B6B6BFF848484FF9595
          95FFA8A8A8FFBDBDBDFFD4D4D4FFE9E9E9FFFFFFFFFF808080F6000000000000
          00000000000000000000000000004F4F4FADE9E9E9FFBFBFBFFF6D6D6DFFA0A0
          A0FFB2B2B2FFC6C6C6FFDCDCDCFFEAEAEAFFFFFFFFFF8F8F8FF6000000000000
          00000000000000000000000000004E4F4FADCCCCCCFFE9E9E9FFAEAEAEFF7E7C
          7AFFC6C3BFFFD6D6D6FFE9E9E9FFF4F4F4FFFFFFFFFF979797F6000000000000
          0000000000000000000000000000534F4BAABFBDBAFFCECCC9FFE6E2DDFF8994
          A3FF778EA8FFB8B5B1FFC0C0C0FFD3D3D3FFF4F4F4FFA4A4A4FF0C4E94CE2369
          A7D63D79ACD65B86ABD0010C1A2933425BB97B8BA2FF6386B2FF4778B4FF286A
          BCFF173467B9181817299DA3A3D09A9E9FD6959595D6747474CE2D88CFFF69CF
          F9FF42A8E6FF3193D8FF2886CFFF1E7CCCFF1A7ACDFF1E82D6FF2492E5FF2CA1
          F3FF001F5FAA00000000000000000000000000000000000000003A90CFF68FEB
          FFFF6ADBFFFF61D6FFFF55D2FFFF4CCDFFFF43C6FFFF3EC1FFFF3BBCFFFF35B1
          FCFF022864AD0000000000000000000000000000000000000000479AD7F6A8F3
          FFFF79E1FEFF6DDAFEFF5ED4FEFF53CEFEFF4BC8FEFF43C2FEFF3DBEFFFF3FB8
          FBFF042F6BAD000000000000000000000000000000000000000049A0DDF6C8FE
          FFFF94EDFFFF83E6FFFF6FDEFEFF5FD7FEFF55D1FEFF51CEFFFF4DCBFFFF57C7
          FDFF02326FAD00000000000000000000000000000000000000004EADEAFF96D7
          F6FFA2E2FAFFA9EBFCFFAAF1FFFFA1F0FFFF8BE4FFFF72D4F9FF5BC1F1FF46A4
          E0FF1F5488B90000000000000000000000000000000000000000213A484D3E85
          AFBF60B3E4F552A9E1F54CA2DDF54A9FD9F5449BD6F5419BD4F552A0D3F51C47
          6A8518252F360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F8000000F8000000F8000000F8000000F8000000F800
          000000000000001F0000001F0000001F0000001F0000001F0000001F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000006200000009000000000000
          00000000000000000000000000000000000000000000000000000303031E0707
          074700000000000000000101010A030303AD020202FF00000083000000000000
          00000000000000000000000000000000000000000000000000000D0E0E691C1C
          1CF107070744010101080B0B0BB00B0B0BFF070707E701010141000000000000
          0000000000000000000000000000000000000000000000000000171A1BAA2626
          26FF1E1E1EE6151515C1171717FF111111E70303033900000000000000000000
          00000F0C0912604D3E789A7D66C4A38269D6A5846AD4836C5ABE393735ED2C2D
          2DFF292929FF242424FF1C1C1CE9050505360000000000000000000000002820
          1830AD8B6ED1E6CBB4FFF8E9DCFFFFF7EFFFFFFEF4FFC5B9AFFF383737FF3637
          37FF323232FF2D2D2DFF252525E909090943000000000000000016100C19B68D
          68D5F6DDC7FFFFF0E1FFFFF1E5FFFFF0E4FFFFF7EAFFA19A94FF404141FF4444
          44FF3E3E3EFF383839FF333333FF2B2B2BF3090909350000000076553789ECC5
          A1FFFDE4CDFFFDE8D4FFFFECDDFFFFEEE1FFFEEDDFFF787572FF515252FF4F50
          50FF464749FF444546F42B2C2DB1121212500303031100000000C39060DCF7D5
          B6FFFBDFC5FFFDE6D1FFFFEAD9FFFFF0DFFFE0D0C3FF656565FF5A5B5CFF6E6C
          6AFF9D8E81FF7D6552C600000000000000000000000000000000D8A472F0FAD9
          BBFFFADABFFFFDE3CCFFFFE7D4FFFFEFDBFFCABBB0FF827F7CFFB9AA9EFFEDD1
          B9FFFFDFC2FFA7805FD200000000000000000000000000000000D9AA7CF1FBE2
          CBFFFADDC3FFFCE1C9FFFEE4CEFFFEE4CEFFF8DFCAFFF6DEC8FFFFE7CEFFFFE2
          C8FFFDE4CDFFA98363D600000000000000000000000000000000CCA075E1FAE4
          D0FFFDE8D6FFFDE9D9FFFEEADAFFFEEADAFFFFEBDBFFFFECDCFFFDE9D9FFFEEA
          D9FFF6E0CBFFA17D5EC5000000000000000000000000000000008B6B4D99F5D9
          BEFFFDEEE1FFFDEDDFFFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE2FFFDEDE0FFFFF1
          E5FFEBCBAEFF644D397700000000000000000000000000000000251E1728D6AF
          8BE7FCEFE2FFFEF4ECFFFEF2E8FFFEF1E7FFFEF1E7FFFFF2E8FFFFF6EDFFFAE9
          DAFFB8916ED1130F0C1600000000000000000000000000000000000000004034
          2945D4B08EE5F6E0CCFFFDF2E8FFFFF9F5FFFFF9F4FFFCF1E6FFF2D9C0FFBD98
          72D22A221A2F0000000000000000000000000000000000000000000000000000
          0000231D17268C705599CEA985E0DDB58FF1DCB48CF1C59F7ADA7A5F45891611
          0D18000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF80000FF300000FF000000FF010000C003000080030000000100000001
          0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000C03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040404220A0A0A700A0A0AB0070808D4060606EB030405EB0203
          04D4030303B00404047001010122000000000000000000000000000000000202
          020A121212801A1A1BEB282727FF403E3DFF535252FF5E5C5CFF5D5B5AFF4E4C
          4CFF363432FF181717FF070708EB050505800101010A00000000040404142222
          22B24A4848FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
          ABFFE8DCD3FFC7BCB4FF867E79FF33312FFF0C0C0CB2020202142424248D8C89
          86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A558FFDB9E4FFFD99B4CFFD89A
          4BFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF77726EFF0F0F0F8D3E3D3D75FFFF
          FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95EFFE2A961FFDEA559FFDA9D
          4DFFE1B176FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF32302F7543434275FFFF
          FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB64FFDEA1
          53FFE4B67DFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF373635753636368DA3A2
          A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC62FFE5AA
          5EFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF2222228D080808144848
          48B27C7C7CFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
          CAFFF5F4F4FFDBDADAFFA8A7A6FF656565FF333334B205050514000000000404
          040A37373780616161EB707070FF828283FF919296FF999C9FFF989A9DFF8C8E
          91FF797A7AFF636363FF4F5050EB2C2C2C800303030A00000000000000000000
          0000000000000F0F0F22333333704C4C4CB0585858D45F5F5FEB5D5D5DEB5454
          54D4464646B02D2D2D700D0D0D22000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E00700008001000000000000000000000000
          000000000000000000000000000080010000E0070000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A4945
          8EC9393CB5FF3538B3FF252525FF202020FF1D1D1DFF191919FF151515FF1212
          12FF0F0F0FFF0C0C0CFF1B20A1FF191EA0FF2B2880D200000013000000114143
          BCFF958FEEFFA59FEFFF343434FF2F2F2FFF2B2B2BFF282828FF232323FF2020
          20FF9590E7FF181818FF948DE5FF776FDDFF1A1FA1FF0000002000000011484A
          C0FF9B94F1FFA9A5F1FF454545FF404040FF3C3C3CFF373737FF333333FF2E2E
          2EFF9792E9FF272727FF948FE6FF7A71DFFF1C20A3FF000000220000000F4E50
          C5FFA19AF3FFAEA8F3FF585858FF535353FF4E4E4EFF494949FF444444FF3F3F
          3FFF9A93E9FF363636FF9691E8FF7B74E1FF2024A5FF000000200000000E5355
          C9FFA7A1F5FFB4AEF5FF6B6B6BFF666666FF616161FF5C5C5CFF575757FF5252
          52FF4D4D4DFF484848FF9992E9FF7E77E3FF2529A8FF0000001E0000000C595C
          CEFFAFA8F8FFB8B3F8FFB3ADF5FFABA6F4FFA8A1F1FFA49DEFFFA19BEEFFA19A
          EDFF9D98EDFF9C96ECFF9C95EAFF8078E4FF282CAAFF0000001C0000000B5E60
          D2FFB3AEFBFFABA7F8FFA59EF6FF9E97F3FF9790F0FF918AEEFF8D84ECFF8A83
          EBFF8A81E9FF8780E9FF847DE8FF837CE7FF2D30AEFF0000001B000000096467
          D7FFBAB4FDFF6F6CDBFF6E6BDAFF6D6AD9FF6C69D9FF6967D8FF6966D6FF6765
          D6FF6563D5FF6462D4FF6160D3FF857EE8FF3235B1FF0000001900000008696B
          DAFFBFBBFFFF6A68D9FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FF5D5CD0FF8A81E9FF383BB5FF00000017000000066E70
          DEFFC8C1FFFF6665D6FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FF5858CDFF8C83EBFF3D40B9FF00000015000000057172
          E1FFCDC7FFFF6160D3FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FF5555CAFF8C86EEFF4346BDFF00000014000000047476
          E3FFD3CDFFFF5D5ED1FFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFF5152C8FF9189EFFF484BC2FF00000012000000027678
          E5FFDBD2FFFF595ACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFF4E50C6FF938BF1FF4E51C6FF0000000E000000017B75
          AAC07678E5FF5657CBFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFF4C4FC4FF585BCDFF554F95C500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000002E19093C77431996A86325CBC6762CE9C57329E9A65E
          1FCB733E14962B16073C00000000000000000000000000000000000000000000
          00000E08031178471D94E09449FAF3B46EFFF4C791FFF3CDA0FFF3CA9DFFF2BF
          86FFF0A85BFFDB8432FA703C13940C0602110000000000000000000000000E09
          04119A612EB6F2B36DFFF7D7B1FFEFEAE4FFEAEEF3FFE7EEF6FFE5ECF4FFE3E7
          ECFFE6DFD8FFF0C799FFED9C48FF8D4E1AB60C06021100000000000000007F52
          2894F4BA78FFF7E4CCFFF0F4F8FFEDEFF1FFEAE4DEFFE7D9CCFFE4D6C9FFE4E1
          DDFFE1E4E8FFE0E4E9FFEDD1B0FFED9D49FF713C1394000000003322113AE9AD
          68FAF9E1C1FFF4F7FBFFF2F5F8FFEEE1D4FFE29F5EFFDE934BFFDC8E44FFDC9A
          5CFFE4DDD6FFE2E4E7FFE0E5EAFFF0C89BFFDC8533FA2A16073A89613697F8CD
          97FFF9F6F1FFF6F8FAFFF5F6F6FFF2F1F0FFE7B582FFE09246FFDD8D40FFE1B2
          84FFE8E9E9FFE6E6E7FFE2E4E7FFE6E1D9FFF0A95EFF753F1597C08F56CDFBE0
          BCFFFAFCFFFFF9F9F9FFF8F7F7FFF6FBFFFFEDCBA9FFE2964AFFE09449FFE7CC
          B2FFEBF0F5FFE8E8E8FFE5E6E6FFE5E8EBFFF2C189FFA96022CDDEAC6EE9FCE8
          CDFFFCFEFFFFFBFBFAFFF9F9F9FFF8FEFFFFEFCFAEFFE59C51FFE39A50FFEACE
          B2FFEEF1F6FFEBEBEBFFE8E8E8FFE6EBF0FFF3CC9EFFC6772CE9E1B073E9FDEA
          D0FFFEFFFFFFFCFCFCFFFBFDFDFFF8F1E9FFECBA83FFE7A45BFFE59F55FFECD1
          B6FFF0F4F8FFEEEEEEFFEBEBEBFFE9EDF3FFF4CFA1FFC8792FE9C79C66CDFDE5
          C5FFFFFFFFFFFEFEFEFFFDFEFFFFF9F0E6FFEFC291FFEBB173FFE8A55EFFEED4
          B8FFF3F7FBFFF1F1F0FFEDEEEEFFECEFF2FFF4C791FFAC6828CD93734997FBDA
          ADFFFFFCF9FFFFFFFFFFFEFEFEFFFCFDFDFFF7E4CFFFF2D4B1FFF2D4B4FFF4EC
          E3FFF4F6F7FFF2F2F2FFEFF1F4FFF1ECE5FFF3B46DFF7B481C97382C1C3AF4CA
          90FAFDECD5FFFFFFFFFFFFFFFFFFFBF3E8FFF0BD80FFEEB26DFFEEB87CFFF6EB
          DFFFF7F8FAFFF4F4F6FFF3F6FAFFF7D7AFFFE2984AFA2E1B0B3A000000009072
          4A94FAD6A4FFFEF2E2FFFFFFFFFFFFFFFFFFFBEEDEFFF6D8B4FFF4D3ADFFF9F2
          EBFFF9FBFEFFF7FBFEFFF9E4CBFFF3B46AFF7D4E23940000000000000000110D
          0811B18E5DB6FBD6A3FFFDEBD3FFFEFBF7FFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
          FFFFFBF7F2FFFBE0BDFFF5BA73FFA06A34B60E09041100000000000000000000
          0000110D081190724A94F4C98EFAFAD9AAFFFCE3C2FFFDE8CDFFFDE7CAFFFBDE
          B8FFF9CC92FFEDB068FA855A2E940F0904110000000000000000000000000000
          000000000000000000003A2D1C3C92724A96C59C65CBE3B174E9E2AF6EE9C192
          58CB8D6639963726143C00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000C003000080010000800100000000000000000000000000000000
          0000000000000000000000000000000000008001000080010000C0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000046240966AB57
          13FFA95511FFA7530FFFA6520EFFA4500CFFA34E0BFF150A0122150A01229F4C
          09FF9E4B08FF9D4A07FF9C4906FF9C4906FF9C4906FF3E1D026647260A66B05B
          17FFAE5915FFAB5712FFA95511FFA7530FFFA6520EFF0B05011100000000A14E
          0BFFA04C0AFF9F4C09FF9E4B08FF9D4A06FF9C4906FF3E1D026649270C66904C
          16CC000000000C060111512A0A77AB5713FF9E5011EE0000000000000000994B
          0BEEA34F0BFF4B2405770B050111000000007E3B06CC3F1E0366000000000000
          0000311A0844A75818EEB15D18FF8B4912CC2E18064400000000000000002C16
          044484420BCCA3500CFF97490AEE2B1503440000000000000000000000000D07
          0211AE5E1FEEB7621EFF9D5418DD0C0602110000000000000000000000000000
          00000B06011190470CDDA4500DFF984A0BEE0B05011100000000000000005B33
          1277BF6A25FFBC6722FF572F0F77000000000000000000000000000000000000
          0000000000004F280877A75410FFA6530FFF4D26067700000000000000009F5B
          23CCC46F2AFFC16C27FF26150733000000000000000000000000000000000000
          00000000000023120433AA5713FFA95611FF86430CCC0000000000000000B066
          2ADDC9742EFFC6712BFF00000000000000000000000000000000000000000000
          00000000000000000000AF5B17FFAD5914FF934B10DD0000000000000000B46A
          2DDDCE7833FFCA7530FF0D080311000000000000000000000000000000000000
          0000000000000C060211B35F1AFFB15C18FF974E13DD00000000000000009D5F
          2BBBD47F39FFD07C36FF45281155000000000000000000000000000000000000
          0000000000003E220B55B7631DFFB5601CFF834512BB00000000000000005838
          1B66DB8A42FFD8863FFF8D5527AA000000000000000000000000000000000000
          0000000000007F4618AABC6722FFB9641FFF49270C6600000000000000000000
          0000B5783CCCDF9248FFDB8D43FF643E1D770000000000000000000000000000
          00005C341477C36E29FFC16C27FF98541CCC0000000000000000000000000000
          0000100B0611A9753DBBE3994DFFDE9047FFAD6A32CC623A1A7760381777A35F
          26CCC9742FFFC7722DFF905220BB0D0703110000000000000000000000000000
          000000000000000000005D412266976634AADC8D45FFD5823BFFD27B36FFCF79
          34FF895022AA522F146600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000000000080000021840000C183000083C1000087E1000087E1
          00008FF1000087E1000087E1000087E10000C3C30000C0030000F00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004A4A4A004A4A4A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000000DE000000BD29004A4A4A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000000DE000000DE000000BD29004A4A
          4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000000DE000000DE000000DE000000BD
          29004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000000DE000000FF080000DE000000DE
          000000BD29004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000000FF290000DE000000FF080000DE
          000000DE000000BD29004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000052FF000000FF290000DE000000FF
          080000DE000000DE000000BD29004A4A4A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000052FFAD0000FF080000FF290000DE
          000000FF080000DE000000DE0000007B0000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B000052FFAD0000FF080000FF080000FF
          290000DE000052FFAD00007B0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B0000ADFF290000FF080000FF080000FF
          080000FF2900007B0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B0000ADFF290000FF080000FF0800ADFF
          2900007B0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B0000ADFFAD0000FF0800ADFF2900007B
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B0000ADFFAD00ADFFAD00007B0000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00007B0000ADFFAD00007B0000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00007B0000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000366
          020000650000006600000F1D1200131E0E00101C1000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006500000066
          0000C8CFCA00CACDCB00A7B2A2000F1E1000111D1100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000065000002CC970043CF
          B00000650300F1EFEF00EDEFF000B5C9B6000F1D1100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000065030000CA950000D9B0000066
          010049C69E0001650000FDFFFF00FFFFFE0003660000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000265010000CA950000DAB1000067000001CB
          9C0001DBB20081E3C50000660000FFFFFF0000660100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000168000000CA950000DAAE000266000000CB9A0000DF
          B1005FEBCC0000660000E3F5EE000066000002650100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000165000000CB960000DAAE000065000000CA9B0000DDB1005DEB
          CE0000650000EEFCFA005BE0B50001660000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000067000001CA970001DAAE000266000001CA9E0001DEB4005DECCC000067
          0000F1FCF9005CDFB40000660000FFFFFF00FFFFFF00FFFFFF00FFFFFF000067
          00000265010000D9AD000167010001CA9E0000DCB4005DECCC0002660000EEFC
          F8005DE0B50000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
          000001D8B1000266000000CB9B0000DEB1005EEDCC0000650300EEFEF7005FDF
          B50000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000067
          000001C18C0001CB9C000265010081ECD10000650000EFFDF7005DE0B5000066
          0100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0CB
          A0000066000000DEB1007EECD40000660100E9FBF4005DE1B30003650100FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00A0CB9E0000660000EAF9F500EEFEF7000065000000660000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009ECC9E00006800000066000000660100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000010000000A230F036363290ADA0A040124000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000050C05013371300CEE60280BD203010015000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002010000144F2009B88A3E12FF2A12056F00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000081F0D035C944315FF7A3711E90502011B00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000012572509C2A9511CFF4A210CA40000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00041107023B873C13F4AD5721FF2B13076B0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00083014057BAE531CFF994C20F91C0D05460000000300000000000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000C401A0798C26223FF82411CE70B0603220000000203010107090402170603
          0113000000050000000300000002000000010000000000000000000000000000
          000D56250BB6CB6A27FF85441EE60B06031F00000002130A05237D3E1BD7924E
          25E16F3B1CB1462410793E211069331E114B100A071700000000000000000000
          000D622C0EC2D46F2AFFA45624F81E0F074300000004000000053C221266B469
          37F9E49A5BFFE19A5CFFDA9257FFCE8B59FE97613BC700000001000000000000
          000A52260DA5D4752FFFDC7D36FF673316B8150A04320C07031A0201010D5D33
          1995D9935AFFFFC889FFFFC98EFFF9D1A6FF9C6B48C100000000000000000000
          0006391B0A74C56C2FFFF79E4DFFDC8948FFB66937FB98582EDD884E2AC8B572
          43EBF2BA80FFFDCF9AFFFDD7AAFFF2CFACFF69482F8000000000000000000000
          0002160C062EA15728F3F9A558FFFFB66BFFFFBC75FFF7B97BFFF7BD84FFFFD7
          A9FFFFE4C0FFF4CB9EFFFFE5C6FFF1CFADFF573C276600000000000000000000
          0000000000053D231369B46F41F5DF9E68FFECB37DFFF4C99BFFF2CCA5FFECC9
          A6FFDBAE86FAA26F49C7EEC8A4FEF1CEA9FF4834235000000000000000000000
          000000000001000000041D110934432716707C5235AC906140C2895D3FB05D3E
          2879271A10350806040AB88B64CDE9B580FC1E18122000000000000000000000
          0000000000000000000000000001000000020000000200000002000000010000
          0000000000000000000053402D5AA97E55B30000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0097928F009792
          8F0097928F0097928F0097928F0097928F0097928F0097928F0097928F009792
          8F0097928F0097928F0097928F0097928F0097928F0097928F0097928F00F3F3
          F300F3F3F300F3F3F300E5E0DB008E786D00F3F3F300F3F3F300F3F3F300F3F3
          F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F30097928F0097928F00F3F3
          F300BD8F6400C1844A00E5E0DB008E786D00F3F3F300F3F3F300F3F3F300DEED
          E30030B75400F3F3F300F3F3F300F3F3F300F3F3F30097928F0097928F00F3F3
          F300F3F3F300F3F3F300E5E0DB008E786D00F3F3F300F3F3F300DAECE10030B7
          540030B75400F3F3F300F3F3F300F3F3F300F3F3F30097928F0097928F00F4F4
          F400BD8F6400C1844A00E5E0DB008E786D00F4F4F400F4F4F40030B7540067DC
          770030B75400F4F4F400F4F4F400F4F4F400F4F4F40097928F0097928F00F5F5
          F500F5F5F500F5F5F500E5E0DB008E786D00F5F5F500F5F5F500DBECE10030B7
          540030B75400F5F5F500F5F5F500F5F5F500F5F5F50097928F0097928F00F7F7
          F700BD8F6400C1844A00E5E0DB008E786D00F7F7F700F7F7F700F7F7F700E1EF
          E60030B75400F7F7F700F7F7F700F7F7F700F7F7F70097928F0097928F00F8F8
          F800F8F8F800F8F8F800E5E0DB008E786D00F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F80097928F0097928F00AAA1
          9A00AAA19A00AAA19A00AAA19A00AAA19A00AAA19A00AAA19A00AAA19A00AAA1
          9A00AAA19A00AAA19A00AAA19A00AAA19A00AAA19A0097928F0097928F00E4DD
          D800E4DDD800E4DDD800E4DDD800E4DDD800E4DDD800E4DDD800E4DDD800E2DA
          D500E0D8D300E0D8D300E0D8D300E0D8D300E0D8D30097928F0097928F008E78
          6D008E786D008E786D008E786D008E786D008E786D008E786D008E786D008E78
          6D008E786D008E786D008E786D008E786D008E786D0097928F0097928F00E0D9
          D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9D300E0D9
          D300E0D9D30091786700E0D9D30091786700E0D9D30097928F0097928F009792
          8F0097928F0097928F0097928F0097928F0097928F0097928F0097928F009792
          8F0097928F0097928F0097928F0097928F0097928F0097928F00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084B6C6006B9AAD005A869C004A758C00426984004271
          94004282A500639ABD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00528EAD005AA2BD007BC3D60094DBE70084DFF70052C7EF0021AA
          DE000892C6002182AD00316D9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF005A869C0042BEE70063D3F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E7000096D600395D7B00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF005A869C0042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE00395D7B00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00638EA50042C7EF006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE0042698400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00638EA50042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE0042698400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00638EA50042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE0042698400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006B96AD0042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE0042698400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006B96AD0042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE004A758C00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006B9AAD0042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE004A758C00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006B9AB50042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE004A758C00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00739EB50042C7F7006BD7F7008CE3F700A5EBF70084DFF70052CBF70010B6
          EF0000AAEF0000A2E700009EDE00527D9400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0073A2BD006BD7F7009CEBF700B5F3FF00C6FBFF00C6FBFF00C6F7FF00ADF3
          FF008CE3F7006BD7F70039BAE700527D9400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0073A2BD00C6FBFF00C6FBFF00C6FBFF00C6FBFF00C6FBFF00C6FBFF00C6FB
          FF00C6FBFF00C6FBFF00C6FBFF00527D9400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008CBECE009CCFDE00ADDFEF00BDEFF700C6F7FF00C6F7FF00BDEF
          F700ADDBE70094C7D6007BAABD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00A5CFDE008CBECE007BA6BD006B9AB5006B9AAD00739E
          B50084AABD009CBECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00798591006F7B
          8700636B7800555D6A00424B540030394200232C3000161F2300101219001214
          1B000E12170011151A000F12170012151A000F111800FF00FF005F899600B3DD
          EA0064CDEE0051BADB0034ACDD0031A9DA0028A2D2001E98C800258EBA001881
          AD001980AD00147BA80020779D001A719700171E2100FF00FF00628D9700BEE9
          F3008FE4FE0089DEF80072D5FB006CCFF50057C6F4004FBEEC0041B3EF003AAC
          E80028A3E500219CDE002692C8000874AA001C262C00FF00FF006D909A00C8EB
          F50099E9FB0098E8FA007DDCFC0078D7F70065C8F50062C5F2004ABCF10043B5
          EA0036ABE9002FA4E2002798D1000A7BB4002C343A00FF00FF007598A200C9EC
          F600A5EDFD009FE7F7008AE3FE0085DEF90070D5FC0066CBF20059C4F70051BC
          EF003DB2EF0036ABE8002AA0DB000B81BC003B424B00FF00FF007497A100CAED
          F700A8EFF900A7EEF80092E7FD008DE2F8007DDBFE0077D5F80063CDF7005DC7
          F1004CBBF30045B4EC0028A6DD000B89C00047545C00FF00FF007B9BA600CFEF
          FA00B8EDFA00B9EEFB00A1EBFE009EE8FB0084E2FF0080DEFC0072D3FE006BCC
          F70058C5F9004FBCF00031A9EA00148CCD005A636D00FF00FF007B9FA900C9ED
          F700B4F0F700B2EEF500A7EEFB00A4EBF80091E6FC008DE2F8007BDCFE0072D3
          F50060CAF90059C3F20044BDEF00229BCD00606F7800FF00FF0084A4AF00CEEE
          F900BEEDFB00C0EFFD00BAF2F700BAF2F700A8ECFF00A6EAFD0091E3FF008DDF
          FE007CDCFF0075D5F90063CAF7005EC5F200656E7B00FF00FF008DA4AC008BA2
          AA008DA4AB008CA3AA008FA4AC008A9FA7008A9EA6008A9EA6008599A000869A
          A1008193A0008395A20080949F008296A100FDFFFF00FF00FF0081A6AB00BFE4
          E900B6ECFC00B6ECFC00A1EAF70098E1EE0097A3A700F2FEFF00FEFEFE00FF00
          FF00FDFFFD00FCFFFC00FF00FF00FF00FF00FDFFFF00FF00FF00F4FFFF0099A4
          A8008DA4AB008DA4AB008FA3AB0091A5AD00FF00FF00FF00FF00FFFFFD00FFFF
          FD00FFFDFF00FFFEFF00FEFEFE00FF00FF00FCFEFE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3
          B300B4B6B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B7B700E2E0
          E000D8D8D800B6B7B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBBBB00E2E2E200FBFA
          FC00FBFAFC00DDDBDA00B8B6B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBBBD00E2E5E300FBFAFC00F5DD
          F500E7A9EF00FBFAFC00DAD8D800B6B8B900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C2C0C000E3E6E400FBFAFC00F6DDF700E49B
          EB00E8A0ED00E3A8EC00FBFAFC00D7D9DA00B9B7B600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C2C4C400E7E7E700FBFAFC00F5DCF600E89CED00EBA9
          F000ECACF400EDA3EF00E4A0E700FBFAFC00D9D8DA00B5B7B700FFFFFF00FFFF
          FF00FFFFFF00C9C7C600E6E9E700FBFAFC00F3DFF600E79CEA00EDA9F000ECB0
          F000EBACF200E69DED00F0C6F500FBFAFC00D6D7D500B7B5B500FFFFFF00FFFF
          FF00C8CACA00EBE9E800FBFAFC00F3DAF600E897EC00EEABF000EBAEF000EBAB
          F300EB9EEF00EFC8F500FBFAFC00DAD7D900BABBB900FFFFFF00FFFFFF00D1CF
          CE00EBEBEB00FCFBFD00FBFAFC00F9EAF800E69EEB00E8A8F000EDADEF00E8A0
          ED00EFC8F500FBFAFC00D8DADA00BBBDBD00FFFFFF00FFFFFF00FFFFFF00CBCD
          CE00FBFAFC00FBFAFC00FBFAFC00FBFAFC00FBEEFC00EA9DEE00E699ED00F0C7
          F400FBFAFC00DBDDDD00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0CE
          CD00FBFAFC00E0DFE100CCCCCC00D1D3D400FBFAFC00F8EBF900EFCAF200FBFA
          FC00E0DCE100C1C3C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCF
          CF00FBFAFC00CECDCF00FFFFFE00DCDDDB00F1F3F300FBFAFC00FBFAFC00DEE1
          DF00C7C8C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D2
          D200FBFAFC00E3E1E100CECFCD00E1E1E100FBFAFC00FBFAFC00E3E1E100CCCA
          C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D4
          D200FBFAFC00FBFAFC00FBFAFC00FBFAFC00FBFAFC00E3E2E400CBCDCD00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D6
          D400D4D4D400D0D2D300CFD1D100CED1CF00CECECE00CDCDCD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0080000000FF00000080000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0080000000FF000000FF000000FF00000080000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0080000000FF000000FF000000FF00FF00FF000000FF0000008000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0080000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00
          000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF00000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF000000FF00000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF000000FF00000080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF00000080000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000800000008000000080000000800000008000000080000000
          80000000800000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000080000080000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000080000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000800000008000000080000080000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000008000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000000080
          000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000000080
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000800000008000000080000000800000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000000800000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000080000000800000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000800000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00840000008400000084000000840000008400
          00008400000084000000840000008400000084000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00
          FF00840000008400000084000000840000008400000084000000840000008400
          00008400000084000000840000008400000084000000FF00FF00FF00FF00FF00
          FF0084000000FFFFFF00FFFFFF0084000000FFFFFF0084000000840000008400
          00008400000084000000840000008400000084000000FF00FF00FF00FF00FF00
          FF0084000000FFFFFF00FFFFFF00840000008400000084000000840000008400
          00008400000084000000840000008400000084000000FF00FF00FF00FF00FF00
          FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00840000008400
          0000840000008400000084000000840000008400000084000000840000008400
          00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFF
          FF0084000000FFFFFF0084000000840000008400000084000000840000008400
          00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFF
          FF00840000008400000084000000840000008400000084000000840000008400
          00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
          0000840000008400000084000000840000008400000084000000840000008400
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFF
          FF00840000008400000084000000840000008400000084000000840000008400
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
          0000840000008400000084000000840000008400000084000000840000008400
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000FFFFFF008400000084000000840000008400000084000000FFFFFF008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
          0000840000008400000084000000840000008400000084000000840000008400
          000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00173C7100FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003283C5002159A0002159A0002159A0002159A0001F5593002159A0002159
          A0002159A0002159A0003283C500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002259A2008BABCE0097B8D70098B9D70082A0C70058709E008BABCE0097B8
          D70098B9D70082A0C7002259A200FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00225CA500A1C9E500A6D1ED00A6D1ED0098B9D70058709E00A1C9E500A6D1
          ED00A6D1ED0098B9D700225CA500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002360A900A1C9E500BBF1F900A6D1ED0097B8D70058709E00A1C9E500BBF1
          F900A6D1ED0097B8D7002360A900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002563AE009EBFDB00A1C9E500A1C9E5008BABCE00404F79009EBFDB00A1C9
          E500A1C9E5008BABCE002563AE00FF00FF00FF00FF00FF00FF00FF00FF00173C
          71001F55930058709E0058709E0058709E00404F7900404F7900404F79005870
          9E0058709E0058709E001F559300173C7100FF00FF00FF00FF00FF00FF00FF00
          FF00286DB7008BABCE0097B8D70098B9D70082A0C700404F79008BABCE0097B8
          D70098B9D70082A0C700286DB700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002A71BB00A1C9E500A6D1ED00A6D1ED0098B9D70058709E00A1C9E500A6D1
          ED00A6D1ED0098B9D7002A71BB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002A75BF00A1C9E500BBF1F900A6D1ED0097B8D70058709E00A1C9E500BBF1
          F900A6D1ED0097B8D7002A75BF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002B77C1009EBFDB00A1C9E500A1C9E5008BABCE0058709E009EBFDB00A1C9
          E500A1C9E5008BABCE002B77C100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003182BF002D7AC1002D7AC1002D7AC1002D7AC1001F5593002D7AC1002D7A
          C1002D7AC1002D7AC1003182BF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00173C7100FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003D707F003E6F7B003E707C003E707C003E707B003E707C003E707B003E70
          7C003E6F7C003E6F7C003D707F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003C718100F7E8DF00F8E8DE00F7E8DF00F8E8DF00F7E8DF00F7E8DF00F7E8
          DF00F7E8DE00F7E8DE003C718200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003C738500F8E9E100F8EAE100E4D2B700E4D2B700F8EAE100F8EAE100F8EA
          E000F8E9E100F7EAE1003C748400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003B768800F8EBE300EDE1C700A7723E0096622800BC906B00F8EBE400F8EB
          E300F8ECE300F9EBE3003B768900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0039778E00F8EEE600EDE1C700C5A06A00C5A06A0096622800BC906B00F9ED
          E600F8EEE600F8EDE70039778D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00387B9200F9EFE900F9EFE900F9F0E900EDE1C70096622800BC906B00F9F0
          E900F9F0EA00F9F0E900397B9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00377D9700FAF2EC00FAF1ED00F9F2EC00EDE1C70096622800BC906B00FAF1
          EC00F9F2ED00FAF2ED00377C9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00357F9C00FBF3F000FAF3F000FBF4F000EDE1C70096622800BC906B00FAF4
          F000FBF3F000FBF4EF00367F9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0035829F00FBF6F300FBF6F300FBF6F200EDE1C70096622800BC906B00FBF5
          F300FBF5F300FBF6F3003582A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003483A400FBF7F500FBF7F500FBF8F600EDE1C70096622800BC906B00FBF8
          F500FBF8F600FBF8F5003484A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003386A800FCF9F700FCF9F700FCF9F700EDE1C70096622800BC906B008FC8
          E0007CBDDA0068B2D4003385A900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003287AC00FCFAF900FCFAF900FCFAF900FCFAF900FCFAF900FCFAF9007CBD
          DA0069B2D500308AB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003188AF00FCFAF900FCFAF900FCFAF900FCFAF900FCFAF900FCFAF90069B2
          D400308AB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00308AB200308AB200308AB200308AB200308AB200308AB200308AB200308A
          B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00FFFFFF00FFFFFF00D7851F00D7851F00D7851F00D785
          1F00FFFFFF00FFFFFF00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00FFFFFF00D7851F00D7851F00D7851F00D785
          1F00FFFFFF00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00D785
          1F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00D7851F00D785
          1F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00D785
          1F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D7851F00D785
          1F00D7851F00D7851F00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFF
          FF00D7851F00D7851F00D7851F00FFFFFF00D7851F00D7851F00D7851F00D785
          1F00FFFFFF00D7851F00D7851F00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D7851F00FFFFFF00FFFFFF00D7851F00D7851F00D7851F00D785
          1F00FFFFFF00FFFFFF00D7851F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009198
          9800919898009198980091989800919898009198980091989800919898009198
          98009198980091989800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F9A
          9B00F7E7DC00F7E7DC00F7E7DC00F7E7DC00F7E7DC00F7E7DC00F7E7DC00F7E7
          DC00F7E7DC008F9A9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D9C
          9F00F8E9DF00F8E9DF00BBACA4004022130040221300BBACA400F8E9DF00F8E9
          DF00F8E8DE008D9C9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A9F
          A300F8EAE100F8EAE10040221300402213004022130040221300BBACA400F8EA
          E100F8EAE1008A9FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087A1
          A600F9ECE400F9ECE40040221300F9EEE600F9EEE6004022130087706400F9EC
          E400F9ECE40087A1A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0085A4
          AB00F9EEE600F9EEE600F9EEE600F9EEE600F9EEE6004022130040221300F9EE
          E600F9EEE60085A4AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0081A7
          B000F9F0EA00F9F0EA00F9F0EA00F9F0EA00F9F0EA004022130040221300F9F0
          EA00F9F0EA0081A7B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007EAA
          B500FAF2ED00FAF2ED00FAF2ED00FAF2ED00FAF2ED004022130040221300FAF2
          ED00FAF2ED00C5CFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007BAC
          B900FBF5F000FBF5F000FBF5F000FBF5F000FBF5F0004022130040221300CED7
          DB009A8B7200926C5B0090726A0083969900FFFFFF00FFFFFF00FFFFFF0079AE
          BD00FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200B1BDBC00C4A3
          5700D48F4300AC716200A36256008362560089979B00FFFFFF00FFFFFF0077B1
          C100FBF8F500FBF8F500FBF8F500FBF8F500FDFBFA00FDFBFA00B3B36F00E1C1
          4200B5A5590043677D00706E7500AF6E52008D7B7100FFFFFF00FFFFFF0073B3
          C400FBF9F700FBF9F700FBF9F700FBF9F700FDFCFB00FDFCFB00B3B36F00D6D9
          AC009DC0A30049B6A400449D9E009F7D6B00A86E5900FFFFFF00FFFFFF0071B5
          C700FCFAF900FCFAF900FCFAF900FCFAF900FDFBFA00FDFBFA00D1D1A100DFF4
          FF0095D2D70086DDC5009AD4B500AA955900A8785700FFFFFF00FFFFFF0071B5
          C70071B5C70071B5C70071B5C70071B5C70071B5C700BAD7DD00C3D0CF00B3B3
          6F00A0CCDB00C8E7F800B3B36F00D3B53A00C3D0CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3D0
          CF008DB49400B3B36F008DB49400C3D0CF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004F747B004F747B004F747B004F747B004F747B004F74
          7B004F747B004F747B004F747B004F747B004F747B00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004E767E00F7E9E000F7E9DF00F7E9E000F7E9E000F7E9
          E000F8E9DF00F7E9DF00F7E9DF00F7E9E0004E767E00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004C788200F8EAE100F7EBE100F8EBE200F8EBE200F7EA
          E200F7EBE200F8EAE100F7EBE100F8EAE1004C788200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004B7A8700F8ECE400F8EDE4006B48290099816B00F9EC
          E40099816B006B482900F8EDE400F8ECE4004B7A8700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004A7D8C00F9EEE700F9EEE700AB9886006B482900F8EE
          E7006B482900AB988600F9EEE700F9EEE7004A7D8C00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0048809100F9F0EA00F9F0EA00F9F0EA006B482900AB98
          86006B482900FAF0EA00F9F0EA00F9F0EA00487F9200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0046829700FAF2ED00FAF2ED00FAF2ED00AB9886006B48
          2900AB988600F9F2ED00FAF2ED00FAF2ED0046829700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0044859D00FBF4F000FBF4F000FAF4F0006B482900AB98
          86006B482900FAF4F000FBF4F000FAF4F00044859E00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004288A300FBF6F300FAF6F300AB9886006B482900FBF6
          F2006B482900AB988600FBF6F300FBF6F3004288A300FFFFFF00FFFFFF00FFFF
          FF001343780032608500538CAA00FBF8F500FBF8F5006B48290099816B00FCF7
          F50099816B006B482900FCF8F500FCF8F600418BA800FFFFFF00FFFFFF003956
          8800273C68003F81C80045569600273C6800FCF9F800FCF9F800FBF9F700FCF9
          F800FCF9F7008FC8E0007CBDDA0068B2D4003F8CAD00FFFFFF00FFFFFF003750
          750052639F00273C68004FB9E8004B61B300538CAA00FCFAF900FCFAF900FCFA
          F900FCFAF9007CBDDA0069B2D5003E8EB100FFFFFF00FFFFFF00FFFFFF005974
          9D005878BE00638ABD00315D81006DAFE40032608500FCFAF900FCFAF900FCFA
          F900FCFAF90069B2D4003D90B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0033588A006AA2DB0073B3E000315D8100538CAA003D90B4003D90B4003D90
          B4003D90B4003D90B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00538CAA00326085005981A800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00AE948600AE938600AE938500AE948600AE948500AE948600AF948500AE94
          8600AE938600AE938600AC948900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00AC968800F7E9DF00F7E9DF00F7E9DF00F7E9E000F7E9E000F8E9DF00F7E9
          DF00F7E9DF00F7E9E000AA968C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00AA978D00F8EAE200F8EAE200F8EAE100F8EBE200F7EAE200F7EBE200F8EA
          E100F7EBE100F8EAE100A8998F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00A79A9000F8ECE400F9ECE5006B48290099816B00F9ECE40099816B006B48
          2900F8EDE400F8ECE400A59C9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00A49D9500F9EEE700F9EEE700AB9886006B482900F8EEE7006B482900AB98
          8600F9EEE700F9EEE700A29E9800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00A0A09A00F9F0EA00F9F0EA00F9F0EA006B482900AB9886006B482900FAF0
          EA00F9F0EA00F9F0EA009FA29E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF009CA39F00FAF2ED00FAF2ED00FAF2ED00AB9886006B482900AB988600F9F2
          ED00FAF2ED00FAF2ED009BA4A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0099A7A500FBF4F000FBF4F000FAF4F0006B482900AB9886006B482900FAF4
          F000FBF4F000FAF4F00098A8A800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0096A9AB00FBF6F300FAF6F300AB9886006B482900FBF6F2006B482900AB98
          8600FBF6F300FBF6F30095ABAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0092ADB000FBF8F500FBF8F5006B48290099816B00FCF7F50099816B006B48
          2900FCF8F500FCF8F60092AEB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008FB0B500FCF9F800FCF9F800FCF9F800FBF9F700FCF9F800FCF9F7008FC8
          E0007CBDDA0068B2D4008EB0B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008CB2B900FCFAF900FCFAF900FCFAF900FCFAF900FCFAF900FCFAF9007CBD
          DA0069B2D50088B6BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008AB5BC00FCFAF900FCFAF900FCFAF900FCFAF900FCFAF900FCFAF90069B2
          D40088B6BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0088B6BF0088B6BF0088B6BF0088B6BF0088B6BF0088B6BF0088B6BF0088B6
          BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003982
          D6008CB2D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003982
          D6003982D6008CB2D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00529AD6003982D600529AD6009CCFBD009CCFBD009CCFBD00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00319ABD003982D6003996D60031BAA50031AA940031AA9400299E
          8C0021927B00399E8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0042AE9C0042CBD6003996D6003996D6004ADBC6004ADBC6004ADB
          C6004AD3BD0031BAA50021927B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0084C7B50042CBB50052EFD60042B6D6003996D60042CBB50042CB
          B50042CBB5004AD3BD0039C3AD0021927B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0031AA94005AEFD60052EFD6004ADBC60042CBD6004AE3
          CE004AE3CE004ADBC6004ADBC60039C3AD00399E8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0084C7B5004AD3BD005AEFD60052DFC60052EFD60052EF
          D6004ADBC6004ADBC6004AD3BD0042CBB50031BAA50084C7B500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0042AE9C005AE7CE0052DFC6005AEFD6005AEF
          D60052DFC60052EFD60052EFD6004AE3CE004AE3CE00299E8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004ABAA5004AD3BD005AE7CE005AEF
          D60052DFC60052EFD60052EFD60052EFD60052EFD60031BAA500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009CCFBD005ABAAD004ABA
          A5004ABAA5004AD3BD004AD3BD004ADBC6004AD3BD0031BAA500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00B5D7C60084C7B50084C7B50073BAAD0084C7B500FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF009B580100FF00FF00FF00FF00245B9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A8620000A4630000FF00FF00FF00FF0022639A0021629500FF00
          FF00BC835500A8744C009C623600984E1B0097390B00FF00FF00FF00FF00FF00
          FF00B26D0000D5960D00AE6D0100FF00FF00FF00FF001F659A002A7ED3001F65
          9A00D5C4AF00D5C79B00E9DBC100B6A789009B815F00976E0D00FF00FF00BC78
          0100D69B1E00D69B1E00BC7801005D3217005D3217001E6C9B004298DE004397
          DE001D6C9F00EEE9D700E9DBC100B6A789009B815F00823A1E00FF00FF00FF00
          FF00C3810000D8A23200C4830000FF00FF00FF00FF001C719F005BB1E9001B70
          9D00EADDC800F1E6C400FBF3E700DCD0C200CAB8A200823A1E00FF00FF00FF00
          FF00FF00FF00CE8A0100CE8C0000FF00FF00FF00FF0019769D001775A000CDB0
          A500C8A67200F1E6C400FBF3DE00DCD0C100CAB8A200823A1E00FF00FF00FF00
          FF00FF00FF00FF00FF00D4910000FF00FF00FF00FF001B77A000FF00FF00823A
          1E00C8A67200F1E6C400FBF3E700DCD0C200CAB8A200823A1E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D1D7DF00A8B6C600823A
          1E008F693600DCC7A100E5DBC600B4A788009C815F00823A1E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0026497000485A9100B5B8D100BA82
          5200BEA07000F1E6C400FBF3E700DCD0C200CAB8A200BA825200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00345080004669A5005574B8002DAFE700A9B2
          C300A87752008B5A3A0094542600803D1F009C603B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF008B9BB0005361A8005E93D70047BEF200264970005665
          A700BCCCE800B1B6CC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00586EB2006A9BDC0062C2EE00315D81005F81AE006186
          C50045669F0074859D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF005E97BA007BC7ED004C7199005F81AE006D9FD1005075
          B60026497000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF003E63940077A6D30073B3E000537DC400395E
          9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00598AB000466E97008B9BB000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object SyntAnalyzerJSP: TSyntAnalyzer
    Formats = <
      item
        DisplayName = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Text'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = clInfoBk
        MultiLineBorder = True
      end
      item
        DisplayName = 'Tag bound'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Tag param'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Tag properties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Unknown tag content'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsUnderline]
      end
      item
        DisplayName = 'Tag Key'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Bound'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BorderTypeLeft = blSolid
        BorderColorLeft = clGray
        BorderTypeTop = blSolid
        BorderColorTop = clGray
        BorderTypeRight = blSolid
        BorderColorRight = clGray
        BorderTypeBottom = blSolid
        BorderColorBottom = clGray
        MultiLineBorder = True
      end
      item
        DisplayName = 'Marked block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = clHighlight
        FormatType = ftColor
      end
      item
        DisplayName = 'Tree item (attribute)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = 14155775
        FormatType = ftColor
      end
      item
        DisplayName = 'Tree item (tag)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end>
    TokenRules = <
      item
        DisplayName = 'Comment'
        StyleName = 'Comment'
        TokenType = 1
        Expression = '(?ms)<!--.*?(-->|\Z)'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Comment end'
        StyleName = 'Comment'
        TokenType = 1
        Expression = '# for use in <SCRIPT>'#13#10'-->'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '<'
        StyleName = 'Tag bound'
        TokenType = 10
        Expression = '<[/!\-]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '>'
        StyleName = 'Tag bound'
        TokenType = 11
        Expression = '>'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Integer'
        StyleName = 'Number'
        BlockName = 'Tag begin'
        TokenType = 5
        Expression = '\d+'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'HEX'
        StyleName = 'Number'
        BlockName = 'Tag begin'
        TokenType = 7
        Expression = '\#[a-f\d]+'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Tag param'
        StyleName = 'Tag param'
        BlockName = 'Tag begin'
        TokenType = 4
        Expression = '(?s)".*?("|\Z)'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Tag ident'
        BlockName = 'Tag begin'
        TokenType = 2
        Expression = '[^\s=>]+'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '='
        StyleName = 'Tag bound'
        BlockName = 'Tag begin'
        TokenType = 3
        Expression = '='#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Unknow tag content'
        StyleName = 'Unknown tag content'
        BlockName = 'Tag begin'
        Expression = '[^>]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '&...'
        StyleName = 'Tag Key'
        TokenType = 9
        Expression = '&\w+;'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Text'
        StyleName = 'Text'
        TokenType = 9
        Expression = '[^<&]*'
        ColumnFrom = 0
        ColumnTo = 0
      end>
    BlockRules = <
      item
        DisplayName = 'Tag keys'
        StyleName = 'Tag Key'
        BlockType = btTagDetect
        ConditionList = <
          item
            TokenTypes = 4
          end
          item
            TagList.Strings = (
              '<'
              '</')
            TokenTypes = 1024
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag property'
        StyleName = 'Tag properties'
        BlockType = btTagDetect
        ConditionList = <
          item
            TagList.Strings = (
              '=')
            TokenTypes = 8
          end
          item
            TokenTypes = 4
          end>
        IdentIndex = 1
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag property value'
        StyleName = 'Tag param'
        BlockType = btTagDetect
        ConditionList = <
          item
            TokenTypes = 20
          end
          item
            TagList.Strings = (
              '=')
            TokenTypes = 8
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag begin'
        ConditionList = <
          item
            TokenTypes = 1024
          end>
        BlockEnd = 'Tag end'
        NotCollapsed = True
        DisplayInTree = False
        DynHighlight = dhRange
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 2048
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Simple tag block'
        ConditionList = <
          item
            TagList.Strings = (
              'br'
              'hr'
              'image'
              'img'
              'link')
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '<')
            TokenTypes = 1024
          end>
        BlockEnd = 'Simple tag block end'
        HighlightPos = cpBound
        TreeItemStyle = 'Tree item (tag)'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Simple tag block end'
        BlockName = 'Simple tag block'
        StrictParent = True
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 2048
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag block begin'
        ConditionList = <
          item
            TagList.Strings = (
              'br'
              'hr'
              'image'
              'img'
              'link')
            CondType = tcNotEqual
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '<'
              '<!')
            TokenTypes = 1024
          end>
        BlockOffset = 1
        BlockEnd = 'Tag block end'
        HighlightPos = cpBound
        CollapseFmt = '< %s0 >'
        TreeItemStyle = 'Tree item (tag)'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag block end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '</')
            TokenTypes = 1024
          end>
        BlockOffset = -1
        SameIdent = True
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Comment begin'
        ConditionList = <
          item
            TokenTypes = 2
          end>
        BlockEnd = 'Comment end'
        DisplayInTree = False
        HighlightPos = cpBound
        CollapseFmt = '<!--  ...  -->'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Comment end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 2
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag attribute'
        BlockName = 'Tag begin'
        ConditionList = <
          item
            TokenTypes = 20
          end
          item
            TagList.Strings = (
              '=')
            TokenTypes = 8
          end
          item
            TokenTypes = 4
          end>
        NotCollapsed = True
        NameFmt = '%s0 %s-1 %s-2'
        HighlightPos = cpBound
        NoEndRule = True
        TreeItemStyle = 'Tree item (attribute)'
        IgnoreAsParent = False
      end>
    CodeTemplates = <>
    SubAnalyzers = <>
    TokenTypeNames.Strings = (
      'Unknown'
      'Comment'
      'Identifier'
      'Symbol'
      'String'
      'Integer const'
      'Float const'
      'Hex const'
      'Char const'
      'Text'
      'Open Tag'
      'Close Tag')
    MarkedBlockStyle = 'Marked block'
    DefaultStyleName = 'Default'
    Extentions = 'htm html'
    LexerName = 'HTML documents'
    Internal = True
    Left = 360
    Top = 232
  end
  object SyntAnalyzerXML: TSyntAnalyzer
    Formats = <
      item
        DisplayName = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Text'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BorderColorLeft = clGray
        BorderColorTop = clGray
        BorderColorRight = clGray
        BorderColorBottom = clGray
        MultiLineBorder = True
      end
      item
        DisplayName = 'Tag bound'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'CDATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Tag Key'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'ERROR content'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Tag ident'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Tag param'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Tag properties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Marked block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = clHighlight
        FormatType = ftColor
      end
      item
        DisplayName = 'Current tag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = 15987699
        FormatType = ftBackGround
      end
      item
        DisplayName = 'Current Block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BgColor = 15400927
        BorderTypeLeft = blSolid
        BorderColorLeft = clGray
        BorderTypeTop = blSolid
        BorderColorTop = clGray
        BorderTypeRight = blSolid
        BorderColorRight = clGray
        BorderTypeBottom = blSolid
        BorderColorBottom = clGray
      end
      item
        DisplayName = 'DTD element type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'DTD bound'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Tree item (attribute)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = 14155775
        FormatType = ftColor
      end
      item
        DisplayName = 'Tree item (tag)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end>
    TokenRules = <
      item
        DisplayName = 'PI'
        TokenType = 12
        Expression = '(?s)<\?.*?(\?>|\Z)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Comment'
        StyleName = 'Comment'
        TokenType = 1
        Expression = '(?s)<!--.*?(-->|\Z)'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'CDATA start'
        StyleName = 'CDATA'
        TokenType = 11
        Expression = '<!\[CDATA\['#13#10'#(?s)<!\[CDATA\[.*?(\]\]>|\Z)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'CDATA Text'
        StyleName = 'Text'
        BlockName = 'CDATA begin'
        Expression = '(?s)[^\]]*'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'CDATA end'
        StyleName = 'Tag bound'
        BlockName = 'CDATA begin'
        TokenType = 14
        Expression = '\]\]>'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '<'
        StyleName = 'Tag bound'
        TokenType = 9
        Expression = '<[/!\-\:\?]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '>'
        StyleName = 'Tag bound'
        TokenType = 10
        Expression = '[/\?]?>'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'DTD Element type'
        StyleName = 'DTD element type'
        BlockName = 'DTD element start'
        TokenType = 2
        Expression = '(?s)\((\(.*?\)|.)*?\)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'DTD bounds: [ ] '
        StyleName = 'DTD bound'
        BlockName = 'DOCTYPE begin'
        Expression = '[\[\]]'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Tag param'
        StyleName = 'Tag param'
        BlockName = 'Tag begin'
        TokenType = 4
        Expression = '(?s)".*?"'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '='
        StyleName = 'Tag bound'
        TokenType = 3
        Expression = '='#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Tag ident'
        StyleName = 'Tag ident'
        BlockName = 'Tag begin'
        TokenType = 2
        Expression = '[^>=\?\s/]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Error content'
        StyleName = 'ERROR content'
        BlockName = 'Tag begin'
        Expression = '[^>\s]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = '&...'
        StyleName = 'Tag Key'
        TokenType = 4
        Expression = '&\w+;'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Text'
        StyleName = 'Text'
        BlockName = 'CDATA begin'
        NotParent = True
        TokenType = 4
        Expression = '[^<&]*'
        ColumnFrom = 0
        ColumnTo = 0
      end>
    BlockRules = <
      item
        DisplayName = 'Tag begin'
        StyleName = 'Current tag'
        ConditionList = <
          item
            TokenTypes = 512
          end>
        BlockEnd = 'Tag end'
        NotCollapsed = True
        DisplayInTree = False
        DynHighlight = dhRangeNoBound
        HighlightPos = cpRange
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 1024
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'DTD element start'
        ConditionList = <
          item
            TagList.Strings = (
              'DOCTYPE')
            CondType = tcNotEqual
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '<!')
            TokenTypes = 512
          end>
        BlockOffset = 1
        BlockEnd = 'DTD element end'
        NameFmt = '%s-1'
        HighlightPos = cpBound
        CollapseFmt = '< %s0 %s-1 >'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'DTD element end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 1024
          end>
        HighlightPos = cpBound
        CancelNextRules = True
        IgnoreAsParent = False
      end
      item
        DisplayName = 'DOCTYPE begin'
        ConditionList = <
          item
            TagList.Strings = (
              'DOCTYPE')
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '<!')
            TokenTypes = 512
          end>
        BlockOffset = 1
        BlockEnd = 'DOCTYPE end'
        NameFmt = 'Document structure'
        HighlightPos = cpBound
        CollapseFmt = 'Document structure'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'DOCTYPE end'
        BlockName = 'DOCTYPE begin'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              '>')
            TokenTypes = 1024
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag keys'
        StyleName = 'Tag Key'
        BlockType = btTagDetect
        ConditionList = <
          item
            TokenTypes = 4
          end
          item
            TokenTypes = 512
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag block begin'
        StyleName = 'Current Block'
        ConditionList = <
          item
            TokenTypes = 4
          end
          item
            TagList.Strings = (
              '<')
            TokenTypes = 512
          end>
        BlockEnd = 'Tag block end'
        DynHighlight = dhBound
        HighlightPos = cpRange
        DynSelectMin = True
        CollapseFmt = ' %s0 >'
        TreeItemStyle = 'Tree item (tag)'
        IgnoreAsParent = False
        AutoCloseMode = acmCloseOpened
        AutoCloseText = '</%s0>'
      end
      item
        DisplayName = 'Tag block end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 4
            IgnoreCase = True
          end
          item
            TagList.Strings = (
              '</')
            TokenTypes = 512
          end>
        SameIdent = True
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'End of simple tag'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              '/>')
            TokenTypes = 1024
          end>
        BlockEnd = 'Tag block begin'
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Comment begin'
        ConditionList = <
          item
            TokenTypes = 2
          end>
        BlockEnd = 'Comment end'
        DisplayInTree = False
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Comment end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 2
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'CDATA end'
        BlockName = 'CDATA begin'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 16384
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'CDATA begin'
        ConditionList = <
          item
            TokenTypes = 2048
          end>
        BlockEnd = 'CDATA end'
        NameFmt = '%s-1'
        HighlightPos = cpBound
        CollapseFmt = 'CDATA'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Tag attribute'
        StyleName = 'Tag param'
        BlockName = 'Tag begin'
        ConditionList = <
          item
            TokenTypes = 16
          end
          item
            TokenTypes = 8
          end
          item
            TokenTypes = 4
          end>
        NameFmt = '%s0 %s-1 %s-2'
        RefToCondEnd = True
        HighlightPos = cpBound
        NoEndRule = True
        TreeItemStyle = 'Tree item (attribute)'
        IgnoreAsParent = False
      end>
    CodeTemplates = <>
    SubAnalyzers = <>
    SampleText.Strings = (
      '<?xml version="1.0" encoding="ISO-8859-1" ?>'
      ''
      '<!DOCTYPE web-app ['
      
        '  <!ELEMENT web-app (icon?, display-name?, description?, distrib' +
        'utable?,'
      '  context-param*, filter*, filter-mapping*, listener*, servlet*,'
      
        '  servlet-mapping*, session-config?, mime-mapping*, welcome-file' +
        '-list?,'
      
        '  error-page*, taglib*, resource-env-ref*, resource-ref*, securi' +
        'ty-constraint*,'
      
        '  login-config?, security-role*, env-entry*, ejb-ref*,  ejb-loca' +
        'l-ref*)>'
      '  <!ELEMENT auth-constraint (description?, role-name*)>'
      '  <!ELEMENT auth-method (#PCDATA)>'
      
        '  <!ELEMENT context-param (param-name, param-value, description?' +
        ')>'
      '  <!ELEMENT description (#PCDATA)>'
      '  <!ELEMENT display-name (#PCDATA)>'
      '  <!ELEMENT distributable EMPTY>'
      '  <!ELEMENT ejb-link (#PCDATA)>'
      
        '  <!ELEMENT ejb-local-ref (description?, ejb-ref-name, ejb-ref-t' +
        'ype,local-home, local, ejb-link?)>'
      
        '  <!ELEMENT ejb-ref (description?, ejb-ref-name, ejb-ref-type,ho' +
        'me, remote, ejb-link?)>'
      '  <!ELEMENT ejb-ref-name (#PCDATA)>'
      '  <!ELEMENT ejb-ref-type (#PCDATA)>'
      
        '  <!ELEMENT env-entry (description?, env-entry-name, env-entry-v' +
        'alue?,env-entry-type)>'
      '  <!ELEMENT env-entry-name (#PCDATA)>'
      '  <!ELEMENT env-entry-type (#PCDATA)>'
      '  <!ELEMENT env-entry-value (#PCDATA)>'
      '  <!ELEMENT error-code (#PCDATA)>'
      
        '  <!ELEMENT error-page ((error-code | exception-type), location)' +
        '>'
      '  <!ELEMENT exception-type (#PCDATA)>'
      '  <!ELEMENT extension (#PCDATA)>'
      
        '  <!ELEMENT filter (icon?, filter-name, display-name?, descripti' +
        'on?,filter-class, init-param*)>'
      '  <!ELEMENT filter-class (#PCDATA)>'
      
        '  <!ELEMENT filter-mapping (filter-name, (url-pattern | servlet-' +
        'name))>'
      '  <!ELEMENT filter-name (#PCDATA)>'
      '  <!ELEMENT form-error-page (#PCDATA)>'
      
        '  <!ELEMENT form-login-config (form-login-page, form-error-page)' +
        '>'
      '  <!ELEMENT form-login-page (#PCDATA)>'
      '  <!ELEMENT home (#PCDATA)>'
      '  <!ELEMENT http-method (#PCDATA)>'
      '  <!ELEMENT icon (small-icon?, large-icon?)>'
      '  <!ELEMENT init-param (param-name, param-value, description?)>'
      '  <!ELEMENT jsp-file (#PCDATA)>'
      '  <!ELEMENT large-icon (#PCDATA)>'
      '  <!ELEMENT listener (listener-class)>'
      '  <!ELEMENT listener-class (#PCDATA)>'
      '  <!ELEMENT load-on-startup (#PCDATA)>'
      '  <!ELEMENT local (#PCDATA)>'
      '  <!ELEMENT local-home (#PCDATA)>'
      '  <!ELEMENT location (#PCDATA)>'
      
        '  <!ELEMENT login-config (auth-method?, realm-name?, form-login-' +
        'config?)>'
      '  <!ELEMENT mime-mapping (extension, mime-type)>'
      '  <!ELEMENT mime-type (#PCDATA)>'
      '  <!ELEMENT param-name (#PCDATA)>'
      '  <!ELEMENT param-value (#PCDATA)>'
      '  <!ELEMENT realm-name (#PCDATA)>'
      '  <!ELEMENT remote (#PCDATA)>'
      '  <!ELEMENT res-auth (#PCDATA)>'
      '  <!ELEMENT res-ref-name (#PCDATA)>'
      '  <!ELEMENT res-sharing-scope (#PCDATA)>'
      '  <!ELEMENT res-type (#PCDATA)>'
      
        '  <!ELEMENT resource-env-ref (description?, resource-env-ref-nam' +
        'e,resource-env-ref-type)>'
      '  <!ELEMENT resource-env-ref-name (#PCDATA)>'
      '  <!ELEMENT resource-env-ref-type (#PCDATA)>'
      
        '  <!ELEMENT resource-ref (description?, res-ref-name, res-type, ' +
        'res-auth,res-sharing-scope?)>'
      '  <!ELEMENT role-link (#PCDATA)>'
      '  <!ELEMENT role-name (#PCDATA)>'
      '  <!ELEMENT run-as (description?, role-name)>'
      
        '  <!ELEMENT security-constraint (display-name?, web-resource-col' +
        'lection+,auth-constraint?, user-data-constraint?)>'
      '  <!ELEMENT security-role (description?, role-name)>'
      
        '  <!ELEMENT security-role-ref (description?, role-name, role-lin' +
        'k?)>'
      
        '  <!ELEMENT servlet (icon?, servlet-name, display-name?, descrip' +
        'tion?,'
      
        '    (servlet-class|jsp-file), init-param*, load-on-startup?, run' +
        '-as?, security-role-ref*)>'
      '  <!ELEMENT servlet-class (#PCDATA)>'
      '  <!ELEMENT servlet-mapping (servlet-name, url-pattern)>'
      '  <!ELEMENT servlet-name (#PCDATA)>'
      '  <!ELEMENT session-config (session-timeout?)>'
      '  <!ELEMENT session-timeout (#PCDATA)>'
      '  <!ELEMENT small-icon (#PCDATA)>'
      '  <!ELEMENT taglib (taglib-uri, taglib-location)>'
      '  <!ELEMENT taglib-location (#PCDATA)>'
      '  <!ELEMENT taglib-uri (#PCDATA)>'
      '  <!ELEMENT transport-guarantee (#PCDATA)>'
      '  <!ELEMENT url-pattern (#PCDATA)>'
      
        '  <!ELEMENT user-data-constraint (description?, transport-guaran' +
        'tee)>'
      
        '  <!ELEMENT web-resource-collection (web-resource-name, descript' +
        'ion?,url-pattern*, http-method*)>'
      '  <!ELEMENT web-resource-name (#PCDATA)>'
      '  <!ELEMENT welcome-file (#PCDATA)>'
      '  <!ELEMENT welcome-file-list (welcome-file+)>'
      '  <!ATTLIST auth-constraint id ID #IMPLIED>'
      '  <!ATTLIST auth-method id ID #IMPLIED>'
      '  <!ATTLIST context-param id ID #IMPLIED>'
      '  <!ATTLIST description id ID #IMPLIED>'
      '  <!ATTLIST display-name id ID #IMPLIED>'
      '  <!ATTLIST distributable id ID #IMPLIED>'
      '  <!ATTLIST ejb-link id ID #IMPLIED>'
      '  <!ATTLIST ejb-local-ref id ID #IMPLIED>'
      '  <!ATTLIST ejb-ref id ID #IMPLIED>'
      '  <!ATTLIST ejb-ref-name id ID #IMPLIED>'
      '  <!ATTLIST ejb-ref-type id ID #IMPLIED>'
      '  <!ATTLIST env-entry id ID #IMPLIED>'
      '  <!ATTLIST env-entry-name id ID #IMPLIED>'
      '  <!ATTLIST env-entry-type id ID #IMPLIED>'
      '  <!ATTLIST env-entry-value id ID #IMPLIED>'
      '  <!ATTLIST error-code id ID #IMPLIED>'
      '  <!ATTLIST error-page id ID #IMPLIED>'
      '  <!ATTLIST exception-type id ID #IMPLIED>'
      '  <!ATTLIST extension id ID #IMPLIED>'
      '  <!ATTLIST filter id ID #IMPLIED>'
      '  <!ATTLIST filter-class id ID #IMPLIED>'
      '  <!ATTLIST filter-mapping id ID #IMPLIED>'
      '  <!ATTLIST filter-name id ID #IMPLIED>'
      '  <!ATTLIST form-error-page id ID #IMPLIED>'
      '  <!ATTLIST form-login-config id ID #IMPLIED>'
      '  <!ATTLIST form-login-page id ID #IMPLIED>'
      '  <!ATTLIST home id ID #IMPLIED>'
      '  <!ATTLIST http-method id ID #IMPLIED>'
      '  <!ATTLIST icon id ID #IMPLIED>'
      '  <!ATTLIST init-param id ID #IMPLIED>'
      '  <!ATTLIST jsp-file id ID #IMPLIED>'
      '  <!ATTLIST large-icon id ID #IMPLIED>'
      '  <!ATTLIST listener id ID #IMPLIED>'
      '  <!ATTLIST listener-class id ID #IMPLIED>'
      '  <!ATTLIST load-on-startup id ID #IMPLIED>'
      '  <!ATTLIST local id ID #IMPLIED>'
      '  <!ATTLIST local-home id ID #IMPLIED>'
      '  <!ATTLIST location id ID #IMPLIED>'
      '  <!ATTLIST login-config id ID #IMPLIED>'
      '  <!ATTLIST mime-mapping id ID #IMPLIED>'
      '  <!ATTLIST mime-type id ID #IMPLIED>'
      '  <!ATTLIST param-name id ID #IMPLIED>'
      '  <!ATTLIST param-value id ID #IMPLIED>'
      '  <!ATTLIST realm-name id ID #IMPLIED>'
      '  <!ATTLIST remote id ID #IMPLIED>'
      '  <!ATTLIST res-auth id ID #IMPLIED>'
      '  <!ATTLIST res-ref-name id ID #IMPLIED>'
      '  <!ATTLIST res-sharing-scope id ID #IMPLIED>'
      '  <!ATTLIST res-type id ID #IMPLIED>'
      '  <!ATTLIST resource-env-ref id ID #IMPLIED>'
      '  <!ATTLIST resource-env-ref-name id ID #IMPLIED>'
      '  <!ATTLIST resource-env-ref-type id ID #IMPLIED>'
      '  <!ATTLIST resource-ref id ID #IMPLIED>'
      '  <!ATTLIST role-link id ID #IMPLIED>'
      '  <!ATTLIST role-name id ID #IMPLIED>'
      '  <!ATTLIST run-as id ID #IMPLIED>'
      '  <!ATTLIST security-constraint id ID #IMPLIED>'
      '  <!ATTLIST security-role id ID #IMPLIED>'
      '  <!ATTLIST security-role-ref id ID #IMPLIED>'
      '  <!ATTLIST servlet id ID #IMPLIED>'
      '  <!ATTLIST servlet-class id ID #IMPLIED>'
      '  <!ATTLIST servlet-mapping id ID #IMPLIED>'
      '  <!ATTLIST servlet-name id ID #IMPLIED>'
      '  <!ATTLIST session-config id ID #IMPLIED>'
      '  <!ATTLIST session-timeout id ID #IMPLIED>'
      '  <!ATTLIST small-icon id ID #IMPLIED>'
      '  <!ATTLIST taglib id ID #IMPLIED>'
      '  <!ATTLIST taglib-location id ID #IMPLIED>'
      '  <!ATTLIST taglib-uri id ID #IMPLIED>'
      '  <!ATTLIST transport-guarantee id ID #IMPLIED>'
      '  <!ATTLIST url-pattern id ID #IMPLIED>'
      '  <!ATTLIST url-pattern beep ID #IMPLIED>'
      '  <!ATTLIST user-data-constraint id ID #IMPLIED>'
      '  <!ATTLIST web-app id ID #IMPLIED>'
      '  <!ATTLIST web-resource-collection id ID #IMPLIED>'
      '  <!ATTLIST web-resource-name id ID #IMPLIED>'
      '  <!ATTLIST welcome-file id ID #IMPLIED>'
      '  <!ATTLIST welcome-file-list id ID #IMPLIED>'
      ']>'
      ''
      '<web-app>'
      '    <display-name abc="123" '
      '    def="true"></display-name>'
      '    <description></description>'
      '    <filter-mapping>'
      '        <filter-name></filter-name>'
      '        <url-pattern></url-pattern>'
      '    </filter-mapping>'
      '</web-app>'
      '')
    TokenTypeNames.Strings = (
      'Unknown'
      'Comment'
      'Identifier'
      'Symbol'
      'String'
      'Integer const'
      'Float const'
      'Hex const'
      'Char const'
      'Tag Open'
      'Tag Close'
      'CDATA'
      'PI'
      'Attrib. value'
      'CDATA end')
    MarkedBlockStyle = 'Marked block'
    DefaultStyleName = 'Default'
    Extentions = 'xml xsl xslt mmpa mmpr sti bdsproj xsd'
    LexerName = 'XML documents'
    Left = 272
    Top = 232
  end
  object SyntAnalyzerJava: TSyntAnalyzer
    Formats = <
      item
        DisplayName = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Marked block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = clHighlight
        FormatType = ftColor
      end
      item
        DisplayName = 'Symbol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'String'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Identifier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'Reserved word'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
      end
      item
        DisplayName = 'Preprocessor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
      end
      item
        DisplayName = 'Current block'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BgColor = 13369046
        FormatType = ftColor
        BorderTypeLeft = blSolid
        BorderColorLeft = clGray
        BorderTypeTop = blSolid
        BorderColorTop = clGray
        BorderTypeRight = blSolid
        BorderColorRight = clGray
        BorderTypeBottom = blSolid
        BorderColorBottom = clGray
      end
      item
        DisplayName = 'Current function'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = 16772332
        FormatType = ftBackGround
        MultiLineBorder = True
      end
      item
        DisplayName = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatFlags = [ffBold, ffItalic, ffUnderline, ffStrikeOut, ffReadOnly, ffHidden]
      end
      item
        DisplayName = 'Const'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatFlags = [ffBold, ffItalic, ffUnderline, ffStrikeOut, ffReadOnly, ffHidden]
      end>
    TokenRules = <
      item
        DisplayName = 'Comment 1'
        StyleName = 'Comment'
        TokenType = 1
        Expression = '(?s)/\*.*?(\*/|\Z)'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Comment 2'
        StyleName = 'Comment'
        TokenType = 1
        Expression = '//.*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'String'
        StyleName = 'String'
        TokenType = 4
        Expression = '".*?("|$)'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'String 2'
        StyleName = 'String'
        TokenType = 4
        Expression = #39'.*?('#39'|$)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Any name'
        StyleName = 'Identifier'
        TokenType = 2
        Expression = '[a-z_]\w*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'HEX'
        StyleName = 'Number'
        TokenType = 7
        Expression = '0x[\da-f]*'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Float'
        StyleName = 'Number'
        TokenType = 6
        Expression = '\d+ \.? \d+ e [\+\-]? \d+ |'#13#10'\d+ \. \d+'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Integer'
        StyleName = 'Number'
        TokenType = 5
        Expression = '\d+'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Single symbol'
        StyleName = 'Symbol'
        TokenType = 3
        Expression = '[\{\}\(\)\[\],;\.]'
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Symbol'
        StyleName = 'Symbol'
        TokenType = 3
        Expression = '[/\+\-\*:=<>&/\|\^~!]+'
        ColumnFrom = 0
        ColumnTo = 0
      end>
    BlockRules = <
      item
        DisplayName = 'Key words'
        StyleName = 'Reserved word'
        BlockType = btTagDetect
        ConditionList = <
          item
            TagList.Strings = (
              'abstract'
              'break'
              'case'
              'catch'
              'class'
              'const'
              'continue'
              'default'
              'do'
              'else'
              'extends'
              'final'
              'finally'
              'for'
              'function'
              'get'
              'goto'
              'if'
              'implements'
              'import'
              'in'
              'instanceof'
              'interface'
              'native'
              'new'
              'package'
              'private'
              'protected'
              'public'
              'return'
              'set'
              'static'
              'string'
              'super'
              'switch'
              'synchronized'
              'this'
              'throw'
              'throws'
              'transient'
              'try'
              'var'
              'void'
              'volatile'
              'while')
            TokenTypes = 4
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Consts'
        BlockType = btTagDetect
        ConditionList = <
          item
            TagList.Strings = (
              ''
              'false'
              'null'
              'true'
              'undefined')
            TokenTypes = 4
          end>
        HighlightPos = cpAny
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Types'
        StyleName = 'Type'
        BlockType = btTagDetect
        ConditionList = <
          item
            TagList.Strings = (
              'array'
              'boolean'
              'byte'
              'char'
              'double'
              'float'
              'int'
              'long'
              'short')
            TokenTypes = 4
            IgnoreCase = True
          end>
        HighlightPos = cpAny
        IgnoreAsParent = False
      end
      item
        DisplayName = 'End'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              '}')
            TokenTypes = 8
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = ')'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              ')')
            TokenTypes = 8
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'function begin'
        StyleName = 'Current function'
        ConditionList = <
          item
            TagList.Strings = (
              '(')
            TokenTypes = 8
          end
          item
            TokenTypes = 4
          end
          item
            TagList.Strings = (
              'get'
              'set')
            CondType = tcSkip
            TokenTypes = 4
          end
          item
            TagList.Strings = (
              'function')
            TokenTypes = 4
          end>
        IdentIndex = 1
        BlockEnd = 'function end'
        Highlight = True
        DynHighlight = dhRange
        HighlightPos = cpRange
        CollapseFmt = '{ ... }'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'function end'
        BlockName = 'function begin'
        StrictParent = True
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              '}')
            TokenTypes = 8
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = 'class start'
        ConditionList = <
          item
            TagList.Strings = (
              '{'
              'extends')
            TokenTypes = 12
            IgnoreCase = True
          end
          item
            CondType = tcSkip
            TokenTypes = 4
          end
          item
            TagList.Strings = (
              'class')
            TokenTypes = 4
          end>
        BlockEnd = 'End'
        NameFmt = '%s0 %s-1'
        RefToCondEnd = True
        HighlightPos = cpBound
        CancelNextRules = True
        CollapseFmt = '%s0 %s-1 { ... }'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Begin'
        StyleName = 'Current block'
        ConditionList = <
          item
            TagList.Strings = (
              '{')
            TokenTypes = 8
          end>
        IdentIndex = 1
        BlockEnd = 'End'
        DisplayInTree = False
        DynHighlight = dhBound
        HighlightPos = cpRange
        DynSelectMin = True
        CollapseFmt = '{ ... }'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Block comment'
        BlockName = 'Block comment'
        NotParent = True
        ConditionList = <
          item
            TokenTypes = 2
          end>
        BlockEnd = 'Block comment end'
        DisplayInTree = False
        HighlightPos = cpBound
        CollapseFmt = '/* ... */'
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Block comment end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            CondType = tcNotEqual
            TokenTypes = 2
          end
          item
            TokenTypes = 2
          end>
        BlockOffset = 1
        HighlightPos = cpBound
        IgnoreAsParent = False
      end
      item
        DisplayName = '('
        StyleName = 'Current block'
        ConditionList = <
          item
            TagList.Strings = (
              '(')
            TokenTypes = 8
          end>
        BlockEnd = ')'
        NotCollapsed = True
        DisplayInTree = False
        DynHighlight = dhBound
        HighlightPos = cpBoundTagBegin
        DynSelectMin = True
        IgnoreAsParent = False
      end
      item
        DisplayName = '['
        StyleName = 'Current block'
        ConditionList = <
          item
            TagList.Strings = (
              '[')
            TokenTypes = 8
          end>
        BlockEnd = ']'
        NotCollapsed = True
        DisplayInTree = False
        DynHighlight = dhBound
        HighlightPos = cpBoundTagBegin
        DynSelectMin = True
        IgnoreAsParent = False
      end
      item
        DisplayName = ']'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TagList.Strings = (
              ']')
            TokenTypes = 8
          end>
        HighlightPos = cpBound
        IgnoreAsParent = False
      end>
    CodeTemplates = <>
    SubAnalyzers = <>
    SampleText.Strings = (
      '/* Java syntax highlighting */'
      'import java.util.*;'
      ''
      '/** Example class */'
      'public class Sample {'
      '  public static void main(String[] args) {'
      '    int i = 0;'
      '    for(i = 0; i < 10; i++)'
      '      System.out.println("Hello world");'
      '  }'
      '}')
    TokenTypeNames.Strings = (
      'Unknown'
      'Comment'
      'Identifier'
      'Symbol'
      'String'
      'Integer const'
      'Float const'
      'Hex const'
      'Char const'
      'Preprocessor'
      'keyword')
    MarkedBlockStyle = 'Marked block'
    DefaultStyleName = 'Default'
    Extentions = 'java jav'
    LexerName = 'Java Builder'
    Left = 176
    Top = 232
  end
  object ClassStyleRepository: TcxStyleRepository
    Left = 549
    Top = 232
    PixelsPerInch = 96
    object Row1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16776191
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
  object UniQueryColumn: TUniQuery
    Connection = DBA.SQLite
    SQL.Strings = (
      'select * from sys_column'
      'where 1=2')
    Left = 176
    Top = 296
    object UniQueryColumnFieldName: TStringField
      DisplayLabel = #21517#31216
      FieldName = 'FieldName'
      Size = 255
    end
    object UniQueryColumnFieldType: TStringField
      DisplayLabel = #31867#22411
      FieldName = 'FieldType'
      Size = 255
    end
    object UniQueryColumnField: TBooleanField
      DisplayLabel = #23383#27573
      FieldName = 'Field'
    end
    object UniQueryColumnTitle: TStringField
      DisplayLabel = #20013#25991
      FieldName = 'Title'
      Size = 255
    end
    object UniQueryColumnImport: TBooleanField
      DisplayLabel = #21442#21152#23548#20837
      FieldName = 'Import'
    end
    object UniQueryColumnExport: TBooleanField
      DisplayLabel = #21442#21152#23548#20986
      FieldName = 'Export'
    end
    object UniQueryColumnSearch: TBooleanField
      DisplayLabel = #21442#21152#26597#35810
      FieldName = 'Search'
    end
    object UniQueryColumnValidate_NotRepeat: TBooleanField
      DisplayLabel = #19981#33021#37325#22797
      FieldName = 'Validate_NotRepeat'
    end
    object UniQueryColumnValidate_NotNull: TBooleanField
      DisplayLabel = #19981#33021#20026#31354
      FieldName = 'Validate_NotNull'
    end
    object UniQueryColumnValidate_Length: TIntegerField
      DisplayLabel = #38271#24230
      FieldName = 'Validate_Length'
    end
    object UniQueryColumnValidate_Email: TBooleanField
      DisplayLabel = #37038#20214#26684#24335
      FieldName = 'Validate_Email'
    end
    object UniQueryColumnList_Out: TBooleanField
      DisplayLabel = 'Grid'#21015
      FieldName = 'List_Out'
    end
    object UniQueryColumnList_FixOut: TBooleanField
      DisplayLabel = 'Grid'#22266#23450#21015
      FieldName = 'List_FixOut'
    end
    object UniQueryColumnEdit_Out: TBooleanField
      DisplayLabel = #21487#32534#36753#23383#27573
      FieldName = 'Edit_Out'
    end
    object UniQueryColumnTableName: TStringField
      FieldName = 'TableName'
      Size = 255
    end
    object UniQueryColumnID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DataSourceColumn: TDataSource
    DataSet = UniQueryColumn
    Left = 288
    Top = 296
  end
  object UniQueryDelete: TUniQuery
    Connection = DBA.SQLite
    SQL.Strings = (
      'select * from sys_column')
    Left = 176
    Top = 360
  end
end
