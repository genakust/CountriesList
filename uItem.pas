unit uItem;

interface

uses
  System.SysUtils, System.Generics.Collections;

type

  IGetItems<T: class> = interface
    ['{6AD33FDC-080E-4390-9D1D-F693E8B424FF}']
    function GetItemsList: TObjectList<T>;
    procedure SetItemsList(const Value: TObjectList<T>);
    property ItemsList: TObjectList<T> read GetItemsList write SetItemsList;
    procedure Add(aItem: T);
  end;

  /// <summary>
  /// ein Item aus der Datei
  /// </summary>
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
    property Country: string read FCountry write FCountry;
    property Comment: string read FComment write FComment;
  end;

  /// <summary>
  /// eine Liste der Items
  /// </summary>
  TMyItems<T: class> = class(TInterfacedObject, IGetItems<T>)
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
  FItemsList := TObjectList<T>.Create;
  FItemsList.OwnsObjects := true;
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
  result := FItemsList;
end;

procedure TMyItems<T>.SetItemsList(const Value: TObjectList<T>);
begin
  FItemsList := Value;
end;

{$ENDREGION}

end.
