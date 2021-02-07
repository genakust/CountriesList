unit uCommand;

interface

uses
  Vcl.ComCtrls;

type
  IListViewCommand = interface
    ['{A9E5D472-C4F5-49F1-BBE1-EF3FCE1F831F}']
    procedure AddItemToList(aImageIndex: integer;
      aCountryName, aComment: string; aListView: TListView);
    procedure DeleteSelectedItem(aListView: TListView);
  end;

  TListViewCommand = class(TInterfacedObject, IListViewCommand)
  private

  public
    constructor Create;
    destructor Destroy; override;
    ///<summary> Add item to a given listView
    /// </summary>
    /// <param name="aImageIndex">Image index from an ImageList
    /// </param>
    /// <param name="aCountryName">A new country name
    /// </param>
    /// <param name="aComment">A new comment or number of residents
    /// </param>
    /// <param name="aComment">A ListView to add an new item
    /// </param>
    /// <remarks> If ListView is null it is nothing to happen
    /// </remarks>
    procedure AddItemToList(aImageIndex: integer;
      aCountryName, aComment: string; aListView: TListView);
    procedure DeleteSelectedItem(aListView: TListView);
  end;

implementation

{ TListViewCommand }

procedure TListViewCommand.AddItemToList(aImageIndex: integer;
  aCountryName, aComment: string; aListView: TListView);
var
  newItem: TListItem;
  I: integer;
begin
  if (Assigned(aListView)) then
  begin
    aListView.items.BeginUpdate;
    try
      newItem := aListView.items.Add;
      for I := 0 to 2 do
        newItem.SubItems.Add('');
      newItem.ImageIndex := aImageIndex;
      newItem.SubItems[0] := aCountryName;
      newItem.SubItems[1] := aComment;
    finally
      aListView.items.EndUpdate;
    end;
  end;
end;

constructor TListViewCommand.Create;
begin
  inherited;
end;

procedure TListViewCommand.DeleteSelectedItem(aListView: TListView);
begin
  if (Assigned(aListView)) and (aListView.SelCount <> 0) then
    aListView.DeleteSelected;
end;

destructor TListViewCommand.Destroy;
begin

  inherited;
end;

end.
