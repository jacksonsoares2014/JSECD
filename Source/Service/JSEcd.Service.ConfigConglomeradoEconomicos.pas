unit JSEcd.Service.ConfigConglomeradoEconomicos;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigConglomeradoEconomicos<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigConglomeradoEconomicos<I>)
  private
    [Weak]
    FParent: I;

  public
    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigConglomeradoEconomicos<I>;
  end;

implementation

{ TJSEcdServiceConfigConglomeradoEconomicos<I> }

function TJSEcdServiceConfigConglomeradoEconomicos<I>.&End: I;
begin
  Result := FParent;
end;

constructor TJSEcdServiceConfigConglomeradoEconomicos<I>.Create(Parent: I);
begin

end;

destructor TJSEcdServiceConfigConglomeradoEconomicos<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigConglomeradoEconomicos<I>.New(Parent: I): IJSEcdServiceConfigConglomeradoEconomicos<I>;
begin
  Result := Self.create(Parent);
end;

end.
