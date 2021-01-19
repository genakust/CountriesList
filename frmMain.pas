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
    panForm: TPanel;
    panListView: TPanel;
    panRight: TPanel;
    Splitter1: TSplitter;
    lvCountries: TListView;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Bearbeiten1: TMenuItem;
    ffnen1: TMenuItem;
    imglFlags: TImageList;
    edtCountryName: TEdit;
    labCountryName: TLabel;
    labComment: TLabel;
    edtComment: TEdit;
    labFlag: TLabel;
    imgNewFlag: TImage;
    btnLoadImage: TButton;
    lschen1: TMenuItem;
    btnAddItemToList: TButton;
    panNewItem: TPanel;
    Label1: TLabel;
    panNewImage: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOeffnenClick(Sender: TObject);
    procedure btnLoeschenClick(Sender: TObject);
    /// <summary>
    /// add a new flag
    /// </summary>
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnAddItemToListClick(Sender: TObject);
  private
    FManager: TMyManager;
    procedure CreateColumns;
    procedure AddItemToList(aImageIndex: integer;
      aCountryName, aComment: string);
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses
  uFileController;

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

procedure TForm1.btnAddItemToListClick(Sender: TObject);
var
  index: integer;
  bmp: TBitmap;
  stream: TMemoryStream;
begin
  
end;

procedure TForm1.btnLoadImageClick(Sender: TObject);
var
  openFileDlg: IGetFileName;
  fileName: string;
  image: TPngImage;
begin
  // find an image
  openFileDlg := TMyDialog.Create;
  fileName := openFileDlg.GetImageNameFromFile;
  if not(fileName = EmptyStr) then
  begin
    try
      // load an image from file
      image := TFileController.GetImageFromFile(fileName);
      imgNewFlag.Picture.Graphic := image;
    finally
      image.Free;
    end;
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

initialization

ReportMemoryLeaksOnShutdown := true;

end.
