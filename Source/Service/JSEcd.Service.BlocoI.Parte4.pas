unit JSEcd.Service.BlocoI.Parte4;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoIParte4 = class(TInterfacedObject, IJSEcdServiceBlocoIParte4)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoIParte4;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte4;
  end;

implementation

{ TJSEcdServiceBlocoIParte4 }

function TJSEcdServiceBlocoIParte4.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoIParte4.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;
end;

destructor TJSEcdServiceBlocoIParte4.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte4.Execute: IJSEcdServiceBlocoIParte4;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoIParte4.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte4;
begin
  Result := Self.Create(Parent);
end;

end.
