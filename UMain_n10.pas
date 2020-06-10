{В Trie-дереве посчитать количество слов палиндромов}
unit UMain_n10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UTrieTree, ComCtrls;

type
  TForm1 = class(TForm)
    resulPnl: TGroupBox;
    tv1: TTreeView;
    inputPnl: TGroupBox;
    btnPanel: TPanel;
    checkBtn: TButton;
    clearBtn: TButton;
    memoPnl: TPanel;
    inputMemo: TMemo;
    resultLbl: TLabel;
    Panel1: TPanel;
    procedure inputMemoChange(Sender: TObject);
    procedure MainBtnClick(Sender: TObject);
    procedure edtInputKeyPress(Sender: TObject; var Key: Char);
    procedure clearBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure  TForm1.inputMemoChange(Sender: TObject);
var isNotEmpty: Boolean;
  i: integer;
begin
  isNotEmpty := inputMemo.Text <> '';
  clearBtn.Enabled := isNotEmpty;
  checkBtn.Enabled := isNotEmpty;
end;

Function NextWord(str:string; var i:integer):string;
var
  len:integer;
begin
  len:=length(str);
  //пропуск пробелов
  while (i<=len) and (str[i]=' ') do
    inc(i);
  //формирование слова
  result:='';
  while (i<=len) and (str[i]<>' ') do
    begin
      result:=result+str[i];
      inc(i);
    end;
end;

var
  root: TTrieTree;

procedure TForm1.MainBtnClick(Sender: TObject);
var
  i, k: integer;
  s: string;
begin
  resultLbl.Caption := 'Всего палиндромов: ';
  root := TTrieTree.Create;
  for i := 0 to inputMemo.lines.Count-1 do
    begin
      k := 1;
      if trim(inputMemo.Lines[i]) <> '' then
        while k <= length(inputMemo.Lines[i]) do
            root.push(NextWord(inputMemo.Lines[i], k));
    end;
  if root.IsEmpty then
     resultLbl.Caption := resultLbl.Caption + 'Дерево пусто'
  else
    begin
      i := root.res('a');
      resultLbl.Caption := resultLbl.Caption + IntToStr(i);
    end;
    root.print(tv1);
end;

procedure TForm1.edtInputKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['a'..'z']) and (Ord(Key)>32) then
     Key:=#0;
end;

procedure TForm1.clearBtnClick(Sender: TObject);
var isNotEmpty: boolean;
begin
  resultLbl.Caption := 'Всего палиндромов: ';
  inputMemo.lines.clear;
  root.Clear;
  isNotEmpty := inputMemo.Text <> '';
  clearBtn.Enabled := isNotEmpty;
  checkBtn.Enabled := isNotEmpty;
end;

end.
