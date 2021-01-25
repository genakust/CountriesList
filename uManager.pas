unit uManager;

interface

uses
  uFileController, uUtills, uItem;

type
  TMyManager = class
    FFileName: string;
    FFileController: TFileController;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Prepare;
  end;

implementation

uses
  System.SysUtils;

{ TMyManager }

constructor TMyManager.Create;
begin
  inherited;
  FFileController := TFileController.Create;
  FFileName:= EmptyStr;
end;

destructor TMyManager.Destroy;
begin
  if Assigned(FFileController) then
    FFileController.Free;
  inherited;
end;

procedure TMyManager.Prepare;
var
  dlg: IGetFileName;
  fileName: string;
  items: IGetItems<TMyItem>;
begin
  // die Textdatei auswählen
  dlg := TMyDialog.Create;
  fileName := dlg.GetTextFileNameFromDialog;
  // Items mit Inhalt füllen
  items := FFileController.ReadItemsFromFile(fileName);
  // Ordner, wo die Bilder liegen
  FFileName:= ExtractFilePath(fileName);
end;

end.
