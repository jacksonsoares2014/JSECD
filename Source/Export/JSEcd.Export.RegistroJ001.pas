unit JSEcd.Export.RegistroJ001;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.SysUtils;

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

  result := Format('|J001|%s|', [FRegJ001.indDad.ToString]);
end;

end.
