unit Un_ClassBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, cxButtons;

type
  TFm_ClassBox = class(TForm)
    TopPanel: TPanel;
    Image1: TImage;
    LabelCaption: TLabel;
    LinePanel: TPanel;
    PanelLine: TPanel;
    ButtonEnter: TcxButton;
    ButtonCancel: TcxButton;
    procedure ButtonCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_ClassBox: TFm_ClassBox;

implementation

{$R *.dfm}

procedure TFm_ClassBox.ButtonCancelClick(Sender: TObject);
begin
  Close;
end;

end.
