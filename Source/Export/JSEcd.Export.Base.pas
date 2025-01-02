unit JSEcd.Export.Base;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Service.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils;

type
  TJSEcdExportBase = class(TInterfacedObject, IJSEcdExport)
  protected
    [Weak]
    FConfig: IJSEcdServiceConfig<IJSEcdService>;

    function LinhaEcd(AModel: TJSEcdModelRegistro): string; virtual; abstract;

    procedure validateInstance<T: TJSEcdModelRegistro, constructor>(AModel: TJSEcdModelRegistro; var Reference: T);
  public
    constructor create(Config: IJSEcdServiceConfig<IJSEcdService>);
    class function New(Config: IJSEcdServiceConfig<IJSEcdService>): IJSEcdExport;
  end;


implementation

{ TJSEcdExportBase }

constructor TJSEcdExportBase.create(Config: IJSEcdServiceConfig<IJSEcdService>);
begin
  FConfig := Config;
end;

class function TJSEcdExportBase.New(
  Config: IJSEcdServiceConfig<IJSEcdService>): IJSEcdExport;
begin
  result := Self.create(Config);
end;

procedure TJSEcdExportBase.validateInstance<T>(AModel: TJSEcdModelRegistro;
  var Reference: T);
var
  model: T;
begin
  model := T.create;
  try
    if not (AModel is T) then
      raise Exception.CreateFmt('Invalid Instance %s, expected is %s', [AModel.reg, model.reg]);

    Reference := T(AModel);
  finally
    model.free;
  end;
end;

end.
