unit uManager;

interface

uses
  uFileController;

type
  TMyManager = class
    FFileController: TFileController;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Prepare;
  end;

implementation

{ TMyManager }

constructor TMyManager.Create;
begin
  inherited;
  FFileController := TFileController.Create;
end;

destructor TMyManager.Destroy;
begin
  if Assigned(FFileController) then
    FFileController.Free;
  inherited;
end;

procedure TMyManager.Prepare;
begin
  FFileController.OpenAndReadFile;
end;

end.
