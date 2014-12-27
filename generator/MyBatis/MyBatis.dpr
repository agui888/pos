program MyBatis;

uses
  Forms,
  Un_Main in 'Lib\Un_Main.pas' {Fm_Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFm_Main, Fm_Main);
  Application.Run;
end.
