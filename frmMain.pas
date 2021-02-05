unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, System.Rtti,
  uItem, Vcl.Bind.GenData, Data.Bind.ObjectScope, Data.Bind.Components,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  uManager, Vcl.Menus, Vcl.ExtDlgs, uListViewSort,
  pngimage, uUtills, System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Bearbeiten1: TMenuItem;
    ffnen1: TMenuItem;
    imglFlags: TImageList;
    loeschen: TMenuItem;
    N1: TMenuItem;
    neuerEintrag1: TMenuItem;
    panListView: TPanel;
    lvCountries: TListView;
    ActionList1: TActionList;
    ActionFileOeffnen: TAction;
    ActionItemLoeschen: TAction;
    ActionAddItem: TAction;
    ActionListViewClick: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lvCountriesColumnClick(Sender: TObject; Column: TListColumn);
    procedure ActionItemLoeschenExecute(Sender: TObject);
    procedure ActionFileOeffnenExecute(Sender: TObject);
    procedure ActionAddItemExecute(Sender: TObject);
    procedure ActionListViewClickExecute(Sender: TObject);
  private
    FManager: TMyManager;
    procedure CreateColumns;
    procedure AddItemToList(aImageIndex: integer;
      aCountryName, aComment: string);
    function AddImageToImgList(aFileName: string): integer;
    procedure EnableItemDelete;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses
  uFileController, frmNewItem, uCommand;

{$R *.dfm}
{$REGION '< Form Create/Show and Co. >'}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FManager := TMyManager.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FManager) then
  begin
    FManager.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  CreateColumns;
end;

{$ENDREGION}
{$REGION '< Collumns >'}

procedure TForm1.CreateColumns;
var
  newCol: TListColumn;
begin
  newCol := lvCountries.Columns.Add;
  newCol.Caption := 'Flag';
  newCol.Alignment := taLeftJustify;
  newCol.Width := 100;

  newCol := lvCountries.Columns.Add;
  newCol.Caption := 'Country';
  newCol.Alignment := taLeftJustify;
  newCol.Width := 140;

  newCol := lvCountries.Columns.Add;
  newCol.Caption := 'Comment';
  newCol.Alignment := taLeftJustify;
  newCol.Width := 140;
end;

procedure TForm1.lvCountriesColumnClick(Sender: TObject; Column: TListColumn);
var
  colToSort: integer;
begin
  // which colum was clicked?
  colToSort := Column.index;
  { determine the sort style }
  if (colToSort = 1) or (colToSort = 2) then
    LvSortStyle := cssAlphaNum
  else
    LvSortStyle := cssNumeric;

  { Call the CustomSort method }
  lvCountries.CustomSort(@CustomSortProc, Column.index - 1);

  { Set the sort order for the column }
  LvSortOrder[Column.index] := not LvSortOrder[Column.index];
end;
{$ENDREGION}
{$REGION '< Actions >'}

procedure TForm1.ActionAddItemExecute(Sender: TObject);
var
  frmNewItem: TfrmPrepareNewItem;
  newName, newComment: string;
  index: integer;
begin
  // Showing the form for the input of new data
  frmNewItem := TfrmPrepareNewItem.Create(nil);
  try
    frmNewItem.ShowModal;
    if frmNewItem.ModalResult = mrOk then
    begin
      // receive the new data
      newName := frmNewItem.CountryName;
      newComment := frmNewItem.Comment;
      // try to add a new image to the imagelist
      index := AddImageToImgList(frmNewItem.ImageFileName);
      // finally add a new item
      AddItemToList(index, newName, newComment);
    end;
  finally
    frmNewItem.Free;
  end;
end;

procedure TForm1.ActionFileOeffnenExecute(Sender: TObject);
const
  cPNG = 'png';
var
  items: IGetItems<TMyItem>;
  item: TMyItem;
  index: integer;
  fileName: string;
begin
  items := FManager.Prepare;
  for item in items.ItemsList do
  begin
    // set the file name
    fileName := Format(FManager.fileName + '%s.%s', [item.FlagName, cPNG]);
    // try to add a new image to the imagelist
    index := AddImageToImgList(fileName);
    // finally add a new item
    AddItemToList(index, item.Country, item.Comment);
  end;
end;

procedure TForm1.ActionItemLoeschenExecute(Sender: TObject);
var
  deleteObj: IListViewCommand;
begin
  // delete selected item
  deleteObj:= TListViewCommand.Create;
  deleteObj.DeleteSelectedItem(lvCountries);
  EnableItemDelete;
end;

procedure TForm1.ActionListViewClickExecute(Sender: TObject);
begin
  EnableItemDelete;
end;

{$ENDREGION}
{$REGION '< New Item >'}

function TForm1.AddImageToImgList(aFileName: string): integer;
var
  bmp: TBitmap;
  pngImg: TPngImage;
begin
  Result := -1;
  if not FileExists(aFileName) then
    Exit;
  pngImg := TPngImage.Create;
  try
    pngImg.LoadFromFile(aFileName);
    bmp := TBitmap.Create;
    try
      pngImg.AssignTo(bmp);
      Result := imglFlags.Add(bmp, nil);
    finally
      bmp.Free;
    end;
  finally
    pngImg.Free;
  end;
end;

procedure TForm1.AddItemToList(aImageIndex: integer;
  aCountryName, aComment: string);
var
  newItem: TListItem;
  I: integer;
begin
  lvCountries.items.BeginUpdate;
  try
    newItem := lvCountries.items.Add;
    for I := 0 to 2 do
      newItem.SubItems.Add('');
    newItem.ImageIndex := aImageIndex;
    newItem.SubItems[0] := aCountryName;
    newItem.SubItems[1] := aComment;
  finally
    lvCountries.items.EndUpdate;
  end;
end;
{$ENDREGION}


procedure TForm1.EnableItemDelete;
begin
  (FindComponent('loeschen') as TMenuItem).Enabled :=
    lvCountries.Selected <> nil;
end;

initialization

ReportMemoryLeaksOnShutdown := true;

end.
