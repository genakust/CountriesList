program ProjectCountryList;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {Form1},
  uItem in 'uItem.pas',
  uManager in 'uManager.pas',
  uFileController in 'uFileController.pas',
  uUtills in 'uUtills.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
