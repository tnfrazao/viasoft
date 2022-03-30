program QS7;

uses
  Forms,
  uTroco in 'C:\Users\Thiago\Desktop\2 - média\uTroco.pas',
  uIMaquina in 'C:\Users\Thiago\Desktop\2 - média\uIMaquina.pas',
  uMaquina in 'C:\Users\Thiago\Desktop\2 - média\uMaquina.pas' {$R *.RES},
  Unit1 in 'C:\Users\Thiago\Desktop\2 - média\Unit1.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Form1.ShowModal
end.

