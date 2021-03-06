unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uNetWork;

type
  TForm1 = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    btnValidar: TButton;
    lblElemento1: TLabel;
    lblElemento2: TLabel;
    edtNum3: TEdit;
    edtNum4: TEdit;
    lblValida1: TLabel;
    lblValida2: TLabel;
    edtQtd: TEdit;
    Label3: TLabel;
    grbConect: TGroupBox;
    GroupBox1: TGroupBox;
    procedure btnValidarClick(Sender: TObject);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure edtNum1KeyPress(Sender: TObject; var Key: Char);
    procedure edtNum2KeyPress(Sender: TObject; var Key: Char);
    procedure edtNum3KeyPress(Sender: TObject; var Key: Char);
    procedure edtNum4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Valida;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnValidarClick(Sender: TObject);
var
   lNetwork:TNetWork;
begin
  Valida;
  try
    lNetwork := TNetWork.Create(StrToIntDef(edtQtd.Text,0));

    lNetwork.Connect(StrToIntDef(edtNum1.Text,0), StrToIntDef(edtNum2.Text,0));

    if not lNetwork.Query(StrToIntDef(edtNum3.Text,0), StrToIntDef(edtNum4.Text,0)) then
    begin
      ShowMessage('Elementos n?o conectados    ________|      |________')
    end
    else begin
      ShowMessage('Elementos conectados    ____________________')
    end;
  finally
    FreeAndNil(lNetwork);
  end;

end;

procedure TForm1.edtNum1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
    key := #0;
  end;
end;

procedure TForm1.edtNum2KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
    key := #0;
  end;
end;

procedure TForm1.edtNum3KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
    key := #0;
  end;
end;

procedure TForm1.edtNum4KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
    key := #0;
  end;
end;

procedure TForm1.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
    key := #0;
  end;
end;

procedure TForm1.Valida;
begin
  if StrToIntDef(edtQtd.Text, 0) = 0 then
  begin
    ShowMessage('ATEN??O!' + SlineBreak +
                'Favor informar a quantidade de elementos da rede.');
    edtQtd.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum1.Text, 0) = 0 then
  begin
    ShowMessage('ATEN??O!' + SlineBreak +
                'Favor informar o primeiro elemento a ser conectado na rede.');
    edtNum1.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum2.Text, 0) = 0 then
  begin
    ShowMessage('ATEN??O!' + SlineBreak +
                'Favor informar o segundo elemento a ser conectado na rede.');
    edtNum2.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum3.Text, 0) = 0 then
  begin
    ShowMessage('ATEN??O! '+ SlineBreak +
                'Favor informar o primeiro elemento a ser validada sua conectividade na rede.');
    edtNum3.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum4.Text, 0) = 0 then
  begin
    ShowMessage('ATEN??O! '+ SlineBreak +
                'Favor informar o segundo elemento a ser validada sua conectividade na rede.');
    edtNum4.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtQtd.Text, 0) < 2 then
  begin
    ShowMessage('ATEN??O!' + SlineBreak +
                'Favor informar no m?nimo 2 elementos para compor a rede.');
    edtQtd.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum1.Text, 0) = StrToIntDef(edtNum2.Text, 0) then
  begin
    ShowMessage('ATEN??O! '+ SlineBreak +
                'Favor informar elementos distintos para realizar a conectividade dos elementos da rede.');
    edtNum2.SetFocus;
    Abort;
  end;

  if StrToIntDef(edtNum3.Text, 0) = StrToIntDef(edtNum4.Text, 0) then
  begin
    ShowMessage('ATEN??O! '+ SlineBreak +
                'Favor informar elementos distintos para realizar a valida??o de conectividade.');
    edtNum4.SetFocus;
    Abort;
  end;

end;

end.
