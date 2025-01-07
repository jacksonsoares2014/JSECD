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
  public
    function TotalLinhasArquivo(Value: Integer): IJSEcdServiceBlocoJ;
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
  FEcdService := Parent;

end;

destructor TJSEcdServiceBlocoJ.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoJ.Execute: TStringList;
begin
  FArquivo := TStringList.Create;
  Result := FArquivo;
end;

class function TJSEcdServiceBlocoJ.New(Parent: IJSEcdService): IJSEcdServiceBlocoJ;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoJ.TotalLinhasArquivo(
  Value: Integer): IJSEcdServiceBlocoJ;
var
  I: Integer;
begin
  Result := Self;
  FArquivo.Find('J900', I);
  FArquivo.Strings[I].Replace('-1',IntToStr(Value));
end;

end.
