program HTTP;

uses
  Forms,
  Un_Main in 'Un_Main.pas' {Fm_Main},
  LoginThread in 'LoginThread.pas',
  LogsThread in 'LogsThread.pas',
  InsertThread in 'InsertThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFm_Main, Fm_Main);
  Application.Run;
end.
