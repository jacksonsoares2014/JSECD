unit JSEcd.Service.ConfigInfoFiliaisLivroAuxiliar;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I: IInterface> = class(TInterfacedObject, IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>)
  private
    [Weak]
    FParent: I;

  public
    function &End: I;

    constructor Create(Parent: I);
    destructor Destroy; override;
    class function New(Parent: I): IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>;
  end;

implementation

{ TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I> }

function TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>.&End: I;
begin
  Result := FParent;
end;

constructor TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>.Create(Parent: I);
begin
  FParent := Parent;
end;

destructor TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>.Destroy;
begin

  inherited;
end;

class function TJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>.New(Parent: I): IJSEcdServiceConfigInfoFiliaisLivroAuxiliar<I>;
begin
  Result := Self.create(Parent);
end;

end.
