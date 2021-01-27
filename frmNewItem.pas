unit frmNewItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    FFileName: string;
    { Properties }
    function GetCountryName: string;
    function GetComment: string;
  public
    constructor Create(aOwner: TComponent); override;
    property CountryName: string read GetCountryName;
    property Comment: string read GetComment;
    /// <summary>
    /// it gets the image file name
    /// </summary>
    /// <remarks>
    /// for example: flag_spain
    /// </remarks>
    property ImageFileName: string read FFileName;
  end;

var
  frmPrepareNewItem: TfrmPrepareNewItem;

implementation

{$R *.dfm}

procedure TfrmPrepareNewItem.btnAddItemToListClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TfrmPrepareNewItem.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrepareNewItem.btnLoadImageClick(Sender: TObject);
var
  openFileDlg: IGetFileName;
  image: TPngImage;
begin
  // find an image
  openFileDlg := TMyDialog.Create;
  FFileName := openFileDlg.GetImageNameFromFile;
  if not(FFileName = EmptyStr) then
  begin
    try
      // load an image from file
      image := TFileController.GetImageFromFile(FFileName);
      imgNewFlag.Picture.Graphic := image;
    finally
      image.Free;
    end;
  end;
end;

{$REGION '< Create and Co. >'}

constructor TfrmPrepareNewItem.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  FFileName := EmptyStr;
end;
{$ENDREGION}
{$REGION '< Properties >'}

function TfrmPrepareNewItem.GetComment: string;
begin
  Result := edtComment.Text;
end;

function TfrmPrepareNewItem.GetCountryName: string;
begin
  Result := edtCountryName.Text;
end;
{$ENDREGION}

end.
