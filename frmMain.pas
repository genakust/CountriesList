unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, System.Rtti,
  uItem, Vcl.Bind.GenData, Data.Bind.ObjectScope, Data.Bind.Components,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt,
  uManager, Vcl.Menus, Vcl.ExtDlgs,
  pngimage, uUtills;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Bearbeiten1: TMenuItem;
    ffnen1: TMenuItem;
    imglFlags: TImageList;
    lschen1: TMenuItem;
    N1: TMenuItem;
    neuerEintrag1: TMenuItem;
    panListView: TPanel;
    lvCountries: TListView;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOeffnenClick(Sender: TObject);
    procedure btnLoeschenClick(Sender: TObject);
    procedure neuerEintragClick(Sender: TObject);
  private
    FManager: TMyManager;
    procedure CreateColumns;
    procedure AddItemToList(aImageIndex: integer;
      aCountryName, aComment: string);
    function AddImageToImgList(aFileName: string): integer;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses
  uFileController, frmNewItem;

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
  AddItemToList(0, 'country1', 'comment1');
end;

{$ENDREGION}
{$REGION '< Buttons Events >'}

procedure TForm1.neuerEintragClick(Sender: TObject);
var
  frmNewItem: TfrmPrepareNewItem;
  newName, newComment: string;
  index: Integer;
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
      index:= AddImageToImgList(frmNewItem.ImageFileName);
      // finally add a new item
      AddItemToList(index,newName,newComment);
    end;
  finally
    frmNewItem.Free;
  end;
end;

procedure TForm1.btnLoeschenClick(Sender: TObject);
begin
  if lvCountries.SelCount <> 0 then
    lvCountries.DeleteSelected;
end;

procedure TForm1.btnOeffnenClick(Sender: TObject);
begin
  FManager.Prepare;
end;
{$ENDREGION}

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

{$REGION '< New Item >'}

function TForm1.AddImageToImgList(aFileName: string): integer;
var
  bmp: TBitmap;
  stream: TMemoryStream;
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
  lvCountries.Items.BeginUpdate;
  try
    newItem := lvCountries.Items.Add;
    for I := 0 to 2 do
      newItem.SubItems.Add('');
    newItem.ImageIndex := aImageIndex;
    newItem.SubItems[0] := aCountryName;
    newItem.SubItems[1] := aComment;
  finally
    lvCountries.Items.EndUpdate;
  end;
end;
{$ENDREGION}

initialization

ReportMemoryLeaksOnShutdown := true;

end.
