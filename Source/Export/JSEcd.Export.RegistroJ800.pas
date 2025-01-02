unit JSEcd.Export.RegistroJ800;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ800 = '|J800|';

type
  TJSEcdExportRegistroJ800 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ800: TJSEcdModelRegistroJ800;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ800 }

function TJSEcdExportRegistroJ800.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ800>(AModel, FRegJ800);

  result := Format(cJ800,
                   [FRegJ800.);
end;

end.
