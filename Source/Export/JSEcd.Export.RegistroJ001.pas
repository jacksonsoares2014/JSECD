unit JSEcd.Export.RegistroJ001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ001 = '|J001|';

type
  TJSEcdExportRegistroJ001 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ001: TJSEcdModelRegistroJ001;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ001 }

function TJSEcdExportRegistroJ001.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ001>(AModel, FRegJ001);

  result := Format(cJ001,
                   [FRegJ001.);
end;

end.
