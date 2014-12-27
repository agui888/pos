object Fm_Main: TFm_Main
  Left = 0
  Top = 0
  Caption = 'MyBatis Generator'
  ClientHeight = 608
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    818
    608)
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 8
    Top = 8
    Width = 802
    Height = 233
    Anchors = [akLeft, akTop, akRight]
    Caption = #29615#22659
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    DesignSize = (
      802
      233)
    object sLabel1: TsLabel
      Left = 21
      Top = 65
      Width = 65
      Height = 13
      Caption = 'JDBC'#39537#21160#21253':'
    end
    object sLabel2: TsLabel
      Left = 21
      Top = 100
      Width = 58
      Height = 13
      Caption = 'DriverClass:'
    end
    object sLabel3: TsLabel
      Left = 21
      Top = 132
      Width = 23
      Height = 13
      Caption = 'URL:'
    end
    object sLabel4: TsLabel
      Left = 21
      Top = 165
      Width = 28
      Height = 13
      Caption = #29992#25143':'
    end
    object sLabel5: TsLabel
      Left = 317
      Top = 165
      Width = 28
      Height = 13
      Caption = #23494#30721':'
    end
    object sLabel6: TsLabel
      Left = 21
      Top = 197
      Width = 28
      Height = 13
      Caption = #34920#21517':'
    end
    object sLabel7: TsLabel
      Left = 317
      Top = 197
      Width = 40
      Height = 13
      Caption = #23545#35937#21517':'
    end
    object sLabel8: TsLabel
      Left = 21
      Top = 29
      Width = 27
      Height = 13
      Caption = 'Java:'
    end
    object EditJdbc: TsFilenameEdit
      Left = 92
      Top = 62
      Width = 689
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
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
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      Filter = 'Java Jar (*.jar)|*.jar'
    end
    object EditDriverClass: TsComboBoxEx
      Left = 92
      Top = 97
      Width = 689
      Height = 22
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      ItemsEx = <
        item
          Caption = 'oracle.jdbc.driver.OracleDriver'
        end>
      Anchors = [akLeft, akTop, akRight]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentFont = False
      TabOrder = 1
    end
    object EditURL: TsEdit
      Left = 92
      Top = 129
      Width = 689
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object EditUser: TsEdit
      Left = 92
      Top = 162
      Width = 202
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object EditPassword: TsEdit
      Left = 372
      Top = 162
      Width = 202
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object ButtonBuiler: TsButton
      Left = 592
      Top = 162
      Width = 81
      Height = 53
      Caption = #29983#25104#20195#30721'(&G)'
      TabOrder = 7
      OnClick = ButtonBuilerClick
      SkinData.SkinSection = 'BUTTON'
    end
    object EditTable: TsEdit
      Left = 92
      Top = 194
      Width = 202
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object EditJavaClass: TsEdit
      Left = 372
      Top = 194
      Width = 202
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object EditJDK: TsFilenameEdit
      Left = 92
      Top = 26
      Width = 689
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 8
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
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      Filter = 'Java JDK (*.exe)|*.exe'
    end
    object ButtonModel: TsButton
      Left = 702
      Top = 162
      Width = 81
      Height = 53
      Caption = #36824#21407#27169#26495
      TabOrder = 9
      OnClick = ButtonModelClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPageControl1: TsPageControl
    Left = 8
    Top = 256
    Width = 802
    Height = 344
    ActivePage = sTabSheet4
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = cxSmallImages
    TabOrder = 1
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = 'Mapping    '
      ImageIndex = 31
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object MemoMapping: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 315
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
    object sTabSheet2: TsTabSheet
      Caption = 'Model / Entity    '
      ImageIndex = 22
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object MemoModel: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 315
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
    object sTabSheet5: TsTabSheet
      Caption = 'Example    '
      ImageIndex = 17
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object MemoExample: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 315
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
    object sTabSheet3: TsTabSheet
      Caption = 'DAO    '
      ImageIndex = 33
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object MemoDAO: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 315
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
    object sTabSheet4: TsTabSheet
      Caption = 'XML    '
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object MemoXML: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 315
        Lines.Strings = (
          '<?xml version="1.0" encoding="UTF-8"?>'
          '<!DOCTYPE generatorConfiguration'
          
            '  PUBLIC "-//mybatis.org//DTD MyBatis Generator Configuration 1.' +
            '0//EN"'
          '  "http://mybatis.org/dtd/mybatis-generator-config_1_0.dtd">'
          ''
          '<generatorConfiguration>'
          '    '
          '    <!-- '#25351#23450#25968#25454#36830#25509#39537#21160'jar'#22320#22336' -->'
          '    <classPathEntry location="@location" />'
          ''
          '    <context id="TempTables" targetRuntime="MyBatis3">'
          '        <!-- '#27880#37322' -->'
          #9#9'<commentGenerator >'
          
            #9#9#9'<property name="suppressAllComments" value="true"/> <!-- '#26159#21542#21462#28040 +
            #27880#37322' -->'
          
            #9#9#9'<property name="suppressDate" value="true" /> <!-- '#26159#21542#29983#25104#27880#37322#20195#26102#38388#25139 +
            '-->'
          #9#9'</commentGenerator>'
          '        '
          '        <!-- jdbc'#36830#25509' -->'
          '        <jdbcConnection '
          '            driverClass="@driverClass"'
          '            connectionURL="@connectionURL" '
          '            userId="@userId" '
          '            password="@password">'
          '        </jdbcConnection>'
          ''
          '        <!-- '#31867#22411#36716#25442' -->'
          #9#9'<javaTypeResolver>'
          
            #9#9#9'<!-- '#26159#21542#20351#29992'bigDecimal'#65292' false'#21487#33258#21160#36716#21270#20197#19979#31867#22411#65288'Long, Integer, Short, etc' +
            '.'#65289' -->'
          #9#9#9'<property name="forceBigDecimals" value="false"/>'
          #9#9'</javaTypeResolver>'
          '          '
          '        <!-- '#29983#25104#23454#20307#31867#22320#22336' -->'
          
            '        <javaModelGenerator targetPackage="model" targetProject=' +
            '"@targetProject">  '
          
            '            <!-- '#26159#21542#22312#24403#21069#36335#24452#19979#26032#21152#19968#23618'schema,eg'#65306'fase'#36335#24452'com.oop.eksp.user.m' +
            'odel, true:com.oop.eksp.user.model.[schemaName] -->'
          '            <property name="enableSubPackages" value="true" />'
          '            <!-- '#26159#21542#38024#23545'string'#31867#22411#30340#23383#27573#22312'set'#30340#26102#20505#36827#34892'trim'#35843#29992' -->'
          '            <property name="trimStrings" value="true" />'
          '        </javaModelGenerator>'
          '        '
          '        <!-- '#29983#25104'mapxml'#25991#20214' -->'
          
            '        <sqlMapGenerator targetPackage="mapping" targetProject="' +
            '@targetProject">'
          
            '            <!-- '#26159#21542#22312#24403#21069#36335#24452#19979#26032#21152#19968#23618'schema,eg'#65306'fase'#36335#24452'com.oop.eksp.user.m' +
            'odel, true:com.oop.eksp.user.model.[schemaName] -->'
          '            <property name="enableSubPackages" value="true" />'
          '        </sqlMapGenerator>'
          '        '
          '        <!-- '#29983#25104'mapxml'#23545#24212'client, '#20063#23601#26159#25509#21475'dao -->'
          
            '        <javaClientGenerator type="XMLMAPPER" targetPackage="dao' +
            '" targetProject="@targetProject">'
          
            '            <!-- '#26159#21542#22312#24403#21069#36335#24452#19979#26032#21152#19968#23618'schema,eg'#65306'fase'#36335#24452'com.oop.eksp.user.m' +
            'odel, true:com.oop.eksp.user.model.[schemaName] -->'
          '            <property name="enableSubPackages" value="true" />'
          '        </javaClientGenerator>'
          '          '
          '        <!-- '#37197#32622#34920#20449#24687' --> <!-- schema="@userId" -->'
          '        <table '
          '            tableName="@tableName" '
          '            domainObjectName="@domainObjectName"'
          '            enableCountByExample="false" '
          '            enableUpdateByExample="false"'
          '            enableDeleteByExample="false" '
          '            enableSelectByExample="false"'
          '            selectByExampleQueryId="false">   '
          '            '
          '            <!-- '#24573#30053#21015#65292#19981#29983#25104'bean '#23383#27573' '
          #9#9#9'<ignoreColumn column="FRED" />'
          '            -->'
          '            '
          '            <!-- '#25351#23450#21015#30340'java'#25968#25454#31867#22411' '
          
            '              <columnOverride column="LONG_VARCHAR_FIELD" jdbcTy' +
            'pe="VARCHAR" />'
          '            -->                    '
          '        </table>'
          ''
          '    </context>'
          '</generatorConfiguration>')
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
  object cxSmallImages: TcxImageList
    FormatVersion = 1
    DesignInfo = 22544863
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
      end>
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
    Left = 208
    Top = 344
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
    Left = 304
    Top = 344
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
    Left = 392
    Top = 344
  end
  object TimerLoad: TTimer
    Enabled = False
    OnTimer = TimerLoadTimer
    Left = 656
    Top = 344
  end
  object sSkinManager1: TsSkinManager
    ExtendedBorders = True
    AnimEffects.BlendOnMoving.Active = True
    AnimEffects.DialogShow.Time = 100
    AnimEffects.FormShow.Time = 100
    AnimEffects.FormHide.Time = 100
    AnimEffects.DialogHide.Time = 100
    AnimEffects.PageChange.Time = 100
    AnimEffects.SkinChanging.Time = 300
    InternalSkins = <
      item
        Name = 'Mint (internal)'
        Shadow1Color = clBlack
        Shadow1Offset = 0
        Shadow1Transparency = 0
        Data = {
          41537A66050000000B0000004F7074696F6E732E646174943A0000789CED5BDB
          8EE336127D6FA0FF21FD0199E55524211868D956DBC2C89221AB2F9360A71104
          C1EED306C8C37EFF16AF9268C996DD333D338B20138925D1645DC8AA5345F5AF
          9BB25E6665513DD4FFBCBDD96587366F9645BBCBF60B4BFCB4AAF79F3E2C77FB
          DB9BA7BC391475B5901F10BEBDC91EDB6DDD2C0E7FFCF5AF3F7EDAFCF99FDFFF
          FDDB5F7FFEF7F6665597F01873AA38E2E8F6665BB7EE5122842098DFDE3CD495
          7B06EF9775B3CE1BD705278CD304466F5765FED02E30958AF224B9BD396CB375
          FD8CC3CF1C5D3F3C1C72E8171E2CCBC74693CBFA65B5CD571FF3F5E21E11C4EE
          11C2145A0C2E8824F77083DFECB2B2ECBA612AE025855798496831768FEF0D8B
          2F8F553C1A427E3418B71BADDF11C33C6E3C33726FBC4D937DEA0DA63BDAC1A8
          EA0D167A597ECC485CF5466AB27551F738F3FC20C2133B18BEC7AEDB4004D3D1
          8820494F8465B1AAAB6D5EEE751FA5FBE88969C2A1A5B4D2B0EBB32B2AC3969E
          85816C046B0615EF75A9EA66A787C1CA0D43143E1A267B812E4850370C66BC37
          CCA15895F521CFCABACA178E5F5080D6971E8910CB745BB465BE7C6CDB5AF364
          05D25D2967766633D8A629F6C52EDBE891AC768C9E841E93086798E2B0CF56B9
          599645536CB6EDE267E297E873B16EB70BA6D7E6B286C9760B4A442235DDD6FB
          05179C4AAE9C6086F1C0B3160D09D2D790197257AF73BD581F40556E25132FD0
          3637F353A0F317DB7D71675B1FF6D5E68EDCA13B7A07BC4BB870E45B70D19B33
          6F6ABF13567905FBD80DFFB3D1BCE6570B061B7F53F989F50BB3E9A065560AB0
          CF907432306A1614BA279AFDDB9B5F9759B3CFAABC04B77168B3363F98B9DC4E
          E798728A47773A2CECC3C7C5671834D117AC2F4A5F68205168E1CF7083FF8DFD
          601183287B7016705B6084BA87EBACCDC2B4696810969214A5335E3026186CC5
          F0C2D3E75F20FDDC68645D3C1520E09842384B9064F4B44230F2C263DAD38057
          88BB0485B44D56C1726DF26AF5C96A0378C8D7453B6A9113BED73300EE4ACF2D
          A045F5B484E8198F2E8101986E933D6EF2AB05B62B008DAC007C6A0558633322
          04A522854843149831E5DA3EA8A34D83709132DEBDD07468E8A768626569E19A
          FA710FBE7ABE7CC726892556C1C46486C4C0C4B6A8C60D4A384ACE18B4BF70E8
          BCE9765951EDF2EA71744A2AB162E7A6BCCCA63065532C9775B5CFDEB2902211
          45988A5CEB4AEC7E49FDFCA9126E11393A34DC220241F64DBD69F2C3613B9023
          6295079370CD2A9513FAC19FF97C561395A034E1440283B0BE534F508A086C0C
          6E1E5922E19CF29470D74B13F68AF41318FB50FC6202E040DF20DD61D5D46579
          28B58BEB4948A29E01EE09C92417D23C39653BA306B31B04870B33EB47B790EC
          B5B4DB61E35E0FC61F75857D869F4E327C8A3D45BC4F34DE91AA9833D30AECC5
          F68AAD55FD23BB4806E0F9F100A176626B60A4D4291F7432C8E0B05FBA801B07
          99B03FDB6C39D0E145DB33F27A6464CD0FE70421561F0762D33353C6669CA963
          BB3C56DBAC022863F4C3F445FA0B19E3B5E74AECEF8DA0003865E2D192C14D80
          52C97D98E4C9F732685A036286342E04404F2C8C5D7D848CEA17938868AC4864
          4849B0C5A7BA0B6461ADC92D54E8422C32335D1E60B1559BBCCA9625207DEC1F
          140001B316B2375840766969CC79B5458D6E8C4569120CCCE20BF15AEA72C030
          7AE4C330780B420055092A3041C1DD7A3A344EC56C98E68DC3F64688D1C0C426
          7430E44B074503AD5FCBFAF91DE7D419D2F67AAC711D989B11831578392A9294
          9B101548D801B0CD58CA6CC4F3A4BFBB78160201D80F3FCD4718C75E7BC4B547
          2A30018C601F35ACEF083BC5B7B40AF824809FCCA97E2020D4297C74397D3185
          63E3ACB5CC187317A687BA36AD71857B756F7248D75B60F807573A046848EBC7
          3CFA9CDCAF978FD8E0D76D5FD68BD1C420D358953C323BF98ECD3E44879AD91F
          C0293866DB6A60E1AF0489C6F837BCC6FCF72F817F488000EAE4EB655D977956
          2DDAE6310735959FF65B877F902D896157D0D4C53153C6EBCBA9EB50EF2DA811
          2F5E556F17D4D42B4D75D4579D41D055BD5BD613A585AF51AAE9B3652BC8A696
          6CF02A433DB6CA6D9E0D6A5847508D495DC805179440EA46689232657D93A7BB
          1772E2C5290C1719856A3FC4B4884CCBC43ADFDABF509F2E4FE1B76364E83DAC
          6FF8EA5178C1884C2424CCBE7AE4E9D0E85CAF86D2A6663BE27DFB6970F46414
          536BEC646A044668134BACBB738582E081E78AEAE112C05C4284D4284AFF1748
          D85292A8D48AEF29469114547AE103E9EE9101AD4A294F98142C154A10417898
          C891027192B0C44DE4295024A7F023379127FDFD24DAB7A50AA65BA0D9056C5B
          2A14B59B3D2AD187AEB627578413CA22CFD1ED3C0BF72393B2D1B3AC2B569CAB
          39FB987E549C7642BFC64348C619C246670955C82BB82329E7D41BD2120965B0
          A44209D493FE3E66C7A9B0B60D95A1B1028E0910090F4022420EA63A3255B69E
          9DB21EF665D1B6F965558111839D0916B3F969C1F5DB73A7518E2457898AFDF8
          F9FAD8B94085A52FA710A361E3228F7D3F3CFD2C9CA378838C8FFB75FD5C4148
          BE42E95F58C411B7EF62F13C69E2FD6456FAC8FE3D518F7BCE97B1C1CFD51367
          8291D9063167B92756DD97444833F56A9D2A6594812F0A9E820E219D394E7D67
          4CD7CB14A89881E98ED19B39C137E88D3A983A8EFBFA92DAD0F34D707A976730
          7E81A88AD88F05C0799BDA243F236A56EEB7D9BB63D84138E5823022700FC0A1
          08C0F90613132FCE1CFF1921DFF33C75AA062039FC1301677BBA13505E27E021
          2FF395DEC6036716BC37042F2412164406100998518D401B2E1403709F628225
          C142A5D4D9C2D32A914A298FFD3C8511848784B1347110DBD3A171A62A7B7505
          92FA6386E5AB3EEC8CA3DB705C6A600D8721993E3CC1B6BED32522C24E187290
          F170328DB1BA276350D4F856C584304440BCA3516BA6E3B0FE1A7C11457C00A3
          27C170FE02A39445353CA1BDE66C121D9F4DA2E3B349747436894E9E4DFA93D7
          6129E7FD4F5EBF8E74EB222BEBCDC9B39ABF8F67602B8F1F512612A6D1303CDA
          D5DC43032ACDC12E399D6E1F153C6794148E2212C60AE9ECDA47244787C61931
          BB146CCEE28C070FECF817941096B08E1D4F8746AFB8BC7C7DEF1480FAAAAE4D
          066C0A90C417E6B39CD929C0983FF46AD59BADC93683A3BEAE92C3412D2889F5
          8C9384C306878DAD0404B6D4AACD53845248C5211FB731DA9309E4DF52081710
          3D252427188221B19D3DE9EFA7F6D668E818143DBCBF1FAA9950EF150933C5FF
          3341B35DD9CF2243B125545AC2934DF19443CAA839EA10E38C306B36A4DE8654
          69833319822BE9B5BA9C6F44E2890836FF7B0BF3DDE300D3D26F993CC5691E7B
          7371E1EA4D76599E7DAC8DE3279BB27EDE65CDA6A816CA520654C01D2DEEF40D
          D68BF9D215BB2F5D318F2FB8A7A5D765B1F95B53B334B51D7CB4F9F68AD53C61
          FB0ABDB39C6846F4DF1600D39A755DDF8F2F176DDFC33E876CF57BAEC85DB038
          86F2BC9A3F08F8BF90CA944D273F69FB51CEDB75445B65FB61FEFC3E05821392
          84AFA2C3C73367AA1FC36F2086E7AEDFA55DF0845DF0B1347121EE9BCB13D8BE
          C03A05B01767DE11A3927B1E150AF95DF7E9F7D8F7957A93F64D7DE1D7222C1C
          CB9A5CDA1ECBF63F1439933C591662FB5CC844123E2B35B54F8CE2F95D967B82
          89DE6289EAD3DFE55AC1136B0577DF0045625CA652ACBCA3772E5FC5DA3C6F57
          ED17C1E78F9A15502EA44A7824797EF72C6A2AC71E051BE6EFC6263FF1B93487
          EA42B3CF28E3A3EC509B1BCF67CC01779487F50FBDC343678EA1FF38F7A9EFDB
          92A813A2CCE5F97FE4E9CB3A0E000000427574746F6E487567652E626D701C88
          0200789CED9D59705BD799E7D5F6EB54E5B5AB6B1EC60F2E3FFA5DD5E599EAA9
          EAF4249DB4932829756692764F264E278EDD966DC692456DA6A5500B655B942C
          89A2442D141791E22281E2BE82043770014170050890043751A444519497645A
          FD234E748300E0154901BC58BE7F7D71C5947DCFFFFFF3F9EE39E70220FEEE7B
          FF35F5856DABFA1BFEF75FF8DF7FFBAB866D7FB5EDAFB73D09936C365B767676
          7272F2CE9D3BB76FDFFED24B2F7DEB5BDF7AD1A76D9114D7672086635086C600
          363013AE5CE192F0D197F009D6CACA8AC9644A4A4AC25BA4396C4898C112C6B0
          8749E11320E1A32FC3F9381C8ED4D4D4D75E7BCD6812CF1626B18A61E11352C2
          475F5BCCC76EB7B386BEF2CA2B46E7DE98308C6DCC0B9F90123EFADA023E8B8B
          8B696969AFBEFAAAD159372FCC138120C227A4848FBE22C7A7BABA7AC78E1D46
          E70B8F08421CE1B396848FBEC2CE273D3DFDE5975F363A5638451C42099FB524
          7CF4152E3EF3F3F31F7EF8E10B2FBC6074A0F08B504423A0F00929E1A3AFE7E7
          E3F178DE7CF34DA37344560424A6F0594BC2475F9BE6C3BFF5C61B6F186D7F2B
          44CC4D20123EC24769137C58F5E2FECEE32FC26E68A1173EC2C75F1BE5C3C6D2
          68CB5B2D220B1F1D091F7DAD9F4F7A7A7A5C1E48F545E4753E11123EC22758EB
          E4535D5D1D678F52D72F823FF3750DE1237CD6D233F92C2E2EC6CD8B809B13F1
          755E9D173EC2475FFA7CD2D2D28C3668BC80207C74247CF4B5161FBBDD1ED3EF
          0D0B978010F26D9CC24749F8E86B2D3EC9C9C9465B8B168142F8E848F8E82B98
          8FC3E188B98F0C444EA008F8BC8FF0F197F0D157309FD4D454A34D459700227C
          74247CF4E5CF67656525263E49BA950288F6C170E1132CE1A32F7F3E2693C968
          3BD128B0081F1D091F7D697C9292928CF6128D028BF0D191F0D197C667FBF6ED
          467B89468145F8E848F8E84BF1B1D96C51F5ABB1A24760B1F9247C424AF8E84B
          F1C9CECE36DA48F42ADB27A35D44AF848FBED46F4C35DA45F42AD927A35D44AF
          848FBED4AF2336DA45F46AA74F46BB885E091F7DA9DFF56DB48BE8D5769F8C76
          11BD123EFA52BF48DF6817D1AB977C32DA45F44AF8E84B7D4B85D12EA257DFF2
          C96817D12BE1A32F812312894422914824128944229148241289442291482412
          8944229148241289442291482412894422914824128944229148241289442291
          4824128944229148241289442291482412894422914824128944229148241289
          4422515C4ABEA24847F2FD56FA123EFA02CE8B2FBE68B48BE8D58B3E19ED227A
          257CF4257CF4257CF4257CF4051C59DF7524FB1F7D091F7D0147BE9F5A47F2FD
          DDFA123EFA02CEF6EDDB8D7611BDDAEE93D12EA257C2475FC0D9B973A7D12EA2
          573B7D32DA45F44AF8E80B38C9C9C946BB885E25FB64B48BE895F0D11770B2B3
          B38D7611BDCAF6C96817D12BE1A32FE0D86C3679C41A5260B1F9247C424AF8E8
          4BF179F2E4891C51430A2C4F7C123E21257CF4A5F1494A4A32DA4B340A2CC247
          47C2475F1A1F93C964B497681458848F8E848FBE343E2B2B2BAFBDF69AD176A2
          4B00018BF0594BC2475FFE7C506A6AAAD18EA24B0079E227E11320E1A3AF003E
          0E87E395575E31DA54B4081400113E6B49F8E82B980F92170A3581E24990848F
          26E1A3AF907CEC76FBABAFBE6AB435E3050450089FB5247CF4B5161F94969666
          B43BE305849070848F92F0D1970E9FC5C5C51D3B76186DD048111F08C2672D09
          1F7DE9F341D5D5D52FBFFCB2D1368D11C189AF0347F8081F1DAD870F4A4F4F7F
          E185178C36BBD52232C19F0947F8089F905A3F1FF4E1871F1AED77AB45E475C2
          113EC227581BE2333F3FFFE69B6F1A6D79EB4458220B9FB5247CF4B5513EC8E3
          F1BCF1C61B461BDF0A1193B01B82237C848FA6CDF15188E2FE2E44C0CDC1113E
          C267DBF3F179E25BE8D958C6E571955044DBE8B22E7C848F5258F828A5A7A7C7
          D94357E2ACFF698FF0113E010A2F9F27BED735E2E6A54382ACE7750AE1237C42
          2A127C9EF85E9D4F4B4B8BE9F798619E08FAAFB00B1FE1B39622CA47C96EB727
          2727C7DC8711308CEDB5DE78297C848FBEB68C8F92C3E1484D4D8D894FAD6212
          ABC19FC7113E4AC2475F86F0515A595931994C494949DBB76F8FAA5FD285192C
          610C7BFE1FD3163E4AC2475F51C2C75F369B2D3B3B9B3574E7CE9D787BE9A597
          D4978B459A9BFA0A18F58BF4D5AF2356BFD4D1681E81123EFA8A5B3EDB9EAB6A
          A35ECF1950F8081F43AA2EA6247CF4257CF4B56558EA635CC2475FC2475F1185
          D3A0AB667373477B476F6FEF8063607474D4E3F67827BD53DEA999E999481457
          E6FA8CC2588CC8B88C8E077D93C8283E4DCD4D16ABC5EAE8B4B96C03538ED1F9
          91B1072EF743F7F8234F248A2B737D46612C46645C46C743D4F261F6B252A869
          CCDF36363636F9648E8CD4C519450DAD8D6E089FC6B565B1587ABA7B86878627
          2726A7A7A623D44DEB2946C7034EF0832B1DCF68CBF834B73577F677F68FDB5D
          F79D9EE54875D37A8AD1F18013FCE02A4AF8A889BD7AFF696A6A6E6EB6F8D4E6
          53FB5375845BDA95D5406A5046C7034E54A36D199FA635D4D9D939383068785B
          ADD56878C3E15AE65164F9989B5ABB5A6DCEDED18511F7C331E676F4147E7085
          371C36990DE2D3D4A4560DADAD98E7CC7CFE9359FF525D9151C0288CCBE8AAD7
          54A369F622C787ED56C8B2765A5926D8A1455B670574190EF189DBB5825091E0
          D3D6D5DAE7B6B9969C630F5DEEE5B1E82CBCE1109FB8DD623E0DF50D6AEAB6B4
          B404B755841A6A9DEDA6351ADE5497E136127C5A428925D5D1EF88F2CE0AEE32
          3CE33C642214463E968E969E916EE7FD91B1874EF7B22BFA0B9FB8C533CEB780
          8FDA10B2070BEE2C43DA2A58C15DA60E68380F239F564B6B7071AE71395DCCD8
          58692EADC5289CE33F642E2A2C7C3A6CED8E69BB7369C4F570746CD9192B855B
          3CE31CFF11E5A3962DB3D9DCDADACAED2EDA3ACB5F5A97E113B778560B5958F8
          B4058951EC767B141EB536D465F8278576AA0DD0F3F0696DB758073B87170655
          73C562E11CFFA4204BD8F97093570F0D38DAA8652B6A3BCB5FCAA45AC870AE1E
          C5A89577D37C3ADA3B02AAB363F5398677D21BBBCDA5B51829569F7B90292826
          B5393E6D1DAD5DA3D6A1C581D1A561E7C391D82DFC93822C240A239F96E616F5
          84509D2FA279D90A96FF42A6F68AAB2DD6DCB2693E56D2FB5597B52BFA1F656C
          A8C5D4430F720524A536C1A7CDDAD6E55A6DAE91A5A1D187C3B15EA4586D31D7
          6AAEB0F0612AD6D6D6322D2D168BD65C4637CD86A5B51829C84222726D824F77
          5777400D0D0EC5C1CA15D06224225770586A437CDAADED5D4EEBC08263F8C1D0
          C8D2707C145948442ED23D279F564B2B53916D95FFCA6574AF6C52FEAB1889C8
          45BA0DF1E1F8EF5FFCC3D1F9F256585A4CBD4046C680D4D43AF9747675760E77
          38EEF50F3D181C5E1A8AA72211B94847C64DF361BFA4DE22CBC925D69B4B496B
          3112A968645C3F1F5BAFCDBFFAEDFD13E313F1D75C5A8B918E8C01A9A975F269
          77B4F5DDB50D3E18185A1A8CBF2217E9C8B8693E9C53AAABABCD663367FF3868
          2E25D562242217E9C8B84E3EF63EBB7FF5D9FADC63EE786D2EADC5C848D280EC
          D433F9B4D95ABBA63B1DF7ED834B8E782DD29191A49BE0D3D4D4545E5ECE51A5
          B5B5553D2D34BA33C226F544915CA42323499FC9C76177F8575F6FDFC8F048DC
          3CD3D0E92F329294BC0104281D3ED69ECE7657AB7DC1E678601F58EA8FD7221D
          19494ADE0DF161D7545151B1FA10C077EC8AA1A785EB918AA30E6264242979F5
          F90C3806FC2BBE7786012DA676890104281D3E2DFDCDDD73D6FE077D8E257B7C
          1719494ADE0DF1A9A9A961D671638FA79DA1BFB45D2219494A5E7D3E4383435A
          B15F728E3A23F7B992682B929297D4FE10A8B5F8B4F5B6593CCD7D8BBDCCBD44
          28929297D4EBE46369B1DCBA754B2D5E71B633F497DA25AA258CBCA45E8BCFC8
          D08856C383C38E7E47822C5EAAD412466AB2FBA3A082F9C0CDDCDF689D6DEFBB
          DF637FD09B084552F2929AECCFE63330545951A94E25F1BA7829F92F61E42535
          D943F2718E38B5EAEFEB57272FC3A7FD56963A8591DD1F0515CCA7BDB7ADD155
          DFBD60B53DE8499C222FA9C9FE4C3E6D96B6E2E2E2EAEAEAE6E6E6385EBC94D4
          124652F2929AECC17C5C4E977FD9FBEC71FFD830B8D48344B207D008AEFADE3A
          8BB7A567B1ABF77E77E21479494DF667F2A9AAAC32994CF5F5F5168B258E172F
          25B5849194BCA4267B3010B7CBADD5E0C020DBA4C98949C327FCD617A9C90E01
          7F2001D56BEFA9725476DC6DEBB9DF9568456AB24340878FADC776F3E64DEDC9
          467C37971219B5A71C64874000138FDBA31537F004DC1CAA525B4408F80309A8
          A6AEA6DAD11AEBBDCEEEC5AE442B52931D023A7C1A1B1B8B8A8AAAAAAA126173
          A8A46D11494D7608043099F04C6865EBB58DB9C6126D73A88AD46487803F9080
          AAB456348D3758173ABA163B13AD484D7608E8F0293395959696D6D6D65A1260
          73A8A46D11494D76080430991C9F54C571ACB7A777DC336EF85437AAC80E0138
          684CFC6B7068E096B5A465AAA96BB123318BEC108043483E430343F9F9F9B76F
          DF5687AF44682E25925A7C4730B243000EFE58BC935E55038E01764713E31386
          CF73A38AEC108083C6C4BFDA7BDB6EF5965866CCD6C5F6C42CB243000E21F974
          7674E6E6E696959535343424C8E14B491DC1484D7608C0C11FCBB4775A155B23
          0EF8FCC4F0796E54911D0270D098F8575D7B6D99FD56EB5C73E7425B6216D921
          0087907C1AEA1BB87BDFB97387334802F617A9C90E0138F86399999A51D56D5D
          FDA857623EDC5045F6D50F8559BB3526FE55D672BB7CD0D436DFD2B1D09A9845
          7608C021349FB2B21B376EA88787EA3D87464FFC2D927A2FA27A84080138F863
          999D9E55D5D9DE39323CE2FF93442BB243000E21FFF4666341C5F09DB67B96F6
          85D6C42CB243000EA1F914DE2C282848F0FE82001CFE82CCCC9FAABDADDD39EA
          E436AEFD24D18AEC108043C83FCDADBF5E355ADE76AFA57DC19298457608C021
          249F9CEB39858585CC31B3D9CC7C337AD66FA9C84B6AB243000EFE58E666E654
          B55A5A995D864F72630B0270D098F8D795EAAC4A5F7F257241000E21F95CBE7C
          99D9555959C94CEBE8E8307ACA6FA9C84B6AB243000E21F9B434B7487F41000E
          21F9645666548EDE69BDD79CC805013884E473E1C205E92F08C041FA4BFA2BEC
          FD95999929FD050138487F497F497F8551EBEC2FD7A82BE41F254E4140FA4BFA
          6BA392FE92FE92FE8A9CA4BFA4BFA4BF2227E92FE92FE9AFC849FA4BFA4BFA2B
          7292FE92FE92FE8A9CA4BFA4BFA4BF2227E92FE92FE9AFC849FA4BFA4BFA2B72
          92FE92FE92FE8A9CA4BFA4BFA4BF2227E92FE92FE9AFC849FA4BFA4BFA2B7292
          FE92FE92FE8A9CA4BFA4BFA4BF2227E92FE92FE9AFC849FA4BFA4BFA2B72D2E9
          2FEDA3BBD25F5A7F85FC68B3F497D65FA1F9487F3DEDAF907CA4BFA4BFA4BF36
          27E92FE92FE9AFC849FA4BFA4BFA2B7292FE92FE92FE8A9CA4BFA4BF22DD5FF2
          FB45B5DF2F2AFD25FD25FD1546497F497F6D4D7FC9F73B487F6DAEBF2E549CAF
          48F8FE82001C42F2C9C8C890EF2782001C42F269363733BB66A767233D87A3B6
          C80E0138849E3FE5E72A46CA2CF3C64F72A38AEC108043483EE7CF9F97EFD783
          001C42F231379A47474613BCBF200087907CCE957D7167C86499371B3ECF8DEB
          2F3304E0109ACFB973F2FDB0108043483E0DF50DC383C3D3DE69C3BF47D2A822
          3B04E010FAFE6C3A6B1A286DB9DBD87ACF9C98457608C021249FB367CFCAF79B
          43000E21F9D4D5D4AD7EBFF98437E4B7EB2642911D027008C9E7666341B9C3D4
          3453DF32DF9498457608AC7E3F6C283E972F5F6676DDBE7DBBBEBEDE62B12454
          7F9197D46487001CFCB1CCCDCEA9AAADA9EDB3F58D7BC6A7A7A613B3C80E0138
          684CFCABA9B7B16EA8A6DE5BDB3CDF9498457608C021249F7C9F4A4B4B6B6B6B
          996F9D9D9D89D06264242979494D760521249FBADA3ABBDDEE76BBA712556487
          001C42F271B81C6D2E4BCD44A579BE21318BEC108043483EDCBD995A45454555
          5555CDCDCD1D1D1D09D25F24252FA9C90E0138F863B93B7757556343E3E0C0A0
          73D4E99DF44E79A712AD484D7608C04163E25FDE59AF7DA2AFDC656A9AAB6FBA
          9B7835574F7608C021241FEE4B050505DA23C4043982A9C397F6F010027008C9
          A7BBBB5B4DB089F109265BA215A9D5ED050E21F92C2C2EB8669D25834575B3D5
          0D776B13AD484D7608C021249FF6B67666574E4E8EC9645247B0B8DF226A9B43
          F2929AEC1080833F96F9BBF3AAC6C7C7BD5EEFF0D0B0C7ED999C984CB42235D9
          2100078D897F2D2E2E4EDDF3E677E7547BCBEBE7AA13AD484D7608C021249F7E
          7B3F37704EF7C5C5C5D5D5D589B045D43687E42535D92100077F2CF7E6EFA95A
          9D420B8B9CF1474746F92BF7F38D96E13DA2D5469D6BA921E0CFC4BFE6E7E7E7
          16E7B2CC174CAED29A998ADAD9CA0D55DD6C5554D586CC9397D46487001C42F2
          81DECDC29B191919CCB1F2F272B5458CE3254C2D5E6A73485E52931D0270F80B
          327E5A5E5E563722F7989B7F6C3D15852D16DC3BCF2CF2AADB0E04EEADADD9F9
          D933E5E98503F9955365D5B3E5EBA99AD90AAA76AEB26EAE8A327C19A294132C
          296FEB49415E52931D023A7C38839C3973263B3BFBD6AD5BB5B5B52D2D2D71BC
          84A9C58B8C24252FA9C90E8100260B7E5AF6C9DA69E566CE9463CBB466793CAA
          B90CEFA6F5B41B56571DAF9185A4E425B58ABFB0B626A626AE565FB9D29175DB
          5D52397DA77246AFAA669899B45575C35CED6ADDAD6B8C9AC28C72853D4C6255
          2FCBF41DF2929AEC10D0E1D3DADACA1CBB78F1A27AA36F1C2F61FE8B977A5B2F
          A9C90E810026EC88B47A70FFC1E3C78F3BDA3BB89973D21F738D852CD57AD1B3
          60AD6739537D14320E49C94B6AB243C01F4840B9C7DD37AAF34F577D5630985B
          E62D2D9FBE1DB22AA64D553377D8833193CD771BA2BC3089550C633B641C9292
          97D46487800E1F0EB0E7CE9D639A5DBF7E5D5BC2D47B11E3A9C5541C72698B17
          79494D76080430597AB04431AFEE2FDEA7B8813BFA1D4CB6A1C121269ECBE90A
          282624CB81E15DB389C236E603E29091A4E42535D915040A208A4C009FDB75A5
          293907B33A2E148F15944D95964D07D69DE95B6CA898B42DF34D967BE69828AC
          6218DB980F4C34554A52F2929AECCFE473F3E6CD13274E646666161414702A69
          6868E0961E67BB44B5332417E9C84852F2929AECC17C9E6C7BB2FC70F9E1D243
          7E422DDC5B181919A9ADA9B5F5DA468647D8383103B56242AAE632FC71FA264A
          B598EA2955A4232349C94B6AB22B081440C0029C003EB5CD35BB3E7BFBB38AE3
          39FD574A260A6E7B8B6E4FFDB94C53C52C04CDF30DED0B968E982A0C631BF344
          F873226F1119494A5E5293FD997C2C164B4A4ACAA953A7AE5EBD5A5252525D5D
          6D369BE36997A8ED0CC9453A329294BCA4267B483E8F961F71EBE627EA46343A
          3A4A27363737DBEDF6E1E1E1113F8D8D8D4D4E32596355982782168774642429
          7949ADDD7356E12C03E551301F4EAC27B28E255FD973AEF974FE6876C96441E9
          54A156E533B75AEE35762DB677DFEF8CB9C236E689A0C5211D19494A5E5293FD
          997CB8476565651D3D7A94CD526E6EAEC96462070561765371D062AAB9C84222
          72918E8C24252FA9C91E920FF5D0A7259F9C4EE78D1B37CACACA58041D0EC7D0
          D0D0B04F4C488FC763748B3CAF88A03A8B5CA4232349C94BEAA5A75234343801
          7C2A9B2ADF3AFAABC3370F5DEC3A7F63EC7AF1E48D62EF6A3121EBEF563351FB
          1EF4C468619E0804594D347983746424297949BD4E3E9C4A0E1E3C78F2E4498E
          FC80BD73E74E7D7DBD3A88C5748B69CD451612918B7464242979F9A13E9FD55B
          D0535555555DBB768DE58F6B3209070707998D4C4BEEFF46BF49F07945048290
          885CA4232349C9FBD04F0A850E9FF4ECCFDF3DFDF6F18AD42CFB857CF7F5C2C9
          BC426F5EC95461DB82A57FA9CFB1648FD1C23C1108422272918E8C2425EF86F8
          E4E4E4A85DE2E5CB970B0B0BD5418CED53ECB698D65CA450C72E72914EED0CC9
          ABCF676565E5F1E3C7FC553DA3E6F6CEAE322F2FAFAEAE8E8BF7F7F70F0C0CF0
          43EEFF4CD1E99815E689C0BD8244E4221D19494AB4E5A7D250E8F0B1F659934E
          BE9F94F9DEC9BAE3598ECC5CF7B51B13394C4BDB83EEA18703315D4428F11692
          885CA4232349C9BB213EDCBBD2D2D28E1C3972FAF469F0161515555454302DFD
          57B158E93265555BB948411612918B7464242979F5F9505F7DF5D5975F7EC9CF
          1FF9C4A5CE9C39535050C005BB7C2DC63D9F9BBFD12DF2BC2202F70A12918B74
          6424E9A3A7223E104011002798CFCD8AC2370EFE6CCFD5A4CF1A69B18C1CF795
          E2C97CFB835EE7F2704C17110AC7F348442ED29191A49BE0535353B377EFDED4
          D45408AB16E39ECFB68A934B5B5B9B7AA218FD2DA64CE216CF38C73F29547391
          8B746424E97AF850FC916A3D2576985F9CFD8275B0BEA1BED3DA69EFB7BB3D6E
          A3FBE3B934353DE51A7375757791885CA423E38A9F880F84907002F800F36CCE
          17FF9AF2F33DD9499F361ECBEC3F97EFCEEE59B4BA1E39DD8F5C315AAE6567F7
          42E7B5C12C12918B746454D366137CB87DF9B718C0A15D5B5B6B369B5B5B5BA3
          7C21F35FB6708B679CE39F14FECD45C6F5F3F9FAEBAFD55DE8B14F3333336A12
          161416D4D6D57674760C0D0F4D4C4E4CCF4CC762D15C1313137DF6BEBAFA3A12
          A95B07191F3F95BAF300619D7CC6BD9EDF671CFED7C33FDF9DFDC18986D44B8E
          8CC6D93AD7F2E8F88A677CC51D83E5713E1CA999A8FCDC9C462272918E8C9BE6
          C36EFCD2A54BAAC5D84AA9B7BF9A4C26CEBC6AAFA816B268EB32ADB3D4B2A5F6
          8478C6B97A0333595473918E8CEBE7437DF3CD371A25E476BB737273E8D6BCFC
          BCCAAA4A56B1D1D1518E30AB8B81D1FDB281F289E66267B87AE6CACF2311B948
          F7E5532932C4D78113CCC731DCBF3F7DDFCF53FEF70797DF4DADF92467F06AEF
          42F7C4CAB8F7F1446CD5E4CAC4F8238F75B623C3F245D2955D242217E99E938F
          D3E93C77EE1C539173CAA953A72E5EBC989B9B5B5252C22E8BE5A0A9A929B8CB
          8C6A346D74FFCEC2213E718B679CE39F14642111B948B7513EFE88945C2ED7F5
          EBD73FFFFCF36BD7AEB13EB25C6A0F12676241D3BEC71A1E8F872324ACB2B3B3
          C94222727DE5A775C209E6631BB0ED3B95FCD3FD3BDFC978EB48F9C7C583058E
          45BB776572FAB1772A766A7279DC36DB93DD7EE5834BBBC842227285850FB3E5
          ECD9B3BB77EF4E49493979F224D392FD15DBAA5BB76E555454A82EE36863B158
          821B2DA2ED16308AD65638C18FEA2C1CE213B778C639FE49411612916B737CFE
          F0CD1FA86FBEFEE66BFE255F8D7BC6F3F2F24E9C3841FF16171733BAC3E150AF
          8545F3E344F5409E658BFB4C77773777A1ACAC2C529085445A3A8AB02AF5E6F8
          0C8C3852BEF8F8C7BB7FF8ABCF7F71A8647F91FD46DF7CEFE4A389E9C753335F
          4675E1706AC53BFED0D33D65BDD67265D7B9B74941161285910FB732664E5252
          D28103078E1E3DCA12909999C92D8EFD39B397FF2EECBEEAEBEBB54653BD86DA
          9FAA23DCD2AEAC065283AAB6C2097E7085371CE213B778C639FE494116126D9A
          0FF5C73FFEF10FFCE3BE1B91D2DCDC1CC3A927AED773AE575456701C1B1E19A6
          CB26BDD1F8A29877CACB51716C6CCCDE6F6F3237AD1EB8BEF802FFA420CBD77E
          22266189BC4E3821F94C4E4F9CBAFAF9F7FFFDBB3FFBE4A71F5E7D3FCB72A175
          A265EC8193D93B139D5DF6786A7AC5EB5D9E185D18691CA94F2FFBEC57C7FF1F
          FE494196B0F3999D9DCDCFCF7FEFBDF73EFAE8239600EE72EA9DF66C2738D470
          D3E674C362515555C5AAC10CE7C8D3D8D8D8E493393252176714C66244C66574
          3CE0043FB8C29B7A573C6EF18C73FC93822CCFC94721D2282971295C9D3E73FA
          D88963E733CEE717E463C9DA651D1C1A1C738F4DA8772532AF59370C2AEF34AD
          CED67592AE1F758EF6F5F735B734DF32DDCABC98793CED38CEF1AF8068526436
          0A672D3E85776EFC72FF2F76FCEEF5374FFEDF94C20325BD85DDD356BACCBBBA
          96A9469BF695516D35BDDA56AC598FBC930FC79D0B231D9EB6BC96ECDF65BCBF
          73CF0E9CE33FA27C9830DCE25802F6EDDBF7C9279F306FB95D6764645CBE7C39
          272787295D5454545A5A7AFBF6EDB2B2320E23154F55196E69576614C66244C6
          65743CE0043FB8C21B0EF1895B3CE31CFFE1E243FD7F9F14254D4E9793B5E0E3
          948F4FA49DC8B890919B975B59556969B574F7740F0C0EB01373BBDD4F3F18F6
          54DEC8D453FDE9335E1E0F6D3E323AD267EF630350DF50CF9994CE3AF9E949DC
          E219E77FF84B114D65DC049CB5F8F4387A8E66FCFEBB6FFDC38E3D3FF8F5E7BF
          3C78635F7E674EABA76560BEDFF5C039B1EC995A996451A3DDB666F738BDDA50
          5E962AC6A5CDC797DCCEC591FE993EF368E3D5862C3AEB67077F8A5B3CE37C0B
          F8A8B72EECDAB58B199B9C9CCCBAC0BEEBD34F3F6599604A5FBA74893F654B96
          9B9BCB4AA17E634C6164A47E1B0FA3301623322EA3E30127F8C115DE70884FDC
          AA372184970FF51F3E294AFEE278C888870E1DC2067E38D7A85F1CC46AAB5ED7
          E0BCD3D3D3D3DBDB6BB3D9FA2223AECCF51985B1B4CFE3D4D4D47023C21BBBC1
          E3C78FE390FF8FDB3F0689502ADDA6E1E8F0A96CAAFCE8E49E7FF8B7BFFF41D2
          F77F71F48DF733DF4D2D399CD376AD6EA4A6CB6BED9FEB1B98770CDD1B185A18
          1C5E543514EE5ABD2CD76794C17987E36EBF7DC6661DEFA876545E69BC742867
          FF6F3EFDB77FDEFB131CE213B75BCC8723CFD9B367DF79E79D0F3EF860CF9E3D
          FBF7EF6732A7A6A6B25E7CF6D967E9E9E9EAE354E7CF9F67C25F78AACC7048BB
          1A57E6FAEA036B8CC8B88C8E079CE0075778C3213E711B213E1A25ED5EA4E9AB
          AFBEEAEAEEA2F70F1F398CA563C78E9D4A3FC5BEF1F295CBDC0DF2F2F358326E
          16DD2C2E292E292D89447165AECF288CC5888CCB7A9A7E3A5DED967185371CE2
          33988C82F3FC6474F87CF9E59755E6CA8F4F1F7CFDEDEF7DE7B7DFFED1EED7FF
          E5C8FFF94DFA9BEF5DFCF7DDD91F24E7EFDE7F73EFA1D27D1FDFDE9F62DA9F52
          7620CC65DACF95B93EA3301623BE7FE9DDB7CFFC9A66FFE7E49FFCE33BFF0B57
          78C3213E0DE1C37F17E6AD7AEEF1EEBBEF329977EFDEBD77EF5EE6F6C1830757
          FF0B1E3E7CC4A7D4C8485D9C51188B111997D1F18013FCA8E71838DC82F9A3DD
          883450FE62635657577729EBD227873F3970F040CA2729477E7FE4E8B1A3C78E
          1F630F9976328D629316DE5297E5FA8CC2588CC8B88C8E079CE00757C156B57B
          4E78E1E8F3E91FEEBF5672F577C73FF8FE5BFFF8F7BFFA9FDF79FBDBDFDBF59D
          D77FF7BD1FEEFEA71FED7DFDC7C93FF8F1BE1F46A4927FC0F51985B118917119
          1D0F38C10FAEA2848FCBE52A2F2FE7B0C39466BD606EBFF7DE7B4CF2249F3E7C
          AADDE193764D3504633122E3323A7F8B13FCE06A2BF9FCA99EFC1954B0E6E7E7
          D9B35555577128635565453B70E8C0477B3FDAFDD1EE481457E6FA8CB2FACD02
          79B98CCBE878D071B88AE54904B0AC8FCFE4F4445D6B6D56C1C594D387DE3AF8
          EB9DBB7EF2DD5F7EFBEFFEE5BFFF8F9FFD6D248A2B737D46612C46645C46C743
          D4F2999D9D659F6F32995838D884ECDBB78F69FFDBDFFEF637911157E6FA8CA2
          5E78625C46C783917C7C8894F46D449BFEEC3BA270848FF00937A8D8D0966111
          3EC227A128194546F8089F6D4FB66DFB4FA117D8C20F0000004D617374657220
          636F70792E626D7024320200789CED9D075C14D7F6C7F7FDA331264F9F792FC9
          3389B15734F66E34C6C498E469F2D25E12134DB124B1A0A2624D2CA8A8B1112B
          76C48A028252447A474441A48A34918EF48ECEFFB75C990C73676667811558E7
          7C0EF773F79C7367E7EC9DF9EEBD3B33970953BA0FFE3F955A5EC3DFDFF177F9
          6F86AABFA9DAAB1815A3A8A28A2AAAA8A28A2AAAA8A28A2AAAA8A28A2AAAA8A2
          8A3682D616556DE1BBB5095669238DFF3928AAA8A28A725506CA345251305861
          A3A28A2ADA8C551EC7B41A102A6C545451459BBD327221A615F114362AAAA8A2
          CD5B19858D8A2AAAA8A27CD58A60BA9346FF1C1455545145B9DAD8507C2C8DFE
          3928AAA8A28A72B5B1A1F8581AFD735054514515E56A8BA6218DFE3928AAA8A2
          8A72F5C5A6218DFE3928AAA8A28A72B56BD39046FF1C145554875A2D8F1E3DAA
          AAAA2A2F2F2F2929292C2C2C2828C81711B810803004A3091A726F30C6CBCACA
          CAE2E2E2DCDCDCCCCCCC34494100C2108C26BCED3480E87576C39B862887A22C
          51526BB6A991FD292A2ACAC8C8484848888989898C8C8C1011B810803004A309
          77AF50292B2BCBCACA8A8D8D0D0E0EF6F1F1F1F4F4F41011B810803004A3091A
          3670762A7DCE6E72D3900667A35E7696925AF34D0DF4C64EDEBB772F2424E4EA
          D5AB767676D6D6D6E745042E04200CC1688286684E368634B193A1A1A14E4E4E
          F6F6F6285D5C5C5C45042E360C4DD010CD1B3835FDCD6E66D3900667A35E7696
          925AF34D0D835B301CBB6A6868D8B76FDF676508C2108C266888E6646318DC82
          E1D8552323A3D1A347B796210843309AA0219AF3F6EED8B16393264D7A5E8620
          0CC1FCD4F437BBD54D431A9C8D7AD9594A6ACD3735CCFD31C45DBA74698B162D
          E4DFDB866034414334271BC3DC1F43DC050B162077F9DB41309AA0219AF3F26A
          D5AA95FCED20B856762A7DCE6E6FD3900667A35E7696925AF34DADB0B0302626
          66D0A041F2B743044DD010CDC9C63233337D7C7C860C19A2ED76D0040DD19C9B
          1A48AEED76D08466A35E6667DD34A4C1D9A8979DA5A426264D3FB5828282C8C8
          48AD184B044DD010CDC9C6D2D2D23C3D3DEBB61D3444736E6A18E86ABB1D34A1
          D9A897D9F9360D697036EA656729A949EC52134F2D3F3F3F2222A26EBB848668
          CEA6E6E1E151B7EDA0A18ED8A897D945370D697036EA656729A949EC92929AC6
          ED286CD428DCEC329B86286C1493A7E82C535213D9A5269D9AFE6657D6344461
          A3983C456799929AC82E35E9D4F438BB26220A1B45E4293ACB94D44476A949A7
          A6C7D9351151D828224FD159A6A426B24B4D3A353DCEAE8988C24611798ACE32
          2535915D6AD2A9E97D7635DA617D3FAE4A23483A98E79556858D62F2149D654A
          6A22BBD4A453D3FBEC6A5036D872D847C16326058D4489BA18B888FD3F0E5336
          5519ADAB988F12755E30EA3F58CD95A30A1B25E4293ACBF43A35BDBD7553DFB3
          039D86598E7CDF77E4A82BFD865CEE39E8527794A8C3023B8F5D848A6BCAE7CD
          CCFDEC8B8C099FA48D45893A2C84904D818D7ADB594A6A22BBD4C453238FFCD4
          6D97E8477EEAB61DFA919F8662A3BE6607340D3F31EA3DD7E1436D7AF539F546
          0F8BF6DD8EFF1B25EAB0C00E2F9778931DA62C2F9AF5E5FD77C7DDE93728A2D3
          9BE11D50A20E0BEC936BF0D8B86CD4D7CE525213DBA5269E1A7954BC6EBB443F
          2A5EB7EDD08F8A37141BF5353BA0E923B7B1C3ADFAF43EF246E77D2FBFB1FB9F
          445187057678B96C5C5B6AF865F2C4E1B77A760F7AB9835F9BD77C5F40893A2C
          B0C3DB14D8A8AF9DA5A426B64B4D3C35B2C4D0A851A3B4DD149AD04B0CD5ED51
          717A89A1865A6B422FB353CFA68F8E7ADB7AE89B87BB75356BDF71FB4B6F6CFB
          1751D461811D5EC4909F13273B7C3C3BEDCB7161FD7BF8BCFC9ADB0BFFBEFA1C
          51D461811D5EC490E04664A35E7696929A9834FDD4C8D2943B76ECD076692034
          A197A65CBF7E7DCB962DE56F07C168422F4DD9506B94E96576E0D2A72E13475B
          0E30D8DDB9CB967F77327D99ABB0C00E2F6208EE36962DF92276E220BF6E1D9D
          DBB577789EABB0C00E2F621A9D8D7AD9594A6ACD37357649733333B371E3C6B5
          6EDDFA39494100C2102CB6A4F9E6CD9BF18D40825B8908F1220CC1624B9A37C8
          DAB67A991DB834E5F23B238EF4EBB3A363E78DAFD00A3BBC8821B85B953F67F2
          ADB1FDDCDE78DDBECDAB762F701516D8E1454CA3B3512F3B4B49ADF9A6C6E8EB
          BFC2D1DFECC0A577FD87F673ECD4F17CBB574EB5A6157678114370679C37FBA3
          E8D1FD023B74F068432BECF0228604BFBEBEAF1CD5051BF5B2B394D49A756A7A
          282A7DCE0E5C9A183862E0956E5D6D5E7EFD5C5B5A618717310477CBF3664F89
          1933F05AA7AEDE2FD20A3BBCCB6BD8D8DEA4971CD5111BF55094D49AA3E8776A
          FA9B1DB8F4E1F531C3DC7AF5BAFC5A67DB7FD10A3BBC8821B8FB2D7FCEE777C6
          8F08E9D1C7FFDFB4C20EEF6F3573EA57367697A30A1BE58A925A731415F3F7B7
          557AA9E4746BF4DDD091824B9FDC7C678C77FFFE573AF772788D56D8E1450CC1
          DDBA8205DFC4BF3F2EACDFA06B1D69851D5EC490E0974C3BCBD1066763A37FAA
          3A5225B5E6A8FA9D9A1E67072EFD2FFC830901C38679F41E70B52BADB0C38B18
          823BD3C2C53F244D9E143178F4CD1EB4C20E2F6248F03FB7BE21471536CA5425
          B5E6A8FA9D9A1E67072E7D17FDF147216F8DF51F38C2DB8056D8E1450CC1DDF6
          A2E5BFDEFBECBF31A3DF0B7F9356D8E1450C097E71FB6B725461A34C55526B8E
          CA4BADE3F4760356761CB3A3B746451882C536DB697ABB81AB3ABDB5B38F4645
          5827F1EDD4677FE8D34D9FB2039766C4FDEFD3F08913AF8F7A3B6808ADB0C38B
          1882BB3DC5BF2F4A9BFA6DFC844F6286D30A3BBC8821C1FF307B458EEA948DFA
          D4594A6ACD3DB58ED3DA8DD9D6C72BC635A72047A3220CC1682298D7D85D06FE
          F15E8565051A15610816CCAE9EFBC33BDDF42C3B70694ED2B46F62A67C7CFB9D
          0FC2DEA215767811437077B0D46465E60FB3923F9A1A3F8E56D8E1450C096EBB
          F75F7254776CD4B3CE52526BEEA9F55FD6D13DC279F579238315EDC514DE821A
          41309AD0BB0402FBDDF5586BBB54623BF056D60882D184DE4E7FE38E6EB79D57
          5B2D92DA1FAB45EC7D53084613313692EC0A648B747695B2453A3BB17BC068E1
          65072E2D4A9DF563C297FF8BFDE8D3E889B4C20E2F6208EE2CCAB698E4FCB220
          EDB359F726D10A3BBC8821C16DCCDBC951DDB151CF3A4B49ADB9A7366263CF7B
          69C900CE3E9B5D279C0F5FF43BEF146C4F14F5638E07B79F368537BB46108C26
          F42E8DD9DE3BB7E8811A8077E66F4D37DE57BAEE30B38928EA9BEF2F591E361B
          DEF21A41309AD0DB19B1A167726A1222676EFF564CE1CDAA1104A389181B4976
          D9B565E5D905D802CA6C4AA4B32BAF2D6B6CD45F0428CB2991CE2EABB6ACA8DE
          1F945994F0B203975664CE9B737FDAF7499F4F4DF89856D8E1450CC1DDD9F29D
          DBF217ACC8FA7661FA7F69851D5EC490E0BF1F69234775C746B6B34807D17DC4
          B36BEC2CD241741FF1EC1A3B6B45CDFBF2FA8867A70F45E9E35042B43A0E2544
          ABE350429ECED486AFEF7137290EFDEB75CB55709066E3738EAD2F3B3D1FC168
          42EFD2E83F7A638C8A9873CC3EC1EDEC295EC3D67FB75E826034A1B7337C5D8F
          B8C43B848D82DBE1DA979D9A876034116323C92E9523875CF6FC6FE78707EDF7
          7EB079D4E520DBD4DA229D5D29474EF91D9D6231C62461E1843D033C235C4B6B
          8B7476F73972D065F73BEB8620A951BF1B5C0AB4B95F5B78D9A9D7D5C95D6294
          35EB97B4EF66A47E452BECF02286E0CEA662CF9E226393DC9F56E67C4D2BECF0
          228604BF60F1BC1CD51D1BD9CE524F0DF61B1BFEF13339E448D7A0829730C285
          8A9CCE42D81CF76FA6D97C4C0E39D235A8E0258C70A122A7B3D86F6A72C891AE
          41856BA73B4B3035928584927C35A646B2905092AFC6D4481652FB539D6F3D53
          633BB19EA9B19D58CFD4D84E944E6DD89A1ED1715188F78FF44699545B08336D
          7DAD30A4C4C0122F118C2602A96DED959D9785003BE618CAE2DA4298B9AF742D
          86941858AA07A2795968426F67E86FDD2362225806C6D716DE78122F118C2662
          6C24D971333AE064F693F99737E3823FD9311E03635EBED2D971333AE973E42B
          9BF7DC189B49878679DC76E1E52B9D1D37A37D8E3B5936E26B88972F2F3B7069
          53E1CA15B9F317E6CC9C9BFD3DADB0C38B1882BBCB95E6874B566F2B9CB321FF
          075A618717318FD978EA3939AA3B36B29D856E3DE376E2ACBBE5EFE6CB505F7A
          722E547D6A982F83112E72A06AEC2C84ED7CB0123AD773AABAF985C55054F092
          D8C981AAB1B3B8471DEA4B2CE7407946BAB3C452A32768648EC69E623253A327
          68648EC69E62DAA6263647939F9ABDFF05C76B76DCBCF012462E58E4A4B6BF7C
          FDA1471BB979E1258C5CB0D427352E5824521BB2BA7B7854383B3E8CAB2DB0F8
          DEF624B025034B04A309BD4BA3B6F4CA7C90C18E0F0B6B8B7AFBCC61B21D32B0
          44309AD0DB19B2AA5B68F84D968DD1B5853B6E241504A389181B4976BCA4169F
          F8150D51C651229D1D2FA9DFAA7FA4455948897476BCA48C8EAB074828A329E1
          65072EED2A3531295EB6AA688171E11C5A61877757CDE515F78796E72AB61E2A
          5BB1A77421ADB0C38B1812FCFCB967E5A8EED8C87616E9A0EBB14138B9C82891
          8C24F11246B6EF347616E92017C60A271719259291245EC2C8F69DC6CE221DC4
          3DB3782F49DFD187229D9A81F8048D75C949CD407C82C6BAE4A466203E41E39E
          83725223BD26A8DC734D66AF092AF75C93D96B82CA3DD7A452AB6111F9CEA2D5
          F2CA115221034BDEA6B8A965E4A493AF33C1EDE0EB8C54C8C012C182A90D5AD6
          F55A48904497F1D8886034116523C5222B8F531F6E196D6EB7FBBD0DC3F65CDA
          2ECD225E76DC9F94DD6E39BFBB77E0FAF805E376F6C31892F783B37476B73872
          CAE538468C64DC6866BBF5566DE165072E1DAEDC6556B1714BF96F9BCA56D20A
          3BBC8821B80B66EC5D1E1EB6ADDA71AED29456D8E1450C096E7DE11939AA4336
          723A8B1CD801913ED63E67D71C5C0145052FB907B69CCE221719ED98E37B8AD6
          CCF3FA168A0A5E1A70AE30CAE9AC054767098E4360844BB0B3045363CF23FA7B
          90EBD2981A7B1ED1173BB82E8DA9B1E7D12D4AB82E39A9C914F9A798B4C83FC5
          A44522B5C12BBA85845EC727B0EDD4A6957B17FFB4F6DBA92B3E278A3A2CB013
          16E15B1B2582D144828DCB4267FD7CF5ABCF2DDE9B62FE3651D461819D6C07DF
          DA526C5CD2D52FC857F038A4BFB85122184DC4D848B28BE0C8251FDB895B863B
          045DFCC3DA64F8EF3D579F32E27AA5B3E376CDB558FFF1BBDF3CF870C3F2F099
          433774DD7A69ADAC8EABCE2E8423175CCF0DFFAD0772F97ACBC7835777596EB1
          80EBE565A7BEBCF2E8C8B1877BCC1FEED8F7F00F5A6187173104773719C71B8C
          833F63E5FDE814ADB0C38B98C76CB4F93F39AA3B36F23A6BE131F5C53B6BEFB3
          E73D4F4151C14B18B5ED2C82C7DD45BF9BE5FF0645C5A0F6AD17323B6BFEE119
          06D44F3A308A7596606A063513B4084AB82E8DA919D44CD004D9C8BA34A6C69E
          472194705D72529329F24FB13AB2913AC5A4452235F6DA8785F3E1CB81B617FD
          CE43810E90F0EA0D47F75097932E47B96CE4FD74C9EA5BBBFA14971721604BDA
          52F34A937DA5EBA040074868C16C3FCDFCB92D7319978D0846137A3B038DBA78
          FB7BC9672382D1448C8DF4B50FF223EDF84D032F049C3EE4B067ECBA370F5FDD
          2BF6C32C2F3BDE53E9EB2F2E1BF747BFC329DB37242D44375D083EC5BAA4B3BB
          565BE61DFC1154041B7FD8F61538B9EDFC46D6C5CBAE8336FF295577AA2336F2
          3A8BFC967EC2F97060942F141503C95FD1C53A0BDD44A62D97194B2899BFC0A8
          6D67A19B6836C228D65982A9494CD058979CD4242668AC4B4E6A1213B4BFA666
          F25293295A9D6212A2D529262152A999F448B8A7FEDD12248C4989CACC4B4F7F
          909A959F9953900D4DCBB9EF78CD8E7C50E44B0DC16822C1460B665B30E391CC
          DC4960A25398F85426091ACF441E7AB4916C877CA989A5366051170F1F0FF96C
          44309A88B2B13ABB744A8EBAED1FF27BD713EE87D79D5CF1DF9D1358BB747674
          07818783D677FA23CB7861E0775FEE795F63C791EC0228D97ACEA4FFCA0EDF6D
          FD0C84FC70CB18D62E981DD1D8E8586F2F6F5B1B5BCB6AB1E0085EC20E2F62C4
          8854CFE63A6123A7B3969F3144E76E3CB606D34C1C8D5054F01246B8E4771601
          E3A2C01F2E32C770344251C14B2E1EE574D65CF31FC4E6D4708975169D9AE004
          8D374793939AE0048D374793939AF489461294999A4CD1F614D3968D62A79898
          48A4466E4F62EF1C0B4F0895FE5213BB3D89A4460E45F5708E7190FE52134D6D
          6167372FB73907BEE70250E24B0DC16822C646DECD57161E073FDD350125EA73
          8F7D6F727EC559774B0319776FF23A0E480409C94071D1E9594621D3C8454FCD
          1D579D9D5F8D6C39B3FEC3CD6350A23EFDCFCF3EDD34F1F10F053522981D34F4
          66A8F5056B7737F7B09B61F171F109F109490949C989C9505460811D5EC42092
          C691F34DFBFD17CC4EBB1D73BC69EB1D77C53BDEC537C1D52FD10D8A0A2CB0C3
          8B18443E3136F2EE6F5C7F7835A62AF8BE26DD8D0A5EC268A0E9FE46B6B3C8D1
          68E83B0D53157C5F93EDA0829730B278D4D859E46894B8168300C1CEA2534330
          2662988E6128C2BD9ECB9DA3C9494DCDD8CC65988E6152C6BD9ECB9DA3C9494D
          0E1B65A656CFFB1B1B8C8DB54F318D2291DA48D39E6959A979D582CFE1A8C381
          3FCF6F5B737005BEC5A0CB762F34FCE3E7795B66ADDE6F4CBED4108C26D2A921
          6CD3BDC5AB23E7CCF3FA16DF62D059CE5F4EB3F9F8BB0B93E7B87F43BED44453
          5BD0D9D5D3D5B75AE4741C82D1448C8DDCEC209F99BDBBE684F104932168387E
          C340A7EBF6BB9DB67E6FFE191B20273B08C038DF6FEAD81D7DB19D31DBFB5894
          EC5C7B67DE8C23FFD3DC719CEC201F6E1E8D81E2A8DF0DB01DCCA631A7FE72F3
          879F6F7F9F0D10CC0EC339402FE47A484A724A7A6A7A667A665646165761811D
          5EC4209237FCB388369B7FE1BBD5D7676D4D5EB42D75F1F6F4253B326A292CB0
          C38B184422FEC9B091ED2CF2451C1C13703B31CCA0FA3128F29C145EC248BEA3
          E57416F9227662CEF8328E848484967809A3C68927DB593C12FE7AE0FB5F295A
          0A7696606A41D17EE9B9699979193C85112EF9A93930271399987B4C1C4F6184
          AB0EA9899D6232539329324FB1BAB3B1F629A6512452E3DE9D22E74B4DECD239
          8F8D1ABFD4C452EB6FD8F9AAC7559F6A91D3710846133136F2EEBD997FE2C73F
          9DB6DC8ABF11161F7237ED8EC30D9BF1A603EDAF5B6BBC3180D771182B9ADC32
          F2642E793076614C80CD1DCB717FBC79F5B683C68EE3660799F6E7A764AC4814
          601CBCBA0BBE9BD8005E763E5EDE8B8D8C66CF9E3577EE1C4343C3450B17E2E5
          92258B8D8D972E5FBE7CD5CA95BFFDB67ACD9A35EBD6AD33596FB271C30653D3
          4DD00D261B76EDDC75E3FA0D2BA7D363BE1EF4EAD7ADBA4D6BDBF3A7763D67FF
          A3FBDC365D17B5E964DCE68DD56DDE58D7E60DD3366F6C6DD3795BBB5EDBDA0F
          D8D675E4B637276C1D3971E3981F767FE57CFD92AED9C8BD41E566DCF5ECFC4C
          03CE6D1BE4D60E18E13290BC41850B1037C6E63E93C09D41133CC208973440D8
          CE628F433518F74F275D830AD74E7796606A1237A818706E53D1981A3B411353
          E921319B1AC9424249BE72529329324FB13AB391778A691489D4B84F7CC8F952
          13BB1D9DC7468D5F6A4F868DBCE7597CA2DC0D2D7F62FBFDC7439F3BDCB095F3
          3C0BAFE382EEFA028FEC763062E482517EC71DBEB81F7864B7831123178C74C7
          AD5FBB76F5AA957F9A99EDDFBFCFDCFCC0E143878E1E3D626171FCA4A5E599D3
          A7ADCE9DB5B6BE606B6B7BC9DEDEE1F2E52BCECE2E2E2E6E6EAE575D5C1003F9
          6CF67F5E5EF14CD73F5BF4D9DFA2DF91160627FEAFD75955375B552727550777
          55077F5587EBAA0E61AACEE12DFB85BF382ABCEB47E1C3BE0BFF68CEF5A933CE
          7DB3DAC258D76CA49F8CE03E0741DB3576160B10EE9517DA2E1F202C18B97894
          0310FAB92A6991791C363580E8596A035674F48D73AFA896B536522B45A86728
          364B118C26F42E0D5CDD2930D19B77EC497CA921184DE8EDF4F8A9BDF9F9BDBC
          634FE24B0DC16822C6466E7672444E7672444E76728497DDEC59B3B66FFBE36E
          5C5C7171714080BF93A3A39393A38BCB157737572F4F4F3F5F9FC0C080E0E0E0
          9B376EDC0A0B8B8C88888E8EBA7327363A2ACAC9C9C9D4D4B4FDD4B6AF6E6F71
          3EE1485A49F2FC90C9637CDAF60F50F50955758F5175495275C9547529507529
          53F5AC787668C5CBEF55F4FEAAE2EDF9155FFD5E386F89DF2F53377DA16B36EA
          596729A935F7D41A6A69A04EDFB71B6B66801D06CF352AC2108C26F4765EFDF4
          EFFD17743E707ECF5577178D8A3004A389181BF52C3BFD1E37EA596729A935F7
          D4C85E81C018A06A548409EE4FC36E07BB0A9263A0AB5111C6CD8B66A39E65A7
          DFBF37EA596729A9E9416AFAA4F4E9A64F4AB2D3D7EBD47AA64A6ACD51F53B35
          BDCF8E11BABF91DCE20845A50EF737925B1CD53737A2DE48F737EA992AA93547
          D5EFD4F43E3B76F4C87DB0857DB685D4B57D2E46DBE60A1BE57456A3EF83925A
          1D526BDE5A2D8F1E3DAAAAAA2A2F2F2F2929292C2C2C2828105BF61C2E04200C
          C1688286DC0B5E78595959595C5C9C9B9B9B999999262908401882D184B79D06
          1015D3F7E438394A3E07F98F3F37E2E3D272F47FE202AF4A93586A1289B6E470
          AA65E1BD6CF4A35D51456B54F3615903B4A2A2A28C8C8C848484989898C8C848
          B1A53FE04200C2108C265CACA1525656969595151B1B1B1C1CECE3E3E3E9E9E9
          212270210061084613346C583C027A5D1C7BFD2BF4D9F6B75E783DBC6D87DBFF
          E02A2CB0C38B18440262AF9975EC6CFDAF1E76ED7B5F7ABD4F6D850576781143
          88F783D55C39DA286C6444F0481F12C2705331126024CD59E2B1955BB76E91E6
          C4F8D717546D4E368034F609A5A87E280EC8D75E7B6DFCF8F12845F1C83018FE
          8172F7EEDD0B0909B97AF5AA9D9D9DB5B5F57911810B010843309AA0219A93C3
          169C04E54243439D9C9CECEDED51BAB8B8B88A085C6C189AA0219A37CCE9532D
          20DEBF7C9F7F23E8A51E21AFF7B9D1A9CFCDDA7AA313ECF02286B0B1EBD997FB
          DABE31F072D7A18E3D69851D5EC4340B3632141EE903430C8C44C5C028D656EE
          B8B1DE525E5A5E5652062D2D2E2D292A292E2C2E2A282ACC2F2CC82BC8CFCDCF
          7B90979B93FB20FB414E564E766636B99A5687B3463A80FD28146DBE8A5E0618
          EFDEBD8B52828D981D631008D6191A1AF6EDDBF75919823004A3091AA239396E
          313BC62010AC3332321A3D7A746B19823004A3091AA239EF443876ECD8A44993
          9E97210843308F8DED5D5EEAE1D5B97F40EFC141FD68851D5EC41036F639D361
          B06D8F9197FB8E71EAFF96D300AEC2023BBC88692E6C643878143B36C4C04854
          108C50171F6F3125019739C27FD904D828F681F03E16B100FA0321EA245B2E5D
          BA243F982B8D782CE99F1236E288926663494909E6C84B972E6DD1A285C4A880
          2708461334447372DCE6E6E6628EBC60C102C053FE76108C266888E63C30B66A
          D54AFE7610CCC52388F7BAEDEB7D9C7B0FF61838C27B18ADB0C38B18C2C6FEA7
          BA8EB0EE3BF6D2A0F18E4369851D5EC4342336323AE200F3D8C556C88F9024AC
          1600AB5F2ECFFD7151E28439A1DD1EB765181F1F9F458B160D1830005D8F1275
          58B85D2F11504F36EAE8FB82A966A304D21FC38D610202027032BEF5D65B9873
          0906486C21EE4EDC13D0C63D629F98AAE4B1B1B0B030262666D0A041F2414404
          4DD010CD49F7656666E2181E326488B6DB4113344473EEC180A1A0B6DB41132E
          1B3B5876E963F3E660876123AE8CA21576781143D838D0A2C7A8736FBE7D71E8
          04FBE1B4C20E2F629A171BE51C21D201F400899E6B9BD60809901E3722BE77EF
          DEBC8E83E5316C3505D4878DBAFB9D8191C7C6FCFCFC5EBD7A0D1D3AB467CF9E
          BFFCF28B201B5F1512858DBA38F2E5B0B1A0A020323252AB411A113441433427
          FD9B9696E6E9E959B7EDA0219A738F16CC94B5DD0E9A70D9D8D1BC57DF538387
          5A8F1E69378E56D8E155C754B371F0D15EA34F0F78C77AD87B1747D20A3BBC88
          D13336B2C709F97F1FD21F2F3746AB78F68DF00D48738F08ECE4995CE9803AB3
          51A7D7A718796C9C397366C78E1D5D5D5D57AD5A05E265646468C5465D74BDC2
          466936E2EB2C2222A26E4C43433467D9E8E1E151B7EDA06183B3B1B359BF378F
          8C187EFAEDD1E727D00A3BBC88216C1C72B0CF18CB4113AC464CB41E4D2BECF0
          2286B0F1F5F57DE5683362233E7F89539B1584918F5AAB78F68D303B96E8BE45
          D5221D503736EAFABE26461E1BBFFDF65B636363BCCCCACA02F1962D5BC60B60
          E4B1F17AF0F55DBB76855C0FA1BBD2CDD56DE2C4899E1E9EB42B2038C078D792
          A09040AE5161E3D3C9C66E7F0C1E60FED6C813EF8D3DFD01ADB0C38B18C2C6A1
          07FBBC6539E8DD7323265E184D2BECF00EAD61E32B1BBACBD166C446764A2B2D
          9635F7376A15CFBED180010324BA6F40B54807D4858DB545E3AF9DB4C8692287
          8D77EEDC612F5CCE993307D063CF1DADD8B875CB562323A36DDBB6D15D89093B
          3EA8E1C387D3AE39A6BF4C9AFFDEBCCD73B8464136723F73BC35EF2502F66912
          B2F16FCF7E24AD5A84D588B5B5F58C1933308968D9B2254AD461F9CBADCD313F
          70E0402F2F2F94AAA78F8D86CE4B8C3D57ADF65FB726D08456D8E1450C61E320
          976EA33DFB8DF71BFC6EC0305A61871731848DFFDAD2518E362336AA7F2D9421
          08231FB556F14CCD0F9BD217E9C82D10D201F564A3C65F3B6991D944E6B51856
          EEDDBB07E86DDEBC9917A0918DE7CF9F37AA115B5B5B6E3FAE5EBD9ADD43D4B9
          AE43E70F028C44519766235754141E81BE2B57AE94959509660A3BBC8801D336
          FB6E082F4B8E61D269851D5E82BE358E2B5C6FFB79C506D30A3BBC6A3C324C7A
          7AFA92254B9E79E6195E5FC0023BBCD5BBABC531DFB76FDF0B172EA0543D7D6C
          5CEEBB6C6DF0EF9B6E9A6CBEB59156D8E1450C61E3DB7E83265D1B35E5C6DB9F
          84BE432BECF02286B0B1DDAEF672B429B05145F53B7D790531F3E7CF9738B559
          4118F9A8B58DFFF5D75F55D5033F89EED3F5B851E38F99F4FECB6FA22D1B2153
          A74EEDD0A143696929239B8DC1D78257AC58C1B211F51B213748276236FDF2CB
          2FB3BBD7EE1FED60212ECCA6BF5CF619CBC6CF967E028B041BB969320CFF25B8
          9793938301F0175F7C31B2B6C0023BBC848DD772A26F97DF9BE6F5C5BB4E23B9
          0A0BECF012365E0A76738DF0DFBA678BB189315761811D5EC2460050E2D88057
          FD996A735EF4E8D163F7EEDD28554F1F1BD7872DDF1AB57667EC46B338535A61
          871731848D9FDC9AF055E447DFC57CF27DEC67B4C20E2F62081BDBEEFFA71C6D
          AC670679C7804AE87A2B2F46DD4A86208C6C50DB78728A35CEEF8D35A271E3F4
          FECB6F520736464747837BEA19A86C36629C69545BB66FDF4E3A11F368DEEE0D
          1A3488B8308F66C148F4974DB325D82875A781EA311B81C1B66DDBF2DE1116D8
          B96C04065F3FDBB6ADA58AABB0C0CE65233038F5D76FFEFBC3275C850576C246
          4C9CE9112357E0554FAEB56163C78E1D972F5F8E52F5F4B1F18FF8E57F26AFD9
          9762629EBA8956D8E1450C61E30FF19FCF4E9A3AF7DEF4F9293F1AD656586087
          1731848D7F3FF67739DA88CF53F3D8A8E2F43E7DFF09BC1F7CF0810CD4310823
          5BD3369EA96663E35CA7AE118D83527AFFE537A9031B2153A64CE9DAB56B5555
          959CFB1BADACAC8C84E4E2C58BDCD93457309AE2CEA6B9BAEFCC1E3136122C10
          213C9C13DA6D51E284E5B93FE2256123468982EF083B978D1825F2C04814762E
          1B314AE4819128EC848D3366CC90E8082288D18A8DEDDBB79F3E7D3A4AD5D3C7
          C63FB38CF7E7AC3AF860EDE1DCF5B4C20E2F62081B0DB3662CCEF965D983792B
          1E18D20A3BBC88216C7CFE742B39DAB86B4DF0D8A812BA1D858D193B76ACC489
          C90AC2C8A6B48D6798C7BF5C35C2FD8D35A2F1C74C7AFFE53791FB704B6DD9B3
          674FC76AB1B5B5D5186C6A6A2AC8C69D3B778A91AA5FBF7EF3B7CC1564E32C93
          9FC4D82867DCF884D928F68DC93B48B462E33FFFF9CFF7DF7F1FA5EAE963E337
          FE5F1E2A353E52BAE268D9CA6365ABB80A0BECF02286B0F15DFB49BF971AAD2B
          5D6A52BACCA4ACB6962E831D5EC41036B6BEF08C1C6DF47578786C54551F03F4
          FD27AAEADBEFE5B08EBDB15FDB78968DCC937F2EA646743A6E94DF418181818E
          8E8EEC0205A8C342879D3D73D674D35F30441D963A875D0BBAE6ECE46C5D23A8
          C3C20D888A8CBA76ED1A4AF2D2CFD70FB846495EE2F3472B752F34121B5BB66C
          A9F1F4478C566C6CD3A60DBE3B50AA9EB27BBF19658DB26AA13F25FAF63C180D
          0C0C626363A541870084918D681BCF70D8581F69B2BF37CAE99AC888480CBD02
          020292939233D33333D23350A20E0BECF092302F4F2F131393D35667EEA424E4
          571513451D16D8E1E5861D3972044C63477DA8C3C20D03EE80DF8090A0F8DCFB
          F7AB7252AA7250A20E0BEC048628EFDDBB97939D83127520312231E65E45364A
          D4D5EB655D0BC6C651A20EEE6567674BB0115EC2C6A0EC280936C2FB988DD75C
          A5D878CD5547E346B0F485175E20D41563237966B06E4CA39F19ACDB76E86706
          EBC9466DDBAAAA9FE390737AF29EF5686A5AB77163D7AE5D355E5E4100C2C876
          B48D679A001B757A9D5AAA536A0200C0A4C424F22F36EE25DD4B4E4C4649FE19
          07EC64C60A05D9A2E2638B99F214E6410C93461475586087970DF3F7F327CBD4
          F31476360C004CCC4AB9F7F041C2C3ACBB0F33E21E66A0441D16D8E1450C889A
          959975FFDE7D94A863C40830DE61D251A28E1123C088CDA2441DDC4B4D4D9560
          23BC848DBEA961126C8497B0D1C6CF49828DF0EAE2F74646E8A778BAE3C85A13
          75631ABDD644DDB643AF35517F363E99673D9A9AD6E1F74612F6FAEBAF474747
          8B650D1702D88D6815AF6A1A6C6474797F239F841C0B491C13E7C080C08CB40C
          F09056D8E18560467CC6EA6C09531ECBA4D30A3BBC8881627C280846A2F02206
          13E7C0906BF7D560CC8CAFADB0C00E2F6220991999A0344A0E1B33C4D8181717
          27719D1A5EC2C6AB718112D7A9E1256C3CE36A2B719D1A5E5D5CA7868ED9D19B
          A8041BC91A65A3468DD20243D58226F41A65755B6B825EA3AC9E6B4DA89ED4B3
          1E75D7DA82AF06F6D70969918AACD3756A12F6D24B2FFDE73FFF898C8CA4B70A
          235C085071D8283F1EA5B7B737CA99464BEAA94DF6B918DE07CEB3E015466898
          3E636C26C846D8E1458CE926D3BB2989E94CFE5D269356B53D25B1FA3F5E9A82
          69F177E3C5145EC4383B3927E7A6DD7B9493F4289B56D8E155FFF648B131A522
          279EC94249D87827F60EB68992B0F1FAF5EB11111182F737C20E2F61A3CD7517
          87086FC1FB1B618797B0F1A0CD090B472BC1FB1B61875717F737AA915823A278
          AC59DB76C78E1DDAAE2D8626F4DAB6EBD7AF97F3C3292B0846137A6DDB7AAE51
          A6D2FDB31E0DC8C6F4F47480FDE38F3FCEC9C9917E770D9175BABF918D6C5B2D
          D83E8E70B23D54F092D879DB911F8F0A4E31950ED858525C525A52AAB6A0282E
          292A2C02211FE4D46223BD11EBCB97ED5DAED8393B5D74723C63632DE77D0F1F
          397CFCF8F1C3478E989B9BEFDCB9930E0096A5F5FCF9F364DE0A04D14AE6B3E4
          9997A2AAD264262791C9A6157678C96517C22B3185173140595655C1FD470F52
          841476781143CFA9532B1E2431392805D978EAD429B26EBF6F6D214BFDC34BD8
          B8CC7691A5A7ED691FBB33BEF65C85057678091B179EFCC5ECA4F99E3387F69C
          3D5C4BCF1C821D5E5D3C1723938DECFF443033331B376E5CEBD6AD9F93140420
          0CC162FF1361F3E6CD185292E0562242BC0843B0D8FF44A8CFDAB62A1D3FEBD1
          806C44EECB962D23DFBC870E1D9258FF5C73A410F17816413072414A2F414C03
          56AB78D40F1E3CD8E06C040FF105919090002087868662169F9C9C9C939D5390
          5F80A1A3181BEDAE387BF8FB7B05057A04F8BBFBFB397B7A9CB5BB28FDA6272C
          2DC9E5DD73E7CEE1C43F7AF4E8CE5D7C3CCA67A398B26C2CAE2ABBCFE4A6300F
          68851D5EADD898535598F6284F4CE1256CC4C7959A928A92B031A3220FEF8592
          6623D3949FA7E69E059275996C64F4F17F69A974FCAC4703B2F1D6AD5B60DDF8
          F1E3B1E577DE79E7F137A090688ED4F4A67250498FC9356E533A1E164C0DB86C
          B43C6F65656F4714751A47189C6FAF11D46936969795E310C207121616063646
          4545818D2863636333323230C5C6D0916623868B9E81013ED7AEB16C74F5F571
          F4703F6B6B230646C0F062B5B06CB4B0B0C017D3B6EDDB75C4C692AA32CC9DD3
          983C5A612FD1928DB95545998F0AC4145E41366655E4E3BD503E49367E77E63F
          50B130A221D7431C1C1C2C4F581E38700025EADCF588549C5F33A4EBF2D9A87F
          A2D2F1B31E0DC546F00D9403F1708E8787878F1E3D7AEBD6AD151515F4FBCA8A
          ACFD1632E7D7B3CFFF405AA322A16C4C8FF56F903A2A12CAC6E04DE7CC99C3B2
          1120727473BDE2E54914751E9A801D1CF9876A04751644848D28313EC4E70036
          B2600415EFDCB9434A8C2731B3E6B111336820D1F77A308F8D2E3EDED8074144
          5B9E3C79A95A786CC4D0117BC585B61C3612FE8829BC848DA555E5594C612653
          402BECF06AC5C6FCAAE29C4745620AEF63366665A7DD4F4349D8985381F72A40
          2938A766D79A28AF16EE0128B8D64444D53DA8F45A1376FE57D698AE5DF1FB8A
          359BD639DFF4E2AF35517DB85E75B9BA7FFFFEC8C8488CA91E3E7C8812755860
          17609A64FD2967A34E9FF5681036E2B8DAB46913708799320E2A0CA17FFEF967
          6CFFFEFDFBBC37951B591B8C322FCAB0DC93235C36CA11C2C6CF3FFF9CB01113
          588CD378FF68463D72AB99D862BA0A1E1EAD2DB090692C61634559C5DDBB776F
          DEBC79FBF66D1E1B6147252525253F2F9FC746270F77BF90EB826C04A23182A5
          D9686565E5E8E828C846ECD276CED0510E1B3194057FC4145EC2C6B2AAF25CA6
          F80153442BEC65356C449A77C5055EC2C6C2AAD2BC4725620A2F6123BE6BD253
          D3511236E65514E6324528091BC97BA1246C246B4DF8F8F8F4ECD9B375EBD698
          DB262525B1072A6FAD09EB24BBB7FEECD6D3E4B9B1BBBBFBE4851036F2D69A70
          0EF5365A61F4D9D79F7EF6CD67868B0DFF3CB2F7311BD9B526AAC1181C1C4C0F
          1B60819D8B4739A347396C6CF47FF0AD2355E9F8598F06616342420270376EDC
          B8D4D454B2F1B8B8380C08972F5F4E966761456E646D30CABC93E709B091AC20
          7AC6C6DAD9D30338A215767877EEDC09EC580889FA57BE9D3B091B2B2B2AC3AA
          45908D71D5525850D8E4D858CD1F3185B7868D15054C49BE90C20EAF566C2CAE
          2A2B7C542AA6F012363EC87E9091968192B0B1A0A248FD761545626CCCCCCC7C
          E595579EA996E79E7B6EDAB469A4BB796C0C2A881CB8F5A5AEEB9E81F6346935
          C3E64B4136EE39B67FE69C993FCFFD79EBDEEDB3E7CD9EF1F30C97301F2E1B31
          71C6F89080D1CECEEED75F7F1D3162044AD4996A3CC2CB5FEC977B4650F5A79C
          8D3A7DD6A3FE6CACACACC4A907BEDDB87183FDB915A03336361E33660C0E45F6
          4DE547F2C028F3F6EF27C046B2822866B5C09198C26B6E6E7E4A5CE065D98853
          18136A41364230D52A2A2C7A926CC4A7EAEFE78F531525EA826CC4341FFC1153
          78091BCBAB2A8A99B2222185BD9C65634CECDDB8BB620A2F6163E9C3F2124654
          E17DCCC69C0799E99928091B0B2B8AF176281FB3B1FABD50B26CC4A1D5A2450B
          0C1A3FFDF453E0F1D9679F25CFB5F1D838FDDCC7DDD6B5E8B9A1355E028F3D4C
          5A0616DEA2D9F8E7E13D9BB66DDA6F79C835DCEF97F93F2F325EB4FFE4212E1B
          1D1C1CC8DD62F884870D1B36A046502778841731DCF3ABFEBF37363AC474C746
          9D3EEBD120E346400FDFBFBCEB50980F62B23C6FDE3CF6A67A2D22EBF4CCE013
          60E38B2FBE88D2CED909441253780F1F39724E5CE0ADCFB851A7BF3702898989
          8918C0A044BD3E6CACA8AA2C652AC4145EADD858F6B0A28CA914D58715826C2C
          AEC06CA402A5181BA74C99D2A54B171C7B382C5BB56A053C92DB3C786CFCFAD4
          FB2377753474F8E95A51440F9356DDD63DB3C07106CDC64B81571D825C3DA283
          C0C3BD270EFC6CF8F38C5F66B8DDF667D96879C2923C1B82B1E280DA020B537D
          D32F6204CF32725EF0EADAB2B1E3F476035676646F1797508421588C4B9DA6B7
          1BB8AAD35B3BFB6854847512DF4E7DF687D1F1B31EACDEB87EE3F8F1E3384D50
          A24E7FC20ED72FADB2309EBAE90B94A8F37B8D121C5DD81A468938EBA52FDF0B
          4436C9712353737DDCDEE50AA024A6F0E233B4161778EBF37BA34EAF5363F442
          667C28511764636E4E2EF823A6F01236565655563055625AA9251B2B1E5656A2
          9588C24BD898FB20179F154AC2C6527CC44C154A313686570BB910F3FDF7DF93
          99755E5E1E8F8DCEA99E57D23DC9859859B6FF2333EB1BA5B1F4DAB6EC5ADF57
          42BD31AD5EB0D8F0B09505CB467C133D7CF810EF85A9348F8DB0C00E2F62E8B3
          AF417E6FEC38ADDD986D7DBC625C730A72342AC2108C2682601CBBCBC03FDEAB
          B0AC40A3220CC18278ACE7FE303A7ED683D55D3B7759581C77727242893AFD09
          7FB7FBAB19E7BE59E2F70B4AD435B291A9BE243D7EFC781C72ECB3EA7223557C
          3CB2A935E2EF8D8CEAF13280D6972F7BF8FB034DB4C20EEFE1238771F65D1412
          D8E1ADCF75EA99BABCBF918C1B0B720B24C68D843F620A2FCBC62AE6A198B26C
          8C898989131778091BAB1E563D641E8929BC848DD8C3ECCC6C94848D6515E578
          2F94848DE4BD50123666676773FF2742525212E6D4C0E39A356B60E7AE35C1FD
          9F083E7921DDD73F0B3CAEF658023B77AD09DEFF44D8616EF6CB825F67FE3ACB
          25CC9BAC3551F771A3C8E8512B36F65FD6D13DC2B940B620184D68A66108E777
          D7A352B620184DE8EDF437EEE876DB59EC364B5A108C265C3632BA7CD683686C
          74EC06930D575D5CA2A3A250A20E0B37607FB4D97B1BC7CCB93EF5F7C2792851
          8745231B31F6D8BB77EFA851A3828282A4C9C38F54F1F1C84DADB1AE5393FF4C
          8D92A00923374C6CB90A0BEC2C8840C24BB50516D8EB7F7F23515D3C17C3C8F8
          BD312F57CD1F318597B0517DDB30F3484CE1D5928D0F31A31053781FB331370F
          9F184AC2C6F28A72BC57B9081B535353410060B0BC46264F9E0C36BEF0C20BF8
          F0B96B4DDC28880306314A24FAD5C9896063EF0DCF073EB8CD5D6BC2E9A617F0
          88512251FB0097597367CE5F38EF90D571B2D6441D7E6F941E3D6AC5C6111B7B
          DE4B4BCE962D0846139A6963B6F7CE2D7A502E5B108C26F476466CE8999C9A94
          255B108C263C36B24C68F0673DA0A13743AD2F589B9A6E727373C5800525EAB0
          C04E022EDFB4FFE9C27713B68EFC2EFCA3F9155FA1441D16D8A5D9C8542F6AF4
          DE7BEF7DF9E5970F72B2B588AC9D8BB6F737CA917AB2914C6C316CF30BB94E94
          CCA679D358F0D0B14650876566ED7BBFE53F17D34414DCCBCFCD077FC4145E96
          8D129FE75F6C8C8EA157A665155EC24632151593872C1BC1EF6C40FC311BD9DF
          071EB3B1FABD50B26B4D008080404E8DF8FBFBB76CD912785CBB762D77AD0900
          10E3434C9F89DADCB9DC7D7DCB6EEB9E59E5BC84BBD6040088F1A1FA87C71ADD
          B863D3ECB9B37E9CFDE3E9AB3675BC4E2D397AD48A8DC3D7F7B89BA44E59A620
          184D68A68DFEA33726B9A5B205C168426F67F8BA1E718977EECB1604A309CD46
          7A52294645ADE2313E0406D11DE0A10BC68DD151285187057678A1BB2F98195E
          9F3572DB9B1F850FFBAAE26D94A8C302BB7A78A9492223C2DF79E71D1C695A44
          4A1F1B22CFC53C613692CB224E1EEE445117BC08625523A8B3F63A3C4FDD4454
          CDC6BC7CF0474CE16D4436E2DD73737251CA6123596B024374EE4815B06AD1A2
          05E656D80277AD0997587F6090D549FB06838D061BDB5C0876E6AE3571CAC506
          9064F5D8C5532BD6ACF86DDDEA956B567E777A32A3CDFD8D72468F5AB171D89A
          1ED1715149B205C16822C0C6ADBDB2F3B28A650B82D184DECED0DFBA47C444C4
          CB1604A309DBFC07ABB95AA97A1D5AD982606F2F6F7737F794E4948D1B365C71
          768E8C8840893A2CB0C30BB5703BB63279D1806D5D4785777DAFA2374AD46181
          1D5E396FA471D0C88F14EA628B90B3EC5ABBA8D301C0DDA91B1672DE0561848D
          6B1C56CA894798201BEBAC75588747621A2BA1D802180B5614161402B928D564
          ABA16E1D14DCC38016BB27A6F06AC5468C93EF880BBCDAB2119F9E181BC97BA1
          94586BE2E0C1839853FFED6F7F43B973E74EB1B526B63A6CEB6DF27C97357FEB
          B9FEB9AF4F4F925E6B62F3BEED8BF71A6AFD5C8C8CD1A3566C1CB2BA7B7854B8
          C42F183C41309AD04C1BB5A557E6838C42D9826034A1B7336455B7D0F09BD1B2
          05C168C265A39C9397481DD8686B631B76332C3D35DD64BD89C3E5CBB7C2C250
          A20E0BECF042ED6EDAAE4E5DDC6B5BFB7EE12F0EAD781925EAB0C00E2F3D3415
          13F93B26D8C5D8DBDB89A144C59622973974548755C7CB1C3AFE7521A6F1D828
          318D15536C41FD8B654E4E4A4A0A0E759C802851870576B27D6D15DCC37E4ADC
          1C0E6F23B21164C6078852231B19C9E7A97FFCF1C7E9D3A7938344E249EAF70F
          0E9C68DE5F6398B6CF53CB5176F4A871FDC6866211978D1939E9F2AFE9205890
          8D839675BD1612744BB620184D9E181B31158D8F8BCF4CCF5CB76EDD257BFB9B
          376EA0441D16D8C9EF78AE71577E4B5FD2795BBBCEE12D7B563C8B1275586067
          178D7C626C4485B051C5F9A7C3A42273E848068D2C1B350E1DC9A0B1D1D92831
          8D15D69C074044464606B9EA0D2A927B26C91570F5859EFC02C468BBD9A7848D
          BA5A87474B36BA843998799A2EB29F31FDDC1494A8C3A26D180B93C12BBA8584
          AA7F4690290846131DB2714957BF20DF10D982603479626CB4B0B0484A48C2A9
          B766CD1A1C3FC1C1C128518725213E01E843804782EBEF194BDED8DAA64398AA
          4B990A25EAB0B8C5BB3C7936B2E3462E1B1F6F5FC6CC9A0B46397864C1C86523
          C3F9C19357E1825A42EBC0468969ACA0AAAF9864E7C4560BFD201E045EC468BB
          59351B3131CFCD175378B5636354F41DD05A44E1D58A8DF80CD53F20E4170AB3
          B1FABD50F2D69AA04570AD095AE9B526B8F7F0B02AB8D6C4EDDBB73180C7E780
          12757A4E7DC8D76CDAB9C9A7EF9CF5CDBB1159958212755860A7C30EF8EDB70D
          75708F0E40893A37ACA1AE7DB0FAD6AE3EC5E54512DDC11304A309BD9D81465D
          BCFDBDAEC91604A3C99364637262324EBDDF7E5B6D6D7D2130300025EAB08099
          E41160CF4437351B4DDB74B8AEEA52A042893A2C6026BC4F8C8DBCDF1BC5D848
          F048139250910746168F34210915593072D9C86250A2D2E06CD4F8A4334F8B0A
          8B929393A3A2A204C763B0C38B186D370BEEA115F6534CE16D4C36161462D088
          520E1BC95A13821BA4D79A1064A3C4BDDFB5D8587BAD095F5FDFD2D252EE0311
          A8C3023B8B47906D4FC8EEB0D2BBD18FD2D8B7431D16D859EEA1B2E5EA469708
          1FCF986BECDBA10E0BEC24EC2F369AF448B8179F2E5B108C26BA63E380455D3C
          7C3C02640B82D1E4C9B371D5CA9556E7CEFAF9FAA0445D808DEBDA74F05775C9
          54A144FDC9B391A7126CE412B2D6EA64921B14589DAC7600978D9A93E5B665FE
          FA2F33A45207364A0CD504B5A4B884FC6A142B24C485186D370BEE616FB1AB62
          0AAF566C2437738A09BC5AB1517DBD295F7DD549908DE4BD5036161BC93D3CF9
          F9F9743AB0C04EEEE1C18C1803BFE08298A887A9BC77840576781143C21C6EBA
          93A714B90A0BEC248C854943DDDFD8606C5CD8D9CDCBCD4FB620184D9EFC9C7A
          F9F2E5674E9FF6F2F44489BAC09C7A759B0EEEAA2E492A94A83FF939355F29E0
          08F290FBD3A246FA496B9DD94863BC0E6C9418AA096A596959686828B9999C16
          D8E1458CB69B55B3B148BDB7620A6F23B2917C92289B261B1D1C1C8282824A4A
          4AE8A76861811D5EC498799A1E0E3D1A5692C81D34FE35742C49841731D09D57
          77B8DCF2E50E1AFF1A3ADEF28517312C4C469AF64CCB4ACD932D0846131DB271
          4167574F575FD98260347992D762C0409C7AC6C64B4F5A5ABABBB9A2449D6523
          040C04093B19B7E9E4A4EA1EA342897AA3B391FCEE77B95A480518347234DAE3
          BC99ABB090DB75C61DEFFED3B5FE5C85452B3C362E1B25866A828A8D935FD4A3
          8484B810A3ED661536D6878D96272C63ABFFDD9EE0B891FC173FC42CB29F71F9
          AE5B687182E0B811767811033DE179E64A988FE0B811767811D3E0F7DE34141B
          FB1B76BEEA71D547B620184D9EFC75EA254B165B581C7771B9821275FA3A75D7
          456DBAD9AAFA84AA50A2AEEBEBD4ECBF39D6482AC89CD06E848D3C3012256CE4
          819168DDD8C8885F8B61847E6C6C10364AE048504B4B4A131212C8A388B4C00E
          2F62B4DD2CB887993876584CE16D4C361655EF46511365E38103079292923077
          E6FDFF14F24F5860871731D3CF4D714F0A0EC9BF135999C2FBBD1116D8E1450C
          F49C97BDE30D4FF7A840DEEF8DB0C00E2F62589834D4F32C4F091BD9FB1B171B
          191D3D7AC4C9C91125EAF4FD8DDDE7B6E97556D53F408512759DDEDF88039B51
          3D2E471E7A8D108657E1B27151E2042E1B679E9F853A4A9A8D1FEC9F843ACA7A
          B2914537AFC28D116423A9D4818D1238126314CE6E7263D8EDDA428CF04A534E
          50C13D10F5F1E33C94C20E6F23B2111991E78CE4B091B7D6045724D69AE05DA7
          96586B827B9D9A5D6BE2C68D1B191919E4FFF761B7414594E49F00C20E2F1937
          5A85D9FB67DC0E2D8A070C3156041551A20E0BECF09271A3B9D3918B0157AE84
          790386182B828A285187057678B9E3C6012B3AFAC6B957C81604A389C0F5E5D5
          9D0213653DF44104C168426FA7C74FEDCDCFEF95CF4604A309978DEA67406408
          C2081B573898C8894718F7B998450B171E3E74C8C9D11125EAF473313D67FFC3
          E0C4FF8DF1698B1275F6B9185DB1B1BA9C7A7422D882525D61D4158011B843C9
          65E3F2DC1FB96C24BF31725FB26C2430E4BE0C080AE0A99C912A6F3A4F57047F
          01602B7560A3208BA4B5ACB42C2D2D0D43C49B376F92D57ED83AECEAE713B5DF
          A6A3A3635666567959B9A0177678C9FFA74E494991E86278C9FFA7F6F3F38B11
          1778C9FFA7CECBCB93D81ABCE4FF534BB331323212DB4429B6D6041158609758
          6B82282CB04BAC35F1586FFBC1CEAE35E1ECEC1C1717070C62948849740976B6
          B8187558608797FCDEB8C363E7D5B8406010A3444CA2C34A1251A20E0BECF092
          DF1BD75F587BC6D51618C428119368975BBE285187057678B9BF3736D4DA629D
          BE6F37D6CC00C4C38050A3220CC168426FE7D54FFFDE7F41E703E7F75C7577D1
          A80843309AB0CD711EC91C3AAAC3AACF3E994347F26809FB3CB5A1A1A1B9F981
          80007F94A8D3CF53F7FCA95DBF232DE6874C46893AFB3CB52ED8C80E1A091879
          157600C9038ED8B8119F8CC4B8B16E6C8C8F8F7F4CC21A8BB7B73777822FD690
          60BC0E6C540FC9B457C02A273BE7EEDDBBE0213E5294A8C3027BDD3618181818
          1C1C5C595E8914F8EF550A6B25BC88397BE6AC959595440FC38B18E8A1438724
          D8082F62AE055DC3804A626BF02206A25EBBA3FA5395C3467AAD0922B0C02EB1
          D604515860975E6B42ADD75C618797BD4E8D8F08BB919C9C8C6F28201125EAB0
          C0CEBD4E6D15EC7825C6CF33F9865FDA2D201125EAB0C0CEBD4E7DC0F6D84917
          EBF35E976DFD9C814494A8C3023BEF3A35C11A867098E16A54840902AD61B703
          D661288899B2464518178C2C1B350E1DC9A09165A3C6A12319349278B20ECFDC
          B973F6EFDF87AF3094A8D3EBF0749BD6B6CFFE166925C9285167D7E1D1111B87
          CEEF48DE9DADB0C061F1D57DF2CBDC8AD8EF8D5C36D2BF3736381BC9045FAC21
          F1D6818D24BE0E8AF7AA28ABA8ACA8248A3AFBEE7550924E7A7AFAC3AA87D81A
          BB1025EAB0C0CEE66E6262824F49B07B6187970DF3F2F2120423EC6C18C6A240
          96E0D66087977C9F62468FDD4029878D826B4D90478760875762AD09282CB0C3
          2BB1D6041416D8E165EF6F3C77EE1CC6C3644D63EC0C4AD461819D7B7FE3EFF6
          AB4EFB5FBC78D3F5F26D2FC7481F94A8C3023BF7FEC6A52717EEB13A78C4EED4
          718773279CAC50A20E0BECBCFB1BF54CC927208D472E18E5E0910B46A218FECD
          9E3DEB4F33B3BB71712851A7D76F7CF5EB565DFF6C713EE1084AD4D9F51B75C1
          46C243946C859DAB1276A1243C44E91DEE4A2A62D7A9091BC5AE5337381BC9C8
          50AC2119553E493636AC229DC88848A480939ABB980CEAB0A8ED1191246B2F4F
          35D9303EC4F4B9AA46508745CD434F2F6E18C68780037B191D7558B861519151
          0060747474656525FBA6A8C3023BBC2426233DE3D1A3472851F7F3F54B4C4CC4
          4B94A8FBF8F8040404602751A22EB6D6040416D8E1256C145C6B020A0BECF012
          364AAC35013BBCBCE762C067CCA03D3C3C50A22EF65CCCC6CB1BF75F3D72C2D3
          1A25EA62CFC5ACB45CBED9F28F5D27F7A3445DF0B9183D53F61320CBECF00849
          A8C803238B479A90848A820B352C36325ABD6AE5F66D7FA0449D0E18F9F5A097
          573CF3EAF616285167ED4D61DC48F0C87E4A3C252EB1FB1BE5B39111BF042358
          E1B57ACCD2EA4A1DD888264D41D9A430710694ECEDECD562678F3A2CF4278619
          B1E92653A31A411D963A8761E2ECECE47CE9D2257C8628D5BF31065DE3060089
          E1E1E104955020D1D5D515257909E8814228C9CBA7ED796A3D53DE872076E28B
          29FB901DAB62913E5EDEEBD7AE9D3D6B164AD4058E5EA7D3FF9DFD9FF653DBA2
          445DA76C54A9FE1F103F311B0A0000004578426F72642E706E674A530000789C
          345B05541B5BD70DEE2EA1B81428EE5E8A1469719742F0024552DC5D8A5BD122
          050A04F7A2C1DDA5050284A0C5BDB8FFBCF7BE7F6532736756D63A73CFD967EF
          73666EA234D414F1B029B1010000DEFB77725A0000B2C9F3B80F13FD79AFF696
          27FAF980E5F4CED01500C021F9E78B04C8CCA678BE486FF94E4B1500F0610600
          824201809BA7E7E32E00E0CE0B00EC990100E2190000F0F357D37E0500406BEA
          BD9C8C8ED7E241BB6185D082FB4AD35C95786FBBE9A4EA2F87BA058B989F9C82
          EFBFFD645308C51846E61AFCEAC09644F42EC90A157F95A206A9F3863961A27C
          8D5582EF2FF11F3617E4974EB606216B180475CCD2354446A4CC9A0E4250C7AF
          8747D559078F472FCAECAA5F679769FB1AD81F836C9A7F373D22B6A1DBD99413
          6D7BFA4F0D978BEFE4F2B44A75D853958AC43B633BD0FE193C9F639BFC6F70A5
          24040030D2B685EA07AC93F9033FE777DC17F11474E02C5FE9B8EE359DF9FA9C
          34CAA1E6DE0EABEF6695D42A5BA6EF4DF4F1302E06A72BA1840658539AE9DE4A
          34A37F3A783D69E35150FBD61226389B300D3C137E1F3AF9408A483DAE451F19
          64F158E35AC91DE8FDDDF7E275EF9B841BDA5CAE8EA58879F7C355F7517AACE3
          AE0D5B8D56095E77C7EEEDF941B1C1E3938EDE25AC1581B660FF55BCD73028C0
          FF6AABEFB0EFAE80A9A9DB5572428CFEB8D51236DCBD2FD7BD9B2DC5DBD6BDED
          04943E16A73B6E25987153AD8E9B3811D3E8762DCCF23B76E97C80E35B87D7E2
          A85FFB8B015FE7300DAC09F5A1C481440834B70DD2274E6E21D226E0153744ED
          BEC1490F56FFC7624CF4A6B558926A31AFD747422FDC126873E30D4C888D4F62
          274912F0F2CC9DA0EF0947513F707A1D3BAFDBB895353BE35E8360AEA222066F
          AA6A63267E3EB275ED646CBAE1558763AB25F6BBABD1401323F15FCC7AED24D0
          4DA21A787DA15B156BEC96A055A9DAAFFD4CDCB8437929033B6FDB09BBE34000
          41BF5F1CCB1450A2ADF69080A4301269EAB8BE3B9916C73A8A605978F279E4A0
          FC9C40D370538553D7C5626F9091F509885FBA8A5BE96C30D84419342FBBA3CC
          A866372084711E3B6654A6B8E0DBA541DBA4FBDFC5BD5CBB87252DE5ACDBBF66
          C6D643945FACF6C85564DE36BD8CCF21FE12EFBEAA8667ED493372A475202E62
          9C839D37D170C4770709B98B8C02B50C665143F748FC86F9508C8ABAD9D1EC07
          EF774E220F4F2969375ABB5570742671F49C42825CCBCC7C95860A7AEA154528
          C2E9F5884BD4B0CD488238DC411F84853A727020551B1D59E8F5DAFDDC6D6BCD
          AE34B5FB902EBB32B89B9AD368371986E19A3BF8C54B35FE184B7DFF3EA0102E
          2F3312570318CB2B872AEC44E54E128D73397CD5153641ABFEE2A7DA0BB9C924
          7C51DD38B94FD21BC8E4C8C76134DADA7AD820ADB6AFD21CEEC38728F141356F
          8FB37CA06E3970641B98B78B0FC969C404756E154A9992B4FDDEA1A53907C687
          A5C319B46FFE968C1334A826CC1784064E9719468AC8CD6FCD760CBAC42F4FD5
          F11C065163EF8E4272E00871F29F6A39E4CD60FA8D90F594A02D74FA2C2F5CAC
          2EFC2F3C48AD10E43431E4BE2A9CF893C8875C17C26EB6DF99222FA027B1ACEE
          B05D3022CC579EC4022616E4A084ADD93A1F72A7551BA564A1EF2FBB838D92C4
          669CE6DA0DE999629371B48BBE80201DB6864E839C6AE2112B6231FDCAF9D16A
          3509960CC78459CBED19A8414521B356D74AD2406035AE2BE8362BA4F6EDEA7E
          4A9E5BD9C762B751F08FA1A7AA812AD74202F5D4DB0214CBFEFCFD1CECBF5A47
          7AD8353D9D19809AA98B1EE2EB32826B64D7EE7EB4D25FF57D6CBB43DA12BADB
          D4EE51000044D8FAD1EC4D16688CFCE2C777FD7A442044D855FBDB0BCA6CF370
          01B9EC826E4ABC0922E72F9142F46384B50AA1028012247374807B6785C2FC03
          5A905D2055D7F9FE0BB98ADBC9B9733815A084B066AF490650728B7379F56D55
          DA12D065F6E472FB80727693E607FE6ADFF3C0EB10588D06508652CDB5E0EE1B
          00766EE13400B71AA316A6BCB546B4A0C6952AE61F552B8DBB5708641978351C
          BF29AAE4F9AA6935B3321E5183F414A1A6B21C9EE1E2D7A2B4C8C619CDB76994
          F08581460FB810F4695115EAA8376E7D670B9F9F5B24419FB254C452756F510A
          351C7E5128B6A572DA150A8E2AFF188283DDA46C499D8DD9A594BE567A194796
          E9A3097B9E36ECCC076CA79DB53856D69A6919DE503A36A6630DACC7D5BBEB7C
          7BC06FC0641117A94B37EAE16CD7D4B638C88A1ADA1C03EA3565AD7A81BA3458
          1440B5D1F7634DA08490EFD1CF23188788F7B18DF7562D4596527F723EE2D593
          84BA746FDD8EB49A9CE501234FA321AB8221F2DEA5331858EC4097E5409730D0
          AC30757185D744C5B81759C2BCDFC7AD0CA2838AD7FD6CC87174B4A1DA2B395C
          04DB1B3D4FA9F1B011D198E501072FA689D72902E6C49AD890AA7ECD5B854E0E
          B7376B908199C4AE318A286B095B5D2EDBD86A8E199CE979C2F3DF4FA494C679
          AF87AABFAEF57239ED7310F3D5182F631D1B33CE1C792D1D4AA0F2919BC81909
          13687B824C0404D4A086C907FA0747D6D3BA91FB13962299094B13314EECB57E
          597050D0D55D68AD2AADB22BDB5FD47357BD705A4060B883E0235093E98AEF49
          A5B8B3EEAABABA6F41BA8D65F619BA0D95659465AD21655579557B55FC6433F5
          94ECDA32BAB3BCF04394F2D61F2333F352E47AA9F9233A355093243EB21988DD
          5E998225EE9CEE475C3D5B15B4543EDB2933DD17DADF4600F43A105914F45899
          505BDC7322620080280E2919D784FC80D0CBA78C91BE6EEE431D39A75B231320
          64C2A371BFA2C1AAB43EADE2B04B4BD1116668CFD50052AE3C9C5A8C6FADEA6D
          B42F9FF09872F798F3E06A708CC9712CB59738688DCF6C1402C1646D246CB31E
          3FC3F4407019D8F36FB80441F6AD8DE18DFB2AB086A946AEC5098BDFC2F3EE34
          8D8EF68B8DE155F6573038C2DD014E0E6DECECECACDE17FF2D88D7E888233703
          90F9FDD65C409A86D001CB1607D508304F384D8E292CF71329848CA832CA563E
          AD6AE857EAE141AAE3E1F356E001EF80190B1D5777B6073C4DC313F4584304D9
          01BCC066872D4E6292D19E564C8E2E7DBE5831B0FEFB6C6CA4720B804A6BA185
          F144BF1445458DACEBE94C7FE8CDF367A1FFA02E5397A0CCB041B0A1E579EBC3
          E689E573156C460DFB1828DB24DD274691C1B4DA1691FFCD55561FE93C085523
          34B83581CB8ADD5255575357DFCACEB2BC8C515B5F67F6CBED5DF74C6A25FB5B
          48555E59CE45DC8BC6D0B2B28A52F692BD914BB83448D78CFDB76E6AB09D5E28
          1F994E6A70590208DAAC6FAE0B132C6717D4556D58E8FF55C6DFC84F36A78B18
          2B7B715435A9F291BDA2366451073AFFF1399D46E8E967ACBF0C5094745184A6
          F20599393D73D78F1755BEA601DBD168CA7397B5389CEE7266A5F5958E5C4832
          F006AB6E597843E3F3D9B0968D919D234E4EC3CCE29C074831CEB1E413D5CFC6
          82C6C392062E77471C904D79A3BD0AFCD0420FD638EF41E3EE68E3009381993A
          3CC770A1EC3948F9CF9169A0999FA084BB9B41F11D6D6AEDB9161B7BC1819DF2
          700F883DD77C159CEB18D650F91CFF7CC7E71867223C688210B9291E0089202A
          35952B6747601325E322E1741A67E5F02FC813B4310774E16C3F2B842843FC3C
          1629DFB23B7BDC7A18F7CDBA88A2AF446DAB5875724E8F47E20576D0CF03F5F9
          BB07AA6EE5A63EB23CF6F793C42CAC97F6F73B88195D065B6A8E97A1E935F30E
          70D6F430D88E4D1F2063501A9F9F9C01F0DE044702839C82E7315ECC731DA38C
          5460E4633BD169D44AF986C4C4E0400D38A1A3CF076313B7D1CD5FDC69CABEB5
          C61EA39BE1204EF29FC69C872EB53F633689C9CFE49B0C38BB5AF0626E7A3881
          CAD092ED718B8E9A98853AD0C4F66C85894E7D59950DA48AC42AF2CEB51A31BE
          679C26F67D26406AA2A53AAFE7D1E1827A415EDCFCFBD76860B267258E08D801
          2E0C82831BF73DE0C21EBF2B0E7DA0BBC2703CC7C6FD051F68296CFF2274DC43
          757F1C1DB64F06CEAA5CA88059B79B6CF8D40B678D2F56E8D9D72F54945FF838
          EAEDA71A56C3667D1ACAAAF438EA11605E4CE4D018185E1006C0887E9E781A1D
          3027F7133984A3EE3C32F239317CADAE825DAFA145F173738B78EE3F7733C196
          46D0E73DA222EB624B226B76EB413519D3AEC8262694CA5A3DC5220C0B5F5FF7
          1A06082A055EF83D9A0568F2ECC9D341B720C238DA59E17CD660F6FA3EEC6D5B
          A72FE8C0871531C609D58FDCD3ABCC946D3B1B0BC4CE4D15098E174E8C40D119
          6B277BEB98964AA0BB88D1C48103DFFEDECDD804B980118F0DC281AFFEA20DE2
          A3095FF0030347C56662BC45B266798DC60E2D6A83FA2D90CE6E88798031D67C
          50DBF4B38F176601B5FE35CD15DC36E9B33F3ECC012FEA3C50664FC097D6D38F
          0653574115037A891460A10A023074A8DB2DBAC9958DA4255BE007F48D922676
          0C23902C5C82D2327DA19F7BA10E2F8DB07F94CD3826E8552CA8EF60A976AEED
          E1B6367209030FEC6D9FEC1B13691B09FA691A305BB5A8DA045E81BFB1D38773
          F836182ECC6E9519398AFC5CAC7082822685B30EFDA00BC6C2AAA1F071722844
          003E3EF7338B4B183EF133CBDA73A15117FAE90EEE380BCE2A331481D88B2FE5
          F64D2FF3514B57D3ACE20332FD8D193F048737345C4673563AD8D05DA899FC46
          317D4BF32C41B0B9C54AC743EB6637D5A64F22873E77B650B0C8615A70C55AAB
          33D85386BAB63BCA8602FAD5B4FAAD76DC8037EF98E105DDDDFDE09B7A2F8BD3
          5D3B93760BBB3334D4B692BDBD6E07E1FAFA85D83D9F2BCF3759DA92E58715DF
          A7FDDE34B94B163CABCBD98D433378FBACA5BDADF92701EDEBBC989898230B6F
          99D14D3490C9EBA0D17E341313E3C57EBF69CEED51309F9183CD6C45E66C7D19
          BFEEC758BE54BEA166FE8C001EA758B16FA602DF5B2041212B9E27021E814A6F
          33E36FE9D8C4F67F2F3B5006F608DECBDDE15D7200F0A1F38318C72C4848C8C4
          54BC6141EFA4453BCAEFC83B228F68C276AA67304EDE9C6C38D1441C12E65C05
          76DE2672BB230B2BE47228E4D291A3D87E7100CE3A7494589FB16E018DC754FD
          2652983A19E80FB2E570ACF20B1AEB417021442362D111EE9665FDDBB1D1FE83
          E39C75BB2157B55E79BFDDC5CE70F9ACAE7B83C9B7D9D9D4960FA0B5D959DD76
          04B8D6916A099CB55C69EF044564421C6B1C3FD43B36CEAF7CCE8474433EA9C0
          1B3F2717C11CEC038B113F3BDD2F4EF69EEEB63EFB9FC5019AE99D066201A6C4
          4EAA487C585D4BF33A68ABFD2626D7E738D59CB9261D5A3CFBC7A5DB17DB84CE
          5164267AEE1F558F91BF2D6AE8C224146D3D11998B07D9F986C7807176FBBD91
          89340189CE8CDF7E62C75B31625C69CA1FB87956D72DA208D2D2E131FD1F7D5B
          9A79D3CF945DF9A0256917751F32109F96C6C63C5E481E9331324A4BFA254FDF
          896374F29C27A14A9E38F30DADA45FE15CD02E06964F6F707EB5D4CF657A0BA0
          DCC3B6C5E5F33FA04426EAA62888C4B49D8724807AFF2268313D4FC72FAFA077
          14DF43EBC7297A42E6E50F865363F204754CE9F19DC3BEE485F63E4486F5FA47
          A206D93A2D59037BC6B805C40B15AEEE962278170D9D29FC2DEE2876E84A6EA7
          D8D58C85DBB2823B1577DA701E784E4B6F925D4358B7E80C02CCE49A1F3407C2
          45E99E7E78CE1AAA31FD7107A0A6711AEED9DA532DBAC1C170305411CE0105CF
          21662FCBA08BC6D3B37BD1C270F7860F953C73FBE32EF58652F08A46C873962C
          38D41A8A34387A8241308F017C3553A8EB91838D2A2C7662196C68E360BF529B
          E35F00F7307D2E3BF5977DCFDA79A4FC2ED6020F36CAB082EC836A44937A5180
          4A7C95DF0146F9FBCCB33207288B8381271B4FFDEBC3FDEAFEB051BAA7A474A9
          47C4BEBADF15EB5CE02D4680D5D9CC66F2F99F7E6D0FBD59DD75E7F213A35066
          197231CC1E14069B3FB8D0BBD685C76D4980722E3313FCE9A412CDFE539BAADB
          99F6B27132FE8B42D7A7159A83606760C03405AFF595A72709D1386121DE8F05
          9A7505C57C2980F53E0D47C9ADA90ADA19B63514573425C8A487F925FEF96B21
          D0EF808D3591C6CE87866ABF13CFCE5B289DFFC5ECCA5394FED3EA6C0CABD4FD
          9FA7CB9CCF7EDB74FEFBA32B3E92986647DF7E04DFDB2A8ADF5702795201C617
          275705B9773BDB74AFAF560773BD7717E8FCF6C26DE6263BAF832FB6A59E1ECA
          B773EFCDAE7A48E80E9E1992CCB36C96CEBA7CC853E6E9FB292A4AC16FE8033F
          7A1032C17042FC8E37A5FFF9331122D7CD002FE71FF2ABEA69DCE6BE1635762E
          6BDA788E4661721EAA1B2D69530C54CAE2AA554E75D206E5D5D09999F07CF103
          7EEE6D7F6BE0F427F19E5D49C2508E2F45332CED9127E1D59236264B3693C269
          E35A402454AD634141F0D3CA4FA92E26C6E71AAA07C4A0F4D1AE42358E4C4FE3
          DB0885655E0F361E25EFC02AD81F7529509B701C5F94A6DAB26B8368C5E389B3
          0CC7CB055DC0C96CE94141FB5E4CACFACBFA64FFC5DF8CF98B12EF9980CDF115
          50E0E655E7DFB12CD3A72D82F6BBDCE59BDA63BF0D448C8DA9CF65FA8AF7618E
          A9F73506C1CA4E93FD9DD7348BDA11678A50F4B223B5CA8BB0F06E65F67708F8
          DFDCFB69F5C71EBA9BF3ABC754BAC735A99B239EC73F3C6F8404DCD1266476BA
          A8C95B34E47CBD5818F36800490DE4431FEAD2822A10B3FCC448064E7154A97B
          010CDFED712EBBAB09BE484C09444216D10611876BDB3B85094A8131E67F4306
          7031A603AF6F3FB75F24046C3E811E07AA9FB2B63B6E16451EE7CA9FF6660391
          9CDBE5BCDEE39D6ED1C1BEF147961E7E5DBA266CB5DBFE8C07B8180D5CDFEC3C
          BFBF0A38D97E73EF4FE77F1578FDADF376A6CE44075DC55411ECF11D2D5437C3
          43F66A101B9911FE040B2E9A38CA2B6EA8748C28A3B77354843E711A2803ACBA
          8F1262AA0E994DAECCB098284EEF374473281C0802BE12F86FE3F2A2599D4A84
          F75C9CE8C05DFF3457BF1AB0597E45AB5BF3D38AFE4BE5EACE4600C6C7660BB3
          88704111660A94A4AC414C440161DBEBF31FBC8877B8CDA75529B93FFE54699F
          78685807660BCC7562888A8606A1E3EA5963780808F462733C579E33A2E57B34
          C8998B14963EF44B0CDF65B229A02557204F3733CF6226B35DFDCEBF93CBB7E3
          818FFBA34D0177E3DBB40117879D0F039F3B4EED259D1AF0C3DCBBC3633E1AD3
          CC3F4A242357CF44CA33A10AA00066AFEEE7AFEE1B269F4E80017FB7032EB757
          6E9658DFDC318442F86DD919EBB8DCC71BED85691AC6ABA628494374CA24A27C
          22C9F466976662BE7D1BC7CBA4040C7D3DE45C384A7FDA95F2BB2EEFFCABFEE6
          1CFAF4E8F938017BEC8775BC442DC3BF66585ADAD1C744C900982C61316EBBCC
          767FBC8C92BA887A3ADA9D94BCB2797367F3742D11782A10B8F61647A07CEBA2
          6DAFA2216151711C0AFFFCB9AAB51CB240A6A5DD05E05C0D03EB637250F89C51
          145F37FFA4C31075FE40E89F21FBE42DCF3632D4D2E325B5E4BFF686891E97E4
          61C8213DE43DEDC10F7B63259D1073A59B0F483361FB44DB217C89C41A54FADB
          423DF0E6CAAC32574FBE39D3243FD355AFE9C7D3107F85782A8C146AC2BF42D6
          727D28E437EE9648CBF2565448D9937948896AC38DA22F9005BD34413A9363B9
          26AF85025D3A786332833C4AD5A0878FCBE98F8FBD9F1F06026FA7243A2F2EA5
          9E91E9F7A08F74DBADF13ACC39FCFA657FEDD7164ACD20EE94097AA91BA6DCFB
          CF4F3B047E479DF7E5819BD592F755DB263EF1808346FBCC06448538BCC1A759
          ABF4280A332FB40AE101C7EB02CF8C8C8D6DC5D839CB58ADD93C8E4DBE6EF1AA
          F13B7C6A7C82ADFCACF43F2678BCA0BB775DC39D519520875FA0D57208F94CA3
          700332DAEF7B799E0EEE05D2036F231ECBA56E4E22DE5CA24CBACF2C7A36EA8F
          37759C6DD9CD561AA5E01FC4966F2464452596ABFFF8619438543D092A0EF077
          910EA326FC01F83584984302DA482D37FA7D70F3535DDEF04935074C0B9FFA2F
          FF5D1BCF5BF5CF130D8E2452EAE74634D3750386D354914D63D5EE1DE9A85F7A
          25E58D4430BC280C72AF581A3C591D41109C9AC9050BF4F790867F52C6A62509
          D3297E62F1D977DD9D70F21FC0C35DB61E90CCA2E5D643B4FA37FBDBA000342C
          E3D427733303CD4EEFC399713ACF373ACFFF3CF1DF999ADA3B9CAD74CEB75DEF
          C405DE0D547FB4489688BE5B5DBF5D32FE98BDA1DB7E1E9E1EB05A24F5F7D4F4
          BA34F771575FEAEF180E1D3A60DE2D6B1602AFA8845CE994F97229031C6195C2
          1ED0F692B474CC48D3FB479E37675BBD4FF78B4D2BCF54D0EAE37571F6F97122
          AB1AA77B94A6CADF9664D6B893BB0A628F0EA84FF05B51EC58697B7DF7CD26E0
          04A53A60AFB7DA8F02B02655BD62D2DEEEED8BD052ACA02213FBD0E6DBDB2AF6
          2714E3EBC64B3E1886EDE271CC54689A9314EE3AEFF50632A14F0D099236C06D
          F70172B451DD027851C4C8166484BD9A26CBAAD2CCE349DB3D83299FC724DDFD
          E7B602B5C6E98EB83BC6B95E36886924547FCF3BF293025BE5904931B2BEC6BC
          88E71DEAEA665930BA5EF9ECDEDAD6DA65F828812925EFB56BE07AA7F7D671DB
          83A7A9EFFA03EBD35CFD67A93BD8CACDAD84F181922AC7CBDBF2A29C7DE5DB95
          19A0BAE97D5FB1D4937F75E05172AE3F25A1F96F471815D4F093B066914F3660
          6C51D1ED6259BEC10FF0EEBCDEF4BE9A27F0A9BCF3EA5662C567BB78F93E47E4
          2998B0AD8742FB979330105A4859CDEE04DD227873B21A73DCE176716BFA3896
          20E5D8D56594D534F7B992AE8AD3BD674792B6590BF06568E918B44DC38BABE5
          4B8BEBED14E1024A77A5D327119EB3583BD1A12EC131AE357FFB97A81CB7CD8B
          42D9743BA70A332CEA867A08C3EC4654754C754D7A52BABBE31E4AD14631F81E
          503D3FFE75CD8EB3C14D81560B3FCF2A717D498CDBF1DDD75EF997411FB0BB88
          BBFAE3738A93E37E2FBA1941BD9F2EAEDEB89CF6A020FF30BD77ED74BA91EA3C
          BD3209BC2CB2793A90300DDC0E9C04E8DBA9294E9FF6208F9ABCF6F5DBC5E179
          988AC9F5DB4D78DACC7D2CFA8CC774ABE7E12F6F95DAAA533648D851657BB15C
          F7C1C4C30A4AF7504BE77B77157877F5F8EB2E37E029D77F43CA6FE32A0380AE
          21BCE6403AC5AF8DBA99677F99747C3774D54457A41FF0C8F378DF24BE575214
          DFD1E27356D64023CFB4672CC2E6A6FB03FE18D9D66EF933E265FE04479202EE
          EF105AD443103F84466E20373A0D63727665CEB357EB937CA3F0B8EB39F2363E
          F104DD753C1D8625F48A197D8C3F6C9B3A87AD2A76C6C4BCC9F44D7806325560
          3BA717D6DDC2E72C83A36052682C2AA64A31538B7BC1367F1D49A1FD4E4F377E
          CFD02FA6D9F9810EB069E071780C8129B855F5EA9CEEAE0B8E1059793A9B0CBC
          3AEBBCBC842D3FB21752D57D5193A082EE85D4F7D74CC4A80A707F37B8AF059A
          3ECE1B057D891C7AE666C59C860FBF8BB4241B4F663DD09BEC197F4C06ACD7AB
          07FE819AF8ED8FC33A2ED000D71FE882D8578B49C4672E9484BCAA5E5E7F78D3
          7E5FA03FF9794556CEEEB9D86CF6D9982E03355970844E7D8A5220BE6DEA9DF6
          1A8A3B784B37E3E4B5676EDE86C2C8601B8C62B133172CF6A907E18F44FD65F4
          2DA7EBAFF477F9C9DB4C7AAD131C6AFC9039F3FD2D515157B88EC67D6A57C8A2
          CF5F5FF16B5A03E49AD79166884AB9BDCF067CA87C04737EF4B83495566589D7
          7A3805280A63F6F4DDDE4C81378F7CA2849BBF0B0FFC01A7014C181CB6C854B8
          8CA2425E480087C3C6F2710784A672E091B6A9DFEDD3FDC5D34625EB9BEBBEED
          E5C745783592143B5CF494C3ED34461CE6BACED276695C6DA7D7FE777D94A7DD
          BEDB0459A7A6E1508F40927D76A3D2BD6961C64097BCC2FF74339DF6F1CEF4C9
          3317292870A84B8FDB6073AF4DAB8828C3A56D4FFE21A2FA7BE0F9D19C703A01
          601571E86BF4B93863AFEC088281F487B40085DC9CFD73E7AF80109940A3EA81
          5124EA581A9EEAC7981E7F5142F9AA50A09906AA75ACE956AB93211D970277E3
          040E82927BFB46E1CEE332B454BC5AF4FD7032B016034C841FE969A2A01859BA
          82BD444F60F7EAE01D4F2193D83C25200E3E71982ADF0711BC52B50A17B4DAF1
          8A83CB242AC45EF175280C3C309D8C81F93687E2ADC71A4A45E3963F7436B464
          83F48CE0F3B367F08849139380CF74020EC81D9C43BFC335F1DB0ABF94FE2AEA
          C136F5592B4A78841481DFEB24174DEC992B16696D94CB6A1BEE1D284A3DAEFB
          EAEAFA376DB82D00DA1C567DA27272595B4D86DD2C85CADFD40580EF0620704E
          09C64537AA7DA8D1D1F20B80F484E11AA0E2F5ECCE2CD85BC824802663FB5174
          1FCF55F45AFE068C972EE053737C2BDC6C43D16C7377179A94C014967FFCAEE5
          C202AB9AC344B9ECC8C2AEF595C9D161FFC32A664FFB4BFC3963D5141C129551
          D4EA1725BC169A7677D21D700100E90A36A3D364CF0C08D3927B275CC8407371
          72A129792E562B8EA8EDB474625D874913D5B8AFEBD81D4289E10838A8FBA093
          05B6D49F745CB95BBD2F3DDEED1E3D5CD3ED9E57EBE13D115A381D191FDF41E3
          97F37B6C2178D3592BD758D4D820F7CF9B476CF1BA1CE63ABAEB9388AAA9553A
          9790541C33F3B6609DD54C0008F37E46DAF7443674D221D756044FE8B27DABBD
          317F0083C7A24BB9E2C2223316FD139FDC8934B39A9005AFD274305BF56148EE
          2355E39556E2C4D9C923DEFE78868E65A4AA564E469329EC93E534DBFC552239
          1E8DAC2C81F52051AA8CC8BD93DBAB58B5F56BB13042F280A2B01B1206D49ABC
          D1D770B6650CD639066C043DBEC1D245E48FE998375EC1E9757FB4E318280EAB
          F1FC13FCA72CB5E2D60214AFE2DF332914BCE87D801E1B1F942015067320F388
          4A3EE747C501C4BEA436AB388B43FBDBB6EFC97A6609E5AAA276FD889849D781
          864BBB477193D5E19C301E9B57A90E3BC0D6016E50077E5D1262F691FEBBECAB
          6C4730B65F910519AC921600680459763A76227EC61B4D8E1F51EBB2C6F96D88
          49F432CAE5B21229769DD25A9A2AA21DA914E2D7841FBEFC553A303D2B7B624D
          F8F2492CAE896FD9D38DEA1B51AC731911039AD32EBC4B72825627D483A2F70C
          D215EE168483D321F631677343F6A466808312B153B871BFC02883CEC2F271A7
          88170563ECDB0718F470CE25FCA1756930FA575E940E135A01E9A79E7D946DFF
          42274136E7716B50109E99A8558580BBC5D3C4A5C478233C27723AFE6F44C6B4
          38ABF340D4272D9CAAD06DBB31B28AA32E7B1111D7E208AA54A5D9C1E18990A2
          CDFE3A94B02212810A80A95B88362C5BD934627556E32D9E108814D09E86AAA2
          AAAF612AB84C37C3608E291EBCF1074239AC2E64313F69675A1CEE1B318626B8
          8227EB816B71DF445DE567D523FA80D96D09E5A640C7D703BC33514A0DD9A688
          A7C0FBDDDD77C561A9F05E5A5AF3CD41F31116DFB32B897F9F68CC080ABAA546
          EEB66F42001B8C3E228E2F668C98BB46D535FFC289F8E41F1834BC9B42072D69
          1ADC7CF8428C8EDBDD8DA5136A423279724726904D6634615ACA88318F485182
          7585FDBE64F27B3D23DEFED31EAC2932355189B6E0C537B2455AC1BEFCE4D909
          ADF1FA06C0EE6EEDA8335D2D72A2EF9C3EABB38B693DA0E8024A102BDAC65D0B
          F27DB37C280AD5F70DD204EE9444B670C5A53A9703644C2385C855A199C2A42C
          0B9ACF04F49BB31F5BF671FBCF4DD4AB9C4618AF2407E7BD5FA6D8100F359BF4
          3D50B582927E132F6D23ABCE1BBEA1441B9EF50B7707A960F323993848BEB821
          EC7B20CB672BA33BFBEC2A647D6AFB1E4B3674D09521FA1EABB6771AF2B8EDB4
          4CC90300F0CBE51CCA5A9775F318F1D2175326C5805A3C88F3B5482691015D54
          FA2B5EDA0442ECA9EC0CDA8415A298A3F2BA2AD214FA66A62D7C274FDE0FCA9F
          4756C32D98B48EAAB717F3F6FDF2D3EDE49A02460D0972426E24E7F33A1FBD3A
          37A219FEC21547693C1D7EB95CB50C8ED237D16136792E739CE78FF94A11FD3E
          AEDDFFE27CD55F7461BE99C81B171F48C707FAD37E4E9D8EEED6480562C1C844
          DEFE845AEA1C78778738ECFFF81800E1C238F640B5587E38F2ED71380E02461D
          03B7079C8F9D4F44DCE877B33BF4ADF4C2BB98FB05F83CBE61D924B0AC05E5D3
          2AEBB0CFCA9DF4A00675079F328B180A6398D910D374BC493DFCA276319641E4
          C7ACCEE5CF535BFD7649689827B367F7D7B773BA7E095CBBA8573BF3544D6691
          B9AC30044DC832E81795FC3718D5F27BF9630E6672C5DFB4D3DF3A787EC98A4F
          5F3D5D2AB9407B5A2A926B474951F9AAA2CA76FE49E359A47858A1A60CB283CC
          FA1FDE7D2F50393F861C1118131B56882A5AB4A5FF9E8C0D4739320F97EA6FF5
          57E220F25913BEC9B799402707D7CD3CA0CC9476B4677BDE89B7C69EE548DBE3
          1FDF742FDABFEDA87FF55FA1590BAEE1289398AC812CCA0B5F36C5C4980F0328
          D0AB966664FA758AB54A756497DE8B1913ABC85B40707A54968815AD569A21E2
          466E431DBFA836F36250F5990E85D19CC883D5AEE7FDB874FD96B6596CF18370
          14E629EDFAAE80D62FF67D6A2BF1293099F24D38BD72683392A66A52896D15C4
          AC38DE43A7194C133ED1CE3E545CA6D9416309279B3B87F398C816A157888ED5
          22AD523094F0AF3B51CBA1EBA86BFA5F9D0D248C447E5864BC8F065BB9C0423D
          23E16A5430CB9CCCB7F53ECC8084C4C03383B0F2B324F196E32B2A940CDF35C5
          43ACBBF0D5D3DE9FC519FA45FC22EF0C64C57618322FBDD5BA3F67DE0ABC7A50
          FB5D1A6007C3F3FA350C2F247927C03064CE52F28F7FF3E381D855B37CBC69CA
          62B4CEBFDEF5981E717F2590E8B378B7365D44E89D811535DACEAD44DD17152C
          156D48EF52D8FC5D15A94F636B81C89393D539335332080D48DFB9CE918DCE7A
          E3B5C4AAACD52A38CDC4E9D26EF183794D22ED696E2A782542DB1F831923C1FB
          2845BC208F2A9FB3FB74040F5FE99BBEE1600CFC84B4BF9A3D5589A6FAD7BCCB
          98E51F00EE5A0A5852B5ADD3AAD60C5D731A1DCD2CB5E2C619C1689DD02785CD
          4CF7EDE55BBC6BB78263EA2204F796B873FF79F0C6668B4997BA2857B38934EE
          79708AF51F8668E838449FC45DB7F4C7AD8E6A2EAE35DA8EFCC2ECA846143EE2
          64C042FFBDA39D669CFED101910041D53F0E8784A423B570736C5BA74AD3904B
          C3044F32BD48C56C13819A01B97275A149E2CD6AAF205BB9E858F8A464B3DEF2
          13C026EE8F5AB15173C8D3EEC521266E6D4311BC60D3444767C0A98EACCA74C0
          E2EEFAFEA8976DC17DE4C0CCB67162A6350D5FFE04D7C3C3F8938EED1EC1E156
          1EE7A687CCEE708118AFD9D69176A94E99966826B67E1137D0CAB85AE54089CE
          CA76DD99C5BF663D81B5888D8ECD51AE34C9FB254D6CD1CC779C9737A1B53B6E
          441BE022639EA15943A25C9697A5FEA81B5E68F0EB5D252558BACCC4A192884D
          6A360F565DD402104A7009A5F72BE813AFEDD55A72F15F38A7C3D1BC4CD97A6E
          3591FE8CBE8C56231F470A269E2015D47D2E15514CD86C70D4EF0D329C7BD52C
          7C343DB888A52BF3E8BFB9F8E6ACBB0C0969F78D870E8624AF06A0B9DE9C1EBD
          10B1D37469BF7E34ACB5DF028E44F0A281B5358A834B9A96DC5BDE1D7DC7EF3E
          5B6301A70571845476EDFE35169FD88CEEC039B5516123540F5E60480509AE49
          50E79414768E3709A27C2BDFEE19C332E7F3DA8CEE276D7D46A158D78E31FE7C
          E9DE1084AE84C50B43873756A3EA2EC9BEDDAAE6AB83C8C2F4BA5614BF9B2640
          ABDB1D62122DDA852D339A85C3E7D61679D162701CE3DAD6167F7E7F76C23A6E
          BD1A4371CDD8E2CD81941BCDE9D2C7D8C48E623DCDFF0857461B378982E47C51
          79A85C5A9F0FD7B6D4FF2481F5CF5AAD887D77C4DD1BC2839DAE8AF7DEB3B533
          4C1CEDACF973314A0465C4067818C6017F2CF8113B7321B5FE0DC45368B2243A
          583E2F09718CE4ADB8E502FE26B9B711B32902DE2D0F5E5C5BD87711BB9B2D95
          0C399BBEB47CCD6CD7ACB542C22E29BFDA19F33B8047F0A6D82D6E571EAB113F
          4D8C3E684D085D2355E9C22B94E2BB59E0C2972FDB1A9A025AE6F38CB52CFA3B
          1E9B1CE5063BD8973221463DC0A9C14F72A5DF63E4065FA6DBA91452331CCADE
          E4EC0D47F09ECA123666BF93A5816D7364C3F952ED48A3F75AA6638D33A75D77
          4212E24359B03B39D098680D1304161571575D38B0C44BCC47685CDA58FAB95D
          B7F24A9FD94DABAB35BE3984D53BD66ADF2B5AFDACA073F7CC15DF45CB9E3045
          9C8CD82D4903452159A1FEFDAE42E212E78FD8FDD4B2B3F54531547AF2D8366A
          55AEE15DC68E6449AC4F2A48AD5F4FFA5B41A8DA0AAFD3C8977DE74703082223
          78903ACE5C25218A82D69DC772EBEAA525114044D9BC6E36585011FD351A77AA
          92FB118970DB9ABF1AEE651117334BBC834AE38BD5DA772EFDEB3AE641168C9C
          C31340F9879FC44C40495BF33C0E2411E3081F46115551F2A98854D0DF8C012F
          09E2DF19BBDB643D40B106C797331EE1DC7A296F48B3B9C19281816B369C5043
          664BED9646068C38DBB6ACCA976AE4366E6574CF514E14619B18E562C67FB190
          B1634F4736791627445072C648DEFFC35FA36CEAB1F0B9180BB96DABFF83A4BA
          1A7033A13BDFC9418DC0242A94FF8DA9098834A47869B6EDF4DA2690E7EBAF58
          548C592416ED45153BC3D7F9F4F473841C54D306CB4AEBE07E201ACFB3A14C2F
          1FD5E446A549770A840AB9109DDEF6A6182569ABC52989D9ED2846BC1EE67B2C
          18071AA802BA5935FA165FDEBF31E4AE7DB8C695CC8454489726E68CCD0B9F79
          577D155483EA57B4C47D2C94B8EA169E278F9C226F067A7C78EFF77E2DB1C747
          C924CBCE035189CDF7AF3DF6B09A5226AA62D2F933C9EF1422B23EC2FDF1E1C9
          5E31D965D4C6328CB3AF9A4DF263FA01242FB51390DCC279E5645066081B0D22
          384A1EB0E9C7F60FE5BB64BF1B9FA8F3BDF24976D2FE139FDA0C7228D30CA9AB
          B9FEBE64658F5F5678CBBD75A7D815684AD2BE88DF0381F3FDD0EC56FE47A272
          053CBC82DB035749B2015F097C5ECEDE90F6BCE0DBD7B46BB780E1B0882833D7
          7ED6CF78C431E63E6E3415553F08E40BD39C899D8D68A3A07DBB239E57BA2703
          06F26A6C05A642A4C96AE30D6EA1C9DF73E87B3592B1F78FD349DB74D853EDB0
          8DC872CA8BB10F48302CAC713A2638FC2F278BB323C59CBE6A48AB129DDE609C
          CE5F1023A938A4B14B9870FBC5954AA3B7B6559DF999725F057858154C5D8D62
          702375846C63890D724CEBA46254A5C0FBC96649244E421E96162E095B7CB845
          6B3A46311C6F6002F9B37B34D6FCFF056EC4D8AD4776552E475FB41F4762852E
          596B9D9A6BEE26E3C016C9F435DD39D319A2620C5381A863C8B55AEE0A87A209
          9BD891E91D5880083C09914771B2CAFDDC731AAD20DE7A01D2F4E143E834CC10
          29FB2F1B2AC686790B4779B642663DF958294B574810233D3EFF9A6B452FE7C8
          D2CB2F64EABF1FBDB067F496B3C47273469B29C21F2A4C23C22D64D68E7F3F88
          F3374E1B21CE867DE77133452A9C12A915C75DD19C88DE514F66EAC9F0F241DF
          ADED07A925AEF6EF0FAA2A9EA24517BFFC975E21C9459DF39F710CB390B16118
          7A1274FEE74FE4B04D02C0CB15F9965D03CCB0C7A2B6B3CD0306233F02FA2EDD
          A3201AA8C9FA8E3C0C0B19BFCA62B01CB3C3658A8C7404CADBAF1A49A39E4D93
          D2A28DDDFCCAAE2A33A2EAD7B209BE5354018D3618481638D0F259F8FDCA2B73
          6934E7B4CA6B5FFA53D6E4F2E3D6FDF08B7F97BBBAFFBC61DED4C27ECD0361C9
          75AF6729A42AEDBBC9ACC1679E8BDA6FA6CE23F6F10867A2AE3F219BD37486B1
          39E01175E98D1C47D373820728AF8067B9FAB4AD21DBE3E7978CEF444DA67D03
          32E0BA7F2255550494AA32AEDADFABC530DF63D675F2FCEB439F317A4ED3F4AF
          C7DBBABFF41853C12A40E3DCA3BCB159E724802DCAF949BC3E7EC78F4ECD76FD
          F96AE52303BA04632BEE0E4572CF1AD6D2287679C9CE9E4E7E37BE78201A2C74
          92F9D16174A9AAD4890BAF30B18D8F5D4580FC877E0F45871413B57DDCF7E7E9
          A436B562F2DAA9AB4E35552C9B26C5F153CF31204BAB38C802C2003BC71E4D86
          81044884B793919100A21C90C6D3D2803F523D3E0070045BA0191A74C7C44402
          D4043EF6069321391BC7076DB43EF0EF996258043A29A052CFAD3CA0C861460A
          B631DF9B02F2CC8DE61D235037DC01F47BB9C78FC2CDC74B56CAC95CB4ACBBE2
          A611030F9BF9CA4E6D918CCD13B381A7F119296A5F500D508CA84425C7872ADF
          7E0AC5312810B9785FBAF1EF4263BA1E7EC568BEF49793CAAC8DA94E09E62A50
          ACEEE121319AD2500152EAEC16716E6C58DCE5A6B8A5732570D34CDEA5F35507
          EDD531E3B6FB96380C432D1D6E2DEB04C594B615207A62CE6F610F8B4F4FB488
          CDA9EDC243215CAA4A61D25BF56349170865A5E0E1802B8484ACE0FC593D3C92
          30FD37EE4271D079ED875EB852DFD96591A2C848A9DC08274610CA7EF3AB85EA
          51C9C4B3F0F39B00D0D2907CA01C3D96AA76CE47FC148D9996EF9D7242664733
          32C84E375CDCD4982479E5859DE94B168CB32B31F8654F23018FDF3697AEBE1E
          CF925B64DC5BAE074AA55C8F23409FCA349FA7CAC20B543802B2D80C216C2890
          00A1C61F0C5B9DFD5045729AE1C2EF94F1EF56A4044E2E372044A5931BF9C9AD
          A884BFE2A75DA4364521C477875FF6450BA9EE504EDF20768A69222EBA6EF6AD
          3EDEE9AC5F2FE3ED0E06737BC06E0FCD9F8AA5142CD758A96A059D1C495E2167
          D434C8611A154D6D36360C3564E4953C72A49A8C217D78AD29CEBC8241AC863A
          F23B16CDF12531370C64F31F3A336341B84EF268A60C2ABC27C280798D4EF99D
          AA56DF14A43005C8DFB9955E43026186BCF0BBA834E885C55B1AE085F417E43C
          A2CB938D1E43E3E34D595DCA0EFA479C5E6149BD7CCB9A55AFF34D860AD31012
          FCDFB22322999E5FB560C55717D86BB81483317DA496BC43C1EBE7161387C889
          69024E03DF407D29D302AA2E86B64A452FEACF049641F75A27CFA828DBA8E439
          9E68D7DEA8DCF2363DE087F55302AC38EB8E9FDC630EDE8AEED3BD766980349B
          BC5D7B8D2B7FBCD4516223089CF0A1E07855E80992A2EBB967F439C9536EC667
          4A3ACC1F45E2733250BD6CA167C4F6B6A37E6CD587B1F4A4CDA8A4B2357BCA44
          BAB6854D57BC174D5EE2AB92C7C4B1E9B6BF9A0B8D2A78B1295870BDBB941C1C
          F71F3BE0BAE27501FEAE2A4821301F771428C5CC0D281EF68B586E92E27EEC0B
          9DC460D82207798FBE00C08BA9113AEBE005A7936553CFD5D186FA01CDD80D9F
          655E85CF7F180BF3635E07967B76DC33790DCF2B607541BAF513ED62CDCA7F36
          84FD8EE0746B9306F3F1B53F729420947E26BEE2282308E23858EB8FB51E1B1F
          A3B8AA87D21D14F55FFC83572C68338A6A73B3831B93847CA38695FA74374733
          77ACD386425354297B22CEEE034A13AF8BA64334FBC53123C46B99871F9855D4
          1AA785D0FCE230EDE763CC641476DC465BEBDA2E6137ED5BD9B3CF11C6DD98EC
          9F18FDE78366CA5C60F0B6DAC7256E6EC76124FD13C9ED2095DFB17BFF76B358
          95D5EDC77F805F50D2CD5458281F98EF7E6EECF82025A6D372BAB6AFAF7B4BE9
          5240A83D9B0AC4AB722AFB819328C7B69BD8BB0CAFBE5FC5EC446C38CC37C55C
          7E34AE3A43E3ED3896D6F6F126E245C7894C96F52524012292F5AB53B99B6D68
          6AAD4E25F59FE40D4BD4BA0DA3E0F2F4939D2F98889815F8B4209FF61E5405D8
          FFBD0BB68CD1F7222C59A50A6344B12EE7D10788BF0FA28714E4FD24D80D2663
          3EB4411FED7AFE8857D5782DAB6A4256711430F791BE065DEE7F89D3B60450ED
          D871F6AC14535D7D1B789B590C01A8EC0C4DA8A2D23687F18591A971A012B658
          EEDEF2BC9B091C8E67997206EBE3DAAA68B68B7C2425DDF43FB6CFFCAF8488EF
          A9D291C0B2762BD8F6D88C3E6040668F5C942F04F14CD3E0ECD56B1D65E80FA2
          C9A802D1F7A55F4727956FF63C4A8F7996033F28E2C27A8F2EBE9FA1ADE279A3
          D285688A47E2886D3860F8761F2A79D446F42C56BF92A76A36EEAA606A36C8A6
          62811AD4C137BFDB9E040D20191E788851F59E434A3DE9FE53C43D41DCC6E222
          B7563E9055AE03D7F45BC3917159483F6ABAD21FECC3E47D226F2E963672E2F0
          13A1662380160156953BEA0A749489CD653ADA6FFEC73D435604AFD2CFD42124
          7DEE7E0AF2D5E27C1C640D2A23C59323528C4F890EF2492609AEFD2E5C2F95A2
          F7E88A21A5FF415E762B7AA9DA419DA76A3D06BA594883021B75AF2F61156393
          1F2A222E488A5FF7611BB4AFB8885E1DF5950474AF0EE4D9A4C3B191BF0284AB
          881B93A4AB5DEDB21DC6445256A33BB54F5291FF51E2EC3BB2B794296226C3A4
          4CA495DB8E4CCD167C7944FB0EB5714CD8D17BC796BF75FEA520F1FC59B2622A
          65104FD540F9D8454F0D372E350555177B10DB0A73A8E40C5911713052AD194D
          A058215C01F590E992663F62B1BAC41D75688A4CD4FCCD11DF9C7ECF5E747DBC
          604BBEDD2222F3D7B32ED484CC58BC6727AE2B1D02FCEA8179A6C0E57F2F719F
          92B4D05D17FDD34AEBB05AD6A824490A943897ED93C53BC552961F998F07F351
          46C37C6D2A4453772A5062EB53C3785866291EC3CDA9561EA241D572BD3A93E4
          9699256A62D6DA0C7EAAE01F3EEF3E570BBAC58164293246208C28AB2ECED1DF
          EC93A886451187216E62E93A3AEA573C56AFFE8570701F59CA4FC52A5810D25D
          D5E106C59BE36A0956C2631FB1A97E21BD434594F802869C7DB51CD8C47D0F56
          A9DCF22925743A623F644AD8E22563E00C6390FE473A41F50B3D6CFB2D14CC33
          3D82A35C955F7DEA3B2A0EF99218C67CB6E105B4049F0488641666D67D212B94
          9155147C9339DE71624D38D9309A47555258F2497548FA3F7FEC6184E1B44555
          08C045B5C520EC9D0AAF308D793EAF1F846531175193B89B836B25576465295B
          2824CC68635B0AC8AF8E80BFEB63DAB2965F0D9C88BE0EC9F04B2457145232E3
          6A4C31A3FE0168C63F3CD4DD8B2482AB34E47583CB3A625E74BF53518E5C2A91
          EF3CF37BC4631D706FAB06A7FF6B3727B1E5C7DD7D07E1637678155C68F662B1
          989266924B85B515ED5C73A4B622C09EC096DE615BF483392511F1F3A56F40E9
          BA4FECCD8E8C14981B9925ADD26912F1A35B06D88DD23B9852EDED7D3F65EF00
          3F33BE9B7FAC9ABFA6BCEFF1459F0ADA1FD4DDF208FEE372F3B9F0FA6649F1F2
          3F15D136031AAD6C922EA04855378AF4A8BBB51BABB81EC55097D5207160B229
          76928513D8FBF96211E7A9220B2B914E0D1E3219C338D06BF8C287A4F5A7E466
          1B1AA742CBCE4B148813CE91FDD01299413C7B6681AFDC6420D726B6587C6F14
          D9FA31EB42598C9397B88783FE40C6BF66152FF3FC4FBE92A126BB73C40EE3FA
          823DD3E16CD6851BDF8D90775CA4F1DAF4086237D054FC299AB8DFC5EBE19A9A
          0B3B71E6793EB696FCE14F16F1E303E7B562BC22E524C69818E8FF0D1966D952
          32A0A7152689A3A9A268FE2BD93194850A15C47B311987E59043BEEF15C5A600
          01E4FE62A260EB28A880ECF37D62C8FF17D736DDDCB4CD3D73C43F3EA1972E5F
          26AD90799B015E155223C097C63EFCA86C98ABD5841DD429E7E53B6FBB90F3FD
          51BD12487A0C44DD13673ACBA99BBD00126DB9B030EBB2447B1E3EBC5659604C
          E503B219ABF8B676AC8A8CFF1AA6C2C8947699F99EBFE3FFDB6AEA408529975C
          501AF3F464DF6D16EF35CBFA960A3B1C9CF617A1CBA888B0AC8D0A6517361269
          DE6116C7C949EBC4EE6E4AA74F09A61EAEC84725E1B1FDDE27BC66777C36D4A1
          B5BF3557EC70087C69D7101672DBE7F3788BD514836D1673E499A1F1AF474908
          81F00F8CFAFB4263347D639BEFD4F46F8DF325C39950DBE7885DA4789DB3A8FD
          5A26D5DF097D39647ACDAF146B128B037DB9AD6C9BB977792CDE5C206728553D
          F43E73CA84D16D201A42A1D4626A9EC0F3EADD5BE433BF02C711EC3D36212053
          AF8E58D37E4743E27FE6A8DCDAFD9A38B6783A57DF806C791094C524EBF9D1AA
          ACE4C0F1846A453B2AA2C6844844F5D74BA2DAB3FE15BEB6A6C1F3630BB34CD5
          E4A49A09EF45E542B84A0A70ED2DFEC4D7CD3334B48B31076906ABA456D07FE4
          4A5295EE9962BE54D5DC1E666C4B50EA4162D10EDCF67ABF7F7A921ACE2B12B5
          870B0E2BF10FDB480B7FE6B80623F3FDC8A0160D302B52E284E82FAB6BF64F6C
          DDA6EAE44BC039F7541920EFBE8C87E430829DBB44BDE5B9FB78F4FA7F1BF8BD
          CA6EEDB6B9D8F01693B5A5382DDF28A246F4265C8388A850EE85D375AD943FE4
          ED8A9FE4ACCCE2827931C5881531F0436E6B24B5D1921D2248C0AEBDF438BE5E
          9A483EA9577FFFE697A176CC4FC7B33571E018B585CA9BE4D6DCDFD28B5B7689
          7F76A6E327842B9EB8F2DFE60DB4801282D7FEC7A90355A7802F4C4E78B0C1A4
          B89B4BE2B7F90F6023964D035450DD06B34C26AA69C0C6CD2F649F858B75A4D8
          6FCC43E102C0D63AC93648AC4321567B9BECB5D2D5C9482B48F1F25249461F1B
          226AC389658A64772364F6F190297277D67DE5CEE3DF5765B3176BE94E41368B
          CA2FB10F6590D9DF09653AC59C954E9DB207F3B424BEF1685DBABBBF24E20FE2
          9384CA62A22C3F501EAD247865FB01586BC990E5DDDFBD29A9FD7D50D32584F4
          93856CE96C2AD5B38DBEAF68874CB9E1934374124789FAF95EC8207AD37FD23B
          605C3D1C7E4908A1662DA4CDF1289A2645185E5BE445397ED92B2664BEC279FD
          5D09C540B484E8C71CD1C425C0F973756F84A0CB17208EA916D32CE32A3175D1
          D7EF26CC35FDB2FA0003D2666FF9D2FEF76C0372320F967BFF9BC7C2690C4F99
          3AD9E2B656FCDDE6FB1DCA6E251519F17769650862065CE20B93D83BA1900C23
          293A14831DBF1BB46BBF1618A62521D4AC88CE00BB33D2B34FAE787FF592F8D3
          357B301741AB711FB176B40BB640A67E1D7D7F065789CD51C1E02BE1FFB4C710
          C4830140C688E5FAC9F34EAC153E726192B873D61FA44BDE818C69D915ED5A2D
          7B35FA998E4F36DD9366E94BE5A373F6FE5ABFB8D920F5F8FBF30E461B0EEA9B
          2114FD9EC39067C209FA34A5FBE74B7855AA064C37C3628C7C2679E6CDFA69D7
          7F4D843889DFE921F3B5EC9DDF48D28FE132CBABB2EA736C107FEDCEF7DC3C71
          119F24AE3C1B63DEAA4B0EB7EAF95B5EA7CF118D7A4BE5F69D93DA74D0A888EA
          1A4B298995359943E6F81C9D2CE75AE220F4972DFADA5AB989AA7CD1681709A5
          DBFF016CFBB203BD173BEFD5E65082CBD8ACAF98BBA94A19FFBE75706E262903
          EEAF38AD820E13C59F09F350B3D0F7E83D82F2DFDEA0465C9DAECB708415959E
          A4B2775C0541001DEF504BD81CD95ECF58DCBACB3FA65D51DF68C6D2CBA64ABD
          5A3B4DFE4FAD80D08102E05FF92BF3916926E1A6A3F2BC658E5B9CF0F8740C53
          E76029AB5F319637E9C7019B70C5421F8FB884A835990FB6104AEE087F84FE44
          8E8A26459331B890BD1B36AC20F1FD15F3AE0C102BB01D46D99BF9FAB9CBB5F0
          6BC3DE23FB1759946BFBA46C83D3C231BF237D3195BBF4351FC80B8B9F88B473
          D00A802D518D92892891C1B19FB71A8CB8A67BED9BA8598B6B5E89B9AB2E6D97
          972495018C19A55BE074703B64A5FD2EE2A9FEE64FAB2DCE1DF5456C0AFF3DAE
          71473710DF7C25A8E7BED7D66CE18BD5B1C4F8C03F58FE2CB361AC83F1D10A3C
          D61F14C2600CEF24915F66F3B644009BE3F408903F2EC7AE7571CE5AFC206D16
          BDA6441A46FB46226162018F04D4BDEAE1909A1D1252FA98174DAB1EAAFCDF53
          B5990BA542EA7A7C831FF3CB54BB43136B196C133C652BD8D8235DED3154ED98
          2EA3989FE9640ED306759CD7DA967A71D4B77E9C1CBEBCBE639EFFCB30ECEE8F
          4F738869D17A3C2FF87106FD474946C7D49A85566C4239FCBF188B2099CA8EF0
          812BB0E9AFAE5CA20FFB89E271E59C1DD9506DA91E1935FC44A4EB3C61986613
          A830933BCC7CA03E72CF4BC233B331C411A1223F9A29AE6D91997208E78490B8
          1F78F0A7A52EAE7D22CA9B7797FBEC7629D8D8FFA3C7C3EBFE5817D2208ED995
          518E464F0DEEF437A43817A59D746C5BFC80DAE518D7AAFB10EFE29DEF683544
          19B23BD1E008302526FE3C5BFCBE5BCE49AA9D1091C4476F7D0E24536D080736
          A8312400C418E47D72E9F59F5FAAFE814EAA40D8B46BAF5C13CE253D198ACE00
          92EBAF2F1994CCEF35345E1FB71A74DCA1A9B96A57CFF63E1661D79B43156D21
          EE6133C21681810C0E3482A105BC6E756DB9FA981CA59AF1896A6764A1240420
          B9BADE017163EA1A242B50F5D0AC4FAC22DF7F4D115E2F30D7DAADEA2D6F1991
          15462CC62BDA0E695BA1B5491C36F76C02960A8F0F8AB1BBCAE87DD2DF43A73B
          8FE682F90AC8D8585E5555EBE37E103D42B956D8D559740AF975A569B66F9555
          2A0B4EB1C4FE490CD0CD88CF4676F8D14BD6E19168DF467B455AF06F4220B08F
          39302C8C6F9D2BCE88E12A6127B3DA49227B44C64DB1FBAFA5E6FC0FB5139F89
          6A2E08EFA40F3851CF04FCA6196382818549598A3FF5ACF231982642A0DDD337
          B048DD301EFC757C5BBEEE62B2B39354F761259A6A406B90F35EF34F0B2C5B36
          F07F8C58D9C5ED94538ED941AF79D7FFF3DBBB6EFDB9D368FBA61A294C5F2620
          C35A807CF8197210DF9930FEB13CAE79C0950F79DFD247FF536A1AE712F56ECA
          269530AE48FBEFA2D7EC34A706EB3A34075E7C53F26853686B748C730F1C10D3
          7F93432B07A743613EE47DFF65440FD049552F785FF818F0A2CF1F2A7BC521E5
          32FDCD942F6375D128656F050D3752ACABC175391EA58A82E8B92E2ACB4DDFC1
          4F8DF7FA9337ECD9A435E561B73342F6BBFC7FB4D444DA31F28CD41E5FA28E2E
          CFDAD7D7165A11F938E8C86EE1DC94CD42A6FC41F90244F507216497C72E662A
          72DC9CB7147F8FF4B17F52CCB347F08CA808F4B518BFB8CEFC9AA9229BB5FFA1
          285F991DA2BFF35F216914699AC8D368F3EC74266AB1EB10C9D7CEEE96D3918A
          F4F94E6F682F7624F4C0B77C186632E67EAB21CEC902B44B9D31F8F7D25A27FD
          C17A3B8FD24BAF0517F49ECB74B97476916EE13F7BDDF4A64669A1DCB503CAFF
          BB6742685DFF25C91A8EF43B11974AA697DB231C5DC57DB6F2DC0F19C8BC4DE0
          51CF6EE32E14D88B50AFB483F6C9D48395F01FA7F21FD3F47FB544192985D5A4
          065713AEAB2199FEE060790B84FF5D27DC895E66EBFF4F085AC79FB9B611A895
          48ED57ABAAD7FEE326C08820FBF662DEBA1C60028F7CE5CF269D3EC3DE937540
          E9858902497E0080DE7D6B795A6AE1398B78FADA20AB584EDD71FDDD44FE1923
          055683FFD7C6958743D976F167660C633064CF3A6497B194B255D6620659C6F2
          5A6768954FD628959991EC451A434DC258872C2559E71DBB5049B6B23494C89E
          1225F58DE8FDBE3FDEE7AF73DDCF73CE7DCEF99D73EE73AEEBB9EE92508E4985
          19126F68AAE9F62C3126B72E512EFA752398C593E12C34DE69C192D6FCDB5576
          B89FC64E237E74C03B6CD3EACA9AD8A07FCC73B1B785E72E33B8874DF9CF2A45
          F1EAC3DE5D8AB599FB38E57EF622EB0ECC5BF1868BCF91D87CE1308E9D283759
          5F3966601BAD59FCC20505E586161F3B7F8437F462B12527D3888206EB10CC97
          B6FE186B10095DC875BC220120C31E9C4EDF655877DC4F31D5CD196130954D0E
          79620BF1741BDBF66FB81403A1C198CEE1CEB8A321E078F36A775CA3BB489EEC
          A1A1448D0CD9B583EB0E32290B6B3C41EEB0E77C2140B2E785BEE37BE4555F0E
          4CE24B78195DC87309DD4E804FA15AD69F50D880781B865B5DD3B45CFD16EC90
          C2CC97BCD881B1C593A857A5BE4AEAE1F0950DDE2A4B85328DDA093271DF542D
          C57ABB462CF3BAE7427A9020F1F02841467669F9D04FB2E2F4252ACCCDE18E76
          6D3907210859B82D3A92CFBB56A904880FA5013E59666D1EB2D4AAA20FEA205C
          16EDC352623883F4D3439F95F0C6F21A6DB72AC4E9245209E23ADCA27E4DE3DB
          D7FE6AA15772AAD319AAA1BFB3973CBB7FB9ADFF523C52540F1B20571F7EC85F
          A8A92A29E52BF7E87F449B71A52048FB2E1E7C77CE2355DA6E7EA29660FA69BC
          3A78AF653F5ADAA0E980B5B5A3DAFFA43C0EAF476A4F567ADF2F96961C2B677D
          3F7C85DB76532C02E0640E10A037C40369C2663049135E8F63D6AE32A3576041
          F920759D863E1BAC99718267A970A034B725379098B82152F7BB8D432B32C514
          EE962E021D5094584F86DB03F3CA1FE3992B1E74EC33B1389A08ADBD58EEB6D6
          33C75787EA39901866BFDC5717B8966B2F9CAA31BE907BD9665818A91656FB90
          954E42493716FD86F6A6E26593874F679FA7A80535A34735DFE6AF48AB7133A9
          DF4B0FF598E49EA618BA32A1A8A17BDCF89ECFB182BC81EF4F24EFEEBC03C6C9
          379CB874A56D15CF4D301466D64CD37BB7E304EECDBD4E6A5A207D89EB601CB3
          C8DC98FAB2003E32A502115FB6711C1B89544A902C5C3C579B7B7D15655D60D2
          FD9F3CB7D900F2050FCAF748C511CCEDA4881EB0CB7832DA2C1DF0D41FC2E46C
          1F43C20CF1757623BD47610151A3B8E8021CB3EFD2E6C3098C3F37CD98DED443
          7212F77C80BC8EF3903396FA8E8AAC4A738D7DB8D958504DD5E3A82900B97E9C
          41C7A0B66BE5C244C9B484785F34EDE99E812BDA5A1F40625A8B433551FC5713
          40FE40618D151D8657150849AF2D5FA35AB2726064D0307EB351C9D4BEEB5317
          E0C9C84A8CF4DE416056FB7AF966EB9B16131DEDC9D490E60B3F5AF5B1FA1DE7
          C004227FD8B82F5AE0409EE9EBC15DEF4284EC019AFA548485E239AB64ECBE0A
          68509726178E6BC06BAA2FE9F5953FF141176064D72C9E0B77C9FDAA6E796451
          BC8BA8BD8B491DD9880D76A4EE118EB1159FF7DEA5853C60741CF1902AF9BE50
          5A39574CA1882E50A557716B428DCBCC082B62EA3C68C1F329E5FD50EEEF0450
          738279DBD9AD414D72BECF982FE07991E8238B39A8D016792024E0114D481A16
          D2E4FF4B1C1C17943D65FB31C207AB02D2165CDCBBF4C909C041CB06B551949D
          D2548C30E6289FF12ADA5809501ED38CEBBBB9F145F646EF3ED18E0EE08071DA
          122948E0C3E10F71F6BBE22E6AB5B340593F3444166FD50D8A358BF21C4A39FE
          4B44CF6B6F4F50F15F728F3B4B8BB7F5229BF3088BDEE30AF336BC6055EB2DC7
          9BFCB103B4C8C99290AA90BEDBA6217F14E97354112E50EDDE9A6C6DCD74BDCE
          0894F03609A89EBF2D696EEA5BF9B080FE13A240E481F7257067604C33FE28D9
          3581A16F04139342FE6E4EBD29C311F3640F20492879EBE50791DB8F91AE5BD8
          F0D7323AC56A81597865F15CB710575C111521B94A542901AED5432E889A9AB5
          A26C9C9763E2F65D3106D0CB26FDC1F2D357177E9EEEBBF9CE5610E0F4B5711D
          E694E7C2E7D0A29B461305CFE0C1BB6D7BF8B1159F4FF80EF0FA4B833DB88EF7
          689864A07F472AB6033C6CBE968839B208D3609758E6A70437338EC6F6A36E3E
          72498D513562997565A19AF1B426DDFAEBBDF94E7E0CB521C76F796448050D84
          F1DC09D27B428CC9E6C8A79B2B13CAD64716D32F2132581141673BC7D4266016
          EFEF665F1F9B793D9EDFF9234788716E9EECD3BB82547BF5F9DC9B2B0A609CE0
          6215C16B5B8D212E5CD0C495F9AB7C806881EC2160E441FFE754771761D3DD11
          28575EFCF39FE8BA9734BB174E831B5F42B5948C9DAF9973ED7725BF8A3DCB92
          389F5E7376A7B3CCAF135D7FB329397855FF866BD432029F08A918A35F053570
          9DDC8C0EF49CDD4C8DBF61C639C16A156F77F5373E4F8BB0E7B68EC124D40D7F
          7EAFBCBA866E19D466B61DA28377600AE026406D5CE4CA567DF0188E8AB1F44F
          30F3DDCD0D1DF0D18A8A0D232EDFF107ADA5C3A1EF0DDBC6CD8A5775C6E6852A
          7419946FF6B7740289F3978BB7CB5E98E3B262A1443750EA9D580C8110F65E4B
          C668677D500E6D15174F0C947F588DC828A924D8DF583AA3D9E42C532A5CB3C3
          350DE25D8B3D55F933115AC191019282E10F873DD56A2788C4ACF5362D750A6B
          D17A2E39E2E6702C9F5709FF189EBF0C3D4C80AE7A6B13885A2B81523EAE08FC
          F387846C3DF1444292F7D4FEF3562B289976C492FF8B496C4DCE1F1317F710BE
          2D289B02107DDDDA6950BBB4AFDC5EA072CCD6B753B0FEA56FBA6E45D283AEA1
          3B80A1F9EE505A6B169CA0CE15A9B60DF91808F83CF73775A3A51AF1BE54F66B
          3FDCAFC9D4F85D2197A01DC98EA0DA951EF272E2BC193C130179B0D75FD14E0D
          EAF3874F16E031C1A0CD1E067EC86F6D0ECDE3F5114C6A339E3C1F421FCAF22C
          8950CBB935A43530E6C0DACEBE814668450DECEF5F5C42814A26191D423A7156
          5AA266AFBF21AF2D91EF7C3CE13D7949118F216E575C2C1CA70ACC2D599ABADE
          0EB68E16AFCFEAD438C88A78EA2238476E49FF63AF30F372CA1D307E42A5A193
          EFB3494F54555CAB6DDF611F4192FD6BDFA9023187E19DAC9F85ED35E1E7EF42
          F24E5EBFAF22D2FB48217D718EEC6EDE36C391369877CB1687ED7DE4F4675FFA
          5E67EB682DEED6768D14A83215AC165AE732FDD64AA8DA7ED861E7345592B306
          B4654B555EF60A1F777FA3BBABACAFC63C56D7C769FB353A4C142664EC1FCE7F
          1CEB0A1C1CFAE437AC88ADBBD79CBEAD3176284E23B75B51A4E234612FFF5947
          BC9F01EE69A270D5CE455175164851039F5D46E42415F38FBB94B043AF26CA8D
          4D76DA4BBA21DC4727295ECFA2904BCEA049428DBC83B94A522DE653FBFD68F4
          F6676AD07DE459D1AE19F73FF7516DAFFE3FB1E3957F25768CF83F6227F6FF95
          F8DF0557FF103B91F1AFC4B6CAF7CCF3CE13D9C6F27D6AA3B29A2CA3EFB069DF
          20335FF6BBBAD41ABCCE97A3D01385443618D291D72D85DED905FC2DCCD1A575
          666B48A3FB3213AFADDF4AF63C658AE39023A85E662F99659728DCE8DDB5F1E2
          50C1967803D106A50ED4BE4F44876E2735B21F7AD940615C4A42C171794B8358
          82CBACB9E00D90A62ACE6FCBE4425EAFD0E49B56006E2391AD18F94CDCEE63FA
          EC09C4A2275A7D6B3747E39467AD771D89E93CEECE11FE6C23D04431B1634AC4
          61E10E8C81D9C0964311DC5E0E46FA9CD57A816940E99C26DB094EB972A76ED7
          78F96CBA3C2D6AC7CABC523CBCF5A70E54E12EA0A5FAD53AA6FCF6C894D7D6A1
          FB252FB5DE5AB5EE3ED52F149261C076DF6C2FCBC2D42813EEA65889216986B1
          7D3C205C7B83C2E1F997CD59E5A6546A962E9DED80E71221C5ED0E301A877F0C
          E26E18E974896C2C5B3C56B2959FF490C4CEE7725513EBAD48B68196F765EB5A
          48116298BA1E6E761DEC257277B2A4340467C542135D167BECE9143BB68DAA2C
          B2A4C86D3E9CE97C575B8900634B3373A9509BB2CFF47BD00CA216AE2840B6B3
          DA6524EAC7935FEDBFD61DBFD71661D5AC464A168E20C0CE33681390FFC252D4
          94B2578E66D4C76E8779F43D1544EF4019A3F13BA5FCC74AC7FE0B6CD4ED4BCE
          97FF9C12D8273EA3F660551E0014E48DCD679ABA1BC5A71DA014839A1E0037FE
          4B1AD5B2D9F27DE2B07560D05624D75D0986C0B9743C24CA3F961F7C7E726EF4
          2D6753E9177FC138D8E1D5B4FB2499869A88A9F642B9A3CF40B8098F7420F0A5
          77FAF39313A547F827DDC45F5CEF181A6697A6F161DDD6542DDBC726FE122849
          C0D590E214F5D75AF7F5EEC1F8B37C422F1AF48E9A4776A85F26C12ECB6D0247
          FB5EEFE1B2C56B1C13235024ABF607B2870D08A3E6EDE393CC9293C84443776B
          91518814C5AFAA274432BB98DB96533BEEE2810869544426D060EC9B810E53F7
          15E5609D842C4FB2D4394A1E0874D725CD29164898CD4C821F08776A818E5747
          F176EB798E66E6BE5C8A4387959C8CD967597C95AE1EFA189D30A72AE4B16B7D
          F0A03341F3A06850AF6EE9749D67749A6840E10D0A3AAC7E022331300A5AEA8A
          053EA028521AC5BA887C260F3C87477A060E4AE2B9A43F63BA856C9D3A2869AE
          49B1C945CCD8A5BB34F2466A724BC8BE26DF4CA0AE07D4EBA43899C1F6686310
          26B8516FDD4F6AF9CE64C46B8F1F74A1E3B778AA06891A620C64E5550A1155C6
          C040D8A66C80C58C3DA6C9244D5485158D044350D7FC27E37D66CD35AF952941
          3CA923F995ECFD1A2B13431AF3FA604F6406A0151E1A2E07AEB2D512D29A2239
          2873680E7D9CCD788479BAD0C764A3C0B77E6BB651615ADDC9E8FCC4BA123D05
          D05467524AB444FE6A7185B49B500CBEAA0D8CC57B3AD4DE0E2575D67A5B40BF
          D4A6B5F761F7C09AF63EB639B3C46E043935C9B317B8CA8B97DB44DE52A88A7D
          DC59E7BABE81391BFC012F0F1B4A3ABA081B2EDB10177FDCC353EDA04E7D5585
          0CBAA95BC381EF17228042AC393BBB8C6BFF760ECAD2411A7A4A3460E923920D
          C8209D0322CC3CC4572073B2BF3524C4377DEE426D3329CD22FC3DAD1FAC4CA9
          C3B24779A106B4F42504D30112E3613BD9B5CF7C7912F00754808B0EF3F86932
          C40B75C68A886697A8BA7AC0D920DF15E65EBC9F16D3A2DC83781282D9E331C4
          C31121452A9A0B70B25B7C5382A5D783BC1D92D0F9B221BA74658CAEBC50A7B5
          71D8448CA1BA14D3C64F36674B8C3B0B2AF08402B04E3F49C19D5B313ACDD59C
          A3610429431E425AAA150DAD6FF971190C6A401F3D1DCE4B9526FBF1CAF10849
          D62FB799643CA3EE46DBFE76D2A2B14BFC67DDA9F34F3D4EDB5BC30BF86E15E8
          771333F7C3DDB9A0C5D835F50BE4C142F4E362D535C619C6EBEF04E585668A64
          E8E87754D973799757F95B4A4482FCE184FCB2FBF46C19A11703A2040A710564
          7269A5C861EC7E5A9B3021A6628048F5EAA9740C4A1623CC136A71163D61841F
          33167CCE6C0811A73C8C219D866EB75AC2CE248B9D9814D6538E072A2335C956
          EFB3315B19B2662B1EA21C5F2C181FBDC19F3E1811B42C62E03111C3D13B49C0
          44A7A3C39E448B2B3055456EFB9F1A31CB7229B326A917EB55B19B6E36677893
          BA082D2FF58D7EC761C916F4073F6AB06826DC5635F637DFC1687118900E0F48
          81D9ED9FD05EF3996DB08BF05A8CCF2146BCAF76626D7508C6179A6B46F0A3D1
          ADABB9129AAA033359AA05540D2AE026D1CA0606EAA12A90067687F7072F8725
          4C1BA8CC9F387F1340257BB22D32FA8B0AC6D5A675E40E93FDB2EFD4DDCF7874
          0CD1AFE70A89419167BD9A5D10CC60A62E745E9E9B26691FC15B86D20D0773C3
          D97C8DD73455F4EC7B06721C9A7CE358E4684D1C90C473B8B82A9F5DE1073649
          6566D40A337C99306354CF3C33C219EE26518FA56F48D6A34DACC10F72859EFE
          8A02A837BD9E551BD9BD02D88F9585AD7999298EF45F3B9A21710B000000476C
          6F7742746E2E706E67C90C0000789C01C90C36F389504E470D0A1A0A0000000D
          4948445200000020000000200806000000737A7AF4000000097048597300000B
          1300000B1301009A9C1800000A4F6943435050686F746F73686F702049434320
          70726F66696C65000078DA9D53675453E9163DF7DEF4424B8880944B6F521508
          2052428B801491262A2109104A8821A1D91551C1114545041BC8A088038E8E80
          8C15512C0C8A0AD807E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73E
          E7ACF39DB3CF07C0080C9648335135800CA9421E11E083C7C4C6E1E42E40810A
          2470001008B3642173FD230100F87E3C3C2B22C007BE000178D30B0800C04D9B
          C0301C87FF0FEA42995C01808401C07491384B08801400407A8E42A600404601
          809D98265300A0040060CB6362E300502D0060277FE6D300809DF8997B01005B
          94211501A09100201365884400683B00ACCF568A450058300014664BC43900D8
          2D00304957664800B0B700C0CE100BB200080C00305188852900047B0060C823
          2378008499001446F2573CF12BAE10E72A00007899B23CB9243945815B082D71
          0757572E1E28CE49172B14366102619A402EC27999193281340FE0F3CC0000A0
          911511E083F3FD78CE0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70
          400000E1747ED1FE2C2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F
          40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE
          67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF
          92098462DCE68F47FCB70BFFFC1DD322C44962B9582A14E35112718E449A8CF3
          32A52289429229C525D2FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303
          F64B27105874C0E2F70000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A025
          00806649927100005E44242E54CAB33FC708000044A0812AB0411BF4C1182CC0
          061CC105DCC10BFC6036844224C4C24210420A64801C726029AC82422886CDB0
          1D2A602FD4401D34C051688693700E2EC255B80E3D700FFA61089EC128BC8109
          0441C808136121DA8801628A58238E08179985F821C14804128B2420C9881451
          224B91354831528A542055481DF23D720239875C46BA913BC8003282FC86BC47
          319481B2513DD40CB543B9A8371A8446A20BD06474319A8F16A09BD072B41A3D
          8C36A1E7D0AB680FDA8F3E43C730C0E8180733C46C302EC6C342B1382C099363
          CBB122AC0CABC61AB056AC03BB89F563CFB17704128145C0093604774220611E
          4148584C584ED848A8201C243411DA093709038451C2272293A84BB426BA11F9
          C4186232318758482C23D6128F132F107B8843C437241289433227B9900249B1
          A454D212D246D26E5223E92CA99B34481A2393C9DA646BB20739942C202BC885
          E49DE4C3E433E41BE421F25B0A9D624071A4F853E22852CA6A4A19E510E534E5
          066598324155A39A52DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD
          8316494BA5ADA295D31A681768F769AFE874BA11DD951E4E97D057D2CBE947E8
          97E803F4770C0D861583C7886728199B18071867197718AF984CA619D38B19C7
          54303731EB98E7990F996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AA
          A6AADEAA0B55F355CB548FA95E537DAE46553353E3A909D496AB55AA9D50EB53
          1B5367A93BA887AA67A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BC
          C6200B6319B3782C216B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAA
          A9A13943334A3357B352F394663F07E39871F89C744E09E728A797F37E8ADE14
          EF29E2291BA6344CB931655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6
          BD45BB59FB810E41C74A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5
          AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD
          54FD6DFAA7F5470C5806B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435D
          C34043A561956197E18491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A3
          26062621264B4DEA4DEE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D
          31D732E79BE79BD79BDFB7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E85
          5A3959A558555A5DB346AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1
          B6C9B6A9B719B0E5D806DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D
          8DFD3D070D87D90EAB1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F
          6758CF10CFD833E3B613CB29C4699D539BD347671767B97383F3888B894B82CB
          2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE
          69EE87DC9FCC349F299E593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F43
          4F8167B5E7232F632F9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37
          DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025
          016703898141815B02FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F
          82AD82E5C1AD2168C8EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618B
          C37E0C2785878557863F8E7088581AD131973577D1DC4373DF44FA449644DE9B
          67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B
          1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485
          A716A92E122C3A96404C884E3894F041102AA8168C25F21377258E0A79C21DC2
          67222FD136D188D8435C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B984
          27A990BC4C0D4CDD9B3A9E169A76206D323D3ABD31839291907142AA214D93B6
          67EA67E66676CBAC6585B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6
          E8545A28D72A07B267655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9F
          FFED12C212E192B6A5864B572D1D58E6BDAC6A39B23C7179DB0AE315052B8656
          06AC3CB88AB62A6DD54FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B
          550AE5857DEBDCD7ED5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157F
          D828DC78E51B876FCABF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA
          97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8
          BC65A7C9CECD3B3F54A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634EC
          D5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D
          5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71F
          BEFE9DEF772D0D360D558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BAC
          E107D31F761D671D2F6A429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC
          47DB1F0F9C343C59794AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60
          DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DB
          E51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB5
          7B66F7E91B9E37CEDDF4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD
          7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC
          7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43058F998FCB860D86EB9E383E
          3939E23F72FDE9FCA743CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198
          D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC1
          77DC771DEFA3DF0F4FE47C207F28FF68F9B1F553D0A7FB93199393FF040398F3
          FC63332DDB000000206348524D00007A25000080830000F9FF000080E9000075
          300000EA6000003A980000176F925FC546000001F44944415478DABC575152C5
          200C0C21FA4EE0319C77FF63781A475F013F4C3ADB357D1F2D9519260F2DEC92
          04B214196F457E5BD8F8FDACF3F7222203ECB3BEF9DE92C5148034190BD842E0
          1D6C00F6641C7387D18E0A000678F571A5FF671E1800D6C016F83B7E5B8CDCAE
          041CB6D298C3812E6E0ED608BC251E5A43A0D4CD81D01A1151F24027E0C57BFC
          2E6E37738C76A30016FD053A93400F30F8033A7A6B09F7470810BCC28E5F44E4
          D5ED8D8854088580EB1B801A257176425602EC7E73F09BF70F39D6EE102A4C52
          8DB126BBAFB0D333E0E2736F89E7D6102AE500BAFF2C7846C2F8142981574ABC
          592D4BE20D010E855D40C0E8F46C42203B79309300C75F824076FFC787B31ADF
          1D6B5DD19D5AA01710D0A48E14AE6A4C66562B3B187FEEF37F6F9A880949C4C3
          D9367630D62B511201D1261268893091B88A3305D32E20D03265A424A71A55B5
          59ED416B77F400CAA84EF57C268185BCD043130EAAE70BD4F399049044C372CC
          7A2E087C793D3FDBEEBE1612184C208BFF0C12089EE5C11A820EEA75A19BAB8B
          C8FB0149F610914FB7DF20523B1E494B8E5F49C46687D01C11A50BC57F3D8E46
          39D0413A8FE4649C91E50D3C3090003EA984A47377C0987CE461D2E861827D73
          D4F0DD168B292C7AE669D6F9FCC724834702DED185F5BB2F34F3712A18824159
          5F8044BFF279FE3300C5B44354FFD7D8060000000049454E44AE426082392A0D
          BA}
      end>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.UseExtraLine = True
    MenuSupport.ExtraLineFont.Charset = RUSSIAN_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -17
    MenuSupport.ExtraLineFont.Name = 'Comic Sans MS'
    MenuSupport.ExtraLineFont.Style = [fsItalic]
    SkinDirectory = 'c:\Skins'
    SkinName = 'Mint (internal)'
    SkinInfo = '8.01'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TSpinEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TList' +
      'Box'#13#10'TCheckListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'#13#10'TCategoryButtons' +
      #13#10'TFileListBox'#13#10
    ThirdParty.ThirdButtons = 'TButton'#13#10
    ThirdParty.ThirdBitBtns = 'TBitBtn'#13#10
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'#13#10
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'#13#10
    ThirdParty.ThirdListViews = 'TListView'#13#10
    ThirdParty.ThirdPanels = 'TPanel'#13#10'TPage'#13#10'TGridPanel'#13#10
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'#13#10'TValueListEditor'#13#10
    ThirdParty.ThirdTreeViews = 'TTreeView'#13#10
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TComboBoxEx'#13#10'TColorBox'#13#10
    ThirdParty.ThirdWWEdits = ' '#13#10
    ThirdParty.ThirdVirtualTrees = ' '#13#10
    ThirdParty.ThirdGridEh = ' '#13#10
    ThirdParty.ThirdPageControl = 'TPageControl'#13#10
    ThirdParty.ThirdTabControl = 'TTabControl'#13#10
    ThirdParty.ThirdToolBar = 'TToolBar'#13#10
    ThirdParty.ThirdStatusBar = 'TStatusBar'#13#10
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'#13#10
    ThirdParty.ThirdScrollControl = 'TScrollBox'#13#10
    ThirdParty.ThirdUpDown = 'TUpDown'#13#10
    ThirdParty.ThirdScrollBar = 'TScrollBar'#13#10
    Left = 568
    Top = 344
  end
  object SyntFindDialog1: TSyntFindDialog
    Flags = []
    NoSearchMsg = 'Search string '#39'%s'#39' not found.'
    Control = MemoMapping
    Left = 208
    Top = 416
  end
  object SyntFindDialog2: TSyntFindDialog
    Flags = []
    NoSearchMsg = 'Search string '#39'%s'#39' not found.'
    Control = MemoModel
    Left = 296
    Top = 416
  end
  object SyntFindDialog3: TSyntFindDialog
    Flags = []
    NoSearchMsg = 'Search string '#39'%s'#39' not found.'
    Control = MemoExample
    Left = 392
    Top = 416
  end
  object SyntFindDialog4: TSyntFindDialog
    Flags = []
    NoSearchMsg = 'Search string '#39'%s'#39' not found.'
    Control = MemoDAO
    Left = 480
    Top = 416
  end
end
