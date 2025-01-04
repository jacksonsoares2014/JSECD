unit JSEcd.Service.BlocoJ;

interface

uses
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceBlocoJ = class(TInterfacedObject, IJSEcdServiceBlocoJ)
  private
    [Weak]
    FEcdService: IJSEcdService;
  public
    function Execute: IJSEcdServiceBlocoJ;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
  end;

implementation

{ TJSEcdServiceBlocoJ }

function TJSEcdServiceBlocoJ.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

constructor TJSEcdServiceBlocoJ.Create(Parent: IJSEcdService);
begin
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoJ.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoJ.Execute: IJSEcdServiceBlocoJ;
begin
  Result := Self;
end;

class function TJSEcdServiceBlocoJ.New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
begin
  Result := Self.Create(Parent);
end;

end.
