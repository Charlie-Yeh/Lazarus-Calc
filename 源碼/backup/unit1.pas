unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    backspaceBtn: TButton;
    fiveBtn: TButton;
    sixBtn: TButton;
    addBtn: TButton;
    sevenBtn: TButton;
    eightBtn: TButton;
    nineBtn: TButton;
    subBtn: TButton;
    divBtn: TButton;
    zeroBtn: TButton;
    dotBtn: TButton;
    ceBtn: TButton;
    equalBtn: TButton;
    cBtn: TButton;
    Button4: TButton;
    oneBtn: TButton;
    twoBtn: TButton;
    threeBtn: TButton;
    mulBtn: TButton;
    fourBtn: TButton;
    numDisplay: TEdit;
    procedure addBtnClick(Sender: TObject);
    procedure backspaceBtnClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cBtnClick(Sender: TObject);
    procedure ceBtnClick(Sender: TObject);
    procedure divBtnClick(Sender: TObject);
    procedure dotBtnClick(Sender: TObject);
    procedure eightBtnClick(Sender: TObject);
    procedure equalBtnClick(Sender: TObject);
    procedure fiveBtnClick(Sender: TObject);
    procedure fourBtnClick(Sender: TObject);
    procedure mulBtnClick(Sender: TObject);
    procedure nineBtnClick(Sender: TObject);
    procedure oneBtnClick(Sender: TObject);
    procedure sevenBtnClick(Sender: TObject);
    procedure sixBtnClick(Sender: TObject);
    procedure subBtnClick(Sender: TObject);
    procedure threeBtnClick(Sender: TObject);
    procedure twoBtnClick(Sender: TObject);
    procedure zeroBtnClick(Sender: TObject);
  private

  public
    firstNum, secondNum, Answer:String;
    op:Char;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

// 0
procedure TForm1.zeroBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='0'
  else
    numDisplay.Text:=numDisplay.Text + '0';
end;

// 1
procedure TForm1.oneBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='1'
  else
    numDisplay.Text:=numDisplay.Text + '1';
end;

// 2
procedure TForm1.twoBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='2'
  else
    numDisplay.Text:=numDisplay.Text + '2';
end;

// 3
procedure TForm1.threeBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='3'
  else
    numDisplay.Text:=numDisplay.Text + '3';
end;

// 4
procedure TForm1.fourBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='4'
  else
    numDisplay.Text:=numDisplay.Text + '4';
end;

// 5
procedure TForm1.fiveBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='5'
  else
    numDisplay.Text:=numDisplay.Text + '5';
end;

// 6
procedure TForm1.sixBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='6'
  else
    numDisplay.Text:=numDisplay.Text + '6';
end;

// 7
procedure TForm1.sevenBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='7'
  else
    numDisplay.Text:=numDisplay.Text + '7';
end;

// 8
procedure TForm1.eightBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='8'
  else
    numDisplay.Text:=numDisplay.Text + '8';
end;

// 9
procedure TForm1.nineBtnClick(Sender: TObject);
begin
  if numDisplay.Text = '0' then
    numDisplay.Text:='9'
  else
    numDisplay.Text:=numDisplay.Text + '9';
end;

// 刪除號
procedure TForm1.backspaceBtnClick(Sender: TObject);
begin
  numDisplay.Text:=Copy(numDisplay.Text, 1, Length(numDisplay.Text)-1);
  if numDisplay.Text = '' then
    numDisplay.Text:='0';
end;

// 符號C
procedure TForm1.cBtnClick(Sender: TObject);
begin
  numDisplay.Text:='0';
end;

// 符號CE
procedure TForm1.ceBtnClick(Sender: TObject);
begin
  numDisplay.Text:='0';
  firstNum:='0';
  secondNum:='0';
end;

// 符號±
procedure TForm1.Button4Click(Sender: TObject);
var
  pm:Real;
begin
  pm:=StrToFloat(numDisplay.Text);
  numDisplay.Text:=FloatToStr(-1 * pm);
end;

// 符號+
procedure TForm1.addBtnClick(Sender: TObject);
begin
  firstNum:=numDisplay.Text;
  op:='+';
  numDisplay.Text:='';
end;

// 符號-
procedure TForm1.subBtnClick(Sender: TObject);
begin
  firstNum:=numDisplay.Text;
  op:='-';
  numDisplay.Text:='';
end;

// 符號*
procedure TForm1.mulBtnClick(Sender: TObject);
begin
  firstNum:=numDisplay.Text;
  op:='*';
  numDisplay.Text:='';
end;

// 符號÷
procedure TForm1.divBtnClick(Sender: TObject);
begin
  firstNum:=numDisplay.Text;
  op:='/';
  numDisplay.Text:='';
end;

// 符號.
procedure TForm1.dotBtnClick(Sender: TObject);
begin
   if (Pos('.', numDisplay.Text) <> 0) then
     exit
   else
     numDisplay.Text:=numDisplay.Text + dotBtn.Caption;
end;

// 符號=
procedure TForm1.equalBtnClick(Sender: TObject);
begin
  secondNum:=numDisplay.Text;

  case op of
    '+':
      Answer:=FloatToStr(StrToFloat(firstNum) + StrToFloat(secondNum));
    '-':
      Answer:=FloatToStr(StrToFloat(firstNum) - StrToFloat(secondNum));
    '*':
      Answer:=FloatToStr(StrToFloat(firstNum) * StrToFloat(secondNum));
    '/':
      Answer:=FloatToStr(StrToFloat(firstNum) / StrToFloat(secondNum));
  end;

  numDisplay.Text:=Answer;
end;

end.

