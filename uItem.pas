unit uItem;

interface
uses
  System.SysUtils, System.Generics.Collections;
type

  IGetItems = interface
    ['{6AD33FDC-080E-4390-9D1D-F693E8B424FF}']

  end;

  ///<summary>
  /// ein ListView Item
  ///</summary>
  TMyItem = class
  private
    FFlagName: string;
    FCountry: string;
    FComment: string;
  public
    constructor Create; overload;
    constructor Create(aFlagName, aCountry, aComment: string); overload;
    destructor Destroy; override;
    property FlagName: string read FFlagName write FFlagName;
  end;

  ///<summary>
  /// eine Liste der Items
  ///</summary>
  TMyItems<T: class> = class
  private
    FItemsList: TObjectList<T>;
    function GetItemsList: TObjectList<T>;
    procedure SetItemsList(const Value: TObjectList<T>);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(aItem: T);
    property ItemsList: TObjectList<T> read GetItemsList write SetItemsList;
  end;

implementation

{$REGION '< TMyItem >'}

constructor TMyItem.Create;
begin
  inherited Create;
  FFlagName := EmptyStr;
  FCountry := EmptyStr;
  FComment := EmptyStr;
end;

constructor TMyItem.Create(aFlagName, aCountry, aComment: string);
begin
  FFlagName := aFlagName;
  FCountry := aCountry;
  FComment := aComment;
end;

destructor TMyItem.Destroy;
begin

  inherited;
end;
{$ENDREGION}

{$REGION '< TMyItems<TMyItem> >'}

procedure TMyItems<T>.Add(aItem: T);
begin
  FItemsList.Add(aItem);
end;

constructor TMyItems<T>.Create;
begin
  inherited;
   FItemsList:= TObjectList<T>.Create;
end;

destructor TMyItems<T>.Destroy;
begin
  if Assigned(FItemsList) then
  begin
    FItemsList.Clear;
    FItemsList.Free;
  end;
  inherited;
end;

function TMyItems<T>.GetItemsList: TObjectList<T>;
begin
  result:= FItemsList;
end;

procedure TMyItems<T>.SetItemsList(const Value: TObjectList<T>);
begin
   FItemsList:= Value;
end;

{$ENDREGION}

end.
