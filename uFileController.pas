unit uFileController;

interface

uses
  System.Classes, uUtills, uItem, pngimage;

type
  TFileController = class
  private const
    cDelimiter = ';';
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// open and read a text file with countries
    /// </summary>
    procedure OpenAndReadFile;
    function ReadItemsFromFile(aFileName: string): IGetItems;
    /// <summary>
    /// load an image from file
    /// </summary>
    /// <param name="aFileName">
    /// file name
    /// </param>
    /// <remarks>
    /// the returned image should be deleted from the memory
    /// </remarks>
    class function GetImageFromFile(aFileName: string): TPngImage;
  end;

implementation

uses
  Vcl.Dialogs;

{ TFileController }

constructor TFileController.Create;
begin
  inherited;
end;

destructor TFileController.Destroy;
begin

  inherited;
end;

class function TFileController.GetImageFromFile(aFileName: string): TPngImage;
var
  stream: TMemoryStream;
begin
  stream := TMemoryStream.Create;
  try
    result := TPngImage.Create;
    stream.LoadFromFile(aFileName);
    stream.Position := 0;
    result.LoadFromStream(stream);
  finally
    stream.Free;
  end;
end;

procedure TFileController.OpenAndReadFile;
var
  dlg: IGetFileName;
  tf: TextFile;
  line, fileName: string;
  outPutList: TStringList;
begin
  dlg := TMyDialog.Create;
  fileName := dlg.GetTextFileNameFromDialog;
  if fileName <> '' then
  begin
    AssignFile(tf, fileName);
    Reset(tf);
    repeat
      readln(tf, line);
      outPutList := TStringList.Create;
      try
        TMyUtills.Split(cDelimiter, line, outPutList);
      finally
        outPutList.Free;
      end;
    until (Eof(tf));
  end;
end;

function TFileController.ReadItemsFromFile(aFileName: string): IGetItems;
begin

end;

end.
