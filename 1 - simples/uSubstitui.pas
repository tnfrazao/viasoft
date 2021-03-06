unit uSubstitui;

interface

uses
  uISubstitui;

type
  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(pStr, pVelho, pNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(pStr, pVelho, pNovo: String): String;
var
  lTamVerificado,
  lTamTexto : Integer;
  lConcTexto: Boolean;
  lstrTexto : String;
begin
  lTamVerificado := 0;
  lTamTexto := Length(pStr);
  lstrTexto := '';
  lConcTexto := False;

  while Pos(pVelho, pStr) > 0 do
  begin
//      Insert(pNovo,pStr,Pos(pVelho, pStr));
//      Delete(pStr, Pos(pVelho, pStr), Length(pVelho));
    lstrTexto := lstrTexto + Copy(pStr, 0, Pos(pVelho, pStr) -1) + pNovo;
    lTamVerificado := lTamVerificado + Pos(pVelho, pStr);
    pStr := Copy(pStr, Pos(pVelho, pStr) + Length(pVelho), Length(pStr));

    lConcTexto := lTamTexto > lTamVerificado;
  end;

//  lstrTexto := pStr;

  if lConcTexto then
    Result := lstrTexto + pStr
  else
    Result := lstrTexto;
end;


end.

