unit JSEcd.Service.ConfigAssociacaoPlanoGoverno;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigAssociacaoPlanoGoverno<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigAssociacaoPlanoGoverno<I>)
  private
    [Weak]
    FParent: I;

  public
    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigAssociacaoPlanoGoverno<I>;
  end;

implementation

{ TJSEcdServiceConfigAssociacaoPlanoGoverno<I> }

function TJSEcdServiceConfigAssociacaoPlanoGoverno<I>.&End: I;
begin
  Result := FParent;
end;

constructor TJSEcdServiceConfigAssociacaoPlanoGoverno<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

destructor TJSEcdServiceConfigAssociacaoPlanoGoverno<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigAssociacaoPlanoGoverno<I>.New(Parent: I): IJSEcdServiceConfigAssociacaoPlanoGoverno<I>;
begin
  Result := Self.create(Parent);
end;

end.
