unit JSEcd.Export.RegistroJ210;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ210 = '|J210|';

type
  TJSEcdExportRegistroJ210 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ210: TJSEcdModelRegistroJ210;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ210 }

function TJSEcdExportRegistroJ210.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ210>(AModel, FRegJ210);

  result := Format(cJ210,
                   [FRegJ210.);
end;

end.
