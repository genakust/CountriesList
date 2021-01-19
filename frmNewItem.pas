unit frmNewItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  pngimage, uUtills, uFileController;

type
  TfrmPrepareNewItem = class(TForm)
    panNewItem: TPanel;
    labCountryName: TLabel;
    labComment: TLabel;
    labFlag: TLabel;
    edtCountryName: TEdit;
    edtComment: TEdit;
    imgNewFlag: TImage;
    btnLoadImage: TButton;
    btnAddItemToList: TButton;
    panBottom: TPanel;
    btnCancel: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddItemToListClick(Sender: TObject);
    procedure btnLoadImageClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmPrepareNewItem: TfrmPrepareNewItem;

implementation

{$R *.dfm}

procedure TfrmPrepareNewItem.btnAddItemToListClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrepareNewItem.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrepareNewItem.btnLoadImageClick(Sender: TObject);
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

end.
