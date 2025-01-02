unit JSEcd.Export.RegistroJ215;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ215 = '|J215|';

type
  TJSEcdExportRegistroJ215 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ215: TJSEcdModelRegistroJ215;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ215 }

function TJSEcdExportRegistroJ215.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ215>(AModel, FRegJ215);

  result := Format(cJ215,
                   [FRegJ215.);
end;

end.
