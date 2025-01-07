unit JSEcd.Service.BlocoJ;

interface

uses
  JSEcd.Service.Interfaces,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoJ = class(TInterfacedObject, IJSEcdServiceBlocoJ)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FArquivo: TStringList;
    FIndexOfJ900: Integer;
  public
    function IndexOfJ900: Integer;
    function Execute: TStringList;
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
  FArquivo := TStringList.Create;
  FEcdService := Parent;
end;

destructor TJSEcdServiceBlocoJ.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoJ.Execute: TStringList;
begin
  FIndexOfJ900 := -1;
  Result := FArquivo;
end;

function TJSEcdServiceBlocoJ.IndexOfJ900: Integer;
begin
  Result := FIndexOfJ900;
end;

class function TJSEcdServiceBlocoJ.New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
begin
  Result := Self.Create(Parent);
end;

end.
