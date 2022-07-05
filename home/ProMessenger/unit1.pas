unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  s, name: string;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     s:= FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
	 ListBox1.Items.Add(name + ' (' + s + ')' + ' — ' + Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	 name:= 'Anton';
end;

end.

