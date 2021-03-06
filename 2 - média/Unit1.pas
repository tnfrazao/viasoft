unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, StrUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    mmResultado: TMemo;
    lblValor: TLabel;
    mskValor: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure mskValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uMaquina, uTroco;

procedure TForm1.Button1Click(Sender: TObject);
var
  lMaq: TMaquina;
  lListRetorno: TList;
  i: Integer;
begin
  mmResultado.Clear;

  lMaq :=  TMaquina.Create;
  lListRetorno := lMaq.MontarTroco(StrToFloat(mskValor.Text));
  for I := 0 to lListRetorno.Count-1 do
  begin
    mmResultado.Lines.Add(IfThen(CValorCedula[TTroco(lListRetorno[i]).GetTipo] < 2, 'Moeda : R$','Nota : R$') + FormatFloat('#,##0.00', CValorCedula[TTroco(lListRetorno[i]).GetTipo]) +
                          '  -  Quantidade : ' + FloatToStr(TTroco(lListRetorno[i]).GetQuantidade));
    mmResultado.Lines.Add('------------------------------------------------');
  end;

  if Assigned(lMaq) then
     FreeAndNil(lMaq);
end;

procedure TForm1.mskValorExit(Sender: TObject);
begin
  mskValor.Text := FormatFloat('0.00', StrToFloat(mskValor.Text));
end;

end.
