unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  lclintf, ExtCtrls, Math, LCLTranslator;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Edit1: TEdit;
    But19: TButton;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Kvadr: TButton;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Tema: TMenuItem;
    Tema1: TMenuItem;
    Tema2: TMenuItem;
    Tema3: TMenuItem;
    Proc: TButton;
    Delit: TButton;
    Umnozh: TButton;
    Minus: TButton;
    Plus: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    MainMenu1: TMainMenu;
    Calc: TMenuItem;
    Copirovat: TMenuItem;
    Exten: TMenuItem;
    About: TMenuItem;
    Spravka1: TMenuItem;
    Spravka: TMenuItem;
    Mode: TMenuItem;
    Base: TMenuItem;
    Vstavit: TMenuItem;
    procedure AboutClick(Sender: TObject);
    procedure BaseClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure But19Click(Sender: TObject);
    procedure CopirovatClick(Sender: TObject);
    procedure ExtenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure KvadrClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Spravka1Click(Sender: TObject);
    procedure Tema1Click(Sender: TObject);
    procedure Tema2Click(Sender: TObject);
    procedure Tema3Click(Sender: TObject);
    procedure VstavitClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c : Real;
  znak : String;

implementation
uses Unit2, Unit3;

{$R *.lfm}
function ItoS(val:integer):string;
var
  _r:string;
begin
  Str(val,_r);
  ItoS:=_r;
end;

function ConvertToCS(val:integer;CS:integer):string;
var
  _r,_r1:string;
  _m,i:integer;
begin
  _r:='';
  if CS>16 then exit;
  repeat
   _m:=val mod CS;
   val:=val div CS;
   if _m<10 then
    _r:=_r+ItoS(_m)
            else
    _r:=_r+chr(ord('A')+_m-10);
  until val=0;

  _r1:='';
  for i:=length(_r) downto 1 do
   _r1:=_r1+_r[i];
  ConvertToCS:=_r1;
end;

procedure TForm1.ClickZnak(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  Edit1.Clear;

  znak :=(Sender as TButton).Caption;
end;

procedure TForm1.But19Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := sqrt(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
    except
      on e: exception do ShowMessage('Error!');
    end
end;

procedure TForm1.CopirovatClick(Sender: TObject);
begin
  Edit1.CopytoClipboard;
end;

procedure TForm1.ExtenClick(Sender: TObject);
begin
  Button15.Visible := true;
  Button16.Visible := true;
  Button17.Visible := true;
  Button18.Visible := true;
  Button19.Visible := true;
  Button20.Visible := true;
  Button21.Visible := true;
  Button22.Visible := true;
  Button23.Visible := true;
  Button24.Visible := true;
  Button25.Visible := true;
  Button26.Visible := true;
  Button27.Visible := true;
  Button28.Visible := true;
  Button29.Visible := true;
  Button30.Visible := true;
  Button31.Visible := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image2.Hide;
  Image3.Hide;
  Image4.Hide;
  Image5.Hide;
  Image6.Hide;
  Image7.Hide;
  Image8.Hide;
  Image9.Hide;
  Image10.Hide;
  Image11.Hide;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '8';
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '9';
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '0';
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '1';
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '2';
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '3';
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '4';
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '5';
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '6';
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '7';
end;

procedure TForm1.KvadrClick(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a := sqr(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  SetDefaultLang('ru', 'lang');

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  SetDefaultLang('en', 'lang');

end;

procedure TForm1.Spravka1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Tema1Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('images/bg1.jpg');
  Button0.Show;
  Button1.Show;
  Button2.Show;
  Button3.Show;
  Button4.Show;
  Button5.Show;
  Button6.Show;
  Button7.Show;
  Button8.Show;
  Button9.Show;
  Image2.Hide;
  Image3.Hide;
  Image4.Hide;
  Image5.Hide;
  Image6.Hide;
  Image7.Hide;
  Image8.Hide;
  Image9.Hide;
  Image10.Hide;
  Image11.Hide;
end;

procedure TForm1.Tema2Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('images/bg2.jpg');
  Button0.Show;
  Button1.Show;
  Button2.Show;
  Button3.Show;
  Button4.Show;
  Button5.Show;
  Button6.Show;
  Button7.Show;
  Button8.Show;
  Button9.Show;
  Image2.Hide;
  Image3.Hide;
  Image4.Hide;
  Image5.Hide;
  Image6.Hide;
  Image7.Hide;
  Image8.Hide;
  Image9.Hide;
  Image10.Hide;
  Image11.Hide;
end;

procedure TForm1.Tema3Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('images/bg3.jpg');
  Button0.Hide;
  Button1.Hide;
  Button2.Hide;
  Button3.Hide;
  Button4.Hide;
  Button5.Hide;
  Button6.Hide;
  Button7.Hide;
  Button8.Hide;
  Button9.Hide;
  Image2.Show;
  Image3.Show;
  Image4.Show;
  Image5.Show;
  Image6.Show;
  Image7.Show;
  Image8.Show;
  Image9.Show;
  Image10.Show;
  Image11.Show;

end;

procedure TForm1.VstavitClick(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + ( Sender as Tbutton).Caption;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  str:string;
begin
  str:=Edit1.Text;
  if str <> '' then
   Delete(str, Length(str),1);
  Edit1.Text:=str;

end;

procedure TForm1.AboutClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.BaseClick(Sender: TObject);
begin
  Button15.Visible := false;
  Button16.Visible := false;
  Button17.Visible := false;
  Button18.Visible := false;
  Button19.Visible := false;
  Button20.Visible := false;
  Button21.Visible := false;
  Button22.Visible := false;
  Button23.Visible := false;
  Button24.Visible := false;
  Button25.Visible := false;
  Button26.Visible := false;
  Button27.Visible := false;
  Button28.Visible := false;
  Button29.Visible := false;
  Button30.Visible := false;
  Button30.Visible := false;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  try
    b := StrToFloat(Edit1.Text);
    Edit1.Clear;
    case znak of
         '+' : c := a+b;
         '-' : c := a-b;
         '*' : c := a*b;
         '/' : c := a/b;
         '^' : c := power(a, b);
    end;
    Edit1.Text:= FloatToStr(c);
  except
      on e: exception do ShowMessage('Error!');
  end
end;

procedure TForm1.Button15Click(Sender: TObject);
var x,i,n:real;
begin
  try
    x := StrToFloat(Edit1.Text);
    i := StrToFloat(Edit1.Text);
    n:=exp(i*ln(x));
    Edit1.Text := FloatToStr(n);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := ln(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := ln(a)/ln(10);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := sin(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := cos(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := sin(a)/cos(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := cos(a)/sin(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    a := abs(a);
    Edit1.Text:=FloatToStr(a);
    a := 0;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button23Click(Sender: TObject);
var n,i,s: integer;
begin
  try
    n := StrToInt(Edit1.Text);
    s := 1;
    for i := 1 to n do
     s := s*i;
    Edit1.Text := IntToStr(s);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button24Click(Sender: TObject);
var
  n,i: integer;
  s: string;
begin
  try
    s:='';
    i:=StrToInt(Edit1.Text);
    for n:=32 downto 1 do begin
      if (i and $80000000)=$80000000 then s:=s+'1'
      else if Length(s)>0 then s:=s+'0';
      i:=i<<1;
    end;
    Edit1.Text:=s;
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button25Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,3);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button26Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,4);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button27Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,5);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button28Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,6);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button29Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,7);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button30Click(Sender: TObject);
var i: integer;
begin
  try
    i:=StrToInt(Edit1.Text);
    Edit1.Text:=ConvertToCS(i,8);
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  try
    a := StrToFloat(Edit1.Text);
    Edit1.Clear;
    znak :='^';
  except
      on e: exception do ShowMessage('Error!');
  end;
end;

end.

