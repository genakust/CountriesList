unit uUtills;

interface

uses
  System.Classes, Vcl.Dialogs, System.SysUtils;

type

  IGetFileName = interface
    ['{A75709F5-FE06-4B78-A20A-65317CA8C5B7}']
    function GetFileNameFromDialog: string;
    function GetImageNameFromFile: string;
  end;

  TMyUtills = class
  public
    class procedure Split(Delimiter: Char; Str: string; stringList: TStrings);
  end;

  TMyDialog = class(TInterfacedObject, IGetFileName)
  private
    FDlg: TOpenDialog;
  public
    constructor Create;
    destructor Destroy; override;
    function GetFileNameFromDialog: string;
    function GetImageNameFromFile: string;
  end;

implementation

{$REGION '< TMyUtills >'}

class procedure TMyUtills.Split(Delimiter: Char; Str: string;
  stringList: TStrings);
begin
  stringList.Clear;
  stringList.Delimiter := Delimiter;
  stringList.StrictDelimiter := True; // Requires D2006 or newer.
  stringList.DelimitedText := Str;
end;
{$ENDREGION}

{$REGION '< TMyDialog >'}

constructor TMyDialog.Create;
begin
  inherited;

  FDlg := TOpenDialog.Create(nil);
  FDlg.InitialDir := 'C:\';
end;

destructor TMyDialog.Destroy;
begin
  if Assigned(FDlg) then
    FDlg.Free;

  inherited;
end;

function TMyDialog.GetFileNameFromDialog: string;
var
  fileName: string;
begin
  fileName := EmptyStr;
  FDlg.Filter := 'Text files (*.txt)|*.TXT';
  if FDlg.Execute then
  begin
    fileName := FDlg.fileName;
  end;
  result := fileName;
end;

function TMyDialog.GetImageNameFromFile: string;
var
  fileName: string;
begin
  fileName := EmptyStr;
  FDlg.Filter := 'All files (*.*)|*.*';
  if FDlg.Execute then
  begin
    fileName := FDlg.fileName;
  end;
  result := fileName;
end;

{$ENDREGION}

end.
