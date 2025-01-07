unit JSEcd.Service.BlocoK;

interface

uses
  JSEcd.Service.Interfaces,
  System.Classes;

type
  TJSEcdServiceBlocoK = class(TInterfacedObject, IJSEcdServiceBlocoK)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FArquivo: TStringList;
  public
    function Execute: TStringList;
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
  FArquivo := TStringList.Create;
  FEcdService := Parent;
end;

destructor TJSEcdServiceBlocoK.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoK.Execute: TStringList;
begin

end;

class function TJSEcdServiceBlocoK.New(Parent: IJSEcdService): IJSEcdServiceBlocoK;
begin
  Result := Self.Create(Parent);
end;

end.
