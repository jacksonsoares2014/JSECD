unit JSEcd.Export.Facade;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Classes,
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
  FExports.Add('0000', TJSEcdExportRegistro0000.New(FConfig));
  FExports.Add('0001', TJSEcdExportRegistro0001.New(FConfig));
  FExports.Add('0007', TJSEcdExportRegistro0007.New(FConfig));
  FExports.Add('0020', TJSEcdExportRegistro0020.New(FConfig));
  FExports.Add('0035', TJSEcdExportRegistro0035.New(FConfig));
  FExports.Add('0150', TJSEcdExportRegistro0150.New(FConfig));
  FExports.Add('0180', TJSEcdExportRegistro0180.New(FConfig));
  FExports.Add('0990', TJSEcdExportRegistro0990.New(FConfig));
end;

procedure TJSEcdExportFacade.createExportsBlocoI;
begin
  FExports.Add('I001', TJSEcdExportRegistroI001.New(FConfig));
  FExports.Add('I010', TJSEcdExportRegistroI010.New(FConfig));
  FExports.Add('I012', TJSEcdExportRegistroI012.New(FConfig));
  FExports.Add('I015', TJSEcdExportRegistroI015.New(FConfig));
  FExports.Add('I030', TJSEcdExportRegistroI030.New(FConfig));
  FExports.Add('I050', TJSEcdExportRegistroI050.New(FConfig));
  FExports.Add('I051', TJSEcdExportRegistroI051.New(FConfig));
  FExports.Add('I052', TJSEcdExportRegistroI052.New(FConfig));
  FExports.Add('I053', TJSEcdExportRegistroI053.New(FConfig));
  FExports.Add('I075', TJSEcdExportRegistroI075.New(FConfig));
  FExports.Add('I100', TJSEcdExportRegistroI100.New(FConfig));
  FExports.Add('I150', TJSEcdExportRegistroI150.New(FConfig));
  FExports.Add('I155', TJSEcdExportRegistroI155.New(FConfig));
  FExports.Add('I157', TJSEcdExportRegistroI157.New(FConfig));
  FExports.Add('I200', TJSEcdExportRegistroI200.New(FConfig));
  FExports.Add('I250', TJSEcdExportRegistroI250.New(FConfig));
  FExports.Add('I350', TJSEcdExportRegistroI350.New(FConfig));
  FExports.Add('I355', TJSEcdExportRegistroI355.New(FConfig));
  FExports.Add('I500', TJSEcdExportRegistroI500.New(FConfig));
  FExports.Add('I510', TJSEcdExportRegistroI510.New(FConfig));
  FExports.Add('I550', TJSEcdExportRegistroI550.New(FConfig));
  FExports.Add('I555', TJSEcdExportRegistroI555.New(FConfig));
  FExports.Add('I990', TJSEcdExportRegistroI990.New(FConfig));
end;

procedure TJSEcdExportFacade.createExportsBlocoJ;
begin
  FExports.Add('J001', TJSEcdExportRegistroJ001.New(FConfig));
  FExports.Add('J005', TJSEcdExportRegistroJ005.New(FConfig));
  FExports.Add('J100', TJSEcdExportRegistroJ100.New(FConfig));
  FExports.Add('J150', TJSEcdExportRegistroJ150.New(FConfig));
  FExports.Add('J210', TJSEcdExportRegistroJ210.New(FConfig));
  FExports.Add('J215', TJSEcdExportRegistroJ215.New(FConfig));
  FExports.Add('J800', TJSEcdExportRegistroJ800.New(FConfig));
  FExports.Add('J900', TJSEcdExportRegistroJ900.New(FConfig));
  FExports.Add('J930', TJSEcdExportRegistroJ930.New(FConfig));
  FExports.Add('J935', TJSEcdExportRegistroJ935.New(FConfig));
  FExports.Add('J990', TJSEcdExportRegistroJ990.New(FConfig));
end;

procedure TJSEcdExportFacade.createExportsBlocoK;
begin
  FExports.Add('K001', TJSEcdExportRegistroK001.New(FConfig));
  FExports.Add('K030', TJSEcdExportRegistroK030.New(FConfig));
  FExports.Add('K100', TJSEcdExportRegistroK100.New(FConfig));
  FExports.Add('K200', TJSEcdExportRegistroK200.New(FConfig));
  FExports.Add('K210', TJSEcdExportRegistroK210.New(FConfig));
  FExports.Add('K990', TJSEcdExportRegistroK990.New(FConfig));
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
