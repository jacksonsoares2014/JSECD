unit JSEcd.Service.BlocoI.Parte2;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoIParte2 = class(TInterfacedObject, IJSEcdServiceBlocoIParte2)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoIParte2;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte2;
  end;

implementation

{ TJSEcdServiceBlocoIParte2 }

function TJSEcdServiceBlocoIParte2.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoIParte2.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoIParte2.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte2.Execute: IJSEcdServiceBlocoIParte2;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoIParte2.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte2;
begin
  Result := Self.Create(Parent);
end;

end.
