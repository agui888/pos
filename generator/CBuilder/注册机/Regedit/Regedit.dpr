program Regedit;

uses
  Forms,
  Un_Main in 'Un_Main.pas' {Fm_Main},
  AES in 'AES.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ע���';
  Application.CreateForm(TFm_Main, Fm_Main);
  Application.Run;
end.
