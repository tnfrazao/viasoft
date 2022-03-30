unit uINetWork;

interface

type

  INetWork = Interface
    procedure Connect(pN1,pN2: Integer);
    function Query(pN1,pN2: Integer): Boolean;
  end;

implementation

end.

