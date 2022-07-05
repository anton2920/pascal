unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, ExtCtrls, Spin, Buttons, Types, process;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    FloatSpinEdit1: TFloatSpinEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit7DblClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit8DblClick(Sender: TObject);
    procedure FloatSpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;
  a: boolean;
  str, i, j: integer;
  fstr, col, coli, col2, coli2, lines, grid, xmin, xmax, perL, perG, mm, znach: string;
  ch:char;
  thickness: real;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.CheckBox1Change(Sender: TObject);
begin
     if a = False then
        begin
            a:= True;
            Label5.Visible:= True;
            Label6.Visible:= True;
            Label7.Visible:= True;
            Label8.Visible:= True;
            Edit3.Visible:= True;
            Edit4.Visible:= True;
            Edit5.Visible:= True;
            Edit6.Visible:= True;
            case ComboBox1.ItemIndex of
        	 2: begin
                Label8.Visible:= False;
                Edit6.Visible:=False;
             end;
             4: begin
                Label8.Visible:= False;
                Edit6.Visible:=False;
                Label7.Visible:= False;
                Edit5.Visible:=False;
                Label6.Visible:= False;
                Edit4.Visible:=False;
             end;
             5: begin
             	Label8.Visible:= False;
                Edit6.Visible:=False;
                Label7.Visible:= False;
                Edit5.Visible:=False;
             end;
        	end;
		 end
        else
         begin
              a:= False;
            Label5.Visible:= False;
            Label6.Visible:= False;
            Label7.Visible:= False;
            Label8.Visible:= False;
            Edit3.Visible:= False;
            Edit4.Visible:= False;
            Edit5.Visible:= False;
            Edit6.Visible:= False;
         end;
end;

procedure TForm2.CheckBox2Change(Sender: TObject);
begin
  	 if lines = '0' then
        begin
        	 lines:= '1';
        	 CheckBox4.Enabled:= True;
        end
     else
     	 begin
         	  lines:= '0';
              CheckBox4.Enabled:= False;
     	 	  CheckBox4.Checked:= False;
     	 end;
end;

procedure TForm2.CheckBox3Change(Sender: TObject);
begin
     if grid = '0' then
        grid:= '1'
     else
         grid:= '0';
end;

procedure TForm2.CheckBox4Change(Sender: TObject);
begin
    if perL = '0' then
       perL:= '1'
    else
        perL:= '0';
end;

procedure TForm2.CheckBox5Change(Sender: TObject);
begin
  	 if perG = '0' then
        perG:= '1'
     else
         perG:='0';
end;

procedure TForm2.CheckBox6Change(Sender: TObject);
begin
  	 if mm = '0' then
        mm:= '1'
     else
         mm:= '0';
end;

procedure TForm2.CheckBox7Change(Sender: TObject);
begin
	 if znach = '0' then
        znach:= '1'
     else
         znach:='0';
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  	 Button2.Enabled:= True;
     if (a = True) then
        case ComboBox1.ItemIndex of
        	 2: begin
                Label8.Visible:= False;
                Edit6.Visible:=False;
             end;
             4: begin
                Label8.Visible:= False;
                Edit6.Visible:=False;
                Label7.Visible:= False;
                Edit5.Visible:=False;
                Label6.Visible:= False;
                Edit4.Visible:=False;
             end;
             5: begin
             	Label8.Visible:= False;
                Edit6.Visible:=False;
                Label7.Visible:= False;
                Edit5.Visible:=False;
             end
        else
          	begin
                Label5.Visible:= True;
            	Label6.Visible:= True;
            	Label7.Visible:= True;
            	Label8.Visible:= True;
            	Edit3.Visible:= True;
            	Edit4.Visible:= True;
            	Edit5.Visible:= True;
            	Edit6.Visible:= True;
            end;
        end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
     xmin:= Edit1.Text;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
  	 xmax:= Edit2.Text;
end;

procedure TForm2.Edit7Change(Sender: TObject);
begin
  	 if Edit7.Text = '' then
     	Button3.Enabled:= False
     else
         Button3.Enabled:= True;
end;

procedure TForm2.Edit7DblClick(Sender: TObject);
begin
  	 if ColorDialog1.Execute then
        begin
			 Edit7.Text:= ColorToString(ColorDialog1.Color);
     		 coli:=  ColorToString(ColorDialog1.Color);
        end;
end;

procedure TForm2.Edit8Change(Sender: TObject);
begin
 	 if Edit8.Text = '' then
     	Button4.Enabled:= False
     else
         Button4.Enabled:= True;
end;

procedure TForm2.Edit8DblClick(Sender: TObject);
begin
     if ColorDialog1.Execute then
        begin
			 Edit8.Text:= ColorToString(ColorDialog1.Color);
     		 coli2:=  ColorToString(ColorDialog1.Color);
        end;
end;

procedure TForm2.FloatSpinEdit1Change(Sender: TObject);
begin
  	 thickness:= FloatSpinEdit1.Value;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
     if col[1] <> '#' then
     	col:= '#' + col;
     if RadioButton1.Checked = True then
     	if a = False then
        begin
            fstr:= ComboBox1.Items.Strings[ComboBox1.ItemIndex];
            case ComboBox1.ItemIndex of
                 0, 1: fstr:= fstr + '(x)' + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
                 2: fstr:= 'x ** 2' + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
                 3: fstr:= 'x ** 3' + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
                 4: fstr:= '1 / x' + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
        end;
            Listbox1.Items.add(fstr);
            BitBtn1.Enabled:= True;
            BitBtn2.Enabled:= True;
            Button5.Enabled:= True;
        end
     else
     	 begin
            fstr:= ComboBox1.Items.Strings[ComboBox1.ItemIndex];
            case ComboBox1.ItemIndex of
            0, 1: fstr:= Edit3.Text + ' * ' + fstr + '(' + Edit4.Text + ' * x + ' + Edit5.Text + ') + ' + Edit6.Text + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
            2: fstr:= Edit3.Text + ' * x ** 2 + ' + Edit4.Text + ' * x + ' + Edit5.Text+ ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness) ;
            3: fstr:= Edit3.Text + ' * x ** 3 + ' + Edit4.Text + ' * x ** 2 + ' + Edit5.Text + ' * x + ' + Edit6.Text + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
            4: fstr:= Edit3.Text + ' / x' + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
            5: fstr:= Edit3.Text + ' * x + ' + Edit4.Text + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
            end;
            Listbox1.Items.add(fstr);
            BitBtn1.Enabled:= True;
            BitBtn2.Enabled:= True;
            Button5.Enabled:= True;
         end
     else
     	 begin
         fstr:=LabeledEdit1.Text;
     	 fstr:= fstr  + ':' + xmin + ':' + xmax + ':' + col + ':' + floattostr(thickness);
         Listbox1.Items.add(fstr);
         BitBtn1.Enabled:= True;
         BitBtn2.Enabled:= True;
         Button5.Enabled:= True;
         end;
     if ListBox1.Items.Count > 1 then
     	CheckBox5.Enabled:= True;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
     if Edit7.Text[1] = '$' then
        begin
         col:= '';
         Edit7.Color:=StringToColor(coli);
         i:= Length(coli);
         while i <> 3 do
             begin
             	  col:= col + coli[i - 1] + coli[i];
                  i:= i - 2;
             end;
        end
     else if Edit7.Text[1] <> 'c' then
        begin
             if (Edit7.Text[1] = '#') then
                 j:= 2
             else
             	 j:= 1;
     		 col:= Edit7.Text;
     		 coli:= '$00';
     		 for i:= Length(col) downto j do
     	 	 	 coli:= coli + col[i];
     		 Edit7.Color:=StringToColor(coli);
        end
     else if Edit7.Text[1] = 'c' then
        begin
         Edit7.Color:=StringToColor(coli);
         case coli of
         	  'clBlack': col:='#000000';
              'clMaroon': col:= '#800000';
              'clGreen': col:='#008000';
              'clOlive': col:='#808000';
              'clNavy': col:='#000080';
              'clPurple': col:='#800080';
              'clTeal': col:='#008080';
              'clGray': col:='#808080';
              'clSilver': col:='C0C0C0';
              'clRed': col:='#FF0000';
              'clLime': col:='#00FF00';
              'clYellow': col:='#FFFF00';
              'clBlue': col:='#0000FF';
              'clFuchsia': col:='#FF00FF';
              'clAqua': col:='#00FFFF';
              'clWhite': col:='#FFFFFF';
              'clMoneyGreen': col:='#C0DCC0';
              'clSkyBlue': col:='#A6CAF0';
              'clCream': col:='#FFFBF0';
              'clMedGray': col:='#A0A0A4';
        end;
     end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
      if Edit8.Text[1] = '$' then
        begin
         col:= '';
         Edit8.Color:=StringToColor(coli);
         i:= Length(coli);
         while i <> 3 do
             begin
             	  col:= col + coli[i - 1] + coli[i];
                  i:= i - 2;
             end;
        end
     else if Edit8.Text[1] <> 'c' then
        begin
             if (Edit8.Text[1] = '#') then
                 j:= 2
             else
             	 j:= 1;
     		 col2:= Edit8.Text;
     		 coli2:= '$00';
     		 for i:= Length(col2) downto j do
     	 	 	 coli2:= coli2 + col2[i];
     		 Edit8.Color:=StringToColor(coli2);
        end
     else if Edit8.Text[1] = 'c' then
        begin
         Edit8.Color:=StringToColor(coli2);
         case coli2 of
         	  'clBlack': col2:='#000000';
              'clMaroon': col2:= '#800000';
              'clGreen': col2:='#008000';
              'clOlive': col2:='#808000';
              'clNavy': col2:='#000080';
              'clPurple': col2:='#800080';
              'clTeal': col2:='#008080';
              'clGray': col2:='#808080';
              'clSilver': col2:='C0C0C0';
              'clRed': col2:='#FF0000';
              'clLime': col2:='#00FF00';
              'clYellow': col2:='#FFFF00';
              'clBlue': col2:='#0000FF';
              'clFuchsia': col2:='#FF00FF';
              'clAqua': col2:='#00FFFF';
              'clWhite': col2:='#FFFFFF';
              'clMoneyGreen': col2:='#C0DCC0';
              'clSkyBlue': col2:='#A6CAF0';
              'clCream': col2:='#FFFBF0';
              'clMedGray': col2:='#A0A0A4';
        end;
     end;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
t: textfile;
begin
	 SaveDialog1.Title := 'For science!';
     SaveDialog1.InitialDir := GetCurrentDir;
     SaveDialog1.Filter := 'Text file|*.rg32';
     SaveDialog1.DefaultExt := 'rg32';
     if SaveDialog1.Execute then
        begin
     	  assignfile(t, SaveDialog1.FileName);
     	  rewrite(t);
          ListBox1.Items.SaveToFile(SaveDialog1.FileName);
          CloseFile(t);
        end;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
t: textfile;
begin
	 OpenDialog1.Title := 'For science!';
     OpenDialog1.InitialDir := GetCurrentDir;
     OpenDialog1.Filter := 'Text file|*.rg32';
     OpenDialog1.DefaultExt := 'rg32';
     if OpenDialog1.Execute then
        begin
     	  assignfile(t, OpenDialog1.FileName);
     	  reset(t);
          ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
          CloseFile(t);
        end;
	 BitBtn1.Enabled:= True;
     BitBtn2.Enabled:= True;
     Button5.Enabled:= True;
     if ListBox1.Items.Count > 1 then
     	 CheckBox5.Enabled:= True
     else
         CheckBox5.Enabled:= False;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 	 ListBox1.Items.Delete(ListBox1.ItemIndex);
     if ListBox1.Items.Count = 0  then
        begin
        Button1.Enabled:= False;
        BitBtn1.Enabled:= False;
        BitBtn2.Enabled:= False;
        Button5.Enabled:= False;
        CheckBox7.Enabled:= False;
        CheckBox7.Checked:= False;
        LabeledEdit2.Enabled:= False;
        end;
     if ListBox1.Items.Count < 2 then
        CheckBox5.Enabled:= False;
     	CheckBox5.Checked:= False;
     if ListBox1.ItemIndex = -1 then
        Button1.Enabled:= False;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var outputs: textfile;
i:integer;
data: string;
AProcess: TProcess;
begin
     if ListBox1.Count <> 0 then
        begin
	 		 assignfile(outputs, 'ForPY.txt');
     		 rewrite(outputs);
     		 for i:= 0 to ListBox1.Count - 1 do
         	 	 begin
                      data:= ListBox1.Items.Strings[i];
		 	  	 	  writeln(outputs, data);
         	 	 end;
        end;
		data:= col2 + ':' + lines + ':' + grid + ':' + perL + ':' + perG + ':' + mm;
        writeln(outputs, data);
        data:= znach;
        for i:= 0 to ListBox1.Count - 1 do
            if ListBox1.Selected[i] then
               data:= data + ':' + inttostr(i);
        data:= data + ':' + LabeledEdit2.Text;
        write(outputs, data);
    CloseFile(outputs);
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine := '/usr/bin/python3.4 main.py';
    AProcess.Options := AProcess.Options + [poWaitOnExit];
	AProcess.Execute;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
    ListBox1.Clear;
    BitBtn1.Enabled:= False;
    BitBtn2.Enabled:= False;
    Button1.Enabled:= False;
    Button5.Enabled:= False;
    CheckBox5.Enabled:= False;
    CheckBox5.Checked:= False;
    CheckBox7.Enabled:= False;
    CheckBox7.Checked:= False;
    LabeledEdit2.Enabled:= False;
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
     a:= False;
     lines:= '0';
     grid:= '0';
     col:= '#FF5500';
     thickness:= 1.00;
     col2:= '#FFFFFF';
     xmin:= '-10';
     xmax:= '10';
     perL:= '0';
     perG:= '0';
     mm:= '0';
     znach:= '0';
end;

procedure TForm2.LabeledEdit1Change(Sender: TObject);
begin
  	 if LabeledEdit1.Text = '' then
     	  Button2.Enabled:= False
     else
          Button2.Enabled:= True;
end;


procedure TForm2.ListBox1SelectionChange(Sender: TObject; User: boolean);
begin
     if Button1.Enabled = False then
        begin
	 		 Button1.Enabled:= True;
             CheckBox7.Enabled:= True;
             LabeledEdit2.Enabled:= True;
        end;
end;


procedure TForm2.RadioButton1Change(Sender: TObject);
begin
        if RadioButton1.Checked = True then
           begin
            	ComboBox1.Visible:= True;
                CheckBox1.Checked:= False;
                CheckBox1.Visible:= True;
                ComboBox1.Visible:= True;
                LabeledEdit1.Visible:= False;
           end
        else
        	begin
                ComboBox1.Visible:= False;
                CheckBox1.Checked:= False;
                CheckBox1.Visible:= False;
                LabeledEdit1.Visible:= True;
                ComboBox1.Visible:= False;
            end;
end;

procedure TForm2.RadioButton2Change(Sender: TObject);
begin

end;


end.

