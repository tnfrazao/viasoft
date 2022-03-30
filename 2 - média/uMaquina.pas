unit uMaquina;

interface

uses
  uIMaquina, Classes, uTroco;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(pTroco: Double): TList;
  end;

implementation

uses math;

function TMaquina.MontarTroco(pTroco: Double): TList;
var
  lRest : Double;
  lCedula: TCedula;
begin
   lRest := pTroco;
   Result := TList.Create;

   for lCedula := Low(CValorCedula) to High(CValorCedula) do
   begin
      if Trunc(lRest / CValorCedula[lCedula])>= 1 then
      begin
        Result.Add(TTroco.Create(lCedula, Trunc(lRest / CValorCedula[lCedula])));
        lRest := RoundTo(lRest - (Trunc(lRest / CValorCedula[lCedula])*CValorCedula[lCedula]),-2);
      end;

      if lRest <=0  then
        Break;
   end;
end;

end.

