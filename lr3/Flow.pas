unit Flow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    FileListBox2: TFileListBox;
    Button1: TButton;
    DriveComboBox1: TDriveComboBox;
    DriveComboBox2: TDriveComboBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var s,d :TFileStream;
begin
  s:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  d:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite OR fmCreate);
  d.CopyFrom(s, s.Size);
  d.Free;
  s.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var s,d :TFileStream;
    i:integer;
begin
  s:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  d:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite OR fmCreate);
  for i:= 0 to (s.Size-5) do
  begin
     d.CopyFrom(s, 1);
  end;

  s.Free;
  d.Free;


end;

end.
