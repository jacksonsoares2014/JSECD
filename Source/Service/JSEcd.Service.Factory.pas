unit JSEcd.Service.Factory;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Base;

type
  TJSEcdServiceFactory = class(TInterfacedObject, IJSEcdServiceFactory)
  private

  public
    function createService: IJSEcdService;

    class function New: IJSEcdServiceFactory;
  end;

implementation

{ TJSEcdServiceFactory }

function TJSEcdServiceFactory.createService: IJSEcdService;
begin
  result := TJSEcdService.New;
end;

class function TJSEcdServiceFactory.New: IJSEcdServiceFactory;
begin
  Result := Self.Create;
end;

end.
