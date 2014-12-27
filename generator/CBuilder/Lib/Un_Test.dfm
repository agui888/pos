object Fm_Test: TFm_Test
  Left = 0
  Top = 0
  Caption = #21387#21147#27979#35797
  ClientHeight = 507
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
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
  object Splitter2: TSplitter
    Left = 0
    Top = 313
    Width = 1065
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clSilver
    ParentColor = False
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1065
    Height = 24
    BarManager = Fm_Main.BarManager
    ColorSchemeName = 'Office2010Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    Style = rs2010
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
  end
  object PanelTop: TPanel
    Left = 0
    Top = 24
    Width = 1065
    Height = 289
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 834
      Top = 0
      Width = 4
      Height = 289
      Color = clSilver
      ParentColor = False
      OnMoved = Splitter1Moved
    end
    object PanelOracle: TPanel
      Left = 838
      Top = 0
      Width = 227
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object LabelMaxTimer: TLabel
        Left = 23
        Top = 48
        Width = 79
        Height = 17
        Caption = #26368#22823#32791#26102': '#26410#30693
      end
      object LabelMinTimer: TLabel
        Left = 23
        Top = 80
        Width = 79
        Height = 17
        Caption = #26368#23567#32791#26102': '#26410#30693
      end
      object LabelStatus2: TLabel
        Left = 24
        Top = 168
        Width = 88
        Height = 18
        Caption = #24182#21457#36830#25509#25968':0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelStatus1: TLabel
        Left = 24
        Top = 128
        Width = 88
        Height = 18
        Caption = #24403#21069#36830#25509#25968':0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelStatus3: TLabel
        Left = 24
        Top = 208
        Width = 134
        Height = 18
        Caption = 'Oracle '#26368#22823#36827#31243#25968':0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 227
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 5
          Width = 48
          Height = 17
          Caption = #24615#33021#30417#25511
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object PanelConfig: TPanel
      Left = 0
      Top = 0
      Width = 834
      Height = 289
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        834
        289)
      object Label4: TLabel
        Left = 18
        Top = 80
        Width = 65
        Height = 17
        Caption = '2. '#35831#27714#22320#22336':'
      end
      object Label5: TLabel
        Left = 18
        Top = 112
        Width = 66
        Height = 17
        Caption = '3. Post'#21442#25968':'
      end
      object Label6: TLabel
        Left = 17
        Top = 48
        Width = 65
        Height = 17
        Caption = '1. '#35745#21010#21517#31216':'
      end
      object Label7: TLabel
        Left = 88
        Top = 244
        Width = 51
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = #21442#25968#21517#31216':'
      end
      object Label8: TLabel
        Left = 304
        Top = 244
        Width = 39
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = #21442#25968#20540':'
      end
      object PanelTitle1: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 5
          Width = 48
          Height = 17
          Caption = #22330#26223#35745#21010
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
        end
      end
      object DBTextEditName: TcxDBTextEdit
        Left = 88
        Top = 45
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'PLANNAME'
        DataBinding.DataSource = DataSourcePlan
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 1
        Width = 728
      end
      object DBTextEditURL: TcxDBTextEdit
        Left = 88
        Top = 77
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'URL'
        DataBinding.DataSource = DataSourcePlan
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 2
        Width = 728
      end
      object G: TcxGrid
        Left = 88
        Top = 112
        Width = 726
        Height = 122
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 3
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object D: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Enabled = False
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Hint = #26032#22686
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Hint = #21024#38500
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Hint = #21462#28040
          Navigator.Buttons.Cancel.ImageIndex = 11
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSourcePlanParam
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745':'#65509'###,###.00'
              Kind = skSum
              FieldName = 'total'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #26080#21442#25968
          OptionsView.ScrollBars = ssVertical
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 24
          OptionsView.GridLineColor = 552463853
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 25
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 0
          Styles.Background = WhiteStyle
          Styles.Content = None
          Styles.ContentEven = Row2
          Styles.ContentOdd = Row2
          Styles.Selection = Select
          OnCustomDrawIndicatorCell = DCustomDrawIndicatorCell
          Bands = <
            item
            end>
          object DPARAMNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARAMNAME'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IncSearch = False
            Options.Sorting = False
            Width = 261
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DPARAMVALUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARAMVALUE'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IncSearch = False
            Options.Sorting = False
            Width = 371
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DAUTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AUTO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 92
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IncSearch = False
            Options.HorzSizing = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object L: TcxGridLevel
          GridView = D
        end
      end
      object ButtonAdd: TcxButton
        Left = 606
        Top = 241
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #28155#21152#21442#25968
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 4
        OnClick = ButtonAddClick
      end
      object TextEditParamName: TcxTextEdit
        Left = 144
        Top = 241
        Anchors = [akLeft, akBottom]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 5
        Width = 154
      end
      object TextEditParamValue: TcxTextEdit
        Left = 349
        Top = 241
        Anchors = [akLeft, akBottom]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 6
        Width = 148
      end
      object CheckBoxAuto: TcxCheckBox
        Left = 504
        Top = 241
        Anchors = [akLeft, akBottom]
        Caption = #38543#21518#33258#21160#22686#38271
        TabOrder = 7
        Width = 97
      end
    end
  end
  object PanelLogs: TPanel
    Left = 0
    Top = 317
    Width = 1065
    Height = 190
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1065
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1065
        27)
      object Label3: TLabel
        Left = 8
        Top = 5
        Width = 48
        Height = 17
        Caption = #27979#35797#32467#26524
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 848
        Top = 5
        Width = 12
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #21547
      end
      object Label10: TLabel
        Left = 987
        Top = 5
        Width = 75
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #23383#31526#34920#31034#25104#21151'.'
      end
      object TextSuccess: TcxTextEdit
        Left = 865
        Top = 2
        Anchors = [akTop, akRight]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 0
        Width = 117
      end
      object LogsCheckBox: TCheckBox
        Left = 728
        Top = 6
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #19981#36755#20837#26085#24535
        TabOrder = 1
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 27
      Width = 1065
      Height = 163
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.Images = Fm_Main.cxSmallImages
      Properties.Style = 9
      Properties.TabPosition = tpBottom
      LookAndFeel.SkinName = ''
      ClientRectBottom = 139
      ClientRectRight = 1065
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = #27979#35797#32467#26524'    '
        ImageIndex = 49
        object EditLog: TsMemo
          Left = 0
          Top = 0
          Width = 1065
          Height = 139
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #27979#35797#26085#24535'    '
        ImageIndex = 24
        ExplicitWidth = 0
        ExplicitHeight = 0
        object SysMemo: TsMemo
          Left = 0
          Top = 0
          Width = 1065
          Height = 139
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
      end
    end
  end
  object ClassStyleRepository: TcxStyleRepository
    Left = 368
    Top = 376
    PixelsPerInch = 96
    object Row1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
    end
    object Row2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16776191
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object IndicatorNumber: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clRed
    end
    object None: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
    end
    object Select: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16772317
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object HereStyle: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object TopStyle: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 553645035
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object WhiteStyle: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
    end
    object ErrorStyle: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clRed
    end
    object StyleTotal: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clRed
    end
    object StyleDate: TcxStyle
      AssignedValues = [svBitmap, svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlue
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = Row1
      Styles.Content = Row2
      BuiltIn = True
    end
  end
  object UniQueryPlan: TUniQuery
    Connection = DBA.SQLite
    SQL.Strings = (
      'select * from test_plan')
    Left = 496
    Top = 376
    object UniQueryPlanID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object UniQueryPlanPLANNAME: TStringField
      FieldName = 'PLANNAME'
      Size = 255
    end
    object UniQueryPlanURL: TStringField
      FieldName = 'URL'
      Size = 4000
    end
    object UniQueryPlanSAVE: TIntegerField
      FieldName = 'SAVE'
    end
  end
  object UniQueryPlanParam: TUniQuery
    Connection = DBA.SQLite
    SQL.Strings = (
      'select * from test_plan_param')
    Left = 496
    Top = 424
    object UniQueryPlanParamID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object UniQueryPlanParamPID: TIntegerField
      FieldName = 'PID'
    end
    object UniQueryPlanParamPARAMNAME: TStringField
      DisplayLabel = #21442#25968#21517#31216
      FieldName = 'PARAMNAME'
      Size = 255
    end
    object UniQueryPlanParamPARAMVALUE: TStringField
      DisplayLabel = #21442#25968#20540
      FieldName = 'PARAMVALUE'
      Size = 4000
    end
    object UniQueryPlanParamAUTO: TIntegerField
      DisplayLabel = #38543#21518#33258#21160#22686#38271
      FieldName = 'AUTO'
    end
  end
  object DataSourcePlan: TDataSource
    DataSet = UniQueryPlan
    Left = 600
    Top = 376
  end
  object DataSourcePlanParam: TDataSource
    DataSet = UniQueryPlanParam
    Left = 600
    Top = 424
  end
  object UniQuery: TUniQuery
    Connection = DBA.SQLite
    Left = 240
    Top = 169
  end
  object ActionListTest: TActionList
    Images = Fm_Main.cxLargeImages
    Left = 368
    Top = 424
    object ActionStartThread: TAction
      Caption = #21551#21160#32447#31243
      ImageIndex = 97
      OnExecute = ActionStartThreadExecute
      OnUpdate = ActionStartThreadUpdate
    end
    object ActionStopThread: TAction
      Caption = #20572#27490#32447#31243
      ImageIndex = 103
      OnExecute = ActionStopThreadExecute
      OnUpdate = ActionStopThreadUpdate
    end
    object ActionSavePlan: TAction
      Caption = #20445#23384#35745#21010
      ImageIndex = 2
      OnExecute = ActionSavePlanExecute
      OnUpdate = ActionSavePlanUpdate
    end
    object ActionDeletePlan: TAction
      Caption = #21024#38500#35745#21010
      ImageIndex = 10
      OnExecute = ActionDeletePlanExecute
      OnUpdate = ActionDeletePlanUpdate
    end
  end
  object UniQueryOracle: TUniQuery
    Connection = DBA.UniConnection
    Left = 712
    Top = 376
  end
  object Timer: TTimer
    Interval = 3000
    OnTimer = TimerTimer
    Left = 712
    Top = 424
  end
end
