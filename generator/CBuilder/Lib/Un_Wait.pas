{********************************************************************}
{                                                                    }
{   ��Ԫ����    Un_Wait                                              }
{                                                                    }
{   ���ߣ�      л�ٻ�                                               }
{                                                                    }
{   �汾��      V1.0                                                 }
{                                                                    }
{   ���ڣ�      2010/3/10                                            }
{                                                                    }
{   ��;����������һ�ĵȴ�����,�ڽ�gif��ͼ,gif��ͨ��res�ļ�ȡ��.     }
{                                                                    }
{********************************************************************}

unit Un_Wait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, GIFImg, ExtCtrls, StdCtrls;

type
  TFm_Wait = class(TForm)
    WaitPanel: TPanel;
    LoadImage: TImage;
    LabelInfo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCursor: TCursor;
  public
    { Public declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    class procedure Execute(const AMsg: String = '');
  end;
var
  Fm_Wait: TFm_Wait;

implementation

{$R *.dfm}

procedure TFm_Wait.CreateParams(var Params: TCreateParams);
begin
  inherited;
  // inherited CreateParams(Params) ;
  //Params.Style := Params.Style xor WS_CAPTION ;
end;

class procedure TFm_Wait.Execute(const AMsg: String);
begin
  with TFm_Wait.Create(Application) do
  begin
    if AMsg<>'' then
       LabelInfo.Caption:=AMsg;
    FCursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    PostMessage(Handle, WM_CLOSE, 0, 0);
    Show;
    TGIFImage(LoadImage.Picture.Graphic).AnimationSpeed := 100;
    TGIFImage(LoadImage.Picture.Graphic).Animate := True;
    Refresh;
  end;
end;

procedure TFm_Wait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Screen.Cursor := FCursor;
end;

end.
