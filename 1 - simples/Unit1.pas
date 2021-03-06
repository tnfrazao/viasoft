unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    mmOriginal: TMemo;
    lblOld: TLabel;
    EdtAntiga: TEdit;
    Label1: TLabel;
    edtNova: TEdit;
    btnSubstituir: TButton;
    mmNovoTexto: TMemo;
    procedure btnSubstituirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uSubstitui;

procedure TForm1.btnSubstituirClick(Sender: TObject);
begin
  Validar;
end;

procedure TForm1.Validar;
begin
  if Trim(mmOriginal.Text) = '' then
  begin
    ShowMessage('Favor informar o texto original!');
    mmOriginal.SetFocus;
    Exit;
  end;

  if Trim(EdtAntiga.Text) = '' then
  begin
    ShowMessage('Favor informar o a palavra que deseja substituir!');
    EdtAntiga.SetFocus;
    Exit;
  end;

  if Trim(edtNova.Text) = '' then
  begin
    ShowMessage('Favor informar o a palavra que deseja incluir no texto!');
    edtNova.SetFocus;
    Exit;
  end;

  mmNovoTexto.Clear;
  mmNovoTexto.Text := TSubstitui.Create.Substituir(mmOriginal.Text, EdtAntiga.Text, edtNova.Text)

end;

end.

