unit uNetWork;

interface
uses uINetWork, SysUtils;

type
  TNetWork = class(TInterfacedObject, INetWork)
  private
    FElementos: array of Integer;
    FElementosConectados: array of Integer;
    procedure AjustaElementos(var pN1: Integer; var Pn2: Integer);
  public
    constructor Create(QtElementos: Integer);
    procedure Connect(pN1,pN2: Integer);
    function Query(pN1,pN2: Integer): Boolean;
  end;

implementation

{ TNetWork }

procedure TNetWork.AjustaElementos(var pN1: Integer; var Pn2: Integer);
var
  lAux: Integer;
begin
  if pn1 > pn2 then
  begin
    lAux := pN1;
    pN1 := Pn2;
    pN2 := lAux;
  end;
end;

procedure TNetWork.Connect(pN1, pN2: Integer);
var
  lIndex: Integer;

begin
  AjustaElementos(pN1, pN2);

  SetLength(FElementosConectados, 0);
  if (Self.FElementos[Low(Self.FElementos)] > pN1) or
    (Self.FElementos[High(Self.FElementos)] < pN2) then
  begin
    raise Exception.Create('Elementos inválidos, verifique!');
  end;
  
  for lIndex := Low(FElementos) to High(FElementos) do
  begin
    if (FElementos[lindex] >= pN1) and (FElementos[lindex] <= pN2) then
    begin
      SetLength(FElementosConectados, Length(FElementosConectados)+1);
      FElementosConectados[High(FElementosConectados)]  := FElementos[lindex];
    end;
  end;
end;

constructor TNetWork.Create(QtElementos: Integer);
var
  i: Integer;
begin
  SetLength(Self.FElementos,QtElementos);
  for i := 1 to QtElementos do
  begin
    FElementos[i-1] := i;
  end;
end;

function TNetWork.Query(pN1,pN2: Integer): Boolean;
begin
  Result := False;
  AjustaElementos(pN1, pN2);

  if Length(Self.FElementosConectados) <= 0 then
  begin
    Exit;
  end;

  Result := (pN1 >= Self.FElementosConectados[Low(Self.FElementosConectados)]) and
            (pN2 <= Self.FElementosConectados[High(Self.FElementosConectados)]);
end;

end.
