unit JSEcd.Export.Facade;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Service.Interfaces,
  JSEcd.Model.Classes,
  System.Generics.Collections,
  System.SysUtils;

type
  TJSEcdExportFacade = class(TInterfacedObject, IJSEcdExportFacade)
  private
    [Weak]
    FConfig: IJSEcdServiceConfig<IJSEcdService>;

    FExports: TDictionary<String, IJSEcdExport>;

    procedure createExports;
    procedure createExportsBloco0;
    procedure createExportsBlocoI;
    procedure createExportsBlocoJ;
    procedure createExportsBlocoK;

    function GetExport(AModel: TJSEcdModelRegistro): IJSEcdExport;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string;
  public
    constructor create(Config: IJSEcdServiceConfig<IJSEcdService>);
    class function New(Config: IJSEcdServiceConfig<IJSEcdService>): TJSEcdExportFacade;
    destructor Destroy; override;
  end;

implementation

{ TJSEcdExportFacade }

constructor TJSEcdExportFacade.create(
  Config: IJSEcdServiceConfig<IJSEcdService>);
begin
  FConfig   := Config;
  createExports;
end;

procedure TJSEcdExportFacade.createExports;
begin
  FExports := TDictionary<String, IJSEcdExport>.Create;
  createExportsBloco0;
  createExportsBlocoI;
  createExportsBlocoJ;
  createExportsBlocoK;
end;

procedure TJSEcdExportFacade.createExportsBloco0;
begin

end;

procedure TJSEcdExportFacade.createExportsBlocoI;
begin

end;

procedure TJSEcdExportFacade.createExportsBlocoJ;
begin

end;

procedure TJSEcdExportFacade.createExportsBlocoK;
begin

end;

destructor TJSEcdExportFacade.Destroy;
begin
  FExports.Free;
  inherited;
end;

function TJSEcdExportFacade.GetExport(
  AModel: TJSEcdModelRegistro): IJSEcdExport;
begin
  if not FExports.TryGetValue(AModel.reg, Result) then
    Result := nil;
end;

function TJSEcdExportFacade.LinhaEcd(AModel: TJSEcdModelRegistro): string;
var
  &Export: IJSEcdExport;
begin
  &Export := GetExport(AModel);

  if not Assigned(&Export) then
    raise ENotImplemented.CreateFmt('Not implemented Export for Reg %s', [AModel.reg]);

  result := &Export.LinhaEcd(AModel);
end;

class function TJSEcdExportFacade.New(
  Config: IJSEcdServiceConfig<IJSEcdService>): TJSEcdExportFacade;
begin
  result := Self.create(Config);
end;

end.
