program Main_n10;

uses
  Forms,
  UMain_n10 in 'UMain_n10.pas' {Form1},
  UTreeNode in 'UTreeNode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
