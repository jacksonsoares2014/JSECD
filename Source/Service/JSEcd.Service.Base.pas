unit JSEcd.Service.Base;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Config;

type
  TJSEcdService = class(TInterfacedObject, IJSEcdService)
  private
    FConfig: IJSEcdServiceConfig<IJSEcdService>;
  public
    function Config: IJSEcdServiceConfig<IJSEcdService>;
    function Execute: IJSEcdService;

    constructor Create;
    destructor Destroy; override;
    class function New: IJSEcdService;
  end;

implementation

{ TJSEcdService }

function TJSEcdService.Config: IJSEcdServiceConfig<IJSEcdService>;
begin
  if not Assigned(FConfig) then
    FConfig := TJSEcdServiceConfig<IJSEcdService>.New(Self);
  result := FConfig;
end;

constructor TJSEcdService.Create;
begin

end;

destructor TJSEcdService.Destroy;
begin

  inherited;
end;

function TJSEcdService.Execute: IJSEcdService;
begin

end;

class function TJSEcdService.New: IJSEcdService;
begin
  Result := Self.Create;
end;

end.
