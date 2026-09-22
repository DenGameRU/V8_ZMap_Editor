unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  shellapi, Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    ffnen1: TMenuItem;
    Speichern1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Neu1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Beenden1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    MTA1: TMenuItem;
    Save1: TMenuItem;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Speichern1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
//    procedure MitPillenauffllen1Click(Sender: TObject);
//    procedure MitWndenauffllen1Click(Sender: TObject);
//    procedure MitSuperpillenauffllen1Click(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure Neu1Click(Sender: TObject);
//    procedure Save1Click(Sender: TObject);
  private
    { Private-Deklarationen }
//		procedure WMDropFiles (var Msg: TMessage); message wm_DropFiles;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  map:array[0..31,0..31] of Short;
  mdown:integer=1;
  thetool:integer=0;
//  bmp: TBitmap;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin



//bmp := TBitmap.Create;
//  bmp.Width := 2600;
//  bmp.Height := 2600;

//	DragAcceptFiles(Handle, True);
//  form1.VertScrollBar.Tracking:=true;
//  form1.HorzScrollBar.Tracking:=true;
//  clientwidth:=800;
//  clientheight:=800;
  neu1click(sender);
end;

//procedure TForm1.WMDropFiles(var Msg: TMessage);

//var
//	NameLength : integer;
//	Fname : String;
//	TempFile: array[0..255] of Char;

//begin

//	try
//		screen.cursor := crHourglass;
//		NameLength := DragQueryFile(Msg.wParam, 0, Nil , 0);
//		DragQueryFile(Msg.wParam, 0, TempFile, NameLength+1);
//		fname := StrPas(TempFile);
//	finally
//		screen.cursor := crDefault;
//	end;
//end;

procedure TForm1.FormPaint(Sender: TObject);

var
  x,y:integer;
//    K, Bl, CC: Byte;
//      MT, L, Long: LongInt;


begin

if RadioButton1.Checked = True then
 begin
  thetool:=256
 end else
  if RadioButton2.Checked = True then
   begin
    thetool:=512
   end else
  if RadioButton3.Checked = True then
   begin
    thetool:=768
   end else
  if RadioButton4.Checked = True then
   begin
    thetool:=1024
   end else
  if RadioButton5.Checked = True then
   begin
    thetool:=1280
   end else
  if RadioButton6.Checked = True then
   begin
    thetool:=1536
   end else
  if RadioButton7.Checked = True then
   begin
    thetool:=1792
   end else
  if RadioButton8.Checked = True then
   begin
    thetool:=2048
   end else
  if RadioButton9.Checked = True then
   begin
    thetool:=2304
   end else
    if RadioButton10.Checked = True then
   begin
    thetool:=0
   end;


//    L:=L+(Bl Shl (8*K));

  for x:=0 to 31 do
    for y:=0 to 31 do
      case map[x,y] of

      0:begin   //114
          canvas.draw(x*20,y*20,image10.picture.bitmap);
        end;
              
      256:begin
  Canvas.Draw(x*20,y*20,image1.picture.bitmap);
        end;
      512:begin   //114
//          canvas.brush.color:=$ff77ff;
          canvas.draw(x*20,y*20,image2.picture.bitmap);
//          Image7.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
        end;
      768:begin   //87
//          canvas.brush.color:=$ff;
//          canvas.rectangle(x*16,y*16,x*16+17,y*16+17);
          canvas.draw(x*20,y*20,image3.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image3.picture.bitmap);
        end;
      1024:begin
//          canvas.brush.color:=$ff00;
//          canvas.rectangle(x*16,y*16,x*16+17,y*16+17);
          canvas.draw(x*20,y*20,image4.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image4.picture.bitmap);
        end;
      1280:begin
//          canvas.brush.color:=$ff0000;
          canvas.draw(x*20,y*20,image5.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image5.picture.bitmap);
        end;
      1536:begin
//          canvas.brush.color:=$77ff;
//          canvas.rectangle(x*16,y*16,x*16+17,y*16+17);
          canvas.draw(x*20,y*20,image6.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image6.picture.bitmap);
        end;
      1792:begin   //114
//          canvas.brush.color:=$ff77ff;
          canvas.draw(x*20,y*20,image7.picture.bitmap);
//          Image7.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
        end;
      2048:begin   //114
//          canvas.brush.color:=$ff77ff;
          canvas.draw(x*20,y*20,image8.picture.bitmap);
//          Image7.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
        end;
      2304:begin   //114
//          canvas.brush.color:=$ff77ff;
          canvas.draw(x*20,y*20,image9.picture.bitmap);
//          Image7.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
//          PaintBox1.Canvas.Draw(x*40,y*40,image2.picture.bitmap);
        end;


      end;

//bmp := PaintBox1.Canvas;

end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if button=mbleft then mdown:=1;
  if button=mbright then mdown:=2;
  FormMouseMove(sender,[],x,y);
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

var
  a,b:integer;

begin
//  if (y>40) and (y<1600) then begin

    if mdown=1 then begin
      if thetool=9 then
        for a:=0 to 31 do
          for b:=0 to 31 do
            if map[a,b]=9 then map[a,b]:=0;
      map[x div 20,y div 20]:=thetool;
      Formpaint(sender);
    end;
    if mdown=2 then begin
      map[x div 20,y div 20]:=0;
      Formpaint(sender);
    end;
//  end;
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mdown:=0;
end;

procedure TForm1.Speichern1Click(Sender: TObject);

var
  x,y:integer;
  f:file;

begin
  if savedialog1.execute then begin
    assignfile(f, savedialog1.filename);
    rewrite(f,1);
    for x:=0 to 31 do
      for y:=0 to 31 do begin
        blockwrite(f,map[y,x],2);
      end;
    closefile(f);
  end;
end;

procedure TForm1.ffnen1Click(Sender: TObject);

var
  x,y:integer;
  f:file;

begin
  if opendialog1.execute then begin
    assignfile(f,opendialog1.filename);
    reset(f,1);
    for x:=0 to 31 do
      for y:=0 to 31 do
        blockread(f,map[y,x],2);
    closefile(f);
    invalidate;
  end;
end;

//procedure TForm1.MitPillenauffllen1Click(Sender: TObject);

//var
//  x,y:integer;

//begin
//  for x:=0 to 25 do
//    for y:=0 to 17 do
//      if map[x,y]=0 then map[x,y]:=2;
//  invalidate;
//end;

//procedure TForm1.MitWndenauffllen1Click(Sender: TObject);

//var
//  x,y:integer;

//begin
//  for x:=0 to 25 do
//    for y:=0 to 17 do
//      if map[x,y]=0 then map[x,y]:=1;
//  invalidate;
//end;

//procedure TForm1.MitSuperpillenauffllen1Click(Sender: TObject);

//var
//  x,y:integer;

//begin
//  for x:=0 to 25 do
//    for y:=0 to 17 do
//      if map[x,y]=0 then map[x,y]:=3;
//  invalidate;
//end;

procedure TForm1.Beenden1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Neu1Click(Sender: TObject);

var
  x,y:integer;

begin
  for x:=0 to 31 do begin
    for y:=0 to 31 do
      map[x,y]:=0;
//    map[x,0]:=114;
//    map[x,0]:=117;
  end;
  invalidate;
end;

//procedure TForm1.Save1Click(Sender: TObject);
//begin
// bmp.SaveToFile ( 'nuf.bmp' );
//end;

end.
