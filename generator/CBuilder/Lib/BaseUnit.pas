{********************************************************************}
{                                                                    }
{   单元名：    BaseUnit                                             }
{                                                                    }
{   作者：      谢少华                                               }
{                                                                    }
{   版本：      V1.0                                                 }
{                                                                    }
{   日期：      2010/3/10                                            }
{                                                                    }
{   用途与描述：提供xSQL的基本函数、工具方法。                       }
{                                                                    }
{********************************************************************}

unit BaseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, ecSyntMemo,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinsdxRibbonPainter, dxRibbon, dxRibbonForm,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

var
  AppPath:String;     // 工程路径
  AppName:String;     // 程序名
  function getTopUpperChar(str:String):String;
  function getTopLowerChar(str:String):String;
  procedure getAuthor(Memo: TSyntaxMemo; UserName: String);
  procedure SetRowNumber(var ASender: TcxGridTableView; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
     var ACanvas: TcxCanvas; var ADone: boolean; P:Boolean);

implementation

function getTopUpperChar(str:String):String;
var
  l: Integer;
  t1, t2: String;
begin
  l := length(str);
  t1 := copy(str, 1, 1);
  t2 := copy(str, 2, l);
  result := UpperCase(t1) + t2;
end;

function getTopLowerChar(str:String):String;
var
  l: Integer;
  t1, t2: String;
begin
  l := length(str);
  t1 := copy(str, 1, 1);
  t2 := copy(str, 2, l);
  result := LowerCase(t1) + t2;
end;

procedure getAuthor(Memo: TSyntaxMemo; UserName: String);
begin
  Memo.Clear;
  Memo.Lines.Append('/**');
  Memo.Lines.Append(' * author: ' + UserName);
  Memo.Lines.Append(' * ');
  Memo.Lines.Append(' * date: ' + FormatDateTime('yyyy-mm-dd hh:nn', now));
  Memo.Lines.Append(' */');
end;

procedure SetRowNumber(var ASender: TcxGridTableView; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
   var ACanvas: TcxCanvas; var ADone: boolean; P:Boolean);
var
   AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
   ATextRect: TRect;
   AFont: TFont;
   AFontTextColor, AColor: TColor;
begin
   AFont := ACanvas.Font;
   AColor := clBtnFace;
   AFontTextColor := clWindowText ;
   if (AViewInfo is TcxGridIndicatorHeaderItemViewInfo) then
   begin
      ATextRect := AViewInfo.Bounds;
      InflateRect(ATextRect, -1, -1);

      ASender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.Bounds,
         ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
         False, False, '', AFont, AFontTextColor, AColor);  //  '序号'
        ADone := True;
   end ;

   if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
     Exit;

   ATextRect := AViewInfo.ContentBounds;
   AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
   InflateRect(ATextRect, -1, -1);
   ASender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
      ATextRect, [], [bBottom, bLeft, bRight], cxbsNormal, taCenter, vaCenter,
      False, False, IntToStr(AIndicatorViewInfo.GridRecord.Index + 1),
      AFont, AFontTextColor, AColor);
   ADone := True;

   if (P) then
      ASender.LookAndFeelPainter.DrawIndicatorImage(ACanvas, ATextRect, AIndicatorViewInfo.IndicatorKind);
end;

end.
