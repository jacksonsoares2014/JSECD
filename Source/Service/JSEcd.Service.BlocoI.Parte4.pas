unit JSEcd.Service.BlocoI.Parte4;

interface

uses
  JSEcd.Service.Interfaces,
  System.Classes;

type
  TJSEcdServiceBlocoIParte4 = class(TInterfacedObject, IJSEcdServiceBlocoIParte4)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FArquivo: TStringList;
  public
    function Execute: TStringList;
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
  FArquivo := TStringList.Create;
  FEcdService := Parent;
end;

destructor TJSEcdServiceBlocoIParte4.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte4.Execute: TStringList;
begin
  Result := FArquivo;
end;

class function TJSEcdServiceBlocoIParte4.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte4;
begin
  Result := Self.Create(Parent);
end;

end.
