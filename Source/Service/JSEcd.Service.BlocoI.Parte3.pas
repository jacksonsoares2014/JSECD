unit JSEcd.Service.BlocoI.Parte3;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoIParte3 = class(TInterfacedObject, IJSEcdServiceBlocoIParte3)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoIParte3;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
  end;

implementation

{ TJSEcdServiceBlocoIParte3 }

function TJSEcdServiceBlocoIParte3.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoIParte3.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoIParte3.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte3.Execute: IJSEcdServiceBlocoIParte3;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoIParte3.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
begin
  Result := Self.Create(Parent);
end;

end.
