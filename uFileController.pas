unit uFileController;

interface

uses
  System.Classes, uUtills, uItem;

type
  TFileController = class
  private const
    cDelimiter = ';';
  public
    constructor Create;
    destructor Destroy; override;
    procedure OpenAndReadFile;
    function ReadItemsFromFile(aFileName: string): IGetItems;
  end;

implementation

uses
  Vcl.Dialogs;

{ TFileController }

constructor TFileController.Create;
begin
  inherited;
end;

destructor TFileController.Destroy;
begin

  inherited;
end;

procedure TFileController.OpenAndReadFile;
var
  dlg: IGetFileName;
  tf: TextFile;
  line, fileName: string;
  outPutList: TStringList;
begin
  dlg := TMyDialog.Create;
  fileName:= dlg.GetFileNameFromDialog;
  if fileName <> '' then
  begin
    AssignFile(tf, fileName);
    Reset(tf);
    repeat
      readln(tf, line);
      outPutList := TStringList.Create;
      try
        TMyUtills.Split(cDelimiter, line, outPutList);
      finally
        outPutList.Free;
      end;
    until (Eof(tf));
  end;
end;

function TFileController.ReadItemsFromFile(aFileName: string): IGetItems;
begin

end;

end.
