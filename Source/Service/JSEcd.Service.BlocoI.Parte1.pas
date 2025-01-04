unit JSEcd.Service.BlocoI.Parte1;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoIParte1 = class(TInterfacedObject, IJSEcdServiceBlocoIParte1)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoIParte1;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
  end;

implementation

{ TJSEcdServiceBlocoIParte1 }

function TJSEcdServiceBlocoIParte1.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoIParte1.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoIParte1.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte1.Execute: IJSEcdServiceBlocoIParte1;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoIParte1.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
begin
  Result := Self.Create(Parent);
end;

end.
