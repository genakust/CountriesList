unit uCommand;

interface

uses
  Vcl.ComCtrls;

type
  IListViewCommand = interface
    ['{A9E5D472-C4F5-49F1-BBE1-EF3FCE1F831F}']
    procedure AddItemToList;
    procedure DeleteSelectedItem(aListView: TListView);
  end;

  TListViewCommand = class(TInterfacedObject, IListViewCommand)
  private

  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItemToList;
    procedure DeleteSelectedItem(aListView: TListView);
  end;

implementation

{ TListViewCommand }

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

procedure TListViewCommand.AddItemToList;
begin

end;

end.
