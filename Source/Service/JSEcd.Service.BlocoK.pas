unit JSEcd.Service.BlocoK;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoK = class(TInterfacedObject, IJSEcdServiceBlocoK)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoK;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoK;
  end;

implementation

{ TJSEcdServiceBlocoK }

function TJSEcdServiceBlocoK.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoK.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoK.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoK.Execute: IJSEcdServiceBlocoK;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoK.New(Parent: IJSEcdService): IJSEcdServiceBlocoK;
begin
  Result := Self.Create(Parent);
end;

end.
