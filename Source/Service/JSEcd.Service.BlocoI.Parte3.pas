unit JSEcd.Service.BlocoI.Parte3;

interface

uses
  JSEcd.Service.Interfaces,
  System.Classes;

type
  TJSEcdServiceBlocoIParte3 = class(TInterfacedObject, IJSEcdServiceBlocoIParte3)
  private
    [Weak]
    FEcdService: IJSEcdService;

    [Weak]
    FBloco0: IJSEcdServiceBloco0;

    FArquivo: TStringList;
  public
    function ServiceBloco0(Value: IJSEcdServiceBloco0): IJSEcdServiceBlocoIParte3;
    function Execute: TStringList;
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
  FArquivo := TStringList.Create;
  FEcdService := Parent;
end;

destructor TJSEcdServiceBlocoIParte3.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte3.Execute: TStringList;
begin

end;

class function TJSEcdServiceBlocoIParte3.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte3;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoIParte3.ServiceBloco0(
  Value: IJSEcdServiceBloco0): IJSEcdServiceBlocoIParte3;
begin
  result  := Self;
  FBloco0 := Value;
end;

end.
