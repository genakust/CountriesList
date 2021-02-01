program ProjectCountryList;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {Form1},
  uItem in 'uItem.pas',
  uManager in 'uManager.pas',
  uFileController in 'uFileController.pas',
  uUtills in 'uUtills.pas',
  frmNewItem in 'frmNewItem.pas' {frmPrepareNewItem},
  uListViewSort in 'uListViewSort.pas',
  uCommand in 'uCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPrepareNewItem, frmPrepareNewItem);
  Application.Run;
end.
