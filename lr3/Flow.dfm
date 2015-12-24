object Form1: TForm1
  Left = 198
  Top = 150
  Width = 870
  Height = 389
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DirectoryListBox1: TDirectoryListBox
    Left = 16
    Top = 48
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 0
  end
  object FileListBox1: TFileListBox
    Left = 16
    Top = 152
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object DirectoryListBox2: TDirectoryListBox
    Left = 184
    Top = 48
    Width = 145
    Height = 97
    FileList = FileListBox2
    ItemHeight = 16
    TabOrder = 2
  end
  object FileListBox2: TFileListBox
    Left = 184
    Top = 152
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Copy_all'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DriveComboBox1: TDriveComboBox
    Left = 16
    Top = 16
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 5
  end
  object DriveComboBox2: TDriveComboBox
    Left = 184
    Top = 16
    Width = 145
    Height = 19
    DirList = DirectoryListBox2
    TabOrder = 6
  end
  object Button2: TButton
    Left = 104
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Copy_part'
    TabOrder = 7
    OnClick = Button2Click
  end
end
