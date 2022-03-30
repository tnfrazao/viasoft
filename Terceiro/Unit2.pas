unit uNetWork;

interface
uses SysUtils;

type
  INetWork = Interface
    procedure Connect(pN1,pN2: Integer);
    function Query(pN1,pN2: Integer): Boolean;
  end;

  TNetWork = class(INetWork)
  private
    FElementos: array of Integer;
    FElementosConectados: array of Integer;
  public
    constructor Create(QtElementos: Integer);
    procedure Connect(pN1,pN2: Integer);
    function Query(pN1,pN2: Integer): Boolean;
  end;

implementation

{ TNetWork }

procedure TNetWork.Connect(pN1,pN2: Integer);
var
  lIndex: Integer;
begin
  SetLength(FElementosConectados, 0);
  if (Low(Self.FElementos) < pN1) or
    (High(Self.FElementos) < pN2) then
  begin
    raise Exception.Create('Elementos inválidos');
  end;
  
  for lIndex := Low(FElementos) to High(FElementos) do
  begin
    if (FElementos[lindex] >= pN1) and
    (FElementos[lindex] <= pN2) then
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
  SetLength(Self.FElementos);
  for i := 1 to QtElementos do
  begin
    FElementos[i-1] := i;
  end;

end;

function TNetWork.Query(pN1,pN2: Integer): Boolean;
var
  lIndex: Integer;
begin
  if Length(Self.FElementosConectados) <= 0 then
  begin
    exit;
  end;
  Result :=  Low(Self.FElementosConectados) >= pN1 and
    High(Self.FElementosConectados) <= pN2;
end;

end.
