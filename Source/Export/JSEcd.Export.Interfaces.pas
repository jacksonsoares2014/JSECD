unit JSEcd.Export.Interfaces;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Model.Classes;

type
  IJSEcdExport = interface
    ['{A73772A6-2B99-42D8-8EC2-3518EF227BCF}']
    function LinhaEcd(AModel: TJSEcdModelRegistro): string;
  end;

  IJSEcdExportFacade = interface
    ['{D60BB093-FF46-467A-836D-B0DB745B07E6}']
    function LinhaEcd(AModel: TJSEcdModelRegistro): string;
  end;

function FacadeExport(Config: IJSEcdServiceConfig<IJSEcdService>): IJSEcdExportFacade;

implementation

uses
  JSEcd.Export.Facade;

function FacadeExport(Config: IJSEcdServiceConfig<IJSEcdService>): IJSEcdExportFacade;
begin
  Result := TJSEcdExportFacade.New(Config);
end;

end.
