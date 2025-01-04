unit JSEcd.Service.BlocoI.Parte5;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoIParte5 = class(TInterfacedObject, IJSEcdServiceBlocoIParte5)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoIParte5;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte5;
  end;

implementation

{ TJSEcdServiceBlocoIParte5 }

function TJSEcdServiceBlocoIParte5.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoIParte5.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoIParte5.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte5.Execute: IJSEcdServiceBlocoIParte5;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoIParte5.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte5;
begin
  Result := Self.Create(Parent);
end;

end.
