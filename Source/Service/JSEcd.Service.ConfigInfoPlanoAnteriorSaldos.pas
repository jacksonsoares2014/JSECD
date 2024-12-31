unit JSEcd.Service.ConfigInfoPlanoAnteriorSaldos;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>)
  private
    [Weak]
    FParent: I;

  public
    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>;
  end;

implementation

{ TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I> }

function TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>.&End: I;
begin
  Result := FParent;
end;

constructor TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

destructor TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>.New(Parent: I): IJSEcdServiceConfigInfoPlanoAnteriorSaldos<I>;
begin
  Result := Self.create(Parent);
end;

end.
