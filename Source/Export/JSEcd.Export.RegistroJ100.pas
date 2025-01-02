unit JSEcd.Export.RegistroJ100;

interface

uses
  JSEcd.Export.Interfaces,
  JSEcd.Export.Base,
  JSEcd.Model.Classes,
  System.SysUtils;

const
  cJ100 = '|J100|';

type
  TJSEcdExportRegistroJ100 = class(TJSEcdExportBase, IJSEcdExport)
  private
    FRegJ100: TJSEcdModelRegistroJ100;
  protected
    function LinhaEcd(AModel: TJSEcdModelRegistro): string; override;
  end;

implementation

{ TJSEcdExportRegistroJ100 }

function TJSEcdExportRegistroJ100.LinhaEcd(AModel: TJSEcdModelRegistro): string;
begin
  validateInstance<TJSEcdModelRegistroJ100>(AModel, FRegJ100);

  result := Format(cJ100,
                   [FRegJ100.);
end;

end.
