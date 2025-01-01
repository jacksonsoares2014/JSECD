unit JSEcd.Service.Counter;

interface

uses
  JSEcd.Model.Registro,
  System.Generics.Collections;

type
  TJSEcdServiceCounter = class
  private
    FCounter : TDictionary<string, Integer>;
  public
    procedure AddCounter(ARegistro: TJSEcdModelRegistro); overload;
    procedure AddCounter(ARegistro: String); overload;
    procedure ClearCounter;
    function GetCounter: TDictionary<string, Integer>;
    destructor Destroy; override;
  end;

var
  Counter: TJSEcdServiceCounter;

implementation

{ TJSEcdServiceCounter }

procedure TJSEcdServiceCounter.AddCounter(ARegistro: TJSEcdModelRegistro);
begin
  AddCounter(ARegistro.reg);
end;

procedure TJSEcdServiceCounter.AddCounter(ARegistro: String);
var
  totalRegistro: Integer;
begin
  if not Assigned(FCounter) then
    FCounter := TDictionary<String, Integer>.create;

  if not FCounter.TryGetValue(ARegistro, totalRegistro) then
    totalRegistro := 0;

  totalRegistro := totalRegistro + 1;
  FCounter.AddOrSetValue(ARegistro, totalRegistro);
end;

procedure TJSEcdServiceCounter.ClearCounter;
begin
  if Assigned(FCounter) then
    FCounter.Clear;
end;

destructor TJSEcdServiceCounter.Destroy;
begin
  FCounter.Free;
  inherited;
end;

function TJSEcdServiceCounter.GetCounter: TDictionary<string, Integer>;
begin
  result := FCounter;
end;

initialization
  Counter := TJSEcdServiceCounter.Create;

finalization
  Counter.Free;

end.
