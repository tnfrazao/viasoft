program QS7;

uses
  Forms,
  uTroco in 'C:\Users\Thiago\Desktop\2 - m�dia\uTroco.pas',
  uIMaquina in 'C:\Users\Thiago\Desktop\2 - m�dia\uIMaquina.pas',
  uMaquina in 'C:\Users\Thiago\Desktop\2 - m�dia\uMaquina.pas' {$R *.RES},
  Unit1 in 'C:\Users\Thiago\Desktop\2 - m�dia\Unit1.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Form1.ShowModal
end.

